Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/number_longnames?download=true
inline.NumInlined: 640
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN6icu_786number4impl15LongNameHandler19processPatternTimesEONS_15MeasureUnitImplENS_6LocaleERK16UNumberUnitWidthPKcPNS_13UnicodeStringER10UErrorCode:bb.a

bb.bv:                                            ; preds = %bb.bu
  store i32 %.0302.ph, ptr %i.oo, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.2202 = phi i16 [ %.0303.ph, %bb.bv ], [ %.1201344, %bb.bu ] ; 5 uses
  br i1 %.not230, label %bb.cc, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dt, align 8
  store i16 2, ptr %i.du, align 8
  %i.or = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %44, ptr noundef nonnull align 8 dereferenceable(64) %29, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.os = load i32, ptr %5, align 4
  %i.ot = icmp slt i32 %i.os, 1
  br i1 %i.ot, label %bb.by, label %.critedge

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %45, align 8
  store i16 2, ptr %i.dv, align 8
  %i.ou = load i32, ptr %2, align 4
  %i.ov = icmp eq i32 %i.ou, 2
  br i1 %i.ov, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ow = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toLowerERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(40) %1) #16 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ox = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %44, ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %45, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.oy = load i32, ptr %5, align 4
  %i.oz = icmp slt i32 %i.oy, 1
  br i1 %i.oz, label %bb.cb, label %.critedge253

bb.cb:                                            ; preds = %bb.ca
  %i.pa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %45) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %44) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bw
  br i1 %.not228, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #16
  call fastcc void @_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %47, ptr noundef nonnull %26, i32 noundef %.0195, ptr noundef nonnull align 4 dereferenceable(4) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.dw, align 8
  store i16 2, ptr %i.dx, align 8
  %i.pb = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %46, ptr noundef nonnull align 8 dereferenceable(64) %47, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %47) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #16
  %i.pc = load i32, ptr %5, align 4
  %i.pd = icmp slt i32 %i.pc, 1
  br i1 %i.pd, label %bb.ce, label %.critedge251

bb.ce:                                            ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %48, align 8
  store i16 2, ptr %i.dy, align 8
  %i.pe = load i32, ptr %2, align 4
  %i.pf = icmp eq i32 %i.pe, 2
  br i1 %i.pf, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.pg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7toLowerERKNS_6LocaleE(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(40) %1) #16 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.ph = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %46, ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %48, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.pi = load i32, ptr %5, align 4
  %i.pj = icmp slt i32 %i.pi, 1
  br i1 %i.pj, label %bb.ch, label %.critedge255

bb.ch:                                            ; preds = %bb.cg
  %i.pk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %48) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %48) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %46) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cc
  %i.pl = load i16, ptr %i.jt, align 8            ; 2 uses
  %i.pm = icmp slt i16 %i.pl, 0
  %i.pn = ashr i16 %i.pl, 5
  %i.po = sext i16 %i.pn to i32
  %i.pp = getelementptr inbounds nuw i8, ptr %i.js, i64 12
  %i.pq = load i32, ptr %i.pp, align 4
  %i.pr = select i1 %i.pm, i32 %i.pq, i32 %i.po
  %i.ps = icmp eq i32 %i.pr, 0
  br i1 %i.ps, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.pt = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.js, ptr noundef nonnull align 8 dereferenceable(64) %42) #16 ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %49, align 8
  store i16 2, ptr %i.dz, align 8
  %i.pu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(64) %i.js, ptr noundef nonnull align 8 dereferenceable(64) %42, ptr noundef nonnull align 8 dereferenceable(64) %49, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.pv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.js, ptr noundef nonnull align 8 dereferenceable(64) %49) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  br label %bb.cl

.critedge:                                        ; preds = %bb.bx
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %44) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  br label %.thread314

.critedge251:                                     ; preds = %bb.cd
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %46) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  br label %.thread314

.critedge253:                                     ; preds = %bb.ca
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %45) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #16
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %44) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #16
  br label %.thread314

.critedge255:                                     ; preds = %bb.cg
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %48) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %46) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #16
  br label %.thread314

.thread314:                                       ; preds = %bb.bt, %.critedge251, %.critedge253, %.critedge255, %.critedge
  %.3203.ph = phi i16 [ %.2202, %.critedge ], [ %.2202, %.critedge255 ], [ %.2202, %.critedge253 ], [ %.2202, %.critedge251 ], [ %.1201344, %bb.bt ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  br label %.thread318

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %42) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #16
  br label %.thread310

