Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/updater_quantile_hist?download=true
inline.NumInlined: 15946
inline.NumDeleted: 4545
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EE:bb.a
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.ah unwind label %bb.dh

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn49 = phi { ptr, i32 } [ %i.di, %bb.af ], [ %i.dj, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.de

bb.ai:                                            ; preds = %bb.ae, %._crit_edge
  %i.dk = phi ptr [ %i.dc, %bb.ae ], [ %i.au, %._crit_edge ]
  %i.dl = phi ptr [ %i.dd, %bb.ae ], [ %i.av, %._crit_edge ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !1120
  %i.do = invoke noundef i32 @_ZNK7xgboost7Context7ThreadsEv(ptr noundef nonnull align 8 dereferenceable(5084) %i.dn)
          to label %bb.aj unwind label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.do, ptr %i.c, align 4, !tbaa !54
  %i.dp = load ptr, ptr %12, align 8, !tbaa !1219
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !1130
  %i.dr = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq)
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !54
  %i.dt = sext i32 %i.ds to i64
  %i.du = udiv i64 %i.dr, %i.dt
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.dv = load ptr, ptr %i.ag, align 8, !tbaa !521
  %i.dw = load ptr, ptr %6, align 8, !tbaa !548
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 104
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #11
  store ptr %12, ptr %16, align 8, !tbaa !1222
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree18HistMultiEvaluator14EvaluateSplitsENS0_4SpanIPKNS3_21BoundedHistCollectionELm18446744073709551615EEERKNS0_13HistogramCutsENS5_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS3_16MultiExpandEntryESaISH_EEEUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %15, i64 noundef %i.ea, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %.sroa.speculated)
          to label %bb.al unwind label %bb.as

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.eb = load i32, ptr %i.c, align 4, !tbaa !54
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = load ptr, ptr %i.ag, align 8, !tbaa !521 ; 2 uses
  %i.ee = load ptr, ptr %6, align 8, !tbaa !548   ; 2 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg                    ; 2 uses
  %i.ei = sdiv exact i64 %i.eh, 104
  %i.ej = mul i64 %i.ei, %i.ec                    ; 3 uses
  %i.ek = icmp ugt i64 %i.ej, 88686269585142075
  br i1 %i.ek, label %bb.am, label %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc94 unwind label %bb.at

.noexc94:                                         ; preds = %bb.am
  unreachable

_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.al
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %.not.i.i.i.i89 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i89, label %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i90

_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %17, align 8
  br label %bb.an

.lr.ph.preheader.i.i.i.i.i90:                     ; preds = %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.el = mul i64 %i.eh, %i.ec                    ; 3 uses
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #38
          to label %.noexc95 unwind label %bb.at  ; 4 uses

.noexc95:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i90
  store ptr %i.em, ptr %17, align 8, !tbaa !548
  %i.en = getelementptr inbounds nuw [104 x i8], ptr %i.em, i64 %i.ej
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.em, i8 0, i64 %i.el, i1 false)
  %scevgep.i.i.i.i.i91 = getelementptr i8, ptr %i.em, i64 %i.el
  %.pre178 = load ptr, ptr %i.ag, align 8, !tbaa !521
  %.pre179 = load ptr, ptr %6, align 8, !tbaa !548
  br label %bb.an

bb.an:                                            ; preds = %.noexc95, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.eo = phi ptr [ %i.ee, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre179, %.noexc95 ] ; 2 uses
  %i.ep = phi ptr [ %i.ed, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre178, %.noexc95 ] ; 2 uses
  %.sink.i92 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.en, %.noexc95 ]
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree16MultiExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i91, %.noexc95 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  store ptr %.sink.i92, ptr %i.er, align 8, !tbaa !523
  store ptr %.0.lcssa.i.i.i.i.i93, ptr %i.eq, align 8, !tbaa !521
  %.not167 = icmp ne ptr %i.ep, %i.eo
  %i.es = load i32, ptr %i.c, align 4             ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  %or.cond = select i1 %.not167, i1 %i.et, i1 false
  br i1 %or.cond, label %.preheader149, label %._crit_edge160

.preheader149:                                    ; preds = %bb.an, %._crit_edge158
  %i.eu = phi ptr [ %i.fu, %._crit_edge158 ], [ %i.eo, %bb.an ]
  %i.ev = phi ptr [ %i.fv, %._crit_edge158 ], [ %i.ep, %bb.an ]
  %i.ew = phi i32 [ %i.fw, %._crit_edge158 ], [ %i.es, %bb.an ] ; 3 uses
  %.034159 = phi i64 [ %i.fx, %._crit_edge158 ], [ 0, %bb.an ] ; 3 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph157, label %._crit_edge158

._crit_edge160:                                   ; preds = %._crit_edge158, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #11
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fa = load i16, ptr %i.ez, align 8, !tbaa !660, !noalias !1224
  %i.fb = icmp eq i16 %i.fa, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge160
  %i.fd = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc97 unwind label %bb.cc

.noexc97:                                         ; preds = %bb.ao
  store ptr %i.fd, ptr %18, align 8, !tbaa !662, !alias.scope !1224
  %i.fe = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ey)
          to label %.noexc98 unwind label %bb.cc

.noexc98:                                         ; preds = %.noexc97
  %i.ff = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !664, !alias.scope !1224
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fh = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fg)
          to label %bb.bn unwind label %bb.cc

bb.ap:                                            ; preds = %._crit_edge160
  %i.fi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fc)
          to label %.noexc100 unwind label %bb.cc

.noexc100:                                        ; preds = %bb.ap
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38, !noalias !1224
  store ptr %i.fj, ptr %18, align 8, !tbaa !662, !alias.scope !1224
  %i.fk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ey)
          to label %.noexc101 unwind label %bb.cc

.noexc101:                                        ; preds = %.noexc100
  %i.fl = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fm = load ptr, ptr %i.fk, align 8, !tbaa !644, !noalias !1224
  store ptr %i.fm, ptr %i.fl, align 8, !tbaa !664, !alias.scope !1224
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fn)
          to label %.noexc102 unwind label %bb.cc

.noexc102:                                        ; preds = %.noexc101
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !644, !noalias !1224
  br label %bb.bn

bb.aq:                                            ; preds = %bb.ai
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.ar:                                            ; preds = %bb.aj
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.as:                                            ; preds = %bb.ak
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.dc

bb.at:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i90, %bb.am
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

._crit_edge158.loopexit:                          ; preds = %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit
  %.pre180 = load ptr, ptr %i.ag, align 8, !tbaa !521
  %.pre181 = load ptr, ptr %6, align 8, !tbaa !548
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.loopexit, %.preheader149
  %i.fu = phi ptr [ %.pre181, %._crit_edge158.loopexit ], [ %i.eu, %.preheader149 ] ; 2 uses
  %i.fv = phi ptr [ %.pre180, %._crit_edge158.loopexit ], [ %i.ev, %.preheader149 ] ; 2 uses
  %i.fw = phi i32 [ %i.ir, %._crit_edge158.loopexit ], [ %i.ew, %.preheader149 ]
  %i.fx = add nuw i64 %.034159, 1                 ; 2 uses
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = ptrtoint ptr %i.fu to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = sdiv exact i64 %i.ga, 104
  %i.gc = icmp ult i64 %i.fx, %i.gb
  br i1 %i.gc, label %.preheader149, label %._crit_edge160, !llvm.loop !1227

.lr.ph157:                                        ; preds = %.preheader149, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit ], [ 0, %.preheader149 ] ; 2 uses
  %i.gd = phi i32 [ %i.ir, %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit ], [ %i.ew, %.preheader149 ]
  %i.ge = load ptr, ptr %6, align 8, !tbaa !548
  %i.gf = getelementptr inbounds nuw [104 x i8], ptr %i.ge, i64 %.034159 ; 8 uses
  %20 = sext i32 %i.gd to i64
  %i.gg = mul i64 %.034159, %20
  %i.gh = load ptr, ptr %17, align 8, !tbaa !548
  %i.gi = getelementptr [104 x i8], ptr %i.gh, i64 %i.gg
  %i.gj = getelementptr [104 x i8], ptr %i.gi, i64 %indvars.iv ; 10 uses
  %i.gk = load i64, ptr %i.gf, align 8
  store i64 %i.gk, ptr %i.gj, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.gl, ptr noundef nonnull align 8 dereferenceable(96) %i.gm, i64 12, i1 false)
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 5 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %.not.i118 = icmp eq ptr %i.gf, %i.gj
  br i1 %.not.i118, label %.noexc103, label %bb.au

bb.au:                                            ; preds = %.lr.ph157
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gf, i64 32 ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !696
  %i.gr = load ptr, ptr %i.go, align 8, !tbaa !508 ; 9 uses
  %i.gs = ptrtoint ptr %i.gq to i64               ; 3 uses
  %i.gt = ptrtoint ptr %i.gr to i64
  %i.gu = sub i64 %i.gs, %i.gt                    ; 12 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gj, i64 40 ; 3 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !510
  %i.gx = load ptr, ptr %i.gn, align 8, !tbaa !508 ; 5 uses
  %i.gy = ptrtoint ptr %i.gw to i64
  %i.gz = ptrtoint ptr %i.gx to i64               ; 2 uses
  %i.ha = sub i64 %i.gy, %i.gz
  %i.hb = icmp ugt i64 %i.gu, %i.ha
  br i1 %i.hb, label %bb.av, label %bb.bb

bb.av:                                            ; preds = %bb.au
  %i.hc = icmp ugt i64 %i.gu, 9223372036854775804
  br i1 %i.hc, label %bb.aw, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, !prof !176

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc120 unwind label %.loopexit.split-lp151

.noexc120:                                        ; preds = %bb.aw
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.av
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #38
          to label %.noexc121 unwind label %.loopexit150 ; 4 uses

.noexc121:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.he = icmp samesign ugt i64 %i.gu, 4
  br i1 %i.he, label %bb.ax, label %bb.ay, !prof !218

bb.ax:                                            ; preds = %.noexc121
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hd, ptr align 4 %i.gr, i64 %i.gu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.ay:                                            ; preds = %.noexc121
  %i.hf = icmp eq i64 %i.gu, 4
  br i1 %i.hf, label %bb.az, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.az:                                            ; preds = %bb.ay
  %i.hg = load i32, ptr %i.gr, align 4, !tbaa !54
  store i32 %i.hg, ptr %i.hd, align 4, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax
  %i.hh = load ptr, ptr %i.gn, align 8, !tbaa !508 ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i119, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  %i.hi = load ptr, ptr %i.gv, align 8, !tbaa !510
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hl) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.ba, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  store ptr %i.hd, ptr %i.gn, align 8, !tbaa !508
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.gu
  store ptr %i.hm, ptr %i.gv, align 8, !tbaa !510
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bb:                                            ; preds = %bb.au
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gj, i64 32 ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !696 ; 3 uses
  %i.hp = ptrtoint ptr %i.ho to i64
  %i.hq = sub i64 %i.hp, %i.gz                    ; 5 uses
  %.not24.i = icmp ult i64 %i.hq, %i.gu
  br i1 %.not24.i, label %bb.bg, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hr = icmp sgt i64 %i.gu, 4
  br i1 %i.hr, label %bb.bd, label %bb.be, !prof !218

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gx, ptr align 4 %i.gr, i64 %i.gu, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.hs = icmp eq i64 %i.gu, 4
  br i1 %i.hs, label %bb.bf, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.ht = load i32, ptr %i.gr, align 4, !tbaa !54
  store i32 %i.ht, ptr %i.gx, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bg:                                            ; preds = %bb.bb
  %i.hu = icmp sgt i64 %i.hq, 4
  br i1 %i.hu, label %bb.bh, label %bb.bi, !prof !218

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gx, ptr align 4 %i.gr, i64 %i.hq, i1 false)
  %.pre.i = load ptr, ptr %i.go, align 8, !tbaa !508
  %.pre25.i = load ptr, ptr %i.hn, align 8, !tbaa !696 ; 2 uses
  %.pre26.i = load ptr, ptr %i.gn, align 8, !tbaa !508
  %.pre27.i = load ptr, ptr %i.gp, align 8, !tbaa !696
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.hv = icmp eq i64 %i.hq, 4
  br i1 %i.hv, label %bb.bj, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.hw = load i32, ptr %i.gr, align 4, !tbaa !54
  store i32 %i.hw, ptr %i.gx, align 4, !tbaa !54
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.bj, %bb.bi, %bb.bh
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.bh ], [ %i.gs, %bb.bi ], [ %i.gs, %bb.bj ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.bh ], [ %i.hq, %bb.bi ], [ 4, %bb.bj ]
  %i.hx = phi ptr [ %.pre25.i, %bb.bh ], [ %i.ho, %bb.bi ], [ %i.ho, %bb.bj ] ; 2 uses
  %i.hy = phi ptr [ %.pre.i, %bb.bh ], [ %i.gr, %bb.bi ], [ %i.gr, %bb.bj ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.pre-phi32.i ; 3 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = sub i64 %.pre-phi34.i, %i.ia            ; 3 uses
  %i.ic = icmp sgt i64 %i.ib, 4
  br i1 %i.ic, label %bb.bk, label %bb.bl, !prof !218

bb.bk:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.hx, ptr align 4 %i.hz, i64 %i.ib, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bl:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.id = icmp eq i64 %i.ib, 4
  br i1 %i.id, label %bb.bm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.bm:                                            ; preds = %bb.bl
  %i.ie = load i32, ptr %i.hz, align 4, !tbaa !54
  store i32 %i.ie, ptr %i.hx, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bf, %bb.be, %bb.bd, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.if = load ptr, ptr %i.gn, align 8, !tbaa !508
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.gu
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  store ptr %i.ig, ptr %i.ih, align 8, !tbaa !696
  br label %.noexc103

.noexc103:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i, %.lr.ph157
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  %i.ij = load i8, ptr %i.ii, align 8, !tbaa !896, !range !197, !noundef !198
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gj, i64 48
  store i8 %i.ij, ptr %i.ik, align 8, !tbaa !896
  %i.il = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.im = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.in = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.il, ptr noundef nonnull align 8 dereferenceable(24) %i.im)
          to label %.noexc104 unwind label %.loopexit150 ; 0 uses

.noexc104:                                        ; preds = %.noexc103
  %i.io = getelementptr inbounds nuw i8, ptr %i.gj, i64 80
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gf, i64 80
  %i.iq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.ip)
          to label %_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit unwind label %.loopexit150 ; 0 uses

_ZN7xgboost4tree16MultiExpandEntryaSERKS1_.exit:  ; preds = %.noexc104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ir = load i32, ptr %i.c, align 4, !tbaa !54  ; 3 uses
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp slt i64 %indvars.iv.next, %i.is
  br i1 %i.it, label %.lr.ph157, label %._crit_edge158.loopexit, !llvm.loop !1229

.loopexit150:                                     ; preds = %.noexc103, %.noexc104, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %lpad.loopexit152 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

.loopexit.split-lp151:                            ; preds = %bb.aw
  %lpad.loopexit.split-lp153 = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.bn:                                            ; preds = %.noexc102, %.noexc98
  %.sink4.i = phi ptr [ %i.fp, %.noexc102 ], [ %i.fh, %.noexc98 ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sink.i96 = load i32, ptr %.sink.in.i, align 4, !tbaa !665, !noalias !1224
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 96
end_hunk_0
begin_hunk_1_@_ZN7xgboost4tree18HistMultiEvaluator14EvaluateSplitsENS_6common4SpanIPKNS0_21BoundedHistCollectionELm18446744073709551615EEERKNS2_13HistogramCutsENS3_IKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_16MultiExpandEntryESaISF_EE:bb.a
  %.not.i.i.i1.i.i.i.i.i.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i1.i.i.i.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.jz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !381
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = ptrtoint ptr %i.jy to i64
  %i.kd = sub i64 %i.kb, %i.kc
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kd) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i.i.i.i.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i.i.i.i.i: ; preds = %bb.bq, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i.i.i.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i3.i.i.i.i.i.i = icmp eq ptr %i.kf, null
  br i1 %.not.i.i.i3.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4tree16MultiExpandEntryEEvPT_.exit.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i.i.i.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !510
  %i.ki = ptrtoint ptr %i.kh to i64
  %i.kj = ptrtoint ptr %i.kf to i64
  %i.kk = sub i64 %i.ki, %i.kj
  call void @_ZdlPvm(ptr noundef nonnull %i.kf, i64 noundef %i.kk) #39
  br label %_ZSt8_DestroyIN7xgboost4tree16MultiExpandEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4tree16MultiExpandEntryEEvPT_.exit.i.i.i: ; preds = %bb.br, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i.i.i.i.i.i
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i106 = icmp eq ptr %i.kl, %i.jp
  br i1 %.not.i.i.i106, label %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !549

