Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/rerun?download=true
inline.NumInlined: 506
inline.NumDeleted: 317
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx15LegacySimulator8do_rerunEv:bb.a
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef 273, ptr noundef nonnull @.str.23, ptr noundef %i.er) #21
          to label %bb.cs unwind label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  unreachable

bb.ct:                                            ; preds = %bb.cp
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cr, %bb.cq
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %15) #19
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.pn240 = phi { ptr, i32 } [ %i.et, %bb.cu ], [ %i.es, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.lg

bb.cw:                                            ; preds = %bb.co
  %i.eu = load ptr, ptr %i.t, align 8, !tbaa !103 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i32 1, ptr %i.ev, align 8, !tbaa !272
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  store i32 1, ptr %i.ew, align 8, !tbaa !273
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 72
  store i32 0, ptr %i.ex, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !275
  invoke void @_ZN3gmx25ObservablesReducerBuilder5buildEv(ptr dead_on_unwind nonnull writable sret(%"class.gmx::ObservablesReducer") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.ez)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 11 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 184
  %i.fd = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !277
  %i.ff = icmp eq i32 %i.fe, 12
  br i1 %i.ff, label %bb.cy, label %bb.dd

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  invoke void @_Z14genQmmmIndicesRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.47") align 8 %17, ptr noundef nonnull align 8 dereferenceable(768) %i.fb)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fb, i64 712 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !278 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 728 ; 2 uses
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !279
  %i.fk = load <2 x ptr>, ptr %17, align 16, !tbaa !280
  store <2 x ptr> %i.fk, ptr %i.fg, align 8, !tbaa !280
  %i.fl = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 16, !tbaa !279
  store ptr %i.fm, ptr %i.fi, align 8, !tbaa !279
  %.not.i.i.i.i.i285 = icmp eq ptr %i.fh, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i285, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit

_ZNSt6vectorIiSaIiEEaSEOS1_.exit:                 ; preds = %bb.cz
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = ptrtoint ptr %i.fh to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fh, i64 noundef %i.fp) #18
  %.pr = load ptr, ptr %17, align 16, !tbaa !278  ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIiSaIiEEaSEOS1_.exit
  %i.fq = load ptr, ptr %i.fl, align 16, !tbaa !279
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %.pr to i64
  %i.ft = sub i64 %i.fr, %i.fs
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.ft) #18
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.cz, %_ZNSt6vectorIiSaIiEEaSEOS1_.exit, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.dd

bb.db:                                            ; preds = %bb.cw
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.lf

bb.dc:                                            ; preds = %bb.cy
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.le

bb.dd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.cx
  br i1 %i.s, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !281 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 20
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 52
  %i.gb = ptrtoint ptr %i.ga to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.gc = phi ptr [ %i.fy, %bb.de ], [ null, %bb.dd ]
  %.sroa.6.0 = phi i64 [ %i.gb, %bb.de ], [ 0, %bb.dd ]
  %.sroa.0357.0 = phi ptr [ %i.fz, %bb.de ], [ null, %bb.dd ] ; 3 uses
  %i.gd = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.ge = load i32, ptr %i.ba, align 4, !tbaa !216
  %i.gf = load i8, ptr %i.bs, align 8, !tbaa !255, !range !254, !noundef !91
  %i.gg = getelementptr inbounds nuw i8, ptr %i.u, i64 424 ; 5 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !283
  %i.gi = getelementptr inbounds nuw i8, ptr %i.u, i64 440
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !284 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !285 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !286
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gq
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 6 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !287
  store ptr %.sroa.0357.0, ptr %18, align 8, !tbaa !288
  %i.gu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.gv = ptrtoint ptr %.sroa.0357.0 to i64
  %i.gw = sub i64 %.sroa.6.0, %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0357.0, i64 %i.gw
  store ptr %i.gx, ptr %i.gu, align 8, !tbaa !288
  %i.gy = trunc nuw i8 %i.gf to i1
  invoke void @_Z18initialize_lambdasP8_IO_FILE26FreeEnergyPerturbationTypebRK8t_lambdaN3gmx8ArrayRefIKfEEP14gmx_ekindata_tbPiNS6_IfEE(ptr noundef %i.gd, i32 noundef %i.ge, i1 noundef zeroext %i.gy, ptr noundef nonnull align 8 dereferenceable(288) %i.gh, ptr %i.gl, ptr %i.gr, ptr noundef %i.gt, i1 noundef zeroext %i.s, ptr noundef %i.gc, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %18)
          to label %bb.dg unwind label %bb.dr

bb.dg:                                            ; preds = %bb.df
  %i.gz = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.ha = load i32, ptr %i.ci, align 8, !tbaa !261
  %i.hb = load ptr, ptr %i.ck, align 8, !tbaa !262
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !289, !nonnull !91, !align !92
  %i.he = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !290
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !291
  %i.hj = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !292
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 10 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !293
  %i.ho = load ptr, ptr %i.cy, align 8, !tbaa !267
  %i.hp = invoke noundef ptr @_Z11init_mdoutfP8_IO_FILEiPK8t_filenmRKN3gmx12MdrunOptionsEPK9t_commrecPNS4_17IMDOutputProviderERKNS4_18MDModulesNotifiersEPK10t_inputrecRK10gmx_mtop_tPK16gmx_output_env_tP13gmx_wallcycleNS4_16StartingBehaviorEbPK14gmx_multisim_t(ptr noundef %i.gz, i32 noundef %i.ha, ptr noundef %i.hb, ptr noundef nonnull align 8 dereferenceable(56) %i.hd, ptr noundef %i.he, ptr noundef %i.hg, ptr noundef nonnull align 1 %i.hi, ptr noundef nonnull %i.u, ptr noundef nonnull align 8 dereferenceable(768) %i.hj, ptr noundef %i.hl, ptr noundef %i.hn, i32 noundef 2, i1 noundef zeroext false, ptr noundef %i.ho)
          to label %bb.dh unwind label %bb.ds     ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.hq = invoke noundef ptr @_Z17mdoutf_get_fp_eneP10gmx_mdoutf(ptr noundef %i.hp)
          to label %bb.di unwind label %bb.dt