.thread310:                                       ; preds = %bb.ay, %bb.cl
  %.4204313 = phi i16 [ %.2202, %bb.cl ], [ %.1201344, %bb.ay ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.thread318, label %bb.ax, !llvm.loop !118

.thread318:                                       ; preds = %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit, %.thread310, %.thread314, %bb.al
  %.6206 = phi i16 [ %.0200351, %bb.al ], [ %.3203.ph, %.thread314 ], [ %.4204313, %.thread310 ], [ %.1201344, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
  %i.pw = phi i1 [ false, %bb.al ], [ false, %.thread314 ], [ true, %.thread310 ], [ false, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ey) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ez) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fa) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fb) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fc) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fd) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fe) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ff) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fg) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fh) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fi) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %32) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %29) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #16
  br label %bb.cm

bb.cm:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit279, %.thread318
  %.7207 = phi i16 [ %.6206, %.thread318 ], [ %.0200351, %_ZN6icu_7810CharStringD2Ev.exit279 ] ; 2 uses
  %.9 = phi i1 [ %i.pw, %.thread318 ], [ false, %_ZN6icu_7810CharStringD2Ev.exit279 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fj) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fk) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fl) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fm) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fn) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fo) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fp) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fq) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fr) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fs) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ft) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br i1 %.9, label %bb.n, label %.thread328

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %.0200.lcssa = phi i16 [ 0, %bb.m ], [ %.7207, %bb.n ] ; 3 uses
  %i.px = load i64, ptr %i.av, align 8
  %.not246 = icmp eq i64 %i.px, 0
  br i1 %.not246, label %bb.cq, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.py = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.pz = load i16, ptr %i.py, align 8
  %i.qa = and i16 %i.pz, 1
  %.not247 = icmp eq i16 %i.qa, 0
  br i1 %.not247, label %bb.cn, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.qb = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.qc = load i16, ptr %i.qb, align 8
  %i.qd = and i16 %i.qc, 1
  %.not247.1 = icmp eq i16 %i.qd, 0
  br i1 %.not247.1, label %bb.cn, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.qe = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.qf = load i16, ptr %i.qe, align 8
  %i.qg = and i16 %i.qf, 1
  %.not247.2 = icmp eq i16 %i.qg, 0
  br i1 %.not247.2, label %bb.cn, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.qh = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.qi = load i16, ptr %i.qh, align 8
  %i.qj = and i16 %i.qi, 1
  %.not247.3 = icmp eq i16 %i.qj, 0
  br i1 %.not247.3, label %bb.cn, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.qk = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ql = load i16, ptr %i.qk, align 8
  %i.qm = and i16 %i.ql, 1
  %.not247.4 = icmp eq i16 %i.qm, 0
  br i1 %.not247.4, label %bb.cn, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.qn = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.qo = load i16, ptr %i.qn, align 8
  %i.qp = and i16 %i.qo, 1
  %.not247.5 = icmp eq i16 %i.qp, 0
  br i1 %.not247.5, label %bb.cn, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.qq = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.qr = load i16, ptr %i.qq, align 8
  %i.qs = and i16 %i.qr, 1
  %.not247.6 = icmp eq i16 %i.qs, 0
  br i1 %.not247.6, label %bb.cn, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.qt = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.qu = load i16, ptr %i.qt, align 8
  %i.qv = and i16 %i.qu, 1
  %.not247.7 = icmp eq i16 %i.qv, 0
  %spec.select = select i1 %.not247.7, i64 7, i64 -1
  br label %bb.cn