_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4tree16MultiExpandEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %17, align 8, !tbaa !548
  br label %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge165
  %i.km = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.jo, %._crit_edge165 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.km, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exit.i
  %i.kn = load ptr, ptr %i.er, align 8, !tbaa !523
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = ptrtoint ptr %i.km to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %i.km, i64 noundef %i.kq) #39
  br label %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost4tree16MultiExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #11
  %i.kr = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i.i107 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i.i107, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EED2Ev.exit
  %i.kt = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !337
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.bt, %_ZNSt6vectorIN7xgboost4tree16MultiExpandEntryESaIS2_EED2Ev.exit
  %i.ky = load ptr, ptr %15, align 8, !tbaa !605  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ky, null
  br i1 %.not.i.i.i1.i, label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.kz = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !608
  %i.lb = ptrtoint ptr %i.la to i64
  %i.lc = ptrtoint ptr %i.ky to i64
  %i.ld = sub i64 %i.lb, %i.lc
  call void @_ZdlPvm(ptr noundef nonnull %i.ky, i64 noundef %i.ld) #39
  br label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit

_ZN7xgboost6common14BlockedSpace2dD2Ev.exit:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  %i.le = load ptr, ptr %12, align 8, !tbaa !1214 ; 3 uses
  %i.lf = load ptr, ptr %i.dk, align 8, !tbaa !1218 ; 2 uses
  %.not4.i.i.i108 = icmp eq ptr %i.le, %i.lf
  br i1 %.not4.i.i.i108, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i109

.lr.ph.i.i.i109:                                  ; preds = %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.05.i.i.i110 = phi ptr [ %i.lx, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i ], [ %i.le, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i110, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !161 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph.i.i.i109
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8 ; 4 uses
  %i.lj = load atomic i64, ptr %i.li acquire, align 8 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 4294967297
  %i.ll = trunc i64 %i.lj to i32                  ; 2 uses
  br i1 %i.lk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.li, align 8, !tbaa !158
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 12
  store i32 0, ptr %i.lm, align 4, !tbaa !160
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !89
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  %i.lp = load ptr, ptr %i.lo, align 8
  call void %i.lp(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #11, !inline_history !1240
  %i.lq = load ptr, ptr %i.lh, align 8, !tbaa !89
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8
  call void %i.ls(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #11, !inline_history !1240
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

bb.bx:                                            ; preds = %bb.bv
  %i.lt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.lt, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lu = add nsw i32 %i.ll, -1
  store i32 %i.lu, ptr %i.li, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.bx
  %i.lv = atomicrmw volatile add ptr %i.li, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.ll, %bb.by ], [ %i.lv, %bb.bz ]
  %i.lw = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.lw, label %bb.ca, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, !prof !176

bb.ca:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lh) #11
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i: ; preds = %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bw, %.lr.ph.i.i.i109
  %i.lx = getelementptr inbounds nuw i8, ptr %.05.i.i.i110, i64 16 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.lx, %i.lf
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i109, !llvm.loop !1241

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.pr.i112 = load ptr, ptr %12, align 8, !tbaa !1214
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit
  %i.ly = phi ptr [ %.pr.i112, %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.le, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 3 uses
  %.not.i.i1.i113 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i1.i113, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.lz = load ptr, ptr %i.dl, align 8, !tbaa !1217
  %i.ma = ptrtoint ptr %i.lz to i64
  %i.mb = ptrtoint ptr %i.ly to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %i.ly, i64 noundef %i.mc) #39
  br label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  ret void

bb.cc:                                            ; preds = %.noexc101, %.noexc100, %bb.ap, %.noexc98, %.noexc97, %bb.ao
  %i.md = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.cd:                                            ; preds = %bb.bn
  %i.me = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #11
  br label %bb.cz

._crit_edge163.loopexit:                          ; preds = %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %.pre183 = load ptr, ptr %i.ag, align 8, !tbaa !521
  %.pre184 = load ptr, ptr %6, align 8, !tbaa !548
  br label %._crit_edge163

._crit_edge163:                                   ; preds = %._crit_edge163.loopexit, %.preheader
  %i.mf = phi ptr [ %.pre184, %._crit_edge163.loopexit ], [ %i.jj, %.preheader ] ; 2 uses
  %i.mg = phi ptr [ %.pre183, %._crit_edge163.loopexit ], [ %i.jk, %.preheader ] ; 2 uses
  %i.mh = phi i32 [ %i.ps, %._crit_edge163.loopexit ], [ %i.jl, %.preheader ]
  %i.mi = phi i32 [ %i.ps, %._crit_edge163.loopexit ], [ %i.jm, %.preheader ]
  %i.mj = add nuw i64 %.032164, 1                 ; 2 uses
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = ptrtoint ptr %i.mf to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = sdiv exact i64 %i.mm, 104
  %i.mo = icmp ult i64 %i.mj, %i.mn
  br i1 %i.mo, label %.preheader, label %._crit_edge165, !llvm.loop !1242

.lr.ph162:                                        ; preds = %.preheader, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.mp = phi i32 [ %i.ps, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit ], [ %i.jl, %.preheader ] ; 3 uses
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit ], [ 0, %.preheader ] ; 2 uses
  %i.mq = phi i32 [ %i.ps, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit ], [ %i.jm, %.preheader ]
  %i.mr = load ptr, ptr %6, align 8, !tbaa !548
  %i.ms = getelementptr inbounds nuw [104 x i8], ptr %i.mr, i64 %.032164 ; 11 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %21 = sext i32 %i.mq to i64
  %i.mu = mul i64 %.032164, %21
  %i.mv = load ptr, ptr %17, align 8, !tbaa !548
  %i.mw = getelementptr [104 x i8], ptr %i.mv, i64 %i.mu
  %i.mx = getelementptr [104 x i8], ptr %i.mw, i64 %indvars.iv172 ; 9 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  %i.mz = load float, ptr %i.my, align 8, !tbaa !534 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 12
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !542 ; 2 uses
  %i.nc = call float @llvm.fabs.f32(float %i.mz)
  %i.nd = fcmp oeq float %i.nc, +inf
  br i1 %i.nd, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph162
  %i.ne = and i32 %i.nb, 2147483647
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 12 ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !542
  %i.nh = and i32 %i.ng, 2147483647
  %.not.i.i114 = icmp samesign ugt i32 %i.nh, %i.ne
  %i.ni = load float, ptr %i.mt, align 8, !tbaa !534 ; 2 uses
  br i1 %.not.i.i114, label %.split.i, label %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i

.split.i:                                         ; preds = %bb.ce
  %i.nj = fcmp ule float %i.ni, %i.mz
  br i1 %i.nj, label %bb.cf, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i: ; preds = %bb.ce
  %i.nk = fcmp ogt float %i.mz, %i.ni
  br i1 %i.nk, label %bb.cf, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

bb.cf:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i
  store float %i.mz, ptr %i.mt, align 8, !tbaa !534
  store i32 %i.nb, ptr %i.nf, align 4, !tbaa !542
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.nm = load float, ptr %i.nl, align 8, !tbaa !543
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  store float %i.nm, ptr %i.nn, align 8, !tbaa !543
  %i.no = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.np = load i8, ptr %i.no, align 8, !tbaa !896, !range !197, !noundef !198
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ms, i64 48
  store i8 %i.np, ptr %i.nq, align 8, !tbaa !896
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mx, i64 24 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ms, i64 24 ; 5 uses
  %.not.i122 = icmp eq ptr %i.mx, %i.ms
  br i1 %.not.i122, label %.noexc115, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mx, i64 32 ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !696
  %i.nv = load ptr, ptr %i.nr, align 8, !tbaa !508 ; 9 uses
  %i.nw = ptrtoint ptr %i.nu to i64               ; 3 uses
  %i.nx = ptrtoint ptr %i.nv to i64
  %i.ny = sub i64 %i.nw, %i.nx                    ; 12 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ms, i64 40 ; 3 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !510
  %i.ob = load ptr, ptr %i.ns, align 8, !tbaa !508 ; 5 uses
  %i.oc = ptrtoint ptr %i.oa to i64
  %i.od = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.oe = sub i64 %i.oc, %i.od
  %i.of = icmp ugt i64 %i.ny, %i.oe
  br i1 %i.of, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %bb.cg
  %i.og = icmp ugt i64 %i.ny, 9223372036854775804
  br i1 %i.og, label %bb.ci, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i136, !prof !176

bb.ci:                                            ; preds = %bb.ch
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %bb.ci
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i136: ; preds = %bb.ch
  %i.oh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ny) #38
          to label %.noexc141 unwind label %.loopexit ; 4 uses

.noexc141:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i136
  %i.oi = icmp samesign ugt i64 %i.ny, 4
  br i1 %i.oi, label %bb.cj, label %bb.ck, !prof !218

bb.cj:                                            ; preds = %.noexc141
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oh, ptr align 4 %i.nv, i64 %i.ny, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137

bb.ck:                                            ; preds = %.noexc141
  %i.oj = icmp eq i64 %i.ny, 4
  br i1 %i.oj, label %bb.cl, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137

bb.cl:                                            ; preds = %bb.ck
  %i.ok = load i32, ptr %i.nv, align 4, !tbaa !54
  store i32 %i.ok, ptr %i.oh, align 4, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137: ; preds = %bb.cl, %bb.ck, %bb.cj
  %i.ol = load ptr, ptr %i.ns, align 8, !tbaa !508 ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i138, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i139, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137
  %i.om = load ptr, ptr %i.nz, align 8, !tbaa !510
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = ptrtoint ptr %i.ol to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.op) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i139

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i139: ; preds = %bb.cm, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i137
  store ptr %i.oh, ptr %i.ns, align 8, !tbaa !508
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ny
  store ptr %i.oq, ptr %i.nz, align 8, !tbaa !510
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cn:                                            ; preds = %bb.cg
  %i.or = getelementptr inbounds nuw i8, ptr %i.ms, i64 32 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !696 ; 3 uses
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = sub i64 %i.ot, %i.od                    ; 5 uses
  %.not24.i123 = icmp ult i64 %i.ou, %i.ny
  br i1 %.not24.i123, label %bb.cs, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ov = icmp sgt i64 %i.ny, 4
  br i1 %i.ov, label %bb.cp, label %bb.cq, !prof !218

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ob, ptr align 4 %i.nv, i64 %i.ny, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cq:                                            ; preds = %bb.co
  %i.ow = icmp eq i64 %i.ny, 4
  br i1 %i.ow, label %bb.cr, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cr:                                            ; preds = %bb.cq
  %i.ox = load i32, ptr %i.nv, align 4, !tbaa !54
  store i32 %i.ox, ptr %i.ob, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cs:                                            ; preds = %bb.cn
  %i.oy = icmp sgt i64 %i.ou, 4
  br i1 %i.oy, label %bb.ct, label %bb.cu, !prof !218

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ob, ptr align 4 %i.nv, i64 %i.ou, i1 false)
  %.pre.i128 = load ptr, ptr %i.nr, align 8, !tbaa !508
  %.pre25.i129 = load ptr, ptr %i.or, align 8, !tbaa !696 ; 2 uses
  %.pre26.i130 = load ptr, ptr %i.ns, align 8, !tbaa !508
  %.pre27.i131 = load ptr, ptr %i.nt, align 8, !tbaa !696
  %.pre28.i132 = ptrtoint ptr %.pre25.i129 to i64
  %.pre29.i133 = ptrtoint ptr %.pre26.i130 to i64
  %.pre31.i134 = sub i64 %.pre28.i132, %.pre29.i133
  %.pre33.i135 = ptrtoint ptr %.pre27.i131 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125

bb.cu:                                            ; preds = %bb.cs
  %i.oz = icmp eq i64 %i.ou, 4
  br i1 %i.oz, label %bb.cv, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125

bb.cv:                                            ; preds = %bb.cu
  %i.pa = load i32, ptr %i.nv, align 4, !tbaa !54
  store i32 %i.pa, ptr %i.ob, align 4, !tbaa !54
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125:            ; preds = %bb.cv, %bb.cu, %bb.ct
  %.pre-phi34.i126 = phi i64 [ %.pre33.i135, %bb.ct ], [ %i.nw, %bb.cu ], [ %i.nw, %bb.cv ]
  %.pre-phi32.i127 = phi i64 [ %.pre31.i134, %bb.ct ], [ %i.ou, %bb.cu ], [ 4, %bb.cv ]
  %i.pb = phi ptr [ %.pre25.i129, %bb.ct ], [ %i.os, %bb.cu ], [ %i.os, %bb.cv ] ; 2 uses
  %i.pc = phi ptr [ %.pre.i128, %bb.ct ], [ %i.nv, %bb.cu ], [ %i.nv, %bb.cv ]
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %.pre-phi32.i127 ; 3 uses
  %i.pe = ptrtoint ptr %i.pd to i64
  %i.pf = sub i64 %.pre-phi34.i126, %i.pe         ; 3 uses
  %i.pg = icmp sgt i64 %i.pf, 4
  br i1 %i.pg, label %bb.cw, label %bb.cx, !prof !218

bb.cw:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.pb, ptr align 4 %i.pd, i64 %i.pf, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cx:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i125
  %i.ph = icmp eq i64 %i.pf, 4
  br i1 %i.ph, label %bb.cy, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

bb.cy:                                            ; preds = %bb.cx
  %i.pi = load i32, ptr %i.pd, align 4, !tbaa !54
  store i32 %i.pi, ptr %i.pb, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124: ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cr, %bb.cq, %bb.cp, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i139
  %i.pj = load ptr, ptr %i.ns, align 8, !tbaa !508
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 %i.ny
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  store ptr %i.pk, ptr %i.pl, align 8, !tbaa !696
  br label %.noexc115

.noexc115:                                        ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i124, %bb.cf
  %i.pm = getelementptr inbounds nuw i8, ptr %i.mx, i64 56
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ms, i64 56
  %i.po = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.pn, ptr noundef nonnull align 8 dereferenceable(24) %i.pm)
          to label %.noexc116 unwind label %.loopexit ; 0 uses

.noexc116:                                        ; preds = %.noexc115
end_hunk_1
begin_hunk_2_@_ZNK7xgboost4tree18HistMultiEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsEjNS2_4SpanINS6_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEENS_6linalg10TensorViewISA_Li1EEEdiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerISt6vectorIS9_SaIS9_EEEE:bb.a
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8            ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ey = sext i32 %i.i to i64
  br label %bb.ac

bb.w:                                             ; preds = %_ZN7xgboost6linalg5EmptyINS_6detail20GradientPairInternalIdEEJiRmEEEDaPKNS_7ContextEDpOT0_.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.x:                                             ; preds = %bb.g
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.y:                                             ; preds = %bb.m
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %bb.o
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split, %bb.ab
  %i.fd = phi i64 [ %i.fm, %bb.ab ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ] ; 3 uses
  %storemerge164 = phi i32 [ %i.fl, %bb.ab ], [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.lr.ph.split.split ]
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !843
  %.not.i = icmp ugt i64 %i.bu, %i.ff
  br i1 %.not.i, label %.split.us, label %bb.aa, !prof !176

.split.us:                                        ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us176, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us170, %bb.p, %.split.i.us
  call void @_ZSt9terminatev() #40
  unreachable

bb.aa:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.in.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %.in.i, align 8, !tbaa !845
  %.not191 = icmp eq ptr %i.fg, null
  br i1 %.not191, label %.split167.us, label %bb.ab, !prof !176

.split167.us:                                     ; preds = %bb.aa, %bb.s, %bb.r
  call void @_ZSt9terminatev() #40
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.fh = mul i64 %i.bw, %i.fd
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.fh
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.fd
  %i.fk = load <2 x double>, ptr %i.fi, align 8, !tbaa !1047
  store <2 x double> %i.fk, ptr %i.fj, align 8, !tbaa !1047
  %i.fl = add i32 %storemerge164, 1               ; 2 uses
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = icmp ugt i64 %3, %i.fm
  br i1 %i.fn, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, label %._crit_edge165, !llvm.loop !1658

.split169.us:                                     ; preds = %.lr.ph.us
  call void @_ZSt9terminatev() #40
  unreachable

._crit_edge188:                                   ; preds = %bb.ak
  %.pre = load i8, ptr %i.et, align 8, !tbaa !896, !range !197
  %i.fo = trunc nuw i8 %.pre to i1
  br i1 %i.fo, label %bb.am, label %._crit_edge188.thread

