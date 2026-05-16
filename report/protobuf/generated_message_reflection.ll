inline.NumInlined: 8096
inline.NumDeleted: 3435
begin_hunk_0_@_ZNK6google8protobuf10Reflection10AddMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE:bb.a
  %.not.i.i.i41 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i41, label %bb.o, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i42

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i42: ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not1.i.i.i43, label %bb.p, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i44

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i44: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i42
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.p:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i42
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !102
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.p, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i44, %bb.o
  %.sink7.in.i.i.i45 = phi ptr [ %i.bj, %bb.p ], [ %i.bg, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i44 ], [ %i.bd, %bb.o ]
  %.sink7.i.i.i46 = load ptr, ptr %.sink7.in.i.i.i45, align 8, !tbaa !33
  %i.bk = ptrtoint ptr %2 to i64
  %i.bl = ptrtoint ptr %.sink7.i.i.i46 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %.0.in.i.i.i47 = sdiv exact i64 %i.bm, 88
  %sext.i.i48 = shl i64 %.0.in.i.i.i47, 32
  %i.bn = ashr exact i64 %sext.i.i48, 30
  %i.bo = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.q:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.br = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %bb.m, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.r:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.bu, null
  br i1 %.not1.i.i10.i, label %bb.s, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.r
  %.sink7.in.i.i13.i = phi ptr [ %i.by, %bb.s ], [ %i.bv, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.bs, %bb.r ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.bz = ptrtoint ptr %2 to i64
  %i.ca = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %.0.in.i.i15.i = sdiv exact i64 %i.cb, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.cc = ashr exact i64 %sext.i16.i, 30
  %i.cd = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = and i32 %i.ce, 2147483640
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.q, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i = phi ptr [ %i.br, %bb.q ], [ %i.ch, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  %i.ci = tail call noundef ptr @_ZN6google8protobuf8internal12MapFieldBase20MutableRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(8) %.0.i)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

bb.t:                                             ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i49, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i54 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i.i54, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55: ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i56 = icmp eq ptr %i.cl, null
  br i1 %.not1.i.i.i56, label %bb.w, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

bb.w:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i55
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !102
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58: ; preds = %bb.w, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57, %bb.v
  %.sink7.in.i.i.i59 = phi ptr [ %i.cp, %bb.w ], [ %i.cm, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i57 ], [ %i.cj, %bb.v ]
  %.sink7.i.i.i60 = load ptr, ptr %.sink7.in.i.i.i59, align 8, !tbaa !33
  %i.cq = ptrtoint ptr %2 to i64
  %i.cr = ptrtoint ptr %.sink7.i.i.i60 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %.0.in.i.i.i61 = sdiv exact i64 %i.cs, 88
  %sext.i.i62 = shl i64 %.0.in.i.i.i61, 32
  %i.ct = ashr exact i64 %sext.i.i62, 30
  %i.cu = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !3
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.x, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63, !prof !103

bb.x:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %i.cx = tail call noundef ptr @_ZNK6google8protobuf10Reflection19MutableRawSplitImplEPNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63: ; preds = %bb.t, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i58
  %.not.i.i8.i64 = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i64, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65

bb.y:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i63
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i66 = icmp eq ptr %i.da, null
  br i1 %.not1.i.i10.i66, label %bb.z, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.z:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i65
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !102
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.z, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67, %bb.y
  %.sink7.in.i.i13.i68 = phi ptr [ %i.de, %bb.z ], [ %i.db, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i67 ], [ %i.cy, %bb.y ]
  %.sink7.i.i14.i69 = load ptr, ptr %.sink7.in.i.i13.i68, align 8, !tbaa !33
  %i.df = ptrtoint ptr %2 to i64
  %i.dg = ptrtoint ptr %.sink7.i.i14.i69 to i64
  %i.dh = sub i64 %i.df, %i.dg
  %.0.in.i.i15.i70 = sdiv exact i64 %i.dh, 88
  %sext.i16.i71 = shl i64 %.0.in.i.i15.i70, 32
  %i.di = ashr exact i64 %sext.i16.i71, 30
  %i.dj = getelementptr inbounds i8, ptr %.pre.i51, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !3
  %i.dl = and i32 %i.dk, 2147483640
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %i.dm
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i, %bb.x, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.034 = phi ptr [ %i.ci, %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit ], [ %i.cx, %bb.x ], [ %i.dn, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_20RepeatedPtrFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ] ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.034, i64 8 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !258 ; 4 uses
  %i.dq = load ptr, ptr %.034, align 8, !tbaa !235 ; 2 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 4 uses
  %i.ds = and i64 %i.dr, 1
  %i.dt = icmp eq i64 %i.ds, 0                    ; 3 uses
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %.not.i.i75 = icmp ne ptr %i.dq, null
  %i.du = zext i1 %.not.i.i75 to i32
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal20RepeatedPtrFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit
  %i.dv = add nsw i64 %i.dr, -1
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !240
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i: ; preds = %bb.ab, %bb.aa
  %i.dz = phi i32 [ %i.du, %bb.aa ], [ %i.dy, %bb.ab ]
  %i.ea = icmp slt i32 %i.dp, %i.dz
  br i1 %i.ea, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit.thread

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i
  %i.eb = add nsw i32 %i.dp, 1                    ; 2 uses
  store i32 %i.eb, ptr %i.do, align 8, !tbaa !3
  %i.ec = add i64 %i.dr, -1
  %i.ed = inttoptr i64 %i.ec to ptr
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ef = sext i32 %i.dp to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  %.0.i.i74 = select i1 %i.dt, ptr %.034, ptr %i.eg
  %i.eh = load ptr, ptr %.0.i.i74, align 8, !tbaa !94 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit.thread, label %bb.af

_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit.thread: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit
  %i.ej = phi i32 [ %i.dp, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.i ], [ %i.eb, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit ]
  %i.ek = icmp eq i32 %i.ej, 0
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit.thread
  %i.el = tail call noundef ptr @_ZNK6google8protobuf15FieldDescriptor12message_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %2)
  %i.em = load ptr, ptr %.037, align 8, !tbaa !149
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef ptr %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %.037, ptr noundef %i.el)
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit.thread
  %i.eq = add i64 %i.dr, -1
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %.0.i.i.i = select i1 %i.dt, ptr %.034, ptr %i.es
  %i.et = load ptr, ptr %.0.i.i.i, align 8, !tbaa !94
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0 = phi ptr [ %i.ep, %bb.ac ], [ %i.et, %bb.ad ]
  %i.eu = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %.0, ptr noundef %.0.i.i) ; 2 uses
  tail call void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPNT_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %.034, ptr noundef %.0.i.i, ptr noundef %i.eu)
  br label %bb.af

bb.af:                                            ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit, %bb.ae, %bb.j
  %.036 = phi ptr [ %i.ac, %bb.j ], [ %i.eu, %bb.ae ], [ %i.eh, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase14AddFromClearedINS1_18GenericTypeHandlerINS0_7MessageEEEEEPNT_4TypeEv.exit ]
  ret ptr %.036
}

declare noundef ptr @_ZN6google8protobuf8internal12ExtensionSet10AddMessageEPNS0_5ArenaEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase23UnsafeArenaAddAllocatedINS1_18GenericTypeHandlerINS0_7MessageEEEEEvPNS0_5ArenaEPNT_4TypeE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !235    ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0                      ; 3 uses
  br i1 %i.f, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit: ; preds = %bb.a
  %i.g = icmp eq i32 %i.b, 1
  br i1 %i.g, label %bb.b, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread: ; preds = %bb.a
  %i.h = add nsw i64 %i.d, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !238  ; 2 uses
  %i.k = icmp eq i32 %i.b, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit
  %i.l = tail call noundef ptr @_ZN6google8protobuf8internal20RepeatedPtrFieldBase14InternalExtendEiPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 1, ptr noundef %1) ; 0 uses
  %i.m = load ptr, ptr %0, align 8, !tbaa !235
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = add i64 %i.n, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !240
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !240
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

bb.c:                                             ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !240  ; 4 uses
  %i.v = icmp eq i32 %i.u, %i.j
  br i1 %i.v, label %bb.d, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14SizeAtCapacityEv.exit
  %.not.i.i.not = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit
  %.not.i.i4 = icmp eq ptr %1, null
  br i1 %.not.i.i4, label %bb.e, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.d, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = sext i32 %i.b to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.z
  %.0.i = select i1 %i.f, ptr %0, ptr %i.aa
  %i.ab = load ptr, ptr %.0.i, align 8, !tbaa !94
  tail call void @_ZN6google8protobuf8internal34InternalOutOfLineDeleteMessageLiteEPNS0_11MessageLiteE(ptr noundef %i.ab)
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase23AllocatedSizeAtCapacityEv.exit
  %i.ac = icmp slt i32 %i.b, 0
  br i1 %i.ac, label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit7, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread: ; preds = %bb.c
  %i.ad = icmp slt i32 %i.b, %i.u
  br i1 %i.ad, label %.thread11, label %.thread13

