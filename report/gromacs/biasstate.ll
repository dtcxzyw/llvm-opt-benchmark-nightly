Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasstate?download=true
inline.NumInlined: 2109
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN3gmx9BiasState40updateFreeEnergyAndAddSamplesToHistogramENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERKNS_10BiasParamsERKNS_15CorrelationGridEdlP8_IO_FILEPSt6vectorIiSaIiEE:bb.a
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i77

.loopexit.i:                                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i80
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i:                             ; preds = %bb.r
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i77:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i84, %bb.p, %bb.n
  %i.fd = phi ptr [ %i.ey, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i84 ], [ %i.ei, %bb.p ], [ %i.eb, %bb.n ]
  %indvars.iv.next.i78 = add nuw nsw i64 %indvars.iv.i76, 1 ; 2 uses
  %exitcond.not.i79 = icmp eq i64 %indvars.iv.next.i78, %wide.trip.count.i75
  br i1 %exitcond.not.i79, label %._crit_edge33.i, label %bb.n, !llvm.loop !322

bb.u:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.dk, %bb.j ], [ %i.ea, %bb.m ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fe = load ptr, ptr %13, align 8, !tbaa !123  ; 3 uses
  %.not.i.i.i21.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i21.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit22.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !157
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fe, i64 noundef %i.fj) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit22.i

