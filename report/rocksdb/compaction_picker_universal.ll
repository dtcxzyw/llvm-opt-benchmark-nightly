Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker_universal?download=true
inline.NumInlined: 1516
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder14PickCompactionEv:bb.a
  %.not54.us.i.i = icmp eq i64 %i.ez, %i.ep
  br i1 %.not54.us.i.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit, label %.lr.ph.split.us.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.o
  %.sroa.5.056.i.i = phi i64 [ %i.fg, %bb.o ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.fa = icmp ult i64 %.sroa.5.056.i.i, 8
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.er, i64 %.sroa.5.056.i.i
  %i.fc = getelementptr [16 x i8], ptr %i.ek, i64 %.sroa.5.056.i.i
  %i.fd = getelementptr i8, ptr %i.fc, i64 -128
  %.0.i.i.i.i = select i1 %i.fa, ptr %i.fb, ptr %i.fd
  %i.fe = load i32, ptr %.0.i.i.i.i, align 8, !tbaa !427
  %i.ff = icmp eq i32 %i.eb, %i.fe
  br i1 %i.ff, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.fg = add nuw i64 %.sroa.5.056.i.i, 1         ; 2 uses
  %.not54.i.i = icmp eq i64 %i.fg, %i.ep
  br i1 %.not54.i.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit, label %.lr.ph.split.i.i

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i: ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %bb.l
  %i.fh = call fastcc noundef ptr @_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32PickCompactionWithSortedRunRangeEmmNS_16CompactionReasonE(ptr noundef nonnull readonly align 8 dereferenceable(192) %0, i64 noundef %.032.i.i.lcssa, i64 noundef %i.dy, i32 noundef 15) ; 2 uses
  %.not.i = icmp eq ptr %i.fh, null
  br i1 %.not.i, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit.thread, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit: ; preds = %bb.o, %bb.n, %bb.m, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i
  %.str.48.sink.i = phi ptr [ @.str.48, %bb.m ], [ @.str.48, %bb.n ], [ @.str.46, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i ], [ @.str.48, %bb.o ]
  %.0.ph.i = phi ptr [ null, %bb.m ], [ null, %bb.n ], [ %i.fh, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i ], [ null, %bb.o ] ; 2 uses
  %i.fi = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.fj = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.fi, ptr noundef nonnull %.str.48.sink.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.fk)
  %.not.i39 = icmp eq ptr %.0.ph.i, null
  br i1 %.not.i39, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit.thread, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder32MaybePickReadTriggeredCompactionEPNS_10CompactionE.exit

_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit.thread: ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder22PickPeriodicCompactionEv.exit.i, %.critedge.i.i, %bb.h, %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 3 uses
  %.val7.i = load ptr, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.fl = ptrtoint ptr %.val7.i to i64
  %i.fm = ptrtoint ptr %.val.i to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = sdiv exact i64 %i.fn, 40                ; 3 uses
  %i.fp = sext i32 %i.t to i64                    ; 3 uses
  %i.fq = icmp ult i64 %i.fo, %i.fp
  br i1 %i.fq, label %bb.fc, label %bb.p

bb.p:                                             ; preds = %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder27MaybePickPeriodicCompactionEPNS_10CompactionE.exit.thread
  %i.fr = load ptr, ptr %i.q, align 8, !tbaa !181, !nonnull !55, !align !56
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 352
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !428
  %.not.i.i.i41 = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i.i41, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = load ptr, ptr %0, align 8, !tbaa !226, !nonnull !55, !align !56
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 752
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !227 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 2
  br i1 %i.fx, label %bb.r, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.fy = getelementptr inbounds i8, ptr %.val7.i, i64 -40
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !224
  %i.ga = add nsw i32 %i.fw, -1
  %i.gb = icmp eq i32 %i.fz, %i.ga
  %i.gc = icmp ugt i64 %i.fo, 1
  %or.cond.i = and i1 %i.gc, %i.gb
  br i1 %or.cond.i, label %bb.s, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i: ; preds = %bb.r, %bb.q, %bb.p
  br label %bb.s

