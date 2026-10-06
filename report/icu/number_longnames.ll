Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_longnames?download=true
inline.NumInlined: 654
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6icu_786number4impl15LongNameHandler19processPatternTimesEONS_15MeasureUnitImplENS_6LocaleERK16UNumberUnitWidthPKcPNS_13UnicodeStringER10UErrorCode:bb.a

bb.hn:                                            ; preds = %bb.hm
  %i.ru = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lg, ptr noundef nonnull align 8 dereferenceable(64) %43)
          to label %bb.ht unwind label %bb.ho     ; 0 uses

bb.ho:                                            ; preds = %bb.hn
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hu

bb.hp:                                            ; preds = %bb.hm
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %50, align 8, !tbaa !12
  store i16 2, ptr %i.em, align 8, !tbaa !13
  %i.rw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(64) %i.lg, ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.hq unwind label %bb.hs     ; 0 uses

bb.hq:                                            ; preds = %bb.hp
  %i.rx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lg, ptr noundef nonnull align 8 dereferenceable(64) %50)
          to label %bb.hr unwind label %bb.hs     ; 0 uses

bb.hr:                                            ; preds = %bb.hq
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.ht

bb.hs:                                            ; preds = %bb.hq, %bb.hp
  %i.ry = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.hu

.critedge:                                        ; preds = %_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.thread468

.critedge375:                                     ; preds = %bb.ha
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.thread468

.critedge377:                                     ; preds = %bb.gu
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.thread468

.critedge379:                                     ; preds = %bb.hi
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.thread468

.thread468:                                       ; preds = %bb.gj, %.critedge375, %.critedge377, %.critedge379, %.critedge
  %.3261.ph = phi i16 [ %.2260, %.critedge ], [ %.2260, %.critedge379 ], [ %.2260, %.critedge377 ], [ %.2260, %.critedge375 ], [ %.1259631, %bb.gj ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %.thread472

bb.ht:                                            ; preds = %bb.hn, %bb.hr
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %.thread464

.thread464:                                       ; preds = %bb.fc, %bb.ht
  %.4262467 = phi i16 [ %.2260, %bb.ht ], [ %.1259631, %bb.fc ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.thread472, label %bb.fb, !llvm.loop !205

bb.hu:                                            ; preds = %bb.hs, %bb.ho, %bb.hl, %.body436, %.body416
  %.pn337 = phi { ptr, i32 } [ %i.rv, %bb.ho ], [ %i.ry, %bb.hs ], [ %.pn332.pn, %bb.hl ], [ %.pn325.pn, %.body436 ], [ %.pn321, %.body416 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %bb.hw

.thread472:                                       ; preds = %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit, %.thread464, %.thread468, %bb.du
  %.6264 = phi i16 [ %.0258638, %bb.du ], [ %.3261.ph, %.thread468 ], [ %.4262467, %.thread464 ], [ %.1259631, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
  %i.rz = phi i1 [ false, %bb.du ], [ false, %.thread468 ], [ true, %.thread464 ], [ false, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fl) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fm) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fn) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fo) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fp) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fq) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fr) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fs) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ft) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fu) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fv) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.hv

bb.hv:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %.thread472
  %.7265 = phi i16 [ %.6264, %.thread472 ], [ %.0258638, %_ZN6icu_7810CharStringD2Ev.exit ] ; 2 uses
  %.9255 = phi i1 [ %i.rz, %.thread472 ], [ false, %_ZN6icu_7810CharStringD2Ev.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fw) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fx) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fy) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.fz) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ga) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gb) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gc) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gd) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ge) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gf) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.gg) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %24) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br i1 %.9255, label %bb.ax, label %.thread482

