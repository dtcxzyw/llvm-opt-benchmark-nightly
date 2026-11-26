Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_longnames?download=true
inline.NumInlined: 654
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZN6icu_786number4impl15LongNameHandler19processPatternTimesEONS_15MeasureUnitImplENS_6LocaleERK16UNumberUnitWidthPKcPNS_13UnicodeStringER10UErrorCode:bb.a

bb.hm:                                            ; preds = %bb.hl
  %i.rt = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %43)
          to label %bb.hs unwind label %bb.hn     ; 0 uses

bb.hn:                                            ; preds = %bb.hm
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.ht

bb.ho:                                            ; preds = %bb.hl
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %50, align 8, !tbaa !12
  store i16 2, ptr %i.em, align 8, !tbaa !13
  %i.rv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %43, ptr noundef nonnull align 8 dereferenceable(64) %50, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.hp unwind label %bb.hr     ; 0 uses

bb.hp:                                            ; preds = %bb.ho
  %i.rw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.lf, ptr noundef nonnull align 8 dereferenceable(64) %50)
          to label %bb.hq unwind label %bb.hr     ; 0 uses

bb.hq:                                            ; preds = %bb.hp
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.hs

bb.hr:                                            ; preds = %bb.hp, %bb.ho
  %i.rx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %50) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #21
  br label %bb.ht

.critedge:                                        ; preds = %_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.thread468

.critedge375:                                     ; preds = %bb.gz
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.thread468

.critedge377:                                     ; preds = %bb.gt
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %46) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %45) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #21
  br label %.thread468

.critedge379:                                     ; preds = %bb.hh
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %49) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %47) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #21
  br label %.thread468

.thread468:                                       ; preds = %bb.gi, %.critedge375, %.critedge377, %.critedge379, %.critedge
  %.3261.ph = phi i16 [ %.2260, %.critedge ], [ %.2260, %.critedge379 ], [ %.2260, %.critedge377 ], [ %.2260, %.critedge375 ], [ %.1259635, %bb.gi ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %.thread472

bb.hs:                                            ; preds = %bb.hm, %bb.hq
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %.thread464

.thread464:                                       ; preds = %bb.fb, %bb.hs
  %.4262467 = phi i16 [ %.2260, %bb.hs ], [ %.1259635, %bb.fb ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.thread472, label %bb.fa, !llvm.loop !205

bb.ht:                                            ; preds = %bb.hr, %bb.hn, %bb.hk, %.body436, %.body416
  %.pn337 = phi { ptr, i32 } [ %i.ru, %bb.hn ], [ %i.rx, %bb.hr ], [ %.pn332.pn, %bb.hk ], [ %.pn325.pn, %.body436 ], [ %.pn321, %.body416 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %43) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #21
  br label %bb.hv

.thread472:                                       ; preds = %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit, %.thread464, %.thread468, %bb.dt
  %.6264 = phi i16 [ %.0258642, %bb.dt ], [ %.3261.ph, %.thread468 ], [ %.4262467, %.thread464 ], [ %.1259635, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
  %i.ry = phi i1 [ false, %bb.dt ], [ false, %.thread468 ], [ true, %.thread464 ], [ false, %_ZN12_GLOBAL__N_113getWithPluralEPKN6icu_7813UnicodeStringENS0_14StandardPlural4FormER10UErrorCode.exit ]
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
  br label %bb.hu

bb.hu:                                            ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %.thread472
  %.7265 = phi i16 [ %.6264, %.thread472 ], [ %.0258642, %_ZN6icu_7810CharStringD2Ev.exit ] ; 2 uses
  %.9255 = phi i1 [ %i.ry, %.thread472 ], [ false, %_ZN6icu_7810CharStringD2Ev.exit ]
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

bb.hv:                                            ; preds = %bb.fc, %.body408, %bb.ht, %bb.ey, %bb.dw
  %.pn337.pn.pn.pn = phi { ptr, i32 } [ %.pn304, %bb.dw ], [ %.pn313.pn, %bb.ey ], [ %.pn337, %bb.ht ], [ %i.ln, %bb.fc ], [ %eh.lpad-body409, %.body408 ]
  %i.rz = getelementptr inbounds nuw i8, ptr %33, i64 704
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.rz) #21
  %i.sa = getelementptr inbounds nuw i8, ptr %33, i64 640
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sa) #21
  %i.sb = getelementptr inbounds nuw i8, ptr %33, i64 576
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sb) #21
  %i.sc = getelementptr inbounds nuw i8, ptr %33, i64 512
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sc) #21
  %i.sd = getelementptr inbounds nuw i8, ptr %33, i64 448
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sd) #21
  %i.se = getelementptr inbounds nuw i8, ptr %33, i64 384
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.se) #21
  %i.sf = getelementptr inbounds nuw i8, ptr %33, i64 320
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sf) #21
  %i.sg = getelementptr inbounds nuw i8, ptr %33, i64 256
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sg) #21
  %i.sh = getelementptr inbounds nuw i8, ptr %33, i64 192
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sh) #21
  %i.si = getelementptr inbounds nuw i8, ptr %33, i64 128
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.si) #21
  %i.sj = getelementptr inbounds nuw i8, ptr %33, i64 64
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sj) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %33) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #21
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hv, %bb.dq
  %.pn337.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn, %bb.hv ], [ %.pn297, %bb.dq ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %30) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %.body
  %.pn337.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn.pn, %bb.hw ], [ %.pn293, %.body ]
  %i.sk = getelementptr inbounds nuw i8, ptr %27, i64 704
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sk) #21
  %i.sl = getelementptr inbounds nuw i8, ptr %27, i64 640
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sl) #21
  %i.sm = getelementptr inbounds nuw i8, ptr %27, i64 576
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sm) #21
  %i.sn = getelementptr inbounds nuw i8, ptr %27, i64 512
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sn) #21
  %i.so = getelementptr inbounds nuw i8, ptr %27, i64 448
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.so) #21
  %i.sp = getelementptr inbounds nuw i8, ptr %27, i64 384
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sp) #21
  %i.sq = getelementptr inbounds nuw i8, ptr %27, i64 320
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sq) #21
  %i.sr = getelementptr inbounds nuw i8, ptr %27, i64 256
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.sr) #21
  %i.ss = getelementptr inbounds nuw i8, ptr %27, i64 192
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ss) #21
  %i.st = getelementptr inbounds nuw i8, ptr %27, i64 128
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.st) #21
  %i.su = getelementptr inbounds nuw i8, ptr %27, i64 64
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.su) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %27) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #21
  br label %bb.hy

