Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker_universal?download=true
inline.NumInlined: 1516
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder14PickCompactionEv:bb.a
  %i.apv = fmul double %i.apt, %i.apu             ; 2 uses
  %i.apw = add nuw nsw i32 %.02734.i.i, 1         ; 2 uses
  %i.apx = fcmp olt double %i.apv, %i.app
  br i1 %i.apx, label %bb.fj, label %.loopexit.i.i51, !llvm.loop !391

.loopexit.i.i51:                                  ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff
  %.128.i.i = phi i32 [ %i.apf, %bb.fg ], [ %i.t, %bb.ff ], [ %i.t, %bb.fh ], [ 1, %bb.fi ], [ %i.apw, %bb.fj ] ; 4 uses
  %.not.i.i52 = icmp eq ptr %.val13.i, %.val.i50
  br i1 %.not.i.i52, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i, label %.lr.ph39.i.i.preheader

.lr.ph39.i.i.preheader:                           ; preds = %.loopexit.i.i51
  %i.apy = add nsw i64 %.pre-phi345, -1
  %xtraiter = and i64 %.pre-phi345, 3             ; 3 uses
  %i.apz = icmp ult i64 %i.apy, 3
  br i1 %i.apz, label %.lr.ph39.i.i.epil.preheader, label %.lr.ph39.i.i.preheader.new

.lr.ph39.i.i.preheader.new:                       ; preds = %.lr.ph39.i.i.preheader
  %unroll_iter = and i64 %.pre-phi345, -4
  br label %.lr.ph39.i.i

.lr.ph39.i.i:                                     ; preds = %bb.fo, %.lr.ph39.i.i.preheader.new
  %.038.i.i = phi i64 [ 0, %.lr.ph39.i.i.preheader.new ], [ %i.arg, %bb.fo ] ; 5 uses
  %.02437.i.i = phi i32 [ 0, %.lr.ph39.i.i.preheader.new ], [ %.1.i.i.3, %bb.fo ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph39.i.i.preheader.new ], [ %niter.next.3, %bb.fo ]
  %i.aqa = getelementptr inbounds nuw [40 x i8], ptr %.val.i50, i64 %.038.i.i ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 32
  %i.aqc = load i8, ptr %i.aqb, align 8, !tbaa !222, !range !134, !noundef !55
  %i.aqd = icmp eq i8 %i.aqc, 0
  br i1 %i.aqd, label %bb.fk, label %.lr.ph39.i.i.1

bb.fk:                                            ; preds = %.lr.ph39.i.i
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 33
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !223, !range !134, !noundef !55
  %i.aqg = xor i8 %i.aqf, 1
  %i.aqh = zext nneg i8 %i.aqg to i32
  %spec.select.i.i = add nsw i32 %.02437.i.i, %i.aqh
  br label %.lr.ph39.i.i.1

.lr.ph39.i.i.1:                                   ; preds = %bb.fk, %.lr.ph39.i.i
  %.1.i.i = phi i32 [ %spec.select.i.i, %bb.fk ], [ %.02437.i.i, %.lr.ph39.i.i ] ; 2 uses
  %i.aqi = getelementptr inbounds nuw [40 x i8], ptr %.val.i50, i64 %.038.i.i ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 72
  %i.aqk = load i8, ptr %i.aqj, align 8, !tbaa !222, !range !134, !noundef !55
  %i.aql = icmp eq i8 %i.aqk, 0
  br i1 %i.aql, label %bb.fl, label %.lr.ph39.i.i.2

bb.fl:                                            ; preds = %.lr.ph39.i.i.1
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqi, i64 73
  %i.aqn = load i8, ptr %i.aqm, align 1, !tbaa !223, !range !134, !noundef !55
  %i.aqo = xor i8 %i.aqn, 1
  %i.aqp = zext nneg i8 %i.aqo to i32
  %spec.select.i.i.1 = add nsw i32 %.1.i.i, %i.aqp
  br label %.lr.ph39.i.i.2

.lr.ph39.i.i.2:                                   ; preds = %bb.fl, %.lr.ph39.i.i.1
  %.1.i.i.1 = phi i32 [ %spec.select.i.i.1, %bb.fl ], [ %.1.i.i, %.lr.ph39.i.i.1 ] ; 2 uses
  %i.aqq = getelementptr inbounds nuw [40 x i8], ptr %.val.i50, i64 %.038.i.i ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 112
  %i.aqs = load i8, ptr %i.aqr, align 8, !tbaa !222, !range !134, !noundef !55
  %i.aqt = icmp eq i8 %i.aqs, 0
  br i1 %i.aqt, label %bb.fm, label %.lr.ph39.i.i.3

