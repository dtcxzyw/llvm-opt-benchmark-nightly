Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_nmens?download=true
inline.NumInlined: 315
inline.NumDeleted: 147
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z9gmx_nmensiPPc:bb.a
  %.pre251 = load i32, ptr %i.q, align 4, !tbaa !10
  br label %.critedge

.critedge:                                        ; preds = %bb.am, %.preheader147, %bb.an
  %i.ga = phi i32 [ %.pre251, %bb.an ], [ %storemerge95172, %.preheader147 ], [ %storemerge95172, %bb.am ]
  %i.gb = phi i32 [ %.pre, %bb.an ], [ %i.fk, %.preheader147 ], [ %i.fk, %bb.am ]
  %.171 = phi i32 [ %i.fz, %bb.an ], [ %.070173, %.preheader147 ], [ %.070173, %bb.am ] ; 2 uses
  %i.gc = add nsw i32 %i.ga, 1                    ; 3 uses
  store i32 %i.gc, ptr %i.q, align 4, !tbaa !10
  %i.gd = icmp slt i32 %i.gc, %.173
  br i1 %i.gd, label %.preheader147, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113._crit_edge, !llvm.loop !46

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113._crit_edge: ; preds = %.critedge, %.preheader147.lr.ph.split.us, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113.preheader
  %.070.lcssa = phi i32 [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113.preheader ], [ 0, %.preheader147.lr.ph.split.us ], [ %.171, %.critedge ] ; 3 uses
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.gf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.33, i32 noundef %.070.lcssa) #22 ; 0 uses
  %i.gg = load i32, ptr @_ZZ9gmx_nmensiPPcE4seed, align 4, !tbaa !10 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113._crit_edge
  %i.gi = invoke noundef i64 @_ZN3gmx14makeRandomSeedEv()
          to label %bb.ap unwind label %.loopexit.split-lp150.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  %i.gj = trunc i64 %i.gi to i32                  ; 2 uses
  store i32 %i.gj, ptr @_ZZ9gmx_nmensiPPcE4seed, align 4, !tbaa !10
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113._crit_edge
  %i.gk = phi i32 [ %i.gj, %bb.ap ], [ %i.gg, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit113._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.gl = sext i32 %i.gk to i64
  store i64 %i.gl, ptr %8, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !22
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj7EEEvPSt5arrayIT_XT0_EES4_(ptr noundef nonnull align 8 dereferenceable(52) %8, i64 noundef 63)
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.aq
  %i.gm = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false)
  %i.gn = load i64, ptr %8, align 8, !tbaa !24    ; 4 uses
  %i.go = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !24 ; 6 uses
  %i.gp = xor i64 %i.gn, %i.go
  %i.gq = xor i64 %i.gp, 2004413935125273122      ; 2 uses
  %i.gr = add i64 %i.go, %i.gn                    ; 2 uses
  %i.gs = call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 16)
  %i.gt = xor i64 %i.gs, %i.gr                    ; 3 uses
  %i.gu = add i64 %i.gt, %i.gr                    ; 2 uses
  %i.gv = call i64 @llvm.fshl.i64(i64 %i.gt, i64 %i.gt, i64 42)
  %i.gw = xor i64 %i.gv, %i.gu                    ; 3 uses
  %i.gx = add i64 %i.gw, %i.gu                    ; 2 uses
  %i.gy = call i64 @llvm.fshl.i64(i64 %i.gw, i64 %i.gw, i64 12)
  %i.gz = xor i64 %i.gy, %i.gx                    ; 3 uses
  %i.ha = add i64 %i.gz, %i.gx                    ; 2 uses
  %i.hb = call i64 @llvm.fshl.i64(i64 %i.gz, i64 %i.gz, i64 31)
  %i.hc = xor i64 %i.hb, %i.ha
  %i.hd = add i64 %i.ha, %i.go
  %i.he = add i64 %i.gq, 1
  %i.hf = add i64 %i.he, %i.hc                    ; 3 uses
  %i.hg = add i64 %i.hd, %i.hf                    ; 2 uses
  %i.hh = call i64 @llvm.fshl.i64(i64 %i.hf, i64 %i.hf, i64 16)
  %i.hi = xor i64 %i.hh, %i.hg                    ; 3 uses
  %i.hj = add i64 %i.hi, %i.hg                    ; 2 uses
  %i.hk = call i64 @llvm.fshl.i64(i64 %i.hi, i64 %i.hi, i64 32)
  %i.hl = xor i64 %i.hk, %i.hj                    ; 3 uses
  %i.hm = add i64 %i.hl, %i.hj                    ; 2 uses
  %i.hn = call i64 @llvm.fshl.i64(i64 %i.hl, i64 %i.hl, i64 24)
  %i.ho = xor i64 %i.hn, %i.hm                    ; 3 uses
  %i.hp = add i64 %i.ho, %i.hm                    ; 2 uses
  %i.hq = call i64 @llvm.fshl.i64(i64 %i.ho, i64 %i.ho, i64 21)
  %i.hr = xor i64 %i.hq, %i.hp
  %i.hs = add i64 %i.hp, %i.gq
  %i.ht = add i64 %i.gn, 2
  %i.hu = add i64 %i.ht, %i.hr                    ; 3 uses
  %i.hv = add i64 %i.hs, %i.hu                    ; 2 uses
  %i.hw = call i64 @llvm.fshl.i64(i64 %i.hu, i64 %i.hu, i64 16)
  %i.hx = xor i64 %i.hw, %i.hv                    ; 3 uses
  %i.hy = add i64 %i.hx, %i.hv                    ; 2 uses
  %i.hz = call i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 42)
  %i.ia = xor i64 %i.hz, %i.hy                    ; 3 uses
  %i.ib = add i64 %i.ia, %i.hy                    ; 2 uses
  %i.ic = call i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 12)
  %i.id = xor i64 %i.ic, %i.ib                    ; 3 uses
  %i.ie = add i64 %i.id, %i.ib                    ; 2 uses
  %i.if = call i64 @llvm.fshl.i64(i64 %i.id, i64 %i.id, i64 31)
  %i.ig = xor i64 %i.if, %i.ie
  %i.ih = add i64 %i.ie, %i.gn
  %i.ii = add i64 %i.go, 3
  %i.ij = add i64 %i.ii, %i.ig                    ; 3 uses
  %i.ik = add i64 %i.ih, %i.ij                    ; 2 uses
  %i.il = call i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 16)
  %i.im = xor i64 %i.il, %i.ik
  %i.in = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.ik, ptr %i.in, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.im, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !22
  %i.io = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 0, ptr %i.io, align 8, !tbaa !27
  %i.ip = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.iq = load i32, ptr @_ZZ9gmx_nmensiPPcE4seed, align 4, !tbaa !10
  %i.ir = load float, ptr @_ZZ9gmx_nmensiPPcE4temp, align 4, !tbaa !82
  %i.is = fpext float %i.ir to double
  %i.it = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.34, i32 noundef %i.iq, double noundef %i.is) #22 ; 0 uses
  %i.iu = invoke noundef i32 @_ZN3gmx5log2IEj(i32 noundef 65534)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.iv = icmp ult i32 %i.iu, 16
  %i.iw = zext i1 %i.iv to i32
  %i.ix = add i32 %i.iu, %i.iw                    ; 3 uses
  %i.iy = zext i32 %i.ix to i64                   ; 2 uses
  br label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i, %bb.as
  %.sroa.8.0 = phi i64 [ 0, %bb.as ], [ %i.je, %._crit_edge.i.i ]
  %i.iz = phi i32 [ 0, %bb.as ], [ %i.ji, %._crit_edge.i.i ] ; 2 uses
  %i.ja = icmp ult i32 %i.iz, %i.ix
  br i1 %i.ja, label %bb.au, label %._crit_edge.i.i