bb.s:                                             ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i, %bb.r
  %.sink.i = phi i64 [ -1, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i ], [ -2, %bb.r ]
  %i.gd = add nsw i64 %.sink.i, %i.fo             ; 8 uses
  %i.ge = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %i.gd ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !222, !range !134, !noundef !55
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.fc, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 33
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !223, !range !134, !noundef !55
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.fc, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !228 ; 4 uses
  %.not128.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not128.i.i, label %bb.fc, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.u, %bb.ab
  %.028131.i.i = phi i64 [ %i.hu, %bb.ab ], [ 0, %bb.u ] ; 2 uses
  %.0130.i.i = phi i64 [ %i.hq, %bb.ab ], [ 0, %bb.u ] ; 2 uses
  %.074129.i.i = phi i64 [ %i.gn, %bb.ab ], [ %i.gd, %bb.u ] ; 2 uses
  %i.gn = add i64 %.074129.i.i, -1                ; 4 uses
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %i.gn ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !222, !range !134, !noundef !55
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 33
  %i.gt = load i8, ptr %i.gs, align 1, !range !134
  %i.gu = trunc nuw i8 %i.gt to i1
  %or.cond.i.i = select i1 %i.gr, i1 true, i1 %i.gu
  br i1 %or.cond.i.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %.lr.ph.i.i42
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %.val47.i.i = load i32, ptr %i.go, align 8, !tbaa !224 ; 2 uses
  %i.gx = icmp eq i32 %.val47.i.i, 0
  br i1 %i.gx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.gy = getelementptr i8, ptr %i.go, i64 8
  %.val48.i.i = load ptr, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !235 ; 3 uses
  %i.hb = lshr i64 %i.ha, 62                      ; 2 uses
  %.not84.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not84.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.hc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 38, ptr noundef nonnull @.str.66, i64 noundef %i.ha) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i

bb.y:                                             ; preds = %bb.w
  %i.hd = trunc nuw nsw i64 %i.hb to i32
  %i.he = and i64 %i.ha, 4611686018427387903
  %i.hf = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 38, ptr noundef nonnull @.str.67, i64 noundef %i.he, i32 noundef %i.hd) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i

bb.z:                                             ; preds = %bb.v
  %i.hg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 38, ptr noundef nonnull @.str.68, i32 noundef %.val47.i.i) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.hh = load i8, ptr %i.gv, align 8, !tbaa !222, !range !134, !noundef !55
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %.thread.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i
  %i.hj = load i8, ptr %i.gw, align 1, !tbaa !223, !range !134, !noundef !55
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %.thread.sink.split.i.i, label %.thread.i.i

.thread.sink.split.i.i:                           ; preds = %bb.aa, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i
  %.str.59.sink.i.i = phi ptr [ @.str.59, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i ], [ @.str.60, %bb.aa ]
  %i.hl = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.hm = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !18
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.hl, ptr noundef nonnull %.str.59.sink.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.hn, ptr noundef nonnull %i.e, i64 noundef %i.gn)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.loopexit.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !236
  %i.hq = add i64 %i.hp, %.0130.i.i               ; 2 uses
  %i.hr = load i32, ptr %i.go, align 8, !tbaa !224
  %i.hs = icmp eq i32 %i.hr, 0
  %i.ht = zext i1 %i.hs to i64
  %i.hu = add i64 %.028131.i.i, %i.ht             ; 2 uses
  %.not.i.i43 = icmp eq i64 %i.gn, 0
  br i1 %.not.i.i43, label %.loopexit.i.i, label %.lr.ph.i.i42

