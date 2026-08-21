inline.NumInlined: 314
inline.NumDeleted: 90
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7821RuleBasedNumberFormat27getRuleSetDisplayNameLocaleEiR10UErrorCode:bb.a
  %i.ad = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.ac) #23
          to label %bb.h unwind label %bb.k       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i16, ptr %i.s, align 8, !tbaa !67  ; 2 uses
  %.pre31 = load i32, ptr %i.x, align 4
  %.pre32 = ashr i16 %.pre, 5
  %.pre33 = sext i16 %.pre32 to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %3, align 4, !tbaa !24
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.q unwind label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %5, align 8, !tbaa !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ag) #22, !srcloc !115
  br label %bb.s

bb.k:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.l:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi34 = phi i32 [ %.pre33, %._crit_edge ], [ %i.w, %bb.f ]
  %i.ai = phi i32 [ %.pre31, %._crit_edge ], [ %i.y, %bb.f ]
  %i.aj = phi i16 [ %.pre, %._crit_edge ], [ %i.t, %bb.f ]
  %.019 = phi ptr [ %i.ad, %._crit_edge ], [ %i.a, %bb.f ] ; 4 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = select i1 %i.ak, i32 %i.ai, i32 %.pre-phi34
  %i.am = invoke noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.al, ptr noundef nonnull %.019, i32 noundef %i.aa, i32 noundef 0)
          to label %bb.m unwind label %bb.k       ; 0 uses

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull %.019, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %bb.n unwind label %bb.k

bb.n:                                             ; preds = %bb.m
  %.not27 = icmp eq ptr %.019, %i.a
  br i1 %.not27, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @uprv_free_78(ptr noundef nonnull %.019)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.u

bb.r:                                             ; preds = %bb.k, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.p ], [ %i.ah, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.r ], [ %i.af, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn.pn.pn

bb.t:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %3, align 4, !tbaa !24
  tail call void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.b
  ret void
}

declare void @_ZN6icu_786LocaleC1EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractEiiPciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_786LocaleC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7821RuleBasedNumberFormat21getRuleSetDisplayNameEiRKNS_6LocaleE(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102  ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp sgt i32 %2, -1
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(12) %i.b)
  %i.i = icmp slt i32 %2, %i.h
  br i1 %i.i, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.j = tail call noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.j, i32 noundef -1, i32 noundef 0)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = load i16, ptr %i.k, align 8, !tbaa !67   ; 2 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o       ; 3 uses
  %i.s = add nsw i32 %i.r, 1
  %i.t = invoke noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef %i.s)
          to label %.preheader47 unwind label %bb.g ; 4 uses

.preheader47:                                     ; preds = %bb.c
  %i.u = icmp sgt i32 %i.r, -1
  br i1 %i.u, label %.lr.ph53, label %._crit_edge

.lr.ph53:                                         ; preds = %.preheader47, %.critedge3
  %.03452 = phi i32 [ %.236.lcssa, %.critedge3 ], [ %i.r, %.preheader47 ] ; 3 uses
  %i.v = zext nneg i32 %.03452 to i64             ; 2 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.v
  store i16 0, ptr %i.w, align 2, !tbaa !30
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef i32 %i.aa(ptr noundef nonnull align 8 dereferenceable(12) %i.x, ptr noundef nonnull %i.t)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %.lr.ph53
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %.preheader.preheader, label %bb.e

.preheader.preheader:                             ; preds = %bb.d
  %.not65 = icmp eq i32 %.03452, 0
  %i.ad = sext i1 %.not65 to i32                  ; 2 uses
  %i.ae = icmp samesign ugt i32 %.03452, 1
  br i1 %i.ae, label %.lr.ph70, label %.critedge3

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(12) %i.af, i32 noundef %i.ab, i32 noundef %2)
          to label %bb.f unwind label %.loopexit.split-lp

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %5, align 8, !tbaa !113
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef -1)
          to label %.critedge3.thread unwind label %bb.h

.critedge3.thread:                                ; preds = %bb.f
  %i.ak = load ptr, ptr %5, align 8, !tbaa !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ak) #22, !srcloc !115
  br label %bb.m

bb.g:                                             ; preds = %._crit_edge, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph53
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %5, align 8, !tbaa !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.an) #22, !srcloc !115
  br label %bb.n

.preheader:                                       ; preds = %.lr.ph70
  %i.ao = icmp sgt i64 %indvars.iv69, 2
  br i1 %i.ao, label %.lr.ph70, label %.critedge3, !llvm.loop !139

