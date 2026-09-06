Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/vtzone?download=true
inline.NumInlined: 686
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6icu_789VTimeZone14writeFinalRuleERNS_9VTZWriterEaPKNS_18AnnualTimeZoneRuleEiidR10UErrorCode:bb.a
  %i.bn = sub nsw i32 0, %i.bl
  %i.bo = uitofp nneg i32 %i.bn to double
  %i.bp = fadd double %6, %i.bo
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.bq = icmp samesign ugt i32 %i.bl, 86399999
  br i1 %i.bq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.br = add nsw i32 %i.bl, -86399999
  %i.bs = uitofp nneg i32 %i.br to double
  %i.bt = fsub double %6, %i.bs
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah, %bb.af
  %.0 = phi double [ %i.bp, %bb.af ], [ %i.bt, %bb.ah ], [ %6, %bb.ag ] ; 4 uses
  %i.bu = tail call noundef i32 @_ZNK6icu_7812TimeZoneRule12getRawOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bv = tail call noundef i32 @_ZNK6icu_7812TimeZoneRule13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %i.bw = add nsw i32 %i.bv, %i.bu                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.bx, align 8, !tbaa !16
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7812TimeZoneRule7getNameERNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.aj unwind label %bb.al     ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.bz = invoke noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.ak unwind label %bb.al

bb.ak:                                            ; preds = %bb.aj
  switch i32 %i.bz, label %bb.bb [
    i32 0, label %bb.am
    i32 1, label %bb.ap
    i32 2, label %bb.at
    i32 3, label %bb.ax
  ]

bb.al:                                            ; preds = %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.aj, %bb.ai
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume

bb.am:                                            ; preds = %bb.ak
  %i.cb = add nsw i32 %5, %4
  %i.cc = invoke noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.an unwind label %bb.al

bb.an:                                            ; preds = %bb.am
  %i.cd = invoke noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.ao unwind label %bb.al

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZNK6icu_789VTimeZone19writeZonePropsByDOMERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.cb, i32 noundef %i.bw, i32 noundef %i.cc, i32 noundef %i.cd, double noundef %.0, double noundef f0x43846A3EDDF8CD80, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bb unwind label %bb.al

bb.ap:                                            ; preds = %bb.ak
  %i.ce = add nsw i32 %5, %4
  %i.cf = invoke noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.aq unwind label %bb.al

bb.aq:                                            ; preds = %bb.ap
  %i.cg = invoke noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleWeekInMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.ar unwind label %bb.al

bb.ar:                                            ; preds = %bb.aq
  %i.ch = invoke noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.as unwind label %bb.al

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.ce, i32 noundef %i.bw, i32 noundef %i.cf, i32 noundef %i.cg, i32 noundef %i.ch, double noundef %.0, double noundef f0x43846A3EDDF8CD80, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bb unwind label %bb.al

bb.at:                                            ; preds = %bb.ak
  %i.ci = add nsw i32 %5, %4
  %i.cj = invoke noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.au unwind label %bb.al

bb.au:                                            ; preds = %bb.at
  %i.ck = invoke noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.av unwind label %bb.al

bb.av:                                            ; preds = %bb.au
  %i.cl = invoke noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.aw unwind label %bb.al

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZNK6icu_789VTimeZone27writeZonePropsByDOW_GEQ_DOMERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.ci, i32 noundef %i.bw, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cl, double noundef %.0, double noundef f0x43846A3EDDF8CD80, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bb unwind label %bb.al

bb.ax:                                            ; preds = %bb.ak
  %i.cm = add nsw i32 %5, %4
  %i.cn = invoke noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.ay unwind label %bb.al

bb.ay:                                            ; preds = %bb.ax
  %i.co = invoke noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.az unwind label %bb.al

bb.az:                                            ; preds = %bb.ay
  %i.cp = invoke noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36) %.063)
          to label %bb.ba unwind label %bb.al

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNK6icu_789VTimeZone27writeZonePropsByDOW_LEQ_DOMERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef %i.cm, i32 noundef %i.bw, i32 noundef %i.cn, i32 noundef %i.co, i32 noundef %i.cp, double noundef %.0, double noundef f0x43846A3EDDF8CD80, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bb unwind label %bb.al