.loopexit.i.i:                                    ; preds = %bb.ab, %.thread.i.i
  %.074121.i.i = phi i64 [ %.074129.i.i, %.thread.i.i ], [ 0, %bb.ab ] ; 11 uses
  %.0119.i.i = phi i64 [ %.0130.i.i, %.thread.i.i ], [ %i.hq, %bb.ab ] ; 4 uses
  %.028117.i.i = phi i64 [ %.028131.i.i, %.thread.i.i ], [ %i.hu, %bb.ab ] ; 2 uses
  %i.hv = icmp eq i64 %.074121.i.i, %i.gd
  br i1 %i.hv, label %bb.fc, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i.i
  %i.hw = icmp eq i64 %.028117.i.i, 0
  br i1 %i.hw, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !181, !nonnull !55, !align !56 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !429
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 328
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !237
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 324
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !238
  %i.ig = zext i32 %i.if to i64
  %.val.i49.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 7 uses
  %i.ih = add i64 %.028117.i.i, -1
  %i.ii = xor i64 %.074121.i.i, -1
  %i.ij = add i64 %i.gd, %i.ii
  %.sroa.speculated72.i.i.i = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.ih) ; 2 uses
  %i.ik = add nsw i64 %i.gd, 1
  %i.il = sub i64 %i.ik, %.074121.i.i
  %39 = call i64 @llvm.usub.sat.i64(i64 %i.ia, i64 %i.il) ; 2 uses
  %i.im = call i64 @llvm.usub.sat.i64(i64 %i.id, i64 %39) ; 2 uses
  %i.in = call i64 @llvm.umin.i64(i64 %.sroa.speculated72.i.i.i, i64 %i.im) ; 2 uses
  %i.io = call i64 @llvm.usub.sat.i64(i64 %i.ig, i64 %39)
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated72.i.i.i, i64 %i.io) ; 3 uses
  %.not99.i.i.i = icmp samesign ult i64 %i.im, %.sroa.speculated.i.i.i
  br i1 %.not99.i.i.i, label %.thread.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.ad
  %i.ip = getelementptr inbounds nuw [40 x i8], ptr %.val.i49.i.i, i64 %i.gd
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !228
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 332
  %i.it = load i32, ptr %i.is, align 4, !tbaa !430
  %i.iu = zext i32 %i.it to i64
  %i.iv = ptrtoint ptr %.val.i49.i.i to i64
  %i.iw = mul i64 %i.ir, %i.iu
  %i.ix = mul i64 %.0119.i.i, 9
  %i.iy = udiv i64 %i.ix, 10
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i, -1
  %invariant.gep = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1027 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1029 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1031 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  br label %.preheader.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.ja = add i64 %.036102.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.036102.i.i.i, %i.in
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i, label %.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !375