bb.ac:                                            ; preds = %.lr.ph, %bb.ak
  %indvars.iv204 = phi i64 [ %i.ey, %.lr.ph ], [ %indvars.iv.next205, %bb.ak ] ; 6 uses
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !644
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv204
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !311 ; 2 uses
  br i1 %.not189, label %._crit_edge, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96

._crit_edge:                                      ; preds = %bb.ae, %bb.ac
  %i.fs = load ptr, ptr %i.ex, align 8, !tbaa !1101
  %i.ft = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.fs, i32 noundef %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.af unwind label %bb.ag

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96: ; preds = %bb.ac, %bb.ae
  %i.fu = phi i64 [ %i.gt, %bb.ae ], [ 0, %bb.ac ] ; 5 uses
  %storemerge62182 = phi i32 [ %i.gs, %bb.ae ], [ 0, %bb.ac ]
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.fu ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !843
  %i.fx = icmp ugt i64 %i.fw, %indvars.iv204
  br i1 %i.fx, label %bb.ae, label %bb.ad, !prof !218

bb.ad:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96
  call void @_ZSt9terminatev() #40
  unreachable

bb.ae:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !845
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %i.fz, i64 %indvars.iv204
  %i.gb = load i64, ptr %14, align 8, !tbaa !36
  %i.gc = mul i64 %i.gb, %i.fu
  %i.gd = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !tbaa !824
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gd, i64 %i.gc
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ge, ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i64 16, i1 false)
  %i.gf = mul i64 %i.eu, %i.fu
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.gf
  %i.gh = load i64, ptr %14, align 8, !tbaa !36
  %i.gi = mul i64 %i.gh, %i.fu
  %i.gj = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8, !tbaa !824
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gi
  %i.gl = load i64, ptr %13, align 8, !tbaa !36
  %i.gm = mul i64 %i.gl, %i.fu
  %i.gn = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !tbaa !824
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %i.gm
  %i.gp = load <2 x double>, ptr %i.gg, align 8, !tbaa !1047
  %i.gq = load <2 x double>, ptr %i.gk, align 8, !tbaa !1047
  %i.gr = fsub <2 x double> %i.gp, %i.gq
  store <2 x double> %i.gr, ptr %i.go, align 8, !tbaa !1047
  %i.gs = add i32 %storemerge62182, 1             ; 2 uses
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %i.gu = icmp ugt i64 %3, %i.gt
  br i1 %i.gu, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit96, label %._crit_edge, !llvm.loop !1659

bb.af:                                            ; preds = %._crit_edge
  %i.gv = fsub double %i.ft, %6
  %i.gw = fptrunc double %i.gv to float
  %i.gx = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %16, float noundef %i.gw, i32 noundef %2, float noundef %i.fr, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %.preheader unwind label %bb.ag ; 0 uses

.preheader:                                       ; preds = %bb.af
  br i1 %.not189, label %._crit_edge184, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph: ; preds = %.preheader
  %i.gy = load i64, ptr %14, align 8
  %i.gz = load ptr, ptr %.sroa.9.0..sroa_idx.i.i85, align 8
  %i.ha = load i64, ptr %13, align 8
  %i.hb = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8
  br label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100

._crit_edge184:                                   ; preds = %bb.ai, %.preheader
  %i.hc = load ptr, ptr %i.ex, align 8, !tbaa !1101
  %i.hd = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.hc, i32 noundef %7, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.aj unwind label %bb.al

bb.ag:                                            ; preds = %bb.af, %._crit_edge
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph, %bb.ai
  %i.hf = phi i64 [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph ], [ %i.hz, %bb.ai ] ; 5 uses
  %storemerge63183 = phi i32 [ 0, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100.lr.ph ], [ %i.hy, %bb.ai ]
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.hf ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !843
  %i.hi = icmp ugt i64 %i.hh, %indvars.iv204
  br i1 %i.hi, label %bb.ai, label %bb.ah, !prof !218

bb.ah:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100
  call void @_ZSt9terminatev() #40
  unreachable

bb.ai:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !845
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hk, i64 %indvars.iv204
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.hf
  %i.hn = mul i64 %i.gy, %i.hf
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.gz, i64 %i.hn
  %i.hp = load <2 x double>, ptr %i.hl, align 8, !tbaa !1047
  %i.hq = load <2 x double>, ptr %i.hm, align 8, !tbaa !1047
  %i.hr = fadd <2 x double> %i.hp, %i.hq          ; 2 uses
  store <2 x double> %i.hr, ptr %i.ho, align 8, !tbaa !1047
  %i.hs = mul i64 %i.eu, %i.hf
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.hs
  %i.hu = mul i64 %i.ha, %i.hf
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hb, i64 %i.hu
  %i.hw = load <2 x double>, ptr %i.ht, align 8, !tbaa !1047
  %i.hx = fsub <2 x double> %i.hw, %i.hr
  store <2 x double> %i.hx, ptr %i.hv, align 8, !tbaa !1047
  %i.hy = add i32 %storemerge63183, 1             ; 2 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = icmp ugt i64 %3, %i.hz
  br i1 %i.ia, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit100, label %._crit_edge184, !llvm.loop !1660

bb.aj:                                            ; preds = %._crit_edge184
  %i.ib = fsub double %i.hd, %6
  %i.ic = fptrunc double %i.ib to float
  %i.id = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %16, float noundef %i.ic, i32 noundef %2, float noundef %i.fr, i1 noundef zeroext false, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %13, ptr noundef nonnull align 8 dereferenceable(52) %14)
          to label %bb.ak unwind label %bb.al     ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.ie = trunc nsw i64 %indvars.iv.next205 to i32
  %.not = icmp eq i32 %i.m, %i.ie
  br i1 %.not, label %._crit_edge188, label %bb.ac, !llvm.loop !1661

bb.al:                                            ; preds = %bb.aj, %._crit_edge184
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.am:                                            ; preds = %._crit_edge188
  %i.ig = add nsw i32 %.fr190, 1
  %17 = sext i32 %i.ig to i64
  %i.ih = uitofp i64 %17 to double
  %i.ii = fmul nnan double %i.ih, 3.125000e-02
  %i.ij = call double @llvm.ceil.f64(double %i.ii)
  %i.ik = fptoui double %i.ij to i64              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !54
  %i.il = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !696 ; 3 uses
  %i.in = load ptr, ptr %i.er, align 8, !tbaa !508 ; 5 uses
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = ashr exact i64 %i.iq, 2                 ; 3 uses
  %i.is = icmp ult i64 %i.ir, %i.ik
  br i1 %i.is, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.it = sub nuw i64 %i.ik, %i.ir
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.er, ptr %i.im, i64 noundef %i.it, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge unwind label %bb.aq

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge: ; preds = %bb.an
  %.pre207 = load ptr, ptr %i.er, align 8, !tbaa !508
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.ao:                                            ; preds = %bb.am
  %i.iu = icmp ugt i64 %i.ir, %i.ik
  br i1 %i.iu, label %bb.ap, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

bb.ap:                                            ; preds = %bb.ao
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %i.ik ; 2 uses
  %.not.i.i = icmp eq ptr %i.im, %i.iv
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.ap
  store ptr %i.iv, ptr %i.il, align 8, !tbaa !696
  br label %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit

_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit:            ; preds = %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.ap, %bb.ao
  %i.iw = phi ptr [ %.pre207, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge ], [ %i.in, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.in, %bb.ap ], [ %i.in, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ix = load float, ptr %i.eq, align 8, !tbaa !543
  %i.iy = fptoui float %i.ix to i64               ; 2 uses
  %i.iz = lshr i64 %i.iy, 5
  %i.ja = and i64 %i.iy, 31
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iz ; 2 uses
  %i.jc = lshr exact i64 2147483648, %i.ja
  %i.jd = trunc nuw i64 %i.jc to i32
  %i.je = load i32, ptr %i.jb, align 4, !tbaa !54
  %i.jf = or i32 %i.je, %i.jd
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !54
  br label %._crit_edge188.thread

bb.aq:                                            ; preds = %bb.an
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ax

._crit_edge188.thread:                            ; preds = %._crit_edge165, %_ZNSt6vectorIjSaIjEE6resizeEmRKj.exit, %._crit_edge188
  %i.jh = load float, ptr %16, align 8, !tbaa !534 ; 4 uses
  %i.ji = load i32, ptr %i.ep, align 4, !tbaa !542 ; 2 uses
  %i.jj = call float @llvm.fabs.f32(float %i.jh)
  %i.jk = fcmp oeq float %i.jj, +inf
  br i1 %i.jk, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge188.thread
  %i.jl = and i32 %i.ji, 2147483647
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !542
  %i.jo = and i32 %i.jn, 2147483647
  %.not.i.i107 = icmp samesign ugt i32 %i.jo, %i.jl
  %i.jp = load float, ptr %9, align 8, !tbaa !534 ; 2 uses
  br i1 %.not.i.i107, label %.split.i108, label %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i

.split.i108:                                      ; preds = %bb.ar
  %i.jq = fcmp ule float %i.jp, %i.jh
  br i1 %i.jq, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i: ; preds = %bb.ar
  %i.jr = fcmp ogt float %i.jh, %i.jp
  br i1 %i.jr, label %bb.as, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit

bb.as:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108
  store float %i.jh, ptr %9, align 8, !tbaa !534
  store i32 %i.ji, ptr %i.jm, align 4, !tbaa !542
  %i.js = load float, ptr %i.eq, align 8, !tbaa !543
  %i.jt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store float %i.js, ptr %i.jt, align 8, !tbaa !543
  %i.ju = load i8, ptr %i.et, align 8, !tbaa !896, !range !197, !noundef !198
  %i.jv = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 %i.ju, ptr %i.jv, align 8, !tbaa !896
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.jx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.jw, ptr noundef nonnull align 8 dereferenceable(24) %i.er)
          to label %.noexc109 unwind label %bb.aw ; 0 uses

.noexc109:                                        ; preds = %bb.as
  %i.jy = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.jy, ptr noundef nonnull align 8 dereferenceable(24) %i.es)
          to label %.noexc110 unwind label %bb.aw ; 0 uses

.noexc110:                                        ; preds = %.noexc109
  %i.ka = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.kb = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.kc = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(24) %i.ka)
          to label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit unwind label %bb.aw ; 0 uses

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit: ; preds = %_ZNK7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE11NeedReplaceEfj.exit.i, %.split.i108, %._crit_edge188.thread, %.noexc110
  %i.kd = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kf = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !381
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.ke to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef %i.kj) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i: ; preds = %bb.at, %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateERKS8_.exit
  %i.kk = load ptr, ptr %i.es, align 8, !tbaa !378 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.kl = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !381
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = sub i64 %i.kn, %i.ko
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef %i.kp) #39
  br label %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i

_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i: ; preds = %bb.au, %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit.i
  %i.kq = load ptr, ptr %i.er, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i3.i, label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i
  %i.kr = getelementptr inbounds nuw i8, ptr %16, i64 32
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !510
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = ptrtoint ptr %i.kq to i64
  %i.kv = sub i64 %i.kt, %i.ku
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.kv) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN7xgboost6detail20GradientPairInternalIdEESaIS3_EED2Ev.exit2.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  ret void

bb.aw:                                            ; preds = %.noexc110, %.noexc109, %bb.as
  %i.kw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aq, %bb.al, %bb.ag, %bb.aw
  %.pn67.pn.pn = phi { ptr, i32 } [ %i.he, %bb.ag ], [ %i.kw, %bb.aw ], [ %i.if, %bb.al ], [ %i.jg, %bb.aq ]
  call void @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #11
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.z
  %.pn71.pn = phi { ptr, i32 } [ %i.fc, %bb.z ], [ %.pn67.pn.pn, %bb.ax ]
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(17) %15) #11
  br label %.body

.body:                                            ; preds = %bb.y, %bb.n, %bb.ay
  %.pn71.pn.pn = phi { ptr, i32 } [ %.pn71.pn, %bb.ay ], [ %i.fb, %bb.y ], [ %i.bi, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.x
  %.pn71.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn, %.body ], [ %i.fa, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.w
  %.pn71.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn71.pn.pn.pn, %bb.az ], [ %i.ez, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  call void @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(25) %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_INS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerISt6vectorISC_SaISC_EEEE(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %10 = alloca %"class.xgboost::linalg::Tensor", align 8 ; 12 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.xgboost::linalg::TensorView.449", align 8 ; 16 uses
  %12 = alloca %"class.xgboost::linalg::TensorView.449", align 8 ; 16 uses
  %13 = alloca %"struct.xgboost::tree::SplitEntryContainer", align 8 ; 20 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %15 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 %4, ptr %i.c, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %i.i), !noalias !1662 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !588, !noalias !1662 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !378, !noalias !1662 ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 4                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i8, ptr %i.r, align 8, !tbaa !616, !noalias !1662
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !1662
  switch i8 %i.s, label %bb.c [
    i8 0, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !tbaa !36, !noalias !1662
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt9terminatev() #40, !noalias !1662
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.5.0.i = phi i64 [ %i.w, %bb.b ], [ 1, %bb.a ] ; 3 uses
  %.sroa.0.0.i = phi i64 [ 1, %bb.b ], [ %i.u, %bb.a ]
  %i.x = sext i32 %7 to i64                       ; 2 uses
  %i.y = mul i64 %.sroa.0.0.i, %i.x
  %i.z = icmp eq ptr %i.l, %i.m
  %i.aa = select i1 %i.z, i64 0, i64 %i.y         ; 3 uses
  %.not8.i.i.i = icmp ugt i64 %i.aa, %i.q
  br i1 %.not8.i.i.i, label %bb.d, label %bb.e, !prof !176

bb.d:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
  tail call void @_ZSt9terminatev() #40, !noalias !1669
  unreachable

bb.e:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i
  %i.ab = icmp ne ptr %i.m, null
  %i.ac = icmp eq i64 %i.q, %i.aa
  %i.ad = or i1 %i.ab, %i.ac
  br i1 %i.ad, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit, label %bb.f, !prof !218

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #40, !noalias !1669
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit: ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.aa ; 3 uses
  %i.af = load ptr, ptr %0, align 8, !tbaa !386
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.x
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !1047 ; 2 uses
  %i.ai = zext i32 %6 to i64
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !508 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !54 ; 6 uses
  %i.am = add i32 %6, 1
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !54
  %i.aq = sub nsw i32 %i.ap, %i.al
  %.fr216 = freeze i32 %i.aq                      ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1101
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !54
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %.fr216, i32 %i.au)
  %i.av = add i32 %i.al, -1
  %i.aw = add i32 %i.av, %.sroa.speculated        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store i32 2, ptr %i.d, align 4, !tbaa !54
  call void @_ZN7xgboost6linalg8ConstantINS_6detail20GradientPairInternalIdEEJiRmEEEDaPKNS_7ContextET_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.xgboost::linalg::Tensor") align 8 %10, ptr noundef %i.ay, double 0.000000e+00, double 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !1672)
  %i.az = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %10)
          to label %.noexc71 unwind label %bb.v   ; 2 uses

.noexc71:                                         ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !588, !noalias !1675 ; 2 uses
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !378, !noalias !1675 ; 5 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 4
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !616, !noalias !1675
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !36, !noalias !1675 ; 2 uses
  switch i8 %i.bi, label %bb.h [
    i8 0, label %bb.i
    i8 1, label %bb.g
  ]

bb.g:                                             ; preds = %.noexc71
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !36, !noalias !1675
  br label %bb.i

bb.h:                                             ; preds = %.noexc71
  call void @_ZSt9terminatev() #40, !noalias !1675
  unreachable

bb.i:                                             ; preds = %.noexc71, %bb.g
  %.sroa.5.0.i61 = phi i64 [ %i.bm, %bb.g ], [ 1, %.noexc71 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %i.bn = icmp ne ptr %i.bc, null
  %i.bo = icmp eq ptr %i.bb, %i.bc                ; 2 uses
  %i.bp = or i1 %i.bn, %i.bo
  br i1 %i.bp, label %bb.k, label %bb.j, !prof !218

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #40, !noalias !1683
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sink.i.i.i.i64 = select i1 %i.bo, i64 0, i64 %i.bk
  store i64 %.sroa.5.0.i61, ptr %11, align 8, !tbaa !59, !alias.scope !1683
  %.sroa.5.0..sroa_idx.i.i65 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.bk, ptr %.sroa.5.0..sroa_idx.i.i65, align 8, !tbaa !59, !alias.scope !1683
  %.sroa.7.0..sroa_idx.i.i66 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %i.bg, ptr %.sroa.7.0..sroa_idx.i.i66, align 8, !tbaa !36, !alias.scope !1683
  %.sroa.8.0..sroa_idx.i.i67 = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.bc, ptr %.sroa.8.0..sroa_idx.i.i67, align 8, !tbaa !594, !alias.scope !1683
  %.sroa.9.0..sroa_idx.i.i68 = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 3 uses
  store ptr %i.bc, ptr %.sroa.9.0..sroa_idx.i.i68, align 8, !tbaa !594, !alias.scope !1683
  %.sroa.10.0..sroa_idx.i.i69 = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %.sink.i.i.i.i64, ptr %.sroa.10.0..sroa_idx.i.i69, align 8, !tbaa !36, !alias.scope !1683
  %.sroa.12.0..sroa_idx.i.i70 = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 -65536, ptr %.sroa.12.0..sroa_idx.i.i70, align 8, !alias.scope !1683
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  call void @llvm.experimental.noalias.scope.decl(metadata !1684)
  %i.bq = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorINS_6detail20GradientPairInternalIdEEE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(25) %10)
          to label %.noexc83 unwind label %bb.w   ; 2 uses

