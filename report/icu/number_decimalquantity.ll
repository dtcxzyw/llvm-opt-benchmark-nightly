inline.NumInlined: 251
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6icu_786number4impl15DecimalQuantity16_setToDoubleFastEd:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 1075, %i.k
  %i.ac = sitofp i32 %i.ab to double
  %i.ad = fdiv double %i.ac, f0x400A934F0979A371
  %i.ae = fptosi double %i.ad to i32              ; 8 uses
  %i.af = icmp sgt i32 %i.ae, -1
  br i1 %i.af, label %.preheader, label %.preheader34

.preheader34:                                     ; preds = %bb.g
  %i.ag = icmp samesign ult i32 %i.ae, -21
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.preheader:                                       ; preds = %bb.g
  %i.ah = icmp samesign ugt i32 %i.ae, 21
  br i1 %i.ah, label %.lr.ph40, label %._crit_edge41

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %.02839 = phi i32 [ %i.aj, %.lr.ph40 ], [ %i.ae, %.preheader ] ; 2 uses
  %.02938 = phi double [ %i.ai, %.lr.ph40 ], [ %1, %.preheader ]
  %i.ai = fmul double %.02938, 1.000000e+22       ; 2 uses
  %i.aj = add nsw i32 %.02839, -22                ; 2 uses
  %i.ak = icmp samesign ugt i32 %.02839, 43
  br i1 %i.ak, label %.lr.ph40, label %._crit_edge41, !llvm.loop !70

._crit_edge41:                                    ; preds = %.lr.ph40, %.preheader
  %.029.lcssa = phi double [ %1, %.preheader ], [ %i.ai, %.lr.ph40 ]
  %.028.lcssa = phi i32 [ %i.ae, %.preheader ], [ %i.aj, %.lr.ph40 ]
  %i.al = zext nneg i32 %.028.lcssa to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_118DOUBLE_MULTIPLIERSE, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !71
  %i.ao = fmul double %.029.lcssa, %i.an
  br label %bb.h

.lr.ph:                                           ; preds = %.preheader34, %.lr.ph
  %.036 = phi i32 [ %i.aq, %.lr.ph ], [ %i.ae, %.preheader34 ] ; 2 uses
  %.135 = phi double [ %i.ap, %.lr.ph ], [ %1, %.preheader34 ]
  %i.ap = fdiv double %.135, 1.000000e+22         ; 2 uses
  %i.aq = add nsw i32 %.036, 22                   ; 2 uses
  %i.ar = icmp samesign ult i32 %.036, -43
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph, %.preheader34
  %.1.lcssa = phi double [ %1, %.preheader34 ], [ %i.ap, %.lr.ph ]
  %.0.lcssa = phi i32 [ %i.ae, %.preheader34 ], [ %i.aq, %.lr.ph ]
  %i.as = sub nsw i32 0, %.0.lcssa
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @_ZN12_GLOBAL__N_118DOUBLE_MULTIPLIERSE, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !71
  %i.aw = fdiv double %.1.lcssa, %i.av
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge41
  %.2 = phi double [ %i.ao, %._crit_edge41 ], [ %i.aw, %._crit_edge ]
  %i.ax = tail call double @uprv_round_78(double noundef %.2)
  %i.ay = fptosi double %i.ax to i64              ; 2 uses
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_786number4impl15DecimalQuantity10_setToLongEl(ptr noundef nonnull align 8 dereferenceable(66) %0, i64 noundef %i.ay)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !20
  %i.bb = sub nsw i32 %i.ba, %i.ae
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity23convertToAccurateDoubleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) initializes((12, 20), (21, 22), (44, 48)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [18 x i8], align 16               ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !23
  call void @_ZN6icu_7817double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef %i.h, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !15, !range !17, !noundef !18
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  call void @uprv_free_78(ptr noundef %i.m)
  store i8 0, ptr %i.i, align 8, !tbaa !15
  br label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit: ; preds = %bb.a, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.q, align 1, !tbaa !22
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !23
  store i32 0, ptr %i.e, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.r, align 4, !tbaa !25
  %i.s = load i32, ptr %i.c, align 4, !tbaa !29
  %i.t = load i32, ptr %i.d, align 4, !tbaa !29
  call void @_ZN6icu_786number4impl15DecimalQuantity25readDoubleConversionToBcdEPKcii(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull %i.a, i32 noundef %i.s, i32 noundef %i.t)
  %i.u = load i32, ptr %i.o, align 4, !tbaa !20
  %i.v = add nsw i32 %i.u, %i.f
  store i32 %i.v, ptr %i.o, align 4, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.w, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare double @uprv_round_78(double noundef) local_unnamed_addr #6

declare void @_ZN6icu_7817double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS1_8DtoaModeEiPciPbPiS5_(double noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity25readDoubleConversionToBcdEPKcii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp sgt i32 %2, 16
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.c = zext nneg i32 %2 to i64
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c       ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.e = icmp eq i32 %2, 1
  br i1 %i.e, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !15, !range !17, !noundef !18
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  %i.l = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.k) #26 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !19
  store i32 %2, ptr %i.i, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 0, i64 %i.k, i1 false)
  br label %.lr.ph27

