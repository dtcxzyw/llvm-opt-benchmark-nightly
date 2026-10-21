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
  %.074190 = phi i32 [ 0, %.preheader143.lr.ph ], [ %i.td, %bb.bf ]
  %i.kc = load i32, ptr %i.o, align 4, !tbaa !10  ; 12 uses
  %i.kd = icmp sgt i32 %i.kc, 0                   ; 3 uses
  br i1 %i.kd, label %.lr.ph177, label %.preheader142

.lr.ph177:                                        ; preds = %.preheader143
  %i.ke = load ptr, ptr %i.f, align 8, !tbaa !103 ; 8 uses
  %wide.trip.count229 = zext nneg i32 %i.kc to i64 ; 6 uses
  %min.iters.check361 = icmp ult i32 %i.kc, 8
  br i1 %min.iters.check361, label %scalar.ph360.preheader, label %vector.memcheck354

vector.memcheck354:                               ; preds = %.lr.ph177
  %i.kf = mul nuw nsw i64 %wide.trip.count229, 12 ; 2 uses
  %scevgep355 = getelementptr i8, ptr %i.jm, i64 %i.kf
  %scevgep356 = getelementptr i8, ptr %i.ke, i64 %i.kf
  %bound0357 = icmp ult ptr %i.jm, %scevgep356
  %bound1358 = icmp ult ptr %i.ke, %scevgep355
  %found.conflict359 = and i1 %bound0357, %bound1358
  br i1 %found.conflict359, label %scalar.ph360.preheader, label %vector.ph362

vector.ph362:                                     ; preds = %vector.memcheck354
  %n.vec363 = and i64 %wide.trip.count229, 2147483640 ; 3 uses
  br label %vector.body364