bb.di:                                            ; preds = %bb.dh
  %i.hr = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.hu = invoke noundef ptr @_Z18mdoutf_get_fp_dhdlP10gmx_mdoutf(ptr noundef %i.hp)
          to label %bb.dj unwind label %bb.dt

bb.dj:                                            ; preds = %bb.di
  %i.hv = load ptr, ptr %i.hh, align 8, !tbaa !291
  invoke void @_ZN3gmx12EnergyOutputC1EP9ener_fileRK10gmx_mtop_tRK10t_inputrecPK6pull_tP8_IO_FILEbNS_16StartingBehaviorEbRKNS_18MDModulesNotifiersE(ptr noundef nonnull align 8 dereferenceable(392) %19, ptr noundef %i.hq, ptr noundef nonnull align 8 dereferenceable(768) %i.hr, ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef %i.ht, ptr noundef %i.hu, i1 noundef zeroext true, i32 noundef 2, i1 noundef zeroext false, ptr noundef nonnull align 1 %i.hv)
          to label %bb.dk unwind label %bb.dt

bb.dk:                                            ; preds = %bb.dj
  %i.hw = invoke noundef ptr @_Z16global_stat_initPK10t_inputrec(ptr noundef nonnull %i.u)
          to label %bb.dl unwind label %bb.du     ; 2 uses

bb.dl:                                            ; preds = %bb.dk
  %i.hx = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.hy = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 7 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !252 ; 2 uses
  %.not194 = icmp eq ptr %i.ia, null
  br i1 %.not194, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ib = invoke noundef i32 @_ZNK3gmx11Constraints22numFlexibleConstraintsEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ia)
          to label %bb.dn unwind label %bb.du