bb.fm:                                            ; preds = %.lr.ph39.i.i.2
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 113
  %i.aqv = load i8, ptr %i.aqu, align 1, !tbaa !223, !range !134, !noundef !55
  %i.aqw = xor i8 %i.aqv, 1
  %i.aqx = zext nneg i8 %i.aqw to i32
  %spec.select.i.i.2 = add nsw i32 %.1.i.i.1, %i.aqx
  br label %.lr.ph39.i.i.3

.lr.ph39.i.i.3:                                   ; preds = %bb.fm, %.lr.ph39.i.i.2
  %.1.i.i.2 = phi i32 [ %spec.select.i.i.2, %bb.fm ], [ %.1.i.i.1, %.lr.ph39.i.i.2 ] ; 2 uses
  %i.aqy = getelementptr inbounds nuw [40 x i8], ptr %.val.i50, i64 %.038.i.i ; 2 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 152
  %i.ara = load i8, ptr %i.aqz, align 8, !tbaa !222, !range !134, !noundef !55
  %i.arb = icmp eq i8 %i.ara, 0
  br i1 %i.arb, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.lr.ph39.i.i.3
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqy, i64 153
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !223, !range !134, !noundef !55
  %i.are = xor i8 %i.ard, 1
  %i.arf = zext nneg i8 %i.are to i32
  %spec.select.i.i.3 = add nsw i32 %.1.i.i.2, %i.arf
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %.lr.ph39.i.i.3
  %.1.i.i.3 = phi i32 [ %spec.select.i.i.3, %bb.fn ], [ %.1.i.i.2, %.lr.ph39.i.i.3 ] ; 3 uses
  %i.arg = add nuw i64 %.038.i.i, 4               ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa, label %.lr.ph39.i.i, !llvm.loop !392

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa: ; preds = %bb.fo
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i, label %.lr.ph39.i.i.epil.preheader

.lr.ph39.i.i.epil.preheader:                      ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa, %.lr.ph39.i.i.preheader
  %.038.i.i.epil.init = phi i64 [ 0, %.lr.ph39.i.i.preheader ], [ %i.arg, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa ]
  %.02437.i.i.epil.init = phi i32 [ 0, %.lr.ph39.i.i.preheader ], [ %.1.i.i.3, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod908 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod908)
  br label %.lr.ph39.i.i.epil

.lr.ph39.i.i.epil:                                ; preds = %bb.fq, %.lr.ph39.i.i.epil.preheader
  %.038.i.i.epil = phi i64 [ %i.arp, %bb.fq ], [ %.038.i.i.epil.init, %.lr.ph39.i.i.epil.preheader ] ; 2 uses
  %.02437.i.i.epil = phi i32 [ %.1.i.i.epil, %bb.fq ], [ %.02437.i.i.epil.init, %.lr.ph39.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.fq ], [ 0, %.lr.ph39.i.i.epil.preheader ]
  %i.arh = getelementptr inbounds nuw [40 x i8], ptr %.val.i50, i64 %.038.i.i.epil ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 32
  %i.arj = load i8, ptr %i.ari, align 8, !tbaa !222, !range !134, !noundef !55
  %i.ark = icmp eq i8 %i.arj, 0
  br i1 %i.ark, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.lr.ph39.i.i.epil
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arh, i64 33
  %i.arm = load i8, ptr %i.arl, align 1, !tbaa !223, !range !134, !noundef !55
  %i.arn = xor i8 %i.arm, 1
  %i.aro = zext nneg i8 %i.arn to i32
  %spec.select.i.i.epil = add nsw i32 %.02437.i.i.epil, %i.aro
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %.lr.ph39.i.i.epil
  %.1.i.i.epil = phi i32 [ %spec.select.i.i.epil, %bb.fp ], [ %.02437.i.i.epil, %.lr.ph39.i.i.epil ] ; 2 uses
  %i.arp = add nuw i64 %.038.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i, label %.lr.ph39.i.i.epil, !llvm.loop !393

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i: ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa, %bb.fq, %.loopexit.i.i51
  %.024.lcssa.i.i = phi i32 [ 0, %.loopexit.i.i51 ], [ %.1.i.i.3, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i.loopexit.unr-lcssa ], [ %.1.i.i.epil, %bb.fq ] ; 3 uses
  %i.arq = icmp sle i32 %.024.lcssa.i.i, %.128.i.i
  %reass.sub.i.i = sub i32 %.024.lcssa.i.i, %.128.i.i
  %i.arr = add i32 %reass.sub.i.i, 1              ; 3 uses
  %i.ars = icmp eq i32 %i.arr, 0
  %i.art = select i1 %i.arq, i1 true, i1 %i.ars
  br i1 %i.art, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i
  %i.aru = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.arv = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !18
  %i.arx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !423
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.aru, ptr noundef nonnull @.str.75, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.arw, i32 noundef %.024.lcssa.i.i, i32 noundef %.128.i.i, i64 noundef %i.ary)
  br label %bb.fu

