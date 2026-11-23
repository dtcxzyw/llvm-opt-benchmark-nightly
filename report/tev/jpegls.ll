Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/jpegls?download=true
inline.NumInlined: 3471
inline.NumDeleted: 999
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 143
begin_hunk_0_@_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEED2Ev:bb.a

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #26, !inline_history !788
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #26, !inline_history !788
  br label %_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEED2Ev.exit

_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEED2Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE14NewLineDecodedEPKvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !330
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !331, !nonnull !177, !align !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %i.g = mul nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %i.k, i32 noundef %2, i32 noundef %3)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !331, !nonnull !177, !align !302 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !242
  %i.o = icmp eq i32 %i.n, 536870912
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !103
  %i.s = shl i32 %2, 1
  %i.t = mul i32 %i.s, %i.r
  tail call void @_Z8ByteSwapPhi(ptr noundef nonnull %i.p, i32 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull %i.v, i64 noundef %i.i), !inline_history !6
  %.not13 = icmp eq i64 %i.z, %i.i
  br i1 %.not13, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #23
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !332
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.ae, i32 noundef %2, i32 noundef %3)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !331, !nonnull !177, !align !302
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !241
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !332
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !332
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE16NewLineRequestedEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !330  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !332
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !331, !nonnull !177, !align !302
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !241
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !332
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store ptr %i.k, ptr %i.c, align 8, !tbaa !332
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE9TransformEPNSt3__115basic_streambufIcNS5_11char_traitsIcEEEEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorItNS_9allocatorItEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !177, !align !302 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  switch i32 %i.d, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit [
    i32 3, label %bb.b
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [6 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !51
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !51
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !51
  %i.r = zext i16 %i.q to i32
  %i.s = load i32, ptr %i.h, align 8, !tbaa !280  ; 6 uses
  %5 = shl i32 %i.o, %i.s
  %i.t = add nuw nsw i32 %i.o, %i.l
  %i.u = shl i32 %i.t, %i.s
  %i.v = add nuw nsw i32 %i.r, %i.o
  %i.w = shl i32 %i.v, %i.s
  %i.x = and i32 %i.u, 65535
  %.sroa.0.0.insert.insert.i.i.i = xor i32 %i.x, 32768
  %i.y = and i32 %5, 65535
  %6 = and i32 %i.w, 65535
  %.sroa.5.0.extract.trunc.i.i = xor i32 %6, 32768
  %i.z = lshr i32 %.sroa.0.0.insert.insert.i.i.i, %i.s
  %7 = lshr i32 %i.y, %i.s
  %i.aa = lshr i32 %.sroa.5.0.extract.trunc.i.i, %i.s
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.aa to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.ab = shl nuw i32 %7, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.ab to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.z to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ac = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.ac, align 2, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %.lr.ph.i, !llvm.loop !789

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph.i13, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

.lr.ph.i13:                                       ; preds = %bb.d
  %i.af = shl nuw nsw i32 %4, 1
  %i.ag = sext i32 %4 to i64                      ; 2 uses
  %i.ah = zext nneg i32 %i.af to i64              ; 2 uses
  %wide.trip.count.i14 = zext nneg i32 %i.ad to i64 ; 7 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %1, i64 %i.ag ; 3 uses
  %invariant.gep20.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah ; 3 uses
  %min.iters.check113 = icmp ult i32 %i.ad, 12
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.memcheck114

vector.memcheck114:                               ; preds = %.lr.ph.i13
  %i.ai = mul nuw nsw i64 %wide.trip.count.i14, 6
  %i.aj = getelementptr i8, ptr %2, i64 %i.ai     ; 4 uses
  %i.ak = shl nuw nsw i64 %wide.trip.count.i14, 1
  %i.al = add nuw nsw i64 %wide.trip.count.i14, %i.ah
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = getelementptr i8, ptr %1, i64 %i.am
  %i.ao = add nsw i64 %i.ag, %wide.trip.count.i14
  %i.ap = shl nsw i64 %i.ao, 1
  %i.aq = getelementptr i8, ptr %1, i64 %i.ap
  %i.ar = getelementptr i8, ptr %1, i64 %i.ak
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 76
  %bound0115 = icmp ult ptr %2, %i.an
  %bound1116 = icmp ult ptr %invariant.gep20.i, %i.aj
  %found.conflict117 = and i1 %bound0115, %bound1116
  %bound0118 = icmp ult ptr %2, %i.aq
  %bound1119 = icmp ult ptr %invariant.gep.i, %i.aj
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx121 = or i1 %found.conflict117, %found.conflict120
  %bound0122 = icmp ult ptr %2, %i.ar
  %bound1123 = icmp ult ptr %1, %i.aj
  %found.conflict124 = and i1 %bound0122, %bound1123
  %conflict.rdx125 = or i1 %conflict.rdx121, %found.conflict124
  %bound0126 = icmp ult ptr %2, %i.as
  %bound1127 = icmp ult ptr %i.h, %i.aj
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %conflict.rdx125, %found.conflict128
  br i1 %conflict.rdx129, label %scalar.ph112.preheader, label %vector.ph130

vector.ph130:                                     ; preds = %vector.memcheck114
  %n.vec131 = and i64 %wide.trip.count.i14, 2147483646 ; 3 uses
  %i.at = load <1 x i32>, ptr %i.h, align 8
  %broadcast.splat138 = shufflevector <1 x i32> %i.at, <1 x i32> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph130
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next139, %vector.body132 ] ; 6 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index133
  %wide.load134 = load <2 x i16>, ptr %i.au, align 2, !tbaa !245, !alias.scope !808
  %i.av = zext <2 x i16> %wide.load134 to <2 x i32>
  %i.aw = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index133
  %wide.load135 = load <2 x i16>, ptr %i.aw, align 2, !tbaa !245, !alias.scope !809
  %i.ax = zext <2 x i16> %wide.load135 to <2 x i32> ; 3 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep20.i, i64 %index133
  %wide.load136 = load <2 x i16>, ptr %i.ay, align 2, !tbaa !245, !alias.scope !810
  %i.az = zext <2 x i16> %wide.load136 to <2 x i32>
  %8 = shl <2 x i32> %i.ax, %broadcast.splat138
  %i.ba = add nuw nsw <2 x i32> %i.ax, %i.av
  %i.bb = shl <2 x i32> %i.ba, %broadcast.splat138
  %i.bc = add nuw nsw <2 x i32> %i.az, %i.ax
  %i.bd = shl <2 x i32> %i.bc, %broadcast.splat138
  %i.be = and <2 x i32> %i.bb, splat (i32 65535)
  %i.bf = xor <2 x i32> %i.be, splat (i32 32768)
  %9 = and <2 x i32> %8, splat (i32 65535)
  %i.bg = and <2 x i32> %i.bd, splat (i32 65535)
  %i.bh = xor <2 x i32> %i.bg, splat (i32 32768)
  %i.bi = lshr <2 x i32> %i.bf, %broadcast.splat138
  %10 = lshr <2 x i32> %9, %broadcast.splat138
  %i.bj = lshr <2 x i32> %i.bh, %broadcast.splat138
  %i.bk = zext nneg <2 x i32> %i.bj to <2 x i48>
  %i.bl = shl nuw <2 x i48> %i.bk, splat (i48 32)
  %i.bm = shl nuw <2 x i32> %10, splat (i32 16)
  %i.bn = zext <2 x i32> %i.bm to <2 x i48>
  %i.bo = or disjoint <2 x i48> %i.bl, %i.bn
  %i.bp = zext nneg <2 x i32> %i.bi to <2 x i48>
  %i.bq = or disjoint <2 x i48> %i.bo, %i.bp      ; 2 uses
  %i.br = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %index133
  %i.bs = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %index133
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 6
  %i.bu = extractelement <2 x i48> %i.bq, i64 0
  store i48 %i.bu, ptr %i.br, align 2, !tbaa !51, !alias.scope !811, !noalias !812
  %i.bv = extractelement <2 x i48> %i.bq, i64 1
  store i48 %i.bv, ptr %i.bt, align 2, !tbaa !51, !alias.scope !811, !noalias !812
  %index.next139 = add nuw i64 %index133, 2       ; 2 uses
  %i.bw = icmp eq i64 %index.next139, %n.vec131
  br i1 %i.bw, label %middle.block140, label %vector.body132, !llvm.loop !796

middle.block140:                                  ; preds = %vector.body132
  %cmp.n141 = icmp eq i64 %n.vec131, %wide.trip.count.i14
  br i1 %cmp.n141, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %vector.memcheck114, %.lr.ph.i13, %middle.block140
  %indvars.iv.i15.ph = phi i64 [ 0, %vector.memcheck114 ], [ 0, %.lr.ph.i13 ], [ %n.vec131, %middle.block140 ]
  br label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i24, %scalar.ph112 ], [ %indvars.iv.i15.ph, %scalar.ph112.preheader ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i15
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !245
  %i.bz = zext i16 %i.by to i32
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i15
  %i.ca = load i16, ptr %gep.i, align 2, !tbaa !245
  %i.cb = zext i16 %i.ca to i32                   ; 3 uses
  %gep21.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep20.i, i64 %indvars.iv.i15
  %i.cc = load i16, ptr %gep21.i, align 2, !tbaa !245
  %i.cd = zext i16 %i.cc to i32
  %i.ce = load i32, ptr %i.h, align 8, !tbaa !280 ; 6 uses
  %11 = shl i32 %i.cb, %i.ce
  %i.cf = add nuw nsw i32 %i.cb, %i.bz
  %i.cg = shl i32 %i.cf, %i.ce
  %i.ch = add nuw nsw i32 %i.cd, %i.cb
  %i.ci = shl i32 %i.ch, %i.ce
  %i.cj = and i32 %i.cg, 65535
  %.sroa.0.0.insert.insert.i.i.i16 = xor i32 %i.cj, 32768
  %i.ck = and i32 %11, 65535
  %12 = and i32 %i.ci, 65535
  %.sroa.5.0.extract.trunc.i.i17 = xor i32 %12, 32768
  %i.cl = lshr i32 %.sroa.0.0.insert.insert.i.i.i16, %i.ce
  %13 = lshr i32 %i.ck, %i.ce
  %i.cm = lshr i32 %.sroa.5.0.extract.trunc.i.i17, %i.ce
  %.sroa.3.0.insert.ext.i.i18 = zext nneg i32 %i.cm to i48
  %.sroa.3.0.insert.shift.i.i19 = shl nuw i48 %.sroa.3.0.insert.ext.i.i18, 32
  %i.cn = shl nuw i32 %13, 16
  %.sroa.2.0.insert.shift.i.i20 = zext i32 %i.cn to i48
  %.sroa.2.0.insert.insert.i.i21 = or disjoint i48 %.sroa.3.0.insert.shift.i.i19, %.sroa.2.0.insert.shift.i.i20
  %.sroa.0.0.insert.ext.i.i22 = zext nneg i32 %i.cl to i48
  %.sroa.0.0.insert.insert.i.i23 = or disjoint i48 %.sroa.2.0.insert.insert.i.i21, %.sroa.0.0.insert.ext.i.i22
  %i.co = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i15
  store i48 %.sroa.0.0.insert.insert.i.i23, ptr %i.co, align 2, !tbaa !51
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %wide.trip.count.i14
  br i1 %exitcond.not.i25, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph112, !llvm.loop !797

bb.e:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !102
  %i.cr = icmp eq i32 %i.cq, 1
  br i1 %i.cr, label %bb.f, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

bb.f:                                             ; preds = %bb.e
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ct = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph.i26, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

.lr.ph.i26:                                       ; preds = %bb.f
  %i.cv = shl nuw nsw i32 %4, 1
  %i.cw = mul i32 %4, 3
  %i.cx = sext i32 %4 to i64                      ; 2 uses
  %i.cy = zext nneg i32 %i.cv to i64              ; 2 uses
  %i.cz = zext i32 %i.cw to i64                   ; 2 uses
  %wide.trip.count.i27 = zext nneg i32 %i.ct to i64 ; 8 uses
  %invariant.gep.i28 = getelementptr [2 x i8], ptr %1, i64 %i.cx ; 3 uses
  %invariant.gep24.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.cy ; 3 uses
  %invariant.gep26.i = getelementptr [2 x i8], ptr %1, i64 %i.cz ; 3 uses
  %min.iters.check = icmp ult i32 %i.ct, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i26
  %i.da = shl nuw nsw i64 %wide.trip.count.i27, 3
  %i.db = getelementptr i8, ptr %2, i64 %i.da     ; 5 uses
  %i.dc = shl nuw nsw i64 %wide.trip.count.i27, 1
  %i.dd = add nuw nsw i64 %wide.trip.count.i27, %i.cz
  %i.de = shl nuw nsw i64 %i.dd, 1
  %i.df = getelementptr i8, ptr %1, i64 %i.de
  %i.dg = add nuw nsw i64 %wide.trip.count.i27, %i.cy
  %i.dh = shl nuw nsw i64 %i.dg, 1
  %i.di = getelementptr i8, ptr %1, i64 %i.dh
  %i.dj = add nsw i64 %i.cx, %wide.trip.count.i27
  %i.dk = shl nsw i64 %i.dj, 1
  %i.dl = getelementptr i8, ptr %1, i64 %i.dk
  %i.dm = getelementptr i8, ptr %1, i64 %i.dc
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 76
  %bound0 = icmp ult ptr %2, %i.df
  %bound1 = icmp ult ptr %invariant.gep26.i, %i.db
  %found.conflict = and i1 %bound0, %bound1
  %bound074 = icmp ult ptr %2, %i.di
  %bound175 = icmp ult ptr %invariant.gep24.i, %i.db
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx = or i1 %found.conflict, %found.conflict76
  %bound077 = icmp ult ptr %2, %i.dl
  %bound178 = icmp ult ptr %invariant.gep.i28, %i.db
  %found.conflict79 = and i1 %bound077, %bound178
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict79
  %bound081 = icmp ult ptr %2, %i.dm
  %bound182 = icmp ult ptr %1, %i.db
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx84 = or i1 %conflict.rdx80, %found.conflict83
  %bound085 = icmp ult ptr %2, %i.dn
  %bound186 = icmp ult ptr %i.cs, %i.db
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx88 = or i1 %conflict.rdx84, %found.conflict87
  br i1 %conflict.rdx88, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i27, 2147483646 ; 3 uses
  %i.do = load <1 x i32>, ptr %i.cs, align 8
  %broadcast.splat = shufflevector <1 x i32> %i.do, <1 x i32> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i16>, ptr %i.dp, align 2, !tbaa !245, !alias.scope !813
  %i.dq = zext <2 x i16> %wide.load to <2 x i32>
  %i.dr = getelementptr [2 x i8], ptr %invariant.gep.i28, i64 %index
  %wide.load89 = load <2 x i16>, ptr %i.dr, align 2, !tbaa !245, !alias.scope !814
  %i.ds = zext <2 x i16> %wide.load89 to <2 x i32> ; 3 uses
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep24.i, i64 %index
  %wide.load90 = load <2 x i16>, ptr %i.dt, align 2, !tbaa !245, !alias.scope !815
  %i.du = zext <2 x i16> %wide.load90 to <2 x i32>
  %14 = shl <2 x i32> %i.ds, %broadcast.splat
  %i.dv = add nuw nsw <2 x i32> %i.ds, %i.dq
  %i.dw = shl <2 x i32> %i.dv, %broadcast.splat
  %i.dx = add nuw nsw <2 x i32> %i.du, %i.ds
  %i.dy = shl <2 x i32> %i.dx, %broadcast.splat
  %i.dz = and <2 x i32> %i.dw, splat (i32 65535)
  %i.ea = xor <2 x i32> %i.dz, splat (i32 32768)
  %15 = and <2 x i32> %14, splat (i32 65535)
  %i.eb = and <2 x i32> %i.dy, splat (i32 65535)
  %i.ec = xor <2 x i32> %i.eb, splat (i32 32768)
  %i.ed = lshr <2 x i32> %i.ea, %broadcast.splat
  %16 = lshr <2 x i32> %15, %broadcast.splat
  %i.ee = lshr <2 x i32> %i.ec, %broadcast.splat
  %i.ef = zext nneg <2 x i32> %i.ee to <2 x i64>
  %i.eg = shl nuw nsw <2 x i64> %i.ef, splat (i64 32)
  %i.eh = shl nuw <2 x i32> %16, splat (i32 16)
  %i.ei = zext <2 x i32> %i.eh to <2 x i64>
  %i.ej = or disjoint <2 x i64> %i.eg, %i.ei
  %i.ek = zext nneg <2 x i32> %i.ed to <2 x i64>
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep26.i, i64 %index
  %wide.load91 = load <2 x i16>, ptr %i.el, align 2, !tbaa !245, !alias.scope !816
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.en = zext <2 x i16> %wide.load91 to <2 x i64>
  %i.eo = shl nuw <2 x i64> %i.en, splat (i64 48)
  %i.ep = or disjoint <2 x i64> %i.ej, %i.ek
  %i.eq = or <2 x i64> %i.ep, %i.eo
  store <2 x i64> %i.eq, ptr %i.em, align 2, !alias.scope !817, !noalias !818
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i27
  br i1 %cmp.n, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i26, %middle.block
  %indvars.iv.i29.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i26 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i38, %scalar.ph ], [ %indvars.iv.i29.ph, %scalar.ph.preheader ] ; 6 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i29
  %i.et = load i16, ptr %i.es, align 2, !tbaa !245
  %i.eu = zext i16 %i.et to i32
  %gep.i30 = getelementptr [2 x i8], ptr %invariant.gep.i28, i64 %indvars.iv.i29
  %i.ev = load i16, ptr %gep.i30, align 2, !tbaa !245
  %i.ew = zext i16 %i.ev to i32                   ; 3 uses
  %gep25.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep24.i, i64 %indvars.iv.i29
  %i.ex = load i16, ptr %gep25.i, align 2, !tbaa !245
  %i.ey = zext i16 %i.ex to i32
  %i.ez = load i32, ptr %i.cs, align 8, !tbaa !280 ; 6 uses
  %17 = shl i32 %i.ew, %i.ez
  %i.fa = add nuw nsw i32 %i.ew, %i.eu
  %i.fb = shl i32 %i.fa, %i.ez
  %i.fc = add nuw nsw i32 %i.ey, %i.ew
  %i.fd = shl i32 %i.fc, %i.ez
  %i.fe = and i32 %i.fb, 65535
  %.sroa.0.0.insert.insert.i.i.i31 = xor i32 %i.fe, 32768
  %i.ff = and i32 %17, 65535
  %18 = and i32 %i.fd, 65535
  %.sroa.5.0.extract.trunc.i.i32 = xor i32 %18, 32768
  %i.fg = lshr i32 %.sroa.0.0.insert.insert.i.i.i31, %i.ez
  %19 = lshr i32 %i.ff, %i.ez
  %i.fh = lshr i32 %.sroa.5.0.extract.trunc.i.i32, %i.ez
  %.sroa.3.0.insert.ext.i.i33 = zext nneg i32 %i.fh to i64
  %.sroa.3.0.insert.shift.i.i34 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i33, 32
  %i.fi = shl nuw i32 %19, 16
  %.sroa.2.0.insert.shift.i.i35 = zext i32 %i.fi to i64
  %.sroa.2.0.insert.insert.i.i36 = or disjoint i64 %.sroa.3.0.insert.shift.i.i34, %.sroa.2.0.insert.shift.i.i35
  %.sroa.0.0.insert.ext.i.i37 = zext nneg i32 %i.fg to i64
  %gep27.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.i29
  %i.fj = load i16, ptr %gep27.i, align 2, !tbaa !245
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i29
  %.sroa.4.0.insert.ext.i = zext i16 %i.fj to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.0.0.insert.ext.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i36, %.sroa.0.0.insert.ext.i.i37
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.ext.i, %.sroa.4.0.insert.shift.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.fk, align 2
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, %wide.trip.count.i27
  br i1 %exitcond.not.i39, label %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph, !llvm.loop !806

