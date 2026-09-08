Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RegAllocGreedy?download=true
inline.NumInlined: 5700
inline.NumDeleted: 2878
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4llvm8RAGreedy14calcGapWeightsENS_10MCRegisterERNS_15SmallVectorImplIfEE:bb.a
  br i1 %i.gf, label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iteratorD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.ge) #25
  br label %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iteratorD2Ev.exit

_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iteratorD2Ev.exit: ; preds = %.critedge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN4llvm17MCRegUnitIteratorppEv.exit

_ZN4llvm17MCRegUnitIteratorppEv.exit:             ; preds = %bb.c, %_ZN4llvm11IntervalMapINS_9SlotIndexEPKNS_12LiveIntervalELj8ENS_15IntervalMapInfoIS1_EEE14const_iteratorD2Ev.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.5117.0155, i64 2
  %i.gh = load i16, ptr %.sroa.5117.0155, align 2, !tbaa !503 ; 2 uses
  %i.gi = sext i16 %i.gh to i32
  %i.gj = add i32 %.sroa.9119.0154, %i.gi
  %.not.i.i93 = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i93, label %._crit_edge, label %bb.c

._crit_edge167:                                   ; preds = %.critedge2, %_ZN4llvm15SmallVectorImplIfE6assignEmf.exit, %._crit_edge
  ret void

bb.r:                                             ; preds = %.lr.ph166, %.critedge2
  %.sroa.5104.0164 = phi ptr [ %i.bt, %.lr.ph166 ], [ %i.je, %.critedge2 ] ; 2 uses
  %.sroa.9.0163 = phi i32 [ %i.bu, %.lr.ph166 ], [ %i.jh, %.critedge2 ] ; 3 uses
  %i.gk = load ptr, ptr %i.bv, align 8, !tbaa !384 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 408 ; 2 uses
  %i.gm = zext i32 %.sroa.9.0163 to i64           ; 2 uses
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !40
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !1101 ; 2 uses
  %.not.i = icmp eq ptr %i.gp, null
  br i1 %.not.i, label %bb.s, label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit

bb.s:                                             ; preds = %bb.r
  %i.gq = call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26 ; 12 uses
  %i.gr = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm24UseSegmentSetForPhysRegsE, i64 120), align 8, !tbaa !426, !range !46, !noundef !47
  %i.gs = trunc nuw i8 %i.gr to i1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store ptr %i.gt, ptr %i.gq, align 8, !tbaa !40
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store i32 0, ptr %i.gu, align 8, !tbaa !70
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i32 2, ptr %i.gv, align 4, !tbaa !71
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 80
  store ptr %i.gx, ptr %i.gw, align 8, !tbaa !40
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 72
  store i32 0, ptr %i.gy, align 8, !tbaa !70
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 76
  store i32 2, ptr %i.gz, align 4, !tbaa !71
  br i1 %i.gs, label %bb.t, label %_ZN4llvm9LiveRangeC2Eb.exit.i

bb.t:                                             ; preds = %bb.s
  %i.ha = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #26, !noalias !1102 ; 6 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ha, i8 0, i64 32, i1 false), !noalias !1102
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !78, !noalias !1102
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %i.hb, ptr %i.hd, align 16, !tbaa !79, !noalias !1102
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store i64 0, ptr %i.he, align 8, !tbaa !80, !noalias !1102
  br label %_ZN4llvm9LiveRangeC2Eb.exit.i

_ZN4llvm9LiveRangeC2Eb.exit.i:                    ; preds = %bb.t, %bb.s
  %storemerge.i.i = phi ptr [ %i.ha, %bb.t ], [ null, %bb.s ]
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gq, i64 96
  store ptr %storemerge.i.i, ptr %i.hf, align 8, !tbaa !1103
  %i.hg = load ptr, ptr %i.gl, align 8, !tbaa !40
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %i.gm
  store ptr %i.gq, ptr %i.hh, align 8, !tbaa !1101
  call void @_ZN4llvm13LiveIntervals19computeRegUnitRangeERNS_9LiveRangeENS_9MCRegUnitE(ptr noundef nonnull align 8 dereferenceable(424) %i.gk, ptr noundef nonnull align 8 dereferenceable(104) %i.gq, i32 noundef %.sroa.9.0163) #25
  br label %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit

_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit: ; preds = %bb.r, %_ZN4llvm9LiveRangeC2Eb.exit.i
  %.0.i = phi ptr [ %i.gp, %bb.r ], [ %i.gq, %_ZN4llvm9LiveRangeC2Eb.exit.i ] ; 3 uses
  %i.hi = call noundef ptr @_ZN4llvm9LiveRange4findENS_9SlotIndexE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i, i64 %.sroa.045.0) #25 ; 2 uses
  %i.hj = load ptr, ptr %.0.i, align 8, !tbaa !40
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !70
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %i.hj, i64 %i.hm ; 2 uses
  %.not156 = icmp eq ptr %i.hi, %i.hn
  br i1 %.not156, label %.critedge2, label %.lr.ph159

.lr.ph159:                                        ; preds = %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit
  %i.ho = load i32, ptr %i.by, align 8, !tbaa !497
  %i.hp = or i32 %i.ho, %i.cb
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph159, %bb.z
  %.0158 = phi i32 [ 0, %.lr.ph159 ], [ %.3216, %bb.z ]
  %.069157 = phi ptr [ %i.hi, %.lr.ph159 ], [ %i.jd, %bb.z ] ; 3 uses
  %.0.copyload.i.i.i.i.i.i94 = load i64, ptr %.069157, align 8 ; 2 uses
  %i.hq = and i64 %.0.copyload.i.i.i.i.i.i94, -8
  %i.hr = inttoptr i64 %i.hq to ptr
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !497
  %i.hu = trunc i64 %.0.copyload.i.i.i.i.i.i94 to i32
  %i.hv = lshr i32 %i.hu, 1
  %i.hw = and i32 %i.hv, 3
  %i.hx = or i32 %i.hw, %i.ht                     ; 2 uses
  %i.hy = icmp ult i32 %i.hx, %i.hp
  br i1 %i.hy, label %.preheader143, label %.critedge2

.preheader143:                                    ; preds = %bb.u, %bb.v
  %.1 = phi i32 [ %i.hz, %bb.v ], [ %.0158, %bb.u ] ; 3 uses
  %i.hz = add i32 %.1, 1                          ; 3 uses
  %i.ia = zext i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ia
  %.0.copyload.i.i.i.i.i95 = load i64, ptr %i.ib, align 8
  %i.ic = and i64 %.0.copyload.i.i.i.i.i95, -8
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !497
  %i.ig = or i32 %i.if, 3
  %i.ih = icmp ult i32 %i.ig, %i.hx
  br i1 %i.ih, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader143
  %i.ii = icmp eq i32 %i.hz, %i.i
  br i1 %i.ii, label %.critedge2, label %.preheader143, !llvm.loop !1093

bb.w:                                             ; preds = %.preheader143
  %i.ij = icmp eq i32 %.1, %i.i
  br i1 %i.ij, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.ik = getelementptr inbounds nuw i8, ptr %.069157, i64 8
  %i.il = load ptr, ptr %2, align 8, !tbaa !40
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %.not80 = icmp eq i32 %i.io, %i.i
  br i1 %.not80, label %.critedge2, label %bb.y, !llvm.loop !1094