bb.fs:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder40GetMaxNumFilesToCompactBasedOnMaxReadAmpEijPiS2_.exit.i
  %i.arz = call fastcc noundef ptr @_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32PickCompactionToReduceSortedRunsEjj(ptr noundef nonnull readonly align 8 dereferenceable(192) %0, i32 noundef -1, i32 noundef %i.arr) ; 2 uses
  %.not12.i = icmp eq ptr %i.arz, null
  br i1 %.not12.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.asa = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.asb = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !18
  %i.asd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ase = load i64, ptr %i.asd, align 8, !tbaa !423
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.asa, ptr noundef nonnull @.str.76, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.asc, i32 noundef %i.arr, i32 noundef %.128.i.i, i64 noundef %i.ase)
  br label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32MaybePickReadTriggeredCompactionEPNS_10CompactionE.exit

bb.fu:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder51MaybePickCompactionToReduceSortedRunsBasedFileRatioEPNS_10CompactionEij.exit, %bb.fr, %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.asf = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.asf, i8 0, i64 48, i1 false)
  %i.asg = load ptr, ptr %i.g, align 8, !tbaa !81 ; 2 uses
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 16
  %i.asi = load i32, ptr %i.ash, align 16, !tbaa !445
  %i.asj = icmp eq i32 %i.asi, 1
  br i1 %i.asj, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE5clearEv.exit.i.i, label %bb.gr

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE5clearEv.exit.i.i: ; preds = %bb.fu
  store i32 0, ptr %14, align 8, !tbaa !318
  %i.ask = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %.val4591.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 2 uses
  %.val4692.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.asl = ptrtoint ptr %.val4692.i.i to i64
  %i.asm = ptrtoint ptr %.val4591.i.i to i64
  %i.asn = sub i64 %i.asl, %i.asm
  %i.aso = sdiv exact i64 %i.asn, 40
  %i.asp = icmp ugt i64 %i.aso, 1
  br i1 %i.asp, label %.lr.ph.i.i59, label %.critedge43.i.i

.lr.ph.i.i59:                                     ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE5clearEv.exit.i.i
  %i.asq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.asr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ass = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ast = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.asu = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  br label %bb.fw

bb.fv:                                            ; preds = %.loopexit.i.i57
  %i.asv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.fw:                                            ; preds = %bb.gi, %.lr.ph.i.i59
  %.val46110.i.i = phi ptr [ %.val4692.i.i, %.lr.ph.i.i59 ], [ %.val46.i.i60, %bb.gi ] ; 2 uses
  %.val45108.i.i = phi ptr [ %.val4591.i.i, %.lr.ph.i.i59 ], [ %.val45.i.i61, %bb.gi ] ; 3 uses
  %i.asw = phi i64 [ 1, %.lr.ph.i.i59 ], [ %i.avs, %bb.gi ] ; 2 uses
  %.02493.i.i = phi i64 [ 0, %.lr.ph.i.i59 ], [ %i.asw, %bb.gi ] ; 4 uses
  %i.asx = getelementptr inbounds nuw [40 x i8], ptr %.val45108.i.i, i64 %.02493.i.i
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 32
  %i.asz = load i8, ptr %i.asy, align 8, !tbaa !222, !range !134, !noundef !55
  %i.ata = trunc nuw i8 %i.asz to i1
  br i1 %i.ata, label %bb.gi, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.atb = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 2712
  %i.atd = load ptr, ptr %i.atc, align 8, !tbaa !296
  %i.ate = load ptr, ptr %i.atd, align 8, !tbaa !300
  %i.atf = getelementptr inbounds nuw [8 x i8], ptr %i.ate, i64 %.02493.i.i
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !301 ; 7 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 190
  %i.ati = load i8, ptr %i.ath, align 2, !tbaa !335, !range !134, !noundef !55
  %i.atj = trunc nuw i8 %i.ati to i1
  br i1 %i.atj, label %bb.fy, label %bb.gi