bb.au:                                            ; preds = %bb.at
  %i.jb = invoke noundef i64 @_ZN3gmx19ThreeFry2x64GeneralILj13ELj64EEclEv(ptr noundef nonnull align 8 dereferenceable(52) %8)
          to label %._crit_edge.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge.i.i:                                  ; preds = %bb.au, %bb.at
  %i.jc = phi i32 [ %i.iz, %bb.at ], [ 64, %bb.au ]
  %i.jd = phi i64 [ %.sroa.8.0, %bb.at ], [ %i.jb, %bb.au ] ; 2 uses
  %i.je = lshr i64 %i.jd, %i.iy                   ; 2 uses
  %i.jf = shl i64 %i.je, %i.iy
  %i.jg = sub i64 %i.jd, %i.jf
  %i.jh = trunc i64 %i.jg to i32                  ; 2 uses
  %i.ji = sub i32 %i.jc, %i.ix
  %i.jj = icmp sgt i32 %i.jh, 65534
  br i1 %i.jj, label %bb.at, label %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, !llvm.loop !47

_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit: ; preds = %._crit_edge.i.i
  %i.jk = load i32, ptr %i.o, align 4, !tbaa !10
  %i.jl = sext i32 %i.jk to i64
  %i.jm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.24, i32 noundef 229, i64 noundef range(i64 -2147483648, 2147483648) %i.jl, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 20 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit
  %i.jn = load i32, ptr %i.bf, align 8, !tbaa !101
  %i.jo = sext i32 %i.jn to i64
  %i.jp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.24, i32 noundef 230, i64 noundef range(i64 -2147483648, 2147483648) %i.jo, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117:    ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #19
  %i.jq = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 2, i32 noundef 5, ptr noundef nonnull %4)
          to label %bb.av unwind label %bb.az

bb.av:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117
  store ptr %i.jq, ptr %i.u, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext 2)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.jr = invoke noundef ptr @_Z8open_trxRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @.str.37)
          to label %bb.ax unwind label %bb.ba     ; 2 uses

