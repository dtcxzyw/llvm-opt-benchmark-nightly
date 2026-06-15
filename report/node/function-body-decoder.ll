inline.NumInlined: 6125
inline.NumDeleted: 1092
begin_hunk_0_@_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE1ELNS7_9MergeTypeE2ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS1_9ValueBaseIS4_EEEE:bb.a

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next114 = or disjoint i64 %indvars.iv113, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv.next114
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8 ; 2 uses
  %.sroa.0.0.copyload.1 = load i32, ptr %i.dd, align 8
  %i.de = icmp eq i32 %.sroa.0.0.copyload.1, 514
  br i1 %i.de, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.df = load i32, ptr %1, align 8
  %i.dg = icmp eq i32 %i.df, 1
  %i.dh = load ptr, ptr %i.cq, align 8
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %indvars.iv.next114
  %i.dj = select i1 %i.dg, ptr %i.cq, ptr %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i32, ptr %i.dk, align 8
  store i32 %i.dl, ptr %i.dd, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread.loopexit.unr-lcssa, label %bb.o, !llvm.loop !116

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread.loopexit.unr-lcssa, %.lr.ph97
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next114.1, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %.sroa.speculated to i1
  tail call void @llvm.assume(i1 %lcmp.mod151)
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv113.epil.init
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 2 uses
  %.sroa.0.0.copyload.epil = load i32, ptr %i.dn, align 8
  %i.do = icmp eq i32 %.sroa.0.0.copyload.epil, 514
  br i1 %i.do, label %bb.t, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread

bb.t:                                             ; preds = %.epil.preheader
  %i.dp = load i32, ptr %1, align 8
  %i.dq = icmp eq i32 %i.dp, 1
  %i.dr = load ptr, ptr %i.cq, align 8
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv113.epil.init
  %i.dt = select i1 %i.dq, ptr %i.cq, ptr %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i32, ptr %i.du, align 8
  store i32 %i.dv, ptr %i.dn, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread: ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread.loopexit.unr-lcssa, %bb.t, %.epil.preheader, %bb.n, %._crit_edge, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dx = load i32, ptr %i.dw, align 8
  %.not.i59 = icmp eq i32 %i.dx, -1
  br label %.critedge53

.critedge53:                                      ; preds = %.critedge, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread, %bb.h, %bb.c
  %.4 = phi i1 [ false, %bb.c ], [ %.not.i59, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE20EnsureStackArgumentsEi.exit.thread ], [ false, %bb.h ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ], [ true, %bb.d ], [ true, %.critedge ]
  ret i1 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcjEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcjS5_S5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJNS1_10WasmOpcodeEEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjEEEvjPKcDpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKc(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJPKcEEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef nonnull @.str.8, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE10PopControlEv(ptr noundef nonnull align 8 dereferenceable(248) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -112 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8
  %i.g = icmp eq i8 %i.f, 3
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -111
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -40
  tail call void @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE15PushMergeValuesEPNS1_11ControlBaseINS1_9ValueBaseIS4_EES4_EEPNS1_5MergeISA_EE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.k)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.m = load i8, ptr %i.l, align 1, !range !8, !noundef !9
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -84
  %i.p = load i32, ptr %i.o, align 4              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 2
  %i.y = trunc i64 %i.x to i32
  %i.z = icmp ult i32 %i.p, %i.y
  br i1 %i.z, label %.lr.ph.i, label %bb.g

.lr.ph.i:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ab = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ah, %bb.f ]
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4
  store ptr %i.ac, ptr %i.r, align 8
  %i.ae = load ptr, ptr %i.aa, align 8
  %i.af = zext i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 0, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 2
  %i.an = trunc i64 %i.am to i32
  %i.ao = icmp ult i32 %i.p, %i.an
  br i1 %i.ao, label %bb.f, label %bb.g, !llvm.loop !65

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.e
  %1 = getelementptr inbounds i8, ptr %i.b, i64 -111
  %2 = load i8, ptr %1, align 1
  %3 = icmp eq i8 %2, 0
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.aq = load i8, ptr %i.ap, align 8, !range !8
  %i.ar = trunc nuw i8 %i.aq to i1
  %or.cond = select i1 %3, i1 true, i1 %i.ar
  br i1 %or.cond, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i8, ptr %i.e, align 8
  %i.at = icmp eq i8 %i.as, 0
  %4 = load ptr, ptr %i.a, align 8                ; 2 uses
  %scevgep.i = getelementptr i8, ptr %4, i64 -120
  store ptr %scevgep.i, ptr %i.a, align 8
  br i1 %i.at, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr i8, ptr %4, i64 -231      ; 2 uses
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %bb.j, label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.au, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 0, ptr %i.ax, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

.critedge:                                        ; preds = %bb.g
  %5 = load ptr, ptr %i.a, align 8
  %scevgep.i10 = getelementptr i8, ptr %5, i64 -120
  store ptr %scevgep.i10, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit

