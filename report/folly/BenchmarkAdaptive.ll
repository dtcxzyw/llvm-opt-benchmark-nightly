Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/BenchmarkAdaptive?download=true
inline.NumInlined: 1541
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly6detail21runBenchmarksAdaptiveERKSt6vectorIPKNS0_21BenchmarkRegistrationESaIS4_EERKSt8functionIFNS0_12TimeIterDataEjEESE_RKNS0_15AdaptiveOptionsE:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 %i.ko ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.kn, 1
  br i1 %cond.i.i.i.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ky = load i8, ptr %i.km, align 1, !tbaa !57
  store i8 %i.ky, ptr %i.kx, align 1, !tbaa !57
  br label %bb.bb

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.km, i64 %i.kn, i1 false)
  br label %bb.bb

bb.ba:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.ko, i64 noundef 0, ptr noundef %i.km, i64 noundef %i.kn)
          to label %bb.bb unwind label %.loopexit250

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.aw, %bb.ba
  store i64 %i.kr, ptr %i.hq, align 8, !tbaa !56
  %i.kz = load ptr, ptr %12, align 8, !tbaa !55
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.kr
  store i8 0, ptr %i.la, align 1, !tbaa !57
  %i.lb = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.ib
  br i1 %i.lc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.bb
  %i.ld = load i64, ptr %i.ib, align 8, !tbaa !57
  %i.le = add i64 %i.ld, 1
  call void @_ZdlPvm(ptr noundef %i.lb, i64 noundef %i.le) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  %i.lf = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.id
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.lh = load i64, ptr %i.id, align 8, !tbaa !57
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bj

bb.bc:                                            ; preds = %bb.af
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bd:                                            ; preds = %bb.ah
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit140

bb.be:                                            ; preds = %_ZN5folly6detail13SortedSamplesC2ESt6vectorIdSaIdEE.exit
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lm = load ptr, ptr %14, align 8, !tbaa !25   ; 3 uses
  %.not.i.i.i.i136 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i.i136, label %_ZNSt6vectorIdSaIdEED2Ev.exit140, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ln = load ptr, ptr %i.hv, align 8, !tbaa !36
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.lm to i64
  %i.lq = sub i64 %i.lo, %i.lp
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.lq) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit140

_ZNSt6vectorIdSaIdEED2Ev.exit140:                 ; preds = %bb.bf, %bb.be, %bb.al, %bb.ak, %bb.bd
  %.pn67.pn = phi { ptr, i32 } [ %i.lk, %bb.bd ], [ %i.ir, %bb.ak ], [ %i.ll, %bb.bf ], [ %i.ir, %bb.al ], [ %i.ll, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.bu

bb.bg:                                            ; preds = %bb.an
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %.body125

bb.bh:                                            ; preds = %bb.as
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

.loopexit250:                                     ; preds = %bb.ba
  %lpad.loopexit252 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

.loopexit.split-lp251:                            ; preds = %bb.av
  %lpad.loopexit.split-lp253 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit.split-lp251, %.loopexit250
  %lpad.phi254 = phi { ptr, i32 } [ %lpad.loopexit252, %.loopexit250 ], [ %lpad.loopexit.split-lp253, %.loopexit.split-lp251 ] ; 2 uses
  %i.lt = load ptr, ptr %16, align 8, !tbaa !55   ; 2 uses
  %i.lu = icmp eq ptr %i.lt, %i.ib
  br i1 %i.lu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %bb.bi
  %i.lv = load i64, ptr %i.ib, align 8, !tbaa !57
  %i.lw = add i64 %i.lv, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141, %bb.bh
  %.pn70 = phi { ptr, i32 } [ %i.ls, %bb.bh ], [ %lpad.phi254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141 ], [ %lpad.phi254, %bb.bi ] ; 2 uses
  %i.lx = load ptr, ptr %17, align 8, !tbaa !55   ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.id
  br i1 %i.ly, label %.body125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143
  %i.lz = load i64, ptr %i.id, align 8, !tbaa !57
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #27
  br label %.body125

.body125:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.bg, %_ZNSt6vectorIdSaIdEED2Ev.exit3.i
  %.pn70.pn = phi { ptr, i32 } [ %i.jv, %_ZNSt6vectorIdSaIdEED2Ev.exit3.i ], [ %i.lr, %bb.bg ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.bu

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %.critedge81
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.0230.0307, i64 96 ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %.val84
  br i1 %i.mc, label %._crit_edge310, label %bb.af

bb.bk:                                            ; preds = %._crit_edge310
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZN6google10LogMessageC1EPKcii(ptr noundef nonnull align 8 dereferenceable(96) %18, ptr noundef nonnull @.str.1, i32 noundef 571, i32 noundef 2)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.md = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %18)
          to label %bb.bm unwind label %bb.bo     ; 4 uses

bb.bm:                                            ; preds = %bb.bl
  %i.me = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull @.str.12, i64 noundef 7)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.bm
  %i.mf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull @.str.13, i64 noundef 17)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.mg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef nonnull @.str.14, i64 noundef 4)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151 unwind label %bb.bo ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149
  %i.mh = load ptr, ptr %12, align 8, !tbaa !55
  %i.mi = load i64, ptr %i.hq, align 8, !tbaa !56
  %i.mj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef %i.mh, i64 noundef %i.mi)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bo ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %._crit_edge310.thread

