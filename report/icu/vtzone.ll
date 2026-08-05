inline.NumInlined: 686
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6icu_789VTimeZone14beginZonePropsERNS_9VTZWriterEaRKNS_13UnicodeStringEiidR10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 58, ptr %i.c, align 2, !tbaa !13
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %bb.r unwind label %bb.ae      ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_ZN6icu_78L14millisToOffsetEiRNS_13UnicodeStringE(i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(64) %8)
          to label %bb.s unwind label %bb.ae

bb.s:                                             ; preds = %bb.r
  %i.ar = load ptr, ptr %1, align 8, !tbaa !8
  %i.as = load i16, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.af, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.ax)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit44 unwind label %bb.ae ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit44: ; preds = %bb.s
  %i.az = load ptr, ptr %1, align 8, !tbaa !8
  %i.ba = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.az, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %bb.u unwind label %bb.t       ; 0 uses

bb.t:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit44
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %.body

bb.u:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit44
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  %i.bc = load ptr, ptr %1, align 8, !tbaa !8
  %i.bd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull @_ZN6icu_78L11ICAL_TZNAMEE, i32 noundef 0, i32 noundef -1)
          to label %bb.w unwind label %bb.v       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L11ICAL_TZNAMEE) #18, !srcloc !15
  br label %.body

bb.w:                                             ; preds = %bb.u
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L11ICAL_TZNAMEE) #18, !srcloc !15
  %i.bf = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 58, ptr %i.b, align 2, !tbaa !13
  %i.bg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %bb.x unwind label %bb.ae      ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !12 ; 2 uses
  %i.bk = icmp slt i16 %i.bj, 0
  %i.bl = ashr i16 %i.bj, 5
  %i.bm = sext i16 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = select i1 %i.bk, i32 %i.bo, i32 %i.bm
  %i.bq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.bh, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef 0, i32 noundef %i.bp)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit52 unwind label %bb.ae ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit52: ; preds = %bb.x
  %i.br = load ptr, ptr %1, align 8, !tbaa !8
  %i.bs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %bb.z unwind label %bb.y       ; 0 uses

bb.y:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit52
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %.body

bb.z:                                             ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit52
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  %i.bu = load ptr, ptr %1, align 8, !tbaa !8
  %i.bv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, ptr noundef nonnull @_ZN6icu_78L12ICAL_DTSTARTE, i32 noundef 0, i32 noundef -1)
          to label %bb.ab unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_DTSTARTE) #18, !srcloc !15
  br label %.body

bb.ab:                                            ; preds = %bb.z
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_DTSTARTE) #18, !srcloc !15
  %i.bx = load ptr, ptr %1, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 58, ptr %i.a, align 2, !tbaa !13
  %i.by = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.bx, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %bb.ac unwind label %bb.ae     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bz = sitofp i32 %4 to double
  %i.ca = fadd double %6, %i.bz
  %i.cb = invoke fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_78L17getDateTimeStringEdRNS_13UnicodeStringER10UErrorCode(double noundef %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.ad unwind label %bb.ae     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %1, align 8, !tbaa !8
  %i.cd = load i16, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %i.ce = icmp slt i16 %i.cd, 0
  %i.cf = ashr i16 %i.cd, 5
  %i.cg = sext i16 %i.cf to i32
  %i.ch = load i32, ptr %i.af, align 4
  %i.ci = select i1 %i.ce, i32 %i.ch, i32 %i.cg
  %i.cj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.ci)
          to label %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit60 unwind label %bb.ae ; 0 uses

_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit60: ; preds = %bb.ad
  %i.ck = load i32, ptr %7, align 4, !tbaa !33
  %i.cl = icmp slt i32 %i.ck, 1
  br i1 %i.cl, label %bb.af, label %bb.ah

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.x, %bb.w, %bb.s, %bb.q, %bb.m, %bb.k, %bb.ac, %bb.r, %bb.l
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.t, %bb.y, %bb.ae, %bb.ag, %bb.aa, %bb.v, %bb.p, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.al, %bb.n ], [ %i.ao, %bb.p ], [ %i.bb, %bb.t ], [ %i.be, %bb.v ], [ %i.bt, %bb.y ], [ %i.bw, %bb.aa ], [ %i.cm, %bb.ae ], [ %i.cp, %bb.ag ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %common.resume

bb.af:                                            ; preds = %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit60
  %i.cn = load ptr, ptr %1, align 8, !tbaa !8
  %i.co = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull @_ZN6icu_78L12ICAL_NEWLINEE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit63 unwind label %bb.ag ; 0 uses

bb.ag:                                            ; preds = %bb.af
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %.body

_ZN6icu_789VTZWriter5writeEPKDs.exit63:           ; preds = %bb.af
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L12ICAL_NEWLINEE) #18, !srcloc !15
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6icu_789VTZWriter5writeEPKDs.exit63, %_ZN6icu_789VTZWriter5writeERKNS_13UnicodeStringE.exit60
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.ai