bb.dn:                                            ; preds = %bb.dl, %bb.dm
  %i.ic = phi i32 [ %i.ib, %bb.dm ], [ 0, %bb.dl ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !273
  %i.if = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %.val278 = load ptr, ptr %i.ig, align 8, !tbaa !107
  %i.ih = icmp ne ptr %.val278, null
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 7 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !295
  %i.ik = invoke noundef ptr @_Z18init_shell_flexconP8_IO_FILERK10gmx_mtop_tiibRKN3gmx18SimulationWorkloadE(ptr noundef %i.hx, ptr noundef nonnull align 8 dereferenceable(768) %i.hy, i32 noundef %i.ic, i32 noundef %i.ie, i1 noundef zeroext %i.ih, ptr noundef nonnull align 1 dereferenceable(29) %i.ij)
          to label %bb.do unwind label %bb.du     ; 4 uses

bb.do:                                            ; preds = %bb.dn
  %i.il = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.im = getelementptr i8, ptr %i.il, i64 16
  %.val277 = load ptr, ptr %i.im, align 8, !tbaa !107 ; 2 uses
  %.not371 = icmp eq ptr %.val277, null
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !281 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  br i1 %.not371, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !296
  invoke void @_Z19dd_init_local_stateRK12gmx_domdec_tPK7t_statePS2_(ptr noundef nonnull align 8 dereferenceable(1097) %.val277, ptr noundef %i.io, ptr noundef %i.iq)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  %i.ir = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.is = load ptr, ptr %i.ab, align 8, !tbaa !110, !nonnull !91, !align !92
  %i.it = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !297
  %i.iv = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !107
  %i.iy = load ptr, ptr %i.in, align 8, !tbaa !281
  %i.iz = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.ja = load ptr, ptr %i.hh, align 8, !tbaa !291
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !298
  %i.jd = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.je = load ptr, ptr %i.ip, align 8, !tbaa !296
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !217
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !299
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !300
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !301
  %i.jn = load ptr, ptr %i.hz, align 8, !tbaa !252
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !302
  invoke void @_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb(ptr noundef %i.ir, ptr noundef nonnull align 8 dereferenceable(40) %i.is, i64 noundef %i.iu, ptr noundef %i.ix, i1 noundef zeroext true, ptr noundef %i.iy, ptr noundef nonnull align 8 dereferenceable(768) %i.iz, ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef nonnull align 1 %i.ja, ptr noundef %i.jc, ptr noundef %i.jd, ptr noundef %i.je, ptr noundef nonnull %2, ptr noundef %i.jg, ptr noundef %i.ji, ptr noundef %i.jk, ptr noundef %i.jm, ptr noundef %i.jn, ptr noundef %i.jp, ptr noundef null, i1 noundef zeroext false)
          to label %bb.dw unwind label %bb.du

bb.dr:                                            ; preds = %bb.df
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.ds:                                            ; preds = %bb.dg
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.le

bb.dt:                                            ; preds = %bb.dj, %bb.di, %bb.dh
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %bb.ld

bb.du:                                            ; preds = %bb.dv, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %bb.dk
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.dv:                                            ; preds = %bb.do
  store ptr %i.io, ptr %i.ip, align 8, !tbaa !296
  %i.ju = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !299
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !300
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !217
  %i.kb = load ptr, ptr %i.hz, align 8, !tbaa !252
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !301
  invoke void @_ZN3gmx25mdAlgorithmsSetupAtomDataEPK12gmx_domdec_tRK10t_inputrecRK10gmx_mtop_tP14gmx_localtop_tP10t_forcerecPNS_12ForceBuffersEPNS_7MDAtomsEPNS_11ConstraintsEPNS_19VirtualSitesHandlerEP13gmx_shellfc_t(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef nonnull align 8 dereferenceable(768) %i.ju, ptr noundef %i.jw, ptr noundef %i.jy, ptr noundef nonnull %2, ptr noundef %i.ka, ptr noundef %i.kb, ptr noundef %i.kd, ptr noundef %i.ik)
          to label %bb.dw unwind label %bb.du

bb.dw:                                            ; preds = %bb.dv, %bb.dq
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !217
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !219 ; 10 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 13 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !300
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 504
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !304
  invoke void @_ZN24CpuPpLongRangeNonbondeds20updateAfterPartitionERK9t_mdatoms(ptr noundef nonnull align 8 dereferenceable(216) %i.kk, ptr noundef nonnull align 8 dereferenceable(648) %i.kg)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 11 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !296
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 28
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !305
  invoke void @_Z14update_mdatomsP9t_mdatomsf(ptr noundef nonnull %i.kg, float noundef %i.ko)
          to label %bb.dy unwind label %bb.ea

bb.dy:                                            ; preds = %bb.dx
  %i.kp = load i32, ptr %i.ba, align 4, !tbaa !216
  %.not195 = icmp eq i32 %i.kp, 0
  br i1 %.not195, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.kq = load ptr, ptr %i.gg, align 8, !tbaa !283
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !313
  %.not196 = icmp ne i32 %i.kr, 0
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dx, %bb.dw
  %i.ks = landingpad { ptr, i32 }
          cleanup
  br label %bb.lc

bb.eb:                                            ; preds = %bb.dz, %bb.dy
  %.0185 = phi i1 [ false, %bb.dy ], [ %.not196, %bb.dz ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.kt = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !297 ; 2 uses
  store i64 %i.ku, ptr %i.h, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  store i8 0, ptr %i.i, align 1, !tbaa !104
  %i.kv = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !90, !nonnull !91, !align !92
  %i.ky = load ptr, ptr %i.kh, align 8, !tbaa !300
  %i.kz = load ptr, ptr %i.gs, align 8, !tbaa !287
  %i.la = load ptr, ptr %i.kl, align 8, !tbaa !296 ; 5 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 416
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !315 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 440
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !316
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.lc to i64
  %i.lh = sub i64 %i.lf, %i.lg
  %i.li = getelementptr inbounds i8, ptr %i.lc, i64 %i.lh
  store ptr %i.lc, ptr %20, align 8
  %i.lj = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %i.li, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.la, i64 456
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !315 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.la, i64 480
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !316
  %i.lo = ptrtoint ptr %i.ln to i64
  %i.lp = ptrtoint ptr %i.ll to i64
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = getelementptr inbounds i8, ptr %i.ll, i64 %i.lq
  store ptr %i.ll, ptr %21, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.lr, ptr %i.ls, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %i.la, i64 52 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !302
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !317
  invoke void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef %i.hw, ptr noundef nonnull align 8 dereferenceable(24) %i.kx, ptr noundef nonnull %i.u, ptr noundef %i.ky, ptr noundef %i.kz, ptr noundef nonnull byval(%"class.gmx::ArrayRef.497") align 8 %20, ptr noundef nonnull byval(%"class.gmx::ArrayRef.497") align 8 %21, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.kg, ptr noundef %i.lv, ptr noundef null, ptr noundef null, ptr noundef %i.lx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %4, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.i, i32 noundef 16, i64 noundef %i.ku, ptr noundef nonnull %16)
          to label %bb.ec unwind label %bb.eh

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZN3gmx18ObservablesReducer19markAsReadyToReduceEv(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ed unwind label %bb.eh

bb.ed:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br i1 %i.s, label %bb.ee, label %bb.ek

bb.ee:                                            ; preds = %bb.ed
  %i.ly = load ptr, ptr @stderr, align 8, !tbaa !318
  %i.lz = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !370
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !21
  %i.mc = load i32, ptr %i.ci, align 8, !tbaa !261
  %i.md = load ptr, ptr %i.ck, align 8, !tbaa !262
  %i.me = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.20, i32 noundef %i.mc, ptr noundef %i.md)
          to label %bb.ef unwind label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.mf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ly, ptr noundef nonnull @.str.24, ptr noundef %i.mb, ptr noundef %i.me) #23 ; 0 uses
  %i.mg = load ptr, ptr %i.hc, align 8, !tbaa !289, !nonnull !91, !align !92
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 48
  %i.mi = load i8, ptr %i.mh, align 8, !tbaa !376, !range !254, !noundef !91
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !318
  %fwrite = call i64 @fwrite(ptr nonnull @.str.25, i64 139, i64 1, ptr %i.mk) #24 ; 0 uses
  br label %bb.ej

bb.eh:                                            ; preds = %bb.ec, %bb.eb
  %i.ml = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br label %bb.lb