common.resume:                                    ; preds = %bb.bg, %bb.bh, %bb.ae, %bb.af, %_ZNSt6vectorIiSaIiEED2Ev.exit22.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %_ZNSt6vectorIiSaIiEED2Ev.exit22.i ], [ %i.pa, %bb.ae ], [ %i.pa, %bb.af ], [ %.pn.pn17.i, %bb.bh ], [ %i.vz, %bb.bg ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIiSaIiEED2Ev.exit22.i:                ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %common.resume

_ZN3gmx12_GLOBAL__N_122mergeSharedUpdateListsEPSt6vectorIiSaIiEEiRKNS_11BiasSharingEi.exit: ; preds = %._crit_edge33.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %bb.w

bb.w:                                             ; preds = %_ZN3gmx12_GLOBAL__N_122mergeSharedUpdateListsEPSt6vectorIiSaIiEEiRKNS_11BiasSharingEi.exit, %_ZN3gmx12_GLOBAL__N_119makeLocalUpdateListERKNS_8BiasGridENS_8ArrayRefIKNS_10PointStateEEEPKiS9_PSt6vectorIiSaIiEE.exit
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !126
  %i.fl = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = sub i64 %i.fm, %i.fn
  %i.fp = sdiv exact i64 %i.fo, 48                ; 4 uses
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp sgt i32 %i.fq, 0
  br i1 %i.fr, label %.lr.ph.i86, label %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit

.lr.ph.i86:                                       ; preds = %bb.w
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !132
  %i.fu = sext i32 %i.ft to i64                   ; 2 uses
  %i.fv = load ptr, ptr %3, align 8, !tbaa !32    ; 2 uses
  %i.fw = getelementptr inbounds nuw [72 x i8], ptr %i.fv, i64 %i.fu
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32 ; 11 uses
  %wide.trip.count.i87 = and i64 %i.fp, 2147483647 ; 5 uses
  %min.iters.check270 = icmp samesign ult i64 %wide.trip.count.i87, 16
  br i1 %min.iters.check270, label %scalar.ph269.preheader, label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph.i86
  %i.fy = shl nuw nsw i64 %wide.trip.count.i87, 2 ; 2 uses
  %i.fz = getelementptr i8, ptr %0, i64 %i.fy
  %scevgep264 = getelementptr i8, ptr %i.fz, i64 176
  %i.ga = mul nuw nsw i64 %i.fu, 72
  %i.gb = getelementptr i8, ptr %i.fv, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 %i.fy
  %scevgep265 = getelementptr i8, ptr %i.gc, i64 32
  %bound0266 = icmp ult ptr %i.h, %scevgep265
  %bound1267 = icmp ult ptr %i.fx, %scevgep264
  %found.conflict268 = and i1 %bound0266, %bound1267
  br i1 %found.conflict268, label %scalar.ph269.preheader, label %vector.ph271

vector.ph271:                                     ; preds = %vector.memcheck263
  %n.vec272 = and i64 %i.fp, 2147483644           ; 3 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph271
  %index274 = phi i64 [ 0, %vector.ph271 ], [ %index.next276, %vector.body273 ] ; 4 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %index274
  %wide.load275 = load <4 x i32>, ptr %i.gd, align 4, !tbaa !39, !alias.scope !340 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index274
  store <4 x i32> %wide.load275, ptr %i.ge, align 8, !tbaa !39, !alias.scope !341, !noalias !340
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index274
  store <4 x i32> %wide.load275, ptr %i.gf, align 8, !tbaa !39, !alias.scope !341, !noalias !340
  %index.next276 = add nuw i64 %index274, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next276, %n.vec272
  br i1 %i.gg, label %middle.block277, label %vector.body273, !llvm.loop !326

middle.block277:                                  ; preds = %vector.body273
  %cmp.n278 = icmp eq i64 %wide.trip.count.i87, %n.vec272
  br i1 %cmp.n278, label %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit, label %scalar.ph269.preheader

scalar.ph269.preheader:                           ; preds = %vector.memcheck263, %.lr.ph.i86, %middle.block277
  %indvars.iv.i88.ph = phi i64 [ 0, %vector.memcheck263 ], [ 0, %.lr.ph.i86 ], [ %n.vec272, %middle.block277 ] ; 4 uses
  %i.gh = sub nsw i64 %i.fp, %indvars.iv.i88.ph
  %xtraiter282 = and i64 %i.gh, 7                 ; 2 uses
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol

scalar.ph269.prol:                                ; preds = %scalar.ph269.preheader, %scalar.ph269.prol
  %indvars.iv.i88.prol = phi i64 [ %indvars.iv.next.i89.prol, %scalar.ph269.prol ], [ %indvars.iv.i88.ph, %scalar.ph269.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph269.prol ], [ 0, %scalar.ph269.preheader ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i88.prol
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !39 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i88.prol
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !39
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i88.prol
  store i32 %i.gj, ptr %i.gl, align 4, !tbaa !39
  %indvars.iv.next.i89.prol = add nuw nsw i64 %indvars.iv.i88.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter282
  br i1 %prol.iter.cmp.not, label %scalar.ph269.prol.loopexit, label %scalar.ph269.prol, !llvm.loop !327

scalar.ph269.prol.loopexit:                       ; preds = %scalar.ph269.prol, %scalar.ph269.preheader
  %indvars.iv.i88.unr = phi i64 [ %indvars.iv.i88.ph, %scalar.ph269.preheader ], [ %indvars.iv.next.i89.prol, %scalar.ph269.prol ]
  %i.gm = sub nsw i64 %indvars.iv.i88.ph, %wide.trip.count.i87
  %i.gn = icmp ugt i64 %i.gm, -8
  br i1 %i.gn, label %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit, label %scalar.ph269

scalar.ph269:                                     ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.7, %scalar.ph269 ], [ %indvars.iv.i88.unr, %scalar.ph269.prol.loopexit ] ; 11 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i88
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !39 ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i88
  store i32 %i.gp, ptr %i.gq, align 4, !tbaa !39
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i88
  store i32 %i.gp, ptr %i.gr, align 4, !tbaa !39
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !39 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !39
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89
  store i32 %i.gt, ptr %i.gv, align 4, !tbaa !39
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.1
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !39 ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.1
  store i32 %i.gx, ptr %i.gy, align 4, !tbaa !39
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.1
  store i32 %i.gx, ptr %i.gz, align 4, !tbaa !39
  %indvars.iv.next.i89.2 = add nuw nsw i64 %indvars.iv.i88, 3 ; 3 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.2
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !39 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.2
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !39
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.2
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !39
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 3 uses
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.3
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !39 ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.3
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !39
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.3
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !39
  %indvars.iv.next.i89.4 = add nuw nsw i64 %indvars.iv.i88, 5 ; 3 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.4
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !39 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.4
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !39
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.4
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !39
  %indvars.iv.next.i89.5 = add nuw nsw i64 %indvars.iv.i88, 6 ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.5
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !39 ; 2 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.5
  store i32 %i.hn, ptr %i.ho, align 4, !tbaa !39
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.5
  store i32 %i.hn, ptr %i.hp, align 4, !tbaa !39
  %indvars.iv.next.i89.6 = add nuw nsw i64 %indvars.iv.i88, 7 ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.next.i89.6
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !39 ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next.i89.6
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !39
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next.i89.6
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !39
  %indvars.iv.next.i89.7 = add nuw nsw i64 %indvars.iv.i88, 8 ; 2 uses
  %exitcond.not.i90.7 = icmp eq i64 %indvars.iv.next.i89.7, %wide.trip.count.i87
  br i1 %exitcond.not.i90.7, label %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit, label %scalar.ph269, !llvm.loop !328

_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit: ; preds = %scalar.ph269.prol.loopexit, %scalar.ph269, %middle.block277, %bb.w
  %i.hu = load ptr, ptr %i.e, align 8, !tbaa !17  ; 8 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !81
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hy = load i32, ptr %i.ct, align 4, !tbaa !100 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !118 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %4, i64 132 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !119 ; 2 uses
  %i.id = load ptr, ptr %9, align 8, !tbaa !123   ; 10 uses
  %i.ie = load ptr, ptr %i.ar, align 8, !tbaa !122 ; 4 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %.not65.i = icmp eq ptr %i.id, %i.ie            ; 2 uses
  br i1 %.not65.i, label %._crit_edge.i95, label %.lr.ph.i91

._crit_edge.i95:                                  ; preds = %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit
  %i.ih = icmp sgt i32 %i.hy, 1
  br i1 %i.ih, label %bb.x, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit

._crit_edge.thread.i:                             ; preds = %.lr.ph.i91
  %i.ii = icmp sgt i32 %i.hy, 1
  br i1 %i.ii, label %bb.x, label %.lr.ph69.i

.lr.ph.i91:                                       ; preds = %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit, %.lr.ph.i91
  %.sroa.054.066.i = phi ptr [ %i.ir, %.lr.ph.i91 ], [ %i.id, %_ZN3gmx9BiasState21resetLocalUpdateRangeERKNS_8BiasGridE.exit ] ; 2 uses
  %i.ij = load i32, ptr %.sroa.054.066.i, align 4, !tbaa !39
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.in = load double, ptr %i.im, align 8, !tbaa !161
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hw, i64 %i.ik ; 2 uses
  %i.ip = load double, ptr %i.io, align 8, !tbaa !42
  %i.iq = fadd double %i.in, %i.ip
  store double %i.iq, ptr %i.io, align 8, !tbaa !42
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.054.066.i, i64 4 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ir, %i.ie
  br i1 %.not.i92, label %._crit_edge.thread.i, label %.lr.ph.i91

bb.x:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i95
  %15 = ptrtoint ptr %i.ie to i64
  %16 = sub i64 %15, %i.if                        ; 4 uses
  %i.is = ashr exact i64 %16, 2                   ; 6 uses
  %i.it = ashr exact i64 %16, 1
  call void @_ZNSt6vectorIdN3gmx30DefaultInitializationAllocatorIdSaIdEEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ig, i64 noundef %i.it)
  %i.iu = load ptr, ptr %i.ig, align 8, !tbaa !162 ; 11 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !163
  %i.ix = ptrtoint ptr %i.iw to i64
  %i.iy = ptrtoint ptr %i.iu to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.is ; 6 uses
  br i1 %.not65.i, label %._crit_edge73.thread.i, label %.lr.ph72.i.preheader