vector.body364:                                   ; preds = %vector.body364, %vector.ph362
  %index365 = phi i64 [ 0, %vector.ph362 ], [ %index.next371, %vector.body364 ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %index365
  %i.kh = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %index365
  %wide.vec366 = load <24 x float>, ptr %i.kg, align 4, !tbaa !82, !alias.scope !104
  store <24 x float> %wide.vec366, ptr %i.kh, align 4, !tbaa !82, !alias.scope !105, !noalias !104
  %index.next371 = add nuw i64 %index365, 8       ; 2 uses
  %i.ki = icmp eq i64 %index.next371, %n.vec363
  br i1 %i.ki, label %middle.block372, label %vector.body364, !llvm.loop !51

middle.block372:                                  ; preds = %vector.body364
  %cmp.n373 = icmp eq i64 %n.vec363, %wide.trip.count229
  br i1 %cmp.n373, label %.preheader142, label %scalar.ph360.preheader

scalar.ph360.preheader:                           ; preds = %vector.memcheck354, %.lr.ph177, %middle.block372
  %indvars.iv226.ph = phi i64 [ 0, %vector.memcheck354 ], [ 0, %.lr.ph177 ], [ %n.vec363, %middle.block372 ] ; 3 uses
  %xtraiter390 = and i64 %wide.trip.count229, 3   ; 2 uses
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol

scalar.ph360.prol:                                ; preds = %scalar.ph360.preheader, %scalar.ph360.prol
  %indvars.iv226.prol = phi i64 [ %indvars.iv.next227.prol, %scalar.ph360.prol ], [ %indvars.iv226.ph, %scalar.ph360.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph360.prol ], [ 0, %scalar.ph360.preheader ]
  %i.kj = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv226.prol ; 3 uses
  %i.kk = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv226.prol ; 3 uses
  %i.kl = load float, ptr %i.kj, align 4, !tbaa !82
  store float %i.kl, ptr %i.kk, align 4, !tbaa !82
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  %i.kn = load float, ptr %i.km, align 4, !tbaa !82
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  store float %i.kn, ptr %i.ko, align 4, !tbaa !82
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !82
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store float %i.kq, ptr %i.kr, align 4, !tbaa !82
  %indvars.iv.next227.prol = add nuw nsw i64 %indvars.iv226.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter390
  br i1 %prol.iter.cmp.not, label %scalar.ph360.prol.loopexit, label %scalar.ph360.prol, !llvm.loop !52

scalar.ph360.prol.loopexit:                       ; preds = %scalar.ph360.prol, %scalar.ph360.preheader
  %indvars.iv226.unr = phi i64 [ %indvars.iv226.ph, %scalar.ph360.preheader ], [ %indvars.iv.next227.prol, %scalar.ph360.prol ]
  %i.ks = sub nsw i64 %indvars.iv226.ph, %wide.trip.count229
  %i.kt = icmp ugt i64 %i.ks, -4
  br i1 %i.kt, label %.preheader142, label %scalar.ph360

.preheader142:                                    ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360, %middle.block372, %.preheader143
  %storemerge98.lcssa = phi i32 [ 0, %.preheader143 ], [ %i.kc, %middle.block372 ], [ %i.kc, %scalar.ph360 ], [ %i.kc, %scalar.ph360.prol.loopexit ]
  store i32 %storemerge98.lcssa, ptr %i.q, align 4, !tbaa !10
  br i1 %i.kb, label %.lr.ph185, label %.preheader141

.lr.ph185:                                        ; preds = %.preheader142
  %i.ku = load ptr, ptr %i.n, align 8, !tbaa !103
  %i.kv = load ptr, ptr %i.l, align 8
  %.pre253 = load float, ptr @_ZZ9gmx_nmensiPPcE4temp, align 4, !tbaa !82
  %wide.trip.count238 = zext i32 %i.kc to i64     ; 7 uses
  %i.kw = mul nuw nsw i64 %wide.trip.count238, 12 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.jm, i64 %i.kw ; 2 uses
  %i.kx = shl nuw nsw i64 %wide.trip.count238, 2
  %scevgep335 = getelementptr i8, ptr %i.bs, i64 %i.kx
  %min.iters.check339 = icmp ult i32 %i.kc, 8
  %bound0336 = icmp ult ptr %i.jm, %scevgep335
  %bound1337 = icmp ult ptr %i.bs, %scevgep
  %found.conflict338 = and i1 %bound0336, %bound1337
  %n.vec341 = and i64 %wide.trip.count238, 2147483640 ; 3 uses
  %cmp.n352 = icmp eq i64 %n.vec341, %wide.trip.count238
  %xtraiter392 = and i64 %wide.trip.count238, 1
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  %i.ky = add nsw i64 %wide.trip.count238, -1
  br label %bb.bc

scalar.ph360:                                     ; preds = %scalar.ph360.prol.loopexit, %scalar.ph360
  %indvars.iv226 = phi i64 [ %indvars.iv.next227.3, %scalar.ph360 ], [ %indvars.iv226.unr, %scalar.ph360.prol.loopexit ] ; 6 uses
  %i.kz = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv226 ; 3 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv226 ; 3 uses
  %i.lb = load float, ptr %i.kz, align 4, !tbaa !82
  store float %i.lb, ptr %i.la, align 4, !tbaa !82
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !82
  %i.le = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store float %i.ld, ptr %i.le, align 4, !tbaa !82
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !82
  %i.lh = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  store float %i.lg, ptr %i.lh, align 4, !tbaa !82
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227 ; 3 uses
  %i.lj = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227 ; 3 uses
  %i.lk = load float, ptr %i.li, align 4, !tbaa !82
  store float %i.lk, ptr %i.lj, align 4, !tbaa !82
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !82
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 4
  store float %i.lm, ptr %i.ln, align 4, !tbaa !82
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !82
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 8
  store float %i.lp, ptr %i.lq, align 4, !tbaa !82
  %indvars.iv.next227.1 = add nuw nsw i64 %indvars.iv226, 2 ; 2 uses
  %i.lr = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227.1 ; 3 uses
  %i.ls = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227.1 ; 3 uses
  %i.lt = load float, ptr %i.lr, align 4, !tbaa !82
  store float %i.lt, ptr %i.ls, align 4, !tbaa !82
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 4
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !82
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 4
  store float %i.lv, ptr %i.lw, align 4, !tbaa !82
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.ly = load float, ptr %i.lx, align 4, !tbaa !82
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store float %i.ly, ptr %i.lz, align 4, !tbaa !82
  %indvars.iv.next227.2 = add nuw nsw i64 %indvars.iv226, 3 ; 2 uses
  %i.ma = getelementptr inbounds nuw [12 x i8], ptr %i.ke, i64 %indvars.iv.next227.2 ; 3 uses
  %i.mb = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next227.2 ; 3 uses
  %i.mc = load float, ptr %i.ma, align 4, !tbaa !82
  store float %i.mc, ptr %i.mb, align 4, !tbaa !82
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.me = load float, ptr %i.md, align 4, !tbaa !82
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  store float %i.me, ptr %i.mf, align 4, !tbaa !82
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !82
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  store float %i.mh, ptr %i.mi, align 4, !tbaa !82
  %indvars.iv.next227.3 = add nuw nsw i64 %indvars.iv226, 4 ; 2 uses
  %exitcond230.not.3 = icmp eq i64 %indvars.iv.next227.3, %wide.trip.count229
  br i1 %exitcond230.not.3, label %.preheader142, label %scalar.ph360, !llvm.loop !53

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge189, %bb.au, %bb.aq, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %_ZN3gmx22UniformIntDistributionIiEclINS_16ThreeFry2x64FastILj64EEEEEiRT_.exit, %bb.ar, %._crit_edge192
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.az:                                            ; preds = %bb.av, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit117
  %i.mj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.aw
  %i.mk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #19
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn96 = phi { ptr, i32 } [ %i.mk, %bb.ba ], [ %i.mj, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %.loopexit.split-lp.loopexit.split-lp

.preheader141:                                    ; preds = %._crit_edge, %.preheader142
  %.169.lcssa = phi i32 [ %.068191, %.preheader142 ], [ %i.nh, %._crit_edge ]
  store i32 0, ptr %i.q, align 4, !tbaa !10
  %.pre252.a = load ptr, ptr %i.r, align 8, !tbaa !65 ; 6 uses
  br i1 %i.kd, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.preheader141
  %wide.trip.count248 = zext nneg i32 %i.kc to i64 ; 2 uses
  %xtraiter396 = and i64 %wide.trip.count248, 3   ; 3 uses
  %i.ml = icmp ult i32 %i.kc, 4
  br i1 %i.ml, label %.epil.preheader395, label %.lr.ph188.new

.lr.ph188.new:                                    ; preds = %.lr.ph188
  %unroll_iter400 = and i64 %wide.trip.count248, 2147483644
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph185, %._crit_edge
  %10 = phi float [ %.pre253, %.lr.ph185 ], [ %11, %._crit_edge ] ; 2 uses
  %indvars.iv240 = phi i64 [ 0, %.lr.ph185 ], [ %indvars.iv.next241, %._crit_edge ] ; 3 uses
  %.169184 = phi i32 [ %.068191, %.lr.ph185 ], [ %i.nh, %._crit_edge ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv240
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !10
  %i.mo = fpext float %10 to double
  %i.mp = fmul double %i.mo, f0x3F998AC26C586BA4
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.1, i64 %indvars.iv240
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !10
  %i.ms = sext i32 %i.mr to i64
  %i.mt = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.ms
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !82
  %i.mv = fpext float %i.mu to double
  %i.mw = fdiv double %i.mp, %i.mv
  %i.mx = call double @sqrt(double noundef %i.mw) #19
  %i.my = fptrunc double %i.mx to float           ; 2 uses
  %i.mz = fdiv float %i.my, 6.553500e+04
  %i.na = mul i32 %.169184, 1093
  %i.nb = add i32 %i.na, 18257                    ; 2 uses
  %i.nc = and i32 %i.nb, 65535
  %narrow = mul i32 %i.nb, 1093
  %narrow103 = add i32 %narrow, 18257             ; 2 uses
  %i.nd = and i32 %narrow103, 65535
  %i.ne = add nuw nsw i32 %i.nd, %i.nc
  %narrow104 = mul i32 %narrow103, 1093
  %narrow105 = add i32 %narrow104, 18257          ; 2 uses
  %i.nf = and i32 %narrow105, 65535
  %i.ng = add nuw nsw i32 %i.ne, %i.nf
  %narrow106 = mul i32 %narrow105, 1093
  %narrow107 = add i32 %narrow106, 18257
  %i.nh = and i32 %narrow107, 65535               ; 3 uses
  %i.ni = add nuw nsw i32 %i.ng, %i.nh
  %i.nj = uitofp nneg i32 %i.ni to float
  %i.nk = fmul float %i.my, -2.000000e+00
  %i.nl = call float @llvm.fmuladd.f32(float %i.mz, float %i.nj, float %i.nk) ; 10 uses
  br i1 %i.kd, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %bb.bc
  %i.nm = sext i32 %i.mn to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.kv, i64 %i.nm
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !103 ; 6 uses
  br i1 %min.iters.check339, label %.preheader.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.lr.ph
  %scevgep334 = getelementptr i8, ptr %i.no, i64 %i.kw
  %bound0 = icmp ult ptr %i.jm, %scevgep334
  %bound1 = icmp ult ptr %i.no, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %conflict.rdx = or i1 %found.conflict, %found.conflict338
  br i1 %conflict.rdx, label %.preheader.preheader, label %vector.ph340

vector.ph340:                                     ; preds = %vector.memcheck
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.nl, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  br label %vector.body342

vector.body342:                                   ; preds = %vector.body342, %vector.ph340
  %index343 = phi i64 [ 0, %vector.ph340 ], [ %index.next350, %vector.body342 ] ; 4 uses
  %i.np = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %index343
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %index343
  %i.nr = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %index343 ; 2 uses
  %wide.vec = load <24 x float>, ptr %i.np, align 4, !tbaa !82, !alias.scope !106 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec344 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec345 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ns = fmul <8 x float> %broadcast.splat, %strided.vec
  %wide.load = load <8 x float>, ptr %i.nq, align 4, !tbaa !82, !alias.scope !107 ; 3 uses
  %wide.vec346 = load <24 x float>, ptr %i.nr, align 4, !tbaa !82, !alias.scope !108, !noalias !109 ; 3 uses
  %strided.vec347 = shufflevector <24 x float> %wide.vec346, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec348 = shufflevector <24 x float> %wide.vec346, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec349 = shufflevector <24 x float> %wide.vec346, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.nt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ns, <8 x float> %wide.load, <8 x float> %strided.vec347)
  %i.nu = fmul <8 x float> %broadcast.splat, %strided.vec344
  %i.nv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nu, <8 x float> %wide.load, <8 x float> %strided.vec348)
  %i.nw = fmul <8 x float> %broadcast.splat, %strided.vec345
  %i.nx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.nw, <8 x float> %wide.load, <8 x float> %strided.vec349)
  %i.ny = shufflevector <8 x float> %i.nt, <8 x float> %i.nv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.nz = shufflevector <8 x float> %i.nx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.ny, <16 x float> %i.nz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %i.nr, align 4, !tbaa !82, !alias.scope !108, !noalias !109
  %index.next350 = add nuw i64 %index343, 8       ; 2 uses
  %i.oa = icmp eq i64 %index.next350, %n.vec341
  br i1 %i.oa, label %middle.block351, label %vector.body342, !llvm.loop !58