.noexc83:                                         ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !588, !noalias !1687 ; 2 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !378, !noalias !1687 ; 4 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 4                 ; 3 uses
  %i.by = load i8, ptr %i.bh, align 8, !tbaa !616, !noalias !1687
  %i.bz = load i64, ptr %i.bj, align 8, !tbaa !36, !noalias !1687 ; 3 uses
  switch i8 %i.by, label %bb.m [
    i8 0, label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
    i8 1, label %bb.l
  ]

bb.l:                                             ; preds = %.noexc83
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !36, !noalias !1687
  br label %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72

bb.m:                                             ; preds = %.noexc83
  call void @_ZSt9terminatev() #40, !noalias !1687
  unreachable

_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72: ; preds = %bb.l, %.noexc83
  %.sroa.5.0.i73 = phi i64 [ %i.cb, %bb.l ], [ 1, %.noexc83 ]
  %.sroa.0.0.i74 = phi i64 [ 1, %bb.l ], [ %i.bz, %.noexc83 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1692)
  %i.cc = icmp eq ptr %i.bs, %i.bt
  %i.cd = select i1 %i.cc, i64 0, i64 %.sroa.0.0.i74 ; 4 uses
  %.not8.i.i.i75 = icmp ugt i64 %i.cd, %i.bx
  br i1 %.not8.i.i.i75, label %bb.n, label %bb.o, !prof !176

bb.n:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
  call void @_ZSt9terminatev() #40, !noalias !1695
  unreachable

bb.o:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE8HostViewEv.exit.i72
  %i.ce = icmp ne ptr %i.bt, null
  %i.cf = icmp eq i64 %i.bx, %i.cd                ; 2 uses
  %i.cg = or i1 %i.ce, %i.cf
  br i1 %i.cg, label %bb.q, label %bb.p, !prof !218

bb.p:                                             ; preds = %bb.o
  call void @_ZSt9terminatev() #40, !noalias !1695
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ch = sub nuw i64 %i.bx, %i.cd
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.cd ; 2 uses
  %.sink.i.i.i.i76 = select i1 %i.cf, i64 0, i64 %i.bz
  store i64 %.sroa.5.0.i73, ptr %12, align 8, !tbaa !59, !alias.scope !1695
  %.sroa.5.0..sroa_idx.i.i77 = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.bz, ptr %.sroa.5.0..sroa_idx.i.i77, align 8, !tbaa !59, !alias.scope !1695
  %.sroa.7.0..sroa_idx.i.i78 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i64 %i.ch, ptr %.sroa.7.0..sroa_idx.i.i78, align 8, !tbaa !36, !alias.scope !1695
  %.sroa.8.0..sroa_idx.i.i79 = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.ci, ptr %.sroa.8.0..sroa_idx.i.i79, align 8, !tbaa !594, !alias.scope !1695
  %.sroa.9.0..sroa_idx.i.i80 = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  store ptr %i.ci, ptr %.sroa.9.0..sroa_idx.i.i80, align 8, !tbaa !594, !alias.scope !1695
  %.sroa.10.0..sroa_idx.i.i81 = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %.sink.i.i.i.i76, ptr %.sroa.10.0..sroa_idx.i.i81, align 8, !tbaa !36, !alias.scope !1695
  %.sroa.12.0..sroa_idx.i.i82 = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i32 -65536, ptr %.sroa.12.0..sroa_idx.i.i82, align 8, !alias.scope !1695
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  store float 0.000000e+00, ptr %13, align 8, !tbaa !534
  %i.cj = getelementptr inbounds nuw i8, ptr %13, i64 4 ; 2 uses
  store i32 0, ptr %i.cj, align 4, !tbaa !542
  %i.ck = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.ck, align 8, !tbaa !543
  %i.cl = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.cl, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cm, i8 0, i64 48, i1 false)
  %.not204 = icmp eq i32 %i.al, %i.aw
  br i1 %.not204, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.q
  %i.cn = sext i32 %i.al to i64                   ; 13 uses
  %i.co = icmp eq i32 %.fr216, -1                 ; 2 uses
  %i.cp = sext i32 %.fr216 to i64                 ; 4 uses
  %i.cq = add nsw i64 %i.cp, %i.cn                ; 3 uses
  %i.cr = icmp eq i32 %.fr216, 0
  br i1 %i.co, label %.lr.ph207.split.us, label %.lr.ph207.split

.lr.ph207.split.us:                               ; preds = %.lr.ph207, %bb.s
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %bb.s ], [ %i.cn, %.lr.ph207 ] ; 3 uses
  %.034205.us = phi i32 [ %spec.select.us, %bb.s ], [ -1, %.lr.ph207 ]
  %i.cs = load i64, ptr %i.c, align 8, !tbaa !36  ; 2 uses
  %.not219 = icmp eq i64 %i.cs, 0
  br i1 %.not219, label %._crit_edge.split.us.split.us.us, label %.lr.ph.us

._crit_edge.split.us.split.us.us:                 ; preds = %bb.u, %.lr.ph207.split.us
  %i.ct = load ptr, ptr %i.ar, align 8, !tbaa !1101
  %i.cu = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.ct, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.r unwind label %.split209.us

bb.r:                                             ; preds = %._crit_edge.split.us.split.us.us
  %i.cv = fsub double %i.cu, %i.ah
  %i.cw = fptrunc double %i.cv to float
  %i.cx = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %13, float noundef %i.cw, i32 noundef %6, float noundef +qnan, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.s unwind label %.split209.us

bb.s:                                             ; preds = %bb.r
  %16 = trunc nsw i64 %indvars.iv232 to i32
  %spec.select.us = select i1 %i.cx, i32 %16, i32 %.034205.us ; 2 uses
  %indvars.iv.next233 = add nsw i64 %indvars.iv232, 1 ; 2 uses
  %17 = trunc nsw i64 %indvars.iv.next233 to i32
  %.not.us = icmp eq i32 %i.aw, %17
  br i1 %.not.us, label %._crit_edge, label %.lr.ph207.split.us, !llvm.loop !1696

.lr.ph.us:                                        ; preds = %.lr.ph207.split.us
  %18 = sub nsw i64 %indvars.iv232, %i.cn         ; 2 uses
  %i.cy = icmp ugt i64 %2, %18
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %18
  %i.da = load i64, ptr %12, align 8
  %i.db = load ptr, ptr %.sroa.9.0..sroa_idx.i.i80, align 8
  %i.dc = load i64, ptr %11, align 8
  %i.dd = load ptr, ptr %.sroa.9.0..sroa_idx.i.i68, align 8
  %.fr.us = freeze i1 %i.cy
  br i1 %.fr.us, label %.lr.ph.split.us.us, label %.lr.ph.split, !prof !218

.lr.ph.split.us.us:                               ; preds = %.lr.ph.us, %bb.u
  %i.de = phi i64 [ %i.ed, %bb.u ], [ 0, %.lr.ph.us ] ; 5 uses
  %storemerge171.us.us.us = phi i32 [ %i.ec, %bb.u ], [ 0, %.lr.ph.us ]
  %i.df = icmp ugt i64 %4, %i.de
  br i1 %i.df, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us: ; preds = %.lr.ph.split.us.us
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.de ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !843 ; 3 uses
  %.not8.i.us.us.us = icmp ult i64 %i.dh, %i.cn
  br i1 %.not8.i.us.us.us, label %.split173.us, label %bb.t, !prof !176

bb.t:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us
  %.in.i.us.us.us = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %.in.i.us.us.us, align 8, !tbaa !845 ; 2 uses
  %i.dj = icmp ne ptr %i.di, null
  %i.dk = icmp eq i64 %i.dh, %i.cn
  %i.dl = or i1 %i.dk, %i.dj
  br i1 %i.dl, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us, label %.split175.us, !prof !218

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us: ; preds = %bb.t
  %i.dm = sub nuw i64 %i.dh, %i.cn
  %i.dn = load i64, ptr %i.cz, align 8, !tbaa !36 ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.dm
  br i1 %i.do, label %bb.u, label %.split177.us, !prof !218

bb.u:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.cn
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.dn
  %i.dr = mul i64 %i.da, %i.de
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.db, i64 %i.dr ; 2 uses
  %i.dt = load <2 x double>, ptr %i.dq, align 8, !tbaa !1047
  %i.du = load <2 x double>, ptr %i.ds, align 8, !tbaa !1047
  %i.dv = fadd <2 x double> %i.dt, %i.du          ; 2 uses
  store <2 x double> %i.dv, ptr %i.ds, align 8, !tbaa !1047
  %i.dw = mul i64 %i.de, %.sroa.5.0.i
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.dw
  %i.dy = mul i64 %i.dc, %i.de
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dy
  %i.ea = load <2 x double>, ptr %i.dx, align 8, !tbaa !1047
  %i.eb = fsub <2 x double> %i.ea, %i.dv
  store <2 x double> %i.eb, ptr %i.dz, align 8, !tbaa !1047
  %i.ec = add i32 %storemerge171.us.us.us, 1      ; 2 uses
  %i.ed = zext i32 %i.ec to i64                   ; 2 uses
  %i.ee = icmp ugt i64 %i.cs, %i.ed
  br i1 %i.ee, label %.lr.ph.split.us.us, label %._crit_edge.split.us.split.us.us, !llvm.loop !1697

.split209.us:                                     ; preds = %bb.r, %._crit_edge.split.us.split.us.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge:                                      ; preds = %bb.af, %bb.s
  %.034.lcssa = phi i32 [ %spec.select.us, %bb.s ], [ %spec.select, %bb.af ] ; 2 uses
  %.not47 = icmp eq i32 %.034.lcssa, -1
  br i1 %.not47, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %bb.ag

bb.v:                                             ; preds = %_ZN7xgboost6linalg6TensorINS_6detail20GradientPairInternalIdEELi2EE5SliceIJRiNS0_6detail6AllTagEEEEDaDpOT_.exit
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.w:                                             ; preds = %bb.k
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

.lr.ph207.split:                                  ; preds = %.lr.ph207, %bb.af
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.af ], [ %i.cn, %.lr.ph207 ] ; 3 uses
  %.034205 = phi i32 [ %spec.select, %bb.af ], [ -1, %.lr.ph207 ]
  %i.ei = load i64, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  %.not217 = icmp eq i64 %i.ei, 0
  br i1 %.not217, label %._crit_edge.split.us.split, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph207.split
  %19 = sub nsw i64 %indvars.iv, %i.cn            ; 2 uses
  %i.ej = icmp ugt i64 %2, %19
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %19 ; 2 uses
  %i.el = load i64, ptr %12, align 8              ; 2 uses
  %i.em = load ptr, ptr %.sroa.9.0..sroa_idx.i.i80, align 8 ; 2 uses
  %i.en = load i64, ptr %11, align 8              ; 2 uses
  %i.eo = load ptr, ptr %.sroa.9.0..sroa_idx.i.i68, align 8 ; 2 uses
  %.fr = freeze i1 %i.ej
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !218

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.cr, label %.lr.ph.split.us.split.split.us, label %.lr.ph.split.us.split.split

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us, %bb.x
  %i.ep = phi i64 [ %i.fk, %bb.x ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %storemerge171.us.us198 = phi i32 [ %i.fj, %bb.x ], [ 0, %.lr.ph.split.us ]
  %i.eq = icmp ugt i64 %4, %i.ep
  br i1 %i.eq, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199: ; preds = %.lr.ph.split.us.split.split.us
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ep ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !843
  %.not.i.us.us = icmp ugt i64 %i.cq, %i.es
  br i1 %.not.i.us.us, label %.split173.us, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201, !prof !176

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201: ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199
  %i.et = load i64, ptr %i.ek, align 8, !tbaa !36 ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.cp
  br i1 %i.eu, label %bb.x, label %.split177.us, !prof !218

bb.x:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201
  %.in.i.us.us200 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ev = load ptr, ptr %.in.i.us.us200, align 8, !tbaa !845
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %i.cn
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.et
  %i.ey = mul i64 %i.el, %i.ep
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.ey ; 2 uses
  %i.fa = load <2 x double>, ptr %i.ex, align 8, !tbaa !1047
  %i.fb = load <2 x double>, ptr %i.ez, align 8, !tbaa !1047
  %i.fc = fadd <2 x double> %i.fa, %i.fb          ; 2 uses
  store <2 x double> %i.fc, ptr %i.ez, align 8, !tbaa !1047
  %i.fd = mul i64 %i.ep, %.sroa.5.0.i
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.fd
  %i.ff = mul i64 %i.en, %i.ep
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.ff
  %i.fh = load <2 x double>, ptr %i.fe, align 8, !tbaa !1047
  %i.fi = fsub <2 x double> %i.fh, %i.fc
  store <2 x double> %i.fi, ptr %i.fg, align 8, !tbaa !1047
  %i.fj = add i32 %storemerge171.us.us198, 1      ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = icmp ugt i64 %i.ei, %i.fk
  br i1 %i.fl, label %.lr.ph.split.us.split.split.us, label %._crit_edge.split.us.split, !llvm.loop !1697

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us, %bb.z
  %i.fm = phi i64 [ %i.gh, %bb.z ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %storemerge171.us = phi i32 [ %i.gg, %bb.z ], [ 0, %.lr.ph.split.us ]
  %i.fn = icmp ugt i64 %4, %i.fm
  br i1 %i.fn, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us, label %.split.us, !prof !218

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us: ; preds = %.lr.ph.split.us.split.split
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.fm ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !843
  %.not.i.us = icmp ugt i64 %i.cq, %i.fp
  br i1 %.not.i.us, label %.split173.us, label %bb.y, !prof !176

bb.y:                                             ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us
  %.in.i.us = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %.in.i.us, align 8, !tbaa !845 ; 2 uses
  %.not218 = icmp eq ptr %i.fq, null
  br i1 %.not218, label %.split175.us, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us, !prof !176

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us: ; preds = %bb.y
  %i.fr = load i64, ptr %i.ek, align 8, !tbaa !36 ; 2 uses
  %i.fs = icmp ult i64 %i.fr, %i.cp
  br i1 %i.fs, label %bb.z, label %.split177.us, !prof !218

bb.z:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fq, i64 %i.cn
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fr
  %i.fv = mul i64 %i.el, %i.fm
  %i.fw = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.fv ; 2 uses
  %i.fx = load <2 x double>, ptr %i.fu, align 8, !tbaa !1047
  %i.fy = load <2 x double>, ptr %i.fw, align 8, !tbaa !1047
  %i.fz = fadd <2 x double> %i.fx, %i.fy          ; 2 uses
  store <2 x double> %i.fz, ptr %i.fw, align 8, !tbaa !1047
  %i.ga = mul i64 %i.fm, %.sroa.5.0.i
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ga
  %i.gc = mul i64 %i.en, %i.fm
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.gc
  %i.ge = load <2 x double>, ptr %i.gb, align 8, !tbaa !1047
  %i.gf = fsub <2 x double> %i.ge, %i.fz
  store <2 x double> %i.gf, ptr %i.gd, align 8, !tbaa !1047
  %i.gg = add i32 %storemerge171.us, 1            ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = icmp ugt i64 %i.ei, %i.gh
  br i1 %i.gi, label %.lr.ph.split.us.split.split, label %._crit_edge.split.us.split, !llvm.loop !1697

._crit_edge.split.us.split:                       ; preds = %bb.z, %bb.x, %.lr.ph207.split
  %i.gj = load ptr, ptr %i.ar, align 8, !tbaa !1101
  %i.gk = invoke noundef double @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS_6linalg10TensorViewINS_6detail20GradientPairInternalIdEELi1EEESB_TnNSt9enable_ifIXaasr10split_impl19IsVectorGradientSumIT_EE5valuesr10split_impl19IsVectorGradientSumIT0_EE5valueEiE4typeELi0EEEdRKS3_ijRKSD_RKSE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.gj, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.ae unwind label %.split209

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.us
  %.not220 = icmp eq i64 %4, 0
  br i1 %.not220, label %.split.us, label %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit, !prof !176

.split.us:                                        ; preds = %.lr.ph.split.us.split.split, %.lr.ph.split.us.split.split.us, %.lr.ph.split.us.us, %.lr.ph.split
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit: ; preds = %.lr.ph.split
  %i.gl = load i64, ptr %5, align 8, !tbaa !843   ; 3 uses
  br i1 %i.co, label %.split.i, label %bb.aa

.split.i:                                         ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.not8.i = icmp ult i64 %i.gl, %i.cn
  br i1 %.not8.i, label %.split173.us, label %bb.ab, !prof !176

bb.aa:                                            ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit
  %.not.i = icmp ugt i64 %i.cq, %i.gl
  br i1 %.not.i, label %.split173.us, label %bb.ac, !prof !176

.split173.us:                                     ; preds = %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us199, %_ZNK7xgboost6common4SpanINS1_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEixEm.exit.us.us.us, %.split.i, %bb.aa
  call void @_ZSt9terminatev() #40
  unreachable

bb.ab:                                            ; preds = %.split.i
  %i.gm = sub nuw i64 %i.gl, %i.cn
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.gn = phi i64 [ %i.gm, %bb.ab ], [ %i.cp, %bb.aa ]
  %.in.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.go = load ptr, ptr %.in.i, align 8, !tbaa !845
  %i.gp = icmp ne ptr %i.go, null
  %i.gq = icmp eq i64 %i.gn, 0
  %i.gr = or i1 %i.gq, %i.gp
  br i1 %i.gr, label %bb.ad, label %.split175.us, !prof !218

.split175.us:                                     ; preds = %bb.y, %bb.t, %bb.ac
  call void @_ZSt9terminatev() #40
  unreachable

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt9terminatev() #40
  unreachable

.split177.us:                                     ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us201, %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit.us.us.us
  call void @_ZSt9terminatev() #40
  unreachable

bb.ae:                                            ; preds = %._crit_edge.split.us.split
  %i.gs = fsub double %i.gk, %i.ah
  %i.gt = fptrunc double %i.gs to float
  %i.gu = invoke noundef zeroext i1 @_ZN7xgboost4tree19SplitEntryContainerISt6vectorINS_6detail20GradientPairInternalIdEESaIS5_EEE6UpdateINS_6linalg10TensorViewIS5_Li1EEEEEbfjfbbRKT_SF_(ptr noundef nonnull align 8 dereferenceable(96) %13, float noundef %i.gt, i32 noundef %6, float noundef +qnan, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(52) %11, ptr noundef nonnull align 8 dereferenceable(52) %12)
          to label %bb.af unwind label %.split209

bb.af:                                            ; preds = %bb.ae
  %20 = trunc nsw i64 %indvars.iv to i32
  %spec.select = select i1 %i.gu, i32 %20, i32 %.034205 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %21 = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.aw, %21
  br i1 %.not, label %._crit_edge, label %.lr.ph207.split, !llvm.loop !1696

.split209:                                        ; preds = %bb.ae, %._crit_edge.split.us.split
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ag:                                            ; preds = %._crit_edge
  %i.gw = sext i32 %.fr216 to i64
  %i.gx = uitofp i64 %i.gw to double
  %i.gy = fmul nnan double %i.gx, 3.125000e-02
  %i.gz = call double @llvm.ceil.f64(double %i.gy)
  %i.ha = fptoui double %i.gz to i64              ; 4 uses
  %i.hb = icmp ugt i64 %i.ha, 2305843009213693951
  br i1 %i.hb, label %bb.ah, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc87 unwind label %bb.an

.noexc87:                                         ; preds = %bb.ah
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.ag
  %.not.i.i.i.i = icmp eq i64 %i.ha, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.hc = shl nuw nsw i64 %i.ha, 2                ; 3 uses
  %i.hd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hc) #38
          to label %.noexc88 unwind label %bb.an  ; 4 uses

.noexc88:                                         ; preds = %bb.ai
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hd, i8 0, i64 %i.hc, i1 false), !tbaa !54
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.ha
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.hc
  br label %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit

