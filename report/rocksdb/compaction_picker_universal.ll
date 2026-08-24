Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/compaction_picker_universal?download=true
inline.NumInlined: 1516
inline.NumDeleted: 640
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder14PickCompactionEv:bb.a
  %.not.i.i.i41 = icmp eq i64 %i.ft, 0
  br i1 %.not.i.i.i41, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fu = load ptr, ptr %0, align 8, !tbaa !251, !nonnull !51, !align !52
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 752
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !252 ; 2 uses
  %i.fx = icmp sgt i32 %i.fw, 2
  br i1 %i.fx, label %bb.r, label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder43ShouldSkipLastSortedRunForSizeAmpCompactionEv.exit.thread.i.i

bb.r:                                             ; preds = %bb.q
  %i.fy = getelementptr inbounds i8, ptr %.val7.i, i64 -40
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !242
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
  %i.gg = load i8, ptr %i.gf, align 8, !tbaa !238, !range !138, !noundef !51
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.fc, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 33
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !241, !range !138, !noundef !51
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.fc, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !253 ; 4 uses
  %.not128.i.i = icmp eq i64 %i.gd, 0
  br i1 %.not128.i.i, label %bb.fc, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %bb.u, %bb.ab
  %.028131.i.i = phi i64 [ %i.hu, %bb.ab ], [ 0, %bb.u ] ; 2 uses
  %.0130.i.i = phi i64 [ %i.hq, %bb.ab ], [ 0, %bb.u ] ; 2 uses
  %.074129.i.i = phi i64 [ %i.gn, %bb.ab ], [ %i.gd, %bb.u ] ; 2 uses
  %i.gn = add i64 %.074129.i.i, -1                ; 4 uses
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %i.gn ; 8 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !238, !range !138, !noundef !51
  %i.gr = trunc nuw i8 %i.gq to i1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.go, i64 33
  %i.gt = load i8, ptr %i.gs, align 1, !range !138
  %i.gu = trunc nuw i8 %i.gt to i1
  %or.cond.i.i = select i1 %i.gr, i1 true, i1 %i.gu
  br i1 %or.cond.i.i, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %.lr.ph.i.i42
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %.val47.i.i = load i32, ptr %i.go, align 8, !tbaa !242 ; 2 uses
  %i.gx = icmp eq i32 %.val47.i.i, 0
  br i1 %i.gx, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.gy = getelementptr i8, ptr %i.go, i64 8
  %.val48.i.i = load ptr, ptr %i.gy, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %.val48.i.i, i64 16
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !254 ; 3 uses
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
  %i.hh = load i8, ptr %i.gv, align 8, !tbaa !238, !range !138, !noundef !51
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %.thread.sink.split.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i
  %i.hj = load i8, ptr %i.gw, align 1, !tbaa !241, !range !138, !noundef !51
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %.thread.sink.split.i.i, label %.thread.i.i

.thread.sink.split.i.i:                           ; preds = %bb.aa, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i
  %.str.59.sink.i.i = phi ptr [ @.str.59, %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit.i.i ], [ @.str.60, %bb.aa ]
  %i.hl = load ptr, ptr %i.cp, align 8, !tbaa !84
  %i.hm = load ptr, ptr %i.cr, align 8, !tbaa !235, !nonnull !51, !align !52
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !9
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.hl, ptr noundef nonnull %.str.59.sink.i.i, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.hn, ptr noundef nonnull %i.e, i64 noundef %i.gn)
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread.sink.split.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %.loopexit.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !261
  %i.hq = add i64 %i.hp, %.0130.i.i               ; 2 uses
  %i.hr = load i32, ptr %i.go, align 8, !tbaa !242
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
  %i.hx = load ptr, ptr %i.q, align 8, !tbaa !196, !nonnull !51, !align !52 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 144
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !262
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 328
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !263
  %i.id = zext i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hx, i64 324
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !264
  %i.ig = zext i32 %i.if to i64
  %.val.i49.i.i = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 7 uses
  %i.ih = add i64 %.028117.i.i, -1
  %i.ii = xor i64 %.074121.i.i, -1
  %i.ij = add i64 %i.gd, %i.ii
  %.sroa.speculated72.i.i.i = call i64 @llvm.umin.i64(i64 %i.ij, i64 %i.ih) ; 2 uses
  %i.ik = add nsw i64 %i.gd, 1
  %i.il = sub i64 %i.ik, %.074121.i.i
  %i.im = call i64 @llvm.usub.sat.i64(i64 %i.ia, i64 %i.il) ; 2 uses
  %i.in = call i64 @llvm.usub.sat.i64(i64 %i.id, i64 %i.im) ; 2 uses
  %i.io = call i64 @llvm.usub.sat.i64(i64 %i.ig, i64 %i.im)
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated72.i.i.i, i64 %i.io) ; 4 uses
  %.not99.i.i.i = icmp samesign ult i64 %i.in, %.sroa.speculated.i.i.i
  br i1 %.not99.i.i.i, label %.thread.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.ad
  %.sroa.speculated52.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated72.i.i.i, i64 %i.in)
  %i.ip = getelementptr inbounds nuw [40 x i8], ptr %.val.i49.i.i, i64 %i.gd
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !253
  %i.is = getelementptr inbounds nuw i8, ptr %i.hx, i64 332
  %i.it = load i32, ptr %i.is, align 4, !tbaa !265
  %i.iu = zext i32 %i.it to i64
  %i.iv = ptrtoint ptr %.val.i49.i.i to i64
  %i.iw = mul i64 %i.ir, %i.iu
  %i.ix = mul i64 %.0119.i.i, 9
  %i.iy = udiv i64 %i.ix, 10
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.speculated.i.i.i, i64 %.sroa.speculated52.i.i.i) ; 2 uses
  %i.iz = add nsw i64 %.sroa.speculated.i.i.i, -1
  %invariant.gep = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1027 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1029 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  %invariant.gep1031 = getelementptr [40 x i8], ptr %.val.i49.i.i, i64 %.074121.i.i
  br label %.preheader.i.i.i