bb.bn:                                            ; preds = %bb.bk
  %i.mk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit149, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.bm, %bb.bl
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %18) #23
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.ml, %bb.bo ], [ %i.mk, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bu

._crit_edge310.thread:                            ; preds = %bb.ae, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %._crit_edge310
  %i.mm = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.hp
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %._crit_edge310.thread
  %i.mo = load i64, ptr %i.hp, align 8, !tbaa !57
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %._crit_edge310.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.val = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %.val82 = load ptr, ptr %i.hr, align 8, !tbaa !50 ; 2 uses
  %i.mq = ptrtoint ptr %.val82 to i64
  %i.mr = ptrtoint ptr %.val to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = sdiv exact i64 %i.ms, 96                ; 4 uses
  %i.mu = icmp ugt i64 %i.mt, 72057594037927935
  br i1 %i.mu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #26
          to label %.noexc159 unwind label %bb.ac

.noexc159:                                        ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.mv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !98
  %i.mx = load ptr, ptr %0, align 8, !tbaa !99
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = ptrtoint ptr %i.mx to i64               ; 2 uses
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = ashr exact i64 %i.na, 7
  %i.nc = icmp ult i64 %i.nb, %i.mt
  br i1 %i.nc, label %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE7reserveEm.exit

_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.br
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !100
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = sub i64 %i.nf, %i.mz
  %i.nh = shl nuw nsw i64 %i.mt, 7
  %i.ni = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #24
          to label %.noexc160 unwind label %bb.ac ; 4 uses

.noexc160:                                        ; preds = %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE11_M_allocateEm.exit.i
  %i.nj = load ptr, ptr %0, align 8, !tbaa !99    ; 3 uses
  %i.nk = load ptr, ptr %i.nd, align 8, !tbaa !100 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.nj, %i.nk
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i156

.lr.ph.i.i.i.i156:                                ; preds = %.noexc160, %.lr.ph.i.i.i.i156
  %.012.i.i.i.i = phi ptr [ %i.nm, %.lr.ph.i.i.i.i156 ], [ %i.ni, %.noexc160 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.nl, %.lr.ph.i.i.i.i156 ], [ %i.nj, %.noexc160 ] ; 2 uses
  call void @_ZSt19__relocate_object_aIN5folly6detail15BenchmarkResultES2_SaIS2_EEvPT_PT0_RT1_(ptr noundef nonnull %.012.i.i.i.i, ptr noundef %.0911.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  %i.nl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 128 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 128
  %.not.i.i.i.i157 = icmp eq ptr %i.nl, %i.nk
  br i1 %.not.i.i.i.i157, label %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i156, !llvm.loop !4

_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i156
  %.pr.i158 = load ptr, ptr %0, align 8, !tbaa !99
  br label %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i

_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i, %.noexc160
  %i.nn = phi ptr [ %.pr.i158, %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exitthread-pre-split.i ], [ %i.nj, %.noexc160 ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.nn, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.no = load ptr, ptr %i.mv, align 8, !tbaa !98
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nn to i64
  %i.nr = sub i64 %i.np, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.nn, i64 noundef %i.nr) #27
  br label %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i

_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i: ; preds = %bb.bs, %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ni, ptr %0, align 8, !tbaa !99
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ng
  store ptr %i.ns, ptr %i.nd, align 8, !tbaa !100
  %i.nt = getelementptr inbounds nuw [128 x i8], ptr %i.ni, i64 %i.mt
  store ptr %i.nt, ptr %i.mv, align 8, !tbaa !98
  %.val85.pre = load ptr, ptr %7, align 8, !tbaa !90
  %.val83.pre = load ptr, ptr %i.hr, align 8, !tbaa !90
  br label %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i, %bb.br
  %.val83 = phi ptr [ %.val83.pre, %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %.val82, %bb.br ] ; 2 uses
  %.val85 = phi ptr [ %.val85.pre, %_ZNSt12_Vector_baseIN5folly6detail15BenchmarkResultESaIS2_EE13_M_deallocateEPS2_m.exit.i ], [ %.val, %bb.br ] ; 2 uses
  %i.nu = icmp eq ptr %.val85, %.val83
  br i1 %i.nu, label %._crit_edge313, label %.lr.ph312

.lr.ph312:                                        ; preds = %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE7reserveEm.exit
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nz = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 12 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 6 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 12 uses
  %i.od = getelementptr inbounds nuw i8, ptr %21, i64 40 ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %21, i64 64 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %21, i64 72 ; 8 uses
  %i.og = getelementptr inbounds nuw i8, ptr %21, i64 80 ; 6 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %21, i64 88 ; 5 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %21, i64 96 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %21, i64 104 ; 4 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %21, i64 120 ; 7 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %21, i64 112 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.bv

._crit_edge313:                                   ; preds = %_ZN5folly6detail13SortedSamplesD2Ev.exit210, %_ZNSt6vectorIN5folly6detail15BenchmarkResultESaIS2_EE7reserveEm.exit
  %i.on = load i64, ptr %i.hg, align 8, !tbaa !93
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.on, ptr %i.oo, align 8, !tbaa !195
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gz) #23
  %i.op = load ptr, ptr %10, align 8, !tbaa !55   ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.gs
  br i1 %i.oq, label %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %._crit_edge313
  %i.or = load i64, ptr %i.gs, align 8, !tbaa !57
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #27
  br label %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit163

_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit163: ; preds = %._crit_edge313, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.gr) #23
  %i.ot = load ptr, ptr %9, align 8, !tbaa !55    ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.gl
  br i1 %i.ou, label %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164: ; preds = %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit163
  %i.ov = load i64, ptr %i.gl, align 8, !tbaa !57
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #27
  br label %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166