_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit:            ; preds = %.noexc88, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0116.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.hd, %.noexc88 ] ; 2 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.he, %.noexc88 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.hf, %.noexc88 ]
  %i.hg = load ptr, ptr %i.cl, align 8, !tbaa !508 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !510
  store ptr %.sroa.0116.0, ptr %i.cl, align 8, !tbaa !508
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.hh, align 8, !tbaa !696
  store ptr %.sroa.11.0, ptr %i.hi, align 8, !tbaa !510
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hg to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hm) #39
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !508
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.aj, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit
  %i.hn = phi ptr [ %.pre, %bb.aj ], [ %.sroa.0116.0, %_ZNSt6vectorIjSaIjEEC2EmRKjRKS0_.exit ]
  %i.ho = sub nsw i32 %.034.lcssa, %i.al          ; 2 uses
  %i.hp = add nsw i32 %i.ho, 1                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.hp, ptr %i.a, align 4, !tbaa !54, !noalias !1698
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !1698
  %i.hq = icmp sgt i32 %i.ho, -1
  br i1 %i.hq, label %.thread, label %bb.ak

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.ak:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %14, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.pr = load ptr, ptr %14, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not163 = icmp eq ptr %.pr, null
  br i1 %.not163, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #11
  %i.hr = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc89 unwind label %bb.ap

.noexc89:                                         ; preds = %bb.am
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.hr, ptr noundef nonnull @.str.91, i32 noundef 598)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.ap

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc89
  %i.hs = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.aq ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ht = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.hu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef nonnull @.str.95, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.hv = load ptr, ptr %14, align 8, !tbaa !55   ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !57
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !58
  %i.hz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, ptr noundef %i.hw, i64 noundef %i.hy)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.aq

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94
  %i.ia = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.hz, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97 unwind label %bb.aq ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.as unwind label %bb.ap

bb.an:                                            ; preds = %bb.ai, %bb.ah
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ao:                                            ; preds = %bb.ak
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ap:                                            ; preds = %.noexc89, %bb.am, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit94, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ie = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.id, %bb.ap ], [ %i.ie, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #11
  br label %bb.aw

bb.as:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #11
  %.pr160 = load ptr, ptr %14, align 8, !tbaa !55 ; 4 uses
  %.not.i98 = icmp eq ptr %.pr160, null
  br i1 %.not.i98, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = load ptr, ptr %.pr160, align 8, !tbaa !57 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.pr160, i64 16 ; 2 uses
  %i.ih = icmp eq ptr %i.if, %i.ig
  br i1 %i.ih, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.at
  %i.ii = load i64, ptr %i.ig, align 8, !tbaa !59
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ij) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr160, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.al, %.thread, %bb.as, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %i.ik = sext i32 %i.hp to i64                   ; 2 uses
  %.not.i.i = icmp ult i64 %2, %i.ik
  br i1 %.not.i.i, label %bb.au, label %bb.av, !prof !176

bb.au:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #40
  unreachable

bb.av:                                            ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not164 = icmp eq i32 %i.hp, 0
  br i1 %.not164, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree18HistMultiEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_INS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerISt6vectorISG_SaISG_EEEEEUlmE_ET0_T_SY_SX_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.av
  %i.il = sext i32 %i.al to i64
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %.sroa.4.09.i = phi i64 [ %i.ja, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i ], [ 0, %.lr.ph.split.i.preheader ] ; 3 uses
  %exitcond.not.i = icmp eq i64 %.sroa.4.09.i, %2
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !176

.split.us.i:                                      ; preds = %.lr.ph.split.i
  call void @_ZSt9terminatev() #40, !noalias !1701
  unreachable
end_hunk_2
begin_hunk_3_@_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE:bb.a
  br label %bb.w

bb.t:                                             ; preds = %.noexc63, %bb.r, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit68
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.v unwind label %bb.cq

bb.v:                                             ; preds = %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.t ], [ %i.cf, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.cp

bb.w:                                             ; preds = %bb.s, %._crit_edge
  %i.cg = phi ptr [ %i.by, %bb.s ], [ %i.s, %._crit_edge ]
  %i.ch = phi ptr [ %i.bz, %bb.s ], [ %i.t, %._crit_edge ]
  %i.ci = phi ptr [ %.pre151, %bb.s ], [ %i.x, %._crit_edge ]
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !1130
  %i.ck = invoke noundef i64 @_ZNK7xgboost16HostDeviceVectorIjE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cj)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.cl = load i32, ptr %i.a, align 4, !tbaa !54
  %i.cm = sext i32 %i.cl to i64
  %i.cn = udiv i64 %i.ck, %i.cm
  %.sroa.speculated = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !693
  %i.cp = load ptr, ptr %5, align 8, !tbaa !714
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = sdiv exact i64 %i.cs, 88
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store ptr %7, ptr %11, align 8, !tbaa !1222
  invoke void @_ZN7xgboost6common14BlockedSpace2dC2IZNS_4tree13HistEvaluator14EvaluateSplitsERKNS3_21BoundedHistCollectionERKNS0_13HistogramCutsENS0_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS3_14CPUExpandEntryESaISG_EEEUlmE_EEmOT_m(ptr noundef nonnull align 8 dereferenceable(48) %10, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %.sroa.speculated)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !54
  %i.cv = sext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load ptr, ptr %i.e, align 8, !tbaa !693 ; 2 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !714   ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = sdiv exact i64 %i.da, 88
  %i.dc = mul i64 %i.db, %i.cv                    ; 3 uses
  %i.dd = icmp ugt i64 %i.dc, 104811045873349725
  br i1 %i.dd, label %bb.z, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
          to label %.noexc74 unwind label %bb.af

.noexc74:                                         ; preds = %bb.z
  unreachable

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %.not.i.i.i.i69 = icmp eq i64 %i.dc, 0
  br i1 %.not.i.i.i.i69, label %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i70

_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i: ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  store i64 0, ptr %12, align 8
  br label %bb.aa

.lr.ph.preheader.i.i.i.i.i70:                     ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.de = mul i64 %i.da, %i.cv                    ; 3 uses
  %i.df = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #38
          to label %.noexc75 unwind label %bb.af  ; 4 uses

.noexc75:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i70
  store ptr %i.df, ptr %12, align 8, !tbaa !714
  %i.dg = getelementptr inbounds nuw [88 x i8], ptr %i.df, i64 %i.dc
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.df, i8 0, i64 %i.de, i1 false)
  %scevgep.i.i.i.i.i71 = getelementptr i8, ptr %i.df, i64 %i.de
  %.pre152 = load ptr, ptr %i.e, align 8, !tbaa !693
  %.pre153 = load ptr, ptr %5, align 8, !tbaa !714
  br label %bb.aa

bb.aa:                                            ; preds = %.noexc75, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i
  %i.dh = phi ptr [ %i.cx, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre153, %.noexc75 ] ; 2 uses
  %i.di = phi ptr [ %i.cw, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %.pre152, %.noexc75 ] ; 2 uses
  %.sink.i72 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %i.dg, %.noexc75 ]
  %.0.lcssa.i.i.i.i.i73 = phi ptr [ null, %_ZNSt12_Vector_baseIN7xgboost4tree14CPUExpandEntryESaIS2_EEC2EmRKS3_.exit.thread.i ], [ %scevgep.i.i.i.i.i71, %.noexc75 ]
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %.sink.i72, ptr %i.dk, align 8, !tbaa !695
  store ptr %.0.lcssa.i.i.i.i.i73, ptr %i.dj, align 8, !tbaa !693
  %.not140 = icmp ne ptr %i.di, %i.dh
  %i.dl = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dm = icmp sgt i32 %i.dl, 0
  %or.cond = select i1 %.not140, i1 %i.dm, i1 false
  br i1 %or.cond, label %.preheader123, label %._crit_edge134

.preheader123:                                    ; preds = %bb.aa, %._crit_edge132
  %i.dn = phi ptr [ %i.en, %._crit_edge132 ], [ %i.dh, %bb.aa ]
  %i.do = phi ptr [ %i.eo, %._crit_edge132 ], [ %i.di, %bb.aa ]
  %i.dp = phi i32 [ %i.ep, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 2 uses
  %i.dq = phi i32 [ %i.eq, %._crit_edge132 ], [ %i.dl, %bb.aa ] ; 3 uses
  %.037133 = phi i64 [ %i.er, %._crit_edge132 ], [ 0, %bb.aa ] ; 3 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph131, label %._crit_edge132

._crit_edge134:                                   ; preds = %._crit_edge132, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3129)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.du = load i16, ptr %i.dt, align 8, !tbaa !660, !noalias !3129
  %i.dv = icmp eq i16 %i.du, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br i1 %i.dv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge134
  %i.dx = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIiE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc77 unwind label %bb.bn

.noexc77:                                         ; preds = %bb.ab
  store ptr %i.dx, ptr %13, align 8, !tbaa !662, !alias.scope !3129
  %i.dy = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc78 unwind label %bb.bn

.noexc78:                                         ; preds = %.noexc77
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !664, !alias.scope !3129
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = invoke noundef ptr @_ZNK7xgboost16HostDeviceVectorIfE18ConstDevicePointerEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ea)
          to label %bb.ba unwind label %bb.bn

bb.ac:                                            ; preds = %._crit_edge134
  %i.ec = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dw)
          to label %.noexc80 unwind label %bb.bn

.noexc80:                                         ; preds = %bb.ac
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !38, !noalias !3129
  store ptr %i.ed, ptr %13, align 8, !tbaa !662, !alias.scope !3129
  %i.ee = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(33) %i.ds)
          to label %.noexc81 unwind label %bb.bn

.noexc81:                                         ; preds = %.noexc80
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !644, !noalias !3129
  store ptr %i.eg, ptr %i.ef, align 8, !tbaa !664, !alias.scope !3129
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eh)
          to label %.noexc82 unwind label %bb.bn

.noexc82:                                         ; preds = %.noexc81
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !644, !noalias !3129
  br label %bb.ba

bb.ad:                                            ; preds = %bb.w
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.ae:                                            ; preds = %bb.x
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.co

bb.af:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i70, %bb.z
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

._crit_edge132.loopexit:                          ; preds = %bb.az
  %.pre155 = load ptr, ptr %i.e, align 8, !tbaa !693
  %.pre156 = load ptr, ptr %5, align 8, !tbaa !714
  br label %._crit_edge132

._crit_edge132:                                   ; preds = %._crit_edge132.loopexit, %.preheader123
  %i.en = phi ptr [ %.pre156, %._crit_edge132.loopexit ], [ %i.dn, %.preheader123 ] ; 2 uses
  %i.eo = phi ptr [ %.pre155, %._crit_edge132.loopexit ], [ %i.do, %.preheader123 ] ; 2 uses
  %i.ep = phi i32 [ %i.hd, %._crit_edge132.loopexit ], [ %i.dp, %.preheader123 ]
  %i.eq = phi i32 [ %i.hd, %._crit_edge132.loopexit ], [ %i.dq, %.preheader123 ]
  %i.er = add nuw i64 %.037133, 1                 ; 2 uses
  %i.es = ptrtoint ptr %i.eo to i64
  %i.et = ptrtoint ptr %i.en to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = sdiv exact i64 %i.eu, 88
  %i.ew = icmp ult i64 %i.er, %i.ev
  br i1 %i.ew, label %.preheader123, label %._crit_edge134, !llvm.loop !3132

.lr.ph131:                                        ; preds = %.preheader123, %bb.az
  %i.ex = phi i32 [ %i.hd, %bb.az ], [ %i.dp, %.preheader123 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.az ], [ 0, %.preheader123 ] ; 2 uses
  %i.ey = phi i32 [ %i.hd, %bb.az ], [ %i.dq, %.preheader123 ]
  %i.ez = load ptr, ptr %5, align 8, !tbaa !714
  %i.fa = getelementptr inbounds nuw [88 x i8], ptr %i.ez, i64 %.037133 ; 6 uses
  %15 = sext i32 %i.ey to i64
  %i.fb = mul i64 %.037133, %15
  %i.fc = load ptr, ptr %12, align 8, !tbaa !714
  %i.fd = getelementptr [88 x i8], ptr %i.fc, i64 %i.fb
  %i.fe = getelementptr [88 x i8], ptr %i.fd, i64 %indvars.iv ; 8 uses
  %i.ff = load i64, ptr %i.fa, align 8
  store i64 %i.ff, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fg, ptr noundef nonnull align 8 dereferenceable(80) %i.fh, i64 12, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.fa, %i.fe
  br i1 %.not.i, label %bb.az, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph131
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !696
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !508 ; 9 uses
  %i.fn = ptrtoint ptr %i.fl to i64               ; 3 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo                    ; 12 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 3 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !510
  %i.fs = load ptr, ptr %i.fi, align 8, !tbaa !508 ; 5 uses
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = ptrtoint ptr %i.fs to i64               ; 2 uses
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ugt i64 %i.fp, %i.fv
  br i1 %i.fw, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.fx = icmp ugt i64 %i.fp, 9223372036854775804
  br i1 %i.fx, label %bb.ai, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, !prof !176

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc96 unwind label %.loopexit.split-lp125