middle.block351:                                  ; preds = %vector.body342
  br i1 %cmp.n352, label %._crit_edge.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %vector.memcheck, %.preheader.lr.ph, %middle.block351
  %indvars.iv235.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.lr.ph ], [ %n.vec341, %middle.block351 ] ; 6 uses
  br i1 %lcmp.mod393.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.ob = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %indvars.iv235.ph ; 3 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv235.ph ; 3 uses
  %i.od = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv235.ph ; 4 uses
  %i.oe = load float, ptr %i.ob, align 4, !tbaa !82
  %i.of = fmul float %i.nl, %i.oe
  %i.og = load float, ptr %i.oc, align 4, !tbaa !82
  %i.oh = load float, ptr %i.od, align 4, !tbaa !82
  %i.oi = call float @llvm.fmuladd.f32(float %i.of, float %i.og, float %i.oh)
  store float %i.oi, ptr %i.od, align 4, !tbaa !82
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ob, i64 4
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !82
  %i.ol = fmul float %i.nl, %i.ok
  %i.om = load float, ptr %i.oc, align 4, !tbaa !82
  %i.on = getelementptr inbounds nuw i8, ptr %i.od, i64 4 ; 2 uses
  %i.oo = load float, ptr %i.on, align 4, !tbaa !82
  %i.op = call float @llvm.fmuladd.f32(float %i.ol, float %i.om, float %i.oo)
  store float %i.op, ptr %i.on, align 4, !tbaa !82
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.or = load float, ptr %i.oq, align 4, !tbaa !82
  %i.os = fmul float %i.nl, %i.or
  %i.ot = load float, ptr %i.oc, align 4, !tbaa !82
  %i.ou = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 2 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !82
  %i.ow = call float @llvm.fmuladd.f32(float %i.os, float %i.ot, float %i.ov)
  store float %i.ow, ptr %i.ou, align 4, !tbaa !82
  %indvars.iv.next236.prol = or disjoint i64 %indvars.iv235.ph, 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %indvars.iv235.unr = phi i64 [ %indvars.iv235.ph, %.preheader.preheader ], [ %indvars.iv.next236.prol, %.preheader.prol ]
  %i.ox = icmp eq i64 %indvars.iv235.ph, %i.ky
  br i1 %i.ox, label %._crit_edge.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.1, %.preheader ], [ %indvars.iv235.unr, %.preheader.prol.loopexit ] ; 5 uses
  %i.oy = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %indvars.iv235 ; 3 uses
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv235 ; 3 uses
  %i.pa = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv235 ; 4 uses
  %i.pb = load float, ptr %i.oy, align 4, !tbaa !82
  %i.pc = fmul float %i.nl, %i.pb
  %i.pd = load float, ptr %i.oz, align 4, !tbaa !82
  %i.pe = load float, ptr %i.pa, align 4, !tbaa !82
  %i.pf = call float @llvm.fmuladd.f32(float %i.pc, float %i.pd, float %i.pe)
  store float %i.pf, ptr %i.pa, align 4, !tbaa !82
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !82
  %i.pi = fmul float %i.nl, %i.ph
  %i.pj = load float, ptr %i.oz, align 4, !tbaa !82
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 4 ; 2 uses
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !82
  %i.pm = call float @llvm.fmuladd.f32(float %i.pi, float %i.pj, float %i.pl)
  store float %i.pm, ptr %i.pk, align 4, !tbaa !82
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.po = load float, ptr %i.pn, align 4, !tbaa !82
  %i.pp = fmul float %i.nl, %i.po
  %i.pq = load float, ptr %i.oz, align 4, !tbaa !82
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !82
  %i.pt = call float @llvm.fmuladd.f32(float %i.pp, float %i.pq, float %i.ps)
  store float %i.pt, ptr %i.pr, align 4, !tbaa !82
  %indvars.iv.next236 = add nuw nsw i64 %indvars.iv235, 1 ; 3 uses
  %i.pu = getelementptr inbounds nuw [12 x i8], ptr %i.no, i64 %indvars.iv.next236 ; 3 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next236 ; 3 uses
  %i.pw = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next236 ; 4 uses
  %i.px = load float, ptr %i.pu, align 4, !tbaa !82
  %i.py = fmul float %i.nl, %i.px
  %i.pz = load float, ptr %i.pv, align 4, !tbaa !82
  %i.qa = load float, ptr %i.pw, align 4, !tbaa !82
  %i.qb = call float @llvm.fmuladd.f32(float %i.py, float %i.pz, float %i.qa)
  store float %i.qb, ptr %i.pw, align 4, !tbaa !82
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 4
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !82
  %i.qe = fmul float %i.nl, %i.qd
  %i.qf = load float, ptr %i.pv, align 4, !tbaa !82
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pw, i64 4 ; 2 uses
  %i.qh = load float, ptr %i.qg, align 4, !tbaa !82
  %i.qi = call float @llvm.fmuladd.f32(float %i.qe, float %i.qf, float %i.qh)
  store float %i.qi, ptr %i.qg, align 4, !tbaa !82
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !82
  %i.ql = fmul float %i.nl, %i.qk
  %i.qm = load float, ptr %i.pv, align 4, !tbaa !82
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !82
  %i.qp = call float @llvm.fmuladd.f32(float %i.ql, float %i.qm, float %i.qo)
  store float %i.qp, ptr %i.qn, align 4, !tbaa !82
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %exitcond239.not.1 = icmp eq i64 %indvars.iv.next236.1, %wide.trip.count238
  br i1 %exitcond239.not.1, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !59