bb.fy:                                            ; preds = %bb.fx
  %i.atk = load i8, ptr %i.asr, align 8, !tbaa !84, !range !134, !noundef !55
  %i.atl = trunc nuw i8 %i.atk to i1
  br i1 %i.atl, label %bb.fz, label %.thread.i.i.i62

bb.fz:                                            ; preds = %bb.fy
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atg, i64 168
  %i.atn = load i64, ptr %i.atm, align 8, !tbaa !336
  %i.ato = icmp eq i64 %i.atn, 1
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atg, i64 136
  %i.atq = load i64, ptr %i.atp, align 8
  %i.atr = icmp eq i64 %i.atq, 1
  %i.ats = select i1 %i.ato, i1 %i.atr, i1 false
  br i1 %i.ats, label %_ZNKRSt8optionalImE5valueEv.exit.i.i.i, label %.thread.i.i.i62

_ZNKRSt8optionalImE5valueEv.exit.i.i.i:           ; preds = %bb.fz
  %i.att = getelementptr inbounds nuw i8, ptr %i.atg, i64 40
  %i.atu = load i64, ptr %i.att, align 8, !tbaa !337
  %i.atv = load i64, ptr %i.asq, align 8, !tbaa !178
  %i.atw = load ptr, ptr %i.ass, align 8, !tbaa !179
  %i.atx = invoke noundef zeroext i1 @_ZN7rocksdb26DataIsDefinitelyInSnapshotEmmPKNS_15SnapshotCheckerE(i64 noundef %i.atu, i64 noundef %i.atv, ptr noundef %i.atw)
          to label %.noexc.i.i unwind label %.loopexit77.i.i

.noexc.i.i:                                       ; preds = %_ZNKRSt8optionalImE5valueEv.exit.i.i.i
  br i1 %i.atx, label %bb.ga, label %.noexc._crit_edge.i.i

.noexc._crit_edge.i.i:                            ; preds = %.noexc.i.i
  %.val45.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214
  %.val46.pre.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217
  br label %bb.gi

bb.ga:                                            ; preds = %.noexc.i.i
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atg, i64 16
  %i.atz = load i64, ptr %i.aty, align 8, !tbaa !235
  %i.aua = and i64 %i.atz, 4611686018427387903    ; 2 uses
  %i.aub = load ptr, ptr %i.ast, align 8, !tbaa !85 ; 2 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.aub, null
  br i1 %.not10.i.i.i.i.i.i, label %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i67

.lr.ph.i.i.i.i.i.i67:                             ; preds = %bb.ga, %.lr.ph.i.i.i.i.i.i67
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i67 ], [ %i.aub, %bb.ga ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i67 ], [ %i.asu, %bb.ga ]
  %i.auc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.aud = load i64, ptr %i.auc, align 8, !tbaa !178
  %i.aue = icmp ult i64 %i.aud, %i.aua            ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.aue, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.aue, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !338 ; 2 uses
  %.not.i.i.i.i.i.i68 = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i68, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i67, !llvm.loop !1

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i67
  %i.auf = icmp eq ptr %.19.i.i.i.i.i.i, %i.asu
  br i1 %i.auf, label %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i, label %bb.gb

bb.gb:                                            ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.aug = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !178
  %i.aui = icmp ult i64 %i.aua, %i.auh
  %spec.select.i.i.i.i.i = select i1 %i.aui, ptr %i.asu, ptr %.19.i.i.i.i.i.i
  br label %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i

_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i: ; preds = %bb.gb, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.ga
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.asu, %bb.ga ], [ %i.asu, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %bb.gb ]
  %i.auj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 40
  %i.auk = load i64, ptr %i.auj, align 8, !tbaa !340 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 3 uses
  %.val10.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.aul = ptrtoint ptr %.val10.i.i.i to i64
  %i.aum = ptrtoint ptr %.val.i.i.i to i64
  %i.aun = sub i64 %i.aul, %i.aum
  %i.auo = sdiv exact i64 %i.aun, 40
  %i.aup = add nsw i64 %i.auo, -1
  %i.auq = icmp ult i64 %i.auk, %i.aup
  br i1 %i.auq, label %bb.gc, label %.thread.i.i.i62