bb.bb:                                            ; preds = %bb.ba, %bb.aw, %bb.as, %bb.ao, %bb.ak
  br i1 %i.g, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cq = load ptr, ptr %.063, align 8, !tbaa !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(36) %.063) #18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %_ZN6icu_78L14toWallTimeRuleEPKNS_12DateTimeRuleEiiR10UErrorCode.exit.thread

_ZN6icu_78L14toWallTimeRuleEPKNS_12DateTimeRuleEiiR10UErrorCode.exit.thread: ; preds = %bb.ab, %bb.b, %_ZN6icu_78L14toWallTimeRuleEPKNS_12DateTimeRuleEiiR10UErrorCode.exit.thread78, %bb.bd, %_ZN6icu_78L14toWallTimeRuleEPKNS_12DateTimeRuleEiiR10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef signext range(i8 0, 2) i8 @_ZN6icu_78L20isEquivalentDateRuleEiiiPKNS_12DateTimeRuleE(i32 noundef range(i32 -128, 128) %0, i32 noundef %1, i32 noundef range(i32 -128, 128) %2, ptr noundef nonnull %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %.not = icmp eq i32 %0, %i.a
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %.not30 = icmp eq i32 %2, %i.b
  br i1 %.not30, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getTimeRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %.not31 = icmp eq i32 %i.c, 0
  br i1 %.not31, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = tail call noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleWeekInMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.g = icmp eq i32 %i.f, %1
  br i1 %i.g, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = tail call noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36) %3) ; 6 uses
  %i.i = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.j = icmp eq i32 %i.i, 2
  br i1 %i.j, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.k = srem i32 %i.h, 7
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.h, 6
  %i.n = sdiv i32 %i.m, 7
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not32 = icmp eq i32 %0, 1
  br i1 %.not32, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = sext i32 %0 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L11MONTHLENGTHE, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  %i.s = sub nsw i32 %i.r, %i.h                   ; 2 uses
  %i.t = srem i32 %i.s, 7
  %i.u = icmp eq i32 %i.t, 6
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = add nsw i32 %i.s, 1
  %.neg = sdiv i32 %i.v, -7
  %i.w = icmp eq i32 %1, %.neg
  br i1 %i.w, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.f
  %i.x = tail call noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %i.y = icmp eq i32 %i.x, 3
  br i1 %i.y, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.z = srem i32 %i.h, 7
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = sdiv exact i32 %i.h, 7
  %i.ac = icmp eq i32 %i.ab, %1
  %or.cond = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not33 = icmp eq i32 %0, 1
  br i1 %.not33, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = sext i32 %0 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L11MONTHLENGTHE, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = sub nsw i32 %i.af, %i.h                 ; 2 uses
  %i.ah = srem i32 %i.ag, 7
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.neg34 = sdiv exact i32 %i.ag, -7
  %i.aj = add nsw i32 %.neg34, -1
  %i.ak = icmp eq i32 %1, %i.aj
  br i1 %i.ak, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.l
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.h, %bb.k, %bb.m, %bb.p, %bb.e, %bb.c, %bb.a, %bb.b
  %.1 = phi i8 [ 1, %bb.e ], [ 0, %bb.a ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.q ], [ 1, %bb.h ], [ 1, %bb.k ], [ 1, %bb.m ], [ 1, %bb.p ]
  ret i8 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789VTimeZone11writeFooterERNS_9VTZWriterER10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !38
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !15
  %i.e = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull @_ZN6icu_78L8ICAL_ENDE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %bb.e, %bb.d, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.k, %bb.d ], [ %i.n, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L8ICAL_ENDE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit:             ; preds = %bb.b
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L8ICAL_ENDE) #18, !srcloc !19
  %i.g = load ptr, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 58, ptr %i.a, align 2, !tbaa !18
  %i.h = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = load ptr, ptr %1, align 8, !tbaa !15
  %i.j = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit5 unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit5:            ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L14ICAL_VTIMEZONEE) #18, !srcloc !19
  %i.l = load ptr, ptr %1, align 8, !tbaa !15
  %i.m = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit6 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit5
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit6:            ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit5
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_789VTZWriter5writeEPKDs.exit6
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7818TimeZoneTransitionD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789VTimeZone14beginZonePropsERNS_9VTZWriterEaRKNS_13UnicodeStringEiidR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, double noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %i.f = load i32, ptr %7, align 4, !tbaa !38
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !15
  %i.i = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull @_ZN6icu_78L10ICAL_BEGINE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %.body, %bb.i, %bb.g, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.o, %bb.e ], [ %i.q, %bb.g ], [ %i.t, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_BEGINE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit:             ; preds = %bb.b
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L10ICAL_BEGINE) #18, !srcloc !19
  %i.k = load ptr, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 58, ptr %i.e, align 2, !tbaa !18
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not31 = icmp eq i8 %2, 0
  %i.m = load ptr, ptr %1, align 8, !tbaa !15     ; 2 uses
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit
  %i.n = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull @_ZN6icu_78L13ICAL_DAYLIGHTE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit33 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L13ICAL_DAYLIGHTE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit33:           ; preds = %bb.d
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L13ICAL_DAYLIGHTE) #18, !srcloc !19
  br label %bb.h

