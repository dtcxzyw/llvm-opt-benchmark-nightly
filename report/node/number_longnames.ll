Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/number_longnames?download=true
inline.NumInlined: 640
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN12_GLOBAL__N_114getMeasureDataERKN6icu_786LocaleERKNS0_11MeasureUnitERK16UNumberUnitWidthPKcPNS0_13UnicodeStringER10UErrorCode:bb.a
  %i.eo = load ptr, ptr %26, align 8
  call void @ures_getAllChildrenWithFallback_78(ptr noundef %i.h, ptr noundef %i.eo, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.f) #16
  %i.ep = load i32, ptr %2, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.er = load i32, ptr %i.f, align 4             ; 2 uses
  %i.es = icmp slt i32 %i.er, 1
  br i1 %i.es, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 %i.er, ptr %5, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  %i.et = load i8, ptr %i.dg, align 4
  %.not.i.i.i45 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i45, label %_ZN6icu_7810CharStringD2Ev.exit46, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = load ptr, ptr %26, align 8
  call void @uprv_free_78(ptr noundef %i.eu) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit46

_ZN6icu_7810CharStringD2Ev.exit46:                ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  %i.ev = load i8, ptr %i.ay, align 4
  %.not.i.i.i47 = icmp eq i8 %i.ev, 0
  br i1 %.not.i.i.i47, label %_ZN6icu_7810CharStringD2Ev.exit48, label %bb.z

bb.z:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit46
  %i.ew = load ptr, ptr %18, align 8
  call void @uprv_free_78(ptr noundef %i.ew) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit48

_ZN6icu_7810CharStringD2Ev.exit48:                ; preds = %_ZN6icu_7810CharStringD2Ev.exit46, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.ex = load i8, ptr %i.af, align 4
  %.not.i.i.i49 = icmp eq i8 %i.ex, 0
  br i1 %.not.i.i.i49, label %_ZN6icu_7810CharStringD2Ev.exit50, label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit48
  %i.ey = load ptr, ptr %14, align 8
  call void @uprv_free_78(ptr noundef %i.ey) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit50

_ZN6icu_7810CharStringD2Ev.exit50:                ; preds = %_ZN6icu_7810CharStringD2Ev.exit48, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit50
  call void @ures_close_78(ptr noundef nonnull %i.ab) #16
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit: ; preds = %_ZN6icu_7810CharStringD2Ev.exit50, %bb.ab
  %i.ez = load i8, ptr %i.m, align 4
  %.not.i.i.i51 = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i51, label %_ZN6icu_7810CharStringD2Ev.exit52, label %bb.ac

bb.ac:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit
  %i.fa = load ptr, ptr %9, align 8
  call void @uprv_free_78(ptr noundef %i.fa) #16
  br label %_ZN6icu_7810CharStringD2Ev.exit52

_ZN6icu_7810CharStringD2Ev.exit52:                ; preds = %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZN6icu_7810CharStringD2Ev.exit52
  %.not.i53 = icmp eq ptr %i.h, null
  br i1 %.not.i53, label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit54, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @ures_close_78(ptr noundef nonnull %i.h) #16
  br label %_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit54

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit54: ; preds = %bb.ad, %bb.ae
  call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120maybeCalculateGenderERKN6icu_786LocaleERKNS0_11MeasureUnitEPNS0_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 10 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %7 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %8 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 5 uses
  %10 = alloca %"class.icu_78::MeasureUnit", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %13 = alloca %"class.icu_78::MeasureUnit", align 8 ; 5 uses
  %14 = alloca %"class.icu_78::UnicodeString", align 8 ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 1
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @_ZN6icu_7811MeasureUnit8getMeterEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnit") align 8 %13) #16
  call fastcc void @_ZN12_GLOBAL__N_119getGenderForBuiltinERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.f = load i16, ptr %i.e, align 8
  %i.g = icmp ugt i16 %i.f, 31
  br i1 %i.g, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16, !noalias !24
  store i32 0, ptr %4, align 8, !noalias !24
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.h, align 8, !noalias !24
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.j, ptr %i.i, align 8, !noalias !24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.k, align 8, !noalias !24
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 0, ptr %i.l, align 4, !noalias !24
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false), !noalias !24
  %i.n = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #16, !noalias !24 ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !noalias !24
  switch i32 %i.o, label %.critedge71.i [
    i32 1, label %bb.d
    i32 2, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !noalias !24 ; 2 uses
  %i.r = add nsw i32 %i.q, -1                     ; 4 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !noalias !24
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.s
  %i.w = load ptr, ptr %i.v, align 8, !noalias !24
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !noalias !24
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !24
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0) #16, !noalias !24
  call fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef align 8 %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %3), !noalias !24
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #16, !noalias !24
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !noalias !24 ; 3 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !noalias !24
  %i.ah = select i1 %i.ac, i32 %i.ag, i32 %i.ae
  %.not.i = icmp eq i32 %i.ah, 1
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeStringixEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %5) #16
  br label %.critedge69.i