bb.gc:                                            ; preds = %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i
  %i.aur = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i, i64 %i.auk
  %i.aus = getelementptr inbounds nuw i8, ptr %i.aur, i64 73
  %i.aut = load i8, ptr %i.aus, align 1, !tbaa !223, !range !134, !noundef !55
  %i.auu = trunc nuw i8 %i.aut to i1
  br i1 %i.auu, label %bb.gi, label %.thread.i.i.i62

.thread.i.i.i62:                                  ; preds = %bb.gc, %_ZNKSt3mapImmSt4lessImESaISt4pairIKmmEEE4findERS3_.exit.i.i.i, %bb.fz, %bb.fy
  %i.auv = load ptr, ptr %i.ask, align 8, !tbaa !299 ; 4 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 5 uses
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !320 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.auv, %i.aux
  br i1 %.not.i.i.i63, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.thread.i.i.i62
  store ptr %i.atg, ptr %i.auv, align 8, !tbaa !301
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 8 ; 2 uses
  store ptr %i.auy, ptr %i.ask, align 8, !tbaa !299
  br label %bb.gj

bb.ge:                                            ; preds = %.thread.i.i.i62
  %i.auz = load ptr, ptr %i.asf, align 8, !tbaa !300 ; 4 uses
  %i.ava = ptrtoint ptr %i.auv to i64
  %i.avb = ptrtoint ptr %i.auz to i64             ; 2 uses
  %i.avc = sub i64 %i.ava, %i.avb                 ; 5 uses
  %i.avd = icmp eq i64 %i.avc, 9223372036854775800
  br i1 %i.avd, label %bb.gf, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc50.i.i unwind label %.loopexit.split-lp78.i.i

.noexc50.i.i:                                     ; preds = %bb.gf
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ge
  %i.ave = ashr exact i64 %i.avc, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ave, i64 1)
  %i.avf = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ave ; 2 uses
  %i.avg = icmp ult i64 %i.avf, %i.ave
  %i.avh = call i64 @llvm.umin.i64(i64 %i.avf, i64 1152921504606846975)
  %i.avi = select i1 %i.avg, i64 1152921504606846975, i64 %i.avh ; 3 uses
  %.not.i.i.i.i.i66 = icmp ne i64 %i.avi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i66)
  %i.avj = shl nuw nsw i64 %i.avi, 3
  %i.avk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.avj) #32
          to label %.noexc51.i.i unwind label %.loopexit.split-lp78.i.i ; 4 uses

.noexc51.i.i:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.avl = getelementptr inbounds i8, ptr %i.avk, i64 %i.avc ; 2 uses
  store ptr %i.atg, ptr %i.avl, align 8, !tbaa !301
  %i.avm = icmp sgt i64 %i.avc, 0
  br i1 %i.avm, label %bb.gg, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

bb.gg:                                            ; preds = %.noexc51.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.avk, ptr align 8 %i.auz, i64 %i.avc, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i: ; preds = %bb.gg, %.noexc51.i.i
  %i.avn = getelementptr inbounds nuw i8, ptr %i.avl, i64 8 ; 2 uses
  %.not.i17.i.i.i.i = icmp eq ptr %i.auz, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  %i.avo = load ptr, ptr %i.auw, align 8, !tbaa !320
  %i.avp = ptrtoint ptr %i.avo to i64
  %i.avq = sub i64 %i.avp, %i.avb
  call void @_ZdlPvm(ptr noundef nonnull %i.auz, i64 noundef %i.avq) #28
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i: ; preds = %bb.gh, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i
  store ptr %i.avk, ptr %i.asf, align 8, !tbaa !300
  store ptr %i.avn, ptr %i.ask, align 8, !tbaa !299
  %i.avr = getelementptr inbounds nuw [8 x i8], ptr %i.avk, i64 %i.avi ; 2 uses
  store ptr %i.avr, ptr %i.auw, align 8, !tbaa !320
  br label %bb.gj

.loopexit77.i.i:                                  ; preds = %_ZNKRSt8optionalImE5valueEv.exit.i.i.i
  %lpad.loopexit79.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