bb.ei:                                            ; preds = %bb.em, %bb.gb, %bb.fz, %bb.fo, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit, %bb.ek, %bb.ee
end_hunk_0
begin_hunk_1_@_ZN3gmx15LegacySimulator8do_rerunEv:bb.a

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.yn, %.lr.ph.i.i.i.i.i.i ], [ %i.yk, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.ym, %.lr.ph.i.i.i.i.i.i ], [ %i.yj, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.07.i.i.i.i.i.i = phi ptr [ %i.yl, %.lr.ph.i.i.i.i.i.i ], [ %i.yb, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.08.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.05.07.i.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !641
  %i.yl = getelementptr inbounds nuw i8, ptr %.sroa.05.07.i.i.i.i.i.i, i64 12
  %i.ym = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 12
  %i.yn = add nsw i64 %.09.i.i.i.i.i.i, -1
  %i.yo = icmp samesign ugt i64 %.09.i.i.i.i.i.i, 1
  br i1 %i.yo, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES4_ET0_T_S6_S5_.exit.i, !llvm.loop !35

_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES4_ET0_T_S6_S5_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.thread364
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xy, i64 52 ; 2 uses
  %i.yq = load float, ptr %i.tb, align 4, !tbaa !305
  store float %i.yq, ptr %i.yp, align 4, !tbaa !305
  %i.yr = load float, ptr %i.tc, align 8, !tbaa !305
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xy, i64 56
  store float %i.yr, ptr %i.ys, align 8, !tbaa !305
  %i.yt = load float, ptr %i.td, align 4, !tbaa !305
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xy, i64 60
  store float %i.yt, ptr %i.yu, align 4, !tbaa !305
  %i.yv = getelementptr inbounds nuw i8, ptr %i.xy, i64 64
  %i.yw = load float, ptr %i.te, align 8, !tbaa !305
  store float %i.yw, ptr %i.yv, align 8, !tbaa !305
  %i.yx = load float, ptr %i.tf, align 4, !tbaa !305
  %i.yy = getelementptr inbounds nuw i8, ptr %i.xy, i64 68
  store float %i.yx, ptr %i.yy, align 4, !tbaa !305
  %i.yz = load float, ptr %i.tg, align 8, !tbaa !305
  %i.za = getelementptr inbounds nuw i8, ptr %i.xy, i64 72
  store float %i.yz, ptr %i.za, align 8, !tbaa !305
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xy, i64 76
  %i.zc = load float, ptr %i.th, align 4, !tbaa !305
  store float %i.zc, ptr %i.zb, align 4, !tbaa !305
  %i.zd = load float, ptr %i.ti, align 8, !tbaa !305
  %i.ze = getelementptr inbounds nuw i8, ptr %i.xy, i64 80
  store float %i.zd, ptr %i.ze, align 8, !tbaa !305
  %i.zf = load float, ptr %i.tj, align 4, !tbaa !305
  %i.zg = getelementptr inbounds nuw i8, ptr %i.xy, i64 84
  store float %i.zf, ptr %i.zg, align 4, !tbaa !305
  br i1 %i.xx, label %bb.hh, label %_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit

bb.hh:                                            ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES4_ET0_T_S6_S5_.exit.i
  %i.zh = load ptr, ptr %i.xz, align 8, !tbaa !315 ; 3 uses
  %i.zi = load ptr, ptr %i.ya, align 8, !tbaa !316
  %i.zj = ptrtoint ptr %i.zi to i64
  %i.zk = ptrtoint ptr %i.zh to i64
  %i.zl = sub i64 %i.zj, %i.zk
  %i.zm = getelementptr inbounds i8, ptr %i.zh, i64 %i.zl
  %i.zn = getelementptr inbounds nuw i8, ptr %i.xy, i64 456
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !315 ; 3 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.xy, i64 480
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !316
  %i.zr = ptrtoint ptr %i.zq to i64
  %i.zs = ptrtoint ptr %i.zo to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = getelementptr inbounds i8, ptr %i.zo, i64 %i.zt
  invoke void @_ZNK3gmx19VirtualSitesHandler9constructENS_8ArrayRefINS_11BasicVectorIfEEEES4_PA3_KfNS_14VSiteOperationE(ptr noundef nonnull align 8 dereferenceable(8) %i.xn, ptr %i.zh, ptr %i.zm, ptr %i.zo, ptr %i.zu, ptr noundef nonnull %i.yp, i32 noundef 2)
          to label %_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit unwind label %bb.hd

_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit: ; preds = %_ZSt4copyIN3gmx12ArrayRefIterINS0_11BasicVectorIfEEEES4_ET0_T_S6_S5_.exit.i, %bb.hh, %bb.gw
  %i.zv = load i8, ptr %i.a, align 1, !tbaa !104, !range !254, !noundef !91
  %i.zw = trunc nuw i8 %i.zv to i1
  br i1 %i.zw, label %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit, label %bb.hi

bb.hi:                                            ; preds = %_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit
  %i.zx = load ptr, ptr %28, align 8, !tbaa !25   ; 2 uses
  %i.zy = load i64, ptr %i.h, align 8, !tbaa !20
  %i.zz = load ptr, ptr %i.zx, align 8, !tbaa !647, !nonnull !91
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 1
  %i.aab = load i8, ptr %i.aaa, align 1, !tbaa !648
  %.0.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8 %i.aab, i8 0)
  switch i32 %.0.i.i, label %_ZN3gmx11StopHandler18isSuitableStopStepEli.exit.fold.split.i [
    i32 -1, label %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit
    i32 1, label %bb.hj
  ]

bb.hj:                                            ; preds = %bb.hi
  %i.aac = getelementptr inbounds nuw i8, ptr %i.zx, i64 32
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !649 ; 2 uses
  %i.aae = icmp eq i32 %i.aad, 0
  br i1 %i.aae, label %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.aaf = sext i32 %i.aad to i64
  %i.aag = srem i64 %i.zy, %i.aaf
  %i.aah = icmp eq i64 %i.aag, 0
  %i.aai = zext i1 %i.aah to i8
  br label %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit

_ZN3gmx11StopHandler18isSuitableStopStepEli.exit.fold.split.i: ; preds = %bb.hi
  br label %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit

_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit: ; preds = %_ZN3gmx11StopHandler18isSuitableStopStepEli.exit.fold.split.i, %bb.hk, %bb.hj, %bb.hi, %_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit
  %i.aaj = phi i8 [ 1, %_ZL17prepareRerunStateRK10t_trxframeP7t_statebPKN3gmx19VirtualSitesHandlerE.exit ], [ 1, %bb.hi ], [ %i.aai, %bb.hk ], [ 1, %bb.hj ], [ 0, %_ZN3gmx11StopHandler18isSuitableStopStepEli.exit.fold.split.i ]
  store i8 %i.aaj, ptr %i.a, align 1, !tbaa !104
  %i.aak = load ptr, ptr %i.m, align 8, !tbaa !86
  %i.aal = getelementptr i8, ptr %i.aak, i64 16
  %.val276 = load ptr, ptr %i.aal, align 8, !tbaa !107 ; 2 uses
  %.not373 = icmp eq ptr %.val276, null
  br i1 %.not373, label %bb.hn, label %bb.hl

bb.hl:                                            ; preds = %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit
  %i.aam = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.aan = load ptr, ptr %i.ab, align 8, !tbaa !110, !nonnull !91, !align !92
  %i.aao = load i64, ptr %i.h, align 8, !tbaa !20
  %i.aap = load ptr, ptr %i.sy, align 8, !tbaa !281
  %i.aaq = load ptr, ptr %i.fa, align 8, !tbaa !276, !nonnull !91, !align !92
  %i.aar = load ptr, ptr %i.hh, align 8, !tbaa !291
  %i.aas = load ptr, ptr %i.tk, align 8, !tbaa !298
  %i.aat = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.aau = load ptr, ptr %i.kl, align 8, !tbaa !296
  %i.aav = load ptr, ptr %i.ke, align 8, !tbaa !217
  %i.aaw = load ptr, ptr %i.tl, align 8, !tbaa !299
  %i.aax = load ptr, ptr %i.kh, align 8, !tbaa !300
  %i.aay = load ptr, ptr %i.sz, align 8, !tbaa !301
  %i.aaz = load ptr, ptr %i.hz, align 8, !tbaa !252
  %i.aba = load ptr, ptr %i.lu, align 8, !tbaa !302
  %i.abb = load ptr, ptr %i.hm, align 8, !tbaa !293
  %i.abc = load ptr, ptr %i.hc, align 8, !tbaa !289, !nonnull !91, !align !92
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 48
  %i.abe = load i8, ptr %i.abd, align 8, !tbaa !376, !range !254, !noundef !91
  %i.abf = trunc nuw i8 %i.abe to i1
  invoke void @_ZN3gmx19dd_partition_systemEP8_IO_FILERKNS_8MDLoggerElP12gmx_domdec_tbP7t_stateRK10gmx_mtop_tRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_10ImdSessionEP6pull_tS8_PNS_12ForceBuffersEPNS_7MDAtomsEP14gmx_localtop_tP10t_forcerecPNS_19VirtualSitesHandlerEPNS_11ConstraintsEP6t_nrnbP13gmx_wallcycleb(ptr noundef %i.aam, ptr noundef nonnull align 8 dereferenceable(40) %i.aan, i64 noundef %i.aao, ptr noundef nonnull %.val276, i1 noundef zeroext true, ptr noundef %i.aap, ptr noundef nonnull align 8 dereferenceable(768) %i.aaq, ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef nonnull align 1 %i.aar, ptr noundef %i.aas, ptr noundef %i.aat, ptr noundef %i.aau, ptr noundef nonnull %2, ptr noundef %i.aav, ptr noundef %i.aaw, ptr noundef %i.aax, ptr noundef %i.aay, ptr noundef %i.aaz, ptr noundef %i.aba, ptr noundef %i.abb, i1 noundef zeroext %i.abf)
          to label %bb.hn unwind label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.abg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.hn:                                            ; preds = %bb.hl, %_ZNK3gmx11StopHandler24stoppingAfterCurrentStepEl.exit
  br i1 %i.s, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn
  %i.abh = load ptr, ptr %i.l, align 8, !tbaa !282
  %i.abi = load i64, ptr %i.h, align 8, !tbaa !20
  invoke void @_ZN3gmx12EnergyOutput11printHeaderEP8_IO_FILEld(ptr noundef %i.abh, i64 noundef %i.abi, double noundef %.0136)
          to label %bb.hp unwind label %.loopexit376

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %i.abj = load i32, ptr %i.ba, align 4, !tbaa !216
  %.not213 = icmp eq i32 %i.abj, 0
  br i1 %.not213, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.abk = load ptr, ptr %i.kl, align 8, !tbaa !296
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 28
  %i.abm = load float, ptr %i.abl, align 4, !tbaa !305
  invoke void @_Z14update_mdatomsP9t_mdatomsf(ptr noundef nonnull %i.kg, float noundef %i.abm)
          to label %bb.hr unwind label %.loopexit376

bb.hr:                                            ; preds = %bb.hq, %bb.hp
  %i.abn = load ptr, ptr %i.kh, align 8, !tbaa !300
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 504
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !304
  invoke void @_ZN24CpuPpLongRangeNonbondeds20updateAfterPartitionERK9t_mdatoms(ptr noundef nonnull align 8 dereferenceable(216) %i.abp, ptr noundef nonnull align 8 dereferenceable(648) %i.kg)
          to label %bb.hs unwind label %.loopexit376

bb.hs:                                            ; preds = %bb.hr
  %i.abq = load ptr, ptr %i.kh, align 8, !tbaa !300 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 496
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !650 ; 2 uses
  %.not374 = icmp eq ptr %i.abs, null
  br i1 %.not374, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.abt = load ptr, ptr %i.tl, align 8, !tbaa !299
  invoke void @_ZN3gmx15ListedForcesGpu22updateHaveInteractionsERK22InteractionDefinitions(ptr noundef nonnull align 8 dereferenceable(8) %i.abs, ptr noundef nonnull align 8 dereferenceable(2760) %i.abt)
          to label %._crit_edge unwind label %.loopexit.split-lp.loopexit

._crit_edge:                                      ; preds = %bb.ht
  %.pre451 = load ptr, ptr %i.kh, align 8, !tbaa !300
  br label %bb.hu

.loopexit:                                        ; preds = %_ZNKSt8functionIFN3gmx10StopSignalEvEEclEv.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ka, %bb.kl, %bb.ki, %bb.jy, %bb.jv, %bb.jo, %bb.jk, %_Z11do_per_stepll.exit.thread, %bb.hx, %bb.ht
  %lpad.loopexit381 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.lr.ph.i.preheader._crit_edge
  %lpad.loopexit.split-lp382 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.hu:                                            ; preds = %._crit_edge, %bb.hs
  %i.abu = phi ptr [ %.pre451, %._crit_edge ], [ %i.abq, %bb.hs ]
  %i.abv = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.abw = load ptr, ptr %i.ii, align 8, !tbaa !295
  %i.abx = invoke { i64, i16 } @_ZN3gmx27setupDomainLifetimeWorkloadERK10t_inputrecRK10t_forcerecPK6pull_tPK9gmx_edsamRK9t_mdatomsRKNS_18SimulationWorkloadE(ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef nonnull align 8 dereferenceable(584) %i.abu, ptr noundef %i.abv, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(648) %i.kg, ptr noundef nonnull align 1 dereferenceable(29) %i.abw)
          to label %bb.hv unwind label %bb.hy     ; 2 uses

bb.hv:                                            ; preds = %bb.hu
  %.fca.0.extract = extractvalue { i64, i16 } %i.abx, 0
  %.fca.1.extract = extractvalue { i64, i16 } %i.abx, 1
  %i.aby = load ptr, ptr %i.ii, align 8, !tbaa !295 ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 29
  store i64 %.fca.0.extract, ptr %i.abz, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aby, i64 37
  store i16 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %i.aca = load ptr, ptr %i.tn, align 8, !tbaa !651 ; 3 uses
  %i.acb = load ptr, ptr %i.to, align 8, !tbaa !652
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = ptrtoint ptr %i.aca to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aca, i64 %i.ace
  %i.acg = load i64, ptr %i.h, align 8, !tbaa !20
  %47 = load ptr, ptr %i.ii, align 8, !tbaa !295  ; 2 uses
  %48 = getelementptr inbounds nuw i8, ptr %47, i64 29
  invoke void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::StepWorkload") align 1 %32, i32 noundef %i.tm, ptr %i.aca, ptr %i.acf, i64 noundef %i.acg, ptr noundef nonnull align 1 dereferenceable(10) %48, ptr noundef nonnull align 1 dereferenceable(29) %47)
          to label %bb.hw unwind label %bb.hz

bb.hw:                                            ; preds = %bb.hv
  %i.ach = load ptr, ptr %i.ii, align 8, !tbaa !295
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.aci, ptr noundef nonnull align 1 dereferenceable(19) %32, i64 19, i1 false), !tbaa.struct !653
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  %i.acj = load ptr, ptr %i.l, align 8, !tbaa !282 ; 2 uses
  %i.ack = load ptr, ptr %i.m, align 8, !tbaa !86 ; 2 uses
  br i1 %.not214, label %bb.ia, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.acl = load ptr, ptr %i.hc, align 8, !tbaa !289, !nonnull !91, !align !92
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 48
  %i.acn = load i8, ptr %i.acm, align 8, !tbaa !376, !range !254, !noundef !91
  %i.aco = trunc nuw i8 %i.acn to i1
  %i.acp = load ptr, ptr %i.tp, align 8, !tbaa !654
  %i.acq = load i64, ptr %i.h, align 8, !tbaa !20
  %i.acr = load ptr, ptr %i.hh, align 8, !tbaa !291
  %i.acs = load ptr, ptr %i.tk, align 8, !tbaa !298
  %i.act = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.acu = load ptr, ptr %i.tl, align 8, !tbaa !299
  %i.acv = load ptr, ptr %i.hz, align 8, !tbaa !252
  %i.acw = load ptr, ptr %i.lw, align 8, !tbaa !317
  %i.acx = load ptr, ptr %i.kl, align 8, !tbaa !296 ; 10 uses
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !640
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acx, i64 416
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !315, !noalias !655 ; 4 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acx, i64 440
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !316, !noalias !655
  %i.add = ptrtoint ptr %i.adc to i64
  %i.ade = ptrtoint ptr %i.ada to i64             ; 2 uses
  %i.adf = sub i64 %i.add, %i.ade
  %i.adg = getelementptr inbounds i8, ptr %i.ada, i64 %i.adf
  %i.adh = getelementptr inbounds nuw i8, ptr %i.acx, i64 424
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !656, !noalias !655
  %i.adj = ptrtoint ptr %i.adi to i64
  %i.adk = sub i64 %i.adj, %i.ade
  %i.adl = getelementptr inbounds i8, ptr %i.ada, i64 %i.adk
  store ptr %i.ada, ptr %33, align 8, !tbaa !658, !alias.scope !655
  store ptr %i.adg, ptr %i.tq, align 8, !tbaa !659, !alias.scope !655
  store ptr %i.adl, ptr %i.tr, align 8, !tbaa !660, !alias.scope !655
  call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.adm = getelementptr inbounds nuw i8, ptr %i.acx, i64 456
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !315, !noalias !661 ; 4 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acx, i64 480
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !316, !noalias !661
  %i.adq = ptrtoint ptr %i.adp to i64
  %i.adr = ptrtoint ptr %i.adn to i64             ; 2 uses
  %i.ads = sub i64 %i.adq, %i.adr
  %i.adt = getelementptr inbounds i8, ptr %i.adn, i64 %i.ads
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acx, i64 464
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !656, !noalias !661
  %i.adw = ptrtoint ptr %i.adv to i64
  %i.adx = sub i64 %i.adw, %i.adr
  %i.ady = getelementptr inbounds i8, ptr %i.adn, i64 %i.adx
  store ptr %i.adn, ptr %34, align 8, !tbaa !658, !alias.scope !661
  store ptr %i.adt, ptr %i.ts, align 8, !tbaa !659, !alias.scope !661
  store ptr %i.ady, ptr %i.tt, align 8, !tbaa !660, !alias.scope !661
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acx, i64 24
  store ptr %i.adz, ptr %35, align 8, !tbaa !288
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acx, i64 52 ; 2 uses
  store ptr %i.aea, ptr %i.tu, align 8, !tbaa !288
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.acx, i64 688
  %i.aec = load ptr, ptr %i.kh, align 8, !tbaa !300 ; 2 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 504
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !304
  %i.aef = load ptr, ptr %i.lu, align 8, !tbaa !302
  %i.aeg = load ptr, ptr %i.hm, align 8, !tbaa !293
  %i.aeh = load ptr, ptr %i.ii, align 8, !tbaa !295
  %i.aei = load ptr, ptr %i.sz, align 8, !tbaa !301
  invoke void @_Z19relax_shell_flexconP8_IO_FILEPK9t_commrecbP10gmx_enfrotlPK10t_inputrecRKN3gmx18MDModulesNotifiersEPNS9_10ImdSessionEP6pull_tbPK14gmx_localtop_tPNS9_11ConstraintsEP14gmx_enerdata_tiNS9_19ArrayRefWithPaddingINS9_11BasicVectorIfEEEESR_PA3_KfNS9_8ArrayRefIfEEPK9history_tPNS9_16ForceBuffersViewEPA3_fRK9t_mdatomsP24CpuPpLongRangeNonbondedsP6t_nrnbP13gmx_wallcycleP13gmx_shellfc_tP10t_forcerecRKNS9_21MdrunScheduleWorkloadEdPfPNS9_19VirtualSitesHandlerERK22DDBalanceRegionHandler(ptr noundef %i.acj, ptr noundef %i.ack, i1 noundef zeroext %i.aco, ptr noundef %i.acp, i64 noundef %i.acq, ptr noundef nonnull %i.u, ptr noundef nonnull align 1 %i.acr, ptr noundef %i.acs, ptr noundef %i.act, i1 noundef zeroext true, ptr noundef %i.acu, ptr noundef %i.acv, ptr noundef %i.acw, i32 noundef %i.acy, ptr noundef nonnull align 8 dead_on_return %33, ptr noundef nonnull align 8 dead_on_return %34, ptr noundef nonnull %i.aea, ptr noundef nonnull byval(%"class.gmx::ArrayRef") align 8 %35, ptr noundef nonnull %i.aeb, ptr noundef nonnull %i.tv, ptr noundef nonnull %i.b, ptr noundef nonnull align 8 dereferenceable(648) %i.kg, ptr noundef %i.aee, ptr noundef %i.aef, ptr noundef %i.aeg, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.aec, ptr noundef nonnull align 1 dereferenceable(58) %i.aeh, double noundef %.0136, ptr noundef nonnull %i.g, ptr noundef %i.aei, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ii unwind label %.loopexit.split-lp.loopexit

bb.hy:                                            ; preds = %bb.hu
  %i.aej = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.hz:                                            ; preds = %bb.hv
  %i.aek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %.loopexit.split-lp

bb.ia:                                            ; preds = %bb.hw
  %i.ael = load ptr, ptr %i.hh, align 8, !tbaa !291
  %i.aem = load ptr, ptr %i.tp, align 8, !tbaa !654
  %i.aen = load ptr, ptr %i.tk, align 8, !tbaa !298
  %i.aeo = load ptr, ptr %i.hs, align 8, !tbaa !294
  %i.aep = load i64, ptr %i.h, align 8, !tbaa !20
  %i.aeq = load ptr, ptr %i.lu, align 8, !tbaa !302
  %i.aer = load ptr, ptr %i.hm, align 8, !tbaa !293
  %i.aes = load ptr, ptr %i.tl, align 8, !tbaa !299
  %i.aet = load ptr, ptr %i.kl, align 8, !tbaa !296 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aet, i64 416
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !315, !noalias !662 ; 4 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 440
  %i.aex = load ptr, ptr %i.aew, align 8, !tbaa !316, !noalias !662
  %i.aey = ptrtoint ptr %i.aex to i64
  %i.aez = ptrtoint ptr %i.aev to i64             ; 2 uses
  %i.afa = sub i64 %i.aey, %i.aez
  %i.afb = getelementptr inbounds i8, ptr %i.aev, i64 %i.afa
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aet, i64 424
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !656, !noalias !662
  %i.afe = ptrtoint ptr %i.afd to i64
  %i.aff = sub i64 %i.afe, %i.aez
  %i.afg = getelementptr inbounds i8, ptr %i.aev, i64 %i.aff
  store ptr %i.aev, ptr %36, align 8, !tbaa !658, !alias.scope !662
  store ptr %i.afb, ptr %i.tw, align 8, !tbaa !659, !alias.scope !662
  store ptr %i.afg, ptr %i.tx, align 8, !tbaa !660, !alias.scope !662
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aet, i64 52 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aet, i64 688
  %i.afj = load ptr, ptr %i.lw, align 8, !tbaa !317
  %i.afk = getelementptr inbounds nuw i8, ptr %i.aet, i64 24
  store ptr %i.afk, ptr %38, align 8, !tbaa !664
  store ptr %i.afh, ptr %i.ty, align 8, !tbaa !664
  %i.afl = load ptr, ptr %i.kh, align 8, !tbaa !300 ; 2 uses
  %i.afm = load ptr, ptr %i.ii, align 8, !tbaa !295
  %i.afn = load ptr, ptr %i.sz, align 8, !tbaa !301
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afl, i64 504
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !304
  invoke void @_ZN3gmx8do_forceEP8_IO_FILEPK9t_commrecRK10t_inputrecRKNS_18MDModulesNotifiersEPNS_3AwhEP10gmx_enfrotPNS_10ImdSessionEP6pull_tlP6t_nrnbP13gmx_wallcyclePK14gmx_localtop_tPA3_KfNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEENS_8ArrayRefISV_EEPK9history_tPNS_16ForceBuffersViewEPA3_fPK9t_mdatomsP14gmx_enerdata_tNSX_ISQ_EEP10t_forcerecRKNS_21MdrunScheduleWorkloadEPNS_19VirtualSitesHandlerEPfdP9gmx_edsamP24CpuPpLongRangeNonbondedsRK22DDBalanceRegionHandler(ptr noundef %i.acj, ptr noundef %i.ack, ptr noundef nonnull align 8 dereferenceable(888) %i.u, ptr noundef nonnull align 1 %i.ael, ptr noundef null, ptr noundef %i.aem, ptr noundef %i.aen, ptr noundef %i.aeo, i64 noundef %i.aep, ptr noundef %i.aeq, ptr noundef %i.aer, ptr noundef %i.aes, ptr noundef nonnull %i.afh, ptr noundef nonnull align 8 dead_on_return %36, ptr noundef nonnull byval(%"class.gmx::ArrayRef.500") align 8 %37, ptr noundef nonnull %i.afi, ptr noundef nonnull %i.tv, ptr noundef nonnull %i.b, ptr noundef nonnull %i.kg, ptr noundef %i.afj, ptr noundef nonnull byval(%"class.gmx::ArrayRef.347") align 8 %38, ptr noundef nonnull %i.afl, ptr noundef nonnull align 1 dereferenceable(58) %i.afm, ptr noundef %i.afn, ptr noundef nonnull %i.g, double noundef %.0136, ptr noundef null, ptr noundef %i.afp, ptr noundef nonnull align 8 dereferenceable(16) %29)
          to label %bb.ii unwind label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  %i.afq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN3gmx13InternalErrorE    ; 3 uses
  %i.afr = extractvalue { ptr, i32 } %i.afq, 1
  %i.afs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN3gmx13InternalErrorE) #19
  %i.aft = icmp eq i32 %i.afr, %i.afs
  br i1 %i.aft, label %bb.ic, label %.loopexit.split-lp