_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166: ; preds = %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit163, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.ox = load ptr, ptr %7, align 8, !tbaa !49    ; 3 uses
  %i.oy = load ptr, ptr %i.hr, align 8, !tbaa !50 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ox, %i.oy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166, %_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.pf, %_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i ], [ %i.ox, %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166 ] ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  call void @_ZNSt6vectorISt4pairIdSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5folly10UserMetricESt4hashIS7_ESt8equal_toIS7_ESaIS0_IKS7_S9_EEEESaISI_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.oz) #23
  %i.pa = load ptr, ptr %.05.i.i.i, align 8, !tbaa !55 ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.pc = icmp eq ptr %i.pa, %i.pb
  br i1 %i.pc, label %_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i167: ; preds = %.lr.ph.i.i.i
  %i.pd = load i64, ptr %i.pb, align 8, !tbaa !57
  %i.pe = add i64 %i.pd, 1
  call void @_ZdlPvm(ptr noundef %i.pa, i64 noundef %i.pe) #27
  br label %_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i167
  %i.pf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i168 = icmp eq ptr %i.pf, %i.oy
  br i1 %.not.i.i.i168, label %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !5

_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5folly6detail12_GLOBAL__N_110BenchStateEEvPT_.exit.i.i.i
  %.val.pr.i = load ptr, ptr %7, align 8, !tbaa !49
  br label %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166
  %.val.i169 = phi ptr [ %.val.pr.i, %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.ox, %_ZN5folly6detail12_GLOBAL__N_110BenchStateD2Ev.exit166 ] ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.val.i169, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN5folly6detail12_GLOBAL__N_110BenchStateESaIS3_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exit.i
  %.val1.i = load ptr, ptr %i.m, align 8, !tbaa !62
  %i.pg = ptrtoint ptr %.val1.i to i64
  %i.ph = ptrtoint ptr %.val.i169 to i64
  %i.pi = sub i64 %i.pg, %i.ph
  call void @_ZdlPvm(ptr noundef nonnull %.val.i169, i64 noundef %i.pi) #27
  br label %_ZNSt6vectorIN5folly6detail12_GLOBAL__N_110BenchStateESaIS3_EED2Ev.exit