_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit: ; preds = %scalar.ph, %scalar.ph112, %.lr.ph.i, %middle.block, %middle.block140, %bb.f, %bb.d, %bb.a, %bb.e
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !177, !align !302 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !304
  %.not = icmp ne i8 %i.fn, 0
  %i.fo = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.fo, %.not
  br i1 %or.cond, label %.lr.ph.i40, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.i40:                                       ; preds = %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !103
  %i.fr = sext i32 %i.fq to i64                   ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.fs = icmp ult i32 %3, 4
  br i1 %i.fs, label %.epil.preheader, label %.lr.ph.i40.new

.lr.ph.i40.new:                                   ; preds = %.lr.ph.i40
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i40.new
  %.067.i = phi ptr [ %2, %.lr.ph.i40.new ], [ %i.gi, %bb.g ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i40.new ], [ %niter.next.3, %bb.g ]
  %i.ft = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.fu = load i16, ptr %.067.i, align 2, !tbaa !245
  %i.fv = load i16, ptr %i.ft, align 2, !tbaa !245
  store i16 %i.fv, ptr %.067.i, align 2, !tbaa !245
  store i16 %i.fu, ptr %i.ft, align 2, !tbaa !245
  %i.fw = getelementptr inbounds [2 x i8], ptr %.067.i, i64 %i.fr ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 4 ; 2 uses
  %i.fy = load i16, ptr %i.fw, align 2, !tbaa !245
  %i.fz = load i16, ptr %i.fx, align 2, !tbaa !245
  store i16 %i.fz, ptr %i.fw, align 2, !tbaa !245
  store i16 %i.fy, ptr %i.fx, align 2, !tbaa !245
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fw, i64 %i.fr ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 4 ; 2 uses
  %i.gc = load i16, ptr %i.ga, align 2, !tbaa !245
  %i.gd = load i16, ptr %i.gb, align 2, !tbaa !245
  store i16 %i.gd, ptr %i.ga, align 2, !tbaa !245
  store i16 %i.gc, ptr %i.gb, align 2, !tbaa !245
  %i.ge = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %i.fr ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gg = load i16, ptr %i.ge, align 2, !tbaa !245
  %i.gh = load i16, ptr %i.gf, align 2, !tbaa !245
  store i16 %i.gh, ptr %i.ge, align 2, !tbaa !245
  store i16 %i.gg, ptr %i.gf, align 2, !tbaa !245
  %i.gi = getelementptr inbounds [2 x i8], ptr %i.ge, i64 %i.fr ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !9

_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %.lr.ph.i40
  %.067.i.epil.init = phi ptr [ %2, %.lr.ph.i40 ], [ %i.gi, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ]
  %lcmp.mod145 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod145)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.gm, %bb.h ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 4 ; 2 uses
  %i.gk = load i16, ptr %.067.i.epil, align 2, !tbaa !245
  %i.gl = load i16, ptr %i.gj, align 2, !tbaa !245
  store i16 %i.gl, ptr %.067.i.epil, align 2, !tbaa !245
  store i16 %i.gk, ptr %i.gj, align 2, !tbaa !245
  %i.gm = getelementptr inbounds [2 x i8], ptr %.067.i.epil, i64 %i.fr
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.h, !llvm.loop !807