.thread11:                                        ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.af = sext i32 %i.b to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af
  %i.ah = sext i32 %i.u to i64
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !94
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit7

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit7: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit, %.thread11
  %i.ai = phi ptr [ %.pre, %.thread11 ], [ null, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.aj = phi ptr [ %i.ae, %.thread11 ], [ inttoptr (i64 7 to ptr), %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.ak = phi i64 [ %i.ah, %.thread11 ], [ 0, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ]
  %i.al = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ak
  %.0.i8 = select i1 %i.f, ptr %0, ptr %i.al
  store ptr %i.ai, ptr %.0.i8, align 8, !tbaa !94
  %i.am = load ptr, ptr %0, align 8, !tbaa !235
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !240
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !240
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

.thread13:                                        ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit.thread
  %i.at = add nsw i32 %i.u, 1
  store i32 %i.at, ptr %i.t, align 4, !tbaa !240
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS1_18GenericTypeHandlerINS0_11MessageLiteEEEEEvPvPNS0_5ArenaE.exit: ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit, %bb.e, %bb.d, %.thread13, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit7, %bb.b
  %i.au = load i32, ptr %i.a, align 8, !tbaa !258 ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.a, align 8, !tbaa !3
  %i.aw = load ptr, ptr %0, align 8, !tbaa !235
  %i.ax = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.ay = and i64 %i.ax, 1
  %i.az = icmp eq i64 %i.ay, 0
  %i.ba = add i64 %i.ax, -1
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = sext i32 %i.au to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  %.0.i9 = select i1 %i.az, ptr %0, ptr %i.be
  store ptr %2, ptr %.0.i9, align 8, !tbaa !94
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection19AddAllocatedMessageEPNS0_7MessageEPKNS0_15FieldDescriptorES3_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 4 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1               ; 2 uses
  %i.h = and i8 %i.g, 32
  %.not56 = icmp eq i8 %i.h, 0
  br i1 %.not56, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.15)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !96
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %.not = icmp eq i32 %i.m, 10
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_130ReportReflectionUsageTypeErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcNS0_8internal19FieldDescriptorLite7CppTypeE(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.81, i32 noundef 10)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !36   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection14MutableMapDataEPNS0_7MessageEPKNS0_15FieldDescriptorE:bb.a
_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf10Reflection9SetHasBitEPNS0_7MessageEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %.not.i.i8.i = icmp eq i8 %.pre, 0
  br i1 %.not.i.i8.i, label %bb.l, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i

bb.l:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !101
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i10.i = icmp eq ptr %i.bi, null
  br i1 %.not1.i.i10.i, label %bb.m, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.m:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i9.i
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !102
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.m, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i, %bb.l
  %.sink7.in.i.i13.i = phi ptr [ %i.bm, %bb.m ], [ %i.bj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i11.i ], [ %i.bg, %bb.l ]
  %.sink7.i.i14.i = load ptr, ptr %.sink7.in.i.i13.i, align 8, !tbaa !33
  %i.bn = ptrtoint ptr %2 to i64
  %i.bo = ptrtoint ptr %.sink7.i.i14.i to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %.0.in.i.i15.i = sdiv exact i64 %i.bp, 88
  %sext.i16.i = shl i64 %.0.in.i.i15.i, 32
  %i.bq = ashr exact i64 %sext.i16.i, 30
  %i.br = getelementptr inbounds i8, ptr %.pre.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !3
  %i.bt = and i32 %i.bs, 2147483640
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %i.bu
  br label %_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection10MutableRawINS0_8internal12MapFieldBaseEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.k, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %.0.i = phi ptr [ %i.bd, %bb.k ], [ %i.bv, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK6google8protobuf10Reflection10GetMapDataERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 3
  %.val = load i8, ptr %i.a, align 1
  %i.b = and i8 %.val, 16
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  tail call fastcc void @_ZN6google8protobuf12_GLOBAL__N_126ReportReflectionUsageErrorEPKNS0_10DescriptorEPKNS0_15FieldDescriptorEPKcS9_(ptr noundef %i.d, ptr noundef nonnull %2, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.93)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %i.i = and i8 %i.h, 8
  %.not.i.i.i = icmp eq i8 %i.i, 0                ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not1.i.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !102
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.d
  %.sink7.in.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.o, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.l, %bb.d ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.s = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.t = ptrtoint ptr %.sink7.i.i.i to i64
  %i.u = sub i64 %i.s, %i.t
  %.0.in.i.i.i = sdiv exact i64 %i.u, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.v = ashr exact i64 %sext.i.i, 30
  %i.w = getelementptr inbounds i8, ptr %i.f, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !3
  %i.y = and i32 %i.x, 2147483640                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !99  ; 2 uses
  %.not.i.i = icmp eq i32 %i.aa, -1
  br i1 %.not.i.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  br i1 %.not.i.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !101
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i14.i = icmp eq ptr %i.af, null
  br i1 %.not1.i.i14.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !102
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i, %bb.g
  %.sink7.in.i.i16.i = phi ptr [ %i.aj, %bb.h ], [ %i.ag, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i ], [ %i.ad, %bb.g ]
  %.sink7.i.i17.i = load ptr, ptr %.sink7.in.i.i16.i, align 8, !tbaa !33
  %i.ak = ptrtoint ptr %.sink7.i.i17.i to i64
  %i.al = sub i64 %i.s, %i.ak
  %.0.in.i.i18.i = sdiv exact i64 %i.al, 88
  %sext.i19.i = shl i64 %.0.in.i.i18.i, 32
  %i.am = ashr exact i64 %sext.i19.i, 30
  %i.an = getelementptr inbounds i8, ptr %i.f, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !3
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %bb.i, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i, !prof !103

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i
  %i.aq = zext i32 %i.aa to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !94
  %i.at = and i8 %i.h, 32
  %.not.i = icmp eq i8 %i.at, 0
  %i.au = zext nneg i32 %i.y to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.au ; 2 uses
  br i1 %.not.i, label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !225
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_12MapFieldBaseEEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ax = zext nneg i32 %i.y to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  br label %_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection6GetRawINS0_8internal12MapFieldBaseEEERKT_RKNS0_7MessageEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.i, %bb.j, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i
  %.1.i = phi ptr [ %i.ay, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i ], [ %i.aw, %bb.j ], [ %i.av, %bb.i ]
  ret ptr %.1.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !509  ; 2 uses
  %.not4346 = icmp eq ptr %i.b, %i.d
  br i1 %.not4346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge:                                      ; preds = %bb.k, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.048 = phi ptr [ %2, %.lr.ph ], [ %.3, %bb.k ] ; 3 uses
  %.sroa.040.047 = phi ptr [ %i.b, %.lr.ph ], [ %i.bn, %bb.k ] ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !511   ; 2 uses
  %i.h = icmp ne i8 %i.g, 2
  %.not44 = icmp eq ptr %.sroa.040.047, null      ; 2 uses
  %.not = or i1 %.not44, %i.h
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %.sroa.040.047, align 8, !tbaa !513 ; 2 uses
  %i.j = add i8 %i.i, -118
  %or.cond.i = icmp ult i8 %i.j, -117
  br i1 %or.cond.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.m, %bb.d ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 2
  %i.o = load i32, ptr %i.n, align 2
  %i.p = zext i32 %i.o to i64
  br label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.q = icmp ne i8 %i.g, 1
  %.not24 = or i1 %.not44, %i.q
  br i1 %.not24, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !516  ; 6 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = and i8 %i.v, 8
  %.not.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i, label %bb.g, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !101
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ab, null
  br i1 %.not1.i.i, label %bb.h, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.h:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !102
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.h, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.g
  %.sink7.in.i.i = phi ptr [ %i.af, %bb.h ], [ %i.ac, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.z, %bb.g ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.ag = ptrtoint ptr %i.s to i64
  %i.ah = ptrtoint ptr %.sink7.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %.0.in.i.i = sdiv exact i64 %i.ai, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.aj = ashr exact i64 %sext.i, 30
  %i.ak = getelementptr inbounds i8, ptr %i.t, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.an = load i8, ptr %i.am, align 2, !tbaa !96
  %switch.tableidx = add i8 %i.an, -9             ; 2 uses
  %i.ao = icmp ult i8 %switch.tableidx, 4
  br i1 %i.ao, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i
  %i.ap = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ap
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %switch.lookup
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ]
  %i.aq = and i32 %.sink.i.i, %i.al               ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 65536
  br i1 %i.ar, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  %i.as = zext nneg i32 %i.aq to i64
  %i.at = load i8, ptr %.sroa.040.047, align 8, !tbaa !518 ; 2 uses
  %i.au = add i8 %i.at, -118
  %or.cond.i26 = icmp ult i8 %i.au, -117
  br i1 %or.cond.i26, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = zext nneg i8 %i.at to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.av
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28: ; preds = %bb.i, %bb.j
  %.0.i27 = phi ptr [ %i.ax, %bb.j ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 16
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !519
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 18
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !520
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !521
  %i.be = shl nuw i64 %i.as, 48
  %i.bf = zext i8 %i.bd to i64
  %i.bg = shl nuw nsw i64 %i.bf, 24
  %i.bh = or disjoint i64 %i.bg, %i.be
  %i.bi = zext i8 %i.bb to i64
  %i.bj = shl nuw nsw i64 %i.bi, 16
  %i.bk = or disjoint i64 %i.bh, %i.bj
  %i.bl = zext i16 %i.az to i64
  %i.bm = or disjoint i64 %i.bk, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %.0.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %.0.i27, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.e ]
  %.sink = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %i.p, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %i.bm, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ 0, %bb.e ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink, ptr %.048, align 8, !tbaa !94
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i64 %.sink, ptr %.sroa.4.0..0.sroa_idx, align 8, !tbaa !31
  %.3 = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 32 ; 2 uses
  %.not43 = icmp eq ptr %i.bn, %i.d
  br i1 %.not43, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !522  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !522  ; 2 uses
  %.not2527 = icmp eq ptr %i.b, %i.d
  br i1 %.not2527, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not26 = icmp eq i32 %i.j, -1
  %i.k = shl i32 %i.j, 3
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.029 = phi ptr [ %2, %.lr.ph ], [ %i.bg, %bb.i ] ; 4 uses
  %.sroa.022.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.bh, %bb.i ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.022.028, align 8, !tbaa !524 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 8
  %.not.i = icmp eq i8 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br i1 %.not.i, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !50
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.r = and i8 %.pre, 8
  %.not.i.i21 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i21, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.w, null
  br i1 %.not1.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.u, %bb.d ]
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  %i.ip = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i89 = icmp eq ptr %i.ip, %i.ga
  br i1 %.not.i89, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, label %.lr.ph.i, !llvm.loop !641

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit: ; preds = %.lr.ph.i
  %i.iq = shl i32 %i.io, 1
  br label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit: ; preds = %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, %bb.al
  %.0.lcssa.i = phi i32 [ 4, %bb.al ], [ %i.iq, %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit ]
  %i.ir = or disjoint i32 %.mask, 2
  %i.is = add i32 %i.ir, %.0.lcssa.i
  %i.it = and i32 %i.is, -4                       ; 2 uses
  %i.iu = trunc i64 %.pre-phi235 to i32
  %i.iv = mul i32 %i.iu, 12
  %i.iw = add i32 %i.iv, 4
  %i.ix = add i32 %i.iw, %i.it
  %i.iy = and i32 %i.ix, -8                       ; 2 uses
  %i.iz = zext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !642
  %i.jd = load ptr, ptr %i.ja, align 8, !tbaa !643
  %i.je = ptrtoint ptr %i.jc to i64
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = sub i64 %i.je, %i.jf
  %i.jh = lshr exact i64 %i.jg, 1
  %i.ji = add nuw i64 %i.jh, %i.iz
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !644
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !645
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %i.jq = add i64 %i.ji, %i.jp
  %sext = shl i64 %i.jq, 32
  %i.jr = ashr exact i64 %sext, 32                ; 3 uses
  %i.js = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #38
          to label %_ZN6google8protobuf8internal8AllocateEm.exit unwind label %bb.bs ; 17 uses

bb.am:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.cf

bb.an:                                            ; preds = %bb.ak
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit: ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 3698, ptr noundef nonnull %i.fs) #36
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.aq

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ao
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.ap:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit
  %i.jv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  br label %bb.ce

bb.aq:                                            ; preds = %bb.ao
  %i.jw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

_ZN6google8protobuf8internal8AllocateEm.exit:     ; preds = %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !146 ; 2 uses
  %.not191 = icmp eq i32 %i.jz, -1
  br i1 %.not191, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit
  %i.ka = load ptr, ptr %i.jx, align 8, !tbaa !264 ; 2 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !149
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8
  %i.ke = invoke noundef ptr %i.kd(ptr noundef nonnull align 8 dereferenceable(16) %i.ka)
          to label %bb.as unwind label %bb.bt

bb.as:                                            ; preds = %bb.ar
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 48
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !646
  br label %bb.at

bb.at:                                            ; preds = %_ZN6google8protobuf8internal8AllocateEm.exit, %bb.as
  %i.kh = phi i32 [ %i.kg, %bb.as ], [ %i.jz, %_ZN6google8protobuf8internal8AllocateEm.exit ]
  %i.ki = trunc i32 %i.kh to i16
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !35 ; 2 uses
  %.not192 = icmp eq i32 %i.kk, -1
  %i.kl = trunc i32 %i.kk to i16
  %spec.select = select i1 %.not192, i16 0, i16 %i.kl
  br i1 %.not.i.i284, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.km = getelementptr inbounds i8, ptr %.sroa.15.0.lcssa279, i64 -24
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !596
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !42
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.kq = phi i32 [ %i.kp, %bb.au ], [ 0, %bb.at ]
  %i.kr = load i32, ptr %i.fw, align 8, !tbaa !651
  %i.ks = load ptr, ptr %i.jb, align 8, !tbaa !642
  %i.kt = load ptr, ptr %i.ja, align 8, !tbaa !643
  %i.ku = load ptr, ptr %i.jx, align 8, !tbaa !264 ; 2 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !149
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load ptr, ptr %i.kw, align 8
  %i.ky = invoke noundef ptr %i.kx(ptr noundef nonnull align 8 dereferenceable(16) %i.ku)
          to label %bb.aw unwind label %bb.bt