bb.cn:                                            ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0194 = phi i64 [ 4, %.preheader.4 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ %spec.select, %.preheader.7 ], [ 2, %.preheader.2 ], [ 5, %.preheader.5 ], [ 3, %.preheader.3 ], [ 6, %.preheader.6 ]
  %52 = getelementptr inbounds [64 x i8], ptr %4, i64 %.0194 ; 5 uses
  %53 = getelementptr inbounds nuw i8, ptr %52, i64 8
  %54 = load i16, ptr %53, align 8                ; 2 uses
  %i.qw = icmp slt i16 %54, 0
  %i.qx = ashr i16 %54, 5
  %i.qy = sext i16 %i.qx to i32
  %i.qz = getelementptr inbounds nuw i8, ptr %52, i64 12
  %i.ra = load i32, ptr %i.qz, align 4
  %i.rb = select i1 %i.qw, i32 %i.ra, i32 %i.qy
  %i.rc = icmp eq i32 %i.rb, 0
  br i1 %i.rc, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rd = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.re = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %i.rd) #16 ; 0 uses
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %50, align 8
  %i.rf = getelementptr inbounds nuw i8, ptr %50, i64 8
  store i16 2, ptr %i.rf, align 8
  %i.rg = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.rh = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(64) %i.rg, ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.ri = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %50) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp, %._crit_edge
  %.not248 = icmp eq i16 %.0200.lcssa, 0          ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %51, i64 8
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cy
  %indvars.iv372 = phi i64 [ 0, %bb.cq ], [ %indvars.iv.next373, %bb.cy ] ; 5 uses
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv372
  %i.rl = load i32, ptr %i.rk, align 4
  switch i32 %i.rl, label %bb.cy [
    i32 2, label %bb.cs
    i32 4, label %bb.cv
  ]

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %51, align 8
  store i16 2, ptr %i.rj, align 8
  %i.rm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3) #16 ; 0 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #16, !srcloc !76
  br i1 %.not248, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.0200.lcssa, ptr %i.b, align 2
  %i.rn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ro = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv372 ; 4 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load i16, ptr %i.rp, align 8            ; 2 uses
  %i.rr = icmp slt i16 %i.rq, 0
  %i.rs = ashr i16 %i.rq, 5
  %i.rt = sext i16 %i.rs to i32
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load i32, ptr %i.ru, align 4
  %i.rw = select i1 %i.rr, i32 %i.rv, i32 %i.rt
  %i.rx = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 8 dereferenceable(64) %i.ro, i32 noundef 0, i32 noundef %i.rw) #16 ; 0 uses
  %i.ry = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ro, ptr noundef nonnull align 8 dereferenceable(64) %51) #16 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cr
  br i1 %.not248, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rz = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0200.lcssa, ptr %i.a, align 2
  %i.sa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.rz, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #16 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.sb = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv372
  %i.sc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.sb, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3) #16 ; 0 uses
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #16, !srcloc !76
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cr, %bb.cu, %bb.cx
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 8
  br i1 %exitcond375.not, label %.thread328, label %bb.cr, !llvm.loop !119

.thread328:                                       ; preds = %bb.cm, %bb.cy, %.thread323
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  br label %bb.cz

bb.cz:                                            ; preds = %bb.i, %.thread328
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %bb.da

bb.da:                                            ; preds = %bb.g, %bb.h, %bb.cz
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  br label %bb.db

bb.db:                                            ; preds = %bb.f, %bb.e, %bb.a, %bb.da, %bb.c
  ret void
}

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_786LocaleD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_116getCompoundValueEN6icu_7811StringPieceERKNS0_6LocaleERK16UNumberUnitWidthR10UErrorCode(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr %1, i32 %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #0 !guid !123 {
bb.a:
  %6 = alloca %"class.icu_78::CharString", align 8 ; 17 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.c = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  %i.d = tail call ptr @ures_open_78(ptr noundef nonnull @.str.10, ptr noundef %i.c, ptr noundef nonnull %5) #16 ; 4 uses
  %i.e = load i32, ptr %5, align 4
  %i.f = icmp slt i32 %i.e, 1
  %.sink35.sroa.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sink35.sroa.gep36 = getelementptr inbounds nuw i8, ptr %8, i64 8
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 13 ; 2 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 40, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i8 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i32 0, ptr %i.k, align 8
  store i8 0, ptr %i.h, align 1
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull @.str.17) #16
  %i.l = load ptr, ptr %7, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.l, i32 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.p = load i32, ptr %4, align 4
  switch i32 %i.p, label %bb.f [
    i32 0, label %bb.d
    i32 1, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull @.str.19) #16
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull @.str.20) #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e
  %.sink35.sroa.phi = phi ptr [ %.sink35.sroa.gep, %bb.e ], [ %.sink35.sroa.gep36, %bb.d ]
  %.sink35 = phi ptr [ %9, %bb.e ], [ %8, %bb.d ]
  %i.q = load ptr, ptr %.sink35, align 8
  %i.r = load i32, ptr %.sink35.sroa.phi, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.q, i32 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull @.str.35) #16
  %i.t = load ptr, ptr %10, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %i.w = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.t, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.x = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.y = load i32, ptr %5, align 4
  store i32 %i.y, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4
  %i.z = load ptr, ptr %6, align 8
  %i.aa = call ptr @ures_getStringByKeyWithFallback_78(ptr noundef %i.d, ptr noundef %i.z, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #16
  %i.ab = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %4, align 4
  %.not27 = icmp eq i32 %i.ad, 1
  br i1 %.not27, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.k, align 8
  %i.ae = load ptr, ptr %6, align 8
  store i8 0, ptr %i.ae, align 1
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull @.str.36) #16
  %i.af = load ptr, ptr %11, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %i.af, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
  %i.aj = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %6, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #16 ; 0 uses
end_hunk_0