_Z17TransformRgbToBgrItEvPT_ii.exit:              ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %bb.h, %bb.c, %_Z13TransformLineIN16TransformShiftedI12TransformHp1ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !177, !align !302 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !304
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.g, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.f, ptr align 1 %1, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !275  ; 5 uses
  %i.j = icmp sgt i32 %3, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !331 ; 4 uses
  br i1 %i.j, label %.lr.ph.i, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.n = icmp ult i32 %3, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.067.i = phi ptr [ %i.i, %.lr.ph.i.new ], [ %i.ad, %bb.c ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.p = load i16, ptr %.067.i, align 2, !tbaa !245
  %i.q = load i16, ptr %i.o, align 2, !tbaa !245
  store i16 %i.q, ptr %.067.i, align 2, !tbaa !245
  store i16 %i.p, ptr %i.o, align 2, !tbaa !245
  %i.r = getelementptr inbounds [2 x i8], ptr %.067.i, i64 %i.m ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i16, ptr %i.r, align 2, !tbaa !245
  %i.u = load i16, ptr %i.s, align 2, !tbaa !245
  store i16 %i.u, ptr %i.r, align 2, !tbaa !245
  store i16 %i.t, ptr %i.s, align 2, !tbaa !245
  %i.v = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.x = load i16, ptr %i.v, align 2, !tbaa !245
  %i.y = load i16, ptr %i.w, align 2, !tbaa !245
  store i16 %i.y, ptr %i.v, align 2, !tbaa !245
  store i16 %i.x, ptr %i.w, align 2, !tbaa !245
  %i.z = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.m ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !245
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !245
  store i16 %i.ac, ptr %i.z, align 2, !tbaa !245
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !245
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.m ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !9

_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.067.i.epil.init = phi ptr [ %i.i, %.lr.ph.i ], [ %i.ad, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 4 ; 2 uses
  %i.af = load i16, ptr %.067.i.epil, align 2, !tbaa !245
  %i.ag = load i16, ptr %i.ae, align 2, !tbaa !245
  store i16 %i.ag, ptr %.067.i.epil, align 2, !tbaa !245
  store i16 %i.af, ptr %i.ae, align 2, !tbaa !245
  %i.ah = getelementptr inbounds [2 x i8], ptr %.067.i.epil, i64 %i.m
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.d, !llvm.loop !819

_Z17TransformRgbToBgrItEvPT_ii.exit:              ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  %i.ai = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ], [ %.pre, %bb.d ], [ %.pre, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ] ; 28 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !103
  switch i32 %i.ak, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit [
    i32 3, label %bb.e
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !102
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph.preheader.i, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i15 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %indvars.iv.i ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !51
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !51
  %i.av = zext i16 %i.au to i32                   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !51
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ao, align 8, !tbaa !836 ; 6 uses
  %5 = shl i32 %i.av, %i.az
  %i.ba = sub nsw i32 %i.as, %i.av
  %i.bb = shl i32 %i.ba, %i.az
  %i.bc = sub nsw i32 %i.ay, %i.av
  %i.bd = shl i32 %i.bc, %i.az
  %i.be = and i32 %i.bb, 65535
  %.sroa.0.0.insert.insert.i.i.i = xor i32 %i.be, 32768
  %i.bf = and i32 %5, 65535
  %6 = and i32 %i.bd, 65535
  %.sroa.5.0.extract.trunc.i.i = xor i32 %6, 32768
  %i.bg = lshr i32 %.sroa.0.0.insert.insert.i.i.i, %i.az
  %7 = lshr i32 %i.bf, %i.az
  %i.bh = lshr i32 %.sroa.5.0.extract.trunc.i.i, %i.az
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.bh to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.bi = shl nuw i32 %7, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.bi to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.bg to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bj = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.bj, align 2, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i16, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %.lr.ph.i15, !llvm.loop !820

bb.g:                                             ; preds = %bb.e
  %i.bk = tail call i32 @llvm.smin.i32(i32 %4, i32 %3) ; 3 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i17, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.i17:                                       ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !836 ; 7 uses
  %i.bo = shl i32 %4, 1
  %i.bp = sext i32 %4 to i64                      ; 2 uses
  %i.bq = zext i32 %i.bo to i64                   ; 2 uses
  %wide.trip.count.i18 = zext nneg i32 %i.bk to i64 ; 7 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %2, i64 %i.bp ; 5 uses
  %invariant.gep23.i = getelementptr [2 x i8], ptr %2, i64 %i.bq ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.bk, 16
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %.lr.ph.i17
  %i.br = shl nuw nsw i64 %wide.trip.count.i18, 1
  %i.bs = getelementptr i8, ptr %2, i64 %i.br     ; 3 uses
  %i.bt = add nsw i64 %i.bp, %wide.trip.count.i18
  %i.bu = shl nsw i64 %i.bt, 1
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu     ; 3 uses
  %i.bw = add nuw nsw i64 %wide.trip.count.i18, %i.bq
  %i.bx = shl nuw nsw i64 %i.bw, 1
  %i.by = getelementptr i8, ptr %2, i64 %i.bx     ; 3 uses
  %i.bz = mul nuw nsw i64 %wide.trip.count.i18, 6
  %i.ca = getelementptr i8, ptr %.0, i64 %i.bz    ; 3 uses
  %bound0150 = icmp ult ptr %2, %i.bv
  %bound1151 = icmp ult ptr %invariant.gep.i, %i.bs
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %2, %i.by
  %bound1154 = icmp ult ptr %invariant.gep23.i, %i.bs
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  %bound0157 = icmp ult ptr %2, %i.ca
  %bound1158 = icmp ult ptr %.0, %i.bs
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %invariant.gep.i, %i.by
  %bound1162 = icmp ult ptr %invariant.gep23.i, %i.bv
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %invariant.gep.i, %i.ca
  %bound1166 = icmp ult ptr %.0, %i.bv
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %invariant.gep23.i, %i.ca
  %bound1170 = icmp ult ptr %.0, %i.by
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  br i1 %conflict.rdx172, label %scalar.ph147.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck149
  %n.vec174 = and i64 %wide.trip.count.i18, 2147483640 ; 3 uses
  %broadcast.splatinsert175 = insertelement <8 x i32> poison, i32 %i.bn, i64 0
  %broadcast.splat176 = shufflevector <8 x i32> %broadcast.splatinsert175, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph173
  %index178 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body177 ] ; 12 uses
  %i.cb = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cc = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  %i.ce = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.cg = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 18
  %i.ci = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 30
  %i.cm = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  %i.co = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 42
  %i.cq = load i16, ptr %i.cb, align 2, !tbaa !51, !alias.scope !837
  %i.cr = load i16, ptr %i.cd, align 2, !tbaa !51, !alias.scope !837
  %i.cs = load i16, ptr %i.cf, align 2, !tbaa !51, !alias.scope !837
  %i.ct = load i16, ptr %i.ch, align 2, !tbaa !51, !alias.scope !837
  %i.cu = load i16, ptr %i.cj, align 2, !tbaa !51, !alias.scope !837
  %i.cv = load i16, ptr %i.cl, align 2, !tbaa !51, !alias.scope !837
  %i.cw = load i16, ptr %i.cn, align 2, !tbaa !51, !alias.scope !837
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !51, !alias.scope !837
  %i.cy = insertelement <8 x i16> poison, i16 %i.cq, i64 0
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 1
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 2
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 3
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 4
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 5
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 6
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 7
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.ce, i64 14
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 26
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cm, i64 38
  %i.dn = getelementptr inbounds nuw i8, ptr %i.co, i64 44
  %i.do = load i16, ptr %i.dg, align 2, !tbaa !51, !alias.scope !837
  %i.dp = load i16, ptr %i.dh, align 2, !tbaa !51, !alias.scope !837
  %i.dq = load i16, ptr %i.di, align 2, !tbaa !51, !alias.scope !837
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !51, !alias.scope !837
  %i.ds = load i16, ptr %i.dk, align 2, !tbaa !51, !alias.scope !837
  %i.dt = load i16, ptr %i.dl, align 2, !tbaa !51, !alias.scope !837
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !51, !alias.scope !837
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !51, !alias.scope !837
  %i.dw = insertelement <8 x i16> poison, i16 %i.do, i64 0
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 1
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 2
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 3
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 4
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 5
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 6
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 22
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ci, i64 28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ck, i64 34
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.el = getelementptr inbounds nuw i8, ptr %i.co, i64 46
  %i.em = load i16, ptr %i.ee, align 2, !tbaa !51, !alias.scope !837
  %i.en = load i16, ptr %i.ef, align 2, !tbaa !51, !alias.scope !837
  %i.eo = load i16, ptr %i.eg, align 2, !tbaa !51, !alias.scope !837
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !51, !alias.scope !837
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !51, !alias.scope !837
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !51, !alias.scope !837
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !51, !alias.scope !837
  %i.et = load i16, ptr %i.el, align 2, !tbaa !51, !alias.scope !837
  %i.eu = insertelement <8 x i16> poison, i16 %i.em, i64 0
  %i.ev = insertelement <8 x i16> %i.eu, i16 %i.en, i64 1
  %i.ew = insertelement <8 x i16> %i.ev, i16 %i.eo, i64 2
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 3
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 4
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 5
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 6
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 7
  %i.fc = zext <8 x i16> %i.df to <8 x i32>
  %i.fd = zext <8 x i16> %i.ed to <8 x i32>       ; 3 uses
  %i.fe = zext <8 x i16> %i.fb to <8 x i32>
  %8 = shl <8 x i32> %i.fd, %broadcast.splat176
  %i.ff = sub nsw <8 x i32> %i.fc, %i.fd
  %i.fg = shl <8 x i32> %i.ff, %broadcast.splat176
  %i.fh = sub nsw <8 x i32> %i.fe, %i.fd
  %i.fi = shl <8 x i32> %i.fh, %broadcast.splat176
  %i.fj = and <8 x i32> %i.fg, splat (i32 65535)
  %i.fk = xor <8 x i32> %i.fj, splat (i32 32768)
  %9 = and <8 x i32> %8, splat (i32 65535)
  %i.fl = and <8 x i32> %i.fi, splat (i32 65535)
  %i.fm = xor <8 x i32> %i.fl, splat (i32 32768)
  %10 = lshr <8 x i32> %i.fk, %broadcast.splat176
  %i.fn = lshr <8 x i32> %9, %broadcast.splat176
  %i.fo = lshr <8 x i32> %i.fm, %broadcast.splat176
  %i.fp = trunc nuw <8 x i32> %10 to <8 x i16>
  %11 = trunc nuw <8 x i32> %i.fn to <8 x i16>
  %i.fq = trunc nuw <8 x i32> %i.fo to <8 x i16>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index178
  store <8 x i16> %i.fp, ptr %i.fr, align 2, !tbaa !245, !alias.scope !838, !noalias !839
  %i.fs = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index178
  store <8 x i16> %11, ptr %i.fs, align 2, !tbaa !245, !alias.scope !840, !noalias !841
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep23.i, i64 %index178
  store <8 x i16> %i.fq, ptr %i.ft, align 2, !tbaa !245, !alias.scope !842, !noalias !837
  %index.next179 = add nuw i64 %index178, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.fu, label %middle.block180, label %vector.body177, !llvm.loop !826

middle.block180:                                  ; preds = %vector.body177
  %cmp.n181 = icmp eq i64 %n.vec174, %wide.trip.count.i18
  br i1 %cmp.n181, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck149, %.lr.ph.i17, %middle.block180
  %indvars.iv.i19.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %.lr.ph.i17 ], [ %n.vec174, %middle.block180 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i22, %scalar.ph147 ], [ %indvars.iv.i19.ph, %scalar.ph147.preheader ] ; 5 uses
  %i.fv = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %indvars.iv.i19 ; 3 uses
  %.sroa.01.0.copyload.i = load i16, ptr %i.fv, align 2, !tbaa !51
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 2
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2, !tbaa !51
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %.sroa.53.0.copyload.i = load i16, ptr %.sroa.53.0..sroa_idx.i, align 2, !tbaa !51
  %i.fw = zext i16 %.sroa.01.0.copyload.i to i32
  %i.fx = zext i16 %.sroa.42.0.copyload.i to i32  ; 3 uses
  %i.fy = zext i16 %.sroa.53.0.copyload.i to i32
  %12 = shl i32 %i.fx, %i.bn
  %i.fz = sub nsw i32 %i.fw, %i.fx
  %i.ga = shl i32 %i.fz, %i.bn
  %i.gb = sub nsw i32 %i.fy, %i.fx
  %i.gc = shl i32 %i.gb, %i.bn
  %i.gd = and i32 %i.ga, 65535
  %.sroa.0.0.insert.insert.i.i.i20 = xor i32 %i.gd, 32768
  %13 = and i32 %12, 65535
  %i.ge = and i32 %i.gc, 65535
  %.sroa.5.0.extract.trunc.i.i21 = xor i32 %i.ge, 32768
  %14 = lshr i32 %.sroa.0.0.insert.insert.i.i.i20, %i.bn
  %i.gf = lshr i32 %13, %i.bn
  %i.gg = lshr i32 %.sroa.5.0.extract.trunc.i.i21, %i.bn
  %.sroa.0.0.extract.trunc.i = trunc nuw i32 %14 to i16
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %i.gf to i16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %i.gg to i16
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i19
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.gh, align 2, !tbaa !245
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i19
  store i16 %.sroa.4.0.extract.trunc.i, ptr %gep.i, align 2, !tbaa !245
  %gep24.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep23.i, i64 %indvars.iv.i19
  store i16 %.sroa.5.0.extract.trunc.i, ptr %gep24.i, align 2, !tbaa !245
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i18
  br i1 %exitcond.not.i23, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph147, !llvm.loop !827

bb.h:                                             ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !102
  %i.gk = icmp eq i32 %i.gj, 1
  br i1 %i.gk, label %bb.i, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