bb.aw:                                            ; preds = %bb.av
  %i.kz = ptrtoint ptr %i.ks to i64
  %i.la = ptrtoint ptr %i.kt to i64
  %i.lb = sub i64 %i.kz, %i.la
  %i.lc = lshr exact i64 %i.lb, 4
  %i.ld = trunc i64 %i.lc to i16
  %i.le = trunc i64 %.pre-phi235 to i16
  %.tr51 = trunc i64 %i.fk to i8
  %i.lf = shl i8 %.tr51, 3
  %i.lg = add i8 %i.lf, -8
  %i.lh = load i8, ptr %3, align 8, !tbaa !652    ; 2 uses
  %i.li = add i8 %i.lh, -118
  %or.cond.i = icmp ult i8 %i.li, -117
  br i1 %or.cond.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lj = zext nneg i8 %i.lh to i64
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.lj
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit: ; preds = %bb.aw, %bb.ax
  %.0.i92 = phi ptr [ %i.ll, %bb.ax ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.aw ]
  store i16 %i.ki, ptr %i.js, align 8, !tbaa !653
  %i.lm = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  store i16 %spec.select, ptr %i.lm, align 2, !tbaa !656
  %i.ln = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  store i32 %i.kq, ptr %i.ln, align 4, !tbaa !657
  %i.lo = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store i8 %i.lg, ptr %i.lo, align 8, !tbaa !658
  %i.lp = getelementptr inbounds nuw i8, ptr %i.js, i64 9 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1
  %i.lr = and i8 %i.lq, -2
  store i8 %i.lr, ptr %i.lp, align 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.js, i64 10 ; 2 uses
  store i16 %i.fv, ptr %i.ls, align 2, !tbaa !659
  %i.lt = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  store i32 %i.kr, ptr %i.lt, align 4, !tbaa !660
  %i.lu = getelementptr inbounds nuw i8, ptr %i.js, i64 16 ; 2 uses
  store i32 %i.it, ptr %i.lu, align 8, !tbaa !661
  %i.lv = getelementptr inbounds nuw i8, ptr %i.js, i64 20
  store i16 %i.le, ptr %i.lv, align 4, !tbaa !662
  %i.lw = getelementptr inbounds nuw i8, ptr %i.js, i64 22 ; 3 uses
  store i16 %i.ld, ptr %i.lw, align 2, !tbaa !663
  %i.lx = getelementptr inbounds nuw i8, ptr %i.js, i64 24 ; 4 uses
  store i32 %i.iy, ptr %i.lx, align 8, !tbaa !664
  %i.ly = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  store ptr %i.ky, ptr %i.ly, align 8, !tbaa !665
  %i.lz = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  store ptr null, ptr %i.lz, align 8, !tbaa !666
  %i.ma = getelementptr inbounds nuw i8, ptr %i.js, i64 48
  store ptr %.0.i92, ptr %i.ma, align 8, !tbaa !667
  %i.mb = load ptr, ptr %i.fd, align 8, !tbaa !509 ; 2 uses
  %i.mc = load ptr, ptr %i.fe, align 8, !tbaa !509 ; 2 uses
  %.not4346.i = icmp eq ptr %i.mb, %i.mc
  br i1 %.not4346.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, label %.lr.ph.i93

.lr.ph.i93:                                       ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.md = getelementptr inbounds nuw i8, ptr %i.js, i64 56
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mf = load ptr, ptr %i.me, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bh, %.lr.ph.i93
  %.048.i = phi ptr [ %i.md, %.lr.ph.i93 ], [ %.3.i, %bb.bh ] ; 3 uses
  %.sroa.040.047.i = phi ptr [ %i.mb, %.lr.ph.i93 ], [ %i.on, %bb.bh ] ; 10 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 24
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !511 ; 2 uses
  %i.mi = icmp ne i8 %i.mh, 2
  %.not44.i = icmp eq ptr %.sroa.040.047.i, null  ; 2 uses
  %.not.i94 = or i1 %.not44.i, %i.mi
  br i1 %.not.i94, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mj = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !513 ; 2 uses
  %i.mk = add i8 %i.mj, -118
  %or.cond.i.i = icmp ult i8 %i.mk, -117
  br i1 %or.cond.i.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ml = zext nneg i8 %i.mj to i64
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.ml
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i: ; preds = %bb.ba, %bb.az
  %.0.i.i = phi ptr [ %i.mn, %bb.ba ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.az ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 2
  %i.mp = load i32, ptr %i.mo, align 2
  %i.mq = zext i32 %i.mp to i64
  br label %bb.bh

bb.bb:                                            ; preds = %bb.ay
  %i.mr = icmp ne i8 %i.mh, 1
  %.not24.i = or i1 %.not44.i, %i.mr
  br i1 %.not24.i, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 8
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !516 ; 6 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 1
  %i.mv = load i8, ptr %i.mu, align 1
  %i.mw = and i8 %i.mv, 8
  %.not.i.i.i95 = icmp eq i8 %i.mw, 0
  br i1 %.not.i.i.i95, label %bb.bd, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96

bb.bd:                                            ; preds = %bb.bc
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !101
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96: ; preds = %bb.bc
  %i.na = getelementptr inbounds nuw i8, ptr %i.mt, i64 40
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i97 = icmp eq ptr %i.nb, null
  br i1 %.not1.i.i.i97, label %bb.be, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

bb.be:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i96
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !102
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99: ; preds = %bb.be, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98, %bb.bd
  %.sink7.in.i.i.i100 = phi ptr [ %i.nf, %bb.be ], [ %i.nc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i98 ], [ %i.mz, %bb.bd ]
  %.sink7.i.i.i101 = load ptr, ptr %.sink7.in.i.i.i100, align 8, !tbaa !33
  %i.ng = ptrtoint ptr %i.mt to i64
  %i.nh = ptrtoint ptr %.sink7.i.i.i101 to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %.0.in.i.i.i102 = sdiv exact i64 %i.ni, 88
  %sext.i.i103 = shl i64 %.0.in.i.i.i102, 32
  %i.nj = ashr exact i64 %sext.i.i103, 30
  %i.nk = getelementptr inbounds i8, ptr %i.mf, i64 %i.nj
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mt, i64 2
  %i.nn = load i8, ptr %i.nm, align 2, !tbaa !96
  %switch.tableidx = add i8 %i.nn, -9             ; 2 uses
  %i.no = icmp ult i8 %switch.tableidx, 4
  br i1 %i.no, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99
  %i.np = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.np
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99, %switch.lookup
  %.sink.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i99 ]
  %i.nq = and i32 %.sink.i.i.i, %i.nl             ; 2 uses
  %i.nr = icmp samesign ult i32 %i.nq, 65536
  br i1 %i.nr, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i
  %i.ns = zext nneg i32 %i.nq to i64
  %i.nt = load i8, ptr %.sroa.040.047.i, align 8, !tbaa !518 ; 2 uses
  %i.nu = add i8 %i.nt, -118
  %or.cond.i26.i = icmp ult i8 %i.nu, -117
  br i1 %or.cond.i26.i, label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.nv = zext nneg i8 %i.nt to i64
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr @_ZZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionEE6kFuncs, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !94
  br label %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i