bb.hw:                                            ; preds = %bb.fd, %.body408, %bb.hu, %bb.ez, %bb.dx
  %.pn337.pn.pn.pn = phi { ptr, i32 } [ %.pn304, %bb.dx ], [ %.pn313.pn, %bb.ez ], [ %.pn337, %bb.hu ], [ %i.lo, %bb.fd ], [ %eh.lpad-body409, %.body408 ]
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 704
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sa) #21
  %i.sb = getelementptr inbounds nuw i8, ptr %33, i64 640
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sb) #21
  %i.sc = getelementptr inbounds nuw i8, ptr %33, i64 576
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sc) #21
  %i.sd = getelementptr inbounds nuw i8, ptr %33, i64 512
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sd) #21
  %i.se = getelementptr inbounds nuw i8, ptr %33, i64 448
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.se) #21
  %i.sf = getelementptr inbounds nuw i8, ptr %33, i64 384
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sf) #21
  %i.sg = getelementptr inbounds nuw i8, ptr %33, i64 320
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sg) #21
  %i.sh = getelementptr inbounds nuw i8, ptr %33, i64 256
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sh) #21
  %i.si = getelementptr inbounds nuw i8, ptr %33, i64 192
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.si) #21
  %i.sj = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sj) #21
  %i.sk = getelementptr inbounds nuw i8, ptr %33, i64 64
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sk) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.dr
  %.pn337.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn, %bb.hw ], [ %.pn297, %bb.dr ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %.body
  %.pn337.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn.pn, %bb.hx ], [ %.pn293, %.body ]
  %i.sl = getelementptr inbounds nuw i8, ptr %27, i64 704
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sl) #21
  %i.sm = getelementptr inbounds nuw i8, ptr %27, i64 640
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sm) #21
  %i.sn = getelementptr inbounds nuw i8, ptr %27, i64 576
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sn) #21
  %i.so = getelementptr inbounds nuw i8, ptr %27, i64 512
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.so) #21
  %i.sp = getelementptr inbounds nuw i8, ptr %27, i64 448
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sp) #21
  %i.sq = getelementptr inbounds nuw i8, ptr %27, i64 384
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sq) #21
  %i.sr = getelementptr inbounds nuw i8, ptr %27, i64 320
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sr) #21
  %i.ss = getelementptr inbounds nuw i8, ptr %27, i64 256
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ss) #21
  %i.st = getelementptr inbounds nuw i8, ptr %27, i64 192
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.st) #21
  %i.su = getelementptr inbounds nuw i8, ptr %27, i64 128
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.su) #21
  %i.sv = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sv) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.hz