bb.i:                                             ; preds = %bb.h
  %i.gl = tail call i32 @llvm.smin.i32(i32 %4, i32 %3) ; 3 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  br i1 %i.gm, label %.lr.ph.i24, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.i24:                                       ; preds = %bb.i
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !836 ; 7 uses
  %i.gp = shl i32 %4, 1
  %i.gq = mul i32 %4, 3
  %i.gr = sext i32 %4 to i64                      ; 2 uses
  %i.gs = zext i32 %i.gp to i64                   ; 2 uses
  %i.gt = zext i32 %i.gq to i64                   ; 2 uses
  %wide.trip.count.i25 = zext nneg i32 %i.gl to i64 ; 8 uses
  %invariant.gep.i26 = getelementptr [2 x i8], ptr %2, i64 %i.gr ; 6 uses
  %invariant.gep25.i = getelementptr [2 x i8], ptr %2, i64 %i.gs ; 6 uses
  %invariant.gep27.i = getelementptr [2 x i8], ptr %2, i64 %i.gt ; 6 uses
  %min.iters.check = icmp ult i32 %i.gl, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24
  %i.gu = shl nuw nsw i64 %wide.trip.count.i25, 1
  %i.gv = getelementptr i8, ptr %2, i64 %i.gu     ; 4 uses
  %i.gw = add nsw i64 %i.gr, %wide.trip.count.i25
  %i.gx = shl nsw i64 %i.gw, 1
  %i.gy = getelementptr i8, ptr %2, i64 %i.gx     ; 4 uses
  %i.gz = add nuw nsw i64 %wide.trip.count.i25, %i.gs
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = getelementptr i8, ptr %2, i64 %i.ha     ; 4 uses
  %i.hc = add nuw nsw i64 %wide.trip.count.i25, %i.gt
  %i.hd = shl nuw nsw i64 %i.hc, 1
  %i.he = getelementptr i8, ptr %2, i64 %i.hd     ; 4 uses
  %i.hf = shl nuw nsw i64 %wide.trip.count.i25, 3
  %i.hg = getelementptr i8, ptr %.0, i64 %i.hf    ; 4 uses
  %bound0 = icmp ult ptr %2, %i.gy
  %bound1 = icmp ult ptr %invariant.gep.i26, %i.gv
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %2, %i.hb
  %bound186 = icmp ult ptr %invariant.gep25.i, %i.gv
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %2, %i.he
  %bound189 = icmp ult ptr %invariant.gep27.i, %i.gv
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %2, %i.hg
  %bound193 = icmp ult ptr %.0, %i.gv
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %invariant.gep.i26, %i.hb
  %bound197 = icmp ult ptr %invariant.gep25.i, %i.gy
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %invariant.gep.i26, %i.he
  %bound1101 = icmp ult ptr %invariant.gep27.i, %i.gy
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %invariant.gep.i26, %i.hg
  %bound1105 = icmp ult ptr %.0, %i.gy
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %invariant.gep25.i, %i.he
  %bound1109 = icmp ult ptr %invariant.gep27.i, %i.hb
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %invariant.gep25.i, %i.hg
  %bound1113 = icmp ult ptr %.0, %i.hb
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %invariant.gep27.i, %i.hg
  %bound1117 = icmp ult ptr %.0, %i.he
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i25, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.go, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 13 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.hw = load i16, ptr %i.hh, align 2, !alias.scope !843
  %i.hx = load i16, ptr %i.hj, align 2, !alias.scope !843
  %i.hy = load i16, ptr %i.hl, align 2, !alias.scope !843
  %i.hz = load i16, ptr %i.hn, align 2, !alias.scope !843
  %i.ia = load i16, ptr %i.hp, align 2, !alias.scope !843
  %i.ib = load i16, ptr %i.hr, align 2, !alias.scope !843
  %i.ic = load i16, ptr %i.ht, align 2, !alias.scope !843
  %i.id = load i16, ptr %i.hv, align 2, !alias.scope !843
  %i.ie = insertelement <8 x i16> poison, i16 %i.hw, i64 0
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 1
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 2
  %i.ih = insertelement <8 x i16> %i.ig, i16 %i.hz, i64 3
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ia, i64 4
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.ib, i64 5
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.ic, i64 6
  %i.il = insertelement <8 x i16> %i.ik, i16 %i.id, i64 7
  %i.im = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  %i.in = getelementptr inbounds nuw i8, ptr %i.hi, i64 10
  %i.io = getelementptr inbounds nuw i8, ptr %i.hk, i64 18
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hm, i64 26
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ho, i64 34
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hq, i64 42
  %i.is = getelementptr inbounds nuw i8, ptr %i.hs, i64 50
  %i.it = getelementptr inbounds nuw i8, ptr %i.hu, i64 58
  %i.iu = load i16, ptr %i.im, align 2, !alias.scope !843
  %i.iv = load i16, ptr %i.in, align 2, !alias.scope !843
  %i.iw = load i16, ptr %i.io, align 2, !alias.scope !843
  %i.ix = load i16, ptr %i.ip, align 2, !alias.scope !843
  %i.iy = load i16, ptr %i.iq, align 2, !alias.scope !843
  %i.iz = load i16, ptr %i.ir, align 2, !alias.scope !843
  %i.ja = load i16, ptr %i.is, align 2, !alias.scope !843
  %i.jb = load i16, ptr %i.it, align 2, !alias.scope !843
  %i.jc = insertelement <8 x i16> poison, i16 %i.iu, i64 0
  %i.jd = insertelement <8 x i16> %i.jc, i16 %i.iv, i64 1
  %i.je = insertelement <8 x i16> %i.jd, i16 %i.iw, i64 2
  %i.jf = insertelement <8 x i16> %i.je, i16 %i.ix, i64 3
  %i.jg = insertelement <8 x i16> %i.jf, i16 %i.iy, i64 4
  %i.jh = insertelement <8 x i16> %i.jg, i16 %i.iz, i64 5
  %i.ji = insertelement <8 x i16> %i.jh, i16 %i.ja, i64 6
  %i.jj = insertelement <8 x i16> %i.ji, i16 %i.jb, i64 7
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hi, i64 12
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hk, i64 20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.hm, i64 28
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ho, i64 36
  %i.jp = getelementptr inbounds nuw i8, ptr %i.hq, i64 44
  %i.jq = getelementptr inbounds nuw i8, ptr %i.hs, i64 52
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hu, i64 60
  %i.js = load i16, ptr %i.jk, align 2, !alias.scope !843
  %i.jt = load i16, ptr %i.jl, align 2, !alias.scope !843
  %i.ju = load i16, ptr %i.jm, align 2, !alias.scope !843
  %i.jv = load i16, ptr %i.jn, align 2, !alias.scope !843
  %i.jw = load i16, ptr %i.jo, align 2, !alias.scope !843
  %i.jx = load i16, ptr %i.jp, align 2, !alias.scope !843
  %i.jy = load i16, ptr %i.jq, align 2, !alias.scope !843
  %i.jz = load i16, ptr %i.jr, align 2, !alias.scope !843
  %i.ka = insertelement <8 x i16> poison, i16 %i.js, i64 0
  %i.kb = insertelement <8 x i16> %i.ka, i16 %i.jt, i64 1
  %i.kc = insertelement <8 x i16> %i.kb, i16 %i.ju, i64 2
  %i.kd = insertelement <8 x i16> %i.kc, i16 %i.jv, i64 3
  %i.ke = insertelement <8 x i16> %i.kd, i16 %i.jw, i64 4
  %i.kf = insertelement <8 x i16> %i.ke, i16 %i.jx, i64 5
  %i.kg = insertelement <8 x i16> %i.kf, i16 %i.jy, i64 6
  %i.kh = insertelement <8 x i16> %i.kg, i16 %i.jz, i64 7
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hh, i64 6
  %i.kj = getelementptr inbounds nuw i8, ptr %i.hi, i64 14
  %i.kk = getelementptr inbounds nuw i8, ptr %i.hk, i64 22
  %i.kl = getelementptr inbounds nuw i8, ptr %i.hm, i64 30
  %i.km = getelementptr inbounds nuw i8, ptr %i.ho, i64 38
  %i.kn = getelementptr inbounds nuw i8, ptr %i.hq, i64 46
  %i.ko = getelementptr inbounds nuw i8, ptr %i.hs, i64 54
  %i.kp = getelementptr inbounds nuw i8, ptr %i.hu, i64 62
  %i.kq = load i16, ptr %i.ki, align 2, !alias.scope !843
  %i.kr = load i16, ptr %i.kj, align 2, !alias.scope !843
  %i.ks = load i16, ptr %i.kk, align 2, !alias.scope !843
  %i.kt = load i16, ptr %i.kl, align 2, !alias.scope !843
  %i.ku = load i16, ptr %i.km, align 2, !alias.scope !843
  %i.kv = load i16, ptr %i.kn, align 2, !alias.scope !843
  %i.kw = load i16, ptr %i.ko, align 2, !alias.scope !843
  %i.kx = load i16, ptr %i.kp, align 2, !alias.scope !843
  %i.ky = insertelement <8 x i16> poison, i16 %i.kq, i64 0
  %i.kz = insertelement <8 x i16> %i.ky, i16 %i.kr, i64 1
  %i.la = insertelement <8 x i16> %i.kz, i16 %i.ks, i64 2
  %i.lb = insertelement <8 x i16> %i.la, i16 %i.kt, i64 3
  %i.lc = insertelement <8 x i16> %i.lb, i16 %i.ku, i64 4
  %i.ld = insertelement <8 x i16> %i.lc, i16 %i.kv, i64 5
  %i.le = insertelement <8 x i16> %i.ld, i16 %i.kw, i64 6
  %i.lf = insertelement <8 x i16> %i.le, i16 %i.kx, i64 7
  %i.lg = zext <8 x i16> %i.il to <8 x i32>
  %i.lh = zext <8 x i16> %i.jj to <8 x i32>       ; 3 uses
  %i.li = zext <8 x i16> %i.kh to <8 x i32>
  %15 = shl <8 x i32> %i.lh, %broadcast.splat
  %i.lj = sub nsw <8 x i32> %i.lg, %i.lh
  %i.lk = shl <8 x i32> %i.lj, %broadcast.splat
  %i.ll = sub nsw <8 x i32> %i.li, %i.lh
  %i.lm = shl <8 x i32> %i.ll, %broadcast.splat
  %i.ln = and <8 x i32> %i.lk, splat (i32 65535)
  %i.lo = xor <8 x i32> %i.ln, splat (i32 32768)
  %16 = and <8 x i32> %15, splat (i32 65535)
  %i.lp = and <8 x i32> %i.lm, splat (i32 65535)
  %i.lq = xor <8 x i32> %i.lp, splat (i32 32768)
  %17 = lshr <8 x i32> %i.lo, %broadcast.splat
  %i.lr = lshr <8 x i32> %16, %broadcast.splat
  %i.ls = lshr <8 x i32> %i.lq, %broadcast.splat
  %i.lt = trunc nuw <8 x i32> %17 to <8 x i16>
  %i.lu = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  store <8 x i16> %i.lt, ptr %i.lu, align 2, !tbaa !245, !alias.scope !844, !noalias !845
  %18 = trunc nuw <8 x i32> %i.lr to <8 x i16>
  %i.lv = getelementptr [2 x i8], ptr %invariant.gep.i26, i64 %index
  store <8 x i16> %18, ptr %i.lv, align 2, !tbaa !245, !alias.scope !846, !noalias !847
  %i.lw = trunc nuw <8 x i32> %i.ls to <8 x i16>
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep25.i, i64 %index
  store <8 x i16> %i.lw, ptr %i.lx, align 2, !tbaa !245, !alias.scope !848, !noalias !849
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep27.i, i64 %index
  store <8 x i16> %i.lf, ptr %i.ly, align 2, !tbaa !245, !alias.scope !850, !noalias !843
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.lz = icmp eq i64 %index.next, %n.vec
  br i1 %i.lz, label %middle.block, label %vector.body, !llvm.loop !834

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i25
  br i1 %cmp.n, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i24, %middle.block
  %indvars.iv.i27.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i24 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i33, %scalar.ph ], [ %indvars.iv.i27.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.i27 ; 4 uses
  %.sroa.01.0.copyload.i28 = load i16, ptr %i.ma, align 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ma, i64 6
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..sroa_idx.i, align 2
  %i.mb = zext i16 %.sroa.01.0.copyload.i28 to i32
  %i.mc = zext i16 %.sroa.4.0.copyload.i to i32   ; 3 uses
  %i.md = zext i16 %.sroa.5.0.copyload.i to i32
  %19 = shl i32 %i.mc, %i.go
  %i.me = sub nsw i32 %i.mb, %i.mc
  %i.mf = shl i32 %i.me, %i.go
  %i.mg = sub nsw i32 %i.md, %i.mc
  %i.mh = shl i32 %i.mg, %i.go
  %i.mi = and i32 %i.mf, 65535
  %.sroa.0.0.insert.insert.i.i.i29 = xor i32 %i.mi, 32768
  %20 = and i32 %19, 65535
  %i.mj = and i32 %i.mh, 65535
  %.sroa.5.0.extract.trunc.i.i30 = xor i32 %i.mj, 32768
  %21 = lshr i32 %.sroa.0.0.insert.insert.i.i.i29, %i.go
  %i.mk = lshr i32 %20, %i.go
  %i.ml = lshr i32 %.sroa.5.0.extract.trunc.i.i30, %i.go
  %.sroa.0.0.extract.trunc.i31 = trunc nuw i32 %21 to i16
  %i.mm = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i27
  store i16 %.sroa.0.0.extract.trunc.i31, ptr %i.mm, align 2, !tbaa !245
  %.sroa.0.2.extract.trunc.i = trunc nuw i32 %i.mk to i16
  %gep.i32 = getelementptr [2 x i8], ptr %invariant.gep.i26, i64 %indvars.iv.i27
  store i16 %.sroa.0.2.extract.trunc.i, ptr %gep.i32, align 2, !tbaa !245
  %.sroa.0.4.extract.trunc.i = trunc nuw i32 %i.ml to i16
  %gep26.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.i27
  store i16 %.sroa.0.4.extract.trunc.i, ptr %gep26.i, align 2, !tbaa !245
  %gep28.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i27
  store i16 %.sroa.6.0.copyload.i, ptr %gep28.i, align 2, !tbaa !245
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i25
  br i1 %exitcond.not.i34, label %_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph, !llvm.loop !835

_Z13TransformLineI16TransformShiftedI12TransformHp1ItEEtEvP7TripletIT0_EPKS6_iRT_.exit: ; preds = %scalar.ph, %scalar.ph147, %.lr.ph.i15, %middle.block, %middle.block180, %bb.i, %bb.g, %bb.f, %_Z17TransformRgbToBgrItEvPT_ii.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE9TransformEPNSt3__115basic_streambufIcNS5_11char_traitsIcEEEEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !331, !nonnull !177, !align !302 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = mul nsw i32 %i.d, %3                     ; 2 uses
  %.not27 = icmp eq i32 %i.e, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = sub nsw i64 %.01928, %i.n                ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !851

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01928 = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !235
  %i.k = load ptr, ptr %1, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.j, i64 noundef %.01928), !inline_history !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.9, i64 noundef 57)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.h

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.r = call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.f unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_Z17CreateSystemErrorN6charls9ApiResultERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr dead_on_unwind writable sret(%"class.std::__1::system_error") align 8 %i.r, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
          to label %bb.n unwind label %bb.i

bb.h:                                             ; preds = %bb.d, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load i8, ptr %6, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = load i64, ptr %6, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %i.t, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.u, %.split ]
  call void @__cxa_free_exception(ptr %i.r) #23
  br label %bb.k

bb.k:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn26, %bb.j ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.s, %bb.h ], [ %i.u, %.split ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !331
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242
  %i.ae = icmp eq i32 %i.ad, 536870912
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.aj = shl i32 %3, 1
  %i.ak = mul i32 %i.aj, %i.ai
  tail call void @_Z8ByteSwapPhi(ptr noundef nonnull %i.ag, i32 noundef %i.ak)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !235
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp1ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.am, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret void

bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #26
  br label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #26, !inline_history !852
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 4 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #26, !inline_history !852
  br label %_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEED2Ev.exit

_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEED2Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE14NewLineDecodedEPKvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337, !nonnull !177, !align !302
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !103
  %i.g = mul nsw i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !235
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef nonnull %i.k, i32 noundef %2, i32 noundef %3)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !337, !nonnull !177, !align !302 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !242
  %i.o = icmp eq i32 %i.n, 536870912
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !103
  %i.s = shl i32 %2, 1
  %i.t = mul i32 %i.s, %i.r
  tail call void @_Z8ByteSwapPhi(ptr noundef nonnull %i.p, i32 noundef %i.t)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !235
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull %i.v, i64 noundef %i.i), !inline_history !6
  %.not13 = icmp eq i64 %i.z, %i.i
  br i1 %.not13, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z22CharLSCategoryInstancev() ; 0 uses
  invoke void @_ZNSt3__112system_errorC1EiRKNS_14error_categoryE(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) @_ZZ22CharLSCategoryInstancevE8instance)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aa) #23
  resume { ptr, i32 } %i.ac

