Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_longnames?download=true
inline.NumInlined: 654
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN12_GLOBAL__N_114getMeasureDataERKN6icu_786LocaleERKNS0_11MeasureUnitERK16UNumberUnitWidthPKcPNS0_13UnicodeStringER10UErrorCode:bb.a
  ret void

bb.cs:                                            ; preds = %bb.cd, %bb.by, %bb.bm
  %.pn72 = phi { ptr, i32 } [ %i.fx, %bb.cd ], [ %.pn69, %bb.by ], [ %i.ek, %bb.bm ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.an, %bb.bi, %bb.cs, %.body, %bb.ag
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bt, %bb.ag ], [ %.pn72, %bb.cs ], [ %.pn63.pn.pn, %bb.bi ], [ %i.ck, %bb.an ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.af
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %bb.ct ], [ %i.bs, %bb.af ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #21
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ae
  %.pn72.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn, %bb.cu ], [ %i.br, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.ad
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn, %bb.cv ], [ %i.bq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.ac
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cw ], [ %i.bp, %bb.ac ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.d
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %i.k, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN12_GLOBAL__N_120maybeCalculateGenderERKN6icu_786LocaleERKNS0_11MeasureUnitEPNS0_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::MeasureUnitImpl", align 8 ; 12 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %6 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  %7 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  %8 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  %9 = alloca %"class.icu_78::Locale", align 8    ; 6 uses
  %10 = alloca %"class.icu_78::MeasureUnit", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %13 = alloca %"class.icu_78::MeasureUnit", align 8 ; 7 uses
  %14 = alloca %"class.icu_78::UnicodeString", align 8 ; 23 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.c = load i16, ptr %i.b, align 8, !tbaa !10
  %i.d = and i16 %i.c, 1
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @_ZN6icu_7811MeasureUnit8getMeterEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnit") align 8 %13)
  invoke fastcc void @_ZN12_GLOBAL__N_119getGenderForBuiltinERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %13, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !10
  %i.g = icmp ugt i16 %i.f, 31
  br i1 %i.g, label %bb.e, label %bb.az

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ba

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !45
  store i32 0, ptr %4, align 8, !tbaa !48, !noalias !45
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !58, !noalias !45
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %i.j, align 8, !tbaa !59, !noalias !45
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.l, align 8, !tbaa !60, !noalias !45
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 0, ptr %i.m, align 4, !tbaa !61, !noalias !45
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !45
  %i.o = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.l, !noalias !45 ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.o, align 8, !tbaa !48
  switch i32 %i.p, label %bb.ab [
    i32 1, label %bb.g
    i32 2, label %bb.aa
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.s = add nsw i32 %i.r, -1                     ; 4 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !59
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !45
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef align 8 %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !10, !noalias !45 ; 3 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !45
  %i.ai = select i1 %i.ad, i32 %i.ah, i32 %i.af
  %.not.i = icmp eq i32 %i.ai, 1
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %5) #21
  br label %.critedge91.i

bb.l:                                             ; preds = %bb.e
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #21
  br label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.an = and i16 %i.ac, 2
  %.not.i.i.i.i = icmp eq i16 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !45
  %i.ar = select i1 %.not.i.i.i.i, ptr %i.aq, ptr %i.ao
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !67
  %i.at = icmp eq i16 %i.as, 49
  br i1 %i.at, label %.preheader.i, label %.preheader103.i

.preheader103.i:                                  ; preds = %bb.p
  %i.au = icmp sgt i32 %i.r, 0
  br i1 %i.au, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader103.i
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !59
  %15 = zext nneg i32 %i.s to i64
  br label %bb.r

.preheader.i:                                     ; preds = %bb.p
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !59
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.q ], [ 0, %.preheader.i ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv.i.a
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !64
  %i.bb = icmp sgt i32 %i.ba, -1
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1
  br i1 %i.bb, label %bb.q, label %.critedge.loopexit.i, !llvm.loop !69

bb.r:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %15, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.s ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !62
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !64
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %.critedge.loopexit.i.a

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bh = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.bh, label %bb.r, label %._crit_edge.i, !llvm.loop !71

._crit_edge.i:                                    ; preds = %bb.s, %.preheader103.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !8, !alias.scope !45
  %i.bi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bi, align 8, !tbaa !10, !alias.scope !45
  br label %.critedge91.i

.critedge.loopexit.i:                             ; preds = %bb.q
  %16 = trunc nuw nsw i64 %indvars.iv.i.a to i32
  br label %.critedge.i

.critedge.loopexit.i.a:                           ; preds = %bb.r
  %i.bj = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i.a, %.critedge.loopexit.i
  %.259.i = phi i32 [ %16, %.critedge.loopexit.i ], [ 0, %.critedge.loopexit.i.a ]
  %.255.i = phi i32 [ %i.s, %.critedge.loopexit.i ], [ %i.bj, %.critedge.loopexit.i.a ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !45
  br label %bb.u

bb.t:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.am, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !45
  br label %.body

bb.u:                                             ; preds = %.critedge.i, %bb.g
  %.360.i = phi i32 [ %.259.i, %.critedge.i ], [ 0, %bb.g ] ; 3 uses
  %.356.i = phi i32 [ %.255.i, %.critedge.i ], [ %i.s, %bb.g ] ; 2 uses
  %i.bk = icmp sgt i32 %.356.i, %.360.i
  br i1 %i.bk, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.w unwind label %bb.m

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bm = load i16, ptr %i.bl, align 8, !tbaa !10, !alias.scope !45 ; 3 uses
  %i.bn = icmp slt i16 %i.bm, 0
  %i.bo = ashr i16 %i.bm, 5
  %i.bp = sext i16 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.br = load i32, ptr %i.bq, align 4, !alias.scope !45
  %i.bs = select i1 %i.bn, i32 %i.br, i32 %i.bp
  %.not78.not.i = icmp eq i32 %i.bs, 1
  br i1 %.not78.not.i, label %bb.z, label %.critedge96.i

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  br label %.body

bb.z:                                             ; preds = %bb.x
  %i.bu = and i16 %i.bm, 2
  %.not.i.i.i101.i = icmp eq i16 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.bw = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !45
  %i.by = select i1 %.not.i.i.i101.i, ptr %i.bx, ptr %i.bv
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !67
  %i.ca = icmp eq i16 %i.bz, 48
  %.360..356.i = select i1 %i.ca, i32 %.360.i, i32 %.356.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  br label %bb.ab

.critedge91.i:                                    ; preds = %._crit_edge.i, %bb.k
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !45
  br label %.critedge96.i

bb.aa:                                            ; preds = %bb.f
  store i32 5, ptr %3, align 4, !tbaa !11, !noalias !45
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !8, !alias.scope !45
  %i.cb = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.cb, align 8, !tbaa !10, !alias.scope !45
  br label %.critedge96.i

bb.ab:                                            ; preds = %bb.z, %bb.u, %bb.f
  %.163.i = phi i32 [ 0, %bb.f ], [ %.360..356.i, %bb.z ], [ %.360.i, %bb.u ]
  %i.cc = sext i32 %.163.i to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !59
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.ce, i64 %i.cc
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !62 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !64
  %i.cj = call i32 @llvm.abs.i32(i32 %i.ci, i1 true)
  %.not81.i = icmp eq i32 %i.cj, 1
  br i1 %.not81.i, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 8, !tbaa !10, !alias.scope !45 ; 2 uses
  %i.cm = icmp slt i16 %i.cl, 0
  %i.cn = ashr i16 %i.cl, 5
  %i.co = sext i16 %i.cn to i32
  %i.cp = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !alias.scope !45
  %i.cr = select i1 %i.cm, i32 %i.cq, i32 %i.co
  %.not82.not.i = icmp eq i32 %i.cr, 1
  br i1 %.not82.not.i, label %bb.ah, label %.critedge96.i

bb.af:                                            ; preds = %bb.ai, %bb.ac
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ag:                                            ; preds = %bb.ad
  %i.ct = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  br label %.body

bb.ah:                                            ; preds = %bb.ae
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  %.pre.i = load i32, ptr %i.ch, align 4, !tbaa !64
  %.pre110.i = call i32 @llvm.abs.i32(i32 %.pre.i, i1 true)
  %i.cu = icmp eq i32 %.pre110.i, 1
  br i1 %i.cu, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.aj unwind label %bb.af

bb.aj:                                            ; preds = %bb.ai
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #21
  %i.cv = load i16, ptr %i.ck, align 8, !tbaa !10, !alias.scope !45 ; 2 uses
  %i.cw = icmp slt i16 %i.cv, 0
  %i.cx = ashr i16 %i.cv, 5
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i32, ptr %i.cp, align 4, !alias.scope !45
  %i.da = select i1 %i.cw, i32 %i.cz, i32 %i.cy
  %.not84.not.i = icmp eq i32 %i.da, 1
  br i1 %.not84.not.i, label %bb.am, label %.critedge96.i

bb.al:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #21
  br label %.body

bb.am:                                            ; preds = %bb.ak
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  br label %.thread.i

.thread.i:                                        ; preds = %bb.am, %bb.ah, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !45
  %i.dc = invoke noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %i.cg)
          to label %bb.an unwind label %bb.ar

bb.an:                                            ; preds = %.thread.i
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef %i.dc)
          to label %bb.ao unwind label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.dd = load ptr, ptr %11, align 8, !noalias !45
  %i.de = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.df = load i32, ptr %i.de, align 8, !noalias !45
  invoke void @_ZN6icu_7811MeasureUnit13forIdentifierENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnit") align 8 %10, ptr %i.dd, i32 %i.df, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_ZN12_GLOBAL__N_119getGenderForBuiltinERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %10, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.aq unwind label %bb.as

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !45
  br label %.critedge96.i

bb.ar:                                            ; preds = %bb.ao, %bb.an, %.thread.i
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.as:                                            ; preds = %bb.ap
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #21
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pn85.i = phi { ptr, i32 } [ %i.dh, %bb.as ], [ %i.dg, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !45
  br label %.body

.critedge96.i:                                    ; preds = %bb.aq, %bb.ak, %bb.ae, %bb.aa, %.critedge91.i, %bb.x
  %i.di = load ptr, ptr %i.n, align 8, !tbaa !72, !noalias !45
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.di) #21
  %i.dj = load i32, ptr %i.i, align 8, !tbaa !58, !noalias !45 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.ax, %.critedge96.i
  %i.dl = load i8, ptr %i.m, align 4, !tbaa !61, !noalias !45
  %.not.i.i.i.i.i = icmp eq i8 %i.dl, 0
  br i1 %.not.i.i.i.i.i, label %bb.ay, label %bb.au
end_hunk_0
