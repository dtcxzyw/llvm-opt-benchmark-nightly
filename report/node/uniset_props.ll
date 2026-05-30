inline.NumInlined: 175
inline.NumDeleted: 67
begin_hunk_0_@_ZN6icu_7812_GLOBAL__N_113mungeCharNameEPcPKci:bb.a
  switch i8 %i.g, label %.split.us [
    i8 0, label %.split29.us
    i8 32, label %bb.b
  ]

bb.b:                                             ; preds = %.outer.split.split
  %i.h = load i8, ptr %i.c, align 1
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %.outer.split.split, label %.split.us, !llvm.loop !12

.split.us:                                        ; preds = %bb.b, %.outer.split.split
  %exitcond = icmp eq i64 %indvars.iv, 127
  br i1 %exitcond, label %.loopexit, label %.thread

.thread:                                          ; preds = %.outer.split.split.us, %.split.us
  %.us-phi2748 = phi i8 [ %i.g, %.split.us ], [ %i.e, %.outer.split.split.us ]
  %.us-phi47 = phi ptr [ %i.f, %.split.us ], [ %i.d, %.outer.split.split.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  store i8 %.us-phi2748, ptr %i.b, align 1
  br label %.outer, !llvm.loop !12

.split29.us:                                      ; preds = %.outer.split.split
  %i.j = and i64 %indvars.iv, 4294967295
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1
  %i.n = icmp eq i8 %i.m, 32
  %i.o = sext i1 %i.n to i64
  %spec.select = add i64 %indvars.iv, %i.o
  %sext = shl i64 %spec.select, 32
  %i.p = ashr exact i64 %sext, 32
  br label %.split29.us.thread

.split29.us.thread:                               ; preds = %.outer.split.split.us, %.split29.us
  %.1 = phi i64 [ %i.p, %.split29.us ], [ 0, %.outer.split.split.us ]
  %i.q = getelementptr inbounds i8, ptr %0, i64 %.1
  store i8 0, ptr %i.q, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.split.us, %.split29.us.thread
  %.0 = phi i8 [ 1, %.split29.us.thread ], [ 0, %.split.us ]
  ret i8 %.0
}