_ZNSt6vectorIN5folly6detail12_GLOBAL__N_110BenchStateESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5folly6detail12_GLOBAL__N_110BenchStateES3_EvT_S5_RSaIT0_E.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.df

bb.bu:                                            ; preds = %bb.bc, %_ZNSt6vectorIdSaIdEED2Ev.exit140, %.body125, %bb.bp
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bp ], [ %.pn70.pn, %.body125 ], [ %.pn67.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit140 ], [ %i.lj, %bb.bc ]
  %i.pj = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.pk = icmp eq ptr %i.pj, %i.hp
  br i1 %i.pk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.bu
  %i.pl = load i64, ptr %i.hp, align 8, !tbaa !57
  %i.pm = add i64 %i.pl, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.dc

bb.bv:                                            ; preds = %.lr.ph312, %_ZN5folly6detail13SortedSamplesD2Ev.exit210
  %.sroa.0228.0311 = phi ptr [ %.val85, %.lr.ph312 ], [ %i.ur, %_ZN5folly6detail13SortedSamplesD2Ev.exit210 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke fastcc void @_ZNK5folly6detail12_GLOBAL__N_110BenchState7timingsEv(ptr dead_on_unwind noalias writable align 8 %20, ptr noundef nonnull align 8 dereferenceable(89) %.sroa.0228.0311)
          to label %bb.bw unwind label %bb.cw

bb.bw:                                            ; preds = %bb.bv
  %i.pn = load ptr, ptr %20, align 8, !tbaa !25   ; 5 uses
  store ptr %i.pn, ptr %19, align 8, !tbaa !25
end_hunk_0
begin_hunk_1_@_ZN5folly6detail12_GLOBAL__N_117verboseLogInitialERKNS0_15AdaptiveOptionsERKSt6vectorINS1_10BenchStateESaIS6_EE:bb.a

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !55     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !57
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26
  %.sroa.034.035 = phi ptr [ %i.z, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26 ], [ %.val, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.18, i64 noundef 5)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25 unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25: ; preds = %.lr.ph
  %i.v = load ptr, ptr %.sroa.034.035, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.034.035, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !56
  %i.y = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.v, i64 noundef %i.x)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26 unwind label %bb.f ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit26: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.034.035, i64 96 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %.val18
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit25, %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.g:                                             ; preds = %._crit_edge
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !53, !alias.scope !203
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.ae, align 8, !tbaa !56, !alias.scope !203
  store i8 0, ptr %i.ad, align 8, !tbaa !57, !alias.scope !203
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !120, !noalias !203 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ag, null
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !203 ; 2 uses
  %i.aj = icmp ugt ptr %i.ag, %i.ai
  %.08.i.i.i = select i1 %i.aj, ptr %i.ag, ptr %i.ai ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !121, !noalias !203 ; 2 uses
  %i.am = ptrtoint ptr %.08.i.i.i to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef %i.al, i64 noundef %i.ao)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j ; 0 uses

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %5, align 8, !tbaa !55, !alias.scope !203 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ad
  br i1 %i.as, label %.body, label %.body.sink.split