bb.hz:                                            ; preds = %bb.cz, %bb.da, %bb.hy, %bb.bh
  %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.bh ], [ %.pn337.pn.pn.pn.pn.pn.pn.pn, %bb.hy ], [ %i.iy, %bb.da ], [ %i.ix, %bb.cz ]
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %24) #21
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.bg
  %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hz ], [ %i.hb, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %bb.ja

._crit_edge:                                      ; preds = %bb.ax, %bb.aw
  %.0258.lcssa = phi i16 [ 0, %bb.aw ], [ %.7265, %bb.ax ] ; 3 uses
  %i.sw = load i64, ptr %i.bh, align 8, !tbaa !65
  %.not350 = icmp eq i64 %i.sw, 0
  br i1 %.not350, label %bb.ii, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.sx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sy = load i16, ptr %i.sx, align 8, !tbaa !13
  %i.sz = and i16 %i.sy, 1
  %.not351 = icmp eq i16 %i.sz, 0
  br i1 %.not351, label %bb.ib, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ta = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.tb = load i16, ptr %i.ta, align 8, !tbaa !13
  %i.tc = and i16 %i.tb, 1
  %.not351.1 = icmp eq i16 %i.tc, 0
  br i1 %.not351.1, label %bb.ib, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.td = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.te = load i16, ptr %i.td, align 8, !tbaa !13
  %i.tf = and i16 %i.te, 1
  %.not351.2 = icmp eq i16 %i.tf, 0
  br i1 %.not351.2, label %bb.ib, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.tg = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.th = load i16, ptr %i.tg, align 8, !tbaa !13
  %i.ti = and i16 %i.th, 1
  %.not351.3 = icmp eq i16 %i.ti, 0
  br i1 %.not351.3, label %bb.ib, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.tj = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.tk = load i16, ptr %i.tj, align 8, !tbaa !13
  %i.tl = and i16 %i.tk, 1
  %.not351.4 = icmp eq i16 %i.tl, 0
  br i1 %.not351.4, label %bb.ib, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.tm = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.tn = load i16, ptr %i.tm, align 8, !tbaa !13
  %i.to = and i16 %i.tn, 1
  %.not351.5 = icmp eq i16 %i.to, 0
  br i1 %.not351.5, label %bb.ib, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.tp = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.tq = load i16, ptr %i.tp, align 8, !tbaa !13
  %i.tr = and i16 %i.tq, 1
  %.not351.6 = icmp eq i16 %i.tr, 0
  br i1 %.not351.6, label %bb.ib, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.ts = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.tt = load i16, ptr %i.ts, align 8, !tbaa !13
  %i.tu = and i16 %i.tt, 1
  %.not351.7 = icmp eq i16 %i.tu, 0
  %spec.select = select i1 %.not351.7, i64 7, i64 -1
  br label %bb.ib

bb.ib:                                            ; preds = %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.0196 = phi i64 [ 4, %.preheader.4 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ %spec.select, %.preheader.7 ], [ 2, %.preheader.2 ], [ 5, %.preheader.5 ], [ 3, %.preheader.3 ], [ 6, %.preheader.6 ]
  %53 = getelementptr inbounds [64 x i8], ptr %4, i64 %.0196 ; 5 uses
  %54 = getelementptr inbounds nuw i8, ptr %53, i64 8
  %55 = load i16, ptr %54, align 8, !tbaa !13     ; 2 uses
  %i.tv = icmp slt i16 %55, 0
  %i.tw = ashr i16 %55, 5
  %i.tx = sext i16 %i.tw to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %53, i64 12
  %i.tz = load i32, ptr %i.ty, align 4
  %i.ua = select i1 %i.tv, i32 %i.tz, i32 %i.tx
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.ic, label %bb.ie

bb.ic:                                            ; preds = %bb.ib
  %i.uc = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.ud = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %53, ptr noundef nonnull align 8 dereferenceable(64) %i.uc)
          to label %bb.ii unwind label %bb.id     ; 0 uses

bb.id:                                            ; preds = %bb.ic
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.ie:                                            ; preds = %bb.ib
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %51, align 8, !tbaa !12
  %i.uf = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i16 2, ptr %i.uf, align 8, !tbaa !13
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.uh = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(64) %i.ug, ptr noundef nonnull align 8 dereferenceable(64) %53, ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.if unwind label %bb.ih     ; 0 uses

bb.if:                                            ; preds = %bb.ie
  %i.ui = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %53, ptr noundef nonnull align 8 dereferenceable(64) %51)
          to label %bb.ig unwind label %bb.ih     ; 0 uses

bb.ig:                                            ; preds = %bb.if
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if, %bb.ie
  %i.uj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.ja

bb.ii:                                            ; preds = %bb.ig, %bb.ic, %._crit_edge
  %.not356 = icmp eq i16 %.0258.lcssa, 0          ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.iw
  %indvars.iv682 = phi i64 [ 0, %bb.ii ], [ %indvars.iv.next683, %bb.iw ] ; 5 uses
  %i.ul = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv682
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !13
  switch i32 %i.um, label %bb.iw [
    i32 2, label %bb.ik
    i32 4, label %bb.ir
  ]

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %52, align 8, !tbaa !12
  store i16 2, ptr %i.uk, align 8, !tbaa !13
  %i.un = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit unwind label %bb.in ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit: ; preds = %bb.ik
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br i1 %.not356, label %bb.io, label %bb.il

bb.il:                                            ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.0258.lcssa, ptr %i.b, align 2, !tbaa !62
  %i.uo = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit unwind label %bb.im ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit:         ; preds = %bb.il
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.io