bb.ax:                                            ; preds = %bb.aw
  %i.js = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i118 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i.i118, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i119, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.js, ptr noundef nonnull %i.jt) #19
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i119

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i119: ; preds = %bb.ay, %bb.ax
  %i.ju = load ptr, ptr %9, align 8, !tbaa !21    ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  br i1 %i.jw, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i119
  %i.jx = load i64, ptr %i.jv, align 8, !tbaa !22
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jy) #20
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit122

_ZNSt10filesystem7__cxx114pathD2Ev.exit122:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.jz = load i32, ptr @_ZZ9gmx_nmensiPPcE7nstruct, align 4, !tbaa !10
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.preheader143.lr.ph, label %._crit_edge192

.preheader143.lr.ph:                              ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit122
  %i.kb = icmp sgt i32 %.070.lcssa, 0
  %wide.trip.count243 = zext nneg i32 %.070.lcssa to i64
  br label %.preheader143

.preheader143:                                    ; preds = %.preheader143.lr.ph, %bb.bf
  %.068191 = phi i32 [ %i.jh, %.preheader143.lr.ph ], [ %.169.lcssa, %bb.bf ] ; 2 uses
  %.074190 = phi i32 [ 0, %.preheader143.lr.ph ], [ %i.tg, %bb.bf ]
  %i.kc = load i32, ptr %i.o, align 4, !tbaa !10  ; 12 uses
  %i.kd = icmp sgt i32 %i.kc, 0                   ; 3 uses
  br i1 %i.kd, label %.lr.ph177, label %.preheader142

.lr.ph177:                                        ; preds = %.preheader143
  %i.ke = load ptr, ptr %i.f, align 8, !tbaa !103 ; 8 uses
  %wide.trip.count229 = zext nneg i32 %i.kc to i64 ; 6 uses
  %min.iters.check365 = icmp ult i32 %i.kc, 8
  br i1 %min.iters.check365, label %scalar.ph364.preheader, label %vector.memcheck366

vector.memcheck366:                               ; preds = %.lr.ph177
  %i.kf = mul nuw nsw i64 %wide.trip.count229, 12 ; 2 uses
  %i.kg = getelementptr i8, ptr %i.jm, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.ke, i64 %i.kf
  %bound0367 = icmp ult ptr %i.jm, %i.kh
  %bound1368 = icmp ult ptr %i.ke, %i.kg
  %found.conflict369 = and i1 %bound0367, %bound1368
  br i1 %found.conflict369, label %scalar.ph364.preheader, label %vector.ph370

vector.ph370:                                     ; preds = %vector.memcheck366
  %n.vec371 = and i64 %wide.trip.count229, 2147483640 ; 3 uses
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next379, %vector.body372 ] ; 3 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %index373
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %index373
  %wide.vec374 = load <24 x float>, ptr %i.ki, align 4, !tbaa !82, !alias.scope !104
  store <24 x float> %wide.vec374, ptr %i.kj, align 4, !tbaa !82, !alias.scope !105, !noalias !104
  %index.next379 = add nuw i64 %index373, 8       ; 2 uses
  %i.kk = icmp eq i64 %index.next379, %n.vec371
  br i1 %i.kk, label %middle.block380, label %vector.body372, !llvm.loop !51

middle.block380:                                  ; preds = %vector.body372
  %cmp.n381 = icmp eq i64 %n.vec371, %wide.trip.count229
  br i1 %cmp.n381, label %.preheader142, label %scalar.ph364.preheader

scalar.ph364.preheader:                           ; preds = %vector.memcheck366, %.lr.ph177, %middle.block380
  %indvars.iv226.ph = phi i64 [ 0, %vector.memcheck366 ], [ 0, %.lr.ph177 ], [ %n.vec371, %middle.block380 ] ; 3 uses
  %xtraiter398 = and i64 %wide.trip.count229, 3   ; 2 uses
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %scalar.ph364.prol.loopexit, label %scalar.ph364.prol

scalar.ph364.prol:                                ; preds = %scalar.ph364.preheader, %scalar.ph364.prol
  %indvars.iv226.prol = phi i64 [ %indvars.iv.next227.prol, %scalar.ph364.prol ], [ %indvars.iv226.ph, %scalar.ph364.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph364.prol ], [ 0, %scalar.ph364.preheader ]
  %i.kl = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv226.prol ; 3 uses
  %i.km = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv226.prol ; 3 uses
  %i.kn = load float, ptr %i.kl, align 4, !tbaa !82
  store float %i.kn, ptr %i.km, align 4, !tbaa !82
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 4
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !82
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 4
  store float %i.kp, ptr %i.kq, align 4, !tbaa !82
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !82
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  store float %i.ks, ptr %i.kt, align 4, !tbaa !82
  %indvars.iv.next227.prol = add nuw nsw i64 %indvars.iv226.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter398
  br i1 %prol.iter.cmp.not, label %scalar.ph364.prol.loopexit, label %scalar.ph364.prol, !llvm.loop !52