declare i32 @u_charFromName_78(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @u_versionFromString_78(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZN6icu_7812_GLOBAL__N_113versionFilterEiPv(i32 noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @u_charAge_78(i32 noundef %0, ptr noundef nonnull %i.a) #10
  %i.b = load i32, ptr %i.a, align 1
  %i.c = call i32 @llvm.bswap.i32(i32 %i.b)
  %i.d = icmp ugt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 1
  %i.f = load i32, ptr %1, align 1
  %i.g = call i32 @llvm.bswap.i32(i32 %i.e)
  %i.h = call i32 @llvm.bswap.i32(i32 %i.f)
  %i.i = icmp ule i32 %i.g, %i.h
  %i.j = zext i1 %i.i to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i8 [ 0, %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i8 %i.k
}

declare i32 @uprv_compareASCIIPropertyNames_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3setEii(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet20applyPropertyPatternERKNS_13UnicodeStringERNS_13ParsePositionER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 8 uses
  %i.d = load i32, ptr %3, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.c, 5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load i16, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = select i1 %i.i, i32 %i.m, i32 %i.k       ; 5 uses
  %i.o = icmp sgt i32 %i.f, %i.n
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.p = icmp ult i32 %i.c, %i.n
  br i1 %i.p, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %bb.d
  %i.q = and i16 %i.h, 2
  %.not.i.i.i.i = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i.i, ptr %i.t, ptr %i.r ; 4 uses
  %i.v = sext i32 %i.c to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2
  switch i16 %i.x, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread [
    i16 91, label %bb.e
    i16 92, label %bb.h
  ]

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.y = add nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.z = icmp ult i32 %i.y, %i.n
  br i1 %i.z, label %_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread

_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit: ; preds = %bb.e
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %.not = icmp eq i16 %i.ac, 58
  br i1 %.not, label %bb.f, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread

bb.f:                                             ; preds = %_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit
  %i.ad = add nuw nsw i32 %i.c, 2
  store i32 %i.ad, ptr %i.a, align 4
  %i.ae = call noundef i32 @_ZN6icu_7811ICU_Utility14skipWhitespaceERKNS_13UnicodeStringERia(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 noundef signext 0) #10 ; 7 uses
  store i32 %i.ae, ptr %i.a, align 4
  %i.af = load i16, ptr %i.g, align 8             ; 3 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.l, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai   ; 4 uses
  %i.al = icmp slt i32 %i.ae, %i.ak
  %i.am = icmp ult i32 %i.ae, %i.ak
  %or.cond120 = and i1 %i.al, %i.am
  br i1 %or.cond120, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %thread-pre-split

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.f
  %i.an = and i16 %i.af, 2
  %.not.i.i.i = icmp eq i16 %i.an, 0
  %i.ao = load ptr, ptr %i.s, align 8
  %i.ap = select i1 %.not.i.i.i, ptr %i.ao, ptr %i.r
  %i.aq = sext i32 %i.ae to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.ap, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = icmp eq i16 %i.as, 94
  br i1 %i.at, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.au = add nuw nsw i32 %i.ae, 1                ; 2 uses
  store i32 %i.au, ptr %i.a, align 4
  br label %thread-pre-split

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.av = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.aw = icmp ult i32 %i.av, %i.n
  br i1 %i.aw, label %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit, label %bb.i

_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit: ; preds = %bb.h
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %i.ba = and i16 %i.az, -33
  %.not121 = icmp eq i16 %i.ba, 80
  br i1 %.not121, label %_ZNK6icu_7813UnicodeString6charAtEi.exit64, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit
  %i.bb = add nuw nsw i32 %i.c, 1                 ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %i.n
  br i1 %i.bc, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread

_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit: ; preds = %bb.i
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2
  %.not122 = icmp eq i16 %i.bf, 78
  br i1 %.not122, label %_ZNK6icu_7813UnicodeString6charAtEi.exit64, label %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit64:       ; preds = %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit, %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit
  %i.bg = phi i16 [ 78, %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit ], [ %i.az, %_ZN6icu_7812_GLOBAL__N_110isPerlOpenERKNS_13UnicodeStringEi.exit ] ; 2 uses
  %i.bh = icmp ne i16 %i.bg, 80
  %i.bi = icmp eq i16 %i.bg, 78
  %i.bj = add nuw nsw i32 %i.c, 2
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = call noundef i32 @_ZN6icu_7811ICU_Utility14skipWhitespaceERKNS_13UnicodeStringERia(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i8 noundef signext 0) #10 ; 5 uses
  %i.bl = load i16, ptr %i.g, align 8             ; 3 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.l, align 4
  %i.bq = select i1 %i.bm, i32 %i.bp, i32 %i.bo   ; 4 uses
  %i.br = icmp eq i32 %i.bk, %i.bq
  br i1 %i.br, label %.critedge, label %bb.j

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit64
  %i.bs = add nsw i32 %i.bk, 1                    ; 2 uses
  store i32 %i.bs, ptr %i.a, align 4
  %i.bt = icmp ult i32 %i.bk, %i.bq
  br i1 %i.bt, label %_ZNK6icu_7813UnicodeString6charAtEi.exit67, label %.critedge

_ZNK6icu_7813UnicodeString6charAtEi.exit67:       ; preds = %bb.j
  %i.bu = and i16 %i.bl, 2
  %.not.i.i.i66 = icmp eq i16 %i.bu, 0
  %i.bv = load ptr, ptr %i.s, align 8
  %i.bw = select i1 %.not.i.i.i66, ptr %i.bv, ptr %i.r
  %i.bx = sext i32 %i.bk to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %.not53 = icmp eq i16 %i.bz, 123
  br i1 %.not53, label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit, label %.critedge

.critedge:                                        ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit64, %_ZNK6icu_7813UnicodeString6charAtEi.exit67
  store i32 1, ptr %3, align 4
  br label %bb.v

_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZN6icu_7812_GLOBAL__N_111isPOSIXOpenERKNS_13UnicodeStringEi.exit, %bb.e, %bb.d, %bb.i, %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit
  store i32 1, ptr %3, align 4
  br label %bb.v

thread-pre-split:                                 ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.f, %bb.g
  %i.ca = phi i32 [ %i.au, %bb.g ], [ %i.ae, %bb.f ], [ %i.ae, %_ZNK6icu_7813UnicodeString6charAtEi.exit ] ; 2 uses
  %.048.ph = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %_ZNK6icu_7813UnicodeString6charAtEi.exit ]
  %i.cb = icmp slt i32 %i.ca, 0
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.ca, i32 %i.ak)
  %.0.i = select i1 %i.cb, i32 0, i32 %spec.select.i ; 2 uses
  %i.cc = sub nsw i32 %i.ak, %.0.i
  %i.cd = call noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull @.str.1, i32 noundef 0, i32 noundef 2, i32 noundef %.0.i, i32 noundef %i.cc) #10
  br label %bb.k

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit:      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit67
  %i.ce = icmp slt i32 %i.bk, -1
  %spec.select.i70 = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bq)
  %.0.i71 = select i1 %i.ce, i32 0, i32 %spec.select.i70 ; 2 uses
  %i.cf = sub nsw i32 %i.bq, %.0.i71
  %i.cg = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 125, i32 noundef %.0.i71, i32 noundef %i.cf) #10
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit, %thread-pre-split
  %.048118 = phi i1 [ %.048.ph, %thread-pre-split ], [ %i.bh, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ]
  %.049116 = phi i1 [ false, %thread-pre-split ], [ %i.bi, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 2 uses
  %.not5087114 = phi i32 [ 2, %thread-pre-split ], [ 1, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ]
  %.045 = phi i32 [ %i.cd, %thread-pre-split ], [ %i.cg, %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit ] ; 5 uses
  %i.ch = icmp slt i32 %.045, 0
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr %3, align 4
  br label %bb.v

bb.m:                                             ; preds = %bb.k
  %i.ci = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %.pre.i76 = load i16, ptr %i.g, align 8         ; 3 uses
  %.pre5.i83 = ashr i16 %.pre.i76, 5
  %.pre6.i84 = sext i16 %.pre5.i83 to i32         ; 2 uses
  br i1 %i.cj, label %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i80, label %bb.n

._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i80: ; preds = %bb.m
  %.pre4.i82 = load i32, ptr %i.l, align 4
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85

bb.n:                                             ; preds = %bb.m
  %i.ck = icmp slt i16 %.pre.i76, 0
  %i.cl = load i32, ptr %i.l, align 4             ; 2 uses
  %i.cm = select i1 %i.ck, i32 %i.cl, i32 %.pre6.i84
  %spec.select.i77 = call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.cm)
  br label %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85