.lr.ph72.i.preheader:                             ; preds = %bb.x
  %i.jc = add nsw i64 %i.is, -1                   ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 0
  br i1 %i.jd, label %.lr.ph72.i.epil.preheader, label %.lr.ph72.i.preheader.new

.lr.ph72.i.preheader.new:                         ; preds = %.lr.ph72.i.preheader
  %unroll_iter = and i64 %i.is, -2
  br label %.lr.ph72.i

._crit_edge73.thread.i:                           ; preds = %bb.x
  call void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIdEEi(ptr noundef nonnull align 8 dereferenceable(104) %i.ia, ptr %i.iu, ptr %i.ja, i32 noundef %i.ic)
  br label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit

.lr.ph76.i.unr-lcssa:                             ; preds = %.lr.ph72.i
  %i.je = and i64 %16, 4
  %lcmp.mod285.not = icmp eq i64 %i.je, 0
  br i1 %lcmp.mod285.not, label %.lr.ph76.i, label %.lr.ph72.i.epil.preheader

.lr.ph72.i.epil.preheader:                        ; preds = %.lr.ph76.i.unr-lcssa, %.lr.ph72.i.preheader
  %.070.i.epil.init = phi i64 [ 0, %.lr.ph72.i.preheader ], [ %i.kx, %.lr.ph76.i.unr-lcssa ] ; 3 uses
  %lcmp.mod286 = trunc i64 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod286)
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.id, i64 %.070.i.epil.init
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !39
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.jh ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 32 ; 2 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !161
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.070.i.epil.init
  store double %i.jk, ptr %i.jl, align 8, !tbaa !42
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 72
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !342
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.070.i.epil.init
  store double %i.jn, ptr %i.jo, align 8, !tbaa !42
  %i.jp = load double, ptr %i.jj, align 8, !tbaa !161
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ji, i64 88 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !101
  %i.js = fadd double %i.jp, %i.jr
  store double %i.js, ptr %i.jq, align 8, !tbaa !101
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.unr-lcssa, %.lr.ph72.i.epil.preheader
  call void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIdEEi(ptr noundef nonnull align 8 dereferenceable(104) %i.ia, ptr nonnull %i.iu, ptr nonnull %i.ja, i32 noundef %i.ic)
  %i.jt = icmp eq i64 %i.jc, 0
  br i1 %i.jt, label %.epil.preheader, label %.lr.ph76.i.new

.lr.ph76.i.new:                                   ; preds = %.lr.ph76.i
  %unroll_iter290 = and i64 %i.is, -2
  br label %bb.y

.lr.ph72.i:                                       ; preds = %.lr.ph72.i, %.lr.ph72.i.preheader.new
  %.070.i = phi i64 [ 0, %.lr.ph72.i.preheader.new ], [ %i.kx, %.lr.ph72.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.i.preheader.new ], [ %niter.next.1, %.lr.ph72.i ]
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.id, i64 %.070.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !39
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.jw ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 2 uses
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !161
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.070.i
  store double %i.jz, ptr %i.ka, align 8, !tbaa !42
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !342
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.070.i
  store double %i.kc, ptr %i.kd, align 8, !tbaa !42
  %i.ke = load double, ptr %i.jy, align 8, !tbaa !161
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jx, i64 88 ; 2 uses
  %i.kg = load double, ptr %i.kf, align 8, !tbaa !101
  %i.kh = fadd double %i.ke, %i.kg
  store double %i.kh, ptr %i.kf, align 8, !tbaa !101
  %i.ki = or disjoint i64 %.070.i, 1              ; 3 uses
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !39
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.kl ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 32 ; 2 uses
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !161
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.ki
  store double %i.ko, ptr %i.kp, align 8, !tbaa !42
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 72
  %i.kr = load double, ptr %i.kq, align 8, !tbaa !342
  %i.ks = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.ki
  store double %i.kr, ptr %i.ks, align 8, !tbaa !42
  %i.kt = load double, ptr %i.kn, align 8, !tbaa !161
  %i.ku = getelementptr inbounds nuw i8, ptr %i.km, i64 88 ; 2 uses
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !101
  %i.kw = fadd double %i.kt, %i.kv
  store double %i.kw, ptr %i.ku, align 8, !tbaa !101
  %i.kx = add nuw i64 %.070.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph76.i.unr-lcssa, label %.lr.ph72.i, !llvm.loop !329

bb.y:                                             ; preds = %bb.y, %.lr.ph76.i.new
  %.03374.i = phi i64 [ 0, %.lr.ph76.i.new ], [ %i.mf, %bb.y ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph76.i.new ], [ %niter291.next.1, %bb.y ]
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.id, i64 %.03374.i
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !39
  %i.la = sext i32 %i.kz to i64
  %i.lb = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.la ; 4 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.03374.i
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !42 ; 2 uses
  %i.le = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.03374.i
  %i.lf = load double, ptr %i.le, align 8, !tbaa !42 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  store double %i.ld, ptr %i.lg, align 8, !tbaa !161
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  store double %i.lf, ptr %i.lh, align 8, !tbaa !342
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 40 ; 2 uses
  %i.lj = load double, ptr %i.li, align 8, !tbaa !74
  %i.lk = fadd double %i.ld, %i.lj
  store double %i.lk, ptr %i.li, align 8, !tbaa !74
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lb, i64 80 ; 2 uses
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !120
  %i.ln = fadd double %i.lf, %i.lm
  store double %i.ln, ptr %i.ll, align 8, !tbaa !120
  %i.lo = or disjoint i64 %.03374.i, 1            ; 3 uses
  %i.lp = getelementptr inbounds [4 x i8], ptr %i.id, i64 %i.lo
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !39
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.lr ; 4 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.lo
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !42 ; 2 uses
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %i.lo
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !42 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store double %i.lu, ptr %i.lx, align 8, !tbaa !161
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 72
  store double %i.lw, ptr %i.ly, align 8, !tbaa !342
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 40 ; 2 uses
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !74
  %i.mb = fadd double %i.lu, %i.ma
  store double %i.mb, ptr %i.lz, align 8, !tbaa !74
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ls, i64 80 ; 2 uses
  %i.md = load double, ptr %i.mc, align 8, !tbaa !120
  %i.me = fadd double %i.lw, %i.md
  store double %i.me, ptr %i.mc, align 8, !tbaa !120
  %i.mf = add nuw i64 %.03374.i, 2                ; 2 uses
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, label %bb.y, !llvm.loop !330