scalar.ph364.prol.loopexit:                       ; preds = %scalar.ph364.prol, %scalar.ph364.preheader
  %indvars.iv226.unr = phi i64 [ %indvars.iv226.ph, %scalar.ph364.preheader ], [ %indvars.iv.next227.prol, %scalar.ph364.prol ]
  %i.ku = sub nsw i64 %indvars.iv226.ph, %wide.trip.count229
  %i.kv = icmp ugt i64 %i.ku, -4
  br i1 %i.kv, label %.preheader142, label %scalar.ph364

.preheader142:                                    ; preds = %scalar.ph364.prol.loopexit, %scalar.ph364, %middle.block380, %.preheader143
  %storemerge98.lcssa = phi i32 [ 0, %.preheader143 ], [ %i.kc, %middle.block380 ], [ %i.kc, %scalar.ph364 ], [ %i.kc, %scalar.ph364.prol.loopexit ]
  store i32 %storemerge98.lcssa, ptr %i.q, align 4, !tbaa !10
  br i1 %i.kb, label %.lr.ph185, label %.preheader141

.lr.ph185:                                        ; preds = %.preheader142
  %i.kw = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.kx = load ptr, ptr %i.l, align 8
  %.pre253 = load float, ptr @_ZZ9gmx_nmensiPPcE4temp, align 4, !tbaa !82
  %wide.trip.count238 = zext i32 %i.kc to i64     ; 7 uses
  %i.ky = shl nuw nsw i64 %wide.trip.count238, 2
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.ky
  %i.kz = mul nuw nsw i64 %wide.trip.count238, 12 ; 2 uses
  %scevgep339 = getelementptr i8, ptr %i.jm, i64 %i.kz ; 2 uses
  %min.iters.check340 = icmp ult i32 %i.kc, 8
  %bound0341 = icmp ult ptr %i.jm, %scevgep
  %bound1342 = icmp ult ptr %i.bs, %scevgep339
  %found.conflict343 = and i1 %bound0341, %bound1342
  %n.vec345 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  %cmp.n356 = icmp eq i64 %n.vec345, %wide.trip.count238
  %xtraiter400 = and i64 %wide.trip.count238, 1
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %i.la = add nsw i64 %wide.trip.count238, -1
  br label %bb.bc