bb.k:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %i.at)
          to label %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.j

_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.k, %bb.i
  %i.au = load ptr, ptr %5, align 8, !tbaa !55
  %i.av = load i64, ptr %i.ae, align 8, !tbaa !56
  %i.aw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef %i.au, i64 noundef %i.av)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27 unwind label %bb.n ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27: ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ax = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.ad
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.bb = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.bb, ptr %2, align 8, !tbaa !123
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bd = getelementptr i8, ptr %i.bb, i64 -24
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bg, align 8, !tbaa !123
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !55 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !57
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bg, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bn) #23
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bo) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %bb.g
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNKRSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %5, align 8, !tbaa !55    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.ad
  br i1 %i.bt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.n, %bb.j
  %.sink = phi ptr [ %i.ar, %bb.j ], [ %i.bs, %bb.n ]
  %.pn12.ph = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.br, %bb.n ]
  %i.bu = load i64, ptr %i.ad, align 8, !tbaa !57
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.n, %bb.j
  %.pn12 = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.br, %bb.n ], [ %.pn12.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

bb.o:                                             ; preds = %.body, %bb.m
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %.body ], [ %i.bq, %bb.m ]
  call void @_ZN6google10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %4) #23
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %bb.o ], [ %i.bp, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %bb.c
  %.pn16 = phi { ptr, i32 } [ %i.ab, %bb.f ], [ %.pn12.pn.pn, %bb.p ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.m, %bb.c ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress noinline uwtable
define internal fastcc void @_ZN5folly6detail12_GLOBAL__N_112SamplingLoop3runEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %1 = alloca %"struct.folly::detail::TimeIterData", align 8 ; 15 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %2 = alloca %"class.folly::ThreadLocalPRNG", align 1 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124, !nonnull !66, !align !125 ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !49  ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val19 = load ptr, ptr %i.e, align 8, !tbaa !50 ; 2 uses
  %i.f = ptrtoint ptr %.val19 to i64
  %i.g = ptrtoint ptr %.val to i64
  %i.h = sub i64 %i.f, %i.g
  %.fr = freeze i64 %i.h                          ; 2 uses
  %i.i = sdiv i64 %.fr, 96                        ; 4 uses
  %3 = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %3, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #26
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %.val19, %.val
  br i1 %.not.i.i.i.i, label %.split.us.preheader, label %.noexc21

.noexc21:                                         ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 12 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.i ; 3 uses
  store i64 0, ptr %i.k, align 8, !tbaa !27
  %i.m = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.n = add nsw i64 %i.i, -1                     ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.thread73, label %_ZNSt6vectorImSaImEEC2EmRKS0_.exit

_ZNSt6vectorImSaImEEC2EmRKS0_.exit.thread73:      ; preds = %.noexc21
  %i.p = ptrtoint ptr %i.k to i64
  br label %.lr.ph.preheader

_ZNSt6vectorImSaImEEC2EmRKS0_.exit:               ; preds = %.noexc21
  %.idx.i.i.i.i.i.i.i = shl nsw i64 %i.n, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !27
  %i.q = getelementptr i8, ptr %i.m, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  %i.r = ptrtoint ptr %i.k to i64                 ; 2 uses
  %.fr.off = add i64 %.fr, 95
  %.not = icmp ult i64 %.fr.off, 191
  br i1 %.not, label %.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.thread73, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %i.s = phi i64 [ %i.p, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.thread73 ], [ %i.r, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 3 uses
  %.0.i.i.i.i.i80 = phi ptr [ %i.m, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit.thread73 ], [ %i.q, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ] ; 3 uses
  %i.t = ptrtoint ptr %.0.i.i.i.i.i80 to i64
  %i.u = sub i64 %i.t, %i.s
  %i.v = ashr exact i64 %i.u, 3                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.v, 4
  br i1 %min.iters.check, label %.lr.ph.preheader104, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %vec.ind, ptr %i.w, align 8, !tbaa !27
  store <2 x i64> %step.add, ptr %i.x, align 8, !tbaa !27
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !204

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %.split.preheader, label %.lr.ph.preheader104

.lr.ph.preheader104:                              ; preds = %.lr.ph.preheader, %middle.block
  %.01640.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.split.preheader:                                 ; preds = %.lr.ph, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %.split

.split.us.preheader:                              ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit
  %.ph = phi i64 [ %i.r, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ 0, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.0.i.i.i.i.i71.ph = phi ptr [ %i.q, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.031.069.ph = phi ptr [ %i.k, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 5 uses
  %.sroa.16.067.ph = phi ptr [ %i.l, %_ZNSt6vectorImSaImEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %bb.h
  %i.aw = load i64, ptr %i.ap, align 8, !tbaa !93 ; 2 uses
  %i.ax = and i64 %i.aw, 7
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split.us
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !126, !nonnull !66, !align !125
  %i.ba = load ptr, ptr %0, align 8, !tbaa !212, !nonnull !66, !align !125
  %i.bb = invoke fastcc noundef double @_ZN5folly6detail12_GLOBAL__N_110BenchState18runAndAddSampleRawERKSt8functionIFNS0_12TimeIterDataEjEERNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(89) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.c unwind label %.body

bb.c:                                             ; preds = %bb.b
  store double %i.bb, ptr %i.as, align 8, !tbaa !213
  %.pre50 = load i64, ptr %i.ap, align 8, !tbaa !93
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split.us
  %i.bc = phi i64 [ %.pre50, %bb.c ], [ %i.aw, %.split.us ]
  %i.bd = and i64 %i.bc, 1
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.at, align 8, !tbaa !127, !nonnull !66, !align !125
  %i.bg = load ptr, ptr %i.au, align 8, !tbaa !214, !nonnull !66, !align !125
  %i.bh = invoke fastcc noundef double @_ZN5folly6detail12_GLOBAL__N_110BenchState18runAndAddSampleRawERKSt8functionIFNS0_12TimeIterDataEjEERNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(89) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %bb.f unwind label %.body

bb.f:                                             ; preds = %bb.e
  store double %i.bh, ptr %i.av, align 8, !tbaa !215
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERN5folly15ThreadLocalPRNGEEvT_SA_OT0_(ptr %.sroa.031.069.ph, ptr %.0.i.i.i.i.i71.ph, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.preheader.us unwind label %.body

bb.h:                                             ; preds = %.preheader.us
  br i1 %i.bk, label %.split47.us, label %.split.us, !llvm.loop !205

.preheader.us:                                    ; preds = %bb.g
  %i.bi = load i64, ptr %i.ap, align 8, !tbaa !93
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.ap, align 8, !tbaa !93
  %i.bk = invoke fastcc noundef zeroext i1 @_ZN5folly6detail12_GLOBAL__N_112SamplingLoop12checkAllDoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.h unwind label %.body

.lr.ph:                                           ; preds = %.lr.ph.preheader104, %.lr.ph
  %.01640 = phi i64 [ %i.bm, %.lr.ph ], [ %.01640.ph, %.lr.ph.preheader104 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.01640
  store i64 %.01640, ptr %i.bl, align 8, !tbaa !27
  %i.bm = add nuw i64 %.01640, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bm, %i.v
  br i1 %exitcond.not, label %.split.preheader, label %.lr.ph, !llvm.loop !206

.split:                                           ; preds = %.split.preheader, %bb.ab
  %i.bn = load i64, ptr %i.z, align 8, !tbaa !93  ; 2 uses
  %i.bo = and i64 %i.bn, 7
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.split
  %i.bq = load ptr, ptr %i.aa, align 8, !tbaa !126, !nonnull !66, !align !125
  %i.br = load ptr, ptr %0, align 8, !tbaa !212, !nonnull !66, !align !125
  %i.bs = invoke fastcc noundef double @_ZN5folly6detail12_GLOBAL__N_110BenchState18runAndAddSampleRawERKSt8functionIFNS0_12TimeIterDataEjEERNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(89) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.j unwind label %.split45

bb.j:                                             ; preds = %bb.i
  store double %i.bs, ptr %i.ac, align 8, !tbaa !213
  %.pre = load i64, ptr %i.z, align 8, !tbaa !93
  br label %bb.k

.split45:                                         ; preds = %._crit_edge43, %bb.n, %bb.l, %bb.i
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.k:                                             ; preds = %bb.j, %.split
  %i.bu = phi i64 [ %.pre, %bb.j ], [ %i.bn, %.split ]
  %i.bv = and i64 %i.bu, 1
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !127, !nonnull !66, !align !125
  %i.by = load ptr, ptr %i.ae, align 8, !tbaa !214, !nonnull !66, !align !125
  %i.bz = invoke fastcc noundef double @_ZN5folly6detail12_GLOBAL__N_110BenchState18runAndAddSampleRawERKSt8functionIFNS0_12TimeIterDataEjEERNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEE(ptr noundef nonnull align 8 dereferenceable(89) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %i.by, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.m unwind label %.split45

bb.m:                                             ; preds = %bb.l
  store double %i.bz, ptr %i.af, align 8, !tbaa !215
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  invoke void @_ZSt7shuffleIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEERN5folly15ThreadLocalPRNGEEvT_SA_OT0_(ptr nonnull %i.k, ptr %.0.i.i.i.i.i80, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.preheader unwind label %.split45

._crit_edge43:                                    ; preds = %bb.aa
  %i.ca = load i64, ptr %i.z, align 8, !tbaa !93
  %i.cb = add i64 %i.ca, 1
  store i64 %i.cb, ptr %i.z, align 8, !tbaa !93
  %i.cc = invoke fastcc noundef zeroext i1 @_ZN5folly6detail12_GLOBAL__N_112SamplingLoop12checkAllDoneEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.ab unwind label %.split45

.preheader:                                       ; preds = %bb.n, %bb.aa
  %.sroa.027.041 = phi ptr [ %i.fa, %bb.aa ], [ %i.k, %bb.n ] ; 2 uses
  %i.cd = load i64, ptr %.sroa.027.041, align 8, !tbaa !27
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !124, !nonnull !66, !align !125
  %.val20 = load ptr, ptr %i.ce, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw [96 x i8], ptr %.val20, i64 %i.cd ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !128, !range !65, !noundef !66
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.aa, label %bb.o

bb.o:                                             ; preds = %.preheader
  %i.cj = load double, ptr %i.ac, align 8, !tbaa !213
  %i.ck = load double, ptr %i.af, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !76
  %i.cp = trunc i64 %i.co to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.cp, ptr %i.a, align 4, !tbaa !28, !noalias !216
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 80
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !130, !noalias !216
  %.not.i.i.i = icmp eq ptr %i.cr, null
end_hunk_1