.noexc96:                                         ; preds = %bb.ai
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.ah
  %i.fy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fp) #38
          to label %.noexc97 unwind label %.loopexit124 ; 4 uses

.noexc97:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %i.fz = icmp samesign ugt i64 %i.fp, 4
  br i1 %i.fz, label %bb.aj, label %bb.ak, !prof !218

bb.aj:                                            ; preds = %.noexc97
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fy, ptr align 4 %i.fm, i64 %i.fp, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.ak:                                            ; preds = %.noexc97
  %i.ga = icmp eq i64 %i.fp, 4
  br i1 %i.ga, label %bb.al, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.gb = load i32, ptr %i.fm, align 4, !tbaa !54
  store i32 %i.gb, ptr %i.fy, align 4, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %i.gc = load ptr, ptr %i.fi, align 8, !tbaa !508 ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i95, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  %i.gd = load ptr, ptr %i.fq, align 8, !tbaa !510
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gc to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gc, i64 noundef %i.gg) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.am, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i
  store ptr %i.fy, ptr %i.fi, align 8, !tbaa !508
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fp
  store ptr %i.gh, ptr %i.fq, align 8, !tbaa !510
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.an:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !696 ; 3 uses
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = sub i64 %i.gk, %i.fu                    ; 5 uses
  %.not24.i = icmp ult i64 %i.gl, %i.fp
  br i1 %.not24.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gm = icmp sgt i64 %i.fp, 4
  br i1 %i.gm, label %bb.ap, label %bb.aq, !prof !218

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fs, ptr align 4 %i.fm, i64 %i.fp, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.aq:                                            ; preds = %bb.ao
  %i.gn = icmp eq i64 %i.fp, 4
  br i1 %i.gn, label %bb.ar, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.go = load i32, ptr %i.fm, align 4, !tbaa !54
  store i32 %i.go, ptr %i.fs, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.as:                                            ; preds = %bb.an
  %i.gp = icmp sgt i64 %i.gl, 4
  br i1 %i.gp, label %bb.at, label %bb.au, !prof !218

bb.at:                                            ; preds = %bb.as
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.fs, ptr align 4 %i.fm, i64 %i.gl, i1 false)
  %.pre.i = load ptr, ptr %i.fj, align 8, !tbaa !508
  %.pre25.i = load ptr, ptr %i.gi, align 8, !tbaa !696 ; 2 uses
  %.pre26.i = load ptr, ptr %i.fi, align 8, !tbaa !508
  %.pre27.i = load ptr, ptr %i.fk, align 8, !tbaa !696
  %.pre28.i = ptrtoint ptr %.pre25.i to i64
  %.pre29.i = ptrtoint ptr %.pre26.i to i64
  %.pre31.i = sub i64 %.pre28.i, %.pre29.i
  %.pre33.i = ptrtoint ptr %.pre27.i to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.au:                                            ; preds = %bb.as
  %i.gq = icmp eq i64 %i.gl, 4
  br i1 %i.gq, label %bb.av, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gr = load i32, ptr %i.fm, align 4, !tbaa !54
  store i32 %i.gr, ptr %i.fs, align 4, !tbaa !54
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.av, %bb.au, %bb.at
  %.pre-phi34.i = phi i64 [ %.pre33.i, %bb.at ], [ %i.fn, %bb.au ], [ %i.fn, %bb.av ]
  %.pre-phi32.i = phi i64 [ %.pre31.i, %bb.at ], [ %i.gl, %bb.au ], [ 4, %bb.av ]
  %i.gs = phi ptr [ %.pre25.i, %bb.at ], [ %i.gj, %bb.au ], [ %i.gj, %bb.av ] ; 2 uses
  %i.gt = phi ptr [ %.pre.i, %bb.at ], [ %i.fm, %bb.au ], [ %i.fm, %bb.av ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.pre-phi32.i ; 3 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = sub i64 %.pre-phi34.i, %i.gv            ; 3 uses
  %i.gx = icmp sgt i64 %i.gw, 4
  br i1 %i.gx, label %bb.aw, label %bb.ax, !prof !218

bb.aw:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.gs, ptr align 4 %i.gu, i64 %i.gw, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ax:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i
  %i.gy = icmp eq i64 %i.gw, 4
  br i1 %i.gy, label %bb.ay, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

bb.ay:                                            ; preds = %bb.ax
  %i.gz = load i32, ptr %i.gu, align 4, !tbaa !54
  store i32 %i.gz, ptr %i.gs, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar, %bb.aq, %bb.ap, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i
  %i.ha = load ptr, ptr %i.fi, align 8, !tbaa !508
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.fp
  %i.hc = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !696
  %.pre154 = load i32, ptr %i.a, align 4, !tbaa !54
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph131, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i
  %i.hd = phi i32 [ %i.ex, %.lr.ph131 ], [ %.pre154, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i ] ; 5 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.fe, i64 48
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.he, ptr noundef nonnull align 8 dereferenceable(40) %i.hf, i64 40, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hg = sext i32 %i.hd to i64
  %i.hh = icmp slt i64 %indvars.iv.next, %i.hg
  br i1 %i.hh, label %.lr.ph131, label %._crit_edge132.loopexit, !llvm.loop !3133

.loopexit124:                                     ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %lpad.loopexit126 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.loopexit.split-lp125:                            ; preds = %bb.ai
  %lpad.loopexit.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ba:                                            ; preds = %.noexc82, %.noexc78
  %.sink4.i = phi ptr [ %i.ej, %.noexc82 ], [ %i.eb, %.noexc78 ]
  %.sink.in.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  %.sink.i76 = load i32, ptr %.sink.in.i, align 4, !tbaa !665, !noalias !3129
  %.sink3.in.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sink3.i = load i8, ptr %.sink3.in.i, align 8, !tbaa !669, !range !197, !noalias !3129, !noundef !198
  %i.hi = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.sink4.i, ptr %i.hi, align 8, !tbaa !670, !alias.scope !3129
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i8 %.sink3.i, ptr %i.hj, align 8, !tbaa !671, !alias.scope !3129
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 28
  store i32 %.sink.i76, ptr %i.hk, align 4, !tbaa !672, !alias.scope !3129
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.hl)
          to label %_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit unwind label %bb.bo

_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit:   ; preds = %bb.ba
end_hunk_3
begin_hunk_4_@_ZN7xgboost4tree13HistEvaluator14EvaluateSplitsERKNS0_21BoundedHistCollectionERKNS_6common13HistogramCutsENS5_4SpanIKNS_11FeatureTypeELm18446744073709551615EEEPSt6vectorINS0_14CPUExpandEntryESaISE_EE:bb.a
  %i.if = load ptr, ptr %12, align 8, !tbaa !714  ; 3 uses
  %i.ig = load ptr, ptr %i.dj, align 8, !tbaa !693 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.if, %i.ig
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge139, %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.io, %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i ], [ %i.if, %._crit_edge139 ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !510
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ii to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.in) #39
  br label %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i
  %i.io = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 88 ; 2 uses
  %.not.i.i.i85 = icmp eq ptr %i.io, %i.ig
  br i1 %.not.i.i.i85, label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !715

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7xgboost4tree14CPUExpandEntryEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %12, align 8, !tbaa !714
  br label %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %._crit_edge139
  %i.ip = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.if, %._crit_edge139 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i
  %i.iq = load ptr, ptr %i.dk, align 8, !tbaa !695
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is
  call void @_ZdlPvm(ptr noundef nonnull %i.ip, i64 noundef %i.it) #39
  br label %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit

_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7xgboost4tree14CPUExpandEntryES2_EvT_S4_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  %i.iu = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !335 ; 3 uses
  %.not.i.i.i.i86 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i.i86, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !337
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.be, %_ZNSt6vectorIN7xgboost4tree14CPUExpandEntryESaIS2_EED2Ev.exit
  %i.jb = load ptr, ptr %10, align 8, !tbaa !605  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i1.i, label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.jc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !608
  %i.je = ptrtoint ptr %i.jd to i64
  %i.jf = ptrtoint ptr %i.jb to i64
  %i.jg = sub i64 %i.je, %i.jf
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jg) #39
  br label %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit

_ZN7xgboost6common14BlockedSpace2dD2Ev.exit:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  %i.jh = load ptr, ptr %7, align 8, !tbaa !1214  ; 3 uses
  %i.ji = load ptr, ptr %i.cg, align 8, !tbaa !1218 ; 2 uses
  %.not4.i.i.i87 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not4.i.i.i87, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i88

.lr.ph.i.i.i88:                                   ; preds = %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.05.i.i.i89 = phi ptr [ %i.ka, %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i ], [ %i.jh, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !161 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.jk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i.i88
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 4 uses
  %i.jm = load atomic i64, ptr %i.jl acquire, align 8 ; 2 uses
  %i.jn = icmp eq i64 %i.jm, 4294967297
  %i.jo = trunc i64 %i.jm to i32                  ; 2 uses
  br i1 %i.jn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.jl, align 8, !tbaa !158
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jk, i64 12
  store i32 0, ptr %i.jp, align 4, !tbaa !160
  %i.jq = load ptr, ptr %i.jk, align 8, !tbaa !89
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  call void %i.js(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #11, !inline_history !1240
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !89
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jv = load ptr, ptr %i.ju, align 8
  call void %i.jv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #11, !inline_history !1240
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.jw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.jw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jx = add nsw i32 %i.jo, -1
  store i32 %i.jx, ptr %i.jl, align 8, !tbaa !54
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.jy = atomicrmw volatile add ptr %i.jl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bk, %bb.bj
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.jo, %bb.bj ], [ %i.jy, %bb.bk ]
  %i.jz = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.jz, label %bb.bl, label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i, !prof !176

bb.bl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jk) #11
  br label %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i: ; preds = %bb.bl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bh, %.lr.ph.i.i.i88
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i89, i64 16 ; 2 uses
  %.not.i.i.i90 = icmp eq ptr %i.ka, %i.ji
  br i1 %.not.i.i.i90, label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i88, !llvm.loop !1241

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEEEvPT_.exit.i.i.i
  %.pr.i91 = load ptr, ptr %7, align 8, !tbaa !1214
  br label %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit
  %i.kb = phi ptr [ %.pr.i91, %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.jh, %_ZN7xgboost6common14BlockedSpace2dD2Ev.exit ] ; 3 uses
  %.not.i.i1.i92 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i1.i92, label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i
  %i.kc = load ptr, ptr %i.ch, align 8, !tbaa !1217
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = ptrtoint ptr %i.kb to i64
  %i.kf = sub i64 %i.kd, %i.ke
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kf) #39
  br label %_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN7xgboost16HostDeviceVectorIjEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN7xgboost16HostDeviceVectorIjEEES4_EvT_S6_RSaIT0_E.exit.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void

bb.bn:                                            ; preds = %.noexc81, %.noexc80, %bb.ac, %.noexc78, %.noexc77, %bb.ab
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bo:                                            ; preds = %bb.ba
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.bp:                                            ; preds = %_ZNK7xgboost6common13HistogramCuts4PtrsEv.exit
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  br label %bb.cl

._crit_edge137.loopexit:                          ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %.pre160 = load ptr, ptr %i.e, align 8, !tbaa !693
  %.pre161 = load ptr, ptr %5, align 8, !tbaa !714
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %._crit_edge137.loopexit, %.preheader
  %i.kj = phi ptr [ %.pre161, %._crit_edge137.loopexit ], [ %i.ia, %.preheader ] ; 2 uses
  %i.kk = phi ptr [ %.pre160, %._crit_edge137.loopexit ], [ %i.ib, %.preheader ] ; 2 uses
  %i.kl = phi i32 [ %i.nu, %._crit_edge137.loopexit ], [ %i.ic, %.preheader ]
  %i.km = phi i32 [ %i.nu, %._crit_edge137.loopexit ], [ %i.id, %.preheader ]
  %i.kn = add nuw i64 %.035138, 1                 ; 2 uses
  %i.ko = ptrtoint ptr %i.kk to i64
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = sdiv exact i64 %i.kq, 88
  %i.ks = icmp ult i64 %i.kn, %i.kr
  br i1 %i.ks, label %.preheader, label %._crit_edge139, !llvm.loop !3140

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.kt = phi i32 [ %i.ic, %.lr.ph136.preheader ], [ %i.nu, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 3 uses
  %i.ku = phi ptr [ %.pre158, %.lr.ph136.preheader ], [ %i.nv, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 4 uses
  %indvars.iv145 = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next146, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ] ; 2 uses
  %i.kv = phi i32 [ %i.id, %.lr.ph136.preheader ], [ %i.nu, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit ]
  %i.kw = load ptr, ptr %5, align 8, !tbaa !714
  %i.kx = getelementptr inbounds nuw [88 x i8], ptr %i.kw, i64 %.035138 ; 11 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %16 = sext i32 %i.kv to i64
  %i.kz = mul i64 %.035138, %16
  %i.la = getelementptr [88 x i8], ptr %i.ku, i64 %i.kz
  %i.lb = getelementptr [88 x i8], ptr %i.la, i64 %indvars.iv145 ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load float, ptr %i.lc, align 8, !tbaa !706 ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.lb, i64 12
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !709 ; 2 uses
  %i.lg = call float @llvm.fabs.f32(float %i.ld)
  %i.lh = fcmp oeq float %i.lg, +inf
  br i1 %i.lh, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph136
  %i.li = and i32 %i.lf, 2147483647
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 12 ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !709
  %i.ll = and i32 %i.lk, 2147483647
  %.not.i.i93 = icmp samesign ugt i32 %i.ll, %i.li
  %i.lm = load float, ptr %i.ky, align 8, !tbaa !706 ; 2 uses
  br i1 %.not.i.i93, label %.split.i, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i:                                         ; preds = %bb.bq
  %i.ln = fcmp ule float %i.lm, %i.ld
  br i1 %i.ln, label %bb.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.bq
  %i.lo = fcmp ogt float %i.ld, %i.lm
  br i1 %i.lo, label %bb.br, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.br:                                            ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i
  store float %i.ld, ptr %i.ky, align 8, !tbaa !706
  store i32 %i.lf, ptr %i.lj, align 4, !tbaa !709
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.lq = load float, ptr %i.lp, align 8, !tbaa !710
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store float %i.lq, ptr %i.lr, align 8, !tbaa !710
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.lt = load i8, ptr %i.ls, align 8, !tbaa !3141, !range !197, !noundef !198
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 48
  store i8 %i.lt, ptr %i.lu, align 8, !tbaa !3141
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lb, i64 24 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 5 uses
  %.not.i98 = icmp eq ptr %i.lb, %i.kx
  br i1 %.not.i98, label %.noexc94, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lb, i64 32 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !696
  %i.lz = load ptr, ptr %i.lv, align 8, !tbaa !508 ; 9 uses
  %i.ma = ptrtoint ptr %i.ly to i64               ; 3 uses
  %i.mb = ptrtoint ptr %i.lz to i64
  %i.mc = sub i64 %i.ma, %i.mb                    ; 12 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.kx, i64 40 ; 3 uses
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !510
  %i.mf = load ptr, ptr %i.lw, align 8, !tbaa !508 ; 5 uses
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64               ; 2 uses
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = icmp ugt i64 %i.mc, %i.mi
  br i1 %i.mj, label %bb.bt, label %bb.bz

bb.bt:                                            ; preds = %bb.bs
  %i.mk = icmp ugt i64 %i.mc, 9223372036854775804
  br i1 %i.mk, label %bb.bu, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112, !prof !176

bb.bu:                                            ; preds = %bb.bt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #37
          to label %.noexc116 unwind label %.loopexit.split-lp

.noexc116:                                        ; preds = %bb.bu
  unreachable

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112: ; preds = %bb.bt
  %i.ml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mc) #38
          to label %.noexc117 unwind label %.loopexit ; 4 uses