scalar.ph364:                                     ; preds = %scalar.ph364.prol.loopexit, %scalar.ph364
  %indvars.iv226 = phi i64 [ %indvars.iv.next227.3, %scalar.ph364 ], [ %indvars.iv226.unr, %scalar.ph364.prol.loopexit ] ; 6 uses
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv226 ; 3 uses
  %i.lc = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv226 ; 3 uses
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !82
  store float %i.ld, ptr %i.lc, align 4, !tbaa !82
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 4
  %i.lf = load float, ptr %i.le, align 4, !tbaa !82
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  store float %i.lf, ptr %i.lg, align 4, !tbaa !82
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.li = load float, ptr %i.lh, align 4, !tbaa !82
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  store float %i.li, ptr %i.lj, align 4, !tbaa !82
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.lk = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227 ; 3 uses
  %i.ll = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227 ; 3 uses
  %i.lm = load float, ptr %i.lk, align 4, !tbaa !82
  store float %i.lm, ptr %i.ll, align 4, !tbaa !82
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !82
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store float %i.lo, ptr %i.lp, align 4, !tbaa !82
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !82
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store float %i.lr, ptr %i.ls, align 4, !tbaa !82
  %indvars.iv.next227.1 = add nuw nsw i64 %indvars.iv226, 2 ; 2 uses
  %i.lt = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227.1 ; 3 uses
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227.1 ; 3 uses
  %i.lv = load float, ptr %i.lt, align 4, !tbaa !82
  store float %i.lv, ptr %i.lu, align 4, !tbaa !82
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !82
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  store float %i.lx, ptr %i.ly, align 4, !tbaa !82
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lt, i64 8
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !82
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  store float %i.ma, ptr %i.mb, align 4, !tbaa !82
  %indvars.iv.next227.2 = add nuw nsw i64 %indvars.iv226, 3 ; 2 uses
  %i.mc = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227.2 ; 3 uses
  %i.md = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227.2 ; 3 uses
  %i.me = load float, ptr %i.mc, align 4, !tbaa !82
  store float %i.me, ptr %i.md, align 4, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !82
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  store float %i.mg, ptr %i.mh, align 4, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !82
  %i.mk = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  store float %i.mj, ptr %i.mk, align 4, !tbaa !82
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4 ; 2 uses
  %exitcond230.not.3 = icmp eq i64 %indvars.iv.next227.3, %wide.trip.count229
  br i1 %exitcond230.not.3, label %.preheader142, label %scalar.ph364, !llvm.loop !53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge189, %bb.au, %bb.aq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, %bb.ar, %._crit_edge192
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.av, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117
  %i.ml = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.mm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn96 = phi { ptr, i32 } [ %i.mm, %bb.ba ], [ %i.ml, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit.split-lp.loopexit.split-lp

.preheader141:                                    ; preds = %._crit_edge, %.preheader142
  %.169.lcssa = phi i32 [ %.068191, %.preheader142 ], [ %i.nj, %._crit_edge ]
  store i32 0, ptr %i.q, align 4, !tbaa !10
  %.pre252.a = load ptr, ptr %i.r, align 8, !tbaa !65 ; 6 uses
  br i1 %i.kd, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader141
  %wide.trip.count248 = zext nneg i32 %i.kc to i64 ; 2 uses
  %xtraiter404 = and i64 %wide.trip.count248, 3   ; 3 uses
  %i.mn = icmp ult i32 %i.kc, 4
  br i1 %i.mn, label %.epil.preheader403, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.lr.ph188
  %unroll_iter408 = and i64 %wide.trip.count248, 2147483644
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph185, %._crit_edge
  %10 = phi float [ %.pre253, %.lr.ph185 ], [ %11, %._crit_edge ] ; 2 uses
  %indvars.iv240 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next241, %._crit_edge ] ; 3 uses
  %.169184 = phi i32 [ %.068191, %.lr.ph185 ], [ %i.nj, %._crit_edge ]
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv240
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !10
  %i.mq = fpext float %10 to double
  %i.mr = fmul double %i.mq, f0x3F998AC26C586BA4
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %indvars.iv240
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !10
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.mu
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !82
  %i.mx = fpext float %i.mw to double
  %i.my = fdiv double %i.mr, %i.mx
  %i.mz = call double @sqrt(double noundef %i.my) #19
  %i.na = fptrunc double %i.mz to float           ; 2 uses
  %i.nb = fdiv float %i.na, 6.553500e+04
  %i.nc = mul i32 %.169184, 1093
  %i.nd = add i32 %i.nc, 18257                    ; 2 uses
  %i.ne = and i32 %i.nd, 65535
  %narrow = mul i32 %i.nd, 1093
  %narrow103 = add i32 %narrow, 18257             ; 2 uses
  %i.nf = and i32 %narrow103, 65535
  %i.ng = add nuw nsw i32 %i.nf, %i.ne
  %narrow104 = mul i32 %narrow103, 1093
  %narrow105 = add i32 %narrow104, 18257          ; 2 uses
  %i.nh = and i32 %narrow105, 65535
  %i.ni = add nuw nsw i32 %i.ng, %i.nh
  %narrow106 = mul i32 %narrow105, 1093
  %narrow107 = add i32 %narrow106, 18257
  %i.nj = and i32 %narrow107, 65535               ; 3 uses
  %i.nk = add nuw nsw i32 %i.ni, %i.nj
  %i.nl = uitofp nneg i32 %i.nk to float
  %i.nm = fmul float %i.na, -2.000000e+00
  %i.nn = call float @llvm.fmuladd.f32(float %i.nb, float %i.nl, float %i.nm) ; 10 uses
  br i1 %i.kd, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.bc
  %i.no = sext i32 %i.mp to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.no
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !103 ; 6 uses
  br i1 %min.iters.check340, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %i.nr = getelementptr i8, ptr %i.nq, i64 %i.kz
  %bound0 = icmp ult ptr %i.jm, %i.nr
  %bound1 = icmp ult ptr %i.nq, %scevgep339
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict343
  br i1 %conflict.rdx, label %.preheader.preheader, label %vector.ph344

vector.ph344:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nn, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body346

vector.body346:                                   ; preds = %vector.body346, %vector.ph344
  %index347 = phi i64 [ 0, %vector.ph344 ], [ %index.next354, %vector.body346 ] ; 4 uses
  %i.ns = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %index347
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index347
  %i.nu = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %index347 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.ns, align 4, !tbaa !82, !alias.scope !106 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec348 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec349 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.nv = fmul <8 x float> %broadcast.splat, %strided.vec
  %wide.load = load <8 x float>, ptr %i.nt, align 4, !tbaa !82, !alias.scope !107 ; 3 uses
  %wide.vec350 = load <24 x float>, ptr %i.nu, align 4, !tbaa !82, !alias.scope !108, !noalias !109 ; 3 uses
  %strided.vec351 = shufflevector <24 x float> %wide.vec350, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec352 = shufflevector <24 x float> %wide.vec350, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec353 = shufflevector <24 x float> %wide.vec350, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.nw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nv, <8 x float> %wide.load, <8 x float> %strided.vec351)
  %i.nx = fmul <8 x float> %broadcast.splat, %strided.vec348
  %i.ny = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nx, <8 x float> %wide.load, <8 x float> %strided.vec352)
  %i.nz = fmul <8 x float> %broadcast.splat, %strided.vec349
  %i.oa = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nz, <8 x float> %wide.load, <8 x float> %strided.vec353)
  %i.ob = shufflevector <8 x float> %i.nw, <8 x float> %i.ny, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.oc = shufflevector <8 x float> %i.oa, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.ob, <16 x float> %i.oc, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.nu, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %index.next354 = add nuw i64 %index347, 8       ; 2 uses
  %i.od = icmp eq i64 %index.next354, %n.vec345
  br i1 %i.od, label %middle.block355, label %vector.body346, !llvm.loop !58

