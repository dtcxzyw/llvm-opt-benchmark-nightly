Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_longnames?download=true
inline.NumInlined: 654
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN12_GLOBAL__N_114getMeasureDataERKN6icu_786LocaleERKNS0_11MeasureUnitERK16UNumberUnitWidthPKcPNS0_13UnicodeStringER10UErrorCode:bb.a
  %i.gp = landingpad { ptr, i32 }
          catch ptr null
  %i.gq = extractvalue { ptr, i32 } %i.gp, 0
  call void @__clang_call_terminate(ptr %i.gq) #23
  unreachable

_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev.exit118: ; preds = %bb.cm, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  ret void

bb.cp:                                            ; preds = %bb.ca, %bb.bv, %bb.bj
  %.pn72 = phi { ptr, i32 } [ %i.fu, %bb.ca ], [ %.pn69, %bb.bv ], [ %i.eh, %bb.bj ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %28) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #21
  br label %bb.cq

bb.cq:                                            ; preds = %bb.al, %bb.bf, %bb.cp, %.body
  %.pn72.pn.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ci, %bb.al ], [ %.pn72, %bb.cp ], [ %.pn63.pn.pn, %bb.bf ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.ae
  %.pn72.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn, %bb.cq ], [ %i.br, %bb.ae ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @_ZN6icu_7820StackUResourceBundleD1Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %15) #21
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.ad
  %.pn72.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn, %bb.cr ], [ %i.bq, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #21
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.ac
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn, %bb.cs ], [ %i.bp, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #21
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.ab
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ct ], [ %i.bo, %bb.ab ]
  call void @_ZN6icu_7810CharStringD2Ev(ptr noundef nonnull align 8 dead_on_return(60) dereferenceable(60) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #21
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.d
  %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn72.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.cu ], [ %i.k, %bb.d ]
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
  %i.c = load i16, ptr %i.b, align 8, !tbaa !13
  %i.d = and i16 %i.c, 1
  %.not = icmp eq i16 %i.d, 0
  br i1 %.not, label %bb.az, label %bb.b

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
  %i.f = load i16, ptr %i.e, align 8, !tbaa !13
  %i.g = icmp ugt i16 %i.f, 31
  br i1 %i.g, label %bb.e, label %bb.ax

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ay

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !184)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !184
  store i32 0, ptr %4, align 8, !tbaa !51, !noalias !184
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !52, !noalias !184
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.k, ptr %i.j, align 8, !tbaa !53, !noalias !184
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 8, ptr %i.l, align 8, !tbaa !54, !noalias !184
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  store i8 0, ptr %i.m, align 4, !tbaa !55, !noalias !184
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false), !noalias !184
  %i.o = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN6icu_7815MeasureUnitImpl14forMeasureUnitERKNS_11MeasureUnitERS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(19) %1, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.f unwind label %bb.ad, !noalias !184 ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.o, align 8, !tbaa !51
  switch i32 %i.p, label %bb.z [
    i32 1, label %bb.g
    i32 2, label %bb.y
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %i.s = add nsw i32 %i.r, -1                     ; 4 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !53
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !60
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21, !noalias !184
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef align 8 %6, ptr noundef nonnull @.str.2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #21
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !13, !noalias !184 ; 3 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !184
  %i.ai = select i1 %i.ad, i32 %i.ah, i32 %i.af
  %.not.i = icmp eq i32 %i.ai, 1
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %5) #21
  br label %.critedge91.i

bb.l:                                             ; preds = %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #21
  br label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.al = and i16 %i.ac, 2
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !184
  %i.ap = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.am
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !62
  %i.ar = icmp eq i16 %i.aq, 49
  br i1 %i.ar, label %.preheader.i, label %.preheader103.i

.preheader103.i:                                  ; preds = %bb.n
  %i.as = icmp sgt i32 %i.r, 0
  br i1 %i.as, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader103.i
  %i.at = load ptr, ptr %i.u, align 8, !tbaa !53
  %15 = zext nneg i32 %i.s to i64
  br label %bb.p