_ZNK6icu_7813UnicodeStringixEi.exit.i:            ; preds = %bb.e
  %i.ai = and i16 %i.ab, 2
  %.not.i.i.i.i = icmp eq i16 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !24
  %i.am = select i1 %.not.i.i.i.i, ptr %i.al, ptr %i.aj
  %i.an = load i16, ptr %i.am, align 2, !noalias !24
  %i.ao = icmp eq i16 %i.an, 49
  br i1 %i.ao, label %.preheader.i, label %.preheader81.i

.preheader81.i:                                   ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %i.ap = icmp sgt i32 %i.q, 0
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader81.i
  %i.aq = load ptr, ptr %i.t, align 8, !noalias !24
  br label %bb.h

.preheader.i:                                     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %i.ar = load ptr, ptr %i.t, align 8, !noalias !24
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.g ], [ 0, %.preheader.i ] ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i.a
  %i.at = load ptr, ptr %i.as, align 8, !noalias !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !noalias !24
  %i.aw = icmp sgt i32 %i.av, -1
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1
  br i1 %i.aw, label %bb.g, label %.critedge.loopexit.i.a, !llvm.loop !22

bb.h:                                             ; preds = %bb.i, %.lr.ph.i
  %.05184.i = phi i32 [ %i.r, %.lr.ph.i ], [ %16, %bb.i ] ; 4 uses
  %15 = zext nneg i32 %.05184.i to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %15
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !noalias !24
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %bb.h
  %16 = add nsw i32 %.05184.i, -1
  %i.bc = icmp sgt i32 %.05184.i, 0
  br i1 %i.bc, label %bb.h, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.i, %.preheader81.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !alias.scope !24
  %i.bd = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bd, align 8, !alias.scope !24
  br label %.critedge69.i

.critedge.loopexit.i.a:                           ; preds = %bb.g
  %i.be = trunc nuw nsw i64 %indvars.iv.i.a to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %.critedge.loopexit.i.a
  %.257.i = phi i32 [ %i.be, %.critedge.loopexit.i.a ], [ 0, %bb.h ]
  %.253.i = phi i32 [ %i.r, %.critedge.loopexit.i.a ], [ %.05184.i, %bb.h ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #16, !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !24
  br label %bb.j

bb.j:                                             ; preds = %.critedge.i, %bb.d
  %.358.i = phi i32 [ %.257.i, %.critedge.i ], [ 0, %bb.d ] ; 3 uses
  %.354.i = phi i32 [ %.253.i, %.critedge.i ], [ %i.r, %bb.d ] ; 2 uses
  %i.bf = icmp sgt i32 %.354.i, %.358.i
  br i1 %i.bf, label %bb.k, label %.critedge71.i

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0) #16, !noalias !24
  call fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bh = load i16, ptr %i.bg, align 8, !alias.scope !24 ; 3 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !24
  %i.bn = select i1 %i.bi, i32 %i.bm, i32 %i.bk
  %.not63.not.i = icmp eq i32 %i.bn, 1
  br i1 %.not63.not.i, label %_ZNK6icu_7813UnicodeStringixEi.exit80.i, label %.critedge74.i

_ZNK6icu_7813UnicodeStringixEi.exit80.i:          ; preds = %bb.k
  %i.bo = and i16 %i.bh, 2
  %.not.i.i.i79.i = icmp eq i16 %i.bo, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !24
  %i.bs = select i1 %.not.i.i.i79.i, ptr %i.br, ptr %i.bp
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = icmp eq i16 %i.bt, 48
  %.358..354.i = select i1 %i.bu, i32 %.358.i, i32 %.354.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #16
  br label %.critedge71.i

.critedge69.i:                                    ; preds = %._crit_edge.i, %bb.f
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !24
  br label %.critedge74.i

bb.l:                                             ; preds = %bb.c
  store i32 5, ptr %3, align 4, !noalias !24
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !alias.scope !24
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bv, align 8, !alias.scope !24
  br label %.critedge74.i