bb.hy:                                            ; preds = %bb.cy, %bb.cz, %bb.hx
  %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.iw, %bb.cy ], [ %.pn337.pn.pn.pn.pn.pn.pn.pn, %bb.hx ], [ %i.ix, %bb.cz ]
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %24) #21
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.bg
  %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hy ], [ %i.hb, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #21
  br label %.loopexit.split-lp

._crit_edge:                                      ; preds = %bb.ax, %bb.aw
  %.0258.lcssa = phi i16 [ 0, %bb.aw ], [ %.7265, %bb.ax ] ; 3 uses
  %i.sv = load i64, ptr %i.bh, align 8, !tbaa !65
  %.not350 = icmp eq i64 %i.sv, 0
  br i1 %.not350, label %bb.ig, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge
  %i.sw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.sx = load i16, ptr %i.sw, align 8, !tbaa !13 ; 2 uses
  %i.sy = and i16 %i.sx, 1
  %.not351 = icmp eq i16 %i.sy, 0
  br i1 %.not351, label %bb.ia, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.sz = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ta = load i16, ptr %i.sz, align 8, !tbaa !13 ; 2 uses
  %i.tb = and i16 %i.ta, 1
  %.not351.1 = icmp eq i16 %i.tb, 0
  br i1 %.not351.1, label %bb.ia, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.tc = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.td = load i16, ptr %i.tc, align 8, !tbaa !13 ; 2 uses
  %i.te = and i16 %i.td, 1
  %.not351.2 = icmp eq i16 %i.te, 0
  br i1 %.not351.2, label %bb.ia, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.tf = getelementptr inbounds nuw i8, ptr %4, i64 200
  %i.tg = load i16, ptr %i.tf, align 8, !tbaa !13 ; 2 uses
  %i.th = and i16 %i.tg, 1
  %.not351.3 = icmp eq i16 %i.th, 0
  br i1 %.not351.3, label %bb.ia, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.ti = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.tj = load i16, ptr %i.ti, align 8, !tbaa !13 ; 2 uses
  %i.tk = and i16 %i.tj, 1
  %.not351.4 = icmp eq i16 %i.tk, 0
  br i1 %.not351.4, label %bb.ia, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.tl = getelementptr inbounds nuw i8, ptr %4, i64 328
  %i.tm = load i16, ptr %i.tl, align 8, !tbaa !13 ; 2 uses
  %i.tn = and i16 %i.tm, 1
  %.not351.5 = icmp eq i16 %i.tn, 0
  br i1 %.not351.5, label %bb.ia, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.to = getelementptr inbounds nuw i8, ptr %4, i64 392
  %i.tp = load i16, ptr %i.to, align 8, !tbaa !13 ; 2 uses
  %i.tq = and i16 %i.tp, 1
  %.not351.6 = icmp eq i16 %i.tq, 0
  br i1 %.not351.6, label %bb.ia, label %.preheader.7

.preheader.7:                                     ; preds = %.preheader.6
  %i.tr = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.ts = load i16, ptr %i.tr, align 8, !tbaa !13 ; 2 uses
  %i.tt = and i16 %i.ts, 1
  %.not351.7 = icmp eq i16 %i.tt, 0
  br i1 %.not351.7, label %bb.ia, label %53

53:                                               ; preds = %.preheader.7
  %.phi.trans.insert692 = getelementptr inbounds i8, ptr %4, i64 -56
  %.pre693 = load i16, ptr %.phi.trans.insert692, align 8, !tbaa !13
  br label %bb.ia

bb.ia:                                            ; preds = %53, %.preheader.7, %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %54 = phi i16 [ %.pre693, %53 ], [ %i.sx, %.preheader.preheader ], [ %i.ta, %.preheader.1 ], [ %i.ts, %.preheader.7 ], [ %i.td, %.preheader.2 ], [ %i.tm, %.preheader.5 ], [ %i.tg, %.preheader.3 ], [ %i.tp, %.preheader.6 ], [ %i.tj, %.preheader.4 ] ; 2 uses
  %.0196 = phi i64 [ -1, %53 ], [ 0, %.preheader.preheader ], [ 1, %.preheader.1 ], [ 7, %.preheader.7 ], [ 2, %.preheader.2 ], [ 5, %.preheader.5 ], [ 3, %.preheader.3 ], [ 6, %.preheader.6 ], [ 4, %.preheader.4 ]
  %55 = getelementptr inbounds [64 x i8], ptr %4, i64 %.0196 ; 4 uses
  %i.tu = icmp slt i16 %54, 0
  %i.tv = ashr i16 %54, 5
  %i.tw = sext i16 %i.tv to i32
  %i.tx = getelementptr inbounds nuw i8, ptr %55, i64 12
  %i.ty = load i32, ptr %i.tx, align 4
  %i.tz = select i1 %i.tu, i32 %i.ty, i32 %i.tw
  %i.ua = icmp eq i32 %i.tz, 0
  br i1 %i.ua, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %bb.ia
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.uc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef nonnull align 8 dereferenceable(64) %i.ub)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ic:                                            ; preds = %bb.ia
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %51, align 8, !tbaa !12
  %i.ud = getelementptr inbounds nuw i8, ptr %51, i64 8
  store i16 2, ptr %i.ud, align 8, !tbaa !13
  %i.ue = getelementptr inbounds nuw i8, ptr %4, i64 704
  %i.uf = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %18, ptr noundef nonnull align 8 dereferenceable(64) %i.ue, ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef nonnull align 8 dereferenceable(64) %51, ptr noundef nonnull align 4 dereferenceable(4) %5)
          to label %bb.id unwind label %bb.if     ; 0 uses