.lr.ph69.i:                                       ; preds = %._crit_edge.thread.i, %.lr.ph69.i
  %.sroa.0.068.i = phi ptr [ %i.mv, %.lr.ph69.i ], [ %i.id, %._crit_edge.thread.i ] ; 2 uses
  %i.mg = load i32, ptr %.sroa.0.068.i, align 4, !tbaa !39
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.mh ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 32
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !161 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 40 ; 2 uses
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !74
  %i.mn = fadd double %i.mk, %i.mm
  store double %i.mn, ptr %i.ml, align 8, !tbaa !74
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 72
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !342
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mi, i64 80 ; 2 uses
  %i.mr = load <2 x double>, ptr %i.mq, align 8, !tbaa !42
  %i.ms = insertelement <2 x double> poison, double %i.mp, i64 0
  %i.mt = insertelement <2 x double> %i.ms, double %i.mk, i64 1
  %i.mu = fadd <2 x double> %i.mt, %i.mr
  store <2 x double> %i.mu, ptr %i.mq, align 8, !tbaa !42
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.068.i, i64 4 ; 2 uses
  %.not63.i = icmp eq ptr %i.mv, %i.ie
  br i1 %.not63.i, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, label %.lr.ph69.i

_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa: ; preds = %bb.y
  %i.mw = and i64 %16, 4
  %lcmp.mod288.not = icmp eq i64 %i.mw, 0
  br i1 %lcmp.mod288.not, label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, %.lr.ph76.i
  %.03374.i.epil.init = phi i64 [ 0, %.lr.ph76.i ], [ %i.mf, %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod289 = trunc i64 %i.is to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.id, i64 %.03374.i.epil.init
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !39
  %i.mz = sext i32 %i.my to i64
  %i.na = getelementptr inbounds [96 x i8], ptr %i.hu, i64 %i.mz ; 4 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %.03374.i.epil.init
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !42 ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.jb, i64 %.03374.i.epil.init
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !42 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  store double %i.nc, ptr %i.nf, align 8, !tbaa !161
  %i.ng = getelementptr inbounds nuw i8, ptr %i.na, i64 72
  store double %i.ne, ptr %i.ng, align 8, !tbaa !342
  %i.nh = getelementptr inbounds nuw i8, ptr %i.na, i64 40 ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !74
  %i.nj = fadd double %i.nc, %i.ni
  store double %i.nj, ptr %i.nh, align 8, !tbaa !74
  %i.nk = getelementptr inbounds nuw i8, ptr %i.na, i64 80 ; 2 uses
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !120
  %i.nm = fadd double %i.ne, %i.nl
  store double %i.nm, ptr %i.nk, align 8, !tbaa !120
  br label %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit

_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit: ; preds = %.lr.ph69.i, %.epil.preheader, %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit.loopexit.unr-lcssa, %._crit_edge.i95, %._crit_edge73.thread.i
  %i.nn = load ptr, ptr %i.e, align 8, !tbaa !17  ; 4 uses
  %i.no = load ptr, ptr %i.g, align 8, !tbaa !16  ; 2 uses
  %i.np = load i32, ptr %i.ct, align 4, !tbaa !100 ; 2 uses
  %i.nq = load ptr, ptr %i.hz, align 8, !tbaa !118
  %i.nr = load i32, ptr %i.ib, align 4, !tbaa !119
  %i.ns = icmp eq i32 %i.np, 1
  br i1 %i.ns, label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit, label %bb.z

bb.z:                                             ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit
  %i.nt = ptrtoint ptr %i.nn to i64
  %i.nu = ptrtoint ptr %i.no to i64
  %i.nv = sub i64 %i.nu, %i.nt
  %i.nw = sdiv exact i64 %i.nv, 96                ; 5 uses
  %i.nx = icmp ugt i64 %i.nw, 1152921504606846975
  br i1 %i.nx, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.z
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #30
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.z
  %.not.i.i.i.i.i = icmp eq ptr %i.no, %i.nn      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i99, label %.noexc21.i

.noexc21.i:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ny = shl nuw nsw i64 %i.nw, 3
  %i.nz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #31 ; 6 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.nw
  store double 0.000000e+00, ptr %i.nz, align 8, !tbaa !42
  %i.ob = add nsw i64 %i.nw, -1                   ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %.lr.ph.preheader.i96, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i:             ; preds = %.noexc21.i
  %i.od = getelementptr i8, ptr %i.nz, i64 8
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ob, 3 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.od, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !42
  %i.oe = add nuw nsw i64 %.idx.i.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.of = lshr exact i64 %i.oe, 3
  br label %.lr.ph.preheader.i96

.lr.ph.preheader.i96:                             ; preds = %.noexc21.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i
  %i.og = phi i64 [ %i.of, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i ], [ 1, %.noexc21.i ]
  %i.oh = phi i64 [ %i.oe, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i ], [ 8, %.noexc21.i ]
  br label %.lr.ph.i97

._crit_edge.i99.loopexit:                         ; preds = %bb.ab
  %i.oi = ptrtoint ptr %i.nz to i64
  %i.oj = ptrtoint ptr %i.oa to i64
  br label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %._crit_edge.i99.loopexit, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ok = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.oh, %._crit_edge.i99.loopexit ]
  %i.ol = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.oi, %._crit_edge.i99.loopexit ] ; 2 uses
  %.sroa.025.057.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.nz, %._crit_edge.i99.loopexit ] ; 7 uses
  %.sroa.15.056.i = phi i64 [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.oj, %._crit_edge.i99.loopexit ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.025.057.i, i64 %i.ok
  invoke void @_ZNK3gmx11BiasSharing25sumOverSharingSimulationsENS_8ArrayRefIdEEi(ptr noundef nonnull align 8 dereferenceable(104) %i.nq, ptr %.sroa.025.057.i, ptr %i.om, i32 noundef %i.nr)
          to label %bb.ac unwind label %bb.ae

.lr.ph.i97:                                       ; preds = %bb.ab, %.lr.ph.preheader.i96
  %.01639.i = phi i64 [ %i.ow, %bb.ab ], [ 0, %.lr.ph.preheader.i96 ] ; 3 uses
  %i.on = getelementptr inbounds [96 x i8], ptr %i.nn, i64 %.01639.i ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load double, ptr %i.oo, align 8, !tbaa !21
  %i.oq = fcmp ogt double %i.op, 0.000000e+00
  br i1 %i.oq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i97
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 64
  %i.os = load double, ptr %i.or, align 8, !tbaa !22
  %i.ot = call double @exp(double noundef %i.os) #33
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i97
  %i.ou = phi double [ %i.ot, %bb.aa ], [ 0.000000e+00, %.lr.ph.i97 ]
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %.01639.i
  store double %i.ou, ptr %i.ov, align 8, !tbaa !42
  %i.ow = add nuw i64 %.01639.i, 1                ; 2 uses
  %exitcond.not.i98 = icmp eq i64 %i.ow, %i.og
  br i1 %exitcond.not.i98, label %._crit_edge.i99.loopexit, label %.lr.ph.i97, !llvm.loop !331

bb.ac:                                            ; preds = %._crit_edge.i99
  %i.ox = sitofp i32 %i.np to double
  %i.oy = fdiv nnan double 1.000000e+00, %i.ox
  br i1 %.not.i.i.i.i.i, label %._crit_edge44.i, label %.lr.ph43.i

._crit_edge44.i:                                  ; preds = %bb.ah, %bb.ac
  %.not.i.i.i.i100 = icmp eq ptr %.sroa.025.057.i, null
  br i1 %.not.i.i.i.i100, label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge44.i
  %i.oz = sub i64 %.sroa.15.056.i, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.057.i, i64 noundef %i.oz) #32
  br label %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit

