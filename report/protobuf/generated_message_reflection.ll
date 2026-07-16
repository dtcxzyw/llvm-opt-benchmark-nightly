inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6google8protobuf8internal15SwapFieldHelper15SwapStringFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE:bb.a
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
  %rt.bound0 = icmp ugt i64 %i.gr, %.0.i130160
  %rt.bound1 = icmp ugt i64 %i.gs, %.0.i105159
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
  %i.hi = load <8 x i8>, ptr %.0.i130, align 1, !tbaa !31
  %i.hj = load <8 x i8>, ptr %.0.i105, align 1, !tbaa !31
  store <8 x i8> %i.hi, ptr %.0.i105, align 1, !tbaa !31
  store <8 x i8> %i.hj, ptr %.0.i130, align 1, !tbaa !31
  br label %_ZN6google8protobuf8internal11MicroString12InternalSwapEPS2_m.exit

.lr.ph.i.i.preheader.rtscalar:                    ; preds = %.lr.ph.i.i.preheader
  %i.hk = load i8, ptr %.0.i105, align 1, !tbaa !31
  %i.hl = load i8, ptr %.0.i130, align 1, !tbaa !31
  store i8 %i.hl, ptr %.0.i105, align 1, !tbaa !31
  store i8 %i.hk, ptr %.0.i130, align 1, !tbaa !31
  %i.hm = getelementptr inbounds nuw i8, ptr %.0.i130, i64 1 ; 2 uses
  %.079.i.i.ptr.1.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 1 ; 2 uses
  %i.hn = load i8, ptr %.079.i.i.ptr.1.scalar, align 1, !tbaa !31
  %i.ho = load i8, ptr %i.hm, align 1, !tbaa !31
  store i8 %i.ho, ptr %.079.i.i.ptr.1.scalar, align 1, !tbaa !31
  store i8 %i.hn, ptr %i.hm, align 1, !tbaa !31
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i130, i64 2 ; 2 uses
  %.079.i.i.ptr.2.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 2 ; 2 uses
  %i.hq = load i8, ptr %.079.i.i.ptr.2.scalar, align 1, !tbaa !31
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !31
  store i8 %i.hr, ptr %.079.i.i.ptr.2.scalar, align 1, !tbaa !31
  store i8 %i.hq, ptr %i.hp, align 1, !tbaa !31
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i130, i64 3 ; 2 uses
  %.079.i.i.ptr.3.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 3 ; 2 uses
  %i.ht = load i8, ptr %.079.i.i.ptr.3.scalar, align 1, !tbaa !31
  %i.hu = load i8, ptr %i.hs, align 1, !tbaa !31
  store i8 %i.hu, ptr %.079.i.i.ptr.3.scalar, align 1, !tbaa !31
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !31
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i130, i64 4 ; 2 uses
  %.079.i.i.ptr.4.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 4 ; 2 uses
  %i.hw = load i8, ptr %.079.i.i.ptr.4.scalar, align 1, !tbaa !31
  %i.hx = load i8, ptr %i.hv, align 1, !tbaa !31
  store i8 %i.hx, ptr %.079.i.i.ptr.4.scalar, align 1, !tbaa !31
  store i8 %i.hw, ptr %i.hv, align 1, !tbaa !31
  %i.hy = getelementptr inbounds nuw i8, ptr %.0.i130, i64 5 ; 2 uses
  %.079.i.i.ptr.5.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 5 ; 2 uses
  %i.hz = load i8, ptr %.079.i.i.ptr.5.scalar, align 1, !tbaa !31
  %i.ia = load i8, ptr %i.hy, align 1, !tbaa !31
  store i8 %i.ia, ptr %.079.i.i.ptr.5.scalar, align 1, !tbaa !31
  store i8 %i.hz, ptr %i.hy, align 1, !tbaa !31
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i130, i64 6 ; 2 uses
  %.079.i.i.ptr.6.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 6 ; 2 uses
  %i.ic = load i8, ptr %.079.i.i.ptr.6.scalar, align 1, !tbaa !31
  %i.id = load i8, ptr %i.ib, align 1, !tbaa !31
  store i8 %i.id, ptr %.079.i.i.ptr.6.scalar, align 1, !tbaa !31
  store i8 %i.ic, ptr %i.ib, align 1, !tbaa !31
  %i.ie = getelementptr inbounds nuw i8, ptr %.0.i130, i64 7 ; 2 uses
  %.079.i.i.ptr.7.scalar = getelementptr inbounds nuw i8, ptr %.0.i105, i64 7 ; 2 uses
  %i.if = load i8, ptr %.079.i.i.ptr.7.scalar, align 1, !tbaa !31
  %i.ig = load i8, ptr %i.ie, align 1, !tbaa !31
  store i8 %i.ig, ptr %.079.i.i.ptr.7.scalar, align 1, !tbaa !31
  store i8 %i.if, ptr %i.ie, align 1, !tbaa !31
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
end_hunk_0