.loopexit.split-lp78.i.i:                         ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i, %bb.gf
  %lpad.loopexit.split-lp80.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gi:                                            ; preds = %bb.gc, %.noexc._crit_edge.i.i, %bb.fx, %bb.fw
  %.val46.i.i60 = phi ptr [ %.val46.pre.i.i, %.noexc._crit_edge.i.i ], [ %.val46110.i.i, %bb.fw ], [ %.val46110.i.i, %bb.fx ], [ %.val10.i.i.i, %bb.gc ] ; 2 uses
  %.val45.i.i61 = phi ptr [ %.val45.pre.i.i, %.noexc._crit_edge.i.i ], [ %.val45108.i.i, %bb.fw ], [ %.val45108.i.i, %bb.fx ], [ %.val.i.i.i, %bb.gc ] ; 2 uses
  %i.avs = add nuw i64 %i.asw, 1                  ; 2 uses
  %i.avt = ptrtoint ptr %.val46.i.i60 to i64
  %i.avu = ptrtoint ptr %.val45.i.i61 to i64
  %i.avv = sub i64 %i.avt, %i.avu
  %i.avw = sdiv exact i64 %i.avv, 40
  %i.avx = icmp ult i64 %i.avs, %i.avw
  br i1 %i.avx, label %bb.fw, label %.critedge43.i.i, !llvm.loop !394

bb.gj:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i, %bb.gd
  %i.avy = phi ptr [ %i.avr, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.aux, %bb.gd ]
  %i.avz = phi ptr [ %i.avn, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i ], [ %i.auy, %bb.gd ]
  %i.awa = and i64 %.02493.i.i, 2147483648
  %i.awb = icmp eq i64 %i.awa, 0
  br i1 %i.awb, label %bb.gk, label %.critedge43.i.i

bb.gk:                                            ; preds = %bb.gj
  %39 = add nuw nsw i64 %.02493.i.i, 1
  %i.awc = and i64 %39, 4294967295                ; 2 uses
  %.val95.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 2 uses
  %.val4496.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.awd = ptrtoint ptr %.val4496.i.i to i64
  %i.awe = ptrtoint ptr %.val95.i.i to i64
  %i.awf = sub i64 %i.awd, %i.awe
  %i.awg = sdiv exact i64 %i.awf, 40
  %i.awh = icmp ult i64 %i.awc, %i.awg
  br i1 %i.awh, label %.lr.ph99.i.i, label %.loopexit.i.i57

.lr.ph99.i.i:                                     ; preds = %bb.gk, %.critedge.i.i65
  %.val44106.i.i = phi ptr [ %.val44.i.i, %.critedge.i.i65 ], [ %.val4496.i.i, %bb.gk ]
  %.val104.i.i = phi ptr [ %.val.i.i, %.critedge.i.i65 ], [ %.val95.i.i, %bb.gk ] ; 2 uses
  %i.awi = phi ptr [ %i.axr, %.critedge.i.i65 ], [ %i.avy, %bb.gk ] ; 3 uses
  %i.awj = phi ptr [ %i.axs, %.critedge.i.i65 ], [ %i.avz, %bb.gk ] ; 3 uses
  %.097.i.i = phi i64 [ %i.axt, %.critedge.i.i65 ], [ %i.awc, %bb.gk ] ; 3 uses
  %i.awk = getelementptr inbounds nuw [40 x i8], ptr %.val104.i.i, i64 %.097.i.i ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 32
  %i.awm = load i8, ptr %i.awl, align 8, !tbaa !222, !range !134, !noundef !55
  %i.awn = trunc nuw i8 %i.awm to i1
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awk, i64 33
  %i.awp = load i8, ptr %i.awo, align 1, !range !134
  %i.awq = trunc nuw i8 %i.awp to i1
  %or.cond.i.i64 = select i1 %i.awn, i1 true, i1 %i.awq
  br i1 %or.cond.i.i64, label %.loopexit.i.i57, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph99.i.i
  %i.awr = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awr, i64 2712
  %i.awt = load ptr, ptr %i.aws, align 8, !tbaa !296
  %i.awu = load ptr, ptr %i.awt, align 8, !tbaa !300
  %i.awv = getelementptr inbounds nuw [8 x i8], ptr %i.awu, i64 %.097.i.i
  %i.aww = load ptr, ptr %i.awv, align 8, !tbaa !301 ; 2 uses
  %.not.i52.i.i = icmp eq ptr %i.awj, %i.awi
  br i1 %.not.i52.i.i, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store ptr %i.aww, ptr %i.awj, align 8, !tbaa !301
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awj, i64 8 ; 2 uses
  store ptr %i.awx, ptr %i.ask, align 8, !tbaa !299
  br label %.critedge.i.i65

bb.gn:                                            ; preds = %bb.gl
  %i.awy = load ptr, ptr %i.asf, align 8, !tbaa !300 ; 4 uses
  %i.awz = ptrtoint ptr %i.awi to i64
  %i.axa = ptrtoint ptr %i.awy to i64             ; 2 uses
  %i.axb = sub i64 %i.awz, %i.axa                 ; 5 uses
  %i.axc = icmp eq i64 %i.axb, 9223372036854775800
  br i1 %i.axc, label %bb.go, label %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i53.i.i

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.45) #31
          to label %.noexc59.i.i unwind label %.loopexit.split-lp.i.i