bb.ae:                                            ; preds = %._crit_edge.i99
  %i.pa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i22.i = icmp eq ptr %.sroa.025.057.i, null
  br i1 %.not.i.i.i22.i, label %common.resume, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pb = sub i64 %.sroa.15.056.i, %i.ol
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.025.057.i, i64 noundef %i.pb) #32
  br label %common.resume

.lr.ph43.i:                                       ; preds = %bb.ac, %bb.ah
  %.041.i = phi i64 [ %i.pl, %bb.ah ], [ 0, %bb.ac ] ; 3 uses
  %i.pc = getelementptr inbounds nuw [96 x i8], ptr %i.nn, i64 %.041.i ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !21
  %i.pf = fcmp ogt double %i.pe, 0.000000e+00
  br i1 %i.pf, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph43.i
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.025.057.i, i64 %.041.i
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !42
  %i.pi = fmul double %i.oy, %i.ph
  %i.pj = call double @log(double noundef %i.pi) #33
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pc, i64 64
  store double %i.pj, ptr %i.pk, align 8, !tbaa !22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph43.i
  %i.pl = add nuw nsw i64 %.041.i, 1              ; 2 uses
  %exitcond46.not.i = icmp eq i64 %i.pl, %i.nw
  br i1 %exitcond46.not.i, label %._crit_edge44.i, label %.lr.ph43.i, !llvm.loop !332

_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit: ; preds = %_ZN3gmx12_GLOBAL__N_113sumHistogramsENS_8ArrayRefINS_10PointStateEEENS1_IdEEiPKNS_11BiasSharingEiNS1_IKiEEPSt6vectorIdNS_30DefaultInitializationAllocatorIdSaIdEEEE.exit, %._crit_edge44.i, %bb.ad
  %i.pm = load ptr, ptr %9, align 8, !tbaa !38    ; 2 uses
  %i.pn = load ptr, ptr %i.ar, align 8, !tbaa !38 ; 2 uses
  %.not156166.not = icmp eq ptr %i.pm, %i.pn
  br i1 %.not156166.not, label %._crit_edge, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit
  %i.po = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph169
  %.sroa.0137.0167 = phi ptr [ %i.pm, %.lr.ph169 ], [ %i.pw, %bb.ai ] ; 2 uses
  %i.pp = load i32, ptr %.sroa.0137.0167, align 4, !tbaa !39
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [96 x i8], ptr %i.po, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !90
  %i.pu = call noundef double @llvm.fabs.f64(double %i.pt)
  %i.pv = fcmp ogt double %i.pu, 3.500000e+02     ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.sroa.0137.0167, i64 4 ; 2 uses
  %.not156.not = icmp eq ptr %i.pw, %i.pn
  %or.cond280 = select i1 %i.pv, i1 true, i1 %.not156.not
  br i1 %or.cond280, label %._crit_edge, label %bb.ai