bb.h:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !338
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %i.ae, i32 noundef %2, i32 noundef %3)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !337, !nonnull !177, !align !302
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !241
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !338
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !338
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE16NewLineRequestedEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !338
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %i.d, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !337, !nonnull !177, !align !302
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !241
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !338
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store ptr %i.k, ptr %i.c, align 8, !tbaa !338
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE9TransformEPNSt3__115basic_streambufIcNS5_11char_traitsIcEEEEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.b, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE15DecodeTransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !177, !align !302 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  switch i32 %i.d, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit [
    i32 3, label %bb.b
    i32 4, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !102
  %i.g = icmp eq i32 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = icmp sgt i32 %3, 0
  br i1 %i.i, label %.lr.ph.preheader.i, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [6 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !51
  %i.l = zext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !51
  %i.o = zext i16 %i.n to i32                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.q = load i16, ptr %i.p, align 2, !tbaa !51
  %i.r = zext i16 %i.q to i32
  %i.s = load i32, ptr %i.h, align 8, !tbaa !283  ; 6 uses
  %i.t = shl i32 %i.o, %i.s
  %i.u = shl i32 %i.r, %i.s
  %i.v = add nuw nsw i32 %i.o, %i.l
  %i.w = shl i32 %i.v, %i.s
  %i.x = and i32 %i.w, 65535
  %i.y = xor i32 %i.x, 32768                      ; 2 uses
  %i.z = and i32 %i.t, 65535                      ; 2 uses
  %i.aa = add nuw nsw i32 %i.y, %i.z
  %i.ab = lshr i32 %i.aa, 1
  %i.ac = add nsw i32 %i.ab, %i.u
  %i.ad = and i32 %i.ac, 65535
  %.sroa.5.0.extract.trunc.i.i = xor i32 %i.ad, 32768
  %i.ae = lshr i32 %i.y, %i.s
  %i.af = lshr i32 %i.z, %i.s
  %i.ag = lshr i32 %.sroa.5.0.extract.trunc.i.i, %i.s
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.ag to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.ah = shl nuw i32 %i.af, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.ah to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.ae to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ai = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.ai, align 2, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %.lr.ph.i, !llvm.loop !853

bb.d:                                             ; preds = %bb.b
  %i.aj = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i13, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

.lr.ph.i13:                                       ; preds = %bb.d
  %i.al = shl nuw nsw i32 %4, 1
  %i.am = sext i32 %4 to i64                      ; 2 uses
  %i.an = zext nneg i32 %i.al to i64              ; 2 uses
  %wide.trip.count.i14 = zext nneg i32 %i.aj to i64 ; 7 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %1, i64 %i.am ; 3 uses
  %invariant.gep20.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.an ; 3 uses
  %min.iters.check111 = icmp ult i32 %i.aj, 10
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.memcheck112

vector.memcheck112:                               ; preds = %.lr.ph.i13
  %i.ao = mul nuw nsw i64 %wide.trip.count.i14, 6
  %i.ap = getelementptr i8, ptr %2, i64 %i.ao     ; 4 uses
  %i.aq = shl nuw nsw i64 %wide.trip.count.i14, 1
  %i.ar = add nuw nsw i64 %wide.trip.count.i14, %i.an
  %i.as = shl nuw nsw i64 %i.ar, 1
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  %i.au = add nsw i64 %i.am, %wide.trip.count.i14
  %i.av = shl nsw i64 %i.au, 1
  %i.aw = getelementptr i8, ptr %1, i64 %i.av
  %i.ax = getelementptr i8, ptr %1, i64 %i.aq
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 76
  %bound0113 = icmp ult ptr %2, %i.at
  %bound1114 = icmp ult ptr %invariant.gep20.i, %i.ap
  %found.conflict115 = and i1 %bound0113, %bound1114
  %bound0116 = icmp ult ptr %2, %i.aw
  %bound1117 = icmp ult ptr %invariant.gep.i, %i.ap
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict115, %found.conflict118
  %bound0120 = icmp ult ptr %2, %i.ax
  %bound1121 = icmp ult ptr %1, %i.ap
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx123 = or i1 %conflict.rdx119, %found.conflict122
  %bound0124 = icmp ult ptr %2, %i.ay
  %bound1125 = icmp ult ptr %i.h, %i.ap
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx127 = or i1 %conflict.rdx123, %found.conflict126
  br i1 %conflict.rdx127, label %scalar.ph110.preheader, label %vector.ph128

vector.ph128:                                     ; preds = %vector.memcheck112
  %n.vec129 = and i64 %wide.trip.count.i14, 2147483646 ; 3 uses
  %i.az = load <1 x i32>, ptr %i.h, align 8
  %broadcast.splat136 = shufflevector <1 x i32> %i.az, <1 x i32> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next137, %vector.body130 ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index131
  %wide.load132 = load <2 x i16>, ptr %i.ba, align 2, !tbaa !245, !alias.scope !872
  %i.bb = zext <2 x i16> %wide.load132 to <2 x i32>
  %i.bc = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index131
  %wide.load133 = load <2 x i16>, ptr %i.bc, align 2, !tbaa !245, !alias.scope !873
  %i.bd = zext <2 x i16> %wide.load133 to <2 x i32> ; 2 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep20.i, i64 %index131
  %wide.load134 = load <2 x i16>, ptr %i.be, align 2, !tbaa !245, !alias.scope !874
  %i.bf = zext <2 x i16> %wide.load134 to <2 x i32>
  %i.bg = shl <2 x i32> %i.bd, %broadcast.splat136
  %i.bh = shl <2 x i32> %i.bf, %broadcast.splat136
  %i.bi = add nuw nsw <2 x i32> %i.bd, %i.bb
  %i.bj = shl <2 x i32> %i.bi, %broadcast.splat136
  %i.bk = and <2 x i32> %i.bj, splat (i32 65535)
  %i.bl = xor <2 x i32> %i.bk, splat (i32 32768)  ; 2 uses
  %i.bm = and <2 x i32> %i.bg, splat (i32 65535)  ; 2 uses
  %i.bn = add nuw nsw <2 x i32> %i.bl, %i.bm
  %i.bo = lshr <2 x i32> %i.bn, splat (i32 1)
  %i.bp = add nsw <2 x i32> %i.bo, %i.bh
  %i.bq = and <2 x i32> %i.bp, splat (i32 65535)
  %i.br = xor <2 x i32> %i.bq, splat (i32 32768)
  %i.bs = lshr <2 x i32> %i.bl, %broadcast.splat136
  %5 = lshr <2 x i32> %i.bm, %broadcast.splat136
  %i.bt = lshr <2 x i32> %i.br, %broadcast.splat136
  %i.bu = zext nneg <2 x i32> %i.bt to <2 x i48>
  %i.bv = shl nuw <2 x i48> %i.bu, splat (i48 32)
  %i.bw = shl nuw <2 x i32> %5, splat (i32 16)
  %i.bx = zext <2 x i32> %i.bw to <2 x i48>
  %i.by = or disjoint <2 x i48> %i.bv, %i.bx
  %i.bz = zext nneg <2 x i32> %i.bs to <2 x i48>
  %i.ca = or disjoint <2 x i48> %i.by, %i.bz      ; 2 uses
  %i.cb = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %index131
  %i.cc = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %index131
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  %i.ce = extractelement <2 x i48> %i.ca, i64 0
  store i48 %i.ce, ptr %i.cb, align 2, !tbaa !51, !alias.scope !875, !noalias !876
  %i.cf = extractelement <2 x i48> %i.ca, i64 1
  store i48 %i.cf, ptr %i.cd, align 2, !tbaa !51, !alias.scope !875, !noalias !876
  %index.next137 = add nuw i64 %index131, 2       ; 2 uses
  %i.cg = icmp eq i64 %index.next137, %n.vec129
  br i1 %i.cg, label %middle.block138, label %vector.body130, !llvm.loop !860

middle.block138:                                  ; preds = %vector.body130
  %cmp.n139 = icmp eq i64 %n.vec129, %wide.trip.count.i14
  br i1 %cmp.n139, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %vector.memcheck112, %.lr.ph.i13, %middle.block138
  %indvars.iv.i15.ph = phi i64 [ 0, %vector.memcheck112 ], [ 0, %.lr.ph.i13 ], [ %n.vec129, %middle.block138 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i23, %scalar.ph110 ], [ %indvars.iv.i15.ph, %scalar.ph110.preheader ] ; 5 uses
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i15
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !245
  %i.cj = zext i16 %i.ci to i32
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i15
  %i.ck = load i16, ptr %gep.i, align 2, !tbaa !245
  %i.cl = zext i16 %i.ck to i32                   ; 2 uses
  %gep21.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep20.i, i64 %indvars.iv.i15
  %i.cm = load i16, ptr %gep21.i, align 2, !tbaa !245
  %i.cn = zext i16 %i.cm to i32
  %i.co = load i32, ptr %i.h, align 8, !tbaa !283 ; 6 uses
  %i.cp = shl i32 %i.cl, %i.co
  %i.cq = shl i32 %i.cn, %i.co
  %i.cr = add nuw nsw i32 %i.cl, %i.cj
  %i.cs = shl i32 %i.cr, %i.co
  %i.ct = and i32 %i.cs, 65535
  %i.cu = xor i32 %i.ct, 32768                    ; 2 uses
  %i.cv = and i32 %i.cp, 65535                    ; 2 uses
  %i.cw = add nuw nsw i32 %i.cu, %i.cv
  %i.cx = lshr i32 %i.cw, 1
  %i.cy = add nsw i32 %i.cx, %i.cq
  %i.cz = and i32 %i.cy, 65535
  %.sroa.5.0.extract.trunc.i.i16 = xor i32 %i.cz, 32768
  %i.da = lshr i32 %i.cu, %i.co
  %i.db = lshr i32 %i.cv, %i.co
  %i.dc = lshr i32 %.sroa.5.0.extract.trunc.i.i16, %i.co
  %.sroa.3.0.insert.ext.i.i17 = zext nneg i32 %i.dc to i48
  %.sroa.3.0.insert.shift.i.i18 = shl nuw i48 %.sroa.3.0.insert.ext.i.i17, 32
  %i.dd = shl nuw i32 %i.db, 16
  %.sroa.2.0.insert.shift.i.i19 = zext i32 %i.dd to i48
  %.sroa.2.0.insert.insert.i.i20 = or disjoint i48 %.sroa.3.0.insert.shift.i.i18, %.sroa.2.0.insert.shift.i.i19
  %.sroa.0.0.insert.ext.i.i21 = zext nneg i32 %i.da to i48
  %.sroa.0.0.insert.insert.i.i22 = or disjoint i48 %.sroa.2.0.insert.insert.i.i20, %.sroa.0.0.insert.ext.i.i21
  %i.de = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i15
  store i48 %.sroa.0.0.insert.insert.i.i22, ptr %i.de, align 2, !tbaa !51
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %wide.trip.count.i14
  br i1 %exitcond.not.i24, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph110, !llvm.loop !861

bb.e:                                             ; preds = %bb.a
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !102
  %i.dh = icmp eq i32 %i.dg, 1
  br i1 %i.dh, label %bb.f, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

bb.f:                                             ; preds = %bb.e
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.dj = tail call i32 @llvm.smin.i32(i32 %3, i32 %4) ; 3 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i25, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit

.lr.ph.i25:                                       ; preds = %bb.f
  %i.dl = shl nuw nsw i32 %4, 1
  %i.dm = mul i32 %4, 3
  %i.dn = sext i32 %4 to i64                      ; 2 uses
  %i.do = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dp = zext i32 %i.dm to i64                   ; 2 uses
  %wide.trip.count.i26 = zext nneg i32 %i.dj to i64 ; 8 uses
  %invariant.gep.i27 = getelementptr [2 x i8], ptr %1, i64 %i.dn ; 3 uses
  %invariant.gep24.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.do ; 3 uses
  %invariant.gep26.i = getelementptr [2 x i8], ptr %1, i64 %i.dp ; 3 uses
  %min.iters.check = icmp ult i32 %i.dj, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i25
  %i.dq = shl nuw nsw i64 %wide.trip.count.i26, 3
  %i.dr = getelementptr i8, ptr %2, i64 %i.dq     ; 5 uses
  %i.ds = shl nuw nsw i64 %wide.trip.count.i26, 1
  %i.dt = add nuw nsw i64 %wide.trip.count.i26, %i.dp
  %i.du = shl nuw nsw i64 %i.dt, 1
  %i.dv = getelementptr i8, ptr %1, i64 %i.du
  %i.dw = add nuw nsw i64 %wide.trip.count.i26, %i.do
  %i.dx = shl nuw nsw i64 %i.dw, 1
  %i.dy = getelementptr i8, ptr %1, i64 %i.dx
  %i.dz = add nsw i64 %i.dn, %wide.trip.count.i26
  %i.ea = shl nsw i64 %i.dz, 1
  %i.eb = getelementptr i8, ptr %1, i64 %i.ea
  %i.ec = getelementptr i8, ptr %1, i64 %i.ds
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 76
  %bound0 = icmp ult ptr %2, %i.dv
  %bound1 = icmp ult ptr %invariant.gep26.i, %i.dr
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %2, %i.dy
  %bound173 = icmp ult ptr %invariant.gep24.i, %i.dr
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %bound075 = icmp ult ptr %2, %i.eb
  %bound176 = icmp ult ptr %invariant.gep.i27, %i.dr
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx78 = or i1 %conflict.rdx, %found.conflict77
  %bound079 = icmp ult ptr %2, %i.ec
  %bound180 = icmp ult ptr %1, %i.dr
  %found.conflict81 = and i1 %bound079, %bound180
  %conflict.rdx82 = or i1 %conflict.rdx78, %found.conflict81
  %bound083 = icmp ult ptr %2, %i.ed
  %bound184 = icmp ult ptr %i.di, %i.dr
  %found.conflict85 = and i1 %bound083, %bound184
  %conflict.rdx86 = or i1 %conflict.rdx82, %found.conflict85
  br i1 %conflict.rdx86, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i26, 2147483646 ; 3 uses
  %i.ee = load <1 x i32>, ptr %i.di, align 8
  %broadcast.splat = shufflevector <1 x i32> %i.ee, <1 x i32> poison, <2 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %index
  %wide.load = load <2 x i16>, ptr %i.ef, align 2, !tbaa !245, !alias.scope !877
  %i.eg = zext <2 x i16> %wide.load to <2 x i32>
  %i.eh = getelementptr [2 x i8], ptr %invariant.gep.i27, i64 %index
  %wide.load87 = load <2 x i16>, ptr %i.eh, align 2, !tbaa !245, !alias.scope !878
  %i.ei = zext <2 x i16> %wide.load87 to <2 x i32> ; 2 uses
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep24.i, i64 %index
  %wide.load88 = load <2 x i16>, ptr %i.ej, align 2, !tbaa !245, !alias.scope !879
  %i.ek = zext <2 x i16> %wide.load88 to <2 x i32>
  %i.el = shl <2 x i32> %i.ei, %broadcast.splat
  %i.em = shl <2 x i32> %i.ek, %broadcast.splat
  %i.en = add nuw nsw <2 x i32> %i.ei, %i.eg
  %i.eo = shl <2 x i32> %i.en, %broadcast.splat
  %i.ep = and <2 x i32> %i.eo, splat (i32 65535)
  %i.eq = xor <2 x i32> %i.ep, splat (i32 32768)  ; 2 uses
  %i.er = and <2 x i32> %i.el, splat (i32 65535)  ; 2 uses
  %i.es = add nuw nsw <2 x i32> %i.eq, %i.er
  %i.et = lshr <2 x i32> %i.es, splat (i32 1)
  %i.eu = add nsw <2 x i32> %i.et, %i.em
  %i.ev = and <2 x i32> %i.eu, splat (i32 65535)
  %i.ew = xor <2 x i32> %i.ev, splat (i32 32768)
  %i.ex = lshr <2 x i32> %i.eq, %broadcast.splat
  %6 = lshr <2 x i32> %i.er, %broadcast.splat
  %i.ey = lshr <2 x i32> %i.ew, %broadcast.splat
  %i.ez = zext nneg <2 x i32> %i.ey to <2 x i64>
  %i.fa = shl nuw nsw <2 x i64> %i.ez, splat (i64 32)
  %i.fb = shl nuw <2 x i32> %6, splat (i32 16)
  %i.fc = zext <2 x i32> %i.fb to <2 x i64>
  %i.fd = or disjoint <2 x i64> %i.fa, %i.fc
  %i.fe = zext nneg <2 x i32> %i.ex to <2 x i64>
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep26.i, i64 %index
  %wide.load89 = load <2 x i16>, ptr %i.ff, align 2, !tbaa !245, !alias.scope !880
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index
  %i.fh = zext <2 x i16> %wide.load89 to <2 x i64>
  %i.fi = shl nuw <2 x i64> %i.fh, splat (i64 48)
  %i.fj = or disjoint <2 x i64> %i.fd, %i.fe
  %i.fk = or <2 x i64> %i.fj, %i.fi
  store <2 x i64> %i.fk, ptr %i.fg, align 2, !alias.scope !881, !noalias !882
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.fl = icmp eq i64 %index.next, %n.vec
  br i1 %i.fl, label %middle.block, label %vector.body, !llvm.loop !869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i26
  br i1 %cmp.n, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i25, %middle.block
  %indvars.iv.i28.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i25 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i36, %scalar.ph ], [ %indvars.iv.i28.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i28
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !245
  %i.fo = zext i16 %i.fn to i32
  %gep.i29 = getelementptr [2 x i8], ptr %invariant.gep.i27, i64 %indvars.iv.i28
  %i.fp = load i16, ptr %gep.i29, align 2, !tbaa !245
  %i.fq = zext i16 %i.fp to i32                   ; 2 uses
  %gep25.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep24.i, i64 %indvars.iv.i28
  %i.fr = load i16, ptr %gep25.i, align 2, !tbaa !245
  %i.fs = zext i16 %i.fr to i32
  %i.ft = load i32, ptr %i.di, align 8, !tbaa !283 ; 6 uses
  %i.fu = shl i32 %i.fq, %i.ft
  %i.fv = shl i32 %i.fs, %i.ft
  %i.fw = add nuw nsw i32 %i.fq, %i.fo
  %i.fx = shl i32 %i.fw, %i.ft
  %i.fy = and i32 %i.fx, 65535
  %i.fz = xor i32 %i.fy, 32768                    ; 2 uses
  %i.ga = and i32 %i.fu, 65535                    ; 2 uses
  %i.gb = add nuw nsw i32 %i.fz, %i.ga
  %i.gc = lshr i32 %i.gb, 1
  %i.gd = add nsw i32 %i.gc, %i.fv
  %i.ge = and i32 %i.gd, 65535
  %.sroa.5.0.extract.trunc.i.i30 = xor i32 %i.ge, 32768
  %i.gf = lshr i32 %i.fz, %i.ft
  %i.gg = lshr i32 %i.ga, %i.ft
  %i.gh = lshr i32 %.sroa.5.0.extract.trunc.i.i30, %i.ft
  %.sroa.3.0.insert.ext.i.i31 = zext nneg i32 %i.gh to i64
  %.sroa.3.0.insert.shift.i.i32 = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i31, 32
  %i.gi = shl nuw i32 %i.gg, 16
  %.sroa.2.0.insert.shift.i.i33 = zext i32 %i.gi to i64
  %.sroa.2.0.insert.insert.i.i34 = or disjoint i64 %.sroa.3.0.insert.shift.i.i32, %.sroa.2.0.insert.shift.i.i33
  %.sroa.0.0.insert.ext.i.i35 = zext nneg i32 %i.gf to i64
  %gep27.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep26.i, i64 %indvars.iv.i28
  %i.gj = load i16, ptr %gep27.i, align 2, !tbaa !245
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i28
  %.sroa.4.0.insert.ext.i = zext i16 %i.gj to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 48
  %.sroa.0.0.insert.ext.i = or disjoint i64 %.sroa.2.0.insert.insert.i.i34, %.sroa.0.0.insert.ext.i.i35
  %.sroa.0.0.insert.insert.i = or i64 %.sroa.0.0.insert.ext.i, %.sroa.4.0.insert.shift.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.gk, align 2
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i28, 1 ; 2 uses
  %exitcond.not.i37 = icmp eq i64 %indvars.iv.next.i36, %wide.trip.count.i26
  br i1 %exitcond.not.i37, label %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit, label %scalar.ph, !llvm.loop !870

_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit: ; preds = %scalar.ph, %scalar.ph110, %.lr.ph.i, %middle.block, %middle.block138, %bb.f, %bb.d, %bb.a, %bb.e
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !177, !align !302 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gn = load i8, ptr %i.gm, align 8, !tbaa !304
  %.not = icmp ne i8 %i.gn, 0
  %i.go = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.go, %.not
  br i1 %or.cond, label %.lr.ph.i38, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.i38:                                       ; preds = %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !103
  %i.gr = sext i32 %i.gq to i64                   ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.gs = icmp ult i32 %3, 4
  br i1 %i.gs, label %.epil.preheader, label %.lr.ph.i38.new

.lr.ph.i38.new:                                   ; preds = %.lr.ph.i38
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i38.new
  %.067.i = phi ptr [ %2, %.lr.ph.i38.new ], [ %i.hi, %bb.g ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i38.new ], [ %niter.next.3, %bb.g ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.gu = load i16, ptr %.067.i, align 2, !tbaa !245
  %i.gv = load i16, ptr %i.gt, align 2, !tbaa !245
  store i16 %i.gv, ptr %.067.i, align 2, !tbaa !245
  store i16 %i.gu, ptr %i.gt, align 2, !tbaa !245
  %i.gw = getelementptr inbounds [2 x i8], ptr %.067.i, i64 %i.gr ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 4 ; 2 uses
  %i.gy = load i16, ptr %i.gw, align 2, !tbaa !245
  %i.gz = load i16, ptr %i.gx, align 2, !tbaa !245
  store i16 %i.gz, ptr %i.gw, align 2, !tbaa !245
  store i16 %i.gy, ptr %i.gx, align 2, !tbaa !245
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.gw, i64 %i.gr ; 4 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 2 uses
  %i.hc = load i16, ptr %i.ha, align 2, !tbaa !245
  %i.hd = load i16, ptr %i.hb, align 2, !tbaa !245
  store i16 %i.hd, ptr %i.ha, align 2, !tbaa !245
  store i16 %i.hc, ptr %i.hb, align 2, !tbaa !245
  %i.he = getelementptr inbounds [2 x i8], ptr %i.ha, i64 %i.gr ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4 ; 2 uses
  %i.hg = load i16, ptr %i.he, align 2, !tbaa !245
  %i.hh = load i16, ptr %i.hf, align 2, !tbaa !245
  store i16 %i.hh, ptr %i.he, align 2, !tbaa !245
  store i16 %i.hg, ptr %i.hf, align 2, !tbaa !245
  %i.hi = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.gr ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !9

_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %.lr.ph.i38
  %.067.i.epil.init = phi ptr [ %2, %.lr.ph.i38 ], [ %i.hi, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.hm, %bb.h ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 4 ; 2 uses
  %i.hk = load i16, ptr %.067.i.epil, align 2, !tbaa !245
  %i.hl = load i16, ptr %i.hj, align 2, !tbaa !245
  store i16 %i.hl, ptr %.067.i.epil, align 2, !tbaa !245
  store i16 %i.hk, ptr %i.hj, align 2, !tbaa !245
  %i.hm = getelementptr inbounds [2 x i8], ptr %.067.i.epil, i64 %i.gr
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.h, !llvm.loop !871

_Z17TransformRgbToBgrItEvPT_ii.exit:              ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %bb.h, %bb.c, %_Z13TransformLineIN16TransformShiftedI12TransformHp2ItEE7INVERSEEtEvP7TripletIT0_EPKS7_iRT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !177, !align !302 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !304
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !275
  %i.g = sext i32 %3 to i64
  %i.h = mul nsw i64 %i.g, 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.f, ptr align 1 %1, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !275  ; 5 uses
  %i.j = icmp sgt i32 %3, 0
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !337 ; 4 uses
  br i1 %i.j, label %.lr.ph.i, label %_Z17TransformRgbToBgrItEvPT_ii.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !103
  %i.m = sext i32 %i.l to i64                     ; 5 uses
  %xtraiter = and i32 %3, 3                       ; 3 uses
  %i.n = icmp ult i32 %3, 4
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %3, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.new
  %.067.i = phi ptr [ %i.i, %.lr.ph.i.new ], [ %i.ad, %bb.c ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.067.i, i64 4 ; 2 uses
  %i.p = load i16, ptr %.067.i, align 2, !tbaa !245
  %i.q = load i16, ptr %i.o, align 2, !tbaa !245
  store i16 %i.q, ptr %.067.i, align 2, !tbaa !245
  store i16 %i.p, ptr %i.o, align 2, !tbaa !245
  %i.r = getelementptr inbounds [2 x i8], ptr %.067.i, i64 %i.m ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.t = load i16, ptr %i.r, align 2, !tbaa !245
  %i.u = load i16, ptr %i.s, align 2, !tbaa !245
  store i16 %i.u, ptr %i.r, align 2, !tbaa !245
  store i16 %i.t, ptr %i.s, align 2, !tbaa !245
  %i.v = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.x = load i16, ptr %i.v, align 2, !tbaa !245
  %i.y = load i16, ptr %i.w, align 2, !tbaa !245
  store i16 %i.y, ptr %i.v, align 2, !tbaa !245
  store i16 %i.x, ptr %i.w, align 2, !tbaa !245
  %i.z = getelementptr inbounds [2 x i8], ptr %i.v, i64 %i.m ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  %i.ab = load i16, ptr %i.z, align 2, !tbaa !245
  %i.ac = load i16, ptr %i.aa, align 2, !tbaa !245
  store i16 %i.ac, ptr %i.z, align 2, !tbaa !245
  store i16 %i.ab, ptr %i.aa, align 2, !tbaa !245
  %i.ad = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.m ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, label %bb.c, !llvm.loop !9

_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.067.i.epil.init = phi ptr [ %i.i, %.lr.ph.i ], [ %i.ad, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ]
  %lcmp.mod185 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod185)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.067.i.epil = phi ptr [ %.067.i.epil.init, %.epil.preheader ], [ %i.ah, %bb.d ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.067.i.epil, i64 4 ; 2 uses
  %i.af = load i16, ptr %.067.i.epil, align 2, !tbaa !245
  %i.ag = load i16, ptr %i.ae, align 2, !tbaa !245
  store i16 %i.ag, ptr %.067.i.epil, align 2, !tbaa !245
  store i16 %i.af, ptr %i.ae, align 2, !tbaa !245
  %i.ah = getelementptr inbounds [2 x i8], ptr %.067.i.epil, i64 %i.m
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z17TransformRgbToBgrItEvPT_ii.exit, label %bb.d, !llvm.loop !883

_Z17TransformRgbToBgrItEvPT_ii.exit:              ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa, %bb.d, %bb.b, %bb.a
  %i.ai = phi ptr [ %i.b, %bb.a ], [ %.pre, %bb.b ], [ %.pre, %bb.d ], [ %.pre, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ] ; 3 uses
  %.0 = phi ptr [ %1, %bb.a ], [ %i.i, %bb.b ], [ %i.i, %bb.d ], [ %i.i, %_Z17TransformRgbToBgrItEvPT_ii.exit.loopexit.unr-lcssa ] ; 28 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !103
  switch i32 %i.ak, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit [
    i32 3, label %bb.e
    i32 4, label %bb.h
  ]

bb.e:                                             ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !102
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph.preheader.i, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.preheader.i:                               ; preds = %bb.f
  %wide.trip.count.i = zext nneg i32 %3 to i64
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i15 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %indvars.iv.i ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !51
  %i.as = zext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 2
  %i.au = load i16, ptr %i.at, align 2, !tbaa !51
  %i.av = zext i16 %i.au to i32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !51
  %i.ay = zext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ao, align 8, !tbaa !900 ; 6 uses
  %i.ba = shl i32 %i.as, %i.az                    ; 2 uses
  %i.bb = shl i32 %i.av, %i.az                    ; 3 uses
  %i.bc = shl i32 %i.ay, %i.az
  %i.bd = sub nsw i32 %i.ba, %i.bb
  %i.be = add nsw i32 %i.bb, %i.ba
  %i.bf = lshr i32 %i.be, 1
  %i.bg = sub i32 %i.bc, %i.bf
  %i.bh = and i32 %i.bd, 65535
  %.sroa.0.0.insert.insert.i.i.i = xor i32 %i.bh, 32768
  %i.bi = and i32 %i.bb, 65535
  %5 = and i32 %i.bg, 65535
  %.sroa.5.0.extract.trunc.i.i = xor i32 %5, 32768
  %i.bj = lshr i32 %.sroa.0.0.insert.insert.i.i.i, %i.az
  %6 = lshr i32 %i.bi, %i.az
  %i.bk = lshr i32 %.sroa.5.0.extract.trunc.i.i, %i.az
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.bk to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %.sroa.3.0.insert.ext.i.i, 32
  %i.bl = shl nuw i32 %6, 16
  %.sroa.2.0.insert.shift.i.i = zext i32 %i.bl to i48
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %.sroa.0.0.insert.ext.i.i = zext nneg i32 %i.bj to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %.sroa.0.0.insert.ext.i.i
  %i.bm = getelementptr inbounds nuw [6 x i8], ptr %2, i64 %indvars.iv.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.bm, align 2, !tbaa !51
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i16, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %.lr.ph.i15, !llvm.loop !884

bb.g:                                             ; preds = %bb.e
  %i.bn = tail call i32 @llvm.smin.i32(i32 %4, i32 %3) ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i17, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.i17:                                       ; preds = %bb.g
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !900 ; 7 uses
  %i.br = shl i32 %4, 1
  %i.bs = sext i32 %4 to i64                      ; 2 uses
  %i.bt = zext i32 %i.br to i64                   ; 2 uses
  %wide.trip.count.i18 = zext nneg i32 %i.bn to i64 ; 7 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %2, i64 %i.bs ; 5 uses
  %invariant.gep23.i = getelementptr [2 x i8], ptr %2, i64 %i.bt ; 5 uses
  %min.iters.check148 = icmp ult i32 %i.bn, 16
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.memcheck149

vector.memcheck149:                               ; preds = %.lr.ph.i17
  %i.bu = shl nuw nsw i64 %wide.trip.count.i18, 1
  %i.bv = getelementptr i8, ptr %2, i64 %i.bu     ; 3 uses
  %i.bw = add nsw i64 %i.bs, %wide.trip.count.i18
  %i.bx = shl nsw i64 %i.bw, 1
  %i.by = getelementptr i8, ptr %2, i64 %i.bx     ; 3 uses
  %i.bz = add nuw nsw i64 %wide.trip.count.i18, %i.bt
  %i.ca = shl nuw nsw i64 %i.bz, 1
  %i.cb = getelementptr i8, ptr %2, i64 %i.ca     ; 3 uses
  %i.cc = mul nuw nsw i64 %wide.trip.count.i18, 6
  %i.cd = getelementptr i8, ptr %.0, i64 %i.cc    ; 3 uses
  %bound0150 = icmp ult ptr %2, %i.by
  %bound1151 = icmp ult ptr %invariant.gep.i, %i.bv
  %found.conflict152 = and i1 %bound0150, %bound1151
  %bound0153 = icmp ult ptr %2, %i.cb
  %bound1154 = icmp ult ptr %invariant.gep23.i, %i.bv
  %found.conflict155 = and i1 %bound0153, %bound1154
  %conflict.rdx156 = or i1 %found.conflict152, %found.conflict155
  %bound0157 = icmp ult ptr %2, %i.cd
  %bound1158 = icmp ult ptr %.0, %i.bv
  %found.conflict159 = and i1 %bound0157, %bound1158
  %conflict.rdx160 = or i1 %conflict.rdx156, %found.conflict159
  %bound0161 = icmp ult ptr %invariant.gep.i, %i.cb
  %bound1162 = icmp ult ptr %invariant.gep23.i, %i.by
  %found.conflict163 = and i1 %bound0161, %bound1162
  %conflict.rdx164 = or i1 %conflict.rdx160, %found.conflict163
  %bound0165 = icmp ult ptr %invariant.gep.i, %i.cd
  %bound1166 = icmp ult ptr %.0, %i.by
  %found.conflict167 = and i1 %bound0165, %bound1166
  %conflict.rdx168 = or i1 %conflict.rdx164, %found.conflict167
  %bound0169 = icmp ult ptr %invariant.gep23.i, %i.cd
  %bound1170 = icmp ult ptr %.0, %i.cb
  %found.conflict171 = and i1 %bound0169, %bound1170
  %conflict.rdx172 = or i1 %conflict.rdx168, %found.conflict171
  br i1 %conflict.rdx172, label %scalar.ph147.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %vector.memcheck149
  %n.vec174 = and i64 %wide.trip.count.i18, 2147483640 ; 3 uses
  %broadcast.splatinsert175 = insertelement <8 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat176 = shufflevector <8 x i32> %broadcast.splatinsert175, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph173
  %index178 = phi i64 [ 0, %vector.ph173 ], [ %index.next179, %vector.body177 ] ; 12 uses
  %i.ce = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cf = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %i.ch = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.cj = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 18
  %i.cl = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 30
  %i.cp = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 36
  %i.cr = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %index178 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 42
  %i.ct = load i16, ptr %i.ce, align 2, !tbaa !51, !alias.scope !901
  %i.cu = load i16, ptr %i.cg, align 2, !tbaa !51, !alias.scope !901
  %i.cv = load i16, ptr %i.ci, align 2, !tbaa !51, !alias.scope !901
  %i.cw = load i16, ptr %i.ck, align 2, !tbaa !51, !alias.scope !901
  %i.cx = load i16, ptr %i.cm, align 2, !tbaa !51, !alias.scope !901
  %i.cy = load i16, ptr %i.co, align 2, !tbaa !51, !alias.scope !901
  %i.cz = load i16, ptr %i.cq, align 2, !tbaa !51, !alias.scope !901
  %i.da = load i16, ptr %i.cs, align 2, !tbaa !51, !alias.scope !901
  %i.db = insertelement <8 x i16> poison, i16 %i.ct, i64 0
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 1
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 2
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 3
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 4
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 5
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 6
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cl, i64 26
  %i.do = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cr, i64 44
  %i.dr = load i16, ptr %i.dj, align 2, !tbaa !51, !alias.scope !901
  %i.ds = load i16, ptr %i.dk, align 2, !tbaa !51, !alias.scope !901
  %i.dt = load i16, ptr %i.dl, align 2, !tbaa !51, !alias.scope !901
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !51, !alias.scope !901
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !51, !alias.scope !901
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !51, !alias.scope !901
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !51, !alias.scope !901
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !51, !alias.scope !901
  %i.dz = insertelement <8 x i16> poison, i16 %i.dr, i64 0
  %i.ea = insertelement <8 x i16> %i.dz, i16 %i.ds, i64 1
  %i.eb = insertelement <8 x i16> %i.ea, i16 %i.dt, i64 2
  %i.ec = insertelement <8 x i16> %i.eb, i16 %i.du, i64 3
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 4
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 5
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 6
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 7
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cf, i64 10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cj, i64 22
  %i.el = getelementptr inbounds nuw i8, ptr %i.cl, i64 28
  %i.em = getelementptr inbounds nuw i8, ptr %i.cn, i64 34
  %i.en = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cr, i64 46
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !51, !alias.scope !901
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !51, !alias.scope !901
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !51, !alias.scope !901
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !51, !alias.scope !901
  %i.et = load i16, ptr %i.el, align 2, !tbaa !51, !alias.scope !901
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !51, !alias.scope !901
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !51, !alias.scope !901
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !51, !alias.scope !901
  %i.ex = insertelement <8 x i16> poison, i16 %i.ep, i64 0
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 1
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 2
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 3
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 4
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 5
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 6
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 7
  %i.ff = zext <8 x i16> %i.di to <8 x i32>
  %i.fg = zext <8 x i16> %i.eg to <8 x i32>
  %i.fh = zext <8 x i16> %i.fe to <8 x i32>
  %i.fi = shl <8 x i32> %i.ff, %broadcast.splat176 ; 2 uses
  %i.fj = shl <8 x i32> %i.fg, %broadcast.splat176 ; 3 uses
  %i.fk = shl <8 x i32> %i.fh, %broadcast.splat176
  %i.fl = sub nsw <8 x i32> %i.fi, %i.fj
  %i.fm = add nsw <8 x i32> %i.fj, %i.fi
  %i.fn = lshr <8 x i32> %i.fm, splat (i32 1)
  %i.fo = sub <8 x i32> %i.fk, %i.fn
  %i.fp = and <8 x i32> %i.fl, splat (i32 65535)
  %i.fq = xor <8 x i32> %i.fp, splat (i32 32768)
  %7 = and <8 x i32> %i.fj, splat (i32 65535)
  %i.fr = and <8 x i32> %i.fo, splat (i32 65535)
  %i.fs = xor <8 x i32> %i.fr, splat (i32 32768)
  %8 = lshr <8 x i32> %i.fq, %broadcast.splat176
  %i.ft = lshr <8 x i32> %7, %broadcast.splat176
  %i.fu = lshr <8 x i32> %i.fs, %broadcast.splat176
  %i.fv = trunc nuw <8 x i32> %8 to <8 x i16>
  %9 = trunc nuw <8 x i32> %i.ft to <8 x i16>
  %i.fw = trunc nuw <8 x i32> %i.fu to <8 x i16>
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index178
  store <8 x i16> %i.fv, ptr %i.fx, align 2, !tbaa !245, !alias.scope !902, !noalias !903
  %i.fy = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index178
  store <8 x i16> %9, ptr %i.fy, align 2, !tbaa !245, !alias.scope !904, !noalias !905
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep23.i, i64 %index178
  store <8 x i16> %i.fw, ptr %i.fz, align 2, !tbaa !245, !alias.scope !906, !noalias !901
  %index.next179 = add nuw i64 %index178, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next179, %n.vec174
  br i1 %i.ga, label %middle.block180, label %vector.body177, !llvm.loop !890

middle.block180:                                  ; preds = %vector.body177
  %cmp.n181 = icmp eq i64 %n.vec174, %wide.trip.count.i18
  br i1 %cmp.n181, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph147.preheader

scalar.ph147.preheader:                           ; preds = %vector.memcheck149, %.lr.ph.i17, %middle.block180
  %indvars.iv.i19.ph = phi i64 [ 0, %vector.memcheck149 ], [ 0, %.lr.ph.i17 ], [ %n.vec174, %middle.block180 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv.i19 = phi i64 [ %indvars.iv.next.i22, %scalar.ph147 ], [ %indvars.iv.i19.ph, %scalar.ph147.preheader ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [6 x i8], ptr %.0, i64 %indvars.iv.i19 ; 3 uses
  %.sroa.01.0.copyload.i = load i16, ptr %i.gb, align 2, !tbaa !51
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 2
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2, !tbaa !51
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  %.sroa.53.0.copyload.i = load i16, ptr %.sroa.53.0..sroa_idx.i, align 2, !tbaa !51
  %i.gc = zext i16 %.sroa.01.0.copyload.i to i32
  %i.gd = zext i16 %.sroa.42.0.copyload.i to i32
  %i.ge = zext i16 %.sroa.53.0.copyload.i to i32
  %i.gf = shl i32 %i.gc, %i.bq                    ; 2 uses
  %i.gg = shl i32 %i.gd, %i.bq                    ; 3 uses
  %i.gh = shl i32 %i.ge, %i.bq
  %i.gi = sub nsw i32 %i.gf, %i.gg
  %i.gj = add nsw i32 %i.gg, %i.gf
  %i.gk = lshr i32 %i.gj, 1
  %i.gl = sub i32 %i.gh, %i.gk
  %i.gm = and i32 %i.gi, 65535
  %.sroa.0.0.insert.insert.i.i.i20 = xor i32 %i.gm, 32768
  %10 = and i32 %i.gg, 65535
  %i.gn = and i32 %i.gl, 65535
  %.sroa.5.0.extract.trunc.i.i21 = xor i32 %i.gn, 32768
  %11 = lshr i32 %.sroa.0.0.insert.insert.i.i.i20, %i.bq
  %i.go = lshr i32 %10, %i.bq
  %i.gp = lshr i32 %.sroa.5.0.extract.trunc.i.i21, %i.bq
  %.sroa.0.0.extract.trunc.i = trunc nuw i32 %11 to i16
  %.sroa.4.0.extract.trunc.i = trunc nuw i32 %i.go to i16
  %.sroa.5.0.extract.trunc.i = trunc nuw i32 %i.gp to i16
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i19
  store i16 %.sroa.0.0.extract.trunc.i, ptr %i.gq, align 2, !tbaa !245
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i19
  store i16 %.sroa.4.0.extract.trunc.i, ptr %gep.i, align 2, !tbaa !245
  %gep24.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep23.i, i64 %indvars.iv.i19
  store i16 %.sroa.5.0.extract.trunc.i, ptr %gep24.i, align 2, !tbaa !245
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i19, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i18
  br i1 %exitcond.not.i23, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph147, !llvm.loop !891

bb.h:                                             ; preds = %_Z17TransformRgbToBgrItEvPT_ii.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !102
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.i, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

bb.i:                                             ; preds = %bb.h
  %i.gu = tail call i32 @llvm.smin.i32(i32 %4, i32 %3) ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, 0
  br i1 %i.gv, label %.lr.ph.i24, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit

.lr.ph.i24:                                       ; preds = %bb.i
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !900 ; 7 uses
  %i.gy = shl i32 %4, 1
  %i.gz = mul i32 %4, 3
  %i.ha = sext i32 %4 to i64                      ; 2 uses
  %i.hb = zext i32 %i.gy to i64                   ; 2 uses
  %i.hc = zext i32 %i.gz to i64                   ; 2 uses
  %wide.trip.count.i25 = zext nneg i32 %i.gu to i64 ; 8 uses
  %invariant.gep.i26 = getelementptr [2 x i8], ptr %2, i64 %i.ha ; 6 uses
  %invariant.gep25.i = getelementptr [2 x i8], ptr %2, i64 %i.hb ; 6 uses
  %invariant.gep27.i = getelementptr [2 x i8], ptr %2, i64 %i.hc ; 6 uses
  %min.iters.check = icmp ult i32 %i.gu, 24
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i24
  %i.hd = shl nuw nsw i64 %wide.trip.count.i25, 1
  %i.he = getelementptr i8, ptr %2, i64 %i.hd     ; 4 uses
  %i.hf = add nsw i64 %i.ha, %wide.trip.count.i25
  %i.hg = shl nsw i64 %i.hf, 1
  %i.hh = getelementptr i8, ptr %2, i64 %i.hg     ; 4 uses
  %i.hi = add nuw nsw i64 %wide.trip.count.i25, %i.hb
  %i.hj = shl nuw nsw i64 %i.hi, 1
  %i.hk = getelementptr i8, ptr %2, i64 %i.hj     ; 4 uses
  %i.hl = add nuw nsw i64 %wide.trip.count.i25, %i.hc
  %i.hm = shl nuw nsw i64 %i.hl, 1
  %i.hn = getelementptr i8, ptr %2, i64 %i.hm     ; 4 uses
  %i.ho = shl nuw nsw i64 %wide.trip.count.i25, 3
  %i.hp = getelementptr i8, ptr %.0, i64 %i.ho    ; 4 uses
  %bound0 = icmp ult ptr %2, %i.hh
  %bound1 = icmp ult ptr %invariant.gep.i26, %i.he
  %found.conflict = and i1 %bound0, %bound1
  %bound085 = icmp ult ptr %2, %i.hk
  %bound186 = icmp ult ptr %invariant.gep25.i, %i.he
  %found.conflict87 = and i1 %bound085, %bound186
  %conflict.rdx = or i1 %found.conflict, %found.conflict87
  %bound088 = icmp ult ptr %2, %i.hn
  %bound189 = icmp ult ptr %invariant.gep27.i, %i.he
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx, %found.conflict90
  %bound092 = icmp ult ptr %2, %i.hp
  %bound193 = icmp ult ptr %.0, %i.he
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %invariant.gep.i26, %i.hk
  %bound197 = icmp ult ptr %invariant.gep25.i, %i.hh
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %invariant.gep.i26, %i.hn
  %bound1101 = icmp ult ptr %invariant.gep27.i, %i.hh
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %invariant.gep.i26, %i.hp
  %bound1105 = icmp ult ptr %.0, %i.hh
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %invariant.gep25.i, %i.hn
  %bound1109 = icmp ult ptr %invariant.gep27.i, %i.hk
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  %bound0112 = icmp ult ptr %invariant.gep25.i, %i.hp
  %bound1113 = icmp ult ptr %.0, %i.hk
  %found.conflict114 = and i1 %bound0112, %bound1113
  %conflict.rdx115 = or i1 %conflict.rdx111, %found.conflict114
  %bound0116 = icmp ult ptr %invariant.gep27.i, %i.hp
  %bound1117 = icmp ult ptr %.0, %i.hn
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx115, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i25, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.gx, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 13 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 24
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 48
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %index ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %i.if = load i16, ptr %i.hq, align 2, !alias.scope !907
  %i.ig = load i16, ptr %i.hs, align 2, !alias.scope !907
  %i.ih = load i16, ptr %i.hu, align 2, !alias.scope !907
  %i.ii = load i16, ptr %i.hw, align 2, !alias.scope !907
  %i.ij = load i16, ptr %i.hy, align 2, !alias.scope !907
  %i.ik = load i16, ptr %i.ia, align 2, !alias.scope !907
  %i.il = load i16, ptr %i.ic, align 2, !alias.scope !907
  %i.im = load i16, ptr %i.ie, align 2, !alias.scope !907
  %i.in = insertelement <8 x i16> poison, i16 %i.if, i64 0
  %i.io = insertelement <8 x i16> %i.in, i16 %i.ig, i64 1
  %i.ip = insertelement <8 x i16> %i.io, i16 %i.ih, i64 2
  %i.iq = insertelement <8 x i16> %i.ip, i16 %i.ii, i64 3
  %i.ir = insertelement <8 x i16> %i.iq, i16 %i.ij, i64 4
  %i.is = insertelement <8 x i16> %i.ir, i16 %i.ik, i64 5
  %i.it = insertelement <8 x i16> %i.is, i16 %i.il, i64 6
  %i.iu = insertelement <8 x i16> %i.it, i16 %i.im, i64 7
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hr, i64 10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ht, i64 18
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hv, i64 26
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hx, i64 34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 42
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 50
  %i.jc = getelementptr inbounds nuw i8, ptr %i.id, i64 58
  %i.jd = load i16, ptr %i.iv, align 2, !alias.scope !907
  %i.je = load i16, ptr %i.iw, align 2, !alias.scope !907
  %i.jf = load i16, ptr %i.ix, align 2, !alias.scope !907
  %i.jg = load i16, ptr %i.iy, align 2, !alias.scope !907
  %i.jh = load i16, ptr %i.iz, align 2, !alias.scope !907
  %i.ji = load i16, ptr %i.ja, align 2, !alias.scope !907
  %i.jj = load i16, ptr %i.jb, align 2, !alias.scope !907
  %i.jk = load i16, ptr %i.jc, align 2, !alias.scope !907
  %i.jl = insertelement <8 x i16> poison, i16 %i.jd, i64 0
  %i.jm = insertelement <8 x i16> %i.jl, i16 %i.je, i64 1
  %i.jn = insertelement <8 x i16> %i.jm, i16 %i.jf, i64 2
  %i.jo = insertelement <8 x i16> %i.jn, i16 %i.jg, i64 3
  %i.jp = insertelement <8 x i16> %i.jo, i16 %i.jh, i64 4
  %i.jq = insertelement <8 x i16> %i.jp, i16 %i.ji, i64 5
  %i.jr = insertelement <8 x i16> %i.jq, i16 %i.jj, i64 6
  %i.js = insertelement <8 x i16> %i.jr, i16 %i.jk, i64 7
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  %i.jw = getelementptr inbounds nuw i8, ptr %i.hv, i64 28
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hx, i64 36
  %i.jy = getelementptr inbounds nuw i8, ptr %i.hz, i64 44
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ib, i64 52
  %i.ka = getelementptr inbounds nuw i8, ptr %i.id, i64 60
  %i.kb = load i16, ptr %i.jt, align 2, !alias.scope !907
  %i.kc = load i16, ptr %i.ju, align 2, !alias.scope !907
  %i.kd = load i16, ptr %i.jv, align 2, !alias.scope !907
  %i.ke = load i16, ptr %i.jw, align 2, !alias.scope !907
  %i.kf = load i16, ptr %i.jx, align 2, !alias.scope !907
  %i.kg = load i16, ptr %i.jy, align 2, !alias.scope !907
  %i.kh = load i16, ptr %i.jz, align 2, !alias.scope !907
  %i.ki = load i16, ptr %i.ka, align 2, !alias.scope !907
  %i.kj = insertelement <8 x i16> poison, i16 %i.kb, i64 0
  %i.kk = insertelement <8 x i16> %i.kj, i16 %i.kc, i64 1
  %i.kl = insertelement <8 x i16> %i.kk, i16 %i.kd, i64 2
  %i.km = insertelement <8 x i16> %i.kl, i16 %i.ke, i64 3
  %i.kn = insertelement <8 x i16> %i.km, i16 %i.kf, i64 4
  %i.ko = insertelement <8 x i16> %i.kn, i16 %i.kg, i64 5
  %i.kp = insertelement <8 x i16> %i.ko, i16 %i.kh, i64 6
  %i.kq = insertelement <8 x i16> %i.kp, i16 %i.ki, i64 7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hq, i64 6
  %i.ks = getelementptr inbounds nuw i8, ptr %i.hr, i64 14
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ht, i64 22
  %i.ku = getelementptr inbounds nuw i8, ptr %i.hv, i64 30
  %i.kv = getelementptr inbounds nuw i8, ptr %i.hx, i64 38
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hz, i64 46
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ib, i64 54
  %i.ky = getelementptr inbounds nuw i8, ptr %i.id, i64 62
  %i.kz = load i16, ptr %i.kr, align 2, !alias.scope !907
  %i.la = load i16, ptr %i.ks, align 2, !alias.scope !907
  %i.lb = load i16, ptr %i.kt, align 2, !alias.scope !907
  %i.lc = load i16, ptr %i.ku, align 2, !alias.scope !907
  %i.ld = load i16, ptr %i.kv, align 2, !alias.scope !907
  %i.le = load i16, ptr %i.kw, align 2, !alias.scope !907
  %i.lf = load i16, ptr %i.kx, align 2, !alias.scope !907
  %i.lg = load i16, ptr %i.ky, align 2, !alias.scope !907
  %i.lh = insertelement <8 x i16> poison, i16 %i.kz, i64 0
  %i.li = insertelement <8 x i16> %i.lh, i16 %i.la, i64 1
  %i.lj = insertelement <8 x i16> %i.li, i16 %i.lb, i64 2
  %i.lk = insertelement <8 x i16> %i.lj, i16 %i.lc, i64 3
  %i.ll = insertelement <8 x i16> %i.lk, i16 %i.ld, i64 4
  %i.lm = insertelement <8 x i16> %i.ll, i16 %i.le, i64 5
  %i.ln = insertelement <8 x i16> %i.lm, i16 %i.lf, i64 6
  %i.lo = insertelement <8 x i16> %i.ln, i16 %i.lg, i64 7
  %i.lp = zext <8 x i16> %i.iu to <8 x i32>
  %i.lq = zext <8 x i16> %i.js to <8 x i32>
  %i.lr = zext <8 x i16> %i.kq to <8 x i32>
  %i.ls = shl <8 x i32> %i.lp, %broadcast.splat   ; 2 uses
  %i.lt = shl <8 x i32> %i.lq, %broadcast.splat   ; 3 uses
  %i.lu = shl <8 x i32> %i.lr, %broadcast.splat
  %i.lv = sub nsw <8 x i32> %i.ls, %i.lt
  %i.lw = add nsw <8 x i32> %i.lt, %i.ls
  %i.lx = lshr <8 x i32> %i.lw, splat (i32 1)
  %i.ly = sub <8 x i32> %i.lu, %i.lx
  %i.lz = and <8 x i32> %i.lv, splat (i32 65535)
  %i.ma = xor <8 x i32> %i.lz, splat (i32 32768)
  %12 = and <8 x i32> %i.lt, splat (i32 65535)
  %i.mb = and <8 x i32> %i.ly, splat (i32 65535)
  %i.mc = xor <8 x i32> %i.mb, splat (i32 32768)
  %13 = lshr <8 x i32> %i.ma, %broadcast.splat
  %i.md = lshr <8 x i32> %12, %broadcast.splat
  %i.me = lshr <8 x i32> %i.mc, %broadcast.splat
  %i.mf = trunc nuw <8 x i32> %13 to <8 x i16>
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %index
  store <8 x i16> %i.mf, ptr %i.mg, align 2, !tbaa !245, !alias.scope !908, !noalias !909
  %14 = trunc nuw <8 x i32> %i.md to <8 x i16>
  %i.mh = getelementptr [2 x i8], ptr %invariant.gep.i26, i64 %index
  store <8 x i16> %14, ptr %i.mh, align 2, !tbaa !245, !alias.scope !910, !noalias !911
  %i.mi = trunc nuw <8 x i32> %i.me to <8 x i16>
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep25.i, i64 %index
  store <8 x i16> %i.mi, ptr %i.mj, align 2, !tbaa !245, !alias.scope !912, !noalias !913
  %i.mk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep27.i, i64 %index
  store <8 x i16> %i.lo, ptr %i.mk, align 2, !tbaa !245, !alias.scope !914, !noalias !907
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !898

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i25
  br i1 %cmp.n, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i24, %middle.block
  %indvars.iv.i27.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i24 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i33, %scalar.ph ], [ %indvars.iv.i27.ph, %scalar.ph.preheader ] ; 6 uses
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %indvars.iv.i27 ; 4 uses
  %.sroa.01.0.copyload.i28 = load i16, ptr %i.mm, align 2
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 2
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %.sroa.5.0.copyload.i = load i16, ptr %.sroa.5.0..sroa_idx.i, align 2
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mm, i64 6
  %.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.0..sroa_idx.i, align 2
  %i.mn = zext i16 %.sroa.01.0.copyload.i28 to i32
  %i.mo = zext i16 %.sroa.4.0.copyload.i to i32
  %i.mp = zext i16 %.sroa.5.0.copyload.i to i32
  %i.mq = shl i32 %i.mn, %i.gx                    ; 2 uses
  %i.mr = shl i32 %i.mo, %i.gx                    ; 3 uses
  %i.ms = shl i32 %i.mp, %i.gx
  %i.mt = sub nsw i32 %i.mq, %i.mr
  %i.mu = add nsw i32 %i.mr, %i.mq
  %i.mv = lshr i32 %i.mu, 1
  %i.mw = sub i32 %i.ms, %i.mv
  %i.mx = and i32 %i.mt, 65535
  %.sroa.0.0.insert.insert.i.i.i29 = xor i32 %i.mx, 32768
  %15 = and i32 %i.mr, 65535
  %i.my = and i32 %i.mw, 65535
  %.sroa.5.0.extract.trunc.i.i30 = xor i32 %i.my, 32768
  %16 = lshr i32 %.sroa.0.0.insert.insert.i.i.i29, %i.gx
  %i.mz = lshr i32 %15, %i.gx
  %i.na = lshr i32 %.sroa.5.0.extract.trunc.i.i30, %i.gx
  %.sroa.0.0.extract.trunc.i31 = trunc nuw i32 %16 to i16
  %i.nb = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.i27
  store i16 %.sroa.0.0.extract.trunc.i31, ptr %i.nb, align 2, !tbaa !245
  %.sroa.0.2.extract.trunc.i = trunc nuw i32 %i.mz to i16
  %gep.i32 = getelementptr [2 x i8], ptr %invariant.gep.i26, i64 %indvars.iv.i27
  store i16 %.sroa.0.2.extract.trunc.i, ptr %gep.i32, align 2, !tbaa !245
  %.sroa.0.4.extract.trunc.i = trunc nuw i32 %i.na to i16
  %gep26.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep25.i, i64 %indvars.iv.i27
  store i16 %.sroa.0.4.extract.trunc.i, ptr %gep26.i, align 2, !tbaa !245
  %gep28.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep27.i, i64 %indvars.iv.i27
  store i16 %.sroa.6.0.copyload.i, ptr %gep28.i, align 2, !tbaa !245
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i34 = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i25
  br i1 %exitcond.not.i34, label %_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit, label %scalar.ph, !llvm.loop !899

_Z13TransformLineI16TransformShiftedI12TransformHp2ItEEtEvP7TripletIT0_EPKS6_iRT_.exit: ; preds = %scalar.ph, %scalar.ph147, %.lr.ph.i15, %middle.block, %middle.block180, %bb.i, %bb.g, %bb.f, %_Z17TransformRgbToBgrItEvPT_ii.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE9TransformEPNSt3__115basic_streambufIcNS5_11char_traitsIcEEEEPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_ostringstream", align 8 ; 6 uses
  %6 = alloca %"class.std::__1::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !337, !nonnull !177, !align !302 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = mul nsw i32 %i.d, %3                     ; 2 uses
  %.not27 = icmp eq i32 %i.e, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.i = sub nsw i64 %.01928, %i.n                ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !915

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.01928 = phi i64 [ %i.g, %.lr.ph ], [ %i.i, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !235
  %i.k = load ptr, ptr %1, align 8, !tbaa !68
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.j, i64 noundef %.01928), !inline_history !7 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(112) %5)
  %i.p = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.9, i64 noundef 57)
          to label %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit unwind label %bb.h

_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit: ; preds = %bb.d
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEl(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.r = call ptr @__cxa_allocate_exception(i64 32) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  invoke void @_ZNKRSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEE3strB8ne180100Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %5)
          to label %bb.f unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_Z17CreateSystemErrorN6charls9ApiResultERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(ptr dead_on_unwind writable sret(%"class.std::__1::system_error") align 8 %i.r, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr %i.r, ptr nonnull @_ZTINSt3__112system_errorE, ptr nonnull @_ZNSt3__112system_errorD1Ev) #24
          to label %bb.n unwind label %bb.i

bb.h:                                             ; preds = %bb.d, %_ZNSt3__1lsB8ne180100INS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.f ]  ; 2 uses
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.v = load i8, ptr %6, align 8
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %.split, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

.split:                                           ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.z = load i64, ptr %6, align 8
  %i.aa = and i64 %i.z, -2
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.aa) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.j, label %bb.k

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %.pn26 = phi { ptr, i32 } [ %i.t, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.u, %.split ]
  call void @__cxa_free_exception(ptr %i.r) #23
  br label %bb.k

bb.k:                                             ; preds = %.split, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.j, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn26, %bb.j ], [ %i.u, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit ], [ %i.s, %bb.h ], [ %i.u, %.split ]
  call void @_ZNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn.pn

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !337
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ab = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !242
  %i.ae = icmp eq i32 %i.ad, 536870912
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !103
  %i.aj = shl i32 %3, 1
  %i.ak = mul i32 %i.aj, %i.ai
  tail call void @_Z8ByteSwapPhi(ptr noundef nonnull %i.ag, i32 noundef %i.ak)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !235
  tail call void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp2ItEEE9TransformEPKvPvii(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %i.am, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  ret void

bb.n:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp3ItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI16TransformShiftedI12TransformHp3ItEEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.h) #26
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !275  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8, !tbaa !277
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.p) #26
  br label %_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit

_ZNSt3__16vectorItNS_9allocatorItEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN18ProcessTransformedI16TransformShiftedI12TransformHp3ItEEED0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV18ProcessTransformedI16TransformShiftedI12TransformHp3ItEEE, i64 16), ptr %0, align 8, !tbaa !68
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235  ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.c, align 8, !tbaa !236
end_hunk_0