.noexc117:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i112
  %i.mm = icmp samesign ugt i64 %i.mc, 4
  br i1 %i.mm, label %bb.bv, label %bb.bw, !prof !218

bb.bv:                                            ; preds = %.noexc117
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ml, ptr align 4 %i.lz, i64 %i.mc, i1 false)
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

bb.bw:                                            ; preds = %.noexc117
  %i.mn = icmp eq i64 %i.mc, 4
  br i1 %i.mn, label %bb.bx, label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

bb.bx:                                            ; preds = %bb.bw
  %i.mo = load i32, ptr %i.lz, align 4, !tbaa !54
  store i32 %i.mo, ptr %i.ml, align 4, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113

_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113: ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.mp = load ptr, ptr %i.lw, align 8, !tbaa !508 ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i114, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113
  %i.mq = load ptr, ptr %i.md, align 8, !tbaa !510
  %i.mr = ptrtoint ptr %i.mq to i64
  %i.ms = ptrtoint ptr %i.mp to i64
  %i.mt = sub i64 %i.mr, %i.ms
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mt) #39
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115: ; preds = %bb.by, %_ZNSt6vectorIjSaIjEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKjS1_EEEEPjmT_S9_.exit.i113
  store ptr %i.ml, ptr %i.lw, align 8, !tbaa !508
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ml, i64 %i.mc
  store ptr %i.mu, ptr %i.md, align 8, !tbaa !510
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.bz:                                            ; preds = %bb.bs
  %i.mv = getelementptr inbounds nuw i8, ptr %i.kx, i64 32 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !696 ; 3 uses
  %i.mx = ptrtoint ptr %i.mw to i64
  %i.my = sub i64 %i.mx, %i.mh                    ; 5 uses
  %.not24.i99 = icmp ult i64 %i.my, %i.mc
  br i1 %.not24.i99, label %bb.ce, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mz = icmp sgt i64 %i.mc, 4
  br i1 %i.mz, label %bb.cb, label %bb.cc, !prof !218

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mf, ptr align 4 %i.lz, i64 %i.mc, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cc:                                            ; preds = %bb.ca
  %i.na = icmp eq i64 %i.mc, 4
  br i1 %i.na, label %bb.cd, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cd:                                            ; preds = %bb.cc
  %i.nb = load i32, ptr %i.lz, align 4, !tbaa !54
  store i32 %i.nb, ptr %i.mf, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.ce:                                            ; preds = %bb.bz
  %i.nc = icmp sgt i64 %i.my, 4
  br i1 %i.nc, label %bb.cf, label %bb.cg, !prof !218

bb.cf:                                            ; preds = %bb.ce
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.mf, ptr align 4 %i.lz, i64 %i.my, i1 false)
  %.pre.i104 = load ptr, ptr %i.lv, align 8, !tbaa !508
  %.pre25.i105 = load ptr, ptr %i.mv, align 8, !tbaa !696 ; 2 uses
  %.pre26.i106 = load ptr, ptr %i.lw, align 8, !tbaa !508
  %.pre27.i107 = load ptr, ptr %i.lx, align 8, !tbaa !696
  %.pre28.i108 = ptrtoint ptr %.pre25.i105 to i64
  %.pre29.i109 = ptrtoint ptr %.pre26.i106 to i64
  %.pre31.i110 = sub i64 %.pre28.i108, %.pre29.i109
  %.pre33.i111 = ptrtoint ptr %.pre27.i107 to i64
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

bb.cg:                                            ; preds = %bb.ce
  %i.nd = icmp eq i64 %i.my, 4
  br i1 %i.nd, label %bb.ch, label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

bb.ch:                                            ; preds = %bb.cg
  %i.ne = load i32, ptr %i.lz, align 4, !tbaa !54
  store i32 %i.ne, ptr %i.mf, align 4, !tbaa !54
  br label %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101

_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101:            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.pre-phi34.i102 = phi i64 [ %.pre33.i111, %bb.cf ], [ %i.ma, %bb.cg ], [ %i.ma, %bb.ch ]
  %.pre-phi32.i103 = phi i64 [ %.pre31.i110, %bb.cf ], [ %i.my, %bb.cg ], [ 4, %bb.ch ]
  %i.nf = phi ptr [ %.pre25.i105, %bb.cf ], [ %i.mw, %bb.cg ], [ %i.mw, %bb.ch ] ; 2 uses
  %i.ng = phi ptr [ %.pre.i104, %bb.cf ], [ %i.lz, %bb.cg ], [ %i.lz, %bb.ch ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.pre-phi32.i103 ; 3 uses
  %i.ni = ptrtoint ptr %i.nh to i64
  %i.nj = sub i64 %.pre-phi34.i102, %i.ni         ; 3 uses
  %i.nk = icmp sgt i64 %i.nj, 4
  br i1 %i.nk, label %bb.ci, label %bb.cj, !prof !218

bb.ci:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.nf, ptr align 4 %i.nh, i64 %i.nj, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.cj:                                            ; preds = %_ZSt4copyIPjS0_ET0_T_S2_S1_.exit.i101
  %i.nl = icmp eq i64 %i.nj, 4
  br i1 %i.nl, label %bb.ck, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

bb.ck:                                            ; preds = %bb.cj
  %i.nm = load i32, ptr %i.nh, align 4, !tbaa !54
  store i32 %i.nm, ptr %i.nf, align 4, !tbaa !54
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100: ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cd, %bb.cc, %bb.cb, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i115
  %i.nn = load ptr, ptr %i.lw, align 8, !tbaa !508
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 %i.mc
  %i.np = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  store ptr %i.no, ptr %i.np, align 8, !tbaa !696
  br label %.noexc94

.noexc94:                                         ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEENS1_IPjS6_EEET0_T_SB_SA_.exit.i100, %bb.br
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lb, i64 56
  %i.nr = getelementptr inbounds nuw i8, ptr %i.kx, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nr, ptr noundef nonnull align 8 dereferenceable(16) %i.nq, i64 16, i1 false), !tbaa.struct !1072
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lb, i64 72
  %i.nt = getelementptr inbounds nuw i8, ptr %i.kx, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nt, ptr noundef nonnull align 8 dereferenceable(16) %i.ns, i64 16, i1 false), !tbaa.struct !1072
  %.pre157 = load ptr, ptr %12, align 8, !tbaa !714