_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit: ; preds = %bb.j, %bb.i, %.critedge, %bb.h
  %i.ay = load i32, ptr %i.d, align 8
  %.not.i11 = icmp eq i32 %i.ay, -1
  br i1 %.not.i11, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.az = load ptr, ptr %i.a, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -111
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = icmp eq i8 %i.bb, 0
  %i.bd = zext i1 %i.bc to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit
  %i.be = phi i8 [ 0, %_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE39SetSucceedingCodeDynamicallyUnreachableEv.exit ], [ %i.bd, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.be, ptr %i.bf, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE19TypeCheckOneArmedIfEPNS1_11ControlBaseINS1_9ValueBaseIS4_EES4_EE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = icmp eq i32 %i.b, 1                      ; 2 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = select i1 %i.i, ptr %i.f, ptr %i.j       ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = select i1 %i.i, ptr %i.g, ptr %i.l       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.01.0.copyload.peel = load i32, ptr %i.n, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.0.0.copyload.peel = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp eq i32 %.sroa.01.0.copyload.peel, %.sroa.0.0.copyload.peel
  br i1 %i.p, label %.critedge.peel, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel: ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.r = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.01.0.copyload.peel, i32 %.sroa.0.0.copyload.peel, ptr noundef %i.q, ptr noundef %i.q) #17
  br i1 %i.r, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel..critedge.peel_crit_edge, label %bb.c

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel..critedge.peel_crit_edge: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel
  %.pre = load i32, ptr %i.c, align 8
  br label %.critedge.peel

.critedge.peel:                                   ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel..critedge.peel_crit_edge, %.lr.ph
  %i.s = phi i32 [ %.pre, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel..critedge.peel_crit_edge ], [ %i.b, %.lr.ph ] ; 2 uses
  %.not35.peel = icmp ugt i32 %i.s, 1
  br i1 %.not35.peel, label %.peel.next, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr %1, align 8
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder5errorEPKhPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.t, ptr noundef nonnull @.str.833)
  br label %.loopexit

.peel.next:                                       ; preds = %.critedge.peel, %.critedge
  %i.u = phi i32 [ %i.aw, %.critedge ], [ %i.s, %.critedge.peel ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 1, %.critedge.peel ] ; 4 uses
  %i.v = load ptr, ptr %i.f, align 8
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.a, align 8
  %i.y = icmp eq i32 %i.x, 1
  %i.z = load ptr, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = select i1 %i.y, ptr %i.g, ptr %i.aa     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.01.0.copyload = load i32, ptr %i.ac, align 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.ad, align 8 ; 2 uses
  %i.ae = icmp eq i32 %.sroa.01.0.copyload, %.sroa.0.0.copyload
  br i1 %i.ae, label %.critedge, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit, !prof !6

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit: ; preds = %.peel.next
  %i.af = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ag = tail call noundef zeroext i1 @_ZN2v88internal4wasm15IsSubtypeOfImplENS1_9ValueTypeES2_PKNS1_10WasmModuleES5_(i32 %.sroa.01.0.copyload, i32 %.sroa.0.0.copyload, ptr noundef %i.af, ptr noundef %i.af) #17
  br i1 %i.ag, label %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge_crit_edge, label %.loopexit41

_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge_crit_edge: ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %.pre42 = load i32, ptr %i.c, align 8
  br label %.critedge

.loopexit41:                                      ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit
  %i.ah = trunc nuw i64 %indvars.iv to i32
  br label %bb.c

bb.c:                                             ; preds = %.loopexit41, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel
  %.01934.lcssa.wide = phi i32 [ 0, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel ], [ %i.ah, %.loopexit41 ]
  %.lcssa37 = phi ptr [ %i.k, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel ], [ %i.w, %.loopexit41 ]
  %.lcssa = phi ptr [ %i.m, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit.peel ], [ %i.ab, %.loopexit41 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa37, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.aj) #17
  %i.ak = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZNK2v88internal4wasm13ValueTypeBase4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ai) #17
  %i.al = load ptr, ptr %3, align 8
  call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull @.str.834, i32 noundef %.01934.lcssa.wide, ptr noundef %i.ak, ptr noundef %i.al)
  %i.am = load ptr, ptr %3, align 8               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ap = load i64, ptr %i.an, align 8
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ar = load ptr, ptr %2, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load i64, ptr %i.as, align 8
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.av) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  br label %.loopexit

.critedge:                                        ; preds = %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge_crit_edge, %.peel.next
  %i.aw = phi i32 [ %.pre42, %_ZN2v88internal4wasm11IsSubtypeOfENS1_9ValueTypeES2_PKNS1_10WasmModuleE.exit..critedge_crit_edge ], [ %i.u, %.peel.next ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = zext i32 %i.aw to i64
  %.not35 = icmp samesign ult i64 %indvars.iv.next, %i.ax
  br i1 %.not35, label %.peel.next, label %.loopexit, !llvm.loop !117

.loopexit:                                        ; preds = %.critedge, %.critedge.peel, %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ true, %.preheader ], [ true, %.critedge.peel ], [ true, %.critedge ]
  ret i1 %.3
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcS5_EEEvS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add i32 %i.j, %i.h
  tail call preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %i.k, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v88internal4wasm7Decoder6errorfIJjPKcS5_EEEvjS5_DpT_(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void (ptr, i32, ptr, ...) @_ZN2v88internal4wasm7Decoder7verrorfEjPKcz(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc noundef zeroext i1 @_ZN2v88internal4wasm15WasmFullDecoderINS1_7Decoder17FullValidationTagENS1_14EmptyInterfaceELNS1_12DecodingModeE0EE31TypeCheckStackAgainstMerge_SlowILNS7_22StackElementsCountModeE1ELNS7_16PushBranchValuesE0ELNS7_9MergeTypeE2ELNS7_17RewriteStackTypesE0EEEbPNS1_5MergeINS1_9ValueBaseIS4_EEEE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = load i32, ptr %1, align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -88
end_hunk_0