._crit_edge.loopexit:                             ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block351
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
  %niter401 = phi i64 [ 0, %.lr.ph188.new ], [ %niter401.next.3, %bb.bd ]
  %i.qq = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv245 ; 3 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv245
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !10
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.qt ; 3 uses
  %i.qv = load float, ptr %i.qq, align 4, !tbaa !82
  store float %i.qv, ptr %i.qu, align 4, !tbaa !82
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 4
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !82
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store float %i.qx, ptr %i.qy, align 4, !tbaa !82
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !82
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store float %i.ra, ptr %i.rb, align 4, !tbaa !82
  %indvars.iv.next246 = or disjoint i64 %indvars.iv245, 1 ; 3 uses
  %i.rc = trunc nuw nsw i64 %indvars.iv.next246 to i32
  store i32 %i.rc, ptr %i.q, align 4, !tbaa !10
  %i.rd = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246 ; 3 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !10
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.rg ; 3 uses
  %i.ri = load float, ptr %i.rd, align 4, !tbaa !82
  store float %i.ri, ptr %i.rh, align 4, !tbaa !82
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 4
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !82
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rh, i64 4
  store float %i.rk, ptr %i.rl, align 4, !tbaa !82
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !82
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rh, i64 8
  store float %i.rn, ptr %i.ro, align 4, !tbaa !82
  %indvars.iv.next246.1 = or disjoint i64 %indvars.iv245, 2 ; 3 uses
  %i.rp = trunc nuw nsw i64 %indvars.iv.next246.1 to i32
  store i32 %i.rp, ptr %i.q, align 4, !tbaa !10
  %i.rq = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246.1 ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246.1
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !10
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.rt ; 3 uses
  %i.rv = load float, ptr %i.rq, align 4, !tbaa !82
  store float %i.rv, ptr %i.ru, align 4, !tbaa !82
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 4
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !82
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store float %i.rx, ptr %i.ry, align 4, !tbaa !82
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !82
  %i.sb = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  store float %i.sa, ptr %i.sb, align 4, !tbaa !82
  %indvars.iv.next246.2 = or disjoint i64 %indvars.iv245, 3 ; 3 uses
  %i.sc = trunc nuw nsw i64 %indvars.iv.next246.2 to i32
  store i32 %i.sc, ptr %i.q, align 4, !tbaa !10
  %i.sd = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv.next246.2 ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv.next246.2
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !10
  %i.sg = sext i32 %i.sf to i64
  %i.sh = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.sg ; 3 uses
  %i.si = load float, ptr %i.sd, align 4, !tbaa !82
  store float %i.si, ptr %i.sh, align 4, !tbaa !82
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !82
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  store float %i.sk, ptr %i.sl, align 4, !tbaa !82
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !82
  %i.so = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store float %i.sn, ptr %i.so, align 4, !tbaa !82
  %indvars.iv.next246.3 = add nuw nsw i64 %indvars.iv245, 4 ; 3 uses
  %i.sp = trunc nuw nsw i64 %indvars.iv.next246.3 to i32
  store i32 %i.sp, ptr %i.q, align 4, !tbaa !10
  %niter401.next.3 = add i64 %niter401, 4         ; 2 uses
  %niter401.ncmp.3 = icmp eq i64 %niter401.next.3, %unroll_iter400
  br i1 %niter401.ncmp.3, label %._crit_edge189.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !61