bb.ae:                                            ; preds = %._crit_edge.i.i.i
  %i.ja = add i64 %.036102.i.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.036102.i.i.i, %umax.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i.i, label %.thread.i.i.i, label %.preheader.i.i.i, !llvm.loop !266

.preheader.i.i.i:                                 ; preds = %bb.ae, %.preheader.lr.ph.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.ae ], [ 0, %.preheader.lr.ph.i.i.i ] ; 2 uses
  %.036102.i.i.i = phi i64 [ %i.ja, %bb.ae ], [ %.sroa.speculated.i.i.i, %.preheader.lr.ph.i.i.i ] ; 5 uses
  %.037101.i.i.i = phi i64 [ %.034.lcssa.i.i.i, %bb.ae ], [ %.0119.i.i, %.preheader.lr.ph.i.i.i ] ; 4 uses
  %.038100.i.i.i = phi i64 [ %.036102.i.i.i, %bb.ae ], [ 0, %.preheader.lr.ph.i.i.i ] ; 7 uses
  %i.jb = icmp ult i64 %.038100.i.i.i, %.036102.i.i.i
  br i1 %i.jb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.jc = add i64 %i.iz, %indvar
  %.val44.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !234
  %i.jd = ptrtoint ptr %.val44.i.i.i to i64
  %i.je = sub i64 %i.jd, %i.iv
  %i.jf = sdiv exact i64 %i.je, 40                ; 3 uses
  %i.jg = sub i64 %i.jc, %.038100.i.i.i
  %i.jh = freeze i64 %i.jg
  %i.ji = add i64 %.038100.i.i.i, %.074121.i.i
  %i.jj = call i64 @llvm.usub.sat.i64(i64 %i.jf, i64 %i.ji)
  %umin = call i64 @llvm.umin.i64(i64 %i.jh, i64 %i.jj)
  %i.jk = add i64 %umin, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.jk, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %i.jl = and i64 %i.jk, 15                       ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  %i.jn = select i1 %i.jm, i64 16, i64 %i.jl
  %n.vec = sub i64 %i.jk, %i.jn                   ; 2 uses
  %i.jo = add i64 %.038100.i.i.i, %n.vec
  %i.jp = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.037101.i.i.i, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.jp, %vector.ph ], [ %i.jz, %vector.body ]
  %vec.phi732 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.ka, %vector.body ]
  %vec.phi733 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kb, %vector.body ]
  %vec.phi734 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.kc, %vector.body ]
  %i.jq = add i64 %.038100.i.i.i, %index          ; 4 uses
  %gep = getelementptr [40 x i8], ptr %invariant.gep, i64 %i.jq
  %gep1028 = getelementptr [40 x i8], ptr %invariant.gep1027, i64 %i.jq
  %gep1030 = getelementptr [40 x i8], ptr %invariant.gep1029, i64 %i.jq
  %gep1032 = getelementptr [40 x i8], ptr %invariant.gep1031, i64 %i.jq
  %i.jr = getelementptr inbounds nuw i8, ptr %gep, i64 24
  %i.js = getelementptr i8, ptr %gep1028, i64 184
  %i.jt = getelementptr i8, ptr %gep1030, i64 344
  %i.ju = getelementptr i8, ptr %gep1032, i64 504
  %i.jv = load <16 x i64>, ptr %i.jr, align 8, !tbaa !261
  %strided.vec = shufflevector <16 x i64> %i.jv, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jw = load <16 x i64>, ptr %i.js, align 8, !tbaa !261
  %strided.vec736 = shufflevector <16 x i64> %i.jw, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jx = load <16 x i64>, ptr %i.jt, align 8, !tbaa !261
  %strided.vec738 = shufflevector <16 x i64> %i.jx, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jy = load <16 x i64>, ptr %i.ju, align 8, !tbaa !261
  %strided.vec740 = shufflevector <16 x i64> %i.jy, <16 x i64> poison, <4 x i32> <i32 0, i32 5, i32 10, i32 15>
  %i.jz = sub <4 x i64> %vec.phi, %strided.vec    ; 2 uses
  %i.ka = sub <4 x i64> %vec.phi732, %strided.vec736 ; 2 uses
  %i.kb = sub <4 x i64> %vec.phi733, %strided.vec738 ; 2 uses
  %i.kc = sub <4 x i64> %vec.phi734, %strided.vec740 ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !267

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.ka, %i.jz
  %bin.rdx741 = add <4 x i64> %i.kb, %bin.rdx
  %bin.rdx742 = add <4 x i64> %i.kc, %bin.rdx741
  %i.ke = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx742)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.098.i.i.i.ph = phi i64 [ %.038100.i.i.i, %.lr.ph.i.i.i ], [ %i.jo, %middle.block ]
  %.03497.i.i.i.ph = phi i64 [ %.037101.i.i.i, %.lr.ph.i.i.i ], [ %i.ke, %middle.block ]
  br label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i, %.preheader.i.i.i
  %.034.lcssa.i.i.i = phi i64 [ %.037101.i.i.i, %.preheader.i.i.i ], [ %i.km, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ] ; 4 uses
  %i.kf = mul i64 %.034.lcssa.i.i.i, 100
  %i.kg = icmp ult i64 %i.kf, %i.iw
  %i.kh = icmp ult i64 %.034.lcssa.i.i.i, %i.iy
  %or.cond.i.i.i = select i1 %i.kg, i1 true, i1 %i.kh
  br i1 %or.cond.i.i.i, label %.thread.i.i.i, label %bb.ae