bb.f:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull @_ZN6icu_78L13ICAL_STANDARDE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit34 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L13ICAL_STANDARDE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit34:           ; preds = %bb.f
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L13ICAL_STANDARDE) #18, !srcloc !19
  br label %bb.h

bb.h:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit34, %_ZN6icu_789VTZWriter5writeEPKDs.exit33
  %i.r = load ptr, ptr %1, align 8, !tbaa !15
  %i.s = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit35 unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  br label %common.resume

_ZN6icu_789VTZWriter5writeEPKDs.exit35:           ; preds = %bb.h
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  store i16 2, ptr %i.u, align 8, !tbaa !16
  %i.v = load ptr, ptr %1, align 8, !tbaa !15
  %i.w = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull @_ZN6icu_78L15ICAL_TZOFFSETTOE, i32 noundef 0, i32 noundef -1)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit35
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L15ICAL_TZOFFSETTOE) #18, !srcloc !19
  br label %.body

bb.k:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit35
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L15ICAL_TZOFFSETTOE) #18, !srcloc !19
  %i.y = load ptr, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 58, ptr %i.d, align 2, !tbaa !18
  %i.z = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %bb.l unwind label %bb.ae      ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_ZN6icu_78L14millisToOffsetEiRNS_13UnicodeStringE(i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.m unwind label %bb.ae

bb.m:                                             ; preds = %bb.l
  %i.aa = load ptr, ptr %1, align 8, !tbaa !15
  %i.ab = load i16, ptr %i.u, align 8, !tbaa !16  ; 2 uses
  %i.ac = icmp slt i16 %i.ab, 0
  %i.ad = ashr i16 %i.ab, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 12 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = select i1 %i.ac, i32 %i.ag, i32 %i.ae
  %i.ai = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.aa, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.ah)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit unwind label %bb.ae ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit: ; preds = %bb.m
  %i.aj = load ptr, ptr %1, align 8, !tbaa !15
  %i.ak = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %bb.o unwind label %bb.n       ; 0 uses

bb.n:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit
end_hunk_0
begin_hunk_1_@_ZNK6icu_789VTimeZone31writeZonePropsByDOW_GEQ_DOM_subERNS_9VTZWriterEiiiidiR10UErrorCode:bb.a
  %.not36.i = icmp eq i64 %i.au, 0
  br i1 %.not36.i, label %.loopexit74, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k, %.noexc49
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %.noexc49 ], [ %i.au, %bb.k ] ; 2 uses
  %indvars.iv.next42.i = add nsw i64 %indvars.iv41.i, -1 ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next42.i
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !43
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = add i16 %i.ax, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.ay, ptr %i.e, align 2, !tbaa !18
  %i.az = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1)
          to label %.noexc49 unwind label %.loopexit69 ; 0 uses

.noexc49:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = icmp samesign ugt i64 %indvars.iv41.i, 1
  br i1 %i.ba, label %.lr.ph.i, label %.loopexit74, !llvm.loop !3