._crit_edge189.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod398.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod398.not, label %._crit_edge189, label %.epil.preheader395

.epil.preheader395:                               ; preds = %._crit_edge189.loopexit.unr-lcssa, %.lr.ph188
  %indvars.iv245.epil.init = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next246.3, %._crit_edge189.loopexit.unr-lcssa ]
  %lcmp.mod399 = icmp ne i64 %xtraiter396, 0
  call void @llvm.assume(i1 %lcmp.mod399)
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.epil.preheader395
  %indvars.iv245.epil = phi i64 [ %indvars.iv245.epil.init, %.epil.preheader395 ], [ %indvars.iv.next246.epil, %bb.be ] ; 3 uses
  %epil.iter397 = phi i64 [ 0, %.epil.preheader395 ], [ %epil.iter397.next, %bb.be ]
  %i.sq = getelementptr inbounds nuw [12 x i8], ptr %i.jm, i64 %indvars.iv245.epil ; 3 uses
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %.pre252.a, i64 %indvars.iv245.epil
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !10
  %i.st = sext i32 %i.ss to i64
  %i.su = getelementptr inbounds [12 x i8], ptr %i.jp, i64 %i.st ; 3 uses
  %i.sv = load float, ptr %i.sq, align 4, !tbaa !82
  store float %i.sv, ptr %i.su, align 4, !tbaa !82
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !82
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 4
  store float %i.sx, ptr %i.sy, align 4, !tbaa !82
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !82
  %i.tb = getelementptr inbounds nuw i8, ptr %i.su, i64 8
  store float %i.ta, ptr %i.tb, align 4, !tbaa !82
  %indvars.iv.next246.epil = add nuw nsw i64 %indvars.iv245.epil, 1 ; 2 uses
  %i.tc = trunc nuw nsw i64 %indvars.iv.next246.epil to i32
  store i32 %i.tc, ptr %i.q, align 4, !tbaa !10
  %epil.iter397.next = add i64 %epil.iter397, 1   ; 2 uses
  %epil.iter397.cmp.not = icmp eq i64 %epil.iter397.next, %xtraiter396
  br i1 %epil.iter397.cmp.not, label %._crit_edge189, label %bb.be, !llvm.loop !62