bb.d:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.j, %2
  br i1 %i.n, label %bb.e, label %.lr.ph27

bb.e:                                             ; preds = %bb.d
  %i.o = shl nuw nsw i32 %2, 1                    ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.p) #26 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19   ; 2 uses
  %i.t = sext i32 %i.j to i64                     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.s, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  %i.v = sub nsw i32 %2, %i.j
  %i.w = zext nneg i32 %i.v to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.u, i8 0, i64 %i.w, i1 false)
  tail call void @uprv_free_78(ptr noundef %i.s)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !19
  store i32 %i.o, ptr %i.i, align 8, !tbaa !19
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.e, %bb.d, %bb.c
  store i8 1, ptr %i.f, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %wide.trip.count32 = zext nneg i32 %2 to i64    ; 2 uses
  %xtraiter37 = and i64 %wide.trip.count32, 1
  %unroll_iter40 = and i64 %wide.trip.count32, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph27
  %indvars.iv29 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next30.1, %bb.f ] ; 4 uses
  %niter41 = phi i64 [ 0, %.lr.ph27 ], [ %niter41.next.1, %bb.f ]
  %4 = trunc nuw nsw i64 %indvars.iv29 to i32
  %5 = xor i32 %4, -1
  %6 = add nsw i32 %2, %5
  %7 = zext nneg i32 %6 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = add i8 %i.z, -48
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv29
  store i8 %i.aa, ptr %i.ac, align 1, !tbaa !19
  %indvars.iv.next30 = or disjoint i64 %indvars.iv29, 1 ; 2 uses
  %8 = trunc nuw nsw i64 %indvars.iv.next30 to i32
  %9 = xor i32 %8, -1
  %10 = add nsw i32 %2, %9
  %11 = zext nneg i32 %10 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %11
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = add i8 %i.ae, -48
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %indvars.iv.next30
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !19
  %indvars.iv.next30.1 = add nuw nsw i64 %indvars.iv29, 2 ; 3 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !73

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.02124.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod36 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.ai = xor i64 %indvars.iv.epil.init, -1
  %i.aj = getelementptr i8, ptr %i.d, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !19
  %i.al = sext i8 %i.ak to i64
  %i.am = add nsw i64 %i.al, -48
  %i.an = shl nuw nsw i64 %indvars.iv.epil.init, 2
  %i.ao = shl i64 %i.am, %i.an
  %i.ap = or i64 %i.ao, %.02124.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.021.lcssa = phi i64 [ 0, %.preheader ], [ %i.bg, %._crit_edge.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.021.lcssa, ptr %i.aq, align 8, !tbaa !19
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %.02124 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bg, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ar = xor i64 %indvars.iv, -1
  %i.as = getelementptr i8, ptr %i.d, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !19
  %i.au = sext i8 %i.at to i64
  %i.av = add nsw i64 %i.au, -48
  %i.aw = shl nuw nsw i64 %indvars.iv, 2
  %i.ax = shl i64 %i.av, %i.aw
  %i.ay = or i64 %i.ax, %.02124
  %i.az = xor i64 %indvars.iv, -2
  %i.ba = getelementptr i8, ptr %i.d, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = sext i8 %i.bb to i64
  %i.bd = add nsw i64 %i.bc, -48
  %indvars.iv.next = shl i64 %indvars.iv, 2
  %i.be = or disjoint i64 %indvars.iv.next, 4
  %i.bf = shl i64 %i.bd, %i.be
  %i.bg = or i64 %i.bf, %i.ay                     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !74

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.f
  %lcmp.mod38.not = icmp eq i64 %xtraiter37, 0
  br i1 %lcmp.mod38.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod39 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %12 = trunc nuw nsw i64 %indvars.iv.next30.1 to i32
  %13 = xor i32 %12, -1
  %14 = add nsw i32 %2, %13
  %15 = zext nneg i32 %14 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %15
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = add i8 %i.bi, -48
  %i.bk = load ptr, ptr %i.x, align 8, !tbaa !19
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %indvars.iv.next30.1
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %._crit_edge
  %i.bm = sub nsw i32 %3, %2
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.bo, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(66) ptr @_ZN6icu_786number4impl15DecimalQuantity14setToDecNumberENS_11StringPieceER10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(66) initializes((12, 22), (24, 36), (44, 48)) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !15, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @uprv_free_78(ptr noundef %i.e)
  store i8 0, ptr %i.a, align 8, !tbaa !15
  br label %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit

_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !19
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double 0.000000e+00, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.i, align 8, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.j, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.g, i8 0, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZN6icu_786number4impl6DecNumC1Ev(ptr noundef nonnull align 8 dereferenceable(92) %4)
  invoke void @_ZN6icu_786number4impl6DecNum5setToENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92) %4, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit
  invoke void @_ZN6icu_786number4impl15DecimalQuantity12_setToDecNumERKNS1_6DecNumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.l = load i8, ptr %i.k, align 4, !tbaa !42
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN6icu_786number4impl6DecNumD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %4, align 8, !tbaa !46
  invoke void @uprv_free_78(ptr noundef %i.m)
          to label %_ZN6icu_786number4impl6DecNumD2Ev.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #24
  unreachable