bb.y:                                             ; preds = %.preheader, %bb.x
  %.3216 = phi i32 [ %.1, %.preheader ], [ %i.io, %bb.x ] ; 3 uses
  %i.im = zext i32 %.3216 to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  store float %i.cc, ptr %i.in, align 4, !tbaa !739
  %i.io = add i32 %.3216, 1                       ; 3 uses
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ip
  %.0.copyload.i.i.i.i.i97 = load i64, ptr %i.iq, align 8
  %i.ir = and i64 %.0.copyload.i.i.i.i.i97, -8
  %.sroa.0.0.copyload = load i64, ptr %i.ik, align 8, !tbaa !254 ; 2 uses
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 24
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !497
  %i.iv = and i64 %.sroa.0.0.copyload, -8
  %i.iw = inttoptr i64 %i.iv to ptr
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !497
  %i.iz = trunc i64 %.sroa.0.0.copyload to i32
  %i.ja = lshr i32 %i.iz, 1
  %i.jb = and i32 %i.ja, 3
  %i.jc = or i32 %i.jb, %i.iy
  %.not140 = icmp ult i32 %i.iu, %i.jc
  br i1 %.not140, label %bb.x, label %bb.z, !llvm.loop !1094

bb.z:                                             ; preds = %bb.y
  %i.jd = getelementptr inbounds nuw i8, ptr %.069157, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.jd, %i.hn
  br i1 %.not, label %.critedge2, label %bb.u, !llvm.loop !1095

.critedge2:                                       ; preds = %bb.z, %bb.u, %bb.w, %bb.v, %bb.x, %_ZN4llvm13LiveIntervals10getRegUnitENS_9MCRegUnitE.exit
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.5104.0164, i64 2
  %i.jf = load i16, ptr %.sroa.5104.0164, align 2, !tbaa !503 ; 2 uses
  %i.jg = sext i16 %i.jf to i32
  %i.jh = add i32 %.sroa.9.0163, %i.jg
  %.not.i.i99 = icmp eq i16 %i.jf, 0
  br i1 %.not.i.i99, label %._crit_edge167, label %bb.r
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN4llvm8RAGreedy13tryLocalSplitERKNS_12LiveIntervalERNS_15AllocationOrderERNS_15SmallVectorImplINS_8RegisterEEE(ptr noundef nonnull align 8 dereferenceable(29066) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SmallVector.368", align 8 ; 10 uses
  %5 = alloca %"class.llvm::SmallVector.741", align 8 ; 10 uses
  %6 = alloca %"class.llvm::LiveRangeEdit", align 8 ; 23 uses
  %7 = alloca %"class.llvm::SmallVector.368", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !444  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.f = load i32, ptr %i.e, align 8, !tbaa !70
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.b, label %bb.bf

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.j = load i32, ptr %i.i, align 8, !tbaa !70   ; 2 uses
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %bb.bf, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %i.j, -1                         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i32 0, ptr %i.n, align 8, !tbaa !70
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 8, ptr %i.o, align 4, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !167
  %i.r = call noundef zeroext i1 @_ZN4llvm13LiveRegMatrix24checkRegMaskInterferenceERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %i.q, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 0) #25
  %.pre323 = load ptr, ptr %i.d, align 8, !tbaa !624 ; 3 uses
  br i1 %i.r, label %bb.d, label %.loopexit265

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !384  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pre323, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !664
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.x = zext i32 %i.v to i64
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.ac = zext i32 %.sroa.0.0.copyload.i to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.ac ; 5 uses
  %.not261 = icmp eq i32 %.sroa.4.0.copyload.i, 0
  br i1 %.not261, label %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit, label %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i