._crit_edge189:                                   ; preds = %._crit_edge189.loopexit.unr-lcssa, %bb.be, %.preheader141
  %i.td = add nuw nsw i32 %.074190, 1             ; 4 uses
  %i.te = uitofp nneg i32 %i.td to float
  %i.tf = invoke noundef i32 @_Z9write_trxP11t_trxstatusiPKiPK7t_atomsifPA3_fS7_S7_P12gmx_conect_t(ptr noundef %i.jr, i32 noundef %i.kc, ptr noundef %.pre252.a, ptr noundef nonnull %i.bf, i32 noundef 0, float noundef %i.te, ptr noundef nonnull %i.m, ptr noundef %i.jp, ptr noundef null, ptr noundef null)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bf:                                            ; preds = %._crit_edge189
  %i.tg = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.th = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tg, ptr noundef nonnull @.str.38, i32 noundef %i.td) #22 ; 0 uses
  %i.ti = load ptr, ptr @stderr, align 8, !tbaa !100
  %i.tj = call i32 @fflush(ptr noundef %i.ti)     ; 0 uses
  %i.tk = load i32, ptr @_ZZ9gmx_nmensiPPcE7nstruct, align 4, !tbaa !10
  %i.tl = icmp slt i32 %i.td, %i.tk
  br i1 %i.tl, label %.preheader143, label %._crit_edge192, !llvm.loop !63