._crit_edge:                                      ; preds = %bb.ai, %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit
  %.not156.lcssa = phi i1 [ false, %_ZN3gmx12_GLOBAL__N_16sumPmfENS_8ArrayRefINS_10PointStateEEEiPKNS_11BiasSharingEi.exit ], [ %i.pv, %bb.ai ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.py = load i8, ptr %i.px, align 4, !tbaa !94, !range !95, !noundef !96
  %i.pz = trunc nuw i8 %i.py to i1
  br i1 %i.pz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %._crit_edge
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.qb = load i8, ptr %i.qa, align 8, !tbaa !98, !range !95, !noundef !96
  %i.qc = trunc nuw i8 %i.qb to i1
  %i.qd = xor i1 %i.qc, true
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge
  %i.qe = phi i1 [ false, %._crit_edge ], [ %i.qd, %bb.aj ]
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !88
  %i.qh = icmp ne i32 %i.qg, 0
  %or.cond = or i1 %i.qe, %i.qh
  br i1 %or.cond, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.qi = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !343
  %i.qk = srem i64 %7, %i.qj
  %i.ql = icmp eq i64 %i.qk, 0
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.qm = phi i1 [ false, %bb.ak ], [ %i.ql, %bb.al ] ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.qo = load i8, ptr %i.qn, align 8, !tbaa !98, !range !95, !noundef !96
  %i.qp = trunc nuw i8 %i.qo to i1
  %i.qq = icmp sgt i64 %7, 0
  %or.cond155 = and i1 %i.qq, %i.qp
  br i1 %or.cond155, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit: ; preds = %bb.am
  %i.qr = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !344
  %i.qt = srem i64 %7, %i.qs
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %bb.an, label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

bb.an:                                            ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit
  %i.qv = call noundef zeroext i1 @_ZNK3gmx9BiasState23isSamplingRegionCoveredERKNS_10BiasParamsENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridE(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef nonnull align 8 dereferenceable(137) %4, ptr %1, ptr poison, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br label %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread

_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit.thread: ; preds = %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit, %bb.an, %bb.am
  %.067 = phi i1 [ false, %bb.am ], [ false, %_ZNK3gmx10BiasParams19isCheckCoveringStepEl.exit ], [ %i.qv, %bb.an ] ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.qx = load ptr, ptr %i.e, align 8, !tbaa !17  ; 3 uses
  %i.qy = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qx to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qx, i64 %i.rb
  %i.rd = load ptr, ptr %i.hv, align 8, !tbaa !81 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3gmx9BiasState24sampleProbabilityWeightsERKNS_8BiasGridENS_8ArrayRefIKdEE:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index
  %wide.load = load <4 x i32>, ptr %i.bk, align 4, !tbaa !39, !alias.scope !373 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  %wide.load59 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !39, !alias.scope !374 ; 2 uses
  %i.bm = icmp sgt <4 x i32> %wide.load, %wide.load59
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.ad, <4 x i64> %vec.ind
  %wide.gep60 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 36
  %wide.masked.gather = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %wide.gep60, <4 x i1> %i.bm, <4 x i32> zeroinitializer), !tbaa !155, !alias.scope !375
  %predphi = add nsw <4 x i32> %wide.load59, %wide.masked.gather
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %index ; 2 uses
  %wide.load61 = load <4 x i32>, ptr %i.bn, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.bo = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %wide.load61)
  store <4 x i32> %i.bo, ptr %i.bn, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index ; 2 uses
  %wide.load62 = load <4 x i32>, ptr %i.bp, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %i.bq = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load62, <4 x i32> %predphi)
  store <4 x i32> %i.bq, ptr %i.bp, align 8, !tbaa !39, !alias.scope !376, !noalias !377
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !371

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge43, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph42, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph42 ], [ %n.vec, %middle.block ] ; 8 uses
  %.neg = or disjoint i64 %indvars.iv.ph, 1
  %xtraiter64 = and i64 %i.ah, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  br i1 %lcmp.mod65.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.ph
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !39 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !39 ; 3 uses
  %i.bw = icmp sgt i32 %i.bt, %i.bv
  br i1 %i.bw, label %bb.c, label %scalar.ph.prol.loopexit.unr-lcssa

bb.c:                                             ; preds = %scalar.ph.prol
  %i.bx = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.ph
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 36
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !155
  %i.ca = add nsw i32 %i.bz, %i.bv
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.c, %scalar.ph.prol
  %.036.prol = phi i32 [ %i.ca, %bb.c ], [ %i.bv, %scalar.ph.prol ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.ph ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !39
  %.sroa.speculated32.prol = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %i.cc)
  store i32 %.sroa.speculated32.prol, ptr %i.cb, align 8, !tbaa !39
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !39
  %.sroa.speculated.prol = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 %.036.prol)
  store i32 %.sroa.speculated.prol, ptr %i.cd, align 8, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.cf = icmp eq i64 %wide.trip.count, %.neg
  br i1 %i.cf, label %._crit_edge43, label %scalar.ph

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %.02538 = phi i64 [ 0, %.lr.ph.new ], [ %i.dt, %bb.d ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.d ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.02538
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !39
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.ci
  %i.ck = getelementptr inbounds [8 x i8], ptr %2, i64 %.02538
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !161
  %i.co = fadd double %i.cl, %i.cn
  store double %i.co, ptr %i.cm, align 8, !tbaa !161
  %i.cp = or disjoint i64 %.02538, 1              ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !39
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cp
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !42
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !161
  %i.cy = fadd double %i.cv, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !161
  %i.cz = or disjoint i64 %.02538, 2              ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !39
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dc
  %i.de = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cz
  %i.df = load double, ptr %i.de, align 8, !tbaa !42
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 32 ; 2 uses
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !161
  %i.di = fadd double %i.df, %i.dh
  store double %i.di, ptr %i.dg, align 8, !tbaa !161
  %i.dj = or disjoint i64 %.02538, 3              ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !39
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %i.dm
  %i.do = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dj
  %i.dp = load double, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 2 uses
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !161
  %i.ds = fadd double %i.dp, %i.dr
  store double %i.ds, ptr %i.dq, align 8, !tbaa !161
  %i.dt = add nuw i64 %.02538, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3

._crit_edge43:                                    ; preds = %scalar.ph.prol.loopexit, %bb.g, %middle.block, %._crit_edge
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.g ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !39 ; 2 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !39 ; 3 uses
  %i.dy = icmp sgt i32 %i.dv, %i.dx
  br i1 %i.dy, label %bb.e, label %scalar.ph.1

bb.e:                                             ; preds = %scalar.ph
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 36
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !155
  %i.ec = add nsw i32 %i.eb, %i.dx
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %bb.e, %scalar.ph
  %.036 = phi i32 [ %i.ec, %bb.e ], [ %i.dx, %scalar.ph ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !39
  %.sroa.speculated32 = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %i.ee)
  store i32 %.sroa.speculated32, ptr %i.ed, align 4, !tbaa !39
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !39
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 %.036)
  store i32 %.sroa.speculated, ptr %i.ef, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %indvars.iv.next
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !39 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !39 ; 3 uses
  %i.el = icmp sgt i32 %i.ei, %i.ek
  br i1 %i.el, label %bb.f, label %bb.g