.noexc59.i.i:                                     ; preds = %bb.go
  unreachable

_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i53.i.i: ; preds = %bb.gn
  %i.axd = ashr exact i64 %i.axb, 3               ; 3 uses
  %.sroa.speculated.i.i.i54.i.i = call i64 @llvm.umax.i64(i64 %i.axd, i64 1)
  %i.axe = add nsw i64 %.sroa.speculated.i.i.i54.i.i, %i.axd ; 2 uses
  %i.axf = icmp ult i64 %i.axe, %i.axd
  %i.axg = call i64 @llvm.umin.i64(i64 %i.axe, i64 1152921504606846975)
  %i.axh = select i1 %i.axf, i64 1152921504606846975, i64 %i.axg ; 3 uses
  %.not.i.i.i55.i.i = icmp ne i64 %i.axh, 0
  call void @llvm.assume(i1 %.not.i.i.i55.i.i)
  %i.axi = shl nuw nsw i64 %i.axh, 3
  %i.axj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.axi) #32
          to label %.noexc60.i.i unwind label %.loopexit76.i.i ; 4 uses

.noexc60.i.i:                                     ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i53.i.i
  %i.axk = getelementptr inbounds i8, ptr %i.axj, i64 %i.axb ; 2 uses
  store ptr %i.aww, ptr %i.axk, align 8, !tbaa !301
  %i.axl = icmp sgt i64 %i.axb, 0
  br i1 %i.axl, label %bb.gp, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i56.i.i

bb.gp:                                            ; preds = %.noexc60.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.axj, ptr align 8 %i.awy, i64 %i.axb, i1 false)
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i56.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i56.i.i: ; preds = %bb.gp, %.noexc60.i.i
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axk, i64 8 ; 2 uses
  %.not.i17.i.i57.i.i = icmp eq ptr %i.awy, null
  br i1 %.not.i17.i.i57.i.i, label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i56.i.i
  %i.axn = load ptr, ptr %i.auw, align 8, !tbaa !320
  %i.axo = ptrtoint ptr %i.axn to i64
  %i.axp = sub i64 %i.axo, %i.axa
  call void @_ZdlPvm(ptr noundef nonnull %i.awy, i64 noundef %i.axp) #28
  br label %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i

_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i: ; preds = %bb.gq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i56.i.i
  store ptr %i.axj, ptr %i.asf, align 8, !tbaa !300
  store ptr %i.axm, ptr %i.ask, align 8, !tbaa !299
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %i.axh ; 2 uses
  store ptr %i.axq, ptr %i.auw, align 8, !tbaa !320
  %.val.pre.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214
  %.val44.pre.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217
  br label %.critedge.i.i65

.critedge.i.i65:                                  ; preds = %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i, %bb.gm
  %.val44.i.i = phi ptr [ %.val44.pre.i.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i ], [ %.val44106.i.i, %bb.gm ] ; 2 uses
  %.val.i.i = phi ptr [ %.val.pre.i.i, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i ], [ %.val104.i.i, %bb.gm ] ; 2 uses
  %i.axr = phi ptr [ %i.axq, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i ], [ %i.awi, %bb.gm ]
  %i.axs = phi ptr [ %i.axm, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i58.i.i ], [ %i.awx, %bb.gm ]
  %i.axt = add nuw i64 %.097.i.i, 1               ; 2 uses
  %i.axu = ptrtoint ptr %.val44.i.i to i64
  %i.axv = ptrtoint ptr %.val.i.i to i64
  %i.axw = sub i64 %i.axu, %i.axv
  %i.axx = sdiv exact i64 %i.axw, 40
  %i.axy = icmp ult i64 %i.axt, %i.axx
  br i1 %i.axy, label %.lr.ph99.i.i, label %.loopexit.i.i57, !llvm.loop !395

.loopexit76.i.i:                                  ; preds = %_ZNKSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE12_M_check_lenEmPKc.exit.i.i53.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