_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85:    ; preds = %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i80, %bb.n
  %i.cn = phi i32 [ %.pre4.i82, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i80 ], [ %i.cl, %bb.n ]
  %.0.i79 = phi i32 [ 0, %._ZNK6icu_7813UnicodeString8pinIndexERi.exit_crit_edge.i80 ], [ %spec.select.i77, %bb.n ] ; 2 uses
  %i.co = icmp slt i16 %.pre.i76, 0
  %i.cp = select i1 %i.co, i32 %i.cn, i32 %.pre6.i84
  %i.cq = sub nsw i32 %i.cp, %.0.i79
  %i.cr = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i16 noundef zeroext 61, i32 noundef %.0.i79, i32 noundef %i.cq) #10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 2, ptr %i.cs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.ct, align 8
  %i.cu = icmp uge i32 %i.cr, %.045
  %or.cond57 = or i1 %.049116, %i.cu
  %i.cv = load i32, ptr %i.a, align 4             ; 2 uses
  %i.cw = load ptr, ptr %1, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  br i1 %or.cond57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cv, i32 noundef %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %4) #10
  %i.cz = add nuw nsw i32 %i.cr, 1
  %i.da = load ptr, ptr %1, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cz, i32 noundef %.045, ptr noundef nonnull align 8 dereferenceable(64) %5) #10
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDsi.exit85
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.cv, i32 noundef %.045, ptr noundef nonnull align 8 dereferenceable(64) %4) #10
  br i1 %.049116, label %_ZN6icu_7813UnicodeStringaSIA3_DsvEERS0_RKT_.exit, label %bb.q

_ZN6icu_7813UnicodeStringaSIA3_DsvEERS0_RKT_.exit: ; preds = %bb.p
  %i.dd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %4) #10 ; 0 uses
  call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #10
  %i.de = load i16, ptr %i.cs, align 8            ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = icmp slt i16 %i.de, 0
  %i.di = ashr i16 %i.de, 5
  %i.dj = sext i16 %i.di to i32
  %i.dk = select i1 %i.dh, i32 %i.dg, i32 %i.dj
  %i.dl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiSt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 0, i32 noundef %i.dk, i64 2, ptr nonnull @_ZN12_GLOBAL__N_19NAME_PROPE) #10 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeStringaSIA3_DsvEERS0_RKT_.exit, %bb.o
  %i.dm = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet18applyPropertyAliasERKNS_13UnicodeStringES3_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  %i.dn = load i32, ptr %3, align 4
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %.048118, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet10complementEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #10
  %i.dq = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet16removeAllStringsEv(ptr noundef nonnull align 8 dereferenceable(200) %i.dp) #10 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dr = add nuw nsw i32 %.045, %.not5087114
  store i32 %i.dr, ptr %i.b, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %bb.u, %.critedge, %bb.a, %_ZN6icu_7812_GLOBAL__N_110isNameOpenERKNS_13UnicodeStringEi.exit.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7821RuleCharacterIterator9lookaheadERNS_13UnicodeStringEi(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7821RuleCharacterIterator9jumpaheadEi(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6icu_7810UnicodeSet6freezeEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare void @ucln_common_registerCleanup_78(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext i8 @_ZL12uset_cleanupv() #0 {
bb.a:
  %i.a = load ptr, ptr @_ZL14uni32Singleton, align 8 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.a) #10
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr @_ZL14uni32Singleton, align 8
  store atomic i32 0, ptr @_ZL13uni32InitOnce seq_cst, align 4
  ret i8 1
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i64, ptr) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare void @_ZN6icu_7810UnicodeSet10setPatternEPKDsi(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare signext i8 @u_charType_78(i32 noundef) local_unnamed_addr #2

declare signext i8 @uscript_hasScript_78(i32 noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @u_hasIDType_78(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @u_getIntPropertyValue_78(i32 noundef, i32 noundef) local_unnamed_addr #2

declare double @u_getNumericValue_78(i32 noundef) local_unnamed_addr #2

declare void @u_charAge_78(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString7indexOfEPKDsiiii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiSt17basic_string_viewIDsSt11char_traitsIDsEE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i64, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{i64 2149216777}
!8 = distinct !{!8, !6}
!9 = !{}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
end_hunk_0