.lr.ph70:                                         ; preds = %.preheader.preheader, %.preheader
  %indvars.iv69 = phi i64 [ %indvars.iv.next, %.preheader ], [ %i.v, %.preheader.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv69, -1 ; 4 uses
  %i.ap = and i64 %indvars.iv.next, 4294967295
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !30
  %.not = icmp eq i16 %i.ar, 95
  br i1 %.not, label %.critedge, label %.preheader, !llvm.loop !139

.critedge:                                        ; preds = %.lr.ph70
  %i.as = trunc nuw i64 %indvars.iv69 to i32
  %indvars.le = trunc i64 %indvars.iv.next to i32 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.lr.ph.preheader, label %.critedge3

.lr.ph.preheader:                                 ; preds = %.critedge
  %7 = and i64 %indvars.iv.next, 4294967295
  %smin = call i32 @llvm.smin.i32(i32 %indvars.le, i32 1)
  %i.au = add i32 %smin, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv57 = phi i64 [ %7, %.lr.ph.preheader ], [ %indvars.iv.next58, %bb.i ] ; 3 uses
  %i.av = getelementptr [2 x i8], ptr %i.t, i64 %indvars.iv57
  %i.aw = getelementptr i8, ptr %i.av, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !30
  %i.ay = icmp eq i16 %i.ax, 95
  %8 = trunc nuw i64 %indvars.iv57 to i32         ; 2 uses
  br i1 %i.ay, label %bb.i, label %.critedge3

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, -1
  %i.az = icmp sgt i32 %8, 1
  br i1 %i.az, label %.lr.ph, label %.critedge3, !llvm.loop !140

.critedge3:                                       ; preds = %.preheader, %bb.i, %.lr.ph, %.preheader.preheader, %.critedge
  %.236.lcssa = phi i32 [ %indvars.le, %.critedge ], [ %8, %.lr.ph ], [ %i.ad, %.preheader.preheader ], [ %i.au, %bb.i ], [ %i.ad, %.preheader ] ; 2 uses
  %i.ba = icmp sgt i32 %.236.lcssa, -1
  br i1 %i.ba, label %.lr.ph53, label %._crit_edge, !llvm.loop !141

._crit_edge:                                      ; preds = %.critedge3, %.preheader47
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !102 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.bb, i32 noundef %2)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %._crit_edge
  store ptr %i.bf, ptr %6, align 8, !tbaa !113
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef -1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %6, align 8, !tbaa !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bg) #22, !srcloc !115
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %6, align 8, !tbaa !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bi) #22, !srcloc !115
  br label %bb.n

bb.m:                                             ; preds = %.critedge3.thread, %bb.k
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.q

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g, %bb.l, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.h ], [ %i.al, %bb.g ], [ %i.bh, %bb.l ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.r

bb.o:                                             ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.bj, align 8, !tbaa !67
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.m
  ret void

bb.r:                                             ; preds = %bb.p, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.n ], [ %i.bk, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #5

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7821RuleBasedNumberFormat21getRuleSetDisplayNameERKNS_13UnicodeStringERKNS_6LocaleE(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !102  ; 2 uses
  %i.d = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(12) %i.c, ptr noundef %i.d)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 336
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(336) %1, i32 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.m, align 8, !tbaa !67
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #22
  br label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.e
  ret void

bb.j:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

declare noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7821RuleBasedNumberFormat11findRuleSetERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !24
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not16 = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.b, i1 true, i1 %.not16
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107  ; 2 uses
  %.not1727 = icmp eq ptr %i.e, null
  br i1 %.not1727, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread
  %i.j = phi ptr [ %i.e, %.lr.ph ], [ %i.aj, %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread ] ; 5 uses
  %.01128 = phi ptr [ %i.d, %.lr.ph ], [ %i.ai, %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load i16, ptr %i.l, align 8, !tbaa !67   ; 3 uses
  %i.n = and i16 %i.m, 1
  %.not.i.i = icmp eq i16 %i.n, 0
  br i1 %.not.i.i, label %bb.c, label %.split

.split:                                           ; preds = %bb.b
  %i.o = load i16, ptr %i.f, align 8, !tbaa !67
  %i.p = trunc i16 %i.o to i1
  br i1 %i.p, label %.loopexit, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.q = icmp slt i16 %i.m, 0
  %i.r = ashr i16 %i.m, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s       ; 2 uses
  %i.w = load i16, ptr %i.f, align 8, !tbaa !67   ; 4 uses
  %i.x = icmp slt i16 %i.w, 0
  %i.y = ashr i16 %i.w, 5
  %i.z = sext i16 %i.y to i32
  %i.aa = load i32, ptr %i.g, align 4
  %i.ab = select i1 %i.x, i32 %i.aa, i32 %i.z
  %i.ac = and i16 %i.w, 1
  %.not9.i.i = icmp eq i16 %i.ac, 0
  %i.ad = icmp eq i32 %i.v, %i.ab
  %or.cond.i.i = and i1 %.not9.i.i, %i.ad
  br i1 %or.cond.i.i, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit: ; preds = %bb.c
  %i.ae = and i16 %i.w, 2
  %.not.i.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = load ptr, ptr %i.i, align 8
  %i.ag = select i1 %.not.i.i.i.i, ptr %i.af, ptr %i.h
  %i.ah = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef %i.ag, i32 noundef %i.v)
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %_ZNK6icu_789NFRuleSet7isNamedERKNS_13UnicodeStringE.exit.thread, label %.loopexit
end_hunk_0