bb.im:                                            ; preds = %bb.io, %bb.il, %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.in:                                            ; preds = %bb.ik
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %bb.iq

bb.io:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  %i.ur = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv682 ; 4 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load i16, ptr %i.us, align 8, !tbaa !13 ; 2 uses
  %i.uu = icmp slt i16 %i.ut, 0
  %i.uv = ashr i16 %i.ut, 5
  %i.uw = sext i16 %i.uv to i32
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ur, i64 12
  %i.uy = load i32, ptr %i.ux, align 4
  %i.uz = select i1 %i.uu, i32 %i.uy, i32 %i.uw
  %i.va = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %i.ur, i32 noundef 0, i32 noundef %i.uz)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.im ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.io
  %i.vb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ur, ptr noundef nonnull align 8 dereferenceable(64) %52)
          to label %bb.ip unwind label %bb.im     ; 0 uses

bb.ip:                                            ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.iw

bb.iq:                                            ; preds = %bb.in, %bb.im
  %.pn358 = phi { ptr, i32 } [ %i.up, %bb.im ], [ %i.uq, %bb.in ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.ja

bb.ir:                                            ; preds = %bb.ij
  br i1 %.not356, label %bb.iu, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.vc = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0258.lcssa, ptr %i.a, align 2, !tbaa !62
  %i.vd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.vc, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit442 unwind label %bb.it ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit442:      ; preds = %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.ve = landingpad { ptr, i32 }
          cleanup
  br label %bb.ja

bb.iu:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit442, %bb.ir
  %i.vf = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv682
  %i.vg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.vf, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444 unwind label %bb.iv ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444: ; preds = %bb.iu
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.vh = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %bb.ja

bb.iw:                                            ; preds = %bb.ij, %bb.ip, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444
  %indvars.iv.next683 = add nuw nsw i64 %indvars.iv682, 1 ; 2 uses
  %exitcond685.not = icmp eq i64 %indvars.iv.next683, 8
  br i1 %exitcond685.not, label %.thread482, label %bb.ij, !llvm.loop !206

.thread482:                                       ; preds = %bb.hv, %bb.iw, %.thread477
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.ix

bb.ix:                                            ; preds = %bb.u, %.thread482
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.iy

bb.iy:                                            ; preds = %bb.k, %bb.m, %bb.ix
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.iz

bb.iz:                                            ; preds = %bb.f, %bb.e, %bb.a, %bb.iy, %bb.c
  ret void

bb.ja:                                            ; preds = %bb.iq, %bb.it, %bb.iv, %bb.id, %bb.ih, %bb.ia, %bb.av
  %.pn358.pn.pn.pn = phi { ptr, i32 } [ %i.uj, %bb.ih ], [ %.pn, %bb.av ], [ %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ia ], [ %i.ue, %bb.id ], [ %.pn358, %bb.iq ], [ %i.vh, %bb.iv ], [ %i.ve, %bb.it ]
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #21
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.as
  %.pn358.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn, %bb.ja ], [ %i.bu, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #21
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.ar
  %.pn358.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn.pn, %bb.jb ], [ %i.bt, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #21
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.aq
  %.pn358.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn.pn.pn, %bb.jc ], [ %i.bs, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.x
  %.pn366 = phi { ptr, i32 } [ %i.ah, %bb.x ], [ %.pn358.pn.pn.pn.pn.pn.pn, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #21
  br label %bb.jf

bb.jf:                                            ; preds = %bb.je, %bb.w
  %.pn366.pn = phi { ptr, i32 } [ %.pn366, %bb.je ], [ %i.ag, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jf, %bb.v
  %.pn366.pn.pn = phi { ptr, i32 } [ %.pn366.pn, %bb.jf ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jg, %bb.q, %bb.n
  %.pn372 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn370, %bb.q ], [ %.pn366.pn.pn, %bb.jg ]
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  resume { ptr, i32 } %.pn372
}

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

end_hunk_0