._crit_edge192:                                   ; preds = %bb.bf, %_ZNSt10filesystem7__cxx114pathD2Ev.exit122
  %i.tm = load ptr, ptr @stderr, align 8, !tbaa !100
  %fputc = call i32 @fputc(i32 10, ptr %i.tm)     ; 0 uses
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.jr)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bg:                                            ; preds = %._crit_edge192
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.bh

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bb
  %.pn100.pn = phi { ptr, i32 } [ %.pn96, %bb.bb ], [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %.loopexit.split-lp150

bb.bh:                                            ; preds = %bb.b, %bb.bg
  %i.tn = getelementptr inbounds nuw i8, ptr %4, i64 256 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 16, !tbaa !28 ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !29 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.to, %i.tq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.tw, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.to, %bb.bh ] ; 3 uses
  %i.tr = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !21 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.tt = icmp eq ptr %i.tr, %i.ts
  br i1 %i.tt, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.tu = load i64, ptr %i.ts, align 8, !tbaa !22
  %i.tv = add i64 %i.tu, 1
  call void @_ZdlPvm(ptr noundef %i.tr, i64 noundef %i.tv) #20
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.tw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.tw, %i.tq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.tn, align 16, !tbaa !28
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.bh
  %i.tx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.to, %bb.bh ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.tx, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %4, i64 272
  %i.tz = load ptr, ptr %i.ty, align 16, !tbaa !30
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.uc) #20
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.bi
  %i.ud = getelementptr inbounds nuw i8, ptr %4, i64 200 ; 2 uses
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !28 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %4, i64 208
  %i.ug = load ptr, ptr %i.uf, align 16, !tbaa !29 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.ue, %i.ug
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1
end_hunk_0