_ZN6icu_786number4impl6DecNumD2Ev.exit:           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret ptr %0

bb.g:                                             ; preds = %bb.c, %_ZN6icu_786number4impl15DecimalQuantity12setBcdToZeroEv.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786number4impl6DecNumD2Ev(ptr noundef nonnull align 8 dead_on_return(92) dereferenceable(92) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.p
}

declare void @_ZN6icu_786number4impl6DecNum5setToENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(92), ptr, i32, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity12_setToDecNumERKNS1_6DecNumER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !40
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum10isNegativeEv(ptr noundef nonnull align 8 dereferenceable(92) %1)
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !28
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = tail call noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum5isNaNEv(ptr noundef nonnull align 8 dereferenceable(92) %1)
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4, !tbaa !28
  %i.j = or i8 %i.i, 4
  store i8 %i.j, ptr %i.h, align 4, !tbaa !28
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.k = tail call noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum10isInfinityEv(ptr noundef nonnull align 8 dereferenceable(92) %1)
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !28
  %i.n = or i8 %i.m, 2
  store i8 %i.n, ptr %i.l, align 4, !tbaa !28
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.o = tail call noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum6isZeroEv(ptr noundef nonnull align 8 dereferenceable(92) %1)
  br i1 %i.o, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_786number4impl15DecimalQuantity18readDecNumberToBcdERKNS1_6DecNumE(ptr noundef nonnull align 8 dereferenceable(66) %0, ptr noundef nonnull align 8 dereferenceable(92) %1)
  tail call void @_ZN6icu_786number4impl15DecimalQuantity7compactEv(ptr noundef nonnull align 8 dereferenceable(66) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.a, %bb.e
  ret void
}

declare noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum10isNegativeEv(ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum5isNaNEv(ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum10isInfinityEv(ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK6icu_786number4impl6DecNum6isZeroEv(ptr noundef nonnull align 8 dereferenceable(92)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl15DecimalQuantity18fromExponentStringENS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::number::impl::DecimalQuantity") align 8 %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %5 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::number::impl::DecNum", align 8 ; 9 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 4 uses
  %9 = alloca %"class.icu_78::CharString", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = icmp slt i16 %i.c, 0
  %i.e = ashr i16 %i.c, 5
  %i.f = sext i16 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = select i1 %i.d, i32 %i.h, i32 %i.f
  %i.j = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 101, i32 noundef 0, i32 noundef %i.i)
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = load i32, ptr %i.g, align 4
  %i.q = select i1 %i.m, i32 %i.p, i32 %i.o
  %i.r = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 99, i32 noundef 0, i32 noundef %i.q)
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.g, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  %i.z = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 69, i32 noundef 0, i32 noundef %i.y)
  %i.aa = icmp sgt i32 %i.z, -1
  br i1 %i.aa, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = load i16, ptr %i.b, align 8, !tbaa !19  ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = load i32, ptr %i.g, align 4
  %i.ag = select i1 %i.ac, i32 %i.af, i32 %i.ae
  %i.ah = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 67, i32 noundef 0, i32 noundef %i.ag)
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.e, label %bb.ak
end_hunk_0