bb.id:                                            ; preds = %bb.ic
  %i.ug = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %55, ptr noundef nonnull align 8 dereferenceable(64) %51)
          to label %bb.ie unwind label %bb.if     ; 0 uses

bb.ie:                                            ; preds = %bb.id
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.ig

bb.if:                                            ; preds = %bb.id, %bb.ic
  %i.uh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %51) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %.loopexit.split-lp

bb.ig:                                            ; preds = %bb.ie, %bb.ib, %._crit_edge
  %.not356 = icmp eq i16 %.0258.lcssa, 0          ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %52, i64 8
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %bb.it
  %indvars.iv687 = phi i64 [ 0, %bb.ig ], [ %indvars.iv.next688, %bb.it ] ; 5 uses
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv687
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !13
  switch i32 %i.uk, label %bb.it [
    i32 2, label %bb.ii
    i32 4, label %bb.ip
  ]

bb.ii:                                            ; preds = %bb.ih
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #21
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %52, align 8, !tbaa !12
  store i16 2, ptr %i.ui, align 8, !tbaa !13
  %i.ul = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit unwind label %bb.il ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit: ; preds = %bb.ii
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br i1 %.not356, label %bb.im, label %bb.ij

bb.ij:                                            ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %.0258.lcssa, ptr %i.b, align 2, !tbaa !62
  %i.um = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit unwind label %bb.ik ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit:         ; preds = %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.im

bb.ik:                                            ; preds = %bb.im, %bb.ij, %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  %i.un = landingpad { ptr, i32 }
          cleanup
  br label %bb.io

bb.il:                                            ; preds = %bb.ii
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %bb.io