.critedge71.i:                                    ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit80.i, %bb.j, %bb.c
  %.161.i = phi i32 [ 0, %bb.c ], [ %.358..354.i, %_ZNK6icu_7813UnicodeStringixEi.exit80.i ], [ %.358.i, %bb.j ]
  %i.bw = sext i32 %.161.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.by, i64 %i.bw
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %.not64.i = icmp eq i32 %i.cd, 1
  br i1 %.not64.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %.critedge71.i
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  call fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #16
  %i.ce = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 8, !alias.scope !24 ; 2 uses
  %i.cg = icmp slt i16 %i.cf, 0
  %i.ch = ashr i16 %i.cf, 5
  %i.ci = sext i16 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !alias.scope !24
  %i.cl = select i1 %i.cg, i32 %i.ck, i32 %i.ci
  %.not65.not.i = icmp eq i32 %i.cl, 1
  br i1 %.not65.not.i, label %bb.n, label %.critedge74.i

bb.n:                                             ; preds = %bb.m
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #16
  %.pre.i = load i32, ptr %i.cb, align 4
  %.pre88.i = call i32 @llvm.abs.i32(i32 %.pre.i, i1 true)
  %i.cm = icmp eq i32 %.pre88.i, 1
  br i1 %i.cm, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  call fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #16
  %i.cn = load i16, ptr %i.ce, align 8, !alias.scope !24 ; 2 uses
  %i.co = icmp slt i16 %i.cn, 0
  %i.cp = ashr i16 %i.cn, 5
  %i.cq = sext i16 %i.cp to i32
  %i.cr = load i32, ptr %i.cj, align 4, !alias.scope !24
  %i.cs = select i1 %i.co, i32 %i.cr, i32 %i.cq
  %.not67.not.i = icmp eq i32 %i.cs, 1
  br i1 %.not67.not.i, label %bb.p, label %.critedge74.i

bb.p:                                             ; preds = %bb.o
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #16
  br label %.thread.i

.thread.i:                                        ; preds = %bb.p, %bb.n, %.critedge71.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16, !noalias !24
  %i.ct = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %i.ca) #16
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef %i.ct) #16
  %i.cu = load ptr, ptr %11, align 8, !noalias !24
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !noalias !24
  call void @_ZN6icu_7811MeasureUnit13forIdentifierENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnit") align 8 %10, ptr %i.cu, i32 %i.cw, ptr noundef nonnull align 4 dereferenceable(4) %3) #16
  call fastcc void @_ZN12_GLOBAL__N_119getGenderForBuiltinERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %10, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !24
  br label %.critedge74.i

.critedge74.i:                                    ; preds = %.thread.i, %bb.o, %bb.m, %bb.l, %.critedge69.i, %bb.k
  %i.cx = load ptr, ptr %i.m, align 8, !noalias !24
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.cx) #16
  %i.cy = load i32, ptr %i.h, align 8, !noalias !24 ; 2 uses
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s, %.critedge74.i
  %i.da = load i8, ptr %i.l, align 4, !noalias !24
  %.not.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %_ZN12_GLOBAL__N_122calculateGenderForUnitERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.db = load ptr, ptr %i.i, align 8, !noalias !24
  call void @uprv_free_78(ptr noundef %i.db) #16
  br label %_ZN12_GLOBAL__N_122calculateGenderForUnitERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode.exit

.lr.ph.i.i.i:                                     ; preds = %.critedge74.i, %bb.s
  %i.dc = phi i32 [ %i.dh, %bb.s ], [ %i.cy, %.critedge74.i ]
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.s ], [ 0, %.critedge74.i ] ; 2 uses
  %i.dd = load ptr, ptr %i.i, align 8, !noalias !24
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %indvars.iv.i.i.i
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.df) #16
  %.pre.i.i.i = load i32, ptr %i.h, align 8, !noalias !24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i
  %i.dh = phi i32 [ %i.dc, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %bb.r ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next.i.i.i, %i.di
  br i1 %i.dj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !0

_ZN12_GLOBAL__N_122calculateGenderForUnitERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode.exit: ; preds = %._crit_edge.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16, !noalias !24
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.dk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %14) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %_ZN12_GLOBAL__N_122calculateGenderForUnitERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_786number4impl15LongNameHandler24simpleFormatsToModifiersEPKNS_13UnicodeStringENS_22FormattedStringBuilder5FieldER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(872) %0, ptr noundef %1, i8 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 9 uses
  %6 = alloca %"class.icu_78::number::impl::SimpleModifier", align 8 ; 7 uses
  %7 = alloca %"struct.icu_78::number::impl::Modifier::Parameters", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %1, i64 %indvars.iv
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.j) #16
  %i.k = load i16, ptr %i.a, align 8, !alias.scope !28
  %i.l = and i16 %i.k, 1
end_hunk_0