scalar.ph:                                        ; preds = %scalar.ph.preheader, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i
  %.098.i.i.i = phi i64 [ %i.kn, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ], [ %.098.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.03497.i.i.i = phi i64 [ %i.km, %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i ], [ %.03497.i.i.i.ph, %scalar.ph.preheader ]
  %i.ki = add i64 %.098.i.i.i, %.074121.i.i       ; 3 uses
  %.not.i.i.i.i.i45 = icmp ult i64 %i.ki, %i.jf
  br i1 %.not.i.i.i.i.i45, label %_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %scalar.ph
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, i64 noundef %i.ki, i64 noundef %i.jf) #31
  unreachable

_ZNKSt6vectorIN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRunESaIS3_EE2atEm.exit.i.i.i: ; preds = %scalar.ph
  %i.kj = getelementptr inbounds nuw [40 x i8], ptr %.val.i49.i.i, i64 %i.ki
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load i64, ptr %i.kk, align 8, !tbaa !261
  %i.km = sub i64 %.03497.i.i.i, %i.kl            ; 2 uses
  %i.kn = add i64 %.098.i.i.i, 1                  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.kn, %.036102.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !270

.thread.i.i.i:                                    ; preds = %._crit_edge.i.i.i, %bb.ae, %bb.ad
  %.038.lcssa.i.i.i = phi i64 [ 0, %bb.ad ], [ %umax.i.i, %bb.ae ], [ %.038100.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.037.lcssa.i.i.i = phi i64 [ %.0119.i.i, %bb.ad ], [ %.034.lcssa.i.i.i, %bb.ae ], [ %.037101.i.i.i, %._crit_edge.i.i.i ]
  %i.ko = add i64 %.038.lcssa.i.i.i, %.074121.i.i
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i: ; preds = %.thread.i.i.i, %bb.ac
  %.377.i.i = phi i64 [ %.074121.i.i, %bb.ac ], [ %i.ko, %.thread.i.i.i ] ; 3 uses
  %.373.i.i = phi i64 [ %.0119.i.i, %bb.ac ], [ %.037.lcssa.i.i.i, %.thread.i.i.i ] ; 4 uses
  %.041.i.i.i = phi i64 [ 0, %bb.ac ], [ %.038.lcssa.i.i.i, %.thread.i.i.i ]
  %i.kp = load ptr, ptr %i.cp, align 8, !tbaa !84
  %i.kq = load ptr, ptr %i.cr, align 8, !tbaa !235, !nonnull !51, !align !52
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !9
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.kp, ptr noundef nonnull @.str.61, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.kr, i64 noundef %.041.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %.val40.i.i = load ptr, ptr %i.ag, align 8, !tbaa !231
  %i.ks = getelementptr inbounds nuw [40 x i8], ptr %.val40.i.i, i64 %.377.i.i ; 2 uses
  %.val45.i.i = load i32, ptr %i.ks, align 8, !tbaa !242 ; 2 uses
  %i.kt = icmp eq i32 %.val45.i.i, 0
  br i1 %i.kt, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i
  %i.ku = getelementptr i8, ptr %i.ks, i64 8
  %.val46.i.i = load ptr, ptr %i.ku, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %.val46.i.i, i64 16
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !254 ; 3 uses
  %i.kx = lshr i64 %i.kw, 62                      ; 2 uses
  %.not85.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not85.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ky = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.66, i64 noundef %i.kw) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.kz = trunc nuw nsw i64 %i.kx to i32
  %i.la = and i64 %i.kw, 4611686018427387903
  %i.lb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.67, i64 noundef %i.la, i32 noundef %i.kz) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