end_hunk_4
begin_hunk_5_@_ZNK7xgboost4tree13HistEvaluator15EnumerateOneHotERKNS_6common13HistogramCutsENS2_4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE:bb.a
  br i1 %i.al, label %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.am = phi <2 x double> [ %i.bj, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.an = load <2 x double>, ptr %.08.i, align 8, !tbaa !1047
  %i.ao = fadd <2 x double> %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.08.i, i64 16
  %i.aq = load <2 x double>, ptr %i.ap, align 8, !tbaa !1047
  %i.ar = fadd <2 x double> %i.ao, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.08.i, i64 32
  %i.at = load <2 x double>, ptr %i.as, align 8, !tbaa !1047
  %i.au = fadd <2 x double> %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.08.i, i64 48
  %i.aw = load <2 x double>, ptr %i.av, align 8, !tbaa !1047
  %i.ax = fadd <2 x double> %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i, i64 64
  %i.az = load <2 x double>, ptr %i.ay, align 8, !tbaa !1047
  %i.ba = fadd <2 x double> %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i, i64 80
  %i.bc = load <2 x double>, ptr %i.bb, align 8, !tbaa !1047
  %i.bd = fadd <2 x double> %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i, i64 96
  %i.bf = load <2 x double>, ptr %i.be, align 8, !tbaa !1047
  %i.bg = fadd <2 x double> %i.bd, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %.08.i, i64 112
  %i.bi = load <2 x double>, ptr %i.bh, align 8, !tbaa !1047
  %i.bj = fadd <2 x double> %i.bg, %i.bi          ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.08.i, i64 128 ; 2 uses
  %.not.i53.7 = icmp eq ptr %i.bk, %i.ad
  br i1 %.not.i53.7, label %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit, label %.lr.ph.i, !llvm.loop !3231

_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g
  %i.bl = phi <2 x double> [ zeroinitializer, %bb.g ], [ %.lcssa145.unr, %.lr.ph.i.prol.loopexit ], [ %i.bj, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bn = sext i32 %5 to i64
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !408
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %i.bn ; 4 uses
  %i.bq = load <2 x double>, ptr %i.bp, align 8, !tbaa !1047
  %i.br = fsub <2 x double> %i.bq, %i.bl
  %.not109 = icmp eq i32 %i.i, %i.m
  br i1 %.not109, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %i.bu = or i32 %4, -2147483648                  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.bw = sext i32 %i.i to i64                    ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.bw)
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61
  %i.bx = trunc nuw i8 %i.do to i1
  br i1 %i.bx, label %bb.s, label %._crit_edge.thread

bb.h:                                             ; preds = %bb.v
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.i:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61
  %i.bz = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dn, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 3 uses
  %i.ca = phi i8 [ 0, %.lr.ph ], [ %i.do, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 3 uses
  %i.cb = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dp, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 3 uses
  %i.cc = phi i32 [ 0, %.lr.ph ], [ %i.dq, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 3 uses
  %i.cd = phi float [ 0.000000e+00, %.lr.ph ], [ %i.dr, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 5 uses
  %i.ce = phi i32 [ 0, %.lr.ph ], [ %i.ds, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 4 uses
  %indvars.iv = phi i64 [ %i.bw, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61 ] ; 4 uses
  %i.cf = load ptr, ptr %i.e, align 8, !tbaa !644
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !311 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %umax
  br i1 %exitcond.not, label %bb.j, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit, !prof !176

bb.j:                                             ; preds = %bb.i
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit: ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %indvars.iv
  %i.cj = load <2 x double>, ptr %i.ci, align 8, !tbaa !1047 ; 4 uses
  %i.ck = load <2 x double>, ptr %i.bp, align 8, !tbaa !1047
  %i.cl = fsub <2 x double> %i.ck, %i.cj          ; 2 uses
  %i.cm = load ptr, ptr %i.bs, align 8, !tbaa !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #11
  store <2 x double> %i.cl, ptr %9, align 16, !tbaa !1047
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store <2 x double> %i.cj, ptr %10, align 16, !tbaa !1047
  %i.cn = invoke noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.cm, i32 noundef %5, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.q

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit
  %i.co = load float, ptr %i.bt, align 8, !tbaa !3126
  %i.cp = fsub float %i.cn, %i.co                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  %i.cq = call float @llvm.fabs.f32(float %i.cp)
  %i.cr = fcmp oeq float %i.cq, +inf
  br i1 %i.cr, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cs = and i32 %i.ce, 2147483647
  %.not.i.i = icmp ugt i32 %i.cs, %4
  br i1 %.not.i.i, label %.split.i56, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i56:                                       ; preds = %bb.l
  %i.ct = fcmp ule float %i.cd, %i.cp
  br i1 %i.ct, label %bb.m, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.l
  %i.cu = fcmp ogt float %i.cp, %i.cd
  br i1 %i.cu, label %bb.m, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

bb.m:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i56
  store float %i.cp, ptr %8, align 8, !tbaa !706
  store i32 %i.bu, ptr %i.o, align 4, !tbaa !709
  store float %i.ch, ptr %i.p, align 8, !tbaa !710
  store i8 1, ptr %i.s, align 8, !tbaa !3141
  store <2 x double> %i.cl, ptr %i.r, align 8, !tbaa !1047
  store <2 x double> %i.cj, ptr %i.bv, align 8, !tbaa !1047
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit: ; preds = %bb.m, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i56, %bb.k
  %i.cv = phi float [ %i.ch, %bb.m ], [ %i.bz, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.bz, %.split.i56 ], [ %i.bz, %bb.k ] ; 3 uses
  %i.cw = phi i8 [ 1, %bb.m ], [ %i.ca, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ca, %.split.i56 ], [ %i.ca, %bb.k ] ; 3 uses
  %i.cx = phi float [ %i.cp, %bb.m ], [ %i.cb, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cb, %.split.i56 ], [ %i.cb, %bb.k ] ; 7 uses
  %i.cy = phi i32 [ %i.bu, %bb.m ], [ %i.cc, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cc, %.split.i56 ], [ %i.cc, %bb.k ] ; 6 uses
  %i.cz = phi float [ %i.cp, %bb.m ], [ %i.cd, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.cd, %.split.i56 ], [ %i.cd, %bb.k ]
  %i.da = phi i32 [ %i.bu, %bb.m ], [ %i.ce, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ce, %.split.i56 ], [ %i.ce, %bb.k ]
  %i.db = fadd <2 x double> %i.br, %i.cj          ; 3 uses
  %i.dc = load <2 x double>, ptr %i.bp, align 8, !tbaa !1047
  %i.dd = fsub <2 x double> %i.dc, %i.db          ; 2 uses
  %i.de = load ptr, ptr %i.bs, align 8, !tbaa !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store <2 x double> %i.dd, ptr %11, align 16, !tbaa !1047
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store <2 x double> %i.db, ptr %12, align 16, !tbaa !1047
  %i.df = invoke noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(144) %i.de, i32 noundef %5, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dg = load float, ptr %i.bt, align 8, !tbaa !3126
  %i.dh = fsub float %i.df, %i.dg                 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.di = call float @llvm.fabs.f32(float %i.dh)
  %i.dj = fcmp oeq float %i.di, +inf
  br i1 %i.dj, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = and i32 %i.cy, 2147483647
  %.not.i.i57 = icmp ugt i32 %i.dk, %4
  br i1 %.not.i.i57, label %.split.i60, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58

.split.i60:                                       ; preds = %bb.o
  %i.dl = fcmp ule float %i.cx, %i.dh
  br i1 %i.dl, label %bb.p, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58: ; preds = %bb.o
  %i.dm = fcmp ogt float %i.dh, %i.cx
  br i1 %i.dm, label %bb.p, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

bb.p:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58, %.split.i60
  store float %i.dh, ptr %8, align 8, !tbaa !706
  store i32 %4, ptr %i.o, align 4, !tbaa !709
  store float %i.ch, ptr %i.p, align 8, !tbaa !710
  store i8 1, ptr %i.s, align 8, !tbaa !3141
  store <2 x double> %i.dd, ptr %i.r, align 8, !tbaa !1047
  store <2 x double> %i.db, ptr %i.bv, align 8, !tbaa !1047
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit61: ; preds = %bb.p, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58, %.split.i60, %bb.n
  %i.dn = phi float [ %i.ch, %bb.p ], [ %i.cv, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cv, %.split.i60 ], [ %i.cv, %bb.n ] ; 2 uses
  %i.do = phi i8 [ 1, %bb.p ], [ %i.cw, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cw, %.split.i60 ], [ %i.cw, %bb.n ] ; 2 uses
  %i.dp = phi float [ %i.dh, %bb.p ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cx, %.split.i60 ], [ %i.cx, %bb.n ] ; 2 uses
  %i.dq = phi i32 [ %4, %bb.p ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cy, %.split.i60 ], [ %i.cy, %bb.n ] ; 2 uses
  %i.dr = phi float [ %i.dh, %bb.p ], [ %i.cx, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cx, %.split.i60 ], [ %i.cz, %bb.n ]
  %i.ds = phi i32 [ %4, %bb.p ], [ %i.cy, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i58 ], [ %i.cy, %.split.i60 ], [ %i.da, %bb.n ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.dt = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.m, %i.dt
  br i1 %.not, label %._crit_edge, label %bb.i, !llvm.loop !3232

bb.q:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #11
  br label %bb.x

bb.r:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge
  %i.dw = add nsw i32 %i.n, 1
  %13 = sext i32 %i.dw to i64
  %i.dx = uitofp i64 %13 to double
  %i.dy = fmul nnan double %i.dx, 3.125000e-02
  %i.dz = call double @llvm.ceil.f64(double %i.dy)
  %i.ea = fptoui double %i.dz to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 0, ptr %i.a, align 4, !tbaa !54
  %.not131 = icmp ne i64 %i.ea, 0
  call void @llvm.assume(i1 %.not131)
  invoke void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr null, i64 noundef %i.ea, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 unwind label %bb.t

._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113: ; preds = %bb.s
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !508 ; 2 uses
  %.pre114 = load float, ptr %i.p, align 8, !tbaa !710 ; 2 uses
  %.pre115.pre = load float, ptr %8, align 8, !tbaa !706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.eb = fptoui float %.pre114 to i64            ; 2 uses
  %i.ec = lshr i64 %i.eb, 5
  %i.ed = and i64 %i.eb, 31
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ec ; 2 uses
  %i.ef = lshr exact i64 2147483648, %i.ed
  %i.eg = trunc nuw i64 %i.ef to i32
  %i.eh = load i32, ptr %i.ee, align 4, !tbaa !54
  %i.ei = or i32 %i.eh, %i.eg
  store i32 %i.ei, ptr %i.ee, align 4, !tbaa !54
  %.pre116 = load i32, ptr %i.o, align 4, !tbaa !709
  br label %._crit_edge.thread

bb.t:                                             ; preds = %bb.s
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.x

._crit_edge.thread:                               ; preds = %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113, %._crit_edge
  %i.ek = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ null, %._crit_edge ], [ null, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 3 uses
  %i.el = phi float [ %.pre114, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dn, %._crit_edge ], [ 0.000000e+00, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ]
  %i.em = phi i32 [ %.pre116, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dq, %._crit_edge ], [ 0, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 2 uses
  %i.en = phi float [ %.pre115.pre, %._ZNSt6vectorIjSaIjEE6resizeEmRKj.exit_crit_edge113 ], [ %i.dp, %._crit_edge ], [ 0.000000e+00, %_ZSt10accumulateIPKN7xgboost6detail20GradientPairInternalIdEES3_ET0_T_S7_S6_.exit ] ; 4 uses
  %i.eo = call float @llvm.fabs.f32(float %i.en)
  %i.ep = fcmp oeq float %i.eo, +inf
  br i1 %i.ep, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread
  %i.eq = and i32 %i.em, 2147483647
  %i.er = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !709
  %i.et = and i32 %i.es, 2147483647
  %.not.i.i63 = icmp samesign ugt i32 %i.et, %i.eq
  %i.eu = load float, ptr %7, align 8, !tbaa !706 ; 2 uses
  br i1 %.not.i.i63, label %.split.i65, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64

.split.i65:                                       ; preds = %bb.u
  %i.ev = fcmp ule float %i.eu, %i.en
  br i1 %i.ev, label %bb.v, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64: ; preds = %bb.u
  %i.ew = fcmp ogt float %i.en, %i.eu
  br i1 %i.ew, label %bb.v, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

bb.v:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64, %.split.i65
  store float %i.en, ptr %7, align 8, !tbaa !706
  store i32 %i.em, ptr %i.er, align 4, !tbaa !709
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.el, ptr %i.ex, align 8, !tbaa !710
  %i.ey = load i8, ptr %i.s, align 8, !tbaa !3141, !range !197, !noundef !198
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i8 %i.ey, ptr %i.ez, align 8, !tbaa !3141
  %i.fa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fb = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIjSaIjEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.fa, ptr noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc66 unwind label %bb.h   ; 0 uses

.noexc66:                                         ; preds = %bb.v
  %i.fc = getelementptr inbounds nuw i8, ptr %7, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !1072
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !1072
  %.pre117 = load ptr, ptr %i.q, align 8, !tbaa !508
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit: ; preds = %.noexc66, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64, %.split.i65, %._crit_edge.thread
  %i.ff = phi ptr [ %.pre117, %.noexc66 ], [ %i.ek, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i64 ], [ %i.ek, %.split.i65 ], [ %i.ek, %._crit_edge.thread ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !510
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit: ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateERKS3_.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void

bb.x:                                             ; preds = %bb.h, %bb.r, %bb.q, %bb.t
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.ej, %bb.t ], [ %i.dv, %bb.r ], [ %i.by, %bb.h ], [ %i.du, %bb.q ]
  %i.fl = load ptr, ptr %i.q, align 8, !tbaa !508 ; 3 uses
  %.not.i.i.i.i67 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i67, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !510
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #39
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEED2Ev.exit68: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  resume { ptr, i32 } %.pn48.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS_6common13HistogramCutsENS3_4SpanIKmLm18446744073709551615EEENS7_IKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS0_13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEEEPNS0_19SplitEntryContainerINS0_9GradStatsEEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 %2, ptr %3, i64 %4, ptr %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %9) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"struct.xgboost::tree::SplitEntryContainer.816", align 8 ; 16 uses
  %11 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %12 = alloca %"struct.xgboost::tree::GradStats", align 16 ; 4 uses
  %13 = alloca %"class.std::unique_ptr", align 8  ; 8 uses
  %14 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIjE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIfE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.h = sext i32 %7 to i64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !408
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h ; 2 uses
  %i.k = zext i32 %6 to i64
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !508  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.k
  %i.n = load i32, ptr %i.m, align 4, !tbaa !54   ; 5 uses
  %i.o = add i32 %6, 1
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !54
  %i.s = sub nsw i32 %i.r, %i.n                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3095
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 4, !tbaa !54
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #11
  store float 0.000000e+00, ptr %10, align 8, !tbaa !706
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 0, ptr %i.x, align 4, !tbaa !709
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.y, align 8, !tbaa !710
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.z, i8 0, i64 25, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i8 0, i64 32, i1 false)
  %i.ab = sext i32 %i.n to i64                    ; 7 uses
  %i.ac = sext i32 %i.s to i64                    ; 3 uses
  %i.ad = icmp eq i32 %i.s, -1
  br i1 %i.ad, label %.split.i, label %bb.b

.split.i:                                         ; preds = %bb.a
  %.not8.i = icmp ult i64 %4, %i.ab
  br i1 %.not8.i, label %bb.c, label %bb.d, !prof !176

bb.b:                                             ; preds = %bb.a
  %i.ae = add nsw i64 %i.ac, %i.ab
  %.not.i = icmp ugt i64 %i.ae, %4
  br i1 %.not.i, label %bb.c, label %bb.e, !prof !176

bb.c:                                             ; preds = %bb.b, %.split.i
  tail call void @_ZSt9terminatev() #40
  unreachable

bb.d:                                             ; preds = %.split.i
  %i.af = sub nuw i64 %4, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.ag = phi i64 [ %i.af, %bb.d ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = icmp ne ptr %5, null
  %i.ai = icmp eq i64 %i.ag, 0
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %bb.g, label %bb.f, !prof !218

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #40
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.ab
  %i.al = add i32 %i.n, -1
  %i.am = add i32 %i.al, %.sroa.speculated        ; 2 uses
  %.not139 = icmp eq i32 %i.n, %i.am
  br i1 %.not139, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ao = or i32 %6, -2147483648                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %bb.h

._crit_edge:                                      ; preds = %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %.not48 = icmp eq i32 %i.bs, -1
  br i1 %.not48, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %bb.m

bb.h:                                             ; preds = %.lr.ph, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread
  %i.ar = phi i8 [ 0, %.lr.ph ], [ %i.bo, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.as = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bp, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.at = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bq, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 5 uses
  %i.au = phi i32 [ 0, %.lr.ph ], [ %i.br, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 4 uses
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %.037142 = phi i32 [ -1, %.lr.ph ], [ %i.bs, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ] ; 3 uses
  %i.av = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.bc, %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread ]
  %15 = sub nsw i64 %indvars.iv, %i.ab            ; 2 uses
  %i.aw = icmp ugt i64 %2, %15
  br i1 %i.aw, label %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit, label %bb.i, !prof !218

bb.i:                                             ; preds = %bb.h
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit: ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %15
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !36 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ag
  br i1 %i.az, label %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, label %bb.j, !prof !218

bb.j:                                             ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  call void @_ZSt9terminatev() #40
  unreachable

_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60: ; preds = %_ZNK7xgboost6common4SpanIKmLm18446744073709551615EEixEm.exit
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ay
  %i.bb = load <2 x double>, ptr %i.ba, align 8, !tbaa !1047
  %i.bc = fadd <2 x double> %i.av, %i.bb          ; 4 uses
  %i.bd = load <2 x double>, ptr %i.j, align 8, !tbaa !1047
  %i.be = fsub <2 x double> %i.bd, %i.bc          ; 2 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !3095
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #11
  store <2 x double> %i.be, ptr %11, align 16, !tbaa !1047
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #11
  store <2 x double> %i.bc, ptr %12, align 16, !tbaa !1047
  %i.bg = call noundef float @_ZNK7xgboost4tree13TreeEvaluator14SplitEvaluatorINS0_10TrainParamEE13CalcSplitGainINS0_9GradStatsETnNSt9enable_ifIXntsr10split_impl19IsVectorGradientSumIT_EE5valueEiE4typeELi0EEEfRKS3_ijRKS8_SE_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(144) %i.bf, i32 noundef %7, i32 noundef %6, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12)
  %i.bh = load float, ptr %i.an, align 8, !tbaa !3126
  %i.bi = fsub float %i.bg, %i.bh                 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #11
  %i.bj = call float @llvm.fabs.f32(float %i.bi)
  %i.bk = fcmp oeq float %i.bj, +inf
  br i1 %i.bk, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60
  %i.bl = and i32 %i.au, 2147483647
  %.not.i.i = icmp ugt i32 %i.bl, %6
  br i1 %.not.i.i, label %.split.i61, label %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i

.split.i61:                                       ; preds = %bb.k
  %i.bm = fcmp ule float %i.at, %i.bi
  br i1 %i.bm, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i: ; preds = %bb.k
  %i.bn = fcmp ogt float %i.bi, %i.at
  br i1 %i.bn, label %bb.l, label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

bb.l:                                             ; preds = %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61
  store float %i.bi, ptr %10, align 8, !tbaa !706
  store i32 %i.ao, ptr %i.x, align 4, !tbaa !709
  store float +qnan, ptr %i.y, align 8, !tbaa !710
  store i8 1, ptr %i.ap, align 8, !tbaa !3141
  store <2 x double> %i.be, ptr %i.aa, align 8, !tbaa !1047
  store <2 x double> %i.bc, ptr %i.aq, align 8, !tbaa !1047
  %16 = trunc nsw i64 %indvars.iv to i32
  br label %_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread

_ZN7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE6UpdateIS2_EEbfjfbbRKT_S7_.exit.thread: ; preds = %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i, %.split.i61, %bb.l
  %i.bo = phi i8 [ 1, %bb.l ], [ %i.ar, %.split.i61 ], [ %i.ar, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.ar, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bp = phi float [ +qnan, %bb.l ], [ %i.as, %.split.i61 ], [ %i.as, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.as, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bq = phi float [ %i.bi, %bb.l ], [ %i.at, %.split.i61 ], [ %i.at, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.at, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.br = phi i32 [ %i.ao, %bb.l ], [ %i.au, %.split.i61 ], [ %i.au, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %i.au, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 5 uses
  %i.bs = phi i32 [ %16, %bb.l ], [ %.037142, %.split.i61 ], [ %.037142, %_ZNK7xgboost4tree19SplitEntryContainerINS0_9GradStatsEE11NeedReplaceEfj.exit.i ], [ %.037142, %_ZNK7xgboost6common4SpanIKNS_6detail20GradientPairInternalIdEELm18446744073709551615EEixEm.exit60 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %17 = trunc nsw i64 %indvars.iv.next to i32
  %.not = icmp eq i32 %i.am, %17
  br i1 %.not, label %._crit_edge, label %bb.h, !llvm.loop !3233

bb.m:                                             ; preds = %._crit_edge
  %i.bt = uitofp i64 %i.ac to double
  %i.bu = fmul nnan double %i.bt, 3.125000e-02
  %i.bv = call double @llvm.ceil.f64(double %i.bu)
  %i.bw = fptoui double %i.bv to i64              ; 4 uses
  %i.bx = icmp ugt i64 %i.bw, 2305843009213693951
  br i1 %i.bx, label %.noexc62, label %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i

.noexc62:                                         ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #37
  unreachable

_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %.noexc63

.noexc63:                                         ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i
  %i.by = shl nuw nsw i64 %i.bw, 2                ; 3 uses
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #38 ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bz, i8 0, i64 %i.by, i1 false), !tbaa !54
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.by
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc63
  %i.cc = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.bz, %.noexc63 ] ; 8 uses
  %.sroa.11.0 = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc63 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc63 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.cc, ptr %i.z, align 8, !tbaa !508
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.cd, align 8, !tbaa !696
  store ptr %.sroa.11.0, ptr %i.ce, align 8, !tbaa !510
  %i.cf = sub nsw i32 %i.bs, %i.n
  %.fr180 = freeze i32 %i.cf                      ; 4 uses
  %i.cg = add i32 %.fr180, 1                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.cg, ptr %i.a, align 4, !tbaa !54, !noalias !3234
  store i32 0, ptr %i.b, align 4, !tbaa !54, !noalias !3234
  %i.ch = icmp sgt i32 %.fr180, -1
  br i1 %i.ch, label %.thread, label %bb.n

.thread:                                          ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  invoke void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %.pr = load ptr, ptr %13, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not134 = icmp eq ptr %.pr, null
  br i1 %.not134, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #11
  %i.ci = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %.noexc64 unwind label %bb.r

.noexc64:                                         ; preds = %bb.p
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ci, ptr noundef nonnull @.str.91, i32 noundef 191)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.r

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc64
  %i.cj = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.s ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.1, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.cl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.95, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.cm = load ptr, ptr %13, align 8, !tbaa !55   ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !57
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !58
  %i.cq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cn, i64 noundef %i.cp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.s

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
  %i.cr = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull @.str.3, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72 unwind label %bb.s ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.u unwind label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %.noexc64, %bb.p, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %_ZN4dmlc15LogMessageFatalC2EPKci.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.t unwind label %bb.af

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn = phi { ptr, i32 } [ %i.ct, %bb.r ], [ %i.cu, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #11
  br label %bb.y

bb.u:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit72
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #11
  %.pr131 = load ptr, ptr %13, align 8, !tbaa !55 ; 4 uses
  %.not.i73 = icmp eq ptr %.pr131, null
  br i1 %.not.i73, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cv = load ptr, ptr %.pr131, align 8, !tbaa !57 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.pr131, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !59
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr131, i64 noundef 32) #39
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit: ; preds = %bb.o, %.thread, %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #11
  %i.da = sext i32 %i.cg to i64                   ; 2 uses
  %.not.i.i78 = icmp ult i64 %2, %i.da
  br i1 %.not.i.i78, label %bb.w, label %bb.x, !prof !176

bb.w:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  call void @_ZSt9terminatev() #40
  unreachable

bb.x:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit
  %.not135 = icmp eq i32 %i.cg, 0
  br i1 %.not135, label %_ZSt8for_eachIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKmLm18446744073709551615EEELb0EEEZNS0_4tree13HistEvaluator13EnumeratePartILi1EEEvRKNS1_13HistogramCutsES6_NS4_IKNS0_6detail20GradientPairInternalIdEELm18446744073709551615EEEjiRKNS8_13TreeEvaluator14SplitEvaluatorINS8_10TrainParamEEEPNS8_19SplitEntryContainerINS8_9GradStatsEEEEUlmE_ET0_T_SV_SU_.exit, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %bb.x
  %i.db = load ptr, ptr %i.f, align 8, !tbaa !644, !noalias !3237
  %invariant.gep = getelementptr [4 x i8], ptr %i.db, i64 %i.ab ; 3 uses
  %i.dc = icmp eq i32 %.fr180, 0
  br i1 %i.dc, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i.preheader.new

.lr.ph.split.i.preheader.new:                     ; preds = %.lr.ph.split.i.preheader
  %unroll_iter = and i64 %i.da, -2
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, %.lr.ph.split.i.preheader.new
  %.sroa.4.09.i = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %i.ea, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.i.preheader.new ], [ %niter.next.1, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1 ]
  %exitcond.not.i = icmp eq i64 %.sroa.4.09.i, %2
  br i1 %exitcond.not.i, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, !prof !176

.split.us.i:                                      ; preds = %.lr.ph.split.i, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i, %.lr.ph.split.i.epil.preheader
  call void @_ZSt9terminatev() #40, !noalias !3237
  unreachable

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i: ; preds = %.lr.ph.split.i
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.4.09.i
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !36, !noalias !3237
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.de
  %i.df = load float, ptr %gep, align 4, !tbaa !311, !noalias !3237
  %i.dg = fptoui float %i.df to i64               ; 2 uses
  %i.dh = lshr i64 %i.dg, 5
  %i.di = and i64 %i.dg, 31
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.dh ; 2 uses
  %i.dk = lshr exact i64 2147483648, %i.di
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !54, !noalias !3237
  %i.dn = or i32 %i.dm, %i.dl
  store i32 %i.dn, ptr %i.dj, align 4, !tbaa !54, !noalias !3237
  %i.do = or disjoint i64 %.sroa.4.09.i, 1        ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.do, %2
  br i1 %exitcond.not.i.1, label %.split.us.i, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1, !prof !176

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i.1: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIKmLm18446744073709551615EEELb0EEppEv.exit.i
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !36, !noalias !3237
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dq
  %i.dr = load float, ptr %gep.1, align 4, !tbaa !311, !noalias !3237
end_hunk_5