.loopexit74:                                      ; preds = %.noexc49, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %i.bb = load ptr, ptr %1, align 8, !tbaa !15
  %i.bc = load i16, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.bd = icmp slt i16 %i.bc, 0
  %i.be = ashr i16 %i.bc, 5
  %i.bf = sext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = select i1 %i.bd, i32 %i.bh, i32 %i.bf
  %i.bj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0, i32 noundef %i.bi)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit.preheader unwind label %.loopexit.split-lp70 ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit.preheader: ; preds = %.loopexit74
  %i.bk = icmp sgt i32 %5, 1
  br i1 %i.bk, label %.lr.ph, label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit._crit_edge

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit._crit_edge: ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit66, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit.preheader
  %i.bl = fcmp une double %6, f0x43846A3EDDF8CD80
  br i1 %i.bl, label %bb.p, label %bb.s

.loopexit69:                                      ; preds = %.lr.ph.i
  %lpad.loopexit71 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp70:                             ; preds = %bb.p, %bb.q, %bb.j, %.loopexit74
  %lpad.loopexit.split-lp72 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit.preheader, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit66
  %.075 = phi i32 [ %i.cn, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit66 ], [ 1, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit.preheader ] ; 2 uses
  %i.bm = load ptr, ptr %1, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 44, ptr %i.d, align 2, !tbaa !18
  %i.bn = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %bb.l unwind label %.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bo = load i16, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.bp = and i16 %i.bo, 1
  %.not.i = icmp eq i16 %i.bp, 0
  %i.bq = and i16 %i.bo, 30
  %storemerge.i = select i1 %.not.i, i16 %i.bq, i16 2
  store i16 %storemerge.i, ptr %i.an, align 8, !tbaa !16
  %i.br = add nsw i32 %.075, %.040                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %spec.select.i52 = call i32 @llvm.abs.i32(i32 %i.br, i1 true)
  br label %.preheader.i53

.preheader.i53:                                   ; preds = %.preheader.i53, %bb.l
  %indvars.iv38.i54 = phi i64 [ %indvars.iv.next39.i56, %.preheader.i53 ], [ 0, %bb.l ] ; 2 uses
  %.125.i55 = phi i32 [ %i.bu, %.preheader.i53 ], [ %spec.select.i52, %bb.l ] ; 3 uses
  %i.bs = urem i32 %.125.i55, 10
  %indvars.iv.next39.i56 = add nuw nsw i64 %indvars.iv38.i54, 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv38.i54
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !43
  %i.bu = udiv i32 %.125.i55, 10
  %i.bv = icmp samesign ult i32 %.125.i55, 10
  br i1 %i.bv, label %bb.m, label %.preheader.i53, !llvm.loop !2

bb.m:                                             ; preds = %.preheader.i53
  %i.bw = icmp sgt i32 %i.br, -1
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 45, ptr %i.b, align 2, !tbaa !18
  %i.bx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %.noexc62 unwind label %.loopexit.split-lp ; 0 uses

.noexc62:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.o

bb.o:                                             ; preds = %.noexc62, %bb.m
  %i.by = and i64 %indvars.iv.next39.i56, 255     ; 2 uses
  %.not36.i57 = icmp eq i64 %i.by, 0
  br i1 %.not36.i57, label %.loopexit68, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %bb.o, %.noexc63
  %indvars.iv41.i60 = phi i64 [ %indvars.iv.next42.i61, %.noexc63 ], [ %i.by, %bb.o ] ; 2 uses
  %indvars.iv.next42.i61 = add nsw i64 %indvars.iv41.i60, -1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next42.i61
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43
  %i.cb = trunc i32 %i.ca to i16
  %i.cc = add i16 %i.cb, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.cc, ptr %i.a, align 2, !tbaa !18
  %i.cd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %.noexc63 unwind label %.loopexit ; 0 uses

.noexc63:                                         ; preds = %.lr.ph.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ce = icmp samesign ugt i64 %indvars.iv41.i60, 1
  br i1 %i.ce, label %.lr.ph.i59, label %.loopexit68, !llvm.loop !3