bb.ic:                                            ; preds = %bb.ib
  %i.afu = extractvalue { ptr, i32 } %i.afq, 0
  %i.afv = call ptr @__cxa_begin_catch(ptr %i.afu) #19 ; 0 uses
  %i.afw = load ptr, ptr %i.ab, align 8, !tbaa !110, !nonnull !91, !align !92
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !113 ; 3 uses
  %i.afy = icmp eq ptr %i.afx, null
  br i1 %i.afy, label %bb.ig, label %bb.id

bb.id:                                            ; preds = %bb.ic
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ux, i8 0, i64 24, i1 false)
  store ptr %i.tz, ptr %39, align 8, !tbaa !17
  store i64 0, ptr %i.ua, align 8, !tbaa !18
  store i8 1, ptr %i.ub, align 8, !tbaa !116
  %i.afz = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN3gmx14LogEntryWriter10appendTextEPKc(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull @.str.34)
          to label %bb.ie unwind label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.aga = load ptr, ptr %i.afx, align 8, !tbaa !118
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 16
  %i.agc = load ptr, ptr %i.agb, align 8
  invoke void %i.agc(ptr noundef nonnull align 8 dereferenceable(8) %i.afx, ptr noundef nonnull align 8 dereferenceable(40) %i.afz)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318 unwind label %bb.if, !inline_history !33

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318: ; preds = %bb.ie
  %i.agd = load ptr, ptr %39, align 8, !tbaa !15  ; 2 uses
  %i.age = icmp eq ptr %i.agd, %i.tz
  br i1 %i.age, label %_ZN3gmx14LogEntryWriterD2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318
  %i.agf = load i64, ptr %i.tz, align 8, !tbaa !16
  %i.agg = add i64 %i.agf, 1
  call void @_ZdlPvm(ptr noundef %i.agd, i64 noundef %i.agg) #18
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit321

_ZN3gmx14LogEntryWriterD2Ev.exit321:              ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  br label %bb.ig

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.agh = landingpad { ptr, i32 }
          cleanup
  %i.agi = load ptr, ptr %39, align 8, !tbaa !15  ; 2 uses
  %i.agj = icmp eq ptr %i.agi, %i.tz
  br i1 %i.agj, label %_ZN3gmx14LogEntryWriterD2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322: ; preds = %bb.if
  %i.agk = load i64, ptr %i.tz, align 8, !tbaa !16
  %i.agl = add i64 %i.agk, 1
  call void @_ZdlPvm(ptr noundef %i.agi, i64 noundef %i.agl) #18
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit324

_ZN3gmx14LogEntryWriterD2Ev.exit324:              ; preds = %bb.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  invoke void @__cxa_end_catch()
          to label %.loopexit.split-lp unwind label %bb.li

bb.ig:                                            ; preds = %bb.ic, %_ZN3gmx14LogEntryWriterD2Ev.exit321
  invoke void @__cxa_end_catch()
          to label %bb.ii unwind label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.agm = landingpad { ptr, i32 }
end_hunk_1