.preheader.i.i.i:                                 ; preds = %bb.ae, %.preheader.lr.ph.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.ae ], [ 0, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.036102.i.i.i = phi i64 [ %i.ja, %bb.ae ], [ %.sroa.speculated.i.i.i, %.preheader.lr.ph.i.i.i ] ; 5 uses
  %.037101.i.i.i = phi i64 [ %.034.lcssa.i.i.i, %bb.ae ], [ %.0119.i.i, %.preheader.lr.ph.i.i.i ] ; 4 uses
  %.038100.i.i.i = phi i64 [ %.036102.i.i.i, %bb.ae ], [ 0, %.preheader.lr.ph.i.i.i ] ; 7 uses
  %i.jb = icmp ult i64 %.038100.i.i.i, %.036102.i.i.i
  br i1 %i.jb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.jc = add i64 %i.iz, %indvar
  %.val44.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217
  %i.jd = ptrtoint ptr %.val44.i.i.i to i64
  %i.je = sub i64 %i.jd, %i.iv
  %i.jf = sdiv exact i64 %i.je, 40                ; 3 uses
  %i.jg = sub i64 %i.jc, %.038100.i.i.i
  %i.jh = freeze i64 %i.jg
  %i.ji = add i64 %.038100.i.i.i, %.074121.i.i
  %i.jj = call i64 @llvm.usub.sat.i64(i64 %i.jf, i64 %i.ji)
  %i.jk = call i64 @llvm.umin.i64(i64 %i.jh, i64 %i.jj)
  %i.jl = add i64 %i.jk, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.jl, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %i.jm = and i64 %i.jl, 15                       ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 0
  %i.jo = select i1 %i.jn, i64 16, i64 %i.jm
  %n.vec = sub i64 %i.jl, %i.jo                   ; 2 uses
  %i.jp = add i64 %.038100.i.i.i, %n.vec
  %i.jq = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.037101.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.jq, %vector.ph ], [ %i.ka, %vector.body ]
  %vec.phi732.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kb, %vector.body ]
  %vec.phi733.a = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kc, %vector.body ]
  %vec.phi734 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kd, %vector.body ]
  %i.jr = add i64 %.038100.i.i.i, %index          ; 4 uses
  %gep = getelementptr [40 x i8], ptr %invariant.gep, i64 %i.jr
  %gep1028 = getelementptr [40 x i8], ptr %invariant.gep1027, i64 %i.jr
  %gep1030 = getelementptr [40 x i8], ptr %invariant.gep1029, i64 %i.jr
  %gep1032 = getelementptr [40 x i8], ptr %invariant.gep1031, i64 %i.jr
  %i.js = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.jt = getelementptr i8, ptr %gep1028, i64 184
  %i.ju = getelementptr i8, ptr %gep1030, i64 344
  %i.jv = getelementptr i8, ptr %gep1032, i64 504
  %i.jw = load <16 x i64>, ptr %i.js, align 8, !tbaa !236
  %strided.vec = shufflevector <16 x i64> %i.jw, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jx = load <16 x i64>, ptr %i.jt, align 8, !tbaa !236
  %strided.vec736 = shufflevector <16 x i64> %i.jx, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jy = load <16 x i64>, ptr %i.ju, align 8, !tbaa !236
  %strided.vec738 = shufflevector <16 x i64> %i.jy, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jz = load <16 x i64>, ptr %i.jv, align 8, !tbaa !236
  %strided.vec740 = shufflevector <16 x i64> %i.jz, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.ka = sub <4 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.kb = sub <4 x i64> %vec.phi732.a, %strided.vec736 ; 2 uses
  %i.kc = sub <4 x i64> %vec.phi733.a, %strided.vec738 ; 2 uses
  %i.kd = sub <4 x i64> %vec.phi734, %strided.vec740 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ke = icmp eq i64 %index.next, %n.vec
  br i1 %i.ke, label %middle.block, label %vector.body, !llvm.loop !376

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.kb, %i.ka
  %bin.rdx741.a = add <4 x i64> %i.kc, %bin.rdx
  %bin.rdx742 = add <4 x i64> %i.kd, %bin.rdx741.a
  %i.kf = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx742)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.098.i.i.i.ph = phi i64 [ %.038100.i.i.i, %.lr.ph.i.i.i ], [ %i.jp, %middle.block ]
  %.03497.i.i.i.ph = phi i64 [ %.037101.i.i.i, %.lr.ph.i.i.i ], [ %i.kf, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i, %.preheader.i.i.i
  %.034.lcssa.i.i.i = phi i64 [ %.037101.i.i.i, %.preheader.i.i.i ], [ %i.kn, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ] ; 4 uses
  %i.kg = mul i64 %.034.lcssa.i.i.i, 100
  %i.kh = icmp ult i64 %i.kg, %i.iw
  %i.ki = icmp ult i64 %.034.lcssa.i.i.i, %i.iy
  %or.cond.i.i.i = select i1 %i.kh, i1 true, i1 %i.ki
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.ae

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i
  %.098.i.i.i = phi i64 [ %i.ko, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ], [ %.098.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.03497.i.i.i = phi i64 [ %i.kn, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ], [ %.03497.i.i.i.ph, %scalar.ph.preheader ]
  %i.kj = add i64 %.098.i.i.i, %.074121.i.i       ; 3 uses
  %.not.i.i.i.i.i45 = icmp ult i64 %i.kj, %i.jf
  br i1 %.not.i.i.i.i.i45, label %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %scalar.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, i64 noundef %i.kj, i64 noundef %i.jf) #31
  unreachable

_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i: ; preds = %scalar.ph
  %i.kk = getelementptr inbounds nuw [40 x i8], ptr %.val.i49.i.i, i64 %i.kj
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !236
  %i.kn = sub i64 %.03497.i.i.i, %i.km            ; 2 uses
  %i.ko = add i64 %.098.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ko, %.036102.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !377

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %bb.ae, %bb.ad
  %.038.lcssa.i.i.i = phi i64 [ 0, %bb.ad ], [ %i.in, %bb.ae ], [ %.038100.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.037.lcssa.i.i.i = phi i64 [ %.0119.i.i, %bb.ad ], [ %.034.lcssa.i.i.i, %bb.ae ], [ %.037101.i.i.i, %._crit_edge.i.i.i ]
  %i.kp = add i64 %.038.lcssa.i.i.i, %.074121.i.i
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i: ; preds = %.thread.i.i.i, %bb.ac
  %.377.i.i = phi i64 [ %.074121.i.i, %bb.ac ], [ %i.kp, %.thread.i.i.i ] ; 3 uses
  %.373.i.i = phi i64 [ %.0119.i.i, %bb.ac ], [ %.037.lcssa.i.i.i, %.thread.i.i.i ] ; 4 uses
  %.041.i.i.i = phi i64 [ 0, %bb.ac ], [ %.038.lcssa.i.i.i, %.thread.i.i.i ]
  %i.kq = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.kr = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !18
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.kq, ptr noundef nonnull @.str.61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.ks, i64 noundef %.041.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %.val40.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214
  %i.kt = getelementptr inbounds nuw [40 x i8], ptr %.val40.i.i, i64 %.377.i.i ; 2 uses
  %.val45.i.i = load i32, ptr %i.kt, align 8, !tbaa !224 ; 2 uses
  %i.ku = icmp eq i32 %.val45.i.i, 0
  br i1 %i.ku, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i
  %i.kv = getelementptr i8, ptr %i.kt, i64 8
  %.val46.i.i = load ptr, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 16
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !235 ; 3 uses
  %i.ky = lshr i64 %i.kx, 62                      ; 2 uses
  %.not85.i.i = icmp eq i64 %i.ky, 0
  br i1 %.not85.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.66, i64 noundef %i.kx) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.la = trunc nuw nsw i64 %i.ky to i32
  %i.lb = and i64 %i.kx, 4611686018427387903
  %i.lc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.67, i64 noundef %i.lb, i32 noundef %i.la) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

