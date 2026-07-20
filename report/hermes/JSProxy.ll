inline.NumInlined: 1411
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes2vm7JSProxy14getOwnPropertyENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_26ComputedPropertyDescriptorEPNS0_13MutableHandleIS7_EE:bb.a
  store i32 1, ptr %i.dr, align 8, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 70, ptr %i.ds, align 8, !tbaa !12
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.dt, align 8, !tbaa !13
  store ptr @.str.13, ptr %12, align 8, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.du, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.dv, align 8, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %13, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.dx, align 8, !tbaa !15
  %i.dy = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %i.dz = and i32 %i.dy, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %.sroa.02.0.copyload = load ptr, ptr %11, align 8
  %.sroa.01.0.copyload = load ptr, ptr %8, align 8
  %.val = load i16, ptr %10, align 4
  %.val62 = load i16, ptr %7, align 4
  %i.ea = call fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %1, i16 %.val, ptr %.sroa.02.0.copyload, i16 %.val62, ptr %.sroa.01.0.copyload)
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.aj, label %bb.af, !prof !65

bb.af:                                            ; preds = %bb.ae
  %i.ec = load i16, ptr %10, align 4              ; 3 uses
  %i.ed = and i16 %i.ec, 4
  %.not56 = icmp eq i16 %i.ed, 0
  br i1 %.not56, label %bb.ag, label %bb.ah

.thread:                                          ; preds = %bb.ad
  %i.ee = load i16, ptr %10, align 4              ; 2 uses
  %i.ef = and i16 %i.ee, 4
  %.not56133 = icmp eq i16 %i.ef, 0
  br i1 %.not56133, label %.thread134, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.eg = load i16, ptr %7, align 4
  %i.eh = and i16 %i.eg, 8
  %.not57 = icmp eq i16 %i.eh, 0
  br i1 %.not57, label %bb.ah, label %.thread134

.thread134:                                       ; preds = %.thread, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ei = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.ei, align 8, !tbaa !9
  %i.ej = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 77, ptr %i.ej, align 8, !tbaa !12
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.ek, align 8, !tbaa !13
  store ptr @.str.15, ptr %14, align 8, !tbaa !14
  %i.el = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 3, ptr %i.el, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.em, align 8, !tbaa !9
  %i.en = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 32, ptr %i.en, align 8, !tbaa !12
  %i.eo = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.eo, align 8, !tbaa !13
  store ptr @.str.16, ptr %15, align 8, !tbaa !14
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.ep, align 8, !tbaa !15
  %i.eq = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %14, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  %i.er = and i32 %i.eq, 255
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.aj

