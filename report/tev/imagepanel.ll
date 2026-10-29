Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/imagepanel?download=true
inline.NumInlined: 133
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
@_ZTIN7nanogui10ImagePanelE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui10ImagePanelE, ptr @_ZTIN7nanogui6WidgetE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7nanogui10ImagePanelE = hidden constant [23 x i8] c"N7nanogui10ImagePanelE\00", align 1
@_ZTIN7nanogui6WidgetE = external constant ptr

@_ZN7nanogui10ImagePanelC1EPNS_6WidgetE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN7nanogui10ImagePanelC2EPNS_6WidgetE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui10ImagePanelC2EPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7nanogui10ImagePanelE, i64 16), ptr %0, align 16, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  store ptr null, ptr %i.c, align 16, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <4 x i32> <i32 64, i32 10, i32 10, i32 -1>, ptr %i.d, align 16, !tbaa !17
  %i.e = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #14
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN7nanogui6WidgetC1EPS0_(ptr noundef nonnull align 8 dereferenceable(148) %i.e, ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.f, align 8, !tbaa !57
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 152) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  %i.i = load ptr, ptr %i.c, align 16, !tbaa !16  ; 4 uses
  %i.j = icmp eq ptr %i.i, %i.b
  br i1 %i.j, label %.sink.split.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFviEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.g, %bb.f
  %.sink2.i.i = phi i64 [ 32, %bb.f ], [ 40, %bb.g ]
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sink2.i.i
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #16, !inline_history !0
  br label %_ZNSt3__18functionIFviEED2Ev.exit

_ZNSt3__18functionIFviEED2Ev.exit:                ; preds = %bb.g, %.sink.split.i.i
  tail call void @_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #16
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #16
  resume { ptr, i32 } %.pn
}