_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i: ; preds = %bb.bg, %bb.bf
  %.0.i27.i = phi ptr [ %i.nx, %bb.bg ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bf ]
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 16
  %i.nz = load i16, ptr %i.ny, align 8, !tbaa !519
  %i.oa = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 18
  %i.ob = load i8, ptr %i.oa, align 2, !tbaa !520
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 19
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !521
  %i.oe = shl nuw i64 %i.ns, 48
  %i.of = zext i8 %i.od to i64
  %i.og = shl nuw nsw i64 %i.of, 24
  %i.oh = or disjoint i64 %i.og, %i.oe
  %i.oi = zext i8 %i.ob to i64
  %i.oj = shl nuw nsw i64 %i.oi, 16
  %i.ok = or disjoint i64 %i.oh, %i.oj
  %i.ol = zext i16 %i.nz to i64
  %i.om = or disjoint i64 %i.ok, %i.ol
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i, %bb.bb, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %.0.i.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %.0.i27.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.bb ]
  %.sink.i = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit.i ], [ %i.mq, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit.i ], [ %i.om, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28.i ], [ 0, %bb.bb ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink.i, ptr %.048.i, align 8, !tbaa !94
  %.sroa.4.0..0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 8
  store i64 %.sink.i, ptr %.sroa.4.0..0.sroa_idx.i, align 8, !tbaa !31
  %.3.i = getelementptr inbounds nuw i8, ptr %.048.i, i64 16
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.040.047.i, i64 32 ; 2 uses
  %.not43.i = icmp eq ptr %i.on, %i.mc
  br i1 %.not43.i, label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, label %bb.ay

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit: ; preds = %bb.bh
  %.pre223 = load i16, ptr %i.ls, align 2, !tbaa !659
  br label %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit

_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit: ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %i.oo = phi i16 [ %.pre223, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit.loopexit ], [ %i.fv, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ]
  %i.op = ptrtoint ptr %i.js to i64               ; 4 uses
  %i.oq = zext i16 %i.oo to i64
  %i.or = add i64 %i.oq, %i.op
  %i.os = inttoptr i64 %i.or to ptr               ; 2 uses
  %.val = load ptr, ptr %i.fx, align 8, !tbaa !635 ; 2 uses
  %.val64 = load ptr, ptr %i.fz, align 8, !tbaa !635 ; 2 uses
  %.not12.i = icmp eq ptr %.val, %.val64
  br i1 %.not12.i, label %_ZN6google8protobufL26PopulateTcParseLookupTableERKNS0_8internal17TailCallTableInfoEPt.exit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit, %._crit_edge.i
  %.014.i = phi ptr [ %.1.lcssa.i, %._crit_edge.i ], [ %i.os, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %.sroa.05.013.i = phi ptr [ %i.pt, %._crit_edge.i ], [ %.val, %_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE.exit ] ; 4 uses
  %i.ot = load i32, ptr %.sroa.05.013.i, align 8, !tbaa !668
  store i32 %i.ot, ptr %.014.i, align 2
  %i.ou = getelementptr inbounds nuw i8, ptr %.014.i, i64 4
  %i.ov = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.05.013.i, i64 16
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !636 ; 4 uses
  %i.oy = ptrtoint ptr %i.ox to i64               ; 2 uses
  %i.oz = load ptr, ptr %i.ov, align 8, !tbaa !639 ; 9 uses
  %i.pa = ptrtoint ptr %i.oz to i64               ; 2 uses
  %i.pb = ptrtoint ptr %i.ox to i64
  %i.pc = ptrtoint ptr %i.oz to i64
  %i.pd = sub i64 %i.pb, %i.pc
  %i.pe = lshr exact i64 %i.pd, 2
  %i.pf = trunc i64 %i.pe to i16
  %i.pg = getelementptr i8, ptr %.014.i, i64 6    ; 6 uses
  store i16 %i.pf, ptr %i.ou, align 2, !tbaa !531
  %.not89.i = icmp eq ptr %i.oz, %i.ox
  br i1 %.not89.i, label %._crit_edge.i, label %.lr.ph.i104.preheader

.lr.ph.i104.preheader:                            ; preds = %.lr.ph16.i
  %i.ph = add i64 %i.oy, -4
  %i.pi = sub i64 %i.ph, %i.pa                    ; 2 uses
  %i.pj = lshr i64 %i.pi, 2
  %i.pk = add nuw nsw i64 %i.pj, 1                ; 2 uses
  %min.iters.check306 = icmp ult i64 %i.pi, 28
  br i1 %min.iters.check306, label %.lr.ph.i104.preheader324, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i104.preheader
  %scevgep = getelementptr i8, ptr %.014.i, i64 10
  %i.pl = add i64 %i.oy, -4
  %i.pm = sub i64 %i.pl, %i.pa
  %i.pn = and i64 %i.pm, -4                       ; 2 uses
  %scevgep302 = getelementptr i8, ptr %scevgep, i64 %i.pn
  %scevgep303 = getelementptr i8, ptr %i.oz, i64 4
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.pn
  %bound0 = icmp ult ptr %i.pg, %scevgep304
  %bound1 = icmp ult ptr %i.oz, %scevgep302
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i104.preheader324, label %vector.ph307

vector.ph307:                                     ; preds = %vector.memcheck
  %n.vec309 = and i64 %i.pk, 9223372036854775804  ; 3 uses
  %i.po = shl i64 %n.vec309, 2                    ; 2 uses
  %i.pp = getelementptr i8, ptr %i.pg, i64 %i.po  ; 2 uses
  %i.pq = getelementptr i8, ptr %i.oz, i64 %i.po
  br label %vector.body310

vector.body310:                                   ; preds = %vector.body310, %vector.ph307
  %index311 = phi i64 [ 0, %vector.ph307 ], [ %index.next315, %vector.body310 ] ; 2 uses
  %i.pr = shl i64 %index311, 2                    ; 2 uses
  %next.gep312 = getelementptr i8, ptr %i.pg, i64 %i.pr
  %next.gep313 = getelementptr i8, ptr %i.oz, i64 %i.pr
  %wide.vec = load <8 x i16>, ptr %next.gep313, align 2, !tbaa !531, !alias.scope !673
  store <8 x i16> %wide.vec, ptr %next.gep312, align 2, !tbaa !531, !alias.scope !676, !noalias !673
  %index.next315 = add nuw i64 %index311, 4       ; 2 uses
  %i.ps = icmp eq i64 %index.next315, %n.vec309
  br i1 %i.ps, label %middle.block316, label %vector.body310, !llvm.loop !678
end_hunk_2
begin_hunk_3_@_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb1EZNKS1_14SwapOneofFieldILb1EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperS9_EEvPKNS0_15FieldDescriptorEPT0_PT1_:bb.a
  %i.xs = getelementptr inbounds i8, ptr %i.vg, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !3
  %i.xu = and i32 %i.xt, 2147483640               ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.va, i64 76
  %i.xw = load i32, ptr %i.xv, align 4, !tbaa !99 ; 2 uses
  %.not.i.i.i.i221 = icmp eq i32 %i.xw, -1
  br i1 %.not.i.i.i.i221, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i230, label %bb.cl

bb.cl:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i.i.i
  br i1 %.not.i.i.i.i.i213, label %bb.cm, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i.i.i222

bb.cm:                                            ; preds = %bb.cl
  %i.xx = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.xy = load ptr, ptr %i.xx, align 8, !tbaa !101
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i.i.i222: ; preds = %bb.cl
  %i.ya = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i14.i.i.i223 = icmp eq ptr %i.yb, null
  br i1 %.not1.i.i14.i.i.i223, label %bb.cn, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i.i.i224

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i.i.i224: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i.i.i222
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 104
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225

bb.cn:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i13.i.i.i222
  %i.yd = getelementptr inbounds nuw i8, ptr %i.ve, i64 16
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !102
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 136
  br label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225: ; preds = %bb.cn, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i.i.i224, %bb.cm
  %.sink7.in.i.i16.i.i.i226 = phi ptr [ %i.yf, %bb.cn ], [ %i.yc, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i15.i.i.i224 ], [ %i.xz, %bb.cm ]
  %.sink7.i.i17.i.i.i227 = load ptr, ptr %.sink7.in.i.i16.i.i.i226, align 8, !tbaa !33
  %i.yg = ptrtoint ptr %.sink7.i.i17.i.i.i227 to i64
  %i.yh = sub i64 %i.xo, %i.yg
  %.0.in.i.i18.i.i.i228 = sdiv exact i64 %i.yh, 88
  %sext.i19.i.i.i229 = shl i64 %.0.in.i.i18.i.i.i228, 32
  %i.yi = ashr exact i64 %sext.i19.i.i.i229, 30
  %i.yj = getelementptr inbounds i8, ptr %i.vg, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4, !tbaa !3
  %i.yl = icmp slt i32 %i.yk, 0
  br i1 %i.yl, label %bb.co, label %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i230, !prof !103

bb.co:                                            ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225
  %i.ym = zext i32 %i.xw to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.ym
  %i.yo = load ptr, ptr %i.yn, align 8, !tbaa !94
  %i.yp = and i8 %i.vi, 32
  %.not.i.i.i233 = icmp eq i8 %i.yp, 0
  %i.yq = zext nneg i32 %i.xu to i64
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 %i.yq ; 2 uses
  br i1 %.not.i.i.i233, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper17GetArenaStringPtrEv.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !246
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper17GetArenaStringPtrEv.exit

_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i230: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i225, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetINS1_14ArenaStringPtrEEEjPKNS0_15FieldDescriptorE.exit.i.i.i
  %i.yt = zext nneg i32 %i.xu to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.yt
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper17GetArenaStringPtrEv.exit

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper17GetArenaStringPtrEv.exit: ; preds = %bb.co, %bb.cp, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i230
  %.1.i.i.i231 = phi ptr [ %i.yu, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i230 ], [ %i.ys, %bb.cp ], [ %i.yr, %bb.co ]
  %.sroa.0.0.copyload.i232 = load ptr, ptr %.1.i.i.i231, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i232, ptr %4, align 8
  %i.yv = load ptr, ptr %3, align 8, !tbaa !1002
  %i.yw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !1004
  %i.yy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal14ArenaStringPtrEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.yv, ptr noundef %i.yx, ptr noundef %i.yz, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.cw

bb.cq:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 606) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 20, ptr nonnull @.str.156)
          to label %bb.cr unwind label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #35
  %i.za = load i8, ptr %i.k, align 2, !tbaa !96
  %i.zb = zext i8 %i.za to i64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !97
  store i32 %i.zd, ptr %i.j, align 4, !tbaa !97
  %i.ze = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ze)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.cu

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  unreachable

bb.ct:                                            ; preds = %bb.cq
  %i.zf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %i.zg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  unreachable

bb.cw:                                            ; preds = %bb.bo, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetCordEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper17GetArenaStringPtrEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper14GetMicroStringEv.exit, %bb.bn, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetEnumEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetBoolEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetDoubleEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetFloatEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetUint64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetUint32Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetInt64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetInt32Ev.exit
  %i.zh = load ptr, ptr %2, align 8, !tbaa !1002
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.zj = load ptr, ptr %i.zi, align 8, !tbaa !1004
  %i.zk = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8, !tbaa !1005 ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 1
  %i.zn = load i8, ptr %i.zm, align 1
  %i.zo = and i8 %i.zn, 16
  %.not.i.i = icmp eq i8 %i.zo, 0
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zl, i64 40
  %i.zq = load ptr, ptr %i.zp, align 8, !nonnull !50 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zh, i64 64
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !86
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zu = load ptr, ptr %i.zt, align 8, !tbaa !51
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 72
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !54
  %i.zx = ptrtoint ptr %i.zq to i64
  %i.zy = select i1 %.not.i.i, i64 0, i64 %i.zx
  %i.zz = ptrtoint ptr %i.zw to i64
  %i.aaa = sub i64 %i.zy, %i.zz
  %i.aab = sdiv exact i64 %i.aaa, 56
  %i.aac = trunc i64 %i.aab to i32
  %i.aad = shl i32 %i.aac, 2
  %i.aae = add i32 %i.aad, %i.zs
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = getelementptr inbounds nuw i8, ptr %i.zj, i64 %i.aaf
  store i32 0, ptr %i.aag, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb1EZNKS1_14SwapOneofFieldILb1EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE15LocalVarWrapperZNKS3_ILb1EEEvS5_S5_S8_E14MessageWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.google::protobuf::internal::ArenaStringPtr", align 8 ; 4 uses
  %5 = alloca %"class.google::protobuf::internal::MicroString", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !96
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  switch i32 %i.o, label %bb.ad [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 6, label %bb.j
    i32 5, label %bb.l
    i32 7, label %bb.n
    i32 8, label %bb.p
    i32 10, label %bb.r
    i32 9, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !89
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.r, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.158, ptr %i.s, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit: ; preds = %bb.b
  %i.t = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.t, ptr %i.i, align 4, !tbaa !3
  %i.u = load ptr, ptr %3, align 8, !tbaa !1002
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1004
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.aj

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !89
  %.not.i.i.i31 = icmp eq i8 %i.aa, 1
  br i1 %.not.i.i.i31, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @.str.158, ptr %i.ac, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit: ; preds = %bb.d
  %i.ad = load i64, ptr %2, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !253
  %i.ae = load ptr, ptr %3, align 8, !tbaa !1002
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1004
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIlEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !89
  %.not.i.i.i32 = icmp eq i8 %i.ak, 2
  br i1 %.not.i.i.i32, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.al, align 8, !tbaa !149
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @.str.158, ptr %i.am, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit: ; preds = %bb.f
  %i.an = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.an, ptr %i.g, align 4, !tbaa !3
  %i.ao = load ptr, ptr %3, align 8, !tbaa !1002
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1004
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIjEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.h:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !89
  %.not.i.i.i33 = icmp eq i8 %i.au, 3
  br i1 %.not.i.i.i33, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.av, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @.str.158, ptr %i.aw, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit: ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !253
  %i.ay = load ptr, ptr %3, align 8, !tbaa !1002
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1004
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldImEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aj

bb.j:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !89
  %.not.i.i.i34 = icmp eq i8 %i.be, 4
  br i1 %.not.i.i.i34, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bf, align 8, !tbaa !149
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @.str.158, ptr %i.bg, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit: ; preds = %bb.j
  %i.bh = load float, ptr %2, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store float %i.bh, ptr %i.e, align 4, !tbaa !259
  %i.bi = load ptr, ptr %3, align 8, !tbaa !1002
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1004
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIfEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aj

bb.l:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !89
  %.not.i.i.i35 = icmp eq i8 %i.bo, 5
  br i1 %.not.i.i.i35, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bp, align 8, !tbaa !149
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @.str.158, ptr %i.bq, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit: ; preds = %bb.l
  %i.br = load double, ptr %2, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.br, ptr %i.d, align 8, !tbaa !261
  %i.bs = load ptr, ptr %3, align 8, !tbaa !1002
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1004
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIdEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bs, ptr noundef %i.bu, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aj

bb.n:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !89
  %.not.i.i.i36 = icmp eq i8 %i.by, 6
  br i1 %.not.i.i.i36, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bz, align 8, !tbaa !149
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @.str.158, ptr %i.ca, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit: ; preds = %bb.n
  %i.cb = load i8, ptr %2, align 8, !tbaa !263, !range !84, !noundef !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.cb, ptr %i.c, align 1, !tbaa !263
  %i.cc = load ptr, ptr %3, align 8, !tbaa !1002
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1004
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIbEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aj

bb.p:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !89
  %.not.i.i.i37 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i37, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cj, align 8, !tbaa !149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.158, ptr %i.ck, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit: ; preds = %bb.p
  %i.cl = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !3
  %i.cm = load ptr, ptr %3, align 8, !tbaa !1002
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1004
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef %i.co, ptr noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.r:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !89
  %.not.i.i.i.i = icmp eq i8 %i.cs, 7
  br i1 %.not.i.i.i.i, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper16UnsafeGetMessageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ct, align 8, !tbaa !149
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @.str.158, ptr %i.cu, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper16UnsafeGetMessageEv.exit: ; preds = %bb.r
  %i.cv = load ptr, ptr %2, align 8, !tbaa !93
  %i.cw = load ptr, ptr %3, align 8, !tbaa !1002
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1004
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1005
  tail call void @_ZNK6google8protobuf10Reflection30UnsafeArenaSetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef %i.cy, ptr noundef %i.cv, ptr noundef %i.da)
  br label %bb.aj