bb.aj:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i
  %i.ld = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.68, i32 noundef %.val45.i.i) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.le = load ptr, ptr %i.cp, align 8, !tbaa !83
  %i.lf = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !18
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.le, ptr noundef nonnull @.str.62, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lg, ptr noundef nonnull %i.f, i64 noundef %.377.i.i, ptr noundef nonnull @.str.63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  %i.lh = load ptr, ptr %i.q, align 8, !tbaa !181, !nonnull !55, !align !56
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 332
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !430
  %i.lk = zext i32 %i.lj to i64
  %i.ll = mul i64 %.373.i.i, 100
  %i.lm = mul i64 %i.gm, %i.lk
  %i.ln = icmp ult i64 %i.ll, %i.lm
  %i.lo = load ptr, ptr %i.cp, align 8, !tbaa !83 ; 2 uses
  %i.lp = load ptr, ptr %i.cr, align 8, !tbaa !218, !nonnull !55, !align !56
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !18 ; 2 uses
  br i1 %i.ln, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.lo, ptr noundef nonnull @.str.64, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lq, i64 noundef %.373.i.i, i64 noundef %i.gm)
  br label %bb.fc

bb.al:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.lo, ptr noundef nonnull @.str.65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lq, i64 noundef %.373.i.i, i64 noundef %i.gm)
  %i.lr = load ptr, ptr %i.q, align 8, !tbaa !181, !nonnull !55, !align !56 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 349
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !241, !range !134, !noundef !55
  %i.lu = trunc nuw i8 %i.lt to i1
  br i1 %i.lu, label %bb.am, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder29PickCompactionToReduceSizeAmpEv.exit.i