middle.block355:                                  ; preds = %vector.body346
  br i1 %cmp.n356, label %._crit_edge.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block355
  %indvars.iv235.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec345, %middle.block355 ] ; 6 uses
  br i1 %lcmp.mod401.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.oe = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv235.ph ; 3 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv235.ph ; 3 uses
  %i.og = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv235.ph ; 4 uses
  %i.oh = load float, ptr %i.oe, align 4, !tbaa !82
  %i.oi = fmul float %i.nn, %i.oh
  %i.oj = load float, ptr %i.of, align 4, !tbaa !82
  %i.ok = load float, ptr %i.og, align 4, !tbaa !82
  %i.ol = call float @llvm.fmuladd.f32(float %i.oi, float %i.oj, float %i.ok)
  store float %i.ol, ptr %i.og, align 4, !tbaa !82
  %i.om = getelementptr inbounds nuw i8, ptr %i.oe, i64 4
  %i.on = load float, ptr %i.om, align 4, !tbaa !82
  %i.oo = fmul float %i.nn, %i.on
  %i.op = load float, ptr %i.of, align 4, !tbaa !82
  %i.oq = getelementptr inbounds nuw i8, ptr %i.og, i64 4 ; 2 uses
  %i.or = load float, ptr %i.oq, align 4, !tbaa !82
  %i.os = call float @llvm.fmuladd.f32(float %i.oo, float %i.op, float %i.or)
  store float %i.os, ptr %i.oq, align 4, !tbaa !82
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !82
  %i.ov = fmul float %i.nn, %i.ou
  %i.ow = load float, ptr %i.of, align 4, !tbaa !82
  %i.ox = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 2 uses
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !82
  %i.oz = call float @llvm.fmuladd.f32(float %i.ov, float %i.ow, float %i.oy)
  store float %i.oz, ptr %i.ox, align 4, !tbaa !82
  %indvars.iv.next236.prol = or disjoint i64 %indvars.iv235.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv235.unr = phi i64 [ %indvars.iv235.ph, %.preheader.preheader ], [ %indvars.iv.next236.prol, %.preheader.prol ]
  %i.pa = icmp eq i64 %indvars.iv235.ph, %i.la
  br i1 %i.pa, label %._crit_edge.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.1, %.preheader ], [ %indvars.iv235.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.pb = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv235 ; 3 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv235 ; 3 uses
  %i.pd = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv235 ; 4 uses
  %i.pe = load float, ptr %i.pb, align 4, !tbaa !82
  %i.pf = fmul float %i.nn, %i.pe
  %i.pg = load float, ptr %i.pc, align 4, !tbaa !82
  %i.ph = load float, ptr %i.pd, align 4, !tbaa !82
  %i.pi = call float @llvm.fmuladd.f32(float %i.pf, float %i.pg, float %i.ph)
  store float %i.pi, ptr %i.pd, align 4, !tbaa !82
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pb, i64 4
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !82
  %i.pl = fmul float %i.nn, %i.pk
  %i.pm = load float, ptr %i.pc, align 4, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pd, i64 4 ; 2 uses
  %i.po = load float, ptr %i.pn, align 4, !tbaa !82
  %i.pp = call float @llvm.fmuladd.f32(float %i.pl, float %i.pm, float %i.po)
  store float %i.pp, ptr %i.pn, align 4, !tbaa !82
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !82
  %i.ps = fmul float %i.nn, %i.pr
  %i.pt = load float, ptr %i.pc, align 4, !tbaa !82
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 2 uses
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !82
  %i.pw = call float @llvm.fmuladd.f32(float %i.ps, float %i.pt, float %i.pv)
  store float %i.pw, ptr %i.pu, align 4, !tbaa !82
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.px = getelementptr inbounds nuw [12 x i8], ptr %i.nq, i64 %indvars.iv.next236 ; 3 uses
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next236 ; 3 uses
  %i.pz = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next236 ; 4 uses
  %i.qa = load float, ptr %i.px, align 4, !tbaa !82
  %i.qb = fmul float %i.nn, %i.qa
  %i.qc = load float, ptr %i.py, align 4, !tbaa !82
  %i.qd = load float, ptr %i.pz, align 4, !tbaa !82
  %i.qe = call float @llvm.fmuladd.f32(float %i.qb, float %i.qc, float %i.qd)
  store float %i.qe, ptr %i.pz, align 4, !tbaa !82
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !82
  %i.qh = fmul float %i.nn, %i.qg
  %i.qi = load float, ptr %i.py, align 4, !tbaa !82
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pz, i64 4 ; 2 uses
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !82
  %i.ql = call float @llvm.fmuladd.f32(float %i.qh, float %i.qi, float %i.qk)
  store float %i.ql, ptr %i.qj, align 4, !tbaa !82
  %i.qm = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !82
  %i.qo = fmul float %i.nn, %i.qn
  %i.qp = load float, ptr %i.py, align 4, !tbaa !82
  %i.qq = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !82
  %i.qs = call float @llvm.fmuladd.f32(float %i.qo, float %i.qp, float %i.qr)
  store float %i.qs, ptr %i.qq, align 4, !tbaa !82
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %exitcond239.not.1 = icmp eq i64 %indvars.iv.next236.1, %wide.trip.count238
  br i1 %exitcond239.not.1, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !59

._crit_edge.loopexit:                             ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block355
  %.pre252 = load float, ptr @_ZZ9gmx_nmensiPPcE4temp, align 4, !tbaa !82
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bc
  %11 = phi float [ %10, %bb.bc ], [ %.pre252, %._crit_edge.loopexit ]
  %storemerge108.lcssa = phi i32 [ 0, %bb.bc ], [ %i.kc, %._crit_edge.loopexit ]
  store i32 %storemerge108.lcssa, ptr %i.q, align 4, !tbaa !10
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %exitcond244.not = icmp eq i64 %indvars.iv.next241, %wide.trip.count243
  br i1 %exitcond244.not, label %.preheader141, label %bb.bc, !llvm.loop !60

bb.bd:                                            ; preds = %bb.bd, %.lr.ph188.new
  %indvars.iv245 = phi i64 [ 0, %.lr.ph188.new ], [ %indvars.iv.next246.3, %bb.bd ] ; 6 uses
  %niter409 = phi i64 [ 0, %.lr.ph188.new ], [ %niter409.next.3, %bb.bd ]
  %i.qt = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv245 ; 3 uses
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv245
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !10
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.qw ; 3 uses
  %i.qy = load float, ptr %i.qt, align 4, !tbaa !82
  store float %i.qy, ptr %i.qx, align 4, !tbaa !82
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qt, i64 4
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !82
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  store float %i.ra, ptr %i.rb, align 4, !tbaa !82
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 8
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !82
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  store float %i.rd, ptr %i.re, align 4, !tbaa !82
  %indvars.iv.next246 = or disjoint i64 %indvars.iv245, 1 ; 3 uses
  %i.rf = trunc nuw nsw i64 %indvars.iv.next246 to i32
  store i32 %i.rf, ptr %i.q, align 4, !tbaa !10
  %i.rg = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246 ; 3 uses
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !10
  %i.rj = sext i32 %i.ri to i64
  %i.rk = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.rj ; 3 uses
  %i.rl = load float, ptr %i.rg, align 4, !tbaa !82
  store float %i.rl, ptr %i.rk, align 4, !tbaa !82
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !82
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 4
  store float %i.rn, ptr %i.ro, align 4, !tbaa !82
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !82
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  store float %i.rq, ptr %i.rr, align 4, !tbaa !82
  %indvars.iv.next246.1 = or disjoint i64 %indvars.iv245, 2 ; 3 uses
  %i.rs = trunc nuw nsw i64 %indvars.iv.next246.1 to i32
  store i32 %i.rs, ptr %i.q, align 4, !tbaa !10
  %i.rt = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246.1 ; 3 uses
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246.1
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !10
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.rw ; 3 uses
  %i.ry = load float, ptr %i.rt, align 4, !tbaa !82
  store float %i.ry, ptr %i.rx, align 4, !tbaa !82
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rt, i64 4
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !82
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rx, i64 4
  store float %i.sa, ptr %i.sb, align 4, !tbaa !82
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !82
  %i.se = getelementptr inbounds nuw i8, ptr %i.rx, i64 8
  store float %i.sd, ptr %i.se, align 4, !tbaa !82
  %indvars.iv.next246.2 = or disjoint i64 %indvars.iv245, 3 ; 3 uses
  %i.sf = trunc nuw nsw i64 %indvars.iv.next246.2 to i32
  store i32 %i.sf, ptr %i.q, align 4, !tbaa !10
  %i.sg = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246.2 ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246.2
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !10
  %i.sj = sext i32 %i.si to i64
  %i.sk = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.sj ; 3 uses
  %i.sl = load float, ptr %i.sg, align 4, !tbaa !82
  store float %i.sl, ptr %i.sk, align 4, !tbaa !82
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !82
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  store float %i.sn, ptr %i.so, align 4, !tbaa !82
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.sq = load float, ptr %i.sp, align 4, !tbaa !82
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  store float %i.sq, ptr %i.sr, align 4, !tbaa !82
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4 ; 3 uses
  %i.ss = trunc nuw nsw i64 %indvars.iv.next246.3 to i32
  store i32 %i.ss, ptr %i.q, align 4, !tbaa !10
  %niter409.next.3 = add i64 %niter409, 4         ; 2 uses
  %niter409.ncmp.3 = icmp eq i64 %niter409.next.3, %unroll_iter408
  br i1 %niter409.ncmp.3, label %._crit_edge189.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !61

._crit_edge189.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod406.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod406.not, label %._crit_edge189, label %.epil.preheader403

.epil.preheader403:                               ; preds = %._crit_edge189.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv245.epil.init = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next246.3, %._crit_edge189.loopexit.unr-lcssa ]
  %lcmp.mod407 = icmp ne i64 %xtraiter404, 0
  call void @llvm.assume(i1 %lcmp.mod407)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader403
  %indvars.iv245.epil = phi i64 [ %indvars.iv245.epil.init, %.epil.preheader403 ], [ %indvars.iv.next246.epil, %bb.be ] ; 3 uses
  %epil.iter405 = phi i64 [ 0, %.epil.preheader403 ], [ %epil.iter405.next, %bb.be ]
  %i.st = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv245.epil ; 3 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv245.epil
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !10
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.sw ; 3 uses
  %i.sy = load float, ptr %i.st, align 4, !tbaa !82
  store float %i.sy, ptr %i.sx, align 4, !tbaa !82
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 4
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !82
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  store float %i.ta, ptr %i.tb, align 4, !tbaa !82
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.td = load float, ptr %i.tc, align 4, !tbaa !82
  %i.te = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  store float %i.td, ptr %i.te, align 4, !tbaa !82
  %indvars.iv.next246.epil = add nuw nsw i64 %indvars.iv245.epil, 1 ; 2 uses
  %i.tf = trunc nuw nsw i64 %indvars.iv.next246.epil to i32
  store i32 %i.tf, ptr %i.q, align 4, !tbaa !10
  %epil.iter405.next = add i64 %epil.iter405, 1   ; 2 uses
  %epil.iter405.cmp.not = icmp eq i64 %epil.iter405.next, %xtraiter404
  br i1 %epil.iter405.cmp.not, label %._crit_edge189, label %bb.be, !llvm.loop !62