bb.aj:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder35MightExcludeNewL0sToReduceWriteStopEmmRmS2_.exit.i.i
  %i.lc = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 38, ptr noundef nonnull @.str.68, i32 noundef %.val45.i.i) #29 ; 0 uses
  br label %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i

_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ld = load ptr, ptr %i.cp, align 8, !tbaa !84
  %i.le = load ptr, ptr %i.cr, align 8, !tbaa !235, !nonnull !51, !align !52
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !9
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.ld, ptr noundef nonnull @.str.62, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lf, ptr noundef nonnull %i.f, i64 noundef %.377.i.i, ptr noundef nonnull @.str.63)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  %i.lg = load ptr, ptr %i.q, align 8, !tbaa !196, !nonnull !51, !align !52
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 332
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !265
  %i.lj = zext i32 %i.li to i64
  %i.lk = mul i64 %.373.i.i, 100
  %i.ll = mul i64 %i.gm, %i.lj
  %i.lm = icmp ult i64 %i.lk, %i.ll
  %i.ln = load ptr, ptr %i.cp, align 8, !tbaa !84 ; 2 uses
  %i.lo = load ptr, ptr %i.cr, align 8, !tbaa !235, !nonnull !51, !align !52
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !9  ; 2 uses
  br i1 %i.lm, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.ln, ptr noundef nonnull @.str.64, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lp, i64 noundef %.373.i.i, i64 noundef %i.gm)
  br label %bb.fc

bb.al:                                            ; preds = %_ZNK7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder9SortedRun4DumpEPcmb.exit51.i.i
  call void (ptr, ptr, ...) @_ZN7rocksdb11LogToBufferEPNS_9LogBufferEPKcz(ptr noundef %i.ln, ptr noundef nonnull @.str.65, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.43, i64 32), ptr noundef %i.lp, i64 noundef %.373.i.i, i64 noundef %i.gm)
  %i.lq = load ptr, ptr %i.q, align 8, !tbaa !196, !nonnull !51, !align !52 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 349
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !271, !range !138, !noundef !51
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.am, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder29PickCompactionToReduceSizeAmpEv.exit.i

bb.am:                                            ; preds = %bb.al
  %i.lu = uitofp i64 %i.gm to double
  %i.lv = uitofp i64 %.373.i.i to double
  %i.lw = fdiv double %i.lu, %i.lv
  %i.lx = fmul double %i.lw, 1.800000e+00         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  %.val.i52.i.i = load ptr, ptr %i.ag, align 8, !tbaa !231 ; 2 uses
  %.val204.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !234 ; 2 uses
  %i.ly = ptrtoint ptr %.val204.i.i.i to i64
  %i.lz = ptrtoint ptr %.val.i52.i.i to i64
  %i.ma = sub i64 %i.ly, %i.lz
  %i.mb = getelementptr i8, ptr %.val.i52.i.i, i64 %i.ma
  %i.mc = getelementptr i8, ptr %i.mb, i64 -80
  %i.md = load i32, ptr %i.mc, align 8, !tbaa !242 ; 3 uses
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %_ZN7rocksdb12_GLOBAL__N_126UniversalCompactionBuilder31PickIncrementalForReduceSizeAmpEd.exit.thread.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mf = getelementptr inbounds i8, ptr %.val204.i.i.i, i64 -40
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !242 ; 9 uses
  %i.mh = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 2712
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !272 ; 2 uses
  %i.mk = sext i32 %i.mg to i64
  %i.ml = getelementptr inbounds [24 x i8], ptr %i.mj, i64 %i.mk ; 12 uses
  %i.mm = sext i32 %i.md to i64
  %i.mn = getelementptr inbounds [24 x i8], ptr %i.mj, i64 %i.mm ; 8 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lq, i64 152
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !327
  %i.mq = lshr i64 %i.mp, 1                       ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 4 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !328
  %i.mt = load ptr, ptr %i.mn, align 8, !tbaa !331 ; 2 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = lshr exact i64 %i.mw, 3
end_hunk_0
