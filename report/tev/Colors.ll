Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Colors?download=true
inline.NumInlined: 6649
inline.NumDeleted: 2185
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 87
begin_hunk_0_@_ZNSt13runtime_errorD1Ev
; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local range(i40 0, 8589934592) i40 @_ZNK3tev12ColorProfile4cicpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !83
  %i.b = tail call ptr @cmsReadTag(ptr noundef %i.a, i32 noundef 1667851120) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !478
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.g = load i16, ptr %i.f, align 1
  %i.h = zext i16 %i.g to i32
  %.sroa.4.0.insert.ext = zext i8 %i.e to i32
  %i.i = shl nuw i32 %i.h, 16
  %i.j = shl nuw nsw i32 %.sroa.4.0.insert.ext, 8
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = zext i8 %i.c to i32
  %i.m = or disjoint i32 %i.k, %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  %.sroa.06.sroa.0.0.insert.insert = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0.insert.ext = zext nneg i8 %.sroa.3.0 to i40
  %.sroa.3.0.insert.shift = shl nuw nsw i40 %.sroa.3.0.insert.ext, 32
  %.sroa.06.0.insert.ext = zext i32 %.sroa.06.sroa.0.0.insert.insert to i40
  %.sroa.06.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.06.0.insert.ext
  ret i40 %.sroa.06.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN3tev8ituth273L21isTransferImplementedENS0_9ETransferE(i8 noundef zeroext %0) unnamed_addr #10 {