bb.im:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit
  %i.up = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv687 ; 4 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  %i.ur = load i16, ptr %i.uq, align 8, !tbaa !13 ; 2 uses
  %i.us = icmp slt i16 %i.ur, 0
  %i.ut = ashr i16 %i.ur, 5
  %i.uu = sext i16 %i.ut to i32
  %i.uv = getelementptr inbounds nuw i8, ptr %i.up, i64 12
  %i.uw = load i32, ptr %i.uv, align 4
  %i.ux = select i1 %i.us, i32 %i.uw, i32 %i.uu
  %i.uy = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %52, ptr noundef nonnull align 8 dereferenceable(64) %i.up, i32 noundef 0, i32 noundef %i.ux)
          to label %_ZN6icu_7813UnicodeString6appendERKS0_.exit unwind label %bb.ik ; 0 uses

_ZN6icu_7813UnicodeString6appendERKS0_.exit:      ; preds = %bb.im
  %i.uz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.up, ptr noundef nonnull align 8 dereferenceable(64) %52)
          to label %bb.in unwind label %bb.ik     ; 0 uses

bb.in:                                            ; preds = %_ZN6icu_7813UnicodeString6appendERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %bb.it

bb.io:                                            ; preds = %bb.il, %bb.ik
  %.pn358 = phi { ptr, i32 } [ %i.un, %bb.ik ], [ %i.uo, %bb.il ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %52) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #21
  br label %.loopexit.split-lp

bb.ip:                                            ; preds = %bb.ih
  br i1 %.not356, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  %i.va = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0258.lcssa, ptr %i.a, align 2, !tbaa !62
  %i.vb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.va, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit442 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit442:      ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ir

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.iq, %bb.ib
  %lpad.loopexit.split-lp772 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.ir:                                            ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit442, %bb.ip
  %i.vc = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %indvars.iv687
  %i.vd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.vc, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 3)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444 unwind label %bb.is ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444: ; preds = %bb.ir
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %bb.it

bb.is:                                            ; preds = %bb.ir
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.3) #21, !srcloc !36
  br label %.loopexit.split-lp

bb.it:                                            ; preds = %bb.ih, %bb.in, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit444
  %indvars.iv.next688 = add nuw nsw i64 %indvars.iv687, 1 ; 2 uses
  %exitcond690.not = icmp eq i64 %indvars.iv.next688, 8
  br i1 %exitcond690.not, label %.thread482, label %bb.ih, !llvm.loop !206

.thread482:                                       ; preds = %bb.hu, %bb.it, %.thread477
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.iu

bb.iu:                                            ; preds = %bb.u, %.thread482
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.iv

bb.iv:                                            ; preds = %bb.k, %bb.m, %bb.iu
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.iw

bb.iw:                                            ; preds = %bb.f, %bb.e, %bb.a, %bb.iv, %bb.c
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.io, %bb.is, %bb.if, %bb.hz, %bb.av
  %.pn358.pn.pn.pn = phi { ptr, i32 } [ %i.uh, %bb.if ], [ %.pn, %bb.av ], [ %.pn337.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hz ], [ %i.ve, %bb.is ], [ %.pn358, %bb.io ], [ %lpad.loopexit.split-lp772, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %21) #21
  br label %bb.ix

bb.ix:                                            ; preds = %.loopexit.split-lp, %bb.as
  %.pn358.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn, %.loopexit.split-lp ], [ %i.bu, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %20) #21
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.ar
  %.pn358.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn.pn, %bb.ix ], [ %i.bt, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #21
  call fastcc void @_ZN12_GLOBAL__N_117DerivedComponentsD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %19) #21
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.aq
  %.pn358.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn358.pn.pn.pn.pn.pn, %bb.iy ], [ %i.bs, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.x
  %.pn366 = phi { ptr, i32 } [ %i.ah, %bb.x ], [ %.pn358.pn.pn.pn.pn.pn.pn, %bb.iz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %18) #21
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.w
  %.pn366.pn = phi { ptr, i32 } [ %.pn366, %bb.ja ], [ %i.ag, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #21
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jb, %bb.v
  %.pn366.pn.pn = phi { ptr, i32 } [ %.pn366.pn, %bb.jb ], [ %i.af, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.q, %bb.n
  %.pn372 = phi { ptr, i32 } [ %i.x, %bb.n ], [ %.pn370, %bb.q ], [ %.pn366.pn.pn, %bb.jc ]
  call void @_ZN6icu_7811MeasureUnitD1Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  resume { ptr, i32 } %.pn372
}

declare void @_ZN6icu_786LocaleC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

end_hunk_0