bb.ai:                                            ; preds = %bb.a, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_78L17getDateTimeStringEdRNS_13UnicodeStringER10UErrorCode(double noundef %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 8 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 8 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 8 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %i.g = alloca i16, align 2                      ; 4 uses
  %i.h = alloca i16, align 2                      ; 8 uses
  %i.i = alloca i16, align 2                      ; 4 uses
  %i.j = alloca i16, align 2                      ; 8 uses
  %i.k = alloca i16, align 2                      ; 4 uses
  %i.l = alloca i16, align 2                      ; 16 uses
  %i.m = alloca i16, align 2                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i8, align 1                       ; 4 uses
  %i.q = alloca i8, align 1                       ; 4 uses
  %i.r = alloca i8, align 1                       ; 3 uses
  %i.s = load i32, ptr %2, align 4, !tbaa !33
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  call void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S2_S1_R10UErrorCode(double noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.u = load i32, ptr %2, align 4, !tbaa !33
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %.preheader32.i, label %bb.i

.preheader32.i:                                   ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !12   ; 2 uses
  %i.y = and i16 %i.x, 1
  %.not.i = icmp eq i16 %i.y, 0
  %i.z = and i16 %i.x, 30
  %storemerge.i = select i1 %.not.i, i16 %i.z, i16 2
  store i16 %storemerge.i, ptr %i.w, align 8, !tbaa !12
  %i.aa = load i32, ptr %i.n, align 4, !tbaa !45  ; 2 uses
  %spec.select.i = call i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %3 = insertelement <4 x i32> poison, i32 %spec.select.i, i64 0
  %4 = shufflevector <4 x i32> %3, <4 x i32> poison, <4 x i32> zeroinitializer
  %5 = udiv <4 x i32> %4, <i32 1000, i32 100, i32 10, i32 1>
  %6 = urem <4 x i32> %5, splat (i32 10)
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %.preheader32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i16 45, ptr %i.m, align 2, !tbaa !13
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.m, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.preheader32.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %7 = trunc nuw nsw <4 x i32> %6 to <4 x i8>
  %8 = or disjoint <4 x i8> %7, splat (i8 48)     ; 4 uses
  %9 = extractelement <4 x i8> %8, i64 0
  %10 = zext nneg i8 %9 to i16
  store i16 %10, ptr %i.l, align 2, !tbaa !13
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %11 = extractelement <4 x i8> %8, i64 1
  %12 = zext nneg i8 %11 to i16
  store i16 %12, ptr %i.l, align 2, !tbaa !13
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %13 = extractelement <4 x i8> %8, i64 2
  %14 = zext nneg i8 %13 to i16
  store i16 %14, ptr %i.l, align 2, !tbaa !13
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %15 = extractelement <4 x i8> %8, i64 3
  %16 = zext nneg i8 %15 to i16
  store i16 %16, ptr %i.l, align 2, !tbaa !13
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.l, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ah = load i8, ptr %i.p, align 1, !tbaa !12
  %.fr = freeze i8 %i.ah                          ; 2 uses
  %i.ai = sext i8 %.fr to i32
  %i.aj = add nsw i32 %i.ai, 1
  %spec.select.i24 = call i32 @llvm.abs.i32(i32 %i.aj, i1 false) ; 2 uses
  %.lhs.trunc = trunc i32 %spec.select.i24 to i8
  %i.ak = urem i8 %.lhs.trunc, 10
  %.lhs.trunc94 = trunc i32 %spec.select.i24 to i8 ; 2 uses
  %i.al = udiv i8 %.lhs.trunc94, 10
  %.zext95 = zext nneg i8 %i.al to i16            ; 2 uses
  %.urem = add nsw i16 %.zext95, -10
  %.cmp = icmp ult i8 %.lhs.trunc94, 100
  %i.am = select i1 %.cmp, i16 %.zext95, i16 %.urem
  %i.an = icmp sgt i8 %.fr, -2
  br i1 %i.an, label %.lr.ph.i31, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i16 45, ptr %i.k, align 2, !tbaa !13
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %bb.d, %.lr.ph.i
  %i.ap = or disjoint i16 %i.am, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.ap, ptr %i.j, align 2, !tbaa !13
  %i.aq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ar = or disjoint i8 %i.ak, 48
  %i.as = zext nneg i8 %i.ar to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i16 %i.as, ptr %i.j, align 2, !tbaa !13
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.j, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.au = load i8, ptr %i.q, align 1, !tbaa !12
  %.fr119 = freeze i8 %i.au                       ; 2 uses
  %i.av = call i8 @llvm.abs.i8(i8 %.fr119, i1 false) ; 3 uses
  %i.aw = urem i8 %i.av, 10
  %i.ax = udiv i8 %i.av, 10
  %.zext99 = zext nneg i8 %i.ax to i16            ; 2 uses
  %.urem100 = add nsw i16 %.zext99, -10
  %.cmp101 = icmp ult i8 %i.av, 100
  %i.ay = select i1 %.cmp101, i16 %.zext99, i16 %.urem100
  %i.az = icmp sgt i8 %.fr119, -1
  br i1 %i.az, label %.lr.ph.i42, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i16 45, ptr %i.i, align 2, !tbaa !13
  %i.ba = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.i, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %bb.e, %.lr.ph.i31
  %i.bb = or disjoint i16 %i.ay, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 %i.bb, ptr %i.h, align 2, !tbaa !13
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bd = or disjoint i8 %i.aw, 48
  %i.be = zext nneg i8 %i.bd to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i16 %i.be, ptr %i.h, align 2, !tbaa !13
  %i.bf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.h, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i16 84, ptr %i.g, align 2, !tbaa !13
  %i.bg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.g, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bh = load i32, ptr %i.o, align 4, !tbaa !45  ; 3 uses
  %i.bi = sdiv i32 %i.bh, 3600000
  %spec.select.i46 = call i32 @llvm.abs.i32(i32 %i.bi, i1 true) ; 2 uses
  %.lhs.trunc102 = trunc nsw i32 %spec.select.i46 to i16
  %i.bj = urem i16 %.lhs.trunc102, 10
  %.lhs.trunc104 = trunc nsw i32 %spec.select.i46 to i16
  %i.bk = udiv i16 %.lhs.trunc104, 10
  %.lhs.trunc106 = trunc i16 %i.bk to i8
  %i.bl = urem i8 %.lhs.trunc106, 10
  %i.bm = srem i32 %i.bh, 3600000                 ; 3 uses
  %i.bn = sdiv i32 %i.bm, 60000
  %i.bo = srem i32 %i.bm, 60000                   ; 2 uses
  %i.bp = sdiv i32 %i.bo, 1000
  %i.bq = icmp sgt i32 %i.bh, -3600000
  br i1 %i.bq, label %.lr.ph.i53, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i16 45, ptr %i.f, align 2, !tbaa !13
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.f, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %bb.f, %.lr.ph.i42
  %i.bs = or disjoint i8 %i.bl, 48
  %i.bt = zext nneg i8 %i.bs to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.bt, ptr %i.e, align 2, !tbaa !13
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bv = or disjoint i16 %i.bj, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.bv, ptr %i.e, align 2, !tbaa !13
  %i.bw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %spec.select.i57 = call i32 @llvm.abs.i32(i32 %i.bn, i1 true) ; 2 uses
  %.lhs.trunc108 = trunc i32 %spec.select.i57 to i8
  %i.bx = urem i8 %.lhs.trunc108, 10
  %.lhs.trunc110 = trunc i32 %spec.select.i57 to i8
  %i.by = udiv i8 %.lhs.trunc110, 10
  %i.bz = icmp sgt i32 %i.bm, -60000
  br i1 %i.bz, label %.lr.ph.i64, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 45, ptr %i.d, align 2, !tbaa !13
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.lr.ph.i64

.lr.ph.i64:                                       ; preds = %bb.g, %.lr.ph.i53
  %i.cb = or i8 %i.by, 48
  %i.cc = zext nneg i8 %i.cb to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.cc, ptr %i.c, align 2, !tbaa !13
  %i.cd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ce = or disjoint i8 %i.bx, 48
  %i.cf = zext nneg i8 %i.ce to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.cf, ptr %i.c, align 2, !tbaa !13
  %i.cg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %spec.select.i68 = call i32 @llvm.abs.i32(i32 %i.bp, i1 true) ; 2 uses
  %.lhs.trunc112 = trunc i32 %spec.select.i68 to i8
  %i.ch = urem i8 %.lhs.trunc112, 10
  %.lhs.trunc114 = trunc i32 %spec.select.i68 to i8
  %i.ci = udiv i8 %.lhs.trunc114, 10
  %i.cj = icmp sgt i32 %i.bo, -1000
  br i1 %i.cj, label %.lr.ph.i75, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 45, ptr %i.b, align 2, !tbaa !13
  %i.ck = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.lr.ph.i75

.lr.ph.i75:                                       ; preds = %bb.h, %.lr.ph.i64
  %i.cl = or i8 %i.ci, 48
  %i.cm = zext nneg i8 %i.cl to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.cm, ptr %i.a, align 2, !tbaa !13
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.co = or disjoint i8 %i.ch, 48
  %i.cp = zext nneg i8 %i.co to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.cp, ptr %i.a, align 2, !tbaa !13
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %.lr.ph.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_789VTimeZone12endZonePropsERNS_9VTZWriterEaR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef signext %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !33
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !8
  %i.e = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull @_ZN6icu_78L8ICAL_ENDE, i32 noundef 0, i32 noundef -1)
          to label %_ZN6icu_789VTZWriter5writeEPKDs.exit unwind label %bb.c ; 0 uses

common.resume:                                    ; preds = %bb.i, %bb.g, %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.k, %bb.e ], [ %i.m, %bb.g ], [ %i.p, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @_ZN6icu_78L8ICAL_ENDE) #18, !srcloc !15
  br label %common.resume

end_hunk_0