.loopexit68:                                      ; preds = %.noexc63, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.cf = load ptr, ptr %1, align 8, !tbaa !15
  %i.cg = load i16, ptr %i.an, align 8, !tbaa !16 ; 2 uses
  %i.ch = icmp slt i16 %i.cg, 0
  %i.ci = ashr i16 %i.cg, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = load i32, ptr %i.bg, align 4
  %i.cl = select i1 %i.ch, i32 %i.ck, i32 %i.cj
  %i.cm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0, i32 noundef %i.cl)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit66 unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit66: ; preds = %.loopexit68
  %i.cn = add nuw nsw i32 %.075, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.cn, %5
  br i1 %exitcond.not, label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit._crit_edge, label %.lr.ph, !llvm.loop !83

.loopexit:                                        ; preds = %.lr.ph.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.lr.ph, %bb.n, %.loopexit68
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit._crit_edge
  %i.co = sitofp i32 %7 to double
  %i.cp = fadd double %6, %i.co
  %i.cq = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_78L17getDateTimeStringEdRNS_13UnicodeStringER10UErrorCode(double noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %bb.q unwind label %.loopexit.split-lp70 ; 0 uses

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNK6icu_789VTimeZone11appendUNTILERNS_9VTZWriterERKNS_13UnicodeStringER10UErrorCode(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(4) %8)
          to label %bb.r unwind label %.loopexit.split-lp70

bb.r:                                             ; preds = %bb.q
  %i.cr = load i32, ptr %8, align 4, !tbaa !38
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit._crit_edge
  %i.ct = load ptr, ptr %1, align 8, !tbaa !15
  %i.cu = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit67 unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  br label %.body

_ZN6icu_789VTZWriter5writeEPKDs.exit67:           ; preds = %bb.s
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !19
  br label %bb.u

bb.u:                                             ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit67, %bb.r
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.d, %bb.a
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit69, %.loopexit.split-lp70, %bb.t
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp72, %.loopexit.split-lp70 ], [ %i.cv, %bb.t ], [ %lpad.loopexit71, %.loopexit69 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789VTimeZone27writeZonePropsByDOW_LEQ_DOMERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(288) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9, double noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %11) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load i32, ptr %11, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = srem i32 %7, 7
  %i.d = sdiv exact i32 %7, 7
  %i.e = icmp eq i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.d, i32 noundef %8, double noundef %9, double noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.not51 = icmp eq i32 %6, 1
  br i1 %.not51, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = sext i32 %6 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @_ZN6icu_78L11MONTHLENGTHE, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = sub nsw i32 %i.h, %7                     ; 2 uses
  %i.j = srem i32 %i.i, 7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %.neg = sdiv exact i32 %i.i, -7
  %i.l = add nsw i32 %.neg, -1
  tail call void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.l, i32 noundef %8, double noundef %9, double noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %7, 29
  br i1 %i.m, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6icu_789VTimeZone19writeZonePropsByDOWERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, i32 noundef 1, i32 noundef -1, i32 noundef %8, double noundef %9, double noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  br label %bb.i

.thread:                                          ; preds = %bb.e, %bb.g
  %i.n = add nsw i32 %7, -6
  tail call void @_ZNK6icu_789VTimeZone27writeZonePropsByDOW_GEQ_DOMERNS_9VTZWriterEaRKNS_13UnicodeStringEiiiiiddR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %i.n, i32 noundef %8, double noundef %9, double noundef %10, ptr noundef nonnull align 4 dereferenceable(4) %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %.thread, %bb.h, %bb.a, %bb.c
  ret void
}