bb.t:                                             ; preds = %bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = and i8 %i.dc, 7
  switch i8 %i.dd, label %bb.aj [
    i8 2, label %bb.u
    i8 1, label %bb.w
    i8 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.df = load i8, ptr %i.de, align 8, !tbaa !89
  %.not.i.i.i38 = icmp eq i8 %i.df, 10
  br i1 %.not.i.i.i38, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetCordEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.dg, align 8, !tbaa !149
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr @.str.158, ptr %i.dh, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetCordEv.exit: ; preds = %bb.u
  %i.di = load ptr, ptr %2, align 8, !tbaa !229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.di, ptr %i.a, align 8, !tbaa !229
  %i.dj = load ptr, ptr %3, align 8, !tbaa !1002
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1004
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldIPN4absl12lts_202505124CordEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.dj, ptr noundef %i.dl, ptr noundef %i.dn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aj

bb.w:                                             ; preds = %bb.t, %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !100
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = and i8 %i.dr, 8
  %.not.i.i.i39 = icmp eq i8 %i.ds, 0
  br i1 %.not.i.i.i39, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !101
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.w
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not1.i.i.i, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 104
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !102
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 136
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.y
  %.sink7.in.i.i.i = phi ptr [ %i.eb, %bb.y ], [ %i.dy, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.dv, %bb.x ]
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.ec = ptrtoint ptr %1 to i64
  %i.ed = ptrtoint ptr %.sink7.i.i.i to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %.0.in.i.i.i = sdiv exact i64 %i.ee, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.ef = ashr exact i64 %sext.i.i, 30
  %i.eg = getelementptr inbounds i8, ptr %i.dp, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %i.ei = and i32 %i.eh, 2
  %.not = icmp eq i32 %i.ei, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !89  ; 2 uses
  br i1 %.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i40 = icmp eq i8 %i.ek, 9
  br i1 %.not.i.i.i40, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper14GetMicroStringEv.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.el, align 8, !tbaa !149
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr @.str.158, ptr %i.em, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.el, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper14GetMicroStringEv.exit: ; preds = %bb.z
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload.i, ptr %5, align 8
  %i.en = load ptr, ptr %3, align 8, !tbaa !1002
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1004
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal11MicroStringEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.en, ptr noundef %i.ep, ptr noundef %i.er, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.aj

bb.ab:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit
  %.not.i.i.i41 = icmp eq i8 %i.ek, 8
  br i1 %.not.i.i.i41, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper17GetArenaStringPtrEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.es, align 8, !tbaa !149
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr @.str.158, ptr %i.et, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb1EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper17GetArenaStringPtrEv.exit: ; preds = %bb.ab
  %.sroa.0.0.copyload.i42 = load ptr, ptr %2, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %.sroa.0.0.copyload.i42, ptr %4, align 8
  %i.eu = load ptr, ptr %3, align 8, !tbaa !1002
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1004
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !1005
  call void @_ZNK6google8protobuf10Reflection8SetFieldINS0_8internal14ArenaStringPtrEEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.eu, ptr noundef %i.ew, ptr noundef %i.ey, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.aj

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull @.str.1, i32 noundef 606) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 20, ptr nonnull @.str.156)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #35
  %i.ez = load i8, ptr %i.k, align 2, !tbaa !96
  %i.fa = zext i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !97
  store i32 %i.fc, ptr %i.j, align 4, !tbaa !97
  %i.fd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fd)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ah

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #37
  unreachable

bb.ag:                                            ; preds = %bb.ad
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.ai

end_hunk_3
begin_hunk_4_@_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb0EZNKS1_14SwapOneofFieldILb0EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE14MessageWrapperS9_EEvPKNS0_15FieldDescriptorEPT0_PT1_:bb.a
_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i161: ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.i.i.i156, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIiEEjPKNS0_15FieldDescriptorE.exit.i.i.i147
  %i.rc = zext nneg i32 %i.qd to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.pg, i64 %i.rc
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetEnumEv.exit

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetEnumEv.exit: ; preds = %bb.bl, %bb.bm, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i161
  %.1.i.i.i162 = phi ptr [ %i.rd, %_ZNK6google8protobuf8internal16ReflectionSchema7IsSplitEPKNS0_15FieldDescriptorE.exit.thread.i.i.i161 ], [ %i.rb, %bb.bm ], [ %i.ra, %bb.bl ]
  %i.re = load i32, ptr %.1.i.i.i162, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.re, ptr %i.a, align 4, !tbaa !3
  %i.rf = load ptr, ptr %3, align 8, !tbaa !1043
  %i.rg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !1045
  %i.ri = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.rf, ptr noundef %i.rh, ptr noundef %i.rj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ca

bb.bn:                                            ; preds = %bb.a
  %i.rk = load ptr, ptr %2, align 8, !tbaa !1043
  %i.rl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !1045 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !1046
  %i.rp = tail call noundef ptr @_ZNK6google8protobuf10Reflection25UnsafeArenaReleaseMessageEPNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull readonly align 8 dereferenceable(96) %i.rk, ptr noundef %i.rm, ptr noundef %i.ro, ptr noundef null) ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !36 ; 3 uses
  %i.rs = trunc i64 %i.rr to i1
  br i1 %i.rs, label %bb.bo, label %bb.bp, !prof !38

bb.bo:                                            ; preds = %bb.bn
  %i.rt = add nsw i64 %i.rr, -1
  %i.ru = inttoptr i64 %i.rt to ptr
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !39
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.rw = inttoptr i64 %i.rr to ptr
  br label %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i

_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i = phi ptr [ %i.rv, %bb.bo ], [ %i.rw, %bb.bp ]
  %i.rx = icmp ne ptr %.0.i.i.i.i, null
  %i.ry = icmp ne ptr %i.rp, null
  %or.cond.i.i = and i1 %i.ry, %i.rx
  br i1 %or.cond.i.i, label %bb.bq, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper10GetMessageEv.exit

bb.bq:                                            ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i
  %i.rz = tail call noundef ptr @_ZNK6google8protobuf11MessageLite3NewEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(16) %i.rp, ptr noundef null) ; 2 uses
  tail call void @_ZN6google8protobuf7Message8CopyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.rz, ptr noundef nonnull align 8 dereferenceable(16) %i.rp)
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper10GetMessageEv.exit

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper10GetMessageEv.exit: ; preds = %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i, %bb.bq
  %.0.i.i = phi ptr [ %i.rz, %bb.bq ], [ %i.rp, %_ZNK6google8protobuf11MessageLite8GetArenaEv.exit.i.i ]
  %i.sa = load ptr, ptr %3, align 8, !tbaa !1043
  %i.sb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !1045
  %i.sd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !1046
  tail call void @_ZNK6google8protobuf10Reflection19SetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.sa, ptr noundef %i.sc, ptr noundef %.0.i.i, ptr noundef %i.se)
  br label %bb.ca

bb.br:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.sf = load ptr, ptr %2, align 8, !tbaa !1043, !noalias !1059
  %i.sg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !1045, !noalias !1059
  %i.si = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !1046, !noalias !1059
  call void @_ZNK6google8protobuf10Reflection9GetStringB5cxx11ERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(96) %i.sf, ptr noundef nonnull align 8 dereferenceable(16) %i.sh, ptr noundef %i.sj)
  invoke void @_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN14MessageWrapper9SetStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.sk = load ptr, ptr %4, align 8, !tbaa !250   ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.sm = icmp eq ptr %i.sk, %i.sl
  br i1 %i.sm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bs
  %i.sn = load i64, ptr %i.sl, align 8, !tbaa !31
  %i.so = add i64 %i.sn, 1
  call void @_ZdlPvm(ptr noundef %i.sk, i64 noundef %i.so) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.ca

bb.bt:                                            ; preds = %bb.br
  %i.sp = landingpad { ptr, i32 }
          cleanup
  %i.sq = load ptr, ptr %4, align 8, !tbaa !250   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ss = icmp eq ptr %i.sq, %i.sr
  br i1 %i.ss, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bt
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !31
  %i.su = add i64 %i.st, 1
  call void @_ZdlPvm(ptr noundef %i.sq, i64 noundef %i.su) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %i.sp