bb.am:                                            ; preds = %bb.al
  %i.lv = uitofp i64 %i.gm to double
  %i.lw = uitofp i64 %.373.i.i to double
  %i.lx = fdiv double %i.lv, %i.lw
  %i.ly = fmul double %i.lx, 1.800000e+00         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %.val.i52.i.i = load ptr, ptr %i.ag, align 8, !tbaa !214 ; 2 uses
  %.val204.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !217 ; 2 uses
  %i.lz = ptrtoint ptr %.val204.i.i.i to i64
  %i.ma = ptrtoint ptr %.val.i52.i.i to i64
  %i.mb = sub i64 %i.lz, %i.ma
  %i.mc = getelementptr i8, ptr %.val.i52.i.i, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.mc, i64 -80
  %i.me = load i32, ptr %i.md, align 8, !tbaa !224 ; 3 uses
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder31PickIncrementalForReduceSizeAmpEd.exit.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mg = getelementptr inbounds i8, ptr %.val204.i.i.i, i64 -40
  %i.mh = load i32, ptr %i.mg, align 8, !tbaa !224 ; 9 uses
  %i.mi = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 2712
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !296 ; 2 uses
  %i.ml = sext i32 %i.mh to i64
  %i.mm = getelementptr inbounds [24 x i8], ptr %i.mk, i64 %i.ml ; 12 uses
  %i.mn = sext i32 %i.me to i64
  %i.mo = getelementptr inbounds [24 x i8], ptr %i.mk, i64 %i.mn ; 8 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lr, i64 152
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !431
  %i.mr = lshr i64 %i.mq, 1                       ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 4 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !299
  %i.mu = load ptr, ptr %i.mo, align 8, !tbaa !300 ; 2 uses
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = ptrtoint ptr %i.mu to i64
  %i.mx = sub i64 %i.mv, %i.mw
  %i.my = lshr exact i64 %i.mx, 3
  %i.mz = trunc i64 %i.my to i32
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.lr.ph416.i.i.i, label %._crit_edge.i53.i.i

.lr.ph416.i.i.i:                                  ; preds = %bb.an
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 6 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 7 uses
  %i.nf = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 8 uses
  %.not.i3.i.i.i.i.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 8 uses
  %i.ng = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 16 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  br label %bb.ao

._crit_edge.i53.i.i:                              ; preds = %.loopexit345.i.i.i, %bb.an
  %.0170.lcssa.i.i.i = phi i32 [ 0, %bb.an ], [ %.2172.i.i.i, %.loopexit345.i.i.i ] ; 2 uses
  %.0167.lcssa.i.i.i = phi i32 [ 0, %bb.an ], [ %.2169.i.i.i, %.loopexit345.i.i.i ] ; 2 uses
  %.0164.lcssa.i.i.i = phi double [ %i.ly, %bb.an ], [ %.2166.i.i.i, %.loopexit345.i.i.i ]
  %i.nn = fcmp ult double %.0164.lcssa.i.i.i, %i.ly
  br i1 %i.nn, label %bb.cf, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder31PickIncrementalForReduceSizeAmpEd.exit.thread.i.i