bb.a:
  switch i8 %0, label %bb.b [
    i8 1, label %bb.c
    i8 6, label %bb.c
    i8 14, label %bb.c
    i8 15, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 4, label %bb.c
    i8 5, label %bb.c
    i8 7, label %bb.c
    i8 8, label %bb.c
    i8 9, label %bb.c
    i8 10, label %bb.c
    i8 13, label %bb.c
    i8 16, label %bb.c
    i8 17, label %bb.c
    i8 124, label %bb.c
    i8 125, label %bb.c
    i8 18, label %bb.c
    i8 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN3tev8ituth2738toStringENS0_9ETransferE(i8 noundef zeroext %0) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp sgt i8 %0, 0
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i8 %0, -1                ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3tev8ituth2738toStringENS0_9ETransferE, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3tev8ituth2738toStringENS0_9ETransferE.9, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.23.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 7, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.69, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.23.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 4) i32 @_ZNK3tev12ColorProfile15renderingIntentEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !83     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %i.c = tail call i32 @cmsGetHeaderRenderingIntent(ptr noundef %i.b) ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.c, i32 1) ; 3 uses
  store i32 %spec.store.select, ptr %i.a, align 4
  %i.d = tail call i32 @cmsIsIntentSupported(ptr noundef %i.b, i32 noundef %spec.store.select, i32 noundef 0)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ult i32 %i.c, 4
  br i1 %i.e, label %switch.lookup, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  call void @_ZN4tlog6Logger3logIJRjEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i32 noundef 8, ptr nonnull @.str.92, i64 79, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.h = call i32 @cmsIsIntentSupported(ptr noundef %i.b, i32 noundef 1, i32 noundef 0)
  %.not5 = icmp eq i32 %i.h, 0
  br i1 %.not5, label %bb.e, label %switch.lookup

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @cmsIsIntentSupported(ptr noundef %i.b, i32 noundef 0, i32 noundef 0)
  %.not6 = icmp eq i32 %i.i, 0
  %. = zext i1 %.not6 to i32
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %bb.e, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ %., %bb.e ], [ %spec.store.select, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local { ptr, i64 } @_ZN3tev8ituth2738toStringENS0_15EColorPrimariesE(i8 noundef zeroext %0) local_unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %switch.tableidx = add i8 %0, -1                ; 3 uses
  %i.a = icmp ult i8 %switch.tableidx, 22
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN3tev18toLinearSrgbPremulItEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEib, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN3tev18toLinearSrgbPremulItEENS_4TaskIvEERKNS_12ColorProfileENS_10EAlphaKindERKNS_16MultiChannelViewIKT_EERKNS7_IfEENSt3__18optionalINS_16ERenderingIntentEEEib.19, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.sroa.14.0 = phi i64 [ %switch.ext, %switch.lookup ], [ 7, %bb.a ]
  %.sroa.0.0 = phi ptr [ %switch.load2, %switch.lookup ], [ @.str.69, %bb.a ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZN3tev28limitedRangeForBitsPerSampleEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !122
  %i.b = add i32 %0, -17
  %or.cond = icmp ult i32 %i.b, -9
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96
  call void @_ZN4tlog6Logger3logIJRiEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i32 noundef 8, ptr nonnull @.str.97, i64 55, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = add nsw i32 %0, -8                       ; 2 uses
  %i.f = shl nuw nsw i32 16, %i.e
  %i.g = select i1 %1, i32 224, i32 219
  %i.h = shl nuw nsw i32 %i.g, %i.e
  %notmask = shl nsw i32 -1, %0
  %i.i = xor i32 %notmask, -1
  %i.j = uitofp nneg i32 %i.i to float
  %i.k = uitofp nneg i32 %i.h to float
  %i.l = uitofp nneg i32 %i.f to float
  %i.m = fneg float %i.l
  %i.n = insertelement <2 x float> poison, float %i.j, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.m, i64 1
  %i.p = insertelement <2 x float> poison, float %i.k, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fdiv <2 x float> %i.o, %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.09.0 = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.b ], [ %i.r, %bb.c ]
  ret <2 x float> %.sroa.09.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3tev23convertColorspaceMatrixERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEES7_NS_16ERenderingIntentENS0_8optionalIS4_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.nanogui::Matrix") align 4 captures(none) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %2, i32 noundef %3, i64 %4, i8 %5) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.lr.ph.i.i.i.i:
  %6 = alloca %"struct.nanogui::Matrix", align 16 ; 6 uses
  %7 = alloca %"struct.nanogui::Matrix", align 4  ; 4 uses
  %8 = alloca %"struct.nanogui::Matrix", align 16 ; 10 uses
  %9 = alloca %"struct.nanogui::Matrix", align 16 ; 9 uses
  %10 = alloca %"struct.nanogui::Matrix", align 16 ; 10 uses
  %11 = bitcast i64 %4 to <2 x float>
  %i.a = bitcast i64 %4 to <2 x float>
  %i.b = load float, ptr %1, align 4, !tbaa !59
  %i.c = load float, ptr %2, align 4, !tbaa !59
  %i.d = fcmp oeq float %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.h = load float, ptr %i.g, align 4
  %i.i = fcmp oeq float %i.f, %i.h
  %.lcssa.i.i.i.i.i.i = select i1 %i.d, i1 %i.i, i1 false
  br i1 %.lcssa.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.1, label %.critedge

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0911.i.i.i.ptr.i.1 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %.0911.i.i.i.ptr.i.1, align 4, !tbaa !59
  %i.l = load float, ptr %i.j, align 4, !tbaa !59
  %i.m = fcmp oeq float %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load float, ptr %i.n, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp oeq float %i.o, %i.q
  %.lcssa.i.i.i.i.i.i.1 = select i1 %i.m, i1 %i.r, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.2, label %.critedge

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph.i.i.i.i.1
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0911.i.i.i.ptr.i.2 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load float, ptr %.0911.i.i.i.ptr.i.2, align 4, !tbaa !59
  %i.u = load float, ptr %i.s, align 4, !tbaa !59
  %i.v = fcmp oeq float %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.z = load float, ptr %i.y, align 4
  %i.aa = fcmp oeq float %i.x, %i.z
  %.lcssa.i.i.i.i.i.i.2 = select i1 %i.v, i1 %i.aa, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.3, label %.critedge

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph.i.i.i.i.2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.0911.i.i.i.ptr.i.3 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %.0911.i.i.i.ptr.i.3, align 4, !tbaa !59
  %i.ad = load float, ptr %i.ab, align 4, !tbaa !59
  %i.ae = fcmp oeq float %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fcmp oeq float %i.ag, %i.ai
  %.lcssa.i.i.i.i.i.i.3 = select i1 %i.ae, i1 %i.aj, i1 false
  br i1 %.lcssa.i.i.i.i.i.i.3, label %bb.a, label %.critedge

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.3
  %i.ak = icmp ne i32 %3, 3
  %i.al = trunc nuw i8 %5 to i1
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %0, align 4, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.am, align 4, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float 1.000000e+00, ptr %i.an, align 4, !tbaa !59
  br label %bb.j

.critedge:                                        ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3
  %i.ao = trunc nuw i8 %5 to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load <2 x float>, ptr %i.ap, align 4
  %.sroa.02.0.copyload.pre = select i1 %i.ao, <2 x float> %11, <2 x float> %.val
  br label %.thread

.thread:                                          ; preds = %.critedge, %bb.a
  %.sroa.02.0.copyload = phi <2 x float> [ %i.a, %bb.a ], [ %.sroa.02.0.copyload.pre, %.critedge ]
  switch i32 %3, label %bb.g [
    i32 2, label %bb.c
    i32 0, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
    i32 1, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
    i32 3, label %bb.f
  ]

bb.c:                                             ; preds = %.thread
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !96 ; 7 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !103
  %i.at = and i32 %i.as, 8
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.d, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !104 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 33
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %i.bn, %bb.e ] ; 2 uses
  %i.bc = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !108 ; 2 uses
  %i.bd = load i8, ptr %i.ay, align 8             ; 2 uses
  %i.be = trunc i8 %i.bd to i1                    ; 2 uses
  %i.bf = load ptr, ptr %i.az, align 8
  %i.bg = select i1 %i.be, ptr %i.bf, ptr %i.ba
  %i.bh = load i64, ptr %i.bb, align 8
  %i.bi = lshr i8 %i.bd, 1
  %i.bj = zext nneg i8 %i.bi to i64
  %i.bk = select i1 %i.be, i64 %i.bh, i64 %i.bj
  %i.bl = load ptr, ptr %i.bc, align 8, !tbaa !65
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr %i.bg, i64 %i.bk, i32 noundef 8, ptr nonnull @.str.29, i64 73), !inline_history !4
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, %i.ax
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.e

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %bb.e, %bb.d, %bb.c, %.thread, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  call void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %6, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.bo, align 4, !tbaa !88
  call void @_ZN3tev18adaptWhiteBradfordEN7nanogui5ArrayIfLm2EEES2_(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %7, <2 x float> %.sroa.02.0.copyload, <2 x float> %.sroa.0.0.copyload)
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %8, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.bv = load <3 x float>, ptr %6, align 16, !tbaa !59, !noalias !486
  %i.bw = shufflevector <3 x float> %i.bv, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.bx = load <9 x float>, ptr %7, align 4, !tbaa !59, !noalias !486 ; 9 uses
  %i.by = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> zeroinitializer
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.by, <4 x float> zeroinitializer)
  %i.ca = load <3 x float>, ptr %i.bp, align 4, !tbaa !59, !noalias !486
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.cc = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cc, <4 x float> %i.bz)
  %i.ce = load <3 x float>, ptr %i.bq, align 8, !tbaa !59, !noalias !486
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.cg = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cg, <4 x float> %i.cd) ; 3 uses
  %i.ci = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.ci, <4 x float> zeroinitializer)
  %i.ck = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.ck, <4 x float> %i.cj)
  %i.cm = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cm, <4 x float> %i.cl) ; 3 uses
  %i.co = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.co, <4 x float> zeroinitializer)
  %i.cq = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.cq, <4 x float> %i.cp)
  %i.cs = shufflevector <9 x float> %i.bx, <9 x float> poison, <4 x i32> <i32 8, i32 8, i32 8, i32 8>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.cs, <4 x float> %i.cr) ; 3 uses
  %i.cu = load <4 x float>, ptr %8, align 16, !tbaa !59, !noalias !485 ; 3 uses
  %i.cv = load float, ptr %i.br, align 4, !tbaa !59, !noalias !485
  %i.cw = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ch, <4 x float> %i.cw, <4 x float> zeroinitializer)
  %i.cy = extractelement <4 x float> %i.ch, i64 2
  %i.cz = load <2 x float>, ptr %i.bt, align 16, !tbaa !59, !noalias !485 ; 2 uses
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.db = shufflevector <4 x float> %i.cu, <4 x float> %i.da, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cn, <4 x float> %i.db, <4 x float> %i.cx)
  %i.dd = extractelement <4 x float> %i.cn, i64 2
  %i.de = shufflevector <4 x float> %i.cu, <4 x float> %i.da, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.de, <4 x float> %i.dc)
  store <4 x float> %i.df, ptr %0, align 4, !tbaa !59, !alias.scope !485
  %i.dg = extractelement <4 x float> %i.ct, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 28
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dl = load <4 x float>, ptr %i.bu, align 4, !tbaa !59, !noalias !485 ; 3 uses
  %i.dm = load float, ptr %i.dk, align 16, !tbaa !59, !noalias !485
  %i.dn = load float, ptr %i.dj, align 4, !tbaa !59, !noalias !485
  %i.do = load float, ptr %i.dh, align 8, !tbaa !59, !noalias !485
  %i.dp = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dq = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.dr = insertelement <2 x float> %i.dq, float %i.cv, i64 0
  %i.ds = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.dt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> %i.ds, <4 x float> zeroinitializer)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.do, float 0.000000e+00)
  %i.dv = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.dw = shufflevector <4 x float> %i.dl, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> %i.cz, <4 x i32> <i32 1, i32 2, i32 2, i32 1>
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dv, <4 x float> %i.dx, <4 x float> %i.dt)
  %i.dz = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.dn, float %i.du)
  %i.ea = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.eb = shufflevector <4 x float> %i.dl, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 0, i32 3>
  %i.ec = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ea, <4 x float> %i.eb, <4 x float> %i.dy)
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.ed, ptr %i.bs, align 4, !tbaa !59, !alias.scope !485
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dm, float %i.dz)
  store float %i.ee, ptr %i.di, align 4, !tbaa !59, !alias.scope !485
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.j

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  call void @_ZN3tev8xyzToRgbERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %9, ptr noundef nonnull align 4 dereferenceable(32) %2, float noundef 1.000000e+00)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @_ZN3tev8rgbToXyzERKNSt3__15arrayIN7nanogui5ArrayIfLm2EEELm4EEEf(ptr dead_on_unwind nonnull writable sret(%"struct.nanogui::Matrix") align 4 %10, ptr noundef nonnull align 4 dereferenceable(32) %1, float noundef 1.000000e+00)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  %i.ef = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.eh = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 20
  %i.eo = load <3 x float>, ptr %9, align 16, !tbaa !59, !noalias !487 ; 3 uses
  %i.ep = shufflevector <3 x float> %i.eo, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.eq = load <4 x float>, ptr %i.ef, align 4
  %i.er = load <3 x float>, ptr %i.eg, align 4, !tbaa !59, !noalias !487 ; 3 uses
  %i.es = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.et = load <4 x float>, ptr %i.eh, align 16
  %i.eu = load <3 x float>, ptr %i.ei, align 8, !tbaa !59, !noalias !487 ; 3 uses
  %i.ev = shufflevector <3 x float> %i.eu, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ew = load float, ptr %i.ej, align 4, !tbaa !59, !noalias !487
  %i.ex = load <4 x float>, ptr %10, align 16, !tbaa !59, !noalias !487 ; 3 uses
  %i.ey = load float, ptr %i.ek, align 4, !tbaa !59, !noalias !487
  %i.ez = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ep, <4 x float> %i.ez, <4 x float> zeroinitializer)
  %i.fb = extractelement <3 x float> %i.eo, i64 2
  %i.fc = load <2 x float>, ptr %i.em, align 16, !tbaa !59, !noalias !487 ; 2 uses
  %i.fd = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fe = shufflevector <4 x float> %i.ex, <4 x float> %i.fd, <4 x i32> <i32 1, i32 1, i32 1, i32 4>
  %i.ff = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.es, <4 x float> %i.fe, <4 x float> %i.fa)
  %i.fg = extractelement <3 x float> %i.er, i64 2
  %i.fh = shufflevector <4 x float> %i.ex, <4 x float> %i.fd, <4 x i32> <i32 2, i32 2, i32 2, i32 5>
  %i.fi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ev, <4 x float> %i.fh, <4 x float> %i.ff)
  store <4 x float> %i.fi, ptr %0, align 4, !tbaa !59, !alias.scope !487
  %i.fj = extractelement <3 x float> %i.eu, i64 2
  %i.fk = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fm = getelementptr inbounds nuw i8, ptr %10, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.fo = load <4 x float>, ptr %i.en, align 4, !tbaa !59, !noalias !487 ; 3 uses
  %i.fp = load float, ptr %i.fn, align 16, !tbaa !59, !noalias !487
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !59, !noalias !487
  %i.fr = load float, ptr %i.fk, align 8, !tbaa !59, !noalias !487
  %i.fs = shufflevector <3 x float> %i.eo, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.ft = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> %i.fs, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.fv = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.fw = insertelement <2 x float> %i.fv, float %i.ey, i64 0
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %i.fx, <4 x float> zeroinitializer)
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fr, float 0.000000e+00)
  %i.ga = shufflevector <3 x float> %i.er, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
  %i.gb = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.ga, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.gd = shufflevector <4 x float> %i.fo, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ge = shufflevector <2 x float> %i.fc, <2 x float> %i.gd, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.gf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.ge, <4 x float> %i.fy)
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.fq, float %i.fz)
  %i.gh = shufflevector <3 x float> %i.eu, <3 x float> poison, <4 x i32> <i32 poison, i32 2, i32 0, i32 poison>
end_hunk_0