._crit_edge189:                                   ; preds = %._crit_edge189.loopexit.unr-lcssa, %bb.be, %.preheader141
  %i.tg = add nuw nsw i32 %.074190, 1             ; 4 uses
  %i.th = uitofp nneg i32 %i.tg to float
  %i.ti = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef %i.jr, i32 noundef %i.kc, ptr noundef %.pre252.a, ptr noundef nonnull %i.bf, i32 noundef 0, float noundef %i.th, ptr noundef nonnull %i.m, ptr noundef %i.jp, ptr noundef null, ptr noundef null)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bf:                                            ; preds = %._crit_edge189
  %i.tj = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.tk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tj, ptr noundef nonnull @.str.38, i32 noundef %i.tg) #22 ; 0 uses
  %i.tl = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.tm = call i32 @fflush(ptr noundef %i.tl)     ; 0 uses
  %i.tn = load i32, ptr @_ZZ9gmx_nmensiPPcE7nstruct, align 4, !tbaa !10
  %i.to = icmp slt i32 %i.tg, %i.tn
  br i1 %i.to, label %.preheader143, label %._crit_edge192, !llvm.loop !63

._crit_edge192:                                   ; preds = %bb.bf, %_ZNSt10filesystem7__cxx114pathD2Ev.exit122
  %i.tp = load ptr, ptr @stderr, align 8, !tbaa !100
  %fputc = call i32 @fputc(i32 10, ptr %i.tp)     ; 0 uses
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.jr)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %._crit_edge192
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bh

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb
  %.pn100.pn = phi { ptr, i32 } [ %.pn96, %bb.bb ], [ %lpad.loopexit.split-lp385, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.split-lp150

bb.bh:                                            ; preds = %bb.b, %bb.bg
  %i.tq = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 16, !tbaa !28 ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.tr, %i.tt
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.tz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.tr, %bb.bh ] ; 3 uses
  %i.tu = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.tw = icmp eq ptr %i.tu, %i.tv
  br i1 %i.tw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.tx = load i64, ptr %i.tv, align 8, !tbaa !22
  %i.ty = add i64 %i.tx, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.ty) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.tz, %i.tt
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.tq, align 16, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.bh
  %i.ua = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.tr, %bb.bh ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ua, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ub = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.uc = load ptr, ptr %i.ub, align 16, !tbaa !30
  %i.ud = ptrtoint ptr %i.uc to i64
  %i.ue = ptrtoint ptr %i.ua to i64
  %i.uf = sub i64 %i.ud, %i.ue
  call void @_ZdlPvm(ptr noundef nonnull %i.ua, i64 noundef %i.uf) #20
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bi
  %i.ug = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !28 ; 3 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.uj = load ptr, ptr %i.ui, align 16, !tbaa !29 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.uh, %i.uj
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1
end_hunk_0