.preheader.i:                                     ; preds = %bb.n
  %i.au = load ptr, ptr %i.u, align 8, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.preheader.i
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.a, %bb.o ], [ 0, %.preheader.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !57
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !60
  %i.az = icmp sgt i32 %i.ay, -1
  %indvars.iv.next.i.a = add nuw nsw i64 %indvars.iv.i.a, 1
  br i1 %i.az, label %bb.o, label %.critedge.loopexit.i, !llvm.loop !182

bb.p:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %15, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !60
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %bb.q, label %.critedge.loopexit.i.a

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bf = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.bf, label %bb.p, label %._crit_edge.i, !llvm.loop !183

._crit_edge.i:                                    ; preds = %bb.q, %.preheader103.i
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !12, !alias.scope !184
  %i.bg = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bg, align 8, !tbaa !13, !alias.scope !184
  br label %.critedge91.i

.critedge.loopexit.i:                             ; preds = %bb.o
  %16 = trunc nuw nsw i64 %indvars.iv.i.a to i32
  br label %.critedge.i

.critedge.loopexit.i.a:                           ; preds = %bb.p
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i.a, %.critedge.loopexit.i
  %.259.i = phi i32 [ %16, %.critedge.loopexit.i ], [ 0, %.critedge.loopexit.i.a ]
  %.255.i = phi i32 [ %i.s, %.critedge.loopexit.i ], [ %i.bh, %.critedge.loopexit.i.a ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !184
  br label %bb.s

bb.r:                                             ; preds = %bb.m, %bb.l
  %.pn.i = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ak, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !184
  br label %.body

bb.s:                                             ; preds = %.critedge.i, %bb.g
  %.360.i = phi i32 [ %.259.i, %.critedge.i ], [ 0, %bb.g ] ; 3 uses
  %.356.i = phi i32 [ %.255.i, %.critedge.i ], [ %i.s, %bb.g ] ; 2 uses
  %i.bi = icmp sgt i32 %.356.i, %.360.i
  br i1 %i.bi, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %7, ptr noundef nonnull @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  %i.bj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !13, !alias.scope !184 ; 3 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !alias.scope !184
  %i.bq = select i1 %i.bl, i32 %i.bp, i32 %i.bn
  %.not78.not.i = icmp eq i32 %i.bq, 1
  br i1 %.not78.not.i, label %bb.x, label %.critedge96.i

bb.w:                                             ; preds = %bb.u
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #21
  br label %.body

bb.x:                                             ; preds = %bb.v
  %i.bs = and i16 %i.bk, 2
  %.not.i.i.i101.i = icmp eq i16 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.bu = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !184
  %i.bw = select i1 %.not.i.i.i101.i, ptr %i.bv, ptr %i.bt
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !62
  %i.by = icmp eq i16 %i.bx, 48
  %.360..356.i = select i1 %i.by, i32 %.360.i, i32 %.356.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  br label %bb.z

.critedge91.i:                                    ; preds = %._crit_edge.i, %bb.k
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21, !noalias !184
  br label %.critedge96.i

bb.y:                                             ; preds = %bb.f
  store i32 5, ptr %3, align 4, !tbaa !15, !noalias !184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !12, !alias.scope !184
  %i.bz = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i16 2, ptr %i.bz, align 8, !tbaa !13, !alias.scope !184
  br label %.critedge96.i

bb.z:                                             ; preds = %bb.x, %bb.s, %bb.f
  %.163.i = phi i32 [ 0, %bb.f ], [ %.360..356.i, %bb.x ], [ %.360.i, %bb.s ]
  %i.ca = sext i32 %.163.i to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ca
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !57 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !60
  %i.ch = call i32 @llvm.abs.i32(i32 %i.cg, i1 true)
  %.not81.i = icmp eq i32 %i.ch, 1
  br i1 %.not81.i, label %.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %8, ptr noundef nonnull @.str.6, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 8, !tbaa !13, !alias.scope !184 ; 2 uses
  %i.ck = icmp slt i16 %i.cj, 0
  %i.cl = ashr i16 %i.cj, 5
  %i.cm = sext i16 %i.cl to i32
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !alias.scope !184
  %i.cp = select i1 %i.ck, i32 %i.co, i32 %i.cm
  %.not82.not.i = icmp eq i32 %i.cp, 1
  br i1 %.not82.not.i, label %bb.af, label %.critedge96.i

bb.ad:                                            ; preds = %bb.ag, %bb.aa, %bb.t, %bb.e
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ab
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #21
  br label %.body

bb.af:                                            ; preds = %bb.ac
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  %.pre.i = load i32, ptr %i.cf, align 4, !tbaa !60
  %.pre110.i = call i32 @llvm.abs.i32(i32 %.pre.i, i1 true)
  %i.cs = icmp eq i32 %.pre110.i, 1
  br i1 %i.cs, label %.thread.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.ah unwind label %bb.ad

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_ZN12_GLOBAL__N_121getDeriveCompoundRuleEN6icu_786LocaleEPKcS3_R10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef align 8 %9, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #21
  %i.ct = load i16, ptr %i.ci, align 8, !tbaa !13, !alias.scope !184 ; 2 uses
  %i.cu = icmp slt i16 %i.ct, 0
  %i.cv = ashr i16 %i.ct, 5
  %i.cw = sext i16 %i.cv to i32
  %i.cx = load i32, ptr %i.cn, align 4, !alias.scope !184
  %i.cy = select i1 %i.cu, i32 %i.cx, i32 %i.cw
  %.not84.not.i = icmp eq i32 %i.cy, 1
  br i1 %.not84.not.i, label %bb.ak, label %.critedge96.i

bb.aj:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #21
  br label %.body

bb.ak:                                            ; preds = %bb.ai
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #21
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ak, %bb.af, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21, !noalias !184
  %i.da = invoke noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %i.ce)
          to label %bb.al unwind label %bb.ap

bb.al:                                            ; preds = %.thread.i
  invoke void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef %i.da)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.db = load ptr, ptr %11, align 8, !noalias !184
  %i.dc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !noalias !184
  invoke void @_ZN6icu_7811MeasureUnit13forIdentifierENS_11StringPieceER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::MeasureUnit") align 8 %10, ptr %i.db, i32 %i.dd, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.an unwind label %bb.ap

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_ZN12_GLOBAL__N_119getGenderForBuiltinERKN6icu_786LocaleERKNS0_11MeasureUnitER10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(19) %10, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.ao unwind label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !184
  br label %.critedge96.i

bb.ap:                                            ; preds = %bb.am, %bb.al, %.thread.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn85.i = phi { ptr, i32 } [ %i.df, %bb.aq ], [ %i.de, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21, !noalias !184
  br label %.body

.critedge96.i:                                    ; preds = %bb.ao, %bb.ai, %bb.ac, %bb.y, %.critedge91.i, %bb.v
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !64, !noalias !184
  call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.dg) #21
  %i.dh = load i32, ptr %i.i, align 8, !tbaa !52, !noalias !184 ; 2 uses
  %i.di = icmp sgt i32 %i.dh, 0
  br i1 %i.di, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.av, %.critedge96.i
  %i.dj = load i8, ptr %i.m, align 4, !tbaa !55, !noalias !184
  %.not.i.i.i.i.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i.i.i, label %bb.aw, label %bb.as
end_hunk_0