declare noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleMillisInDayEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812DateTimeRule15getDateRuleTypeEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812DateTimeRule12getRuleMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812DateTimeRule17getRuleDayOfMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812DateTimeRule18getRuleWeekInMonthEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7812DateTimeRule16getRuleDayOfWeekEv(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_78L14millisToOffsetEiRNS_13UnicodeStringE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i16, align 2                      ; 8 uses
  %i.c = alloca i16, align 2                      ; 8 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = and i16 %i.g, 1
  %.not.i = icmp eq i16 %i.h, 0
  %i.i = and i16 %i.g, 30
  %storemerge.i = select i1 %.not.i, i16 %i.i, i16 2
  store i16 %storemerge.i, ptr %i.f, align 8, !tbaa !16
  %i.j = icmp sgt i32 %0, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 43, ptr %i.e, align 2, !tbaa !18
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.preheader32.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 45, ptr %i.d, align 2, !tbaa !18
  %i.l = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.m = sub nsw i32 0, %0
  br label %.preheader32.i

.preheader32.i:                                   ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %0, %bb.b ], [ %i.m, %bb.c ]    ; 4 uses
  %i.n = udiv i32 %.0, 3600000
  %.lhs.trunc46 = trunc nuw nsw i32 %i.n to i16
  %i.o = urem i16 %.lhs.trunc46, 10
  %i.p = udiv i32 %.0, 36000000
  %.lhs.trunc47 = trunc nuw nsw i32 %i.p to i8
  %i.q = urem i8 %.lhs.trunc47, 10
  %i.r = or disjoint i8 %i.q, 48
  %i.s = zext nneg i8 %i.r to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.s, ptr %i.c, align 2, !tbaa !18
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.u = or disjoint i16 %i.o, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.u, ptr %i.c, align 2, !tbaa !18
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.w = udiv i32 %.0, 60000
  %.lhs.trunc = trunc nuw i32 %i.w to i16
  %i.x = urem i16 %.lhs.trunc, 60                 ; 2 uses
  %.lhs.trunc49 = trunc nuw nsw i16 %i.x to i8
  %i.y = urem i8 %.lhs.trunc49, 10
  %.lhs.trunc51 = trunc nuw nsw i16 %i.x to i8
  %i.z = udiv i8 %.lhs.trunc51, 10
  %i.aa = or disjoint i8 %i.z, 48
  %i.ab = zext nneg i8 %i.aa to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ab, ptr %i.b, align 2, !tbaa !18
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ad = or disjoint i8 %i.y, 48
  %i.ae = zext nneg i8 %i.ad to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.ae, ptr %i.b, align 2, !tbaa !18
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = udiv i32 %.0, 1000
  %i.ah = urem i32 %i.ag, 60                      ; 2 uses
  %.lhs.trunc53 = trunc nuw nsw i32 %i.ah to i8
  %i.ai = urem i8 %.lhs.trunc53, 10
  %.lhs.trunc55 = trunc nuw nsw i32 %i.ah to i8
  %i.aj = udiv i8 %.lhs.trunc55, 10
  %i.ak = or disjoint i8 %i.aj, 48
  %i.al = zext nneg i8 %i.ak to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.al, ptr %i.a, align 2, !tbaa !18
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = or disjoint i8 %i.ai, 48
  %i.ao = zext nneg i8 %i.an to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ao, ptr %i.a, align 2, !tbaa !18
  %i.ap = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

declare noundef i32 @_ZNK6icu_788TimeZone13getDSTSavingsEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

declare noundef signext i8 @_ZNK6icu_7813BasicTimeZone24hasEquivalentTransitionsERKS0_ddaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), double noundef, double noundef, i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare void @_ZNK6icu_7813BasicTimeZone18getSimpleRulesNearEdRPNS_19InitialTimeZoneRuleERPNS_18AnnualTimeZoneRuleES6_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), double noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN6icu_788TimeZoneaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef signext i8 @_ZNK6icu_7813UnicodeString17doEqualsSubstringEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiRKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN6icu_78L16parseAsciiDigitsERKNS_13UnicodeStringEiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i32 noundef range(i32 -2147483647, -2147483648) %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %2, 1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !16
  %.fr90 = freeze i16 %i.e                        ; 6 uses
  %i.f = icmp slt i16 %.fr90, 0
  %i.g = lshr i16 %.fr90, 5
  %i.h = zext nneg i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 3 uses
  %i.l = icmp slt i32 %i.k, %1
  %i.m = add nsw i32 %2, %1
  %i.n = icmp sgt i32 %i.m, %i.k
  %or.cond63 = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond63, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 3, ptr %3, align 4, !tbaa !38
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %1, %i.k
  br i1 %i.o, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %.lr.ph

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.e
  %i.p = and i16 %.fr90, 2
  %.not.i.i.i = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i, ptr %i.s, ptr %i.q
  %i.u = sext i32 %1 to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !18
  switch i16 %i.w, label %.lr.ph [
end_hunk_1