_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i: ; preds = %bb.d
  %i.ae = zext i32 %.sroa.4.0.copyload.i to i64
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.h, align 8
  %i.af = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !497
  %i.aj = or i32 %i.ai, 2
  br label %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i
  %.017.i.i.i = phi i64 [ %i.ae, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %.01116.i.i.i = phi ptr [ %i.ad, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i.i.i ], [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.ak = lshr i64 %.017.i.i.i, 1                 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.01116.i.i.i, i64 %i.ak ; 2 uses
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8 ; 2 uses
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !497
  %i.aq = trunc i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i to i32
  %i.ar = lshr i32 %i.aq, 1
  %i.as = and i32 %i.ar, 3
  %i.at = or i32 %i.as, %i.ap
  %i.au = icmp ult i32 %i.at, %i.aj               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aw = xor i64 %i.ak, -1
  %i.ax = add nsw i64 %.017.i.i.i, %i.aw
  %.112.i.i.i = select i1 %i.au, ptr %i.av, ptr %.01116.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.au, i64 %i.ax, i64 %i.ak ; 2 uses
  %i.ay = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ay, label %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit, !llvm.loop !1104

_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit: ; preds = %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.d
  %.011.lcssa.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %.112.i.i.i, %_ZSt9__advanceIPKN4llvm9SlotIndexElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ]
  %i.az = ptrtoint ptr %.011.lcssa.i.i.i to i64
  %i.ba = ptrtoint ptr %i.ad to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = lshr exact i64 %i.bb, 3
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %.not357 = icmp eq i32 %.sroa.4.0.copyload.i, %i.bd
  br i1 %.not357, label %.loopexit265, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit
  %8 = zext i32 %i.l to i64                       ; 2 uses
  br label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph273.preheader ], [ %indvars.iv.next, %.critedge ] ; 3 uses
  %.0125272 = phi i32 [ %i.bd, %.lr.ph273.preheader ], [ %.2, %.critedge ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.next ; 2 uses
  %.sroa.084.0.copyload = load i64, ptr %i.be, align 8, !tbaa !254 ; 2 uses
  %i.bf = zext i32 %.0125272 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.bf
  %.sroa.083.0.copyload = load i64, ptr %i.bg, align 8, !tbaa !254 ; 2 uses
  %i.bh = and i64 %.sroa.084.0.copyload, -8
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !497
  %i.bl = and i64 %.sroa.083.0.copyload, -8
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !497
  %i.bp = icmp ult i32 %i.bk, %i.bo
  br i1 %i.bp, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.lr.ph273
  %i.bq = xor i64 %.sroa.083.0.copyload, %.sroa.084.0.copyload
  %i.br = icmp ult i64 %i.bq, 8
  %i.bs = icmp eq i64 %indvars.iv.next, %8
  %or.cond171 = and i1 %i.bs, %i.br
  br i1 %or.cond171, label %.loopexit265.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bt = load i32, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.bu = load i32, ptr %i.o, align 4, !tbaa !71
  %.not.i = icmp ult i32 %i.bt, %i.bu
  br i1 %.not.i, label %bb.h, label %bb.g, !prof !468

bb.g:                                             ; preds = %bb.f
  %i.bv = trunc nuw i64 %indvars.iv to i32
  call void @_ZN4llvm23SmallVectorTemplateBaseIjLb1EE15growAndPushBackEj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.bv)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

bb.h:                                             ; preds = %bb.f
  %i.bw = zext i32 %i.bt to i64
  %i.bx = load ptr, ptr %4, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bw
  %i.bz = trunc nuw i64 %indvars.iv to i32
  store i32 %i.bz, ptr %i.by, align 1
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !70
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.n, align 8, !tbaa !70
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit: ; preds = %bb.g, %bb.h
  %.not161267 = icmp eq i32 %.0125272, %.sroa.4.0.copyload.i
  br i1 %.not161267, label %.loopexit265.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit
  %.sroa.079.0.copyload = load i64, ptr %i.be, align 8, !tbaa !254
  %i.cc = and i64 %.sroa.079.0.copyload, -8
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !497
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.j
  %.1126268 = phi i32 [ %.0125272, %.lr.ph ], [ %i.cn, %bb.j ] ; 3 uses
  %i.cg = zext i32 %.1126268 to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cg
  %.sroa.080.0.copyload = load i64, ptr %i.ch, align 8, !tbaa !254
  %i.ci = and i64 %.sroa.080.0.copyload, -8
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !497
  %i.cm = icmp ult i32 %i.cl, %i.cf
  br i1 %i.cm, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.cn = add i32 %.1126268, 1                    ; 2 uses
  %.not161 = icmp eq i32 %i.cn, %.sroa.4.0.copyload.i
  br i1 %.not161, label %.loopexit265.loopexit, label %bb.i, !llvm.loop !1105