declare void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7nanogui6WidgetC1EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -32 ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = trunc i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = load i64, ptr %i.e, align 8
  %i.k = and i64 %i.j, -2
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.k) #15
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS1_IcEEEEEEEEE7destroyB8ne180100IS8_vEEvRS9_PT_.exit.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !47
  br label %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.l = phi ptr [ %.pre1.i, %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.q) #15
  br label %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorINS_4pairIiNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEENS5_IS8_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i64 1, -2147483648) i64 @_ZNK7nanogui10ImagePanel9grid_sizeEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 16, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 16, !tbaa !54  ; 2 uses
  %i.g = shl i32 %i.d, 1
  %i.h = add i32 %i.f, %i.g
  %i.i = sub i32 %i.b, %i.h
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55
  %i.m = add nsw i32 %i.l, %i.f
  %i.n = sitofp i32 %i.m to float
  %i.o = fdiv float %i.j, %i.n
  %i.p = fptosi float %i.o to i32
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0) ; 2 uses
  %i.q = add nuw nsw i32 %.sroa.speculated, 1     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !48
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %.sroa.speculated, %i.z
  %i.ab = sdiv i32 %i.aa, %i.q
  %.sroa.2.0.insert.ext = zext i32 %i.ab to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext nneg i32 %i.q to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZNK7nanogui10ImagePanel18index_for_positionERKNS_5ArrayIiLm2EEE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.c = load i32, ptr %i.b, align 8, !tbaa !53   ; 2 uses
  %i.d = sitofp i32 %i.c to float
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 16, !tbaa !54  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.h = load i32, ptr %i.g, align 4, !tbaa !55
  %i.i = add nsw i32 %i.h, %i.f
  %i.j = sitofp i32 %i.i to float                 ; 3 uses
  %i.k = load <2 x i32>, ptr %1, align 4, !tbaa !17
  %i.l = load <2 x i32>, ptr %i.a, align 8, !tbaa !17
  %i.m = sub nsw <2 x i32> %i.k, %i.l
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.d, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fsub <2 x float> %i.n, %i.p
  %i.r = insertelement <2 x float> poison, float %i.j, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x float> %i.q, %i.s              ; 4 uses
  %i.u = sitofp i32 %i.f to float
  %i.v = fdiv float %i.u, %i.j                    ; 2 uses
  %i.w = extractelement <2 x float> %i.t, i64 0   ; 3 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.w)
  %i.y = fsub float %i.w, %i.x
  %i.z = fcmp olt float %i.y, %i.v
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = extractelement <2 x float> %i.t, i64 1  ; 2 uses
  %i.ab = tail call noundef float @llvm.floor.f32(float %i.aa)
  %i.ac = fsub float %i.aa, %i.ab
  %i.ad = fcmp olt float %i.ac, %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.ae = phi i1 [ false, %bb.a ], [ %i.ad, %bb.b ]
  %i.af = fptosi <2 x float> %i.t to <2 x i32>    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !17
  %.neg54 = mul i32 %i.c, -2
  %.neg55 = sub i32 %.neg54, %i.f
  %i.ai = add i32 %.neg55, %i.ah
  %i.aj = sitofp i32 %i.ai to float
  %i.ak = fdiv float %i.aj, %i.j
  %i.al = fptosi float %i.ak to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0) ; 3 uses
  %i.am = add nuw nsw i32 %.sroa.speculated.i, 1  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !48
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = lshr exact i64 %i.at, 5
  %i.av = trunc i64 %i.au to i32                  ; 2 uses
  %i.aw = add i32 %.sroa.speculated.i, %i.av
  %i.ax = sdiv i32 %i.aw, %i.am
  %i.ay = fcmp oge float %i.w, 0.000000e+00
  %i.az = extractelement <2 x float> %i.t, i64 1
  %i.ba = fcmp oge float %i.az, 0.000000e+00
  %i.bb = insertelement <4 x i32> poison, i32 %i.ax, i64 2
  %i.bc = insertelement <4 x i32> %i.bb, i32 %.sroa.speculated.i, i64 3
  %i.bd = shufflevector <2 x i32> %i.af, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> %i.bc, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.bf = shufflevector <4 x i32> %i.bd, <4 x i32> <i32 -1, i32 -1, i32 poison, i32 poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0> ; 2 uses
  %i.bg = icmp sgt <4 x i32> %i.be, %i.bf
  %i.bh = icmp sge <4 x i32> %i.be, %i.bf
  %i.bi = shufflevector <4 x i1> %i.bg, <4 x i1> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.bj = extractelement <2 x i32> %i.af, i64 1
  %i.bk = mul nsw i32 %i.am, %i.bj
  %i.bl = extractelement <2 x i32> %i.af, i64 0
  %i.bm = add nsw i32 %i.bk, %i.bl                ; 2 uses
  %.not = icmp slt i32 %i.bm, %i.av
  %i.bn = freeze <4 x i1> %i.bi
  %i.bo = bitcast <4 x i1> %i.bn to i4
  %i.bp = icmp eq i4 %i.bo, -1
  %op.rdx = select i1 %i.bp, i1 %.not, i1 false
  %op.rdx56 = and i1 %i.ba, %i.ay
  %op.rdx57 = select i1 %op.rdx, i1 %op.rdx56, i1 false
  %op.rdx58 = select i1 %op.rdx57, i1 %i.ae, i1 false
  %i.bq = select i1 %op.rdx58, i32 %i.bm, i32 -1
  ret i32 %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui10ImagePanel18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3, i32 %4) unnamed_addr #9 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK7nanogui10ImagePanel18index_for_positionERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %i.a, ptr %i.b, align 4, !tbaa !56
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui10ImagePanel18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 %2, i1 noundef zeroext %3, i32 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call noundef i32 @_ZNK7nanogui10ImagePanel18index_for_positionERKNS_5ArrayIiLm2EEE(ptr noundef nonnull align 16 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) ; 3 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !48
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 5
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp slt i32 %i.b, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !16  ; 3 uses
  %i.p = icmp ne ptr %i.o, null
  %or.cond = and i1 %3, %i.p
  br i1 %or.cond, label %_ZNKSt3__18functionIFviEEclEi.exit, label %bb.d

