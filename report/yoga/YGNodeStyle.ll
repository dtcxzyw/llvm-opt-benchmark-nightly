Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yoga/original/YGNodeStyle?download=true
inline.NumInlined: 1221
inline.NumDeleted: 476
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %i.g = add nsw i64 %i.a, -4                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %.not.i.i = icmp ult i64 %i.g, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE2atEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str, i64 noundef %i.g, i64 noundef %i.n) #11
  unreachable

_ZNSt6vectorIjSaIjEE2atEm.exit:                   ; preds = %bb.c
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.g
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE2atEm.exit, %bb.b
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.o, %_ZNSt6vectorIjSaIjEE2atEm.exit ]
  %.0 = load i32, ptr %.0.in, align 4, !tbaa !23
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN8facebook4yoga5Style16sizeLengthsEqualERKNS0_16StyleValueHandleERKNS0_14StyleValuePoolES4_S7_(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(2) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !44     ; 4 uses
  %i.b = and i16 %i.a, 7                          ; 3 uses
  switch i16 %i.b, label %bb.c [
    i16 0, label %bb.b
    i16 4, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr %2, align 1, !tbaa !44
  %i.d = and i16 %i.c, 7
  %i.e = icmp eq i16 %i.d, 0
  br i1 %i.e, label %_ZNK8facebook4yoga15StyleSizeLengtheqERKS1_.exit, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i16 %i.b, 5                      ; 3 uses
  %i.g = lshr i16 %i.a, 4                         ; 5 uses
  %i.h = icmp eq i16 %i.g, 0
  %i.i = and i1 %i.f, %i.h
  br i1 %i.i, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i16 %i.g, 1
  %i.k = and i1 %i.f, %i.j
  br i1 %i.k, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i16 %i.g, 2
  %i.m = and i1 %i.f, %i.l
  br i1 %i.m, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = and i16 %i.a, 8
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = tail call noundef i32 @_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %i.g)
  %i.p = bitcast i32 %i.o to float
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = and i16 %i.g, 2047
  %i.r = zext nneg i16 %i.q to i32                ; 2 uses
  %i.s = sub nsw i32 0, %i.r
  %.not.i13.i = icmp slt i16 %i.a, 0
  %i.t = select i1 %.not.i13.i, i32 %i.s, i32 %i.r
  %i.u = sitofp i32 %i.t to float
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.v = phi float [ %i.p, %bb.g ], [ %i.u, %bb.h ] ; 2 uses
  %i.w = icmp eq i16 %i.b, 1
  %i.x = tail call float @llvm.fabs.f32(float %i.v) ; 2 uses
  %i.y = bitcast float %i.v to i32
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %or.cond.i.i = fcmp one float %i.x, +inf
  %i.aa = or disjoint i64 %i.z, 4294967296
  %.sroa.03.0.insert.ext.i.i = select i1 %or.cond.i.i, i64 %i.aa, i64 2143289344
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

bb.k:                                             ; preds = %bb.i
  %or.cond.i3.i = fcmp ueq float %i.x, +inf
  %i.ab = or disjoint i64 %i.z, 8589934592
  %.sroa.03.0.insert.ext.i4.i = select i1 %or.cond.i3.i, i64 2143289344, i64 %i.ab
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit

_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.j, %bb.k
  %.sroa.0.1.in.i = phi i64 [ %.sroa.03.0.insert.ext.i4.i, %bb.k ], [ 2143289344, %bb.b ], [ 27913093120, %bb.e ], [ 19323158528, %bb.c ], [ 23618125824, %bb.d ], [ %.sroa.03.0.insert.ext.i.i, %bb.j ], [ 15028191232, %bb.a ] ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %2, align 1, !tbaa !15 ; 4 uses
  %i.ac = and i16 %.sroa.0.0.copyload, 7          ; 3 uses
  %i.ad = trunc i64 %.sroa.0.1.in.i to i32
  %i.ae = bitcast i32 %i.ad to float              ; 2 uses
  switch i16 %i.ac, label %bb.l [
    i16 0, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15
    i16 4, label %.fold.split.i7
  ]

bb.l:                                             ; preds = %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit
  %i.af = icmp eq i16 %i.ac, 5                    ; 3 uses
  %i.ag = lshr i16 %.sroa.0.0.copyload, 4         ; 5 uses
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = and i1 %i.af, %i.ah
  br i1 %i.ai, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = icmp eq i16 %i.ag, 1
  %i.ak = and i1 %i.af, %i.aj
  br i1 %i.ak, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = icmp eq i16 %i.ag, 2
  %i.am = and i1 %i.af, %i.al
  br i1 %i.am, label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = and i16 %.sroa.0.0.copyload, 8
  %.not.i9 = icmp eq i16 %i.an, 0
  br i1 %.not.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call noundef i32 @_ZNK8facebook4yoga16SmallValueBufferILm4EE5get32Et(ptr noundef nonnull align 8 dereferenceable(40) %3, i16 noundef zeroext %i.ag)
  %i.ap = bitcast i32 %i.ao to float
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aq = and i16 %i.ag, 2047
  %i.ar = zext nneg i16 %i.aq to i32              ; 2 uses
  %i.as = sub nsw i32 0, %i.ar
  %.not.i13.i14 = icmp slt i16 %.sroa.0.0.copyload, 0
  %i.at = select i1 %.not.i13.i14, i32 %i.as, i32 %i.ar
  %i.au = sitofp i32 %i.at to float
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.av = phi float [ %i.ap, %bb.p ], [ %i.au, %bb.q ] ; 2 uses
  %i.aw = icmp eq i16 %i.ac, 1
  %i.ax = tail call float @llvm.fabs.f32(float %i.av) ; 2 uses
  %i.ay = bitcast float %i.av to i32
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %or.cond.i.i12 = fcmp one float %i.ax, +inf
  %i.ba = or disjoint i64 %i.az, 4294967296
  %.sroa.03.0.insert.ext.i.i13 = select i1 %or.cond.i.i12, i64 %i.ba, i64 2143289344
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15

bb.t:                                             ; preds = %bb.r
  %or.cond.i3.i10 = fcmp ueq float %i.ax, +inf
  %i.bb = or disjoint i64 %i.az, 8589934592
  %.sroa.03.0.insert.ext.i4.i11 = select i1 %or.cond.i3.i10, i64 2143289344, i64 %i.bb
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15

.fold.split.i7:                                   ; preds = %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit
  br label %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15

_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15: ; preds = %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit, %bb.l, %bb.m, %bb.n, %bb.s, %bb.t, %.fold.split.i7
  %.sroa.0.1.in.i8 = phi i64 [ %.sroa.03.0.insert.ext.i4.i11, %bb.t ], [ 2143289344, %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit ], [ 27913093120, %bb.n ], [ 19323158528, %bb.l ], [ 23618125824, %bb.m ], [ %.sroa.03.0.insert.ext.i.i13, %bb.s ], [ 15028191232, %.fold.split.i7 ] ; 2 uses
  %i.bc = trunc i64 %.sroa.0.1.in.i8 to i32
  %i.bd = bitcast i32 %i.bc to float              ; 2 uses
  %i.be = fcmp oeq float %i.ae, %i.bd
  %i.bf = fcmp uno float %i.ae, 0.000000e+00
  %i.bg = fcmp uno float %i.bd, 0.000000e+00
  %spec.select.i.i = and i1 %i.bf, %i.bg
  %i.bh = or i1 %i.be, %spec.select.i.i
  br i1 %i.bh, label %bb.u, label %_ZNK8facebook4yoga15StyleSizeLengtheqERKS1_.exit

bb.u:                                             ; preds = %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15
  %.unshifted = xor i64 %.sroa.0.1.in.i, %.sroa.0.1.in.i8
  %i.bi = icmp ult i64 %.unshifted, 4294967296
  br label %_ZNK8facebook4yoga15StyleSizeLengtheqERKS1_.exit

_ZNK8facebook4yoga15StyleSizeLengtheqERKS1_.exit: ; preds = %bb.u, %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15, %bb.b
  %i.bj = phi i1 [ true, %bb.b ], [ false, %_ZNK8facebook4yoga14StyleValuePool7getSizeENS0_16StyleValueHandleE.exit15 ], [ %i.bi, %bb.u ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8facebook4yoga13GridTrackSizeESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.c = load ptr, ptr %1, align 8, !tbaa !43     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %0, align 8, !tbaa !43     ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = sdiv exact i64 %i.f, 28
  %i.o = icmp ugt i64 %i.n, 329406144173384850
  br i1 %i.o, label %bb.d, label %.lr.ph.i.i.i.i.preheader.i, !prof !48

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #11
  unreachable

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #12 ; 3 uses
  %i.p = add i64 %i.d, -28
  %i.q = sub i64 %i.p, %i.e
  %.fr.i = freeze i64 %i.q                        ; 2 uses
  %i.r = urem i64 %.fr.i, 28
  %i.s = add i64 %.fr.i, 28
  %i.t = sub i64 %i.s, %i.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr align 4 %i.c, i64 %i.t, i1 false)
  %3 = load ptr, ptr %0, align 8, !tbaa !43       ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %3 to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.x) #13
  br label %_ZNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.e
  store ptr %2, ptr %0, align 8, !tbaa !43
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.y, ptr %i.g, align 8, !tbaa !47
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.f:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !42
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.k                     ; 4 uses
  %.not24 = icmp ult i64 %i.ac, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.f, 28
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !49

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.i:                                             ; preds = %bb.g
  %i.ae = icmp eq i64 %i.f, 28
  br i1 %i.ae, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.i, ptr noundef nonnull align 4 dereferenceable(25) %i.c, i64 25, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit

bb.k:                                             ; preds = %bb.f
  %i.af = icmp sgt i64 %i.ac, 28
  br i1 %i.af, label %bb.l, label %bb.m, !prof !49

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %i.c, i64 %i.ac, i1 false)
  br label %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp eq i64 %i.ac, 28
  br i1 %i.ag, label %bb.n, label %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.i, ptr noundef nonnull align 4 dereferenceable(25) %i.c, i64 25, i1 false), !tbaa.struct !52
  br label %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit

_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ah = load ptr, ptr %1, align 8, !tbaa !43
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !42  ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !43
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !42  ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.an, %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.0810.i.i.i.i, i64 28, i1 false), !tbaa.struct !52
  %i.ap = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 28 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 28
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !122

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN8facebook4yoga13GridTrackSizeES3_ET0_T_S5_S4_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN8facebook4yoga13GridTrackSizeESaIS2_EE13_M_deallocateEPS2_m.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.f
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN8facebook4yoga13GridTrackSizeESt6vectorIS4_SaIS4_EEEENS1_IPS4_S9_EEET0_T_SE_SD_.exit, %bb.a
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(40) ptr @_ZN8facebook4yoga16SmallValueBufferILm4EEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr", align 8   ; 6 uses
  %i.a = load i16, ptr %1, align 8, !tbaa !53
  store i16 %i.a, ptr %0, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !124
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.d, align 8
  store i64 %i.f, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt11make_uniqueIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEJRS4_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.h)
  %.pre = load ptr, ptr %2, align 8, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %.pre, %bb.b ], [ null, %bb.a ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %2, align 8, !tbaa !18
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 6 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !56   ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !59   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #13
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !22   ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEaSEOS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #13
  br label %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEaSEOS7_.exit

_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEaSEOS7_.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i.i.i.i, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 64) #13
  %.pr = load ptr, ptr %2, align 8, !tbaa !18     ; 6 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEaSEOS7_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.pr, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = ashr exact i64 %i.ah, 3
  %i.aj = sub nsw i64 0, %i.ai
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.aj
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ah) #13
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i:       ; preds = %bb.h, %bb.g
  %i.al = load ptr, ptr %.pr, align 8, !tbaa !22  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.pr, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #13
  br label %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i

_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i: ; preds = %bb.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 64) #13
  br label %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EED2Ev.exit: ; preds = %bb.c, %_ZNSt10unique_ptrIN8facebook4yoga16SmallValueBufferILm4EE8OverflowESt14default_deleteIS4_EEaSEOS7_.exit, %_ZNKSt14default_deleteIN8facebook4yoga16SmallValueBufferILm4EE8OverflowEEclEPS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
end_hunk_0