.critedge:                                        ; preds = %bb.i, %.lr.ph273
  %.2 = phi i32 [ %.0125272, %.lr.ph273 ], [ %.1126268, %bb.i ] ; 2 uses
  %i.co = icmp ne i64 %indvars.iv.next, %8
  %i.cp = icmp ne i32 %.2, %.sroa.4.0.copyload.i
  %i.cq = and i1 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph273, label %.loopexit265.loopexit, !llvm.loop !1106

.loopexit265.loopexit:                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE9push_backEj.exit, %.critedge, %bb.e, %bb.j
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !624
  br label %.loopexit265

.loopexit265:                                     ; preds = %.loopexit265.loopexit, %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit, %bb.c
  %i.cr = phi ptr [ %.pre, %.loopexit265.loopexit ], [ %.pre323, %_ZN4llvm11lower_boundIRNS_8ArrayRefINS_9SlotIndexEEES2_EEDaOT_OT0_.exit ], [ %.pre323, %bb.c ]
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ct, align 8, !tbaa !453
  %i.cu = and i32 %.sroa.0.0.copyload.i.i, 2147483647
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = load ptr, ptr %i.cs, align 8, !tbaa !40
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !469
  %i.cz = icmp slt i32 %i.cy, 3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !690
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !664
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  %.sroa.0.0.copyload.i176 = load i64, ptr %i.dh, align 8, !tbaa !63
  %i.di = uitofp i64 %.sroa.0.0.copyload.i176 to float
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !437
  %i.dl = call i64 @_ZNK4llvm25MachineBlockFrequencyInfo12getEntryFreqEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dk) #25
  %i.dm = uitofp i64 %i.dl to float
  %i.dn = fdiv nnan float 1.000000e+00, %i.dm
  %i.do = fmul float %i.dn, %i.di
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.dp, ptr %5, align 8, !tbaa !40
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.dq, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 8, ptr %i.dr, align 4, !tbaa !71
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !498
  %i.du = trunc i64 %i.dt to i32
  %i.dv = sub nsw i32 0, %i.du                    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !501 ; 2 uses
  %.not262302 = icmp eq i32 %i.dx, %i.dv
  br i1 %.not262302, label %_ZN4llvm11SmallVectorIfLj8EED2Ev.exit, label %.lr.ph307

.lr.ph307:                                        ; preds = %.loopexit265
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.dz = load float, ptr @_ZN4llvm9huge_valfE, align 4 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  %i.ec = icmp eq i32 %.5.ph, %i.l
  br i1 %i.ec, label %bb.bc, label %bb.ah

bb.k:                                             ; preds = %.lr.ph307, %_ZN4llvm15AllocationOrder8IteratorppEv.exit
  %.0128306 = phi i32 [ %i.l, %.lr.ph307 ], [ %.5.ph, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ]
  %.0132305 = phi i32 [ 0, %.lr.ph307 ], [ %.5137.ph, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ]
  %.0147304 = phi float [ 0.000000e+00, %.lr.ph307 ], [ %.5152.ph, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ]
  %.sroa.5204.0303 = phi i32 [ %i.dv, %.lr.ph307 ], [ %.sroa.5204.3, %_ZN4llvm15AllocationOrder8IteratorppEv.exit ] ; 5 uses
  %i.ed = icmp slt i32 %.sroa.5204.0303, 0
  br i1 %i.ed, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %2, align 8, !tbaa !502
  %i.ef = load i64, ptr %i.ds, align 8, !tbaa !498
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ee, i64 %i.ef
  %i.eh = sext i32 %.sroa.5204.0303 to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.eg, i64 %i.eh
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

bb.m:                                             ; preds = %bb.k
  %i.ej = zext nneg i32 %.sroa.5204.0303 to i64
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !504
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.ek, i64 %i.ej
  br label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit

_ZNK4llvm15AllocationOrder8IteratordeEv.exit:     ; preds = %bb.l, %bb.m
  %.sroa.0.0.in.in.i = phi ptr [ %i.ei, %bb.l ], [ %i.el, %bb.m ]
  %.sroa.0.0.in.i = load i16, ptr %.sroa.0.0.in.in.i, align 2, !tbaa !503
  %.sroa.0.0.i = zext i16 %.sroa.0.0.in.i to i32  ; 2 uses
  call void @_ZN4llvm8RAGreedy14calcGapWeightsENS_10MCRegisterERNS_15SmallVectorImplIfEE(ptr noundef nonnull align 8 dereferenceable(29066) %0, i32 %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !167
  %i.en = call noundef zeroext i1 @_ZN4llvm13LiveRegMatrix24checkRegMaskInterferenceERKNS_12LiveIntervalENS_10MCRegisterE(ptr noundef nonnull align 8 dereferenceable(144) %i.em, ptr noundef nonnull align 8 dereferenceable(120) %1, i32 %.sroa.0.0.i) #25
  br i1 %i.en, label %bb.n, label %_ZNK4llvm15AllocationOrder8IteratordeEv.exit..loopexit264_crit_edge

_ZNK4llvm15AllocationOrder8IteratordeEv.exit..loopexit264_crit_edge: ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %.pre324 = load ptr, ptr %5, align 8, !tbaa !40
  br label %.loopexit264

bb.n:                                             ; preds = %_ZNK4llvm15AllocationOrder8IteratordeEv.exit
  %i.eo = load ptr, ptr %4, align 8, !tbaa !40    ; 3 uses
  %i.ep = load i32, ptr %i.n, align 8, !tbaa !70  ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %.idx = shl nuw nsw i64 %i.eq, 2                ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx
  %.not166275 = icmp eq i32 %i.ep, 0
  %.pre325 = load ptr, ptr %5, align 8, !tbaa !40 ; 12 uses
  br i1 %.not166275, label %.loopexit264, label %.lr.ph277.preheader

.lr.ph277.preheader:                              ; preds = %bb.n
  %i.es = add nsw i64 %.idx, -4                   ; 2 uses
  %i.et = lshr exact i64 %i.es, 2
  %i.eu = add nuw nsw i64 %i.et, 1
  %xtraiter = and i64 %i.eu, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol

.lr.ph277.prol:                                   ; preds = %.lr.ph277.preheader, %.lr.ph277.prol
  %.0153276.prol = phi ptr [ %i.ey, %.lr.ph277.prol ], [ %i.eo, %.lr.ph277.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph277.prol ], [ 0, %.lr.ph277.preheader ]
  %i.ev = load i32, ptr %.0153276.prol, align 4, !tbaa !453
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.ew
  store float %i.dz, ptr %i.ex, align 4, !tbaa !739
  %i.ey = getelementptr inbounds nuw i8, ptr %.0153276.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph277.prol.loopexit, label %.lr.ph277.prol, !llvm.loop !1107

.lr.ph277.prol.loopexit:                          ; preds = %.lr.ph277.prol, %.lr.ph277.preheader
  %.0153276.unr = phi ptr [ %i.eo, %.lr.ph277.preheader ], [ %i.ey, %.lr.ph277.prol ]
  %i.ez = icmp ult i64 %i.es, 28
  br i1 %i.ez, label %.loopexit264, label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277
  %.0153276 = phi ptr [ %i.gf, %.lr.ph277 ], [ %.0153276.unr, %.lr.ph277.prol.loopexit ] ; 9 uses
  %i.fa = load i32, ptr %.0153276, align 4, !tbaa !453
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fb
  store float %i.dz, ptr %i.fc, align 4, !tbaa !739
  %i.fd = getelementptr inbounds nuw i8, ptr %.0153276, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !453
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.ff
  store float %i.dz, ptr %i.fg, align 4, !tbaa !739
  %i.fh = getelementptr inbounds nuw i8, ptr %.0153276, i64 8
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !453
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fj
  store float %i.dz, ptr %i.fk, align 4, !tbaa !739
  %i.fl = getelementptr inbounds nuw i8, ptr %.0153276, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !453
  %i.fn = zext i32 %i.fm to i64
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fn
  store float %i.dz, ptr %i.fo, align 4, !tbaa !739
  %i.fp = getelementptr inbounds nuw i8, ptr %.0153276, i64 16
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !453
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fr
  store float %i.dz, ptr %i.fs, align 4, !tbaa !739
  %i.ft = getelementptr inbounds nuw i8, ptr %.0153276, i64 20
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !453
  %i.fv = zext i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fv
  store float %i.dz, ptr %i.fw, align 4, !tbaa !739
  %i.fx = getelementptr inbounds nuw i8, ptr %.0153276, i64 24
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !453
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.fz
  store float %i.dz, ptr %i.ga, align 4, !tbaa !739
  %i.gb = getelementptr inbounds nuw i8, ptr %.0153276, i64 28
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !453
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %.pre325, i64 %i.gd
  store float %i.dz, ptr %i.ge, align 4, !tbaa !739
  %i.gf = getelementptr inbounds nuw i8, ptr %.0153276, i64 32 ; 2 uses
  %.not166.7 = icmp eq ptr %i.gf, %i.er
  br i1 %.not166.7, label %.loopexit264, label %.lr.ph277

.loopexit264:                                     ; preds = %.lr.ph277.prol.loopexit, %.lr.ph277, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit..loopexit264_crit_edge, %bb.n
  %i.gg = phi ptr [ %.pre324, %_ZNK4llvm15AllocationOrder8IteratordeEv.exit..loopexit264_crit_edge ], [ %.pre325, %bb.n ], [ %.pre325, %.lr.ph277 ], [ %.pre325, %.lr.ph277.prol.loopexit ] ; 10 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !739
  br label %.loopexit263.outer.outer

.loopexit263.outer.outer:                         ; preds = %.loopexit264, %bb.w
  %indvar = phi i32 [ 0, %.loopexit264 ], [ %indvar.next, %bb.w ] ; 3 uses
  %.0231.ph.ph = phi float [ %i.gh, %.loopexit264 ], [ %.sroa.speculated, %bb.w ]
  %.1148.ph.ph = phi float [ %.0147304, %.loopexit264 ], [ %.4151240, %bb.w ] ; 4 uses
  %.0143.ph.ph = phi i32 [ 0, %.loopexit264 ], [ %.1144, %bb.w ]
  %.0140.ph.ph = phi i32 [ 1, %.loopexit264 ], [ %i.jv, %bb.w ] ; 10 uses
  %.1133.ph.ph = phi i32 [ %.0132305, %.loopexit264 ], [ %.4136242, %bb.w ] ; 3 uses
  %.1129.ph.ph = phi i32 [ %.0128306, %.loopexit264 ], [ %.4244, %bb.w ] ; 3 uses
  %i.gi = add i32 %indvar, -2
  %.not168 = icmp eq i32 %.0140.ph.ph, %i.l
  %i.gj = zext i32 %.0140.ph.ph to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.gj
  br label %.loopexit263.outer

.loopexit263.outer:                               ; preds = %.loopexit263.outer.backedge, %.loopexit263.outer.outer
  %.0231.ph = phi float [ %.0231.ph.ph, %.loopexit263.outer.outer ], [ %.0231.ph.be, %.loopexit263.outer.backedge ] ; 5 uses
  %.0143.ph = phi i32 [ %.0143.ph.ph, %.loopexit263.outer.outer ], [ %i.ig, %.loopexit263.outer.backedge ] ; 3 uses
  %i.gl = fcmp olt float %.0231.ph, %i.dz
end_hunk_0