_ZNKSt3__18functionIFviEEclEi.exit:               ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.b, ptr %i.a, align 4, !tbaa !17
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !inline_history !58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt3__18functionIFviEEclEi.exit, %bb.c, %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i64 @_ZNK7nanogui10ImagePanel19preferred_size_implEP10NVGcontext(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %0, ptr nofree readnone captures(none) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 16, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 16, !tbaa !54  ; 4 uses
  %i.g = shl i32 %i.d, 1                          ; 3 uses
  %i.h = add i32 %i.g, %i.f
  %i.i = sub i32 %i.b, %i.h
  %i.j = sitofp i32 %i.i to float
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55   ; 3 uses
  %i.m = add nsw i32 %i.l, %i.f
  %i.n = sitofp i32 %i.m to float
  %i.o = fdiv float %i.j, %i.n
  %i.p = fptosi float %i.o to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.p, i32 0) ; 3 uses
  %i.q = add nuw nsw i32 %.sroa.speculated.i, 1   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = load ptr, ptr %i.s, align 16, !tbaa !48
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = lshr exact i64 %i.x, 5
  %i.z = trunc i64 %i.y to i32
  %i.aa = add i32 %.sroa.speculated.i, %i.z
  %i.ab = sdiv i32 %i.aa, %i.q                    ; 2 uses
  %i.ac = mul nsw i32 %i.q, %i.f
  %i.ad = mul nsw i32 %.sroa.speculated.i, %i.l
  %i.ae = add i32 %i.ad, %i.g
  %i.af = add i32 %i.ae, %i.ac
  %i.ag = mul nsw i32 %i.ab, %i.f
  %i.ah = add nsw i32 %i.ab, -1
  %i.ai = mul nsw i32 %i.ah, %i.l
  %i.aj = add i32 %i.ag, %i.g
  %i.ak = add i32 %i.aj, %i.ai
  %.sroa.2.0.insert.ext = zext i32 %i.ak to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.03.0.insert.ext = zext i32 %i.af to i64
  %.sroa.03.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.03.0.insert.ext
  ret i64 %.sroa.03.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui10ImagePanel4drawEP10NVGcontext(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(240) %0, ptr noundef %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.NVGpaint, align 8           ; 4 uses
  %3 = alloca %struct.NVGpaint, align 8           ; 4 uses
  %4 = alloca %struct.NVGcolor, align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 16, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 8 uses
  %i.h = load i32, ptr %i.g, align 16, !tbaa !54  ; 2 uses
  %i.i = shl i32 %i.f, 1
  %i.j = add i32 %i.i, %i.h
  %i.k = sub i32 %i.d, %i.j
  %i.l = sitofp i32 %i.k to float
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !55
  %i.o = add nsw i32 %i.n, %i.h
  %i.p = sitofp i32 %i.o to float
  %i.q = fdiv float %i.l, %i.p
  %i.r = fptosi float %i.q to i32
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 0)
  %i.s = add nuw nsw i32 %.sroa.speculated.i, 1   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 16, !tbaa !48
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !47   ; 2 uses
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.ab = phi ptr [ %i.w, %.lr.ph ], [ %i.da, %bb.e ]
  %.077 = phi i64 [ 0, %.lr.ph ], [ %i.cy, %bb.e ] ; 4 uses
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %i.ad = load i32, ptr %i.x, align 8, !tbaa !17
  %i.ae = add nsw i32 %i.ad, %i.ac
  %i.af = load i32, ptr %i.y, align 4, !tbaa !17
  %i.ag = add nsw i32 %i.af, %i.ac
  %i.ah = trunc i64 %.077 to i32                  ; 3 uses
  %i.ai = srem i32 %i.ah, %i.s
  %i.aj = sdiv i32 %i.ah, %i.s
  %i.ak = load i32, ptr %i.g, align 16, !tbaa !54
  %i.al = load i32, ptr %i.m, align 4, !tbaa !55
  %i.am = add nsw i32 %i.al, %i.ak                ; 2 uses
  %i.an = mul nsw i32 %i.am, %i.ai
  %i.ao = mul nsw i32 %i.am, %i.aj
  %i.ap = add nsw i32 %i.ae, %i.an                ; 3 uses
  %i.aq = add nsw i32 %i.ag, %i.ao                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.ar = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %.077
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !61
  call void @nvgImageSize(ptr noundef %1, i32 noundef %i.as, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.at = load i32, ptr %i.a, align 4, !tbaa !17  ; 3 uses
  %i.au = load i32, ptr %i.b, align 4, !tbaa !17  ; 3 uses
  %i.av = icmp slt i32 %i.at, %i.au
  %i.aw = load i32, ptr %i.g, align 16, !tbaa !54
  %i.ax = sitofp i32 %i.aw to float               ; 6 uses
  br i1 %i.av, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ay = sitofp i32 %i.au to float
  %i.az = fmul nnan float %i.ay, %i.ax
  %i.ba = sitofp i32 %i.at to float
  %i.bb = fdiv float %i.az, %i.ba                 ; 2 uses
  %i.bc = fsub float %i.bb, %i.ax
  %i.bd = fmul float %i.bc, -5.000000e-01
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.be = sitofp i32 %i.at to float
  %i.bf = fmul nnan float %i.be, %i.ax
  %i.bg = sitofp i32 %i.au to float
  %i.bh = fdiv float %i.bf, %i.bg                 ; 2 uses
  %i.bi = fsub float %i.bh, %i.ax
  %i.bj = fmul float %i.bi, -5.000000e-01
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.038 = phi float [ %i.bd, %bb.c ], [ 0.000000e+00, %bb.d ]
  %.037 = phi float [ 0.000000e+00, %bb.c ], [ %i.bj, %bb.d ]
  %.036 = phi float [ %i.bb, %bb.c ], [ %i.ax, %bb.d ]
  %.035 = phi float [ %i.ax, %bb.c ], [ %i.bh, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
end_hunk_0