bb.bu:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 606) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 20, ptr nonnull @.str.156)
          to label %bb.bv unwind label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #35
  %i.sv = load i8, ptr %i.j, align 2, !tbaa !96
  %i.sw = zext i8 %i.sv to i64
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.sw
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !97
  store i32 %i.sy, ptr %i.i, align 4, !tbaa !97
  %i.sz = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sz)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.by

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.bx:                                            ; preds = %bb.bu
  %i.ta = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw, %bb.bv
  %i.tb = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.ca:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper10GetMessageEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetEnumEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper7GetBoolEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetDoubleEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetFloatEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetUint64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper9GetUint32Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetInt64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK14MessageWrapper8GetInt32Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6google8protobuf10Reflection22InternalMoveOneofFieldILb0EZNKS1_14SwapOneofFieldILb0EEEvPNS0_7MessageES5_PKNS0_15OneofDescriptorEE15LocalVarWrapperZNKS3_ILb0EEEvS5_S5_S8_E14MessageWrapperEEvPKNS0_15FieldDescriptorEPT0_PT1_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !tbaa !96
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  switch i32 %i.o, label %bb.z [
    i32 1, label %bb.b
    i32 2, label %bb.d
    i32 3, label %bb.f
    i32 4, label %bb.h
    i32 6, label %bb.j
    i32 5, label %bb.l
    i32 7, label %bb.n
    i32 8, label %bb.p
    i32 10, label %bb.r
    i32 9, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !89
  %.not.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.r, align 8, !tbaa !149
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @.str.158, ptr %i.s, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit: ; preds = %bb.b
  %i.t = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.t, ptr %i.i, align 4, !tbaa !3
  %i.u = load ptr, ptr %3, align 8, !tbaa !1043
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1045
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.u, ptr noundef %i.w, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !89
  %.not.i.i.i23 = icmp eq i8 %i.aa, 1
  br i1 %.not.i.i.i23, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ab, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @.str.158, ptr %i.ac, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit: ; preds = %bb.d
  %i.ad = load i64, ptr %2, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ad, ptr %i.h, align 8, !tbaa !253
  %i.ae = load ptr, ptr %3, align 8, !tbaa !1043
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1045
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIlEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ae, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.af

bb.f:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !89
  %.not.i.i.i24 = icmp eq i8 %i.ak, 2
  br i1 %.not.i.i.i24, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.al, align 8, !tbaa !149
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @.str.158, ptr %i.am, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit: ; preds = %bb.f
  %i.an = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i32 %i.an, ptr %i.g, align 4, !tbaa !3
  %i.ao = load ptr, ptr %3, align 8, !tbaa !1043
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1045
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIjEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ao, ptr noundef %i.aq, ptr noundef %i.as, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.h:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load i8, ptr %i.at, align 8, !tbaa !89
  %.not.i.i.i25 = icmp eq i8 %i.au, 3
  br i1 %.not.i.i.i25, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.av, align 8, !tbaa !149
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr @.str.158, ptr %i.aw, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit: ; preds = %bb.h
  %i.ax = load i64, ptr %2, align 8, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ax, ptr %i.f, align 8, !tbaa !253
  %i.ay = load ptr, ptr %3, align 8, !tbaa !1043
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1045
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldImEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.ay, ptr noundef %i.ba, ptr noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.af

bb.j:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !89
  %.not.i.i.i26 = icmp eq i8 %i.be, 4
  br i1 %.not.i.i.i26, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bf, align 8, !tbaa !149
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @.str.158, ptr %i.bg, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit: ; preds = %bb.j
  %i.bh = load float, ptr %2, align 8, !tbaa !259
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store float %i.bh, ptr %i.e, align 4, !tbaa !259
  %i.bi = load ptr, ptr %3, align 8, !tbaa !1043
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1045
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIfEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bi, ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef nonnull align 4 dereferenceable(4) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.af

bb.l:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !89
  %.not.i.i.i27 = icmp eq i8 %i.bo, 5
  br i1 %.not.i.i.i27, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bp, align 8, !tbaa !149
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr @.str.158, ptr %i.bq, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit: ; preds = %bb.l
  %i.br = load double, ptr %2, align 8, !tbaa !261
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.br, ptr %i.d, align 8, !tbaa !261
  %i.bs = load ptr, ptr %3, align 8, !tbaa !1043
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !1045
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIdEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.bs, ptr noundef %i.bu, ptr noundef %i.bw, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.n:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !89
  %.not.i.i.i28 = icmp eq i8 %i.by, 6
  br i1 %.not.i.i.i28, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.bz, align 8, !tbaa !149
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store ptr @.str.158, ptr %i.ca, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit: ; preds = %bb.n
  %i.cb = load i8, ptr %2, align 8, !tbaa !263, !range !84, !noundef !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.cb, ptr %i.c, align 1, !tbaa !263
  %i.cc = load ptr, ptr %3, align 8, !tbaa !1043
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1045
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIbEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cc, ptr noundef %i.ce, ptr noundef %i.cg, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.af

bb.p:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !89
  %.not.i.i.i29 = icmp eq i8 %i.ci, 0
  br i1 %.not.i.i.i29, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.cj, align 8, !tbaa !149
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr @.str.158, ptr %i.ck, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit: ; preds = %bb.p
  %i.cl = load i32, ptr %2, align 8, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cl, ptr %i.b, align 4, !tbaa !3
  %i.cm = load ptr, ptr %3, align 8, !tbaa !1043
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1045
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1046
  call void @_ZNK6google8protobuf10Reflection8SetFieldIiEEvPNS0_7MessageEPKNS0_15FieldDescriptorERKT_(ptr noundef nonnull align 8 dereferenceable(96) %i.cm, ptr noundef %i.co, ptr noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.r:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !89
  %.not.i.i.i30 = icmp eq i8 %i.cs, 7
  br i1 %.not.i.i.i30, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper10GetMessageEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ct = tail call ptr @__cxa_allocate_exception(i64 16) #35 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.ct, align 8, !tbaa !149
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr @.str.158, ptr %i.cu, align 8, !tbaa !1040
  tail call void @__cxa_throw(ptr nonnull %i.ct, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40
  unreachable

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper10GetMessageEv.exit: ; preds = %bb.r
  %i.cv = load ptr, ptr %2, align 8, !tbaa !93
  %i.cw = load ptr, ptr %3, align 8, !tbaa !1043
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1045
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !1046
  tail call void @_ZNK6google8protobuf10Reflection19SetAllocatedMessageEPNS0_7MessageES3_PKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %i.cw, ptr noundef %i.cy, ptr noundef %i.cv, ptr noundef %i.da)
  br label %bb.af

bb.t:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !89, !noalias !1062
  %.not.i.i.i31 = icmp eq i8 %i.dc, 11
  br i1 %.not.i.i.i31, label %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiljmfdbPN6google8protobuf7MessageENS7_8internal14ArenaStringPtrENSA_11MicroStringEPN4absl12lts_202505124CordES5_EERKT_RKSt7variantIJDpT0_EE.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dd = tail call ptr @__cxa_allocate_exception(i64 16) #35, !noalias !1062 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.dd, align 8, !tbaa !149, !noalias !1062
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store ptr @.str.158, ptr %i.de, align 8, !tbaa !1040, !noalias !1062
  tail call void @__cxa_throw(ptr nonnull %i.dd, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #40, !noalias !1062
  unreachable

_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiljmfdbPN6google8protobuf7MessageENS7_8internal14ArenaStringPtrENSA_11MicroStringEPN4absl12lts_202505124CordES5_EERKT_RKSt7variantIJDpT0_EE.exit.i: ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.df, ptr %4, align 8, !tbaa !248, !alias.scope !1062
  %i.dg = load ptr, ptr %2, align 8, !tbaa !250, !noalias !1062 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !252, !noalias !1062 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35, !noalias !1062
  store i64 %i.di, ptr %i.a, align 8, !tbaa !253, !noalias !1062
  %i.dj = icmp ugt i64 %i.di, 15
  br i1 %i.dj, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiljmfdbPN6google8protobuf7MessageENS7_8internal14ArenaStringPtrENSA_11MicroStringEPN4absl12lts_202505124CordES5_EERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.dk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !250, !alias.scope !1062
  %i.dl = load i64, ptr %i.a, align 8, !tbaa !253, !noalias !1062
  store i64 %i.dl, ptr %i.df, align 8, !tbaa !31, !alias.scope !1062
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc.i.i, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiljmfdbPN6google8protobuf7MessageENS7_8internal14ArenaStringPtrENSA_11MicroStringEPN4absl12lts_202505124CordES5_EERKT_RKSt7variantIJDpT0_EE.exit.i
  %i.dm = phi ptr [ %i.dk, %.noexc.i.i ], [ %i.df, %_ZSt3getINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJiljmfdbPN6google8protobuf7MessageENS7_8internal14ArenaStringPtrENSA_11MicroStringEPN4absl12lts_202505124CordES5_EERKT_RKSt7variantIJDpT0_EE.exit.i ] ; 2 uses
  switch i64 %i.di, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i
  %i.dn = load i8, ptr %i.dg, align 1, !tbaa !31
  store i8 %i.dn, ptr %i.dm, align 1, !tbaa !31
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit

bb.w:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.dg, i64 %i.di, i1 false)
  br label %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit

_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit: ; preds = %._crit_edge.i.i.i, %bb.v, %bb.w
  %i.do = load i64, ptr %i.a, align 8, !tbaa !253, !noalias !1062 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !252, !alias.scope !1062
  %i.dq = load ptr, ptr %4, align 8, !tbaa !250, !alias.scope !1062
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.do
  store i8 0, ptr %i.dr, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35, !noalias !1062
  invoke void @_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEEN14MessageWrapper9SetStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit
  %i.ds = load ptr, ptr %4, align 8, !tbaa !250   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.df
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.du = load i64, ptr %i.df, align 8, !tbaa !31
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %bb.af

bb.y:                                             ; preds = %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetStringB5cxx11Ev.exit
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %4, align 8, !tbaa !250   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.df
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.y
  %i.dz = load i64, ptr %i.df, align 8, !tbaa !31
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  resume { ptr, i32 } %i.dw

bb.z:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 606) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %5, i64 20, ptr nonnull @.str.156)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #35
  %i.eb = load i8, ptr %i.k, align 2, !tbaa !96
  %i.ec = zext i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !97
  store i32 %i.ee, ptr %i.j, align 4, !tbaa !97
  %i.ef = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsIN6google8protobuf8internal19FieldDescriptorLite7CppTypeEEERS2_RKT_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.j)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.ad

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.ac:                                            ; preds = %bb.z
  %i.eg = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #35
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #37
  unreachable

bb.af:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper10GetMessageEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetEnumEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper7GetBoolEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetDoubleEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetFloatEv.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper9GetUint32Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt64Ev.exit, %_ZZNK6google8protobuf10Reflection14SwapOneofFieldILb0EEEvPNS0_7MessageES4_PKNS0_15OneofDescriptorEENK15LocalVarWrapper8GetInt32Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7variantIJiljmfdbPN6google8protobuf7MessageENS1_8internal14ArenaStringPtrENS4_11MicroStringEPN4absl12lts_202505124CordENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE7emplaceILm11EJRSG_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJiljmfdbS3_S5_S6_SA_SG_EE4typeEDpT0_EERSN_E4typeEDpOSO_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::integral_constant.419", align 1 ; 3 uses
  %3 = alloca %class.anon.389, align 1            ; 3 uses
  %4 = alloca %class.anon.405, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::variant.348", align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !248
  %i.c = load ptr, ptr %1, align 8, !tbaa !250    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !252  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.e, ptr %i.a, align 8, !tbaa !253
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !250
  %i.h = load i64, ptr %i.a, align 8, !tbaa !253
  store i64 %i.h, ptr %i.b, align 8, !tbaa !31
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.g, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf15MapIteratorBaseILb1EEaSERKS2_

declare noundef zeroext i1 @_ZNK6google8protobuf15MapIteratorBaseILb1EEeqERKS2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf6MapKey4typeEv(ptr noundef nonnull align 8 dereferenceable(20) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1071 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.140, i32 noundef 85) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.141)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 40, ptr nonnull @.str.165)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 38, ptr nonnull @.str.166)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi39EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf11MapValueRef19MutableMessageValueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !505  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond.i, label %bb.b, label %_ZNK6google8protobuf16MapValueConstRef4typeEv.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.140, i32 noundef 780) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.141)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit.i unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit.i: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 59, ptr nonnull @.str.147)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit.i unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit.i
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit.i
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit.i, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit.i, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