bb.ao:                                            ; preds = %.loopexit345.i.i.i, %.lr.ph416.i.i.i
  %indvars.iv457.i.i.i = phi i64 [ 0, %.lr.ph416.i.i.i ], [ %indvars.iv.next458.i.i.i, %.loopexit345.i.i.i ] ; 9 uses
  %i.no = phi ptr [ %i.mu, %.lr.ph416.i.i.i ], [ %i.acl, %.loopexit345.i.i.i ]
  %.0132413.i.i.i = phi i8 [ 0, %.lr.ph416.i.i.i ], [ %.5137.i.i.i, %.loopexit345.i.i.i ] ; 4 uses
  %.0138412.i.i.i = phi i64 [ 0, %.lr.ph416.i.i.i ], [ %.10.i.i.i, %.loopexit345.i.i.i ] ; 5 uses
  %.0147411.i.i.i = phi i64 [ 0, %.lr.ph416.i.i.i ], [ %.3150.i.i.i, %.loopexit345.i.i.i ]
  %.0151410.i.i.i = phi i32 [ 0, %.lr.ph416.i.i.i ], [ %.5156.i.i.i, %.loopexit345.i.i.i ]
  %.0157409.i.i.i = phi i32 [ 0, %.lr.ph416.i.i.i ], [ %.2159.lcssa.i.i.i, %.loopexit345.i.i.i ] ; 6 uses
  %.0160408.i.i.i = phi i32 [ 0, %.lr.ph416.i.i.i ], [ %.3163.i.i.i, %.loopexit345.i.i.i ] ; 2 uses
  %.0164407.i.i.i = phi double [ %i.ly, %.lr.ph416.i.i.i ], [ %.2166.i.i.i, %.loopexit345.i.i.i ] ; 4 uses
  %.0167406.i.i.i = phi i32 [ 0, %.lr.ph416.i.i.i ], [ %.2169.i.i.i, %.loopexit345.i.i.i ] ; 3 uses
  %.0170405.i.i.i = phi i32 [ 0, %.lr.ph416.i.i.i ], [ %.2172.i.i.i, %.loopexit345.i.i.i ] ; 3 uses
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %indvars.iv457.i.i.i
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !301 ; 5 uses
  %i.nr = load ptr, ptr %i.nb, align 8, !tbaa !299
  %i.ns = load ptr, ptr %i.mm, align 8, !tbaa !300 ; 2 uses
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = ptrtoint ptr %i.ns to i64
  %i.nv = sub i64 %i.nt, %i.nu
  %i.nw = lshr exact i64 %i.nv, 3
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = icmp slt i32 %.0157409.i.i.i, %i.nx
  br i1 %i.ny, label %.lr.ph.i57.i.i, label %.critedge.thread.i.i.i

.lr.ph.i57.i.i:                                   ; preds = %bb.ao
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nq, i64 48 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nq, i64 56 ; 2 uses
  %i.ob = sext i32 %.0157409.i.i.i to i64         ; 3 uses
  %i.oc = load ptr, ptr %i.nc, align 8, !tbaa !80
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ns, i64 %i.ob
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !301 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 80
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !18 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oe, i64 88
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !302 ; 2 uses
  %i.oj = load ptr, ptr %i.nz, align 8, !tbaa !18 ; 2 uses
  %i.ok = load i64, ptr %i.oa, align 8, !tbaa !302 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #29
  %i.om = add i64 %i.oi, -8
  store ptr %i.og, ptr %22, align 8
  store i64 %i.om, ptr %i.nd, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29
  %i.on = add i64 %i.ok, -8
  store ptr %i.oj, ptr %23, align 8
  store i64 %i.on, ptr %i.ne, align 8
  br i1 %.not.i.i.i.i.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.peel.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.i57.i.i
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.peel.i.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i.i.peel.i.i.i: ; preds = %bb.ap, %.lr.ph.i57.i.i
  %i.oo = load i8, ptr %i.nf, align 1, !tbaa !433
  %i.op = icmp ugt i8 %i.oo, 1
  br i1 %i.op, label %bb.aq, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i.i.peel.i.i.i

bb.aq:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.peel.i.i.i
  br i1 %.not.i3.i.i.i.i.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i.i.peel.i.i.i, label %bb.ar

end_hunk_0