.loopexit.split-lp.i.i:                           ; preds = %bb.go
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gr:                                            ; preds = %bb.fu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.axz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aya = load ptr, ptr %i.axz, align 8, !tbaa !82
  %i.ayb = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.ayc = ptrtoint ptr %0 to i64
  %i.ayd = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.aye = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ayf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 0, ptr %i.ayf, align 8
  store i64 %i.ayc, ptr %15, align 8, !tbaa !342
  store ptr @"_ZNSt17_Function_handlerIFbPKN7rocksdb12FileMetaDataEEZNS0_12_GLOBAL__N_126UniversalCompactionBuilder29PickDeleteTriggeredCompactionEvE3$_0E9_M_invokeERKSt9_Any_dataOS3_", ptr %i.aye, align 8, !tbaa !448
  store ptr @"_ZNSt17_Function_handlerIFbPKN7rocksdb12FileMetaDataEEZNS0_12_GLOBAL__N_126UniversalCompactionBuilder29PickDeleteTriggeredCompactionEvE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.ayd, align 8, !tbaa !449
  invoke void @_ZN7rocksdb16CompactionPicker28PickFilesMarkedForCompactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_18VersionStorageInfoEPiSB_PNS_20CompactionInputFilesESt8functionIFbPKNS_12FileMetaDataEEE(ptr noundef nonnull align 8 dereferenceable(128) %i.aya, ptr noundef nonnull align 8 dereferenceable(32) %i.ayb, ptr noundef nonnull %i.asg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %14, ptr noundef nonnull align 8 %15)
          to label %bb.gs unwind label %bb.gv

bb.gs:                                            ; preds = %bb.gr
  %i.ayg = load ptr, ptr %i.ayd, align 8, !tbaa !449 ; 2 uses
  %.not.i62.i.i = icmp eq ptr %i.ayg, null
  br i1 %.not.i62.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.ayh = invoke noundef zeroext i1 %i.ayg(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.gu ; 0 uses

bb.gu:                                            ; preds = %bb.gt
  %i.ayi = landingpad { ptr, i32 }
          catch ptr null
  %i.ayj = extractvalue { ptr, i32 } %i.ayi, 0
  call void @__clang_call_terminate(ptr %i.ayj) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.gt, %bb.gs
  %i.ayk = load ptr, ptr %i.asf, align 8, !tbaa !323
  %i.ayl = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aym = load ptr, ptr %i.ayl, align 8, !tbaa !323
  %i.ayn = icmp eq ptr %i.ayk, %i.aym
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br i1 %i.ayn, label %.critedge43.i.i, label %.loopexit.i.i57

bb.gv:                                            ; preds = %bb.gr
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  %i.ayp = load ptr, ptr %i.ayd, align 8, !tbaa !449 ; 2 uses
  %.not.i63.i.i = icmp eq ptr %i.ayp, null
  br i1 %.not.i63.i.i, label %_ZNSt14_Function_baseD2Ev.exit64.i.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.ayq = invoke noundef zeroext i1 %i.ayp(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit64.i.i unwind label %bb.gx ; 0 uses

bb.gx:                                            ; preds = %bb.gw
  %i.ayr = landingpad { ptr, i32 }
          catch ptr null
  %i.ays = extractvalue { ptr, i32 } %i.ayr, 0
  call void @__clang_call_terminate(ptr %i.ays) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit64.i.i:             ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  br label %bb.ha

.loopexit.i.i57:                                  ; preds = %.critedge.i.i65, %.lr.ph99.i.i, %_ZNSt14_Function_baseD2Ev.exit.i.i, %bb.gk
  %i.ayt = invoke fastcc noundef ptr @_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder26BuildCompactionToNextLevelERNS_20CompactionInputFilesENS_16CompactionReasonE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 10)
          to label %.critedge43.i.i unwind label %bb.fv

.critedge43.i.i:                                  ; preds = %bb.gi, %.loopexit.i.i57, %_ZNSt14_Function_baseD2Ev.exit.i.i, %bb.gj, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE5clearEv.exit.i.i
  %.235.i.i = phi ptr [ %i.ayt, %.loopexit.i.i57 ], [ null, %bb.gj ], [ null, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ null, %_ZNSt6vectorIPN7rocksdb12FileMetaDataESaIS2_EE5clearEv.exit.i.i ], [ null, %bb.gi ] ; 2 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ayv = load ptr, ptr %i.ayu, align 8, !tbaa !328 ; 3 uses
  %.not.i.i.i.i65.i.i = icmp eq ptr %i.ayv, null
  br i1 %.not.i.i.i.i65.i.i, label %_ZNSt6vectorIN7rocksdb28AtomicCompactionUnitBoundaryESaIS1_EED2Ev.exit.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %.critedge43.i.i
end_hunk_0