_ZNK6google8protobuf16MapValueConstRef4typeEv.exit: ; preds = %bb.a
  %.not = icmp eq i32 %i.b, 10
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %_ZNK6google8protobuf16MapValueConstRef4typeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.140, i32 noundef 862) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 33, ptr nonnull @.str.141)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.d
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 32, ptr nonnull @.str.167)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 21, ptr nonnull @.str.143)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 13, ptr nonnull @.str.144)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 80), align 16, !tbaa !346 ; 2 uses
  %i.h = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #35
  %i.i = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 %i.h, ptr nonnull %i.g)
          to label %bb.e unwind label %bb.h       ; 3 uses

bb.e:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 1, ptr nonnull @.str.145)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit: ; preds = %bb.e
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 13, ptr nonnull @.str.146)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit3 unwind label %bb.h

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit3: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit
  %i.j = invoke noundef i32 @_ZNK6google8protobuf16MapValueConstRef4typeEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit3
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @_ZN6google8protobuf15FieldDescriptor14kCppTypeToNameE, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !346  ; 2 uses
  %i.n = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #35
  %i.o = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2025051212log_internal10LogMessagelsESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 %i.n, ptr nonnull %i.m)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.h

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.g
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi2EEERS2_RAT__Kc.exit, %bb.e, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi22EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi33EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.d, %bb.f, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit3, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #37
  unreachable

bb.i:                                             ; preds = %_ZNK6google8protobuf16MapValueConstRef4typeEv.exit
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN6google8protobuf8internal12ExtensionSet19ForEachPrefetchImplIN4absl12lts_2025051218container_internal14btree_iteratorINS6_10btree_nodeINS6_10map_paramsIiNS2_9ExtensionESt4lessIiESaISt4pairIKiSA_EELi256ELb0EEEEERSF_PSF_EEZNS1_15ReflectionVisit11VisitFieldsINS0_7MessageEZNSM_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERSO_E3$_0EEvSR_OT_EUlST_E_EEvRST_OT0_NS1_9FieldMaskEEUliSW_E_NS2_8PrefetchEEEvST_ST_SX_T1_"(ptr %0, i32 %1, ptr readnone captures(address) %2, i32 %3, ptr noundef readonly byval(%class.anon.459) align 8 captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ne ptr %0, %2
  %i.b = icmp ne i32 %1, %3
  %.not3.i103 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i103, label %.lr.ph, label %.preheader93

.preheader93:                                     ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, %bb.a
  %.sroa.11.0.lcssa = phi i32 [ %1, %bb.a ], [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ] ; 2 uses
  %i.c = icmp ne ptr %.sroa.0.0.lcssa, %2
  %i.d = icmp ne i32 %.sroa.11.0.lcssa, %3
  %.not3.i5108 = select i1 %i.c, i1 true, i1 %i.d
  br i1 %.not3.i5108, label %.lr.ph113, label %.preheader