bb.f:                                             ; preds = %scalar.ph.1
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv.next
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 36
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !155
  %i.ep = add nsw i32 %i.eo, %i.ek
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %scalar.ph.1
  %.036.1 = phi i32 [ %i.ep, %bb.f ], [ %i.ek, %scalar.ph.1 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !39
  %.sroa.speculated32.1 = tail call i32 @llvm.smin.i32(i32 %i.ei, i32 %i.er)
  store i32 %.sroa.speculated32.1, ptr %i.eq, align 4, !tbaa !39
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !39
  %.sroa.speculated.1 = tail call i32 @llvm.smax.i32(i32 %i.et, i32 %.036.1)
  store i32 %.sroa.speculated.1, ptr %i.es, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond45.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond45.not.1, label %._crit_edge43, label %scalar.ph, !llvm.loop !372
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx9BiasState17sampleCoordAndPmfERKSt6vectorINS_9DimParamsESaIS2_EERKNS_8BiasGridENS_8ArrayRefIKdEEd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, double noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132  ; 4 uses
  %i.d = tail call i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2) ; 2 uses
  %i.e = and i64 %i.d, 4294967296
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = load ptr, ptr %2, align 8, !tbaa !32
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !122  ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = tail call i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !391 ; 2 uses
  %i.o = and i64 %i.n, 4294967296
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEEENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 249) #30, !noalias !391
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK3gmx8BiasGrid18numFepLambdaStatesEv(ptr noundef nonnull align 8 dereferenceable(48) %2), !noalias !391 ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = icmp slt i32 %i.p, 0
  br i1 %i.r, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #30, !noalias !391
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.d
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit.i, label %.noexc15.i