bb.ah:                                            ; preds = %.thread, %bb.ag, %bb.af
  %i.es = phi i16 [ %i.ee, %.thread ], [ %i.ec, %bb.ag ], [ %i.ec, %bb.af ] ; 2 uses
  %i.et = load i16, ptr %3, align 4
  %i.eu = shl i16 %i.es, 1
  %i.ev = and i16 %i.et, -15
  %i.ew = and i16 %i.eu, 14
  %i.ex = or disjoint i16 %i.ev, %i.ew            ; 2 uses
  %i.ey = and i16 %i.es, 192
  %or.cond = icmp eq i16 %i.ey, 0
  %i.ez = or i16 %i.ex, 16
  %spec.select = select i1 %or.cond, i16 %i.ex, i16 %i.ez
  store i16 %spec.select, ptr %3, align 4
  %.not60 = icmp eq ptr %4, null
  br i1 %.not60, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fa = load ptr, ptr %11, align 8, !tbaa !305
  %i.fb = load ptr, ptr %4, align 8, !tbaa !305
  %.sroa.0.0.copyload.i.i85 = load i64, ptr %i.fa, align 8, !tbaa !7
  store i64 %.sroa.0.0.copyload.i.i85, ptr %i.fb, align 8, !tbaa !300
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit, %.thread134, %_ZN6hermes2vm11TwineChar16C2EPKc.exit78
  %.sroa.0116.1 = phi i32 [ %i.dz, %_ZN6hermes2vm11TwineChar16C2EPKc.exit78 ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EENS0_11HermesValueE.exit ], [ 0, %bb.ae ], [ %i.er, %.thread134 ], [ 257, %bb.ai ], [ 257, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.w, %bb.t, %bb.r, %bb.s, %bb.p, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit, %bb.v, %_ZN6hermes2vm11TwineChar16C2EPKc.exit
  %.sroa.0116.3 = phi i32 [ %i.cs, %bb.v ], [ %i.ci, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.p ], [ 0, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit ], [ 1, %bb.s ], [ %i.cp, %bb.t ], [ 0, %bb.r ], [ %.sroa.0116.1, %bb.aj ], [ 0, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.al

bb.al:                                            ; preds = %bb.g, %bb.h, %bb.ak, %bb.i
  %.sroa.0116.5 = phi i32 [ 0, %bb.i ], [ %.sroa.0116.3, %bb.ak ], [ %i.ba, %bb.h ], [ %i.az, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.fc = and i32 %.sroa.0116.5, 65535
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67, %bb.b
  %.sroa.0116.7 = phi i32 [ %i.s, %bb.b ], [ %i.fc, %bb.al ], [ 0, %_ZN6hermes2vm7Runtime10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EERKNS0_9GCPointerIS5_EE.exit67 ]
  %i.fd = load i64, ptr %i.l, align 8, !tbaa !67
  %i.fe = add i64 %i.fd, -1
  store i64 %i.fe, ptr %i.l, align 8, !tbaa !67
  call void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret i32 %.sroa.0116.7
}

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorERNS8_IS6_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare noundef i32 @_ZN6hermes2vm20toPropertyDescriptorENS0_6HandleINS0_11HermesValueEEERNS0_7RuntimeERNS0_19DefinePropertyFlagsERNS0_13MutableHandleIS2_EE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_126completePropertyDescriptorERNS0_19DefinePropertyFlagsE(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #6 {
bb.a:
  %i.a = load i16, ptr %0, align 4                ; 6 uses
  %i.b = and i16 %i.a, 272
  %or.cond = icmp eq i16 %i.b, 0
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i16 %i.a, 192
  %or.cond16 = icmp eq i16 %i.c, 0
  br i1 %or.cond16, label %.thread, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = and i16 %i.a, 16
  %.not10 = icmp eq i16 %i.d, 0
  br i1 %.not10, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = and i16 %i.a, -19                        ; 2 uses
  store i16 %i.e, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread, %bb.b
  %i.f = phi i16 [ %i.a, %bb.c ], [ %i.e, %.thread ], [ %i.a, %bb.b ] ; 3 uses
  %i.g = and i16 %i.f, 8
  %.not14 = icmp eq i16 %i.g, 0                   ; 2 uses
  %i.h = and i16 %i.f, -10
  %i.i = select i1 %.not14, i16 %i.h, i16 %i.f    ; 3 uses
  %i.j = and i16 %i.i, 32
  %.not15 = icmp eq i16 %i.j, 0                   ; 2 uses
  %i.k = or i1 %.not14, %.not15
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = and i16 %i.i, -37
  %simplifycfg.merge = select i1 %.not15, i16 %i.l, i16 %i.i
  store i16 %simplifycfg.merge, ptr %0, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void
}

declare noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_130isCompatiblePropertyDescriptorERNS0_7RuntimeERKNS0_19DefinePropertyFlagsENS0_6HandleINS0_11HermesValueEEERKNS0_26ComputedPropertyDescriptorES9_(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 %.0.val, ptr nofree readonly captures(none) %1, i16 %.0.val1, ptr nofree readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 17 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 15 uses
  %6 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 10 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %11 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 9 uses
  %12 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %13 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %14 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %15 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = and i16 %.0.val1, 8
  %.not.a = icmp ne i16 %i.a, 0                   ; 2 uses
  br i1 %.not.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = and i16 %.0.val, 36
  %or.cond70.not.a = icmp eq i16 %i.b, 36
  br i1 %or.cond70.not.a, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %bb.c

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.c, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 67, ptr %i.d, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store ptr @.str.26, ptr %3, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.f, align 8, !tbaa !15
  %i.g = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %.thread17

bb.c:                                             ; preds = %bb.b
  %16 = and i16 %.0.val, 8
  %.not.not56 = icmp eq i16 %16, 0
  %17 = lshr i16 %.0.val1, 1
  %.not57 = icmp eq i16 %.0.val, %17
  %or.cond22 = or i1 %.not.not56, %.not57
  br i1 %or.cond22, label %bb.g, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit75

_ZN6hermes2vm11TwineChar16C2EPKc.exit75:          ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %.not58 = trunc i16 %.0.val to i1
  store ptr @.str.27, ptr %7, align 8, !tbaa !14
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %.sroa.572.0..sroa_idx, align 8, !tbaa !306
  br i1 %.not58, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86, label %.thread

.thread:                                          ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit75
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr @.str.28, ptr %i.h, align 8, !tbaa !14, !alias.scope !307
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86:   ; preds = %_ZN6hermes2vm11TwineChar16C2EPKc.exit75, %.thread
  %spec.select17.i.i82 = phi ptr [ %7, %.thread ], [ @.str.27, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %spec.select.i.i81 = phi i32 [ 2, %.thread ], [ 3, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %.sink84 = phi i32 [ 3, %.thread ], [ 1, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %.sink = phi i64 [ 4, %.thread ], [ 0, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ]
  %i.i = phi i64 [ 19, %.thread ], [ 15, %_ZN6hermes2vm11TwineChar16C2EPKc.exit75 ] ; 2 uses
  %.sroa.674.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %.sink84, ptr %.sroa.674.0..sroa_idx, align 8, !tbaa !306
  %.sroa.776.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 15, ptr %.sroa.776.0..sroa_idx, align 8, !tbaa !7
  %.sroa.877.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sink, ptr %.sroa.877.0..sroa_idx, align 8, !tbaa !7
  store ptr %spec.select17.i.i82, ptr %6, align 8, !tbaa !14, !alias.scope !312
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %spec.select.i.i81, ptr %i.j, align 8, !tbaa !15, !alias.scope !312
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr @.str.29, ptr %i.k, align 8, !tbaa !14, !alias.scope !312
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.l, align 8, !tbaa !9, !alias.scope !312
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.i, ptr %i.m, align 8, !tbaa !12, !alias.scope !312
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 34, ptr %i.n, align 8, !tbaa !13, !alias.scope !312
  %i.o = and i16 %.0.val1, 2
  %.not59.not.not = icmp eq i16 %i.o, 0
  br i1 %.not59.not.not, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread: ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86
  %i.p = add nuw nsw i64 %i.i, 34
  store ptr %6, ptr %5, align 8, !tbaa !14, !alias.scope !317
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 2, ptr %i.q, align 8, !tbaa !15, !alias.scope !317
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.28, ptr %i.r, align 8, !tbaa !14, !alias.scope !317
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 3, ptr %i.s, align 8, !tbaa !9, !alias.scope !317
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.p, ptr %i.t, align 8, !tbaa !12, !alias.scope !317
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 4, ptr %i.u, align 8, !tbaa !13, !alias.scope !317
  br label %bb.f

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95:   ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i64 48, i1 false), !tbaa.struct !322
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !15, !noalias !323 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  switch i32 %.pre, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.v, align 8, !tbaa !15, !alias.scope !330
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.w, align 8, !tbaa !9, !alias.scope !330
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !alias.scope !330
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104

bb.e:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  store ptr @.str.30, ptr %4, align 8, !tbaa !14
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %.sroa.551.0..sroa_idx, align 8, !tbaa !306
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %.sroa.653.0..sroa_idx, align 8, !tbaa !306
  %.sroa.755.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 10, ptr %.sroa.755.0..sroa_idx, align 8, !tbaa !7
  %.sroa.856.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %.sroa.856.0..sroa_idx, align 8, !tbaa !7
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104

bb.f:                                             ; preds = %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95
  %i.y = phi i32 [ 2, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95.thread ], [ %.pre, %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit95 ]
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !12, !noalias !323
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13, !noalias !323
  %i.ad = add i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !noalias !323
  %i.ag = icmp eq i32 %i.af, 1                    ; 2 uses
  %.sroa.06.0.copyload.i.i98 = load ptr, ptr %5, align 8, !noalias !323
  %spec.select.i.i99 = select i1 %i.ag, i32 %i.y, i32 2
  %spec.select17.i.i100 = select i1 %i.ag, ptr %.sroa.06.0.copyload.i.i98, ptr %5
  store ptr %spec.select17.i.i100, ptr %4, align 8, !tbaa !14, !alias.scope !323
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %spec.select.i.i99, ptr %i.ah, align 8, !tbaa !15, !alias.scope !323
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.30, ptr %i.ai, align 8, !tbaa !14, !alias.scope !323
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 3, ptr %i.aj, align 8, !tbaa !9, !alias.scope !323
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.ad, ptr %i.ak, align 8, !tbaa !12, !alias.scope !323
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 10, ptr %i.al, align 8, !tbaa !13, !alias.scope !323
  br label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit104:  ; preds = %bb.d, %bb.e, %bb.f
  %i.am = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %.thread17

bb.g:                                             ; preds = %bb.c, %bb.a
  %i.an = and i16 %.0.val, 192
  %i.ao = icmp eq i16 %i.an, 0
  %i.ap = and i16 %.0.val, 256
  %.not61.not = icmp eq i16 %i.ap, 0
  %i.aq = and i16 %.0.val, 272
  %i.ar = icmp ne i16 %i.aq, 0                    ; 4 uses
  %i.as = and i16 %.0.val, 464
  %or.cond.not = icmp eq i16 %i.as, 0
  br i1 %or.cond.not, label %.thread17, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = and i16 %.0.val1, 16
  %i.au = icmp ne i16 %i.at, 0                    ; 4 uses
  %.not62 = xor i1 %i.ar, %i.au
  %or.cond71.not = or i1 %.not.a, %.not62
  br i1 %or.cond71.not, label %bb.i, label %_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit142

_ZN6hermes2vmplERKNS0_11TwineChar16ES3_.exit142:  ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.av = select i1 %i.au, i64 9, i64 5           ; 3 uses
  %i.aw = select i1 %i.au, ptr @.str.32, ptr @.str.31
  store ptr @.str.27, ptr %11, align 8, !tbaa !14, !alias.scope !333
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 3, ptr %i.ax, align 8, !tbaa !15, !alias.scope !333
  %i.ay = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !14, !alias.scope !333
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 3, ptr %i.az, align 8, !tbaa !9, !alias.scope !333
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 15, ptr %i.ba, align 8, !tbaa !12, !alias.scope !333
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %i.av, ptr %i.bb, align 8, !tbaa !13, !alias.scope !333
  %i.bc = add nuw nsw i64 %i.av, 15
  store ptr %11, ptr %10, align 8, !tbaa !14, !alias.scope !338
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 2, ptr %i.bd, align 8, !tbaa !15, !alias.scope !338
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr @.str.33, ptr %i.be, align 8, !tbaa !14, !alias.scope !338
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 3, ptr %i.bf, align 8, !tbaa !9, !alias.scope !338
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !12, !alias.scope !338
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 23, ptr %i.bh, align 8, !tbaa !13, !alias.scope !338
  %i.bi = select i1 %i.ar, i64 5, i64 9           ; 2 uses
  %i.bj = select i1 %i.ar, ptr @.str.31, ptr @.str.32
  %i.bk = add nuw nsw i64 %i.av, 38               ; 2 uses
  store ptr %10, ptr %9, align 8, !tbaa !14, !alias.scope !343
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 2, ptr %i.bl, align 8, !tbaa !15, !alias.scope !343
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.bj, ptr %i.bm, align 8, !tbaa !14, !alias.scope !343
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i32 3, ptr %i.bn, align 8, !tbaa !9, !alias.scope !343
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.bk, ptr %i.bo, align 8, !tbaa !12, !alias.scope !343
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %i.bi, ptr %i.bp, align 8, !tbaa !13, !alias.scope !343
  %i.bq = add nuw nsw i64 %i.bi, %i.bk
  store ptr %9, ptr %8, align 8, !tbaa !14, !alias.scope !348
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 2, ptr %i.br, align 8, !tbaa !15, !alias.scope !348
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr @.str.34, ptr %i.bs, align 8, !tbaa !14, !alias.scope !348
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 3, ptr %i.bt, align 8, !tbaa !9, !alias.scope !348
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.bq, ptr %i.bu, align 8, !tbaa !12, !alias.scope !348
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 20, ptr %i.bv, align 8, !tbaa !13, !alias.scope !348
  %i.bw = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.thread17

bb.i:                                             ; preds = %bb.h
  %i.bx = xor i1 %i.au, true
  %or.cond3 = and i1 %i.ar, %i.bx
  br i1 %or.cond3, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.by = and i16 %.0.val1, 12
  %or.cond72 = icmp eq i16 %i.by, 0
  br i1 %or.cond72, label %bb.k, label %.thread17

bb.k:                                             ; preds = %bb.j
  %i.bz = and i16 %.0.val, 18
  %or.cond73.not = icmp eq i16 %i.bz, 18
  br i1 %or.cond73.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit144, label %bb.l

_ZN6hermes2vm11TwineChar16C2EPKc.exit144:         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  %i.ca = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i32 1, ptr %i.ca, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 80, ptr %i.cb, align 8, !tbaa !12
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 0, ptr %i.cc, align 8, !tbaa !13
  store ptr @.str.35, ptr %12, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 3, ptr %i.cd, align 8, !tbaa !15
  %i.ce = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %.thread17

bb.l:                                             ; preds = %bb.k
  br i1 %.not61.not, label %.thread17, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !7
  %.sroa.0.0.copyload.i145 = load i64, ptr %2, align 8, !tbaa !7
  %i.cf = tail call noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i145) #13
  br i1 %i.cf, label %.thread17, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit147

_ZN6hermes2vm11TwineChar16C2EPKc.exit147:         ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 1, ptr %i.cg, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 109, ptr %i.ch, align 8, !tbaa !12
  %i.ci = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 0, ptr %i.ci, align 8, !tbaa !13
  store ptr @.str.36, ptr %13, align 8, !tbaa !14
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 3, ptr %i.cj, align 8, !tbaa !15
  %i.ck = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %.thread17

bb.n:                                             ; preds = %bb.i
  %i.cl = and i16 %.0.val1, 24
  %i.cm = icmp ne i16 %i.cl, 16
  %brmerge.demorgan.not = or i1 %i.ao, %i.cm
  br i1 %brmerge.demorgan.not, label %.thread17, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !7
  %i.cn = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  %.sroa.0.0.copyload.i.i148.a = load i64, ptr %2, align 8, !tbaa !7
  %i.cp = and i64 %.sroa.0.0.copyload.i.i148.a, 281474976710655
  %i.cq = inttoptr i64 %i.cp to ptr               ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !353 ; 2 uses
  %.not24 = icmp eq i32 %i.cs, 0
  br i1 %.not24, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.0.0.copyload.i.i149 = load i32, ptr %i.ct, align 4, !tbaa !3
  %.not25 = icmp eq i32 %i.cs, %.sroa.0.0.copyload.i.i149
  br i1 %.not25, label %bb.q, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit151

_ZN6hermes2vm11TwineChar16C2EPKc.exit151:         ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 1, ptr %i.cu, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 93, ptr %i.cv, align 8, !tbaa !12
  %i.cw = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 0, ptr %i.cw, align 8, !tbaa !13
  store ptr @.str.37, ptr %14, align 8, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 3, ptr %i.cx, align 8, !tbaa !15
  %i.cy = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %.thread17

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !353 ; 2 uses
  %.not26 = icmp eq i32 %i.da, 0
  br i1 %.not26, label %.thread17, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  %.sroa.0.0.copyload.i.i152 = load i32, ptr %i.db, align 4, !tbaa !3
  %.not27 = icmp eq i32 %i.da, %.sroa.0.0.copyload.i.i152
  br i1 %.not27, label %.thread17, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit154

_ZN6hermes2vm11TwineChar16C2EPKc.exit154:         ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i32 1, ptr %i.dc, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i64 93, ptr %i.dd, align 8, !tbaa !12
  %i.de = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 0, ptr %i.de, align 8, !tbaa !13
  store ptr @.str.38, ptr %15, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i32 3, ptr %i.df, align 8, !tbaa !15
  %i.dg = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %.thread17

end_hunk_0