.lr.ph:                                           ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit
  %.0106 = phi i32 [ %i.ak, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0105 = phi ptr [ %.sroa.0.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %0, %bb.a ] ; 7 uses
  %.sroa.11.0104 = phi i32 [ %.sroa.11.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %i.e = and i32 %.sroa.11.0104, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0105, i64 %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %i.j = load i8, ptr %i.i, align 2
  %i.k = trunc i8 %i.j to i1
  %i.l = load ptr, ptr %i.h, align 8
  %spec.select.i = select i1 %i.k, ptr %i.l, ptr %i.h
  tail call void @llvm.prefetch.p0(ptr %spec.select.i, i32 0, i32 3, i32 1)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 11
  %i.n = load i8, ptr %i.m, align 1, !tbaa !31
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = add nsw i32 %.sroa.11.0104, 1            ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 10
  %i.q = load i8, ptr %i.p, align 1, !tbaa !31
  %i.r = zext i8 %i.q to i32
  %i.s = icmp eq i32 %i.o, %i.r
  br i1 %i.s, label %.lr.ph.i.i.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.01521.i.i.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.0.0105, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.01521.i.i.i, align 8, !tbaa !424 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.v = load i8, ptr %i.u, align 1, !tbaa !31
  %.not17.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not17.i.i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.01521.i.i.i, i64 8
  %i.x = load i8, ptr %i.w, align 8, !tbaa !31    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.z = load i8, ptr %i.y, align 1, !tbaa !31
  %i.aa = icmp eq i8 %i.x, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %.critedge.loopexit23.i.i.i, !llvm.loop !1081

.thread.i.i:                                      ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 240
  %i.ac = add i32 %.sroa.11.0104, 1
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ae
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.thread.i.i
  %.116.in.i.i.i = phi ptr [ %i.af, %.thread.i.i ], [ %i.ai, %bb.d ]
  %.116.i.i.i = load ptr, ptr %.116.in.i.i.i, align 8, !tbaa !424 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 11
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !31
  %.not.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %.116.i.i.i, i64 240
  br i1 %.not.i.i.i.i, label %bb.d, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit, !llvm.loop !1082

.critedge.loopexit23.i.i.i:                       ; preds = %bb.c
  %i.aj = zext i8 %i.x to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit: ; preds = %.lr.ph.i.i.i, %bb.d, %.critedge.loopexit23.i.i.i, %bb.b
  %.sroa.11.2 = phi i32 [ 0, %bb.d ], [ %i.o, %bb.b ], [ %i.aj, %.critedge.loopexit23.i.i.i ], [ %i.o, %.lr.ph.i.i.i ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %.116.i.i.i, %bb.d ], [ %.sroa.0.0105, %bb.b ], [ %i.t, %.critedge.loopexit23.i.i.i ], [ %.sroa.0.0105, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add nuw nsw i32 %.0106, 1
  %i.al = icmp ne ptr %.sroa.0.2, %2
  %i.am = icmp ne i32 %.sroa.11.2, %3
  %.not3.i = select i1 %i.al, i1 true, i1 %i.am
  %i.an = icmp samesign ult i32 %.0106, 15
  %i.ao = select i1 %.not3.i, i1 %i.an, i1 false
  br i1 %i.ao, label %.lr.ph, label %.preheader93, !llvm.loop !1083

.preheader:                                       ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, %.preheader93
  %.sroa.072.0.lcssa = phi ptr [ %0, %.preheader93 ], [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %.sroa.1179.0.lcssa = phi i32 [ %1, %.preheader93 ], [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ] ; 2 uses
  %i.ap = icmp ne ptr %.sroa.072.0.lcssa, %2
  %i.aq = icmp ne i32 %.sroa.1179.0.lcssa, %3
  %.not3.i42116 = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %.not3.i42116, label %.lr.ph119, label %._crit_edge

.lr.ph113:                                        ; preds = %.preheader93, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38
  %.sroa.0.1112 = phi ptr [ %.sroa.0.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.0.0.lcssa, %.preheader93 ] ; 7 uses
  %.sroa.11.1111 = phi i32 [ %.sroa.11.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %.sroa.11.0.lcssa, %.preheader93 ] ; 3 uses
  %.sroa.1179.0110 = phi i32 [ %.sroa.1179.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %1, %.preheader93 ] ; 3 uses
  %.sroa.072.0109 = phi ptr [ %.sroa.072.2, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38 ], [ %0, %.preheader93 ] ; 7 uses
  %i.ar = and i32 %.sroa.1179.0110, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 16
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %i.as ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1084
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit11VisitFieldsINS0_7MessageEZNS2_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS4_E3$_0EEvS7_OT_EUlS9_E_EEvRS9_OT0_NS1_9FieldMaskEENKUliSC_E_clINS1_12ExtensionSet9ExtensionEEEDaiSC_"(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.aw)
  %i.ax = and i32 %.sroa.11.1111, 255
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.1112, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 34
  %i.bc = load i8, ptr %i.bb, align 2
  %i.bd = trunc i8 %i.bc to i1
  %i.be = load ptr, ptr %i.ba, align 8
  %spec.select.i6 = select i1 %i.bd, ptr %i.be, ptr %i.ba
  tail call void @llvm.prefetch.p0(ptr %spec.select.i6, i32 0, i32 3, i32 1)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 11
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !31
  %.not.i.i7 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i7, label %.thread.i.i18, label %bb.e

bb.e:                                             ; preds = %.lr.ph113
  %i.bh = add nsw i32 %.sroa.1179.0110, 1         ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 10
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !31
  %i.bk = zext i8 %i.bj to i32
  %i.bl = icmp eq i32 %i.bh, %i.bk
  br i1 %i.bl, label %.lr.ph.i.i.i14, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

.lr.ph.i.i.i14:                                   ; preds = %bb.e, %bb.f
  %.01521.i.i.i15 = phi ptr [ %i.bm, %bb.f ], [ %.sroa.072.0109, %bb.e ] ; 2 uses
  %i.bm = load ptr, ptr %.01521.i.i.i15, align 8, !tbaa !424 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 11
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !31
  %.not17.i.i.i16 = icmp eq i8 %i.bo, 0
  br i1 %.not17.i.i.i16, label %bb.f, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

bb.f:                                             ; preds = %.lr.ph.i.i.i14
  %i.bp = getelementptr inbounds nuw i8, ptr %.01521.i.i.i15, i64 8
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !31  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !31
  %i.bt = icmp eq i8 %i.bq, %i.bs
  br i1 %i.bt, label %.lr.ph.i.i.i14, label %.critedge.loopexit23.i.i.i17, !llvm.loop !1081

.thread.i.i18:                                    ; preds = %.lr.ph113
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.072.0109, i64 240
  %i.bv = add i32 %.sroa.1179.0110, 1
  %i.bw = and i32 %i.bv, 255
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bx
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.thread.i.i18
  %.116.in.i.i.i19 = phi ptr [ %i.by, %.thread.i.i18 ], [ %i.cb, %bb.g ]
  %.116.i.i.i20 = load ptr, ptr %.116.in.i.i.i19, align 8, !tbaa !424 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 11
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !31
  %.not.i.i.i.i21 = icmp eq i8 %i.ca, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %.116.i.i.i20, i64 240
  br i1 %.not.i.i.i.i21, label %bb.g, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22, !llvm.loop !1082

.critedge.loopexit23.i.i.i17:                     ; preds = %bb.f
  %i.cc = zext i8 %i.bq to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22: ; preds = %.lr.ph.i.i.i14, %bb.g, %.critedge.loopexit23.i.i.i17, %bb.e
  %.sroa.072.2 = phi ptr [ %.116.i.i.i20, %bb.g ], [ %.sroa.072.0109, %bb.e ], [ %i.bm, %.critedge.loopexit23.i.i.i17 ], [ %.sroa.072.0109, %.lr.ph.i.i.i14 ] ; 2 uses
  %.sroa.1179.2 = phi i32 [ 0, %bb.g ], [ %i.bh, %bb.e ], [ %i.cc, %.critedge.loopexit23.i.i.i17 ], [ %i.bh, %.lr.ph.i.i.i14 ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 11
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !31
  %.not.i.i23 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i23, label %.thread.i.i34, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cf = add nsw i32 %.sroa.11.1111, 1           ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 10
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !31
  %i.ci = zext i8 %i.ch to i32
  %i.cj = icmp eq i32 %i.cf, %i.ci
  br i1 %i.cj, label %.lr.ph.i.i.i30, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

.lr.ph.i.i.i30:                                   ; preds = %bb.h, %bb.i
  %.01521.i.i.i31 = phi ptr [ %i.ck, %bb.i ], [ %.sroa.0.1112, %bb.h ] ; 2 uses
  %i.ck = load ptr, ptr %.01521.i.i.i31, align 8, !tbaa !424 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 11
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !31
  %.not17.i.i.i32 = icmp eq i8 %i.cm, 0
  br i1 %.not17.i.i.i32, label %bb.i, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

bb.i:                                             ; preds = %.lr.ph.i.i.i30
  %i.cn = getelementptr inbounds nuw i8, ptr %.01521.i.i.i31, i64 8
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !31  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 10
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !31
  %i.cr = icmp eq i8 %i.co, %i.cq
  br i1 %i.cr, label %.lr.ph.i.i.i30, label %.critedge.loopexit23.i.i.i33, !llvm.loop !1081

.thread.i.i34:                                    ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit22
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.1112, i64 240
  %i.ct = add i32 %.sroa.11.1111, 1
  %i.cu = and i32 %i.ct, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.cv
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.thread.i.i34
  %.116.in.i.i.i35 = phi ptr [ %i.cw, %.thread.i.i34 ], [ %i.cz, %bb.j ]
  %.116.i.i.i36 = load ptr, ptr %.116.in.i.i.i35, align 8, !tbaa !424 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 11
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !31
  %.not.i.i.i.i37 = icmp eq i8 %i.cy, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %.116.i.i.i36, i64 240
  br i1 %.not.i.i.i.i37, label %bb.j, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38, !llvm.loop !1082

.critedge.loopexit23.i.i.i33:                     ; preds = %bb.i
  %i.da = zext i8 %i.co to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit38: ; preds = %.lr.ph.i.i.i30, %bb.j, %.critedge.loopexit23.i.i.i33, %bb.h
  %.sroa.11.3 = phi i32 [ 0, %bb.j ], [ %i.cf, %bb.h ], [ %i.da, %.critedge.loopexit23.i.i.i33 ], [ %i.cf, %.lr.ph.i.i.i30 ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.116.i.i.i36, %bb.j ], [ %.sroa.0.1112, %bb.h ], [ %i.ck, %.critedge.loopexit23.i.i.i33 ], [ %.sroa.0.1112, %.lr.ph.i.i.i30 ] ; 2 uses
  %i.db = icmp ne ptr %.sroa.0.3, %2
  %i.dc = icmp ne i32 %.sroa.11.3, %3
  %.not3.i5 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %.not3.i5, label %.lr.ph113, label %.preheader, !llvm.loop !1086

.lr.ph119:                                        ; preds = %.preheader, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58
  %.sroa.1179.1118 = phi i32 [ %.sroa.1179.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.1179.0.lcssa, %.preheader ] ; 3 uses
  %.sroa.072.1117 = phi ptr [ %.sroa.072.3, %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58 ], [ %.sroa.072.0.lcssa, %.preheader ] ; 7 uses
  %i.dd = and i32 %.sroa.1179.1118, 255
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 16
  %i.dg = getelementptr inbounds nuw [32 x i8], ptr %i.df, i64 %i.de ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !1084
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit11VisitFieldsINS0_7MessageEZNS2_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS4_E3$_0EEvS7_OT_EUlS9_E_EEvRS9_OT0_NS1_9FieldMaskEENKUliSC_E_clINS1_12ExtensionSet9ExtensionEEEDaiSC_"(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 11
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !31
  %.not.i.i43 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i43, label %.thread.i.i54, label %bb.k

bb.k:                                             ; preds = %.lr.ph119
  %i.dl = add nsw i32 %.sroa.1179.1118, 1         ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 10
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !31
  %i.do = zext i8 %i.dn to i32
  %i.dp = icmp eq i32 %i.dl, %i.do
  br i1 %i.dp, label %.lr.ph.i.i.i50, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

.lr.ph.i.i.i50:                                   ; preds = %bb.k, %bb.l
  %.01521.i.i.i51 = phi ptr [ %i.dq, %bb.l ], [ %.sroa.072.1117, %bb.k ] ; 2 uses
  %i.dq = load ptr, ptr %.01521.i.i.i51, align 8, !tbaa !424 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 11
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !31
  %.not17.i.i.i52 = icmp eq i8 %i.ds, 0
  br i1 %.not17.i.i.i52, label %bb.l, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

bb.l:                                             ; preds = %.lr.ph.i.i.i50
  %i.dt = getelementptr inbounds nuw i8, ptr %.01521.i.i.i51, i64 8
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !31  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 10
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !31
  %i.dx = icmp eq i8 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph.i.i.i50, label %.critedge.loopexit23.i.i.i53, !llvm.loop !1081

.thread.i.i54:                                    ; preds = %.lr.ph119
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.072.1117, i64 240
  %i.dz = add i32 %.sroa.1179.1118, 1
  %i.ea = and i32 %i.dz, 255
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.eb
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.thread.i.i54
  %.116.in.i.i.i55 = phi ptr [ %i.ec, %.thread.i.i54 ], [ %i.ef, %bb.m ]
  %.116.i.i.i56 = load ptr, ptr %.116.in.i.i.i55, align 8, !tbaa !424 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 11
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !31
  %.not.i.i.i.i57 = icmp eq i8 %i.ee, 0
  %i.ef = getelementptr inbounds nuw i8, ptr %.116.i.i.i56, i64 240
  br i1 %.not.i.i.i.i57, label %bb.m, label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, !llvm.loop !1082

.critedge.loopexit23.i.i.i53:                     ; preds = %bb.l
  %i.eg = zext i8 %i.du to i32
  br label %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58

_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58: ; preds = %.lr.ph.i.i.i50, %bb.m, %.critedge.loopexit23.i.i.i53, %bb.k
  %.sroa.072.3 = phi ptr [ %.116.i.i.i56, %bb.m ], [ %.sroa.072.1117, %bb.k ], [ %i.dq, %.critedge.loopexit23.i.i.i53 ], [ %.sroa.072.1117, %.lr.ph.i.i.i50 ] ; 2 uses
  %.sroa.1179.3 = phi i32 [ 0, %bb.m ], [ %i.dl, %bb.k ], [ %i.eg, %.critedge.loopexit23.i.i.i53 ], [ %i.dl, %.lr.ph.i.i.i50 ] ; 2 uses
  %i.eh = icmp ne ptr %.sroa.072.3, %2
  %i.ei = icmp ne i32 %.sroa.1179.3, %3
  %.not3.i42 = select i1 %i.eh, i1 true, i1 %i.ei
  br i1 %.not3.i42, label %.lr.ph119, label %._crit_edge, !llvm.loop !1087

._crit_edge:                                      ; preds = %_ZN4absl12lts_2025051218container_internal14btree_iteratorINS1_10btree_nodeINS1_10map_paramsIiN6google8protobuf8internal12ExtensionSet9ExtensionESt4lessIiESaISt4pairIKiS9_EELi256ELb0EEEEERSE_PSE_EppEv.exit58, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit11VisitFieldsINS0_7MessageEZNS2_18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERS4_E3$_0EEvS7_OT_EUlS9_E_EEvRS9_OT0_NS1_9FieldMaskEENKUliSC_E_clINS1_12ExtensionSet9ExtensionEEEDaiSC_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1088, !nonnull !50, !align !1092
  %i.b = load i32, ptr %i.a, align 4, !tbaa !380  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !430   ; 2 uses
  %i.e = icmp eq i32 %i.b, -1
  br i1 %i.e, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit, !prof !7

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit: ; preds = %bb.a
  %i.f = zext i8 %i.d to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !97
  %i.i = shl nuw i32 1, %i.h
  %i.j = and i32 %i.i, %i.b
  %.not154 = icmp eq i32 %i.j, 0
  br i1 %.not154, label %bb.n, label %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread

_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread: ; preds = %bb.a, %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.l = load i8, ptr %i.k, align 1, !tbaa !431, !range !84, !noundef !50
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread
  %i.n = tail call noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.c, align 8, !tbaa !430
  switch i8 %i.p, label %bb.f [
    i8 1, label %bb.n
    i8 2, label %bb.n
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.n
    i8 6, label %bb.n
    i8 7, label %bb.n
    i8 8, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %bb.n
    i8 16, label %bb.n
    i8 17, label %bb.n
    i8 18, label %bb.n
    i8 11, label %bb.d
    i8 10, label %bb.e
    i8 12, label %bb.n
    i8 9, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1093, !nonnull !50, !align !388
  tail call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_35RepeatedMessageDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr nonnull %2)
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1093, !nonnull !50, !align !388
  tail call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_33RepeatedGroupDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr nonnull %2)
  br label %bb.n

bb.f:                                             ; preds = %bb.c
  unreachable

bb.g:                                             ; preds = %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit.thread
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.v = load i8, ptr %i.u, align 2
  %i.w = and i8 %i.v, 2
  %.not = icmp eq i8 %i.w, 0
  br i1 %.not, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  switch i8 %i.d, label %bb.m [
    i8 1, label %bb.n
    i8 2, label %bb.n
    i8 3, label %bb.n
    i8 4, label %bb.n
    i8 5, label %bb.n
    i8 6, label %bb.n
    i8 7, label %bb.n
    i8 8, label %bb.n
    i8 13, label %bb.n
    i8 14, label %bb.n
    i8 15, label %bb.n
    i8 16, label %bb.n
    i8 17, label %bb.n
    i8 18, label %bb.n
    i8 10, label %bb.i
    i8 11, label %bb.j
    i8 12, label %bb.n
    i8 9, label %bb.n
  ]

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1093, !nonnull !50, !align !388
  %.val = load ptr, ptr %i.y, align 8, !tbaa !432
  tail call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_25GroupDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr %.val, ptr nonnull %2)
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !442
  %.not79 = icmp eq ptr %i.aa, null
  br i1 %.not79, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1094, !nonnull !50, !align !388
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !415
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1095, !nonnull !50, !align !388
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !414
  %i.ah = tail call noundef ptr @_ZNK6google8protobuf14DescriptorPool21FindExtensionByNumberEPKNS0_10DescriptorEi(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef %i.ag, i32 noundef %1) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1093, !nonnull !50, !align !388
  %.val81 = load ptr, ptr %i.aj, align 8, !tbaa !432
  tail call fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_27MessageDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr %.val81, ptr nonnull %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.h
  unreachable

bb.n:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.i, %bb.l, %bb.g, %bb.d, %bb.e, %bb.b, %_ZN6google8protobuf8internal11ShouldVisitENS1_9FieldMaskENS1_19FieldDescriptorLite7CppTypeE.exit
  ret void
}

declare noundef i32 @_ZNK6google8protobuf8internal12ExtensionSet9Extension7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN6google8protobuf8internal15ReflectionVisit18VisitMessageFieldsIZNKS0_10Reflection21MaybePoisonAfterClearERNS0_7MessageEE3$_0EEvS6_OT_ENKUlS8_E_clINS1_35RepeatedMessageDynamicExtensionInfoIRNS1_12ExtensionSet9ExtensionEEEEEDaS8_"(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr readonly captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !31     ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !235
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = add i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = select i1 %i.f, ptr %i.b, ptr %i.i       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !258  ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nsw i64 %i.m, 3
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %.idx
  %.not8 = icmp eq i32 %i.l, 0
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit", %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit"
  %.sroa.04.09 = phi ptr [ %i.aj, %"_ZZNK6google8protobuf10Reflection21MaybePoisonAfterClearERNS0_7MessageEENK3$_0clES3_.exit" ], [ %i.j, %bb.a ] ; 2 uses
end_hunk_5