.noexc15.i:                                       ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.s = shl nuw nsw i64 %i.q, 3                  ; 2 uses
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #31, !noalias !391 ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !42, !noalias !391
  %i.v = ptrtoint ptr %i.u to i64
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i, %.noexc15.i
  %.sroa.9.0 = phi i64 [ %i.v, %.noexc15.i ], [ 0, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.055.0 = phi ptr [ %i.t, %.noexc15.i ], [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 12 uses
  %.not23.i = icmp eq ptr %i.l, %i.j
  br i1 %.not23.i, label %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  %6 = ptrtoint ptr %i.l to i64
  %7 = sub i64 %6, %i.m
  %i.w = ashr exact i64 %7, 2                     ; 3 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !32, !noalias !391
  %sext.i = shl i64 %i.n, 32
  %i.y = ashr exact i64 %sext.i, 29
  %invariant.gep.i = getelementptr i8, ptr %i.x, i64 %i.y ; 5 uses
  %xtraiter = and i64 %i.w, 3                     ; 3 uses
  %i.z = icmp ult i64 %i.w, 4
  br i1 %i.z, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.w, -4
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.022.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bv, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.e ]
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.022.i
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !39, !noalias !391
  %i.ac = sext i32 %i.ab to i64
  %gep.i = getelementptr [72 x i8], ptr %invariant.gep.i, i64 %i.ac
  %i.ad = load double, ptr %gep.i, align 8, !tbaa !42, !noalias !391
  %i.ae = fptosi double %i.ad to i32
  %i.af = getelementptr inbounds [8 x i8], ptr %3, i64 %.022.i
  %i.ag = load double, ptr %i.af, align 8, !tbaa !42, !noalias !391
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.ah ; 2 uses
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !42, !noalias !391
  %i.ak = fadd double %i.ag, %i.aj
  store double %i.ak, ptr %i.ai, align 8, !tbaa !42, !noalias !391
  %i.al = or disjoint i64 %.022.i, 1              ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !39, !noalias !391
  %i.ao = sext i32 %i.an to i64
  %gep.i.1 = getelementptr [72 x i8], ptr %invariant.gep.i, i64 %i.ao
  %i.ap = load double, ptr %gep.i.1, align 8, !tbaa !42, !noalias !391
  %i.aq = fptosi double %i.ap to i32
  %i.ar = getelementptr inbounds [8 x i8], ptr %3, i64 %i.al
  %i.as = load double, ptr %i.ar, align 8, !tbaa !42, !noalias !391
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.at ; 2 uses
  %i.av = load double, ptr %i.au, align 8, !tbaa !42, !noalias !391
  %i.aw = fadd double %i.as, %i.av
  store double %i.aw, ptr %i.au, align 8, !tbaa !42, !noalias !391
  %i.ax = or disjoint i64 %.022.i, 2              ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !39, !noalias !391
  %i.ba = sext i32 %i.az to i64
  %gep.i.2 = getelementptr [72 x i8], ptr %invariant.gep.i, i64 %i.ba
  %i.bb = load double, ptr %gep.i.2, align 8, !tbaa !42, !noalias !391
  %i.bc = fptosi double %i.bb to i32
  %i.bd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ax
  %i.be = load double, ptr %i.bd, align 8, !tbaa !42, !noalias !391
  %i.bf = sext i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.bf ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !42, !noalias !391
  %i.bi = fadd double %i.be, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !42, !noalias !391
  %i.bj = or disjoint i64 %.022.i, 3              ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !39, !noalias !391
  %i.bm = sext i32 %i.bl to i64
  %gep.i.3 = getelementptr [72 x i8], ptr %invariant.gep.i, i64 %i.bm
  %i.bn = load double, ptr %gep.i.3, align 8, !tbaa !42, !noalias !391
  %i.bo = fptosi double %i.bn to i32
  %i.bp = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bj
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !42, !noalias !391
  %i.br = sext i32 %i.bo to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.br ; 2 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !42, !noalias !391
  %i.bu = fadd double %i.bq, %i.bt
  store double %i.bu, ptr %i.bs, align 8, !tbaa !42, !noalias !391
  %i.bv = add nuw i64 %.022.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !380

_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit.loopexit.unr-lcssa: ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.022.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bv, %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod94)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.022.i.epil = phi i64 [ %.022.i.epil.init, %.epil.preheader ], [ %i.ch, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.022.i.epil
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !39, !noalias !391
  %i.by = sext i32 %i.bx to i64
  %gep.i.epil = getelementptr [72 x i8], ptr %invariant.gep.i, i64 %i.by
  %i.bz = load double, ptr %gep.i.epil, align 8, !tbaa !42, !noalias !391
  %i.ca = fptosi double %i.bz to i32
  %i.cb = getelementptr inbounds [8 x i8], ptr %3, i64 %.022.i.epil
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !42, !noalias !391
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.cd ; 2 uses
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !42, !noalias !391
  %i.cg = fadd double %i.cc, %i.cf
  store double %i.cg, ptr %i.ce, align 8, !tbaa !42, !noalias !391
  %i.ch = add nuw i64 %.022.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit, label %bb.f, !llvm.loop !381

_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit: ; preds = %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit.loopexit.unr-lcssa, %bb.f, %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ci = load <4 x double>, ptr %0, align 8, !tbaa !42
  store <4 x double> %i.ci, ptr %i.a, align 16, !tbaa !42
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !122
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !123 ; 2 uses
  %.not72 = icmp eq ptr %i.cj, %i.ck
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit
  %sext = shl i64 %i.d, 32
  %i.cl = ashr exact i64 %sext, 32                ; 2 uses
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.r, %_ZN3gmx12_GLOBAL__N_137calculateFELambdaMarginalDistributionERKNS_8BiasGridENS_8ArrayRefIKiEENS4_IKdEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %.not.i.i.i = icmp eq ptr %.sroa.055.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.cp = ptrtoint ptr %.sroa.055.0 to i64
  %i.cq = sub i64 %.sroa.9.0, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0, i64 noundef %i.cq) #32
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.h:                                             ; preds = %.lr.ph, %bb.r
  %i.cr = phi ptr [ %i.ck, %.lr.ph ], [ %i.dy, %bb.r ]
  %.03971 = phi i64 [ 0, %.lr.ph ], [ %i.dw, %bb.r ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %.03971
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !39 ; 3 uses
  %i.cu = invoke noundef zeroext i1 @_ZN3gmx21pointsAlongLambdaAxisERKNS_8BiasGridEii(ptr noundef nonnull align 8 dereferenceable(48) %2, i32 noundef %i.c, i32 noundef %i.ct)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  br i1 %i.cu, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.cv = sext i32 %i.ct to i64                   ; 3 uses
  %i.cw = load ptr, ptr %2, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw [72 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cl
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !42 ; 2 uses
  %i.da = icmp eq i32 %i.ct, %i.c                 ; 2 uses
  br i1 %i.da, label %bb.m, label %_ZNKRSt8optionalIiE5valueEv.exit43

bb.k:                                             ; preds = %bb.h
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.l:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNKRSt8optionalIiE5valueEv.exit43:               ; preds = %bb.j
  store double %i.cz, ptr %i.cm, align 8, !tbaa !42
  %i.dd = load ptr, ptr %1, align 8, !tbaa !394   ; 3 uses
  %i.de = load ptr, ptr %i.cn, align 8, !tbaa !395
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dd to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dh
  %i.dj = invoke noundef double @_ZNK3gmx9BiasState17calcConvolvedBiasENS_8ArrayRefIKNS_9DimParamsEEERKNS_8BiasGridERA4_Kd(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr %i.dd, ptr %i.di, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.m unwind label %bb.l

bb.m:                                             ; preds = %_ZNKRSt8optionalIiE5valueEv.exit43, %bb.j
  %.038 = phi double [ %5, %bb.j ], [ %i.dj, %_ZNKRSt8optionalIiE5valueEv.exit43 ]
  %i.dk = fptoui double %i.cz to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.055.0, i64 %i.dk
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !42 ; 2 uses
  %i.dn = fcmp olt double %i.dm, f0x0010000000000000
  %.sroa.speculated = select i1 %i.dn, double f0x0010000000000000, double %i.dm
  %i.do = call double @log(double noundef %.sroa.speculated) #33
  %i.dp = fsub double %.038, %i.do                ; 2 uses
  br i1 %i.da, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.dq = invoke noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull %0)
          to label %bb.o unwind label %.thread

bb.o:                                             ; preds = %bb.n
  br i1 %i.dq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.co, align 8, !tbaa !17
  %i.ds = getelementptr inbounds nuw [96 x i8], ptr %i.dr, i64 %i.cv
  invoke void @_ZN3gmx10PointState9samplePmfEd(ptr noundef nonnull align 8 dereferenceable(96) %i.ds, double noundef %i.dp)
          to label %bb.r unwind label %.thread

end_hunk_1
