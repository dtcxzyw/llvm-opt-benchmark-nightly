Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_vanhove?download=true
inline.NumInlined: 322
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_Z11gmx_vanhoveiPPc:bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 296
  store ptr @.str.51, ptr %i.ar, align 8, !tbaa !22
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 304
  store i64 12, ptr %i.as, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.au = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef 16608, i32 noundef 6, ptr noundef nonnull %6, i32 noundef 10, ptr noundef nonnull %5, i32 noundef 29, ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.e)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.au, label %bb.c, label %bb.ej

.loopexit552.split:                               ; preds = %.lr.ph636.split
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %bb.ax
  %lpad.loopexit561 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %._crit_edge, %bb.z, %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit, %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit, %bb.aj
  %lpad.loopexit564 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.a, %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.s, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit387, %_ZNSt10filesystem7__cxx114pathD2Ev.exit418, %._crit_edge670, %._crit_edge677, %bb.eg, %bb.eh, %bb.ei, %bb.ap, %bb.at, %bb.aw, %bb.ba, %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit, %bb.bd, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353, %._crit_edge660, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit358._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.b
  %i.av = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.46, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  store ptr %i.av, ptr %i.f, align 8, !tbaa !23
  %i.aw = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.40, i32 noundef 10, ptr noundef nonnull %5)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.48, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.e
  %i.ay = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.48, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge = phi ptr [ %i.ax, %bb.f ], [ %i.ay, %bb.g ]
  store ptr %storemerge, ptr %i.h, align 8, !tbaa !23
  %i.az = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.42, i32 noundef 10, ptr noundef nonnull %5)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.50, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.i
  %i.bb = invoke noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef nonnull @.str.50, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k, %bb.j
  %storemerge285 = phi ptr [ %i.ba, %bb.j ], [ %i.bb, %bb.k ] ; 2 uses
  store ptr %storemerge285, ptr %i.g, align 8, !tbaa !23
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.bd = icmp ne ptr %i.bc, null
  %i.be = icmp ne ptr %storemerge285, null
  %or.cond = or i1 %i.be, %i.bd
  %i.bf = load ptr, ptr %i.h, align 8
  %i.bg = icmp ne ptr %i.bf, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.bg
  br i1 %or.cond3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.bi = call i64 @fwrite(ptr nonnull @.str.52, i64 56, i64 1, ptr %i.bh) #22 ; 0 uses
  call void @exit(i32 noundef 0) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #21
  %i.bj = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 26, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.o unwind label %bb.aa

bb.o:                                             ; preds = %bb.n
  store ptr %i.bj, ptr %i.s, align 8, !tbaa !23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef zeroext 2)
          to label %bb.p unwind label %bb.aa

bb.p:                                             ; preds = %bb.o
  %i.bk = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %7, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l, ptr noundef null, ptr noundef nonnull %i.j, i1 noundef zeroext false)
          to label %bb.q unwind label %bb.ab      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.bm) #21
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.r, %bb.q
  %i.bn = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !31
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.bs = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 2344
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.bt, ptr noundef %i.bs, i32 noundef 1, ptr noundef nonnull %i.n, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %bb.s
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #21
  %i.bv = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 6, ptr noundef nonnull %6)
          to label %bb.u unwind label %bb.ad

bb.u:                                             ; preds = %bb.t
  store ptr %i.bv, ptr %i.t, align 8, !tbaa !23
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.t, i8 noundef zeroext 2)
          to label %bb.v unwind label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.bw = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.bu, ptr noundef nonnull %i.o, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %i.r, ptr noundef nonnull %i.m, ptr noundef nonnull %i.k)
          to label %bb.w unwind label %bb.ae      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 2 uses
  %.not.i.i.i338 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i338, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %i.by) #21
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339: ; preds = %bb.x, %bb.w
  %i.bz = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !31
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit342

_ZNSt10filesystem7__cxx114pathD2Ev.exit342:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i339, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  br label %bb.y

bb.y:                                             ; preds = %bb.ao, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342
  %.sroa.36.0 = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %27, %bb.ao ]
  %.sroa.41.0 = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %29, %bb.ao ]
  %.sroa.46.0 = phi float [ 0.000000e+00, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %i.dw, %bb.ao ]
  %indvars.iv755 = phi i32 [ 1, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %indvars.iv.next756, %bb.ao ] ; 2 uses
  %indvars.iv712 = phi i64 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %indvars.iv.next713, %bb.ao ] ; 7 uses
  %.0542 = phi ptr [ null, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %.1543, %bb.ao ] ; 2 uses
  %.0540 = phi ptr [ null, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %.1541, %bb.ao ] ; 2 uses
  %.0 = phi ptr [ null, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %.1, %bb.ao ] ; 2 uses
  %.0264 = phi i32 [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %.1265, %bb.ao ] ; 3 uses
  %i.cm = phi <2 x float> [ zeroinitializer, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %i.dt, %bb.ao ]
  %i.cn = phi <4 x float> [ zeroinitializer, %_ZNSt10filesystem7__cxx114pathD2Ev.exit342 ], [ %i.dv, %bb.ao ]
  %i.co = sext i32 %.0264 to i64
  %.not = icmp slt i64 %indvars.iv712, %i.co
  br i1 %.not, label %_ZL15gmx_srenew_implIPA3_fEvPKcS3_iRPT_m.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = add nsw i32 %.0264, 100                 ; 2 uses
  %i.cq = sext i32 %i.cp to i64                   ; 3 uses
  %i.cr = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 209, ptr noundef %.0542, i64 noundef range(i64 -2147483548, 2147483648) %i.cq, i64 noundef 4)
          to label %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit:        ; preds = %bb.z
  %i.cs = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef 210, ptr noundef %.0, i64 noundef range(i64 -2147483548, 2147483648) %i.cq, i64 noundef 36)
          to label %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit:  ; preds = %_ZL15gmx_srenew_implIfEvPKcS1_iRPT_m.exit
  %i.ct = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef 211, ptr noundef %.0540, i64 noundef range(i64 -2147483548, 2147483648) %i.cq, i64 noundef 8)
          to label %_ZL15gmx_srenew_implIPA3_fEvPKcS3_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aa:                                            ; preds = %bb.o, %bb.n
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %bb.p
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.ab ], [ %i.cu, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body

bb.ad:                                            ; preds = %bb.u, %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.v
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #21
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn287 = phi { ptr, i32 } [ %i.cx, %bb.ae ], [ %i.cw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  br label %.body

_ZL15gmx_srenew_implIPA3_fEvPKcS3_iRPT_m.exit:    ; preds = %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit, %bb.y
  %.1543 = phi ptr [ %.0542, %bb.y ], [ %i.cr, %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit ] ; 5 uses
  %.1541 = phi ptr [ %.0540, %bb.y ], [ %i.ct, %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit ] ; 7 uses
  %.1 = phi ptr [ %.0, %bb.y ], [ %i.cs, %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit ] ; 4 uses
  %.1265 = phi i32 [ %.0264, %bb.y ], [ %i.cp, %_ZL15gmx_srenew_implIA3_A3_fEvPKcS3_iRPT_m.exit ] ; 2 uses
  %.not289 = icmp eq ptr %.1543, null
  br i1 %.not289, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZL15gmx_srenew_implIPA3_fEvPKcS3_iRPT_m.exit
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_vanhoveiPPcENK3$_0clEv", ptr noundef nonnull @.str.54, i32 noundef 213) #25
          to label %.noexc unwind label %bb.al

.noexc:                                           ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %_ZL15gmx_srenew_implIPA3_fEvPKcS3_iRPT_m.exit
  %.not290 = icmp eq ptr %.1, null
  br i1 %.not290, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ11gmx_vanhoveiPPcENK3$_0clEv", ptr noundef nonnull @.str.54, i32 noundef 214) #25
          to label %.noexc343 unwind label %bb.am

.noexc343:                                        ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.cy = load float, ptr %i.r, align 4, !tbaa !34
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.1543, i64 %indvars.iv712
  store float %i.cy, ptr %i.cz, align 4, !tbaa !34
  %i.da = getelementptr inbounds nuw [36 x i8], ptr %.1, i64 %indvars.iv712 ; 9 uses
  %i.db = load float, ptr %i.k, align 16, !tbaa !34
  store float %i.db, ptr %i.da, align 4, !tbaa !34
  %i.dc = load float, ptr %i.ce, align 4, !tbaa !34
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  store float %i.dc, ptr %i.dd, align 4, !tbaa !34
  %i.de = load float, ptr %i.cf, align 8, !tbaa !34
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store float %i.de, ptr %i.df, align 4, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 12
  %i.dh = load float, ptr %i.cg, align 4, !tbaa !34
  store float %i.dh, ptr %i.dg, align 4, !tbaa !34
  %i.di = load float, ptr %i.ch, align 16, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store float %i.di, ptr %i.dj, align 4, !tbaa !34
  %i.dk = load float, ptr %i.ci, align 4, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  store float %i.dk, ptr %i.dl, align 4, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dn = load float, ptr %i.cj, align 8, !tbaa !34
  store float %i.dn, ptr %i.dm, align 4, !tbaa !34
  %i.do = load float, ptr %i.ck, align 4, !tbaa !34
  %i.dp = getelementptr inbounds nuw i8, ptr %i.da, i64 28
  store float %i.do, ptr %i.dp, align 4, !tbaa !34
  %i.dq = load float, ptr %i.cl, align 16, !tbaa !34 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store float %i.dq, ptr %i.dr, align 4, !tbaa !34
  %i.ds = load <2 x float>, ptr %i.k, align 16, !tbaa !34
  %i.dt = fadd <2 x float> %i.cm, %i.ds           ; 2 uses
  %i.du = load <4 x float>, ptr %i.cf, align 8, !tbaa !34
  %i.dv = fadd <4 x float> %i.cn, %i.du           ; 5 uses
  %26 = load float, ptr %i.cj, align 8, !tbaa !34
  %27 = fadd float %.sroa.36.0, %26               ; 2 uses
  %28 = load float, ptr %i.ck, align 4, !tbaa !34
  %29 = fadd float %.sroa.41.0, %28               ; 2 uses
  %i.dw = fadd float %.sroa.46.0, %i.dq           ; 2 uses
  %i.dx = load i32, ptr %i.n, align 4, !tbaa !9
  %i.dy = sext i32 %i.dx to i64
  %i.dz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.54, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.dy, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %bb.aj
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv712
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !36
  %i.eb = load i32, ptr %i.n, align 4, !tbaa !9   ; 3 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !36  ; 6 uses
  br i1 %i.ec, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.ed = load ptr, ptr %i.p, align 8, !tbaa !38  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.eb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ee = icmp ult i32 %i.eb, 4
  br i1 %i.ee, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.ak ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.ak ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !9
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv ; 3 uses
  %i.ek = load float, ptr %i.ei, align 4, !tbaa !34
  store float %i.ek, ptr %i.ej, align 4, !tbaa !34
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.em = load float, ptr %i.el, align 4, !tbaa !34
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store float %i.em, ptr %i.en, align 4, !tbaa !34
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !34
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store float %i.ep, ptr %i.eq, align 4, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next
  %i.es = load i32, ptr %i.er, align 4, !tbaa !9
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.et ; 3 uses
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv.next ; 3 uses
  %i.ew = load float, ptr %i.eu, align 4, !tbaa !34
  store float %i.ew, ptr %i.ev, align 4, !tbaa !34
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !34
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store float %i.ey, ptr %i.ez, align 4, !tbaa !34
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !34
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store float %i.fb, ptr %i.fc, align 4, !tbaa !34
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.1
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !9
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.ff ; 3 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv.next.1 ; 3 uses
  %i.fi = load float, ptr %i.fg, align 4, !tbaa !34
  store float %i.fi, ptr %i.fh, align 4, !tbaa !34
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !34
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store float %i.fk, ptr %i.fl, align 4, !tbaa !34
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !34
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store float %i.fn, ptr %i.fo, align 4, !tbaa !34
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.2
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !9
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.fr ; 3 uses
  %i.ft = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv.next.2 ; 3 uses
  %i.fu = load float, ptr %i.fs, align 4, !tbaa !34
  store float %i.fu, ptr %i.ft, align 4, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !34
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  store float %i.fw, ptr %i.fx, align 4, !tbaa !34
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !34
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store float %i.fz, ptr %i.ga, align 4, !tbaa !34
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.ak, !llvm.loop !40

bb.al:                                            ; preds = %bb.ag
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.am:                                            ; preds = %bb.ai
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %.body

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1190 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod1190)
  br label %bb.an

bb.an:                                            ; preds = %bb.an, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.an ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.an ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.epil
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !9
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds [12 x i8], ptr %.pre, i64 %i.gf ; 3 uses
  %i.gh = getelementptr inbounds nuw [12 x i8], ptr %i.dz, i64 %indvars.iv.epil ; 3 uses
  %i.gi = load float, ptr %i.gg, align 4, !tbaa !34
  store float %i.gi, ptr %i.gh, align 4, !tbaa !34
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !34
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store float %i.gk, ptr %i.gl, align 4, !tbaa !34
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !34
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store float %i.gn, ptr %i.go, align 4, !tbaa !34
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.an, !llvm.loop !42

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.an, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  %i.gp = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.gq = load ptr, ptr %i.o, align 8, !tbaa !44
  %i.gr = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.gp, ptr noundef %i.gq, ptr noundef nonnull %i.r, ptr noundef %.pre, ptr noundef nonnull %i.k)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ao:                                            ; preds = %._crit_edge
  %indvars.iv.next713 = add nuw nsw i64 %indvars.iv712, 1 ; 3 uses
  %indvars.iv.next756 = add nuw i32 %indvars.iv755, 1
  br i1 %i.gr, label %bb.y, label %bb.ap, !llvm.loop !46

bb.ap:                                            ; preds = %bb.ao
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.1543, i64 %indvars.iv712
  %i.gt = trunc nuw nsw i64 %indvars.iv712 to i32 ; 6 uses
  %i.gu = trunc nuw i64 %indvars.iv.next713 to i32 ; 6 uses
  %i.gv = load ptr, ptr %i.m, align 8, !tbaa !36
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.54, i32 noundef 232, ptr noundef %i.gv)
          to label %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit:        ; preds = %bb.ap
  %i.gw = load ptr, ptr %i.o, align 8, !tbaa !44
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.gw)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit
  %i.gx = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.gy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gx, ptr noundef nonnull @.str.59, i32 noundef %i.gu) #26 ; 0 uses
  %i.gz = load float, ptr %i.gs, align 4, !tbaa !34
  %i.ha = load float, ptr %.1543, align 4, !tbaa !34
  %i.hb = fsub float %i.gz, %i.ha
  %i.hc = uitofp nneg i32 %i.gt to float
  %i.hd = fdiv float %i.hb, %i.hc
  %i.he = fpext float %i.hd to double
  %i.hf = fmul double %i.he, 1.000000e+04
  %i.hg = call double @llvm.round.f64(double %i.hf)
  %i.hh = fdiv double %i.hg, 1.000000e+04
  %i.hi = fptrunc double %i.hh to float           ; 11 uses
  %i.hj = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !34
  %i.hk = fdiv float 1.000000e+00, %i.hj          ; 3 uses
  %i.hl = load ptr, ptr %i.f, align 8, !tbaa !23
  %.not291 = icmp eq ptr %i.hl, null
  br i1 %.not291, label %bb.ay, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hm = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9 ; 3 uses
  %i.hn = icmp slt i32 %i.hm, 1
  %.not292.not = icmp sgt i32 %i.hm, %i.gt
  %or.cond333 = or i1 %i.hn, %.not292.not
  br i1 %or.cond333, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 %i.gt, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.ho = phi i32 [ %i.hm, %bb.ar ], [ %i.gt, %bb.as ]
  %i.hp = sext i32 %i.ho to i64
  %i.hq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.54, i32 noundef 249, i64 noundef range(i64 -2147483648, 2147483648) %i.hp, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %bb.at
  %i.hr = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rmax, align 4, !tbaa !34
  %i.hs = fmul float %i.hk, %i.hr
  %i.ht = call float @llvm.rint.f32(float %i.hs)
  %i.hu = fptosi float %i.ht to i32               ; 3 uses
  %i.hv = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !34 ; 2 uses
  %i.hw = fcmp oeq float %i.hv, 0.000000e+00
  br i1 %i.hw, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.hx = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  %i.hy = add nsw i32 %i.hx, 1
  br label %bb.aw

bb.av:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.hz = fdiv float 1.000000e+00, %i.hv          ; 2 uses
  %i.ia = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  %i.ib = sitofp i32 %i.ia to float
  %i.ic = fmul float %i.hi, %i.ib
  %i.id = call noundef float @sqrtf(float noundef %i.ic) #21
  %i.ie = call float @llvm.fmuladd.f32(float %i.id, float %i.hz, float 1.000000e+00)
  %i.if = fptosi float %i.ie to i32
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0243 = phi i32 [ %i.hy, %bb.au ], [ %i.if, %bb.av ] ; 4 uses
  %.0234 = phi float [ 0.000000e+00, %bb.au ], [ %i.hz, %bb.av ]
  %i.ig = sext i32 %.0243 to i64
  %i.ih = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.54, i32 noundef 260, i64 noundef range(i64 -2147483648, 2147483648) %i.ig, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader: ; preds = %bb.aw
  %i.ii = icmp sgt i32 %.0243, 0
  br i1 %i.ii, label %.lr.ph607, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge

.lr.ph607:                                        ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader
  %i.ij = sext i32 %i.hu to i64
  %wide.trip.count718 = zext nneg i32 %.0243 to i64
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph607, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %indvars.iv715 = phi i64 [ 0, %.lr.ph607 ], [ %indvars.iv.next716, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ] ; 2 uses
  %i.ik = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.54, i32 noundef 263, i64 noundef range(i64 -2147483648, 2147483648) %i.ij, i64 noundef 4)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv715
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !36
  %indvars.iv.next716 = add nuw nsw i64 %indvars.iv715, 1 ; 2 uses
  %exitcond719.not = icmp eq i64 %indvars.iv.next716, %wide.trip.count718
  br i1 %exitcond719.not, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge, label %bb.ax, !llvm.loop !47

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.preheader
  %i.im = sitofp i32 %i.hu to float
  %i.in = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rbin, align 4, !tbaa !34
  %i.io = fmul float %i.in, %i.im                 ; 2 uses
  %i.ip = fmul float %i.io, %i.io
  %i.iq = load i32, ptr %i.n, align 4, !tbaa !9
  %i.ir = mul nsw i32 %i.iq, %i.gu
  %i.is = sitofp i32 %i.ir to float
  %i.it = load ptr, ptr %i.ih, align 8, !tbaa !36
  store float %i.is, ptr %i.it, align 4, !tbaa !34
  %i.iu = load i32, ptr %i.hq, align 4, !tbaa !9
  %i.iv = add nsw i32 %i.iu, %i.gu
  store i32 %i.iv, ptr %i.hq, align 4, !tbaa !9
  br label %bb.az

bb.ay:                                            ; preds = %bb.aq
  store i32 0, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge
  %.0549 = phi ptr [ null, %bb.ay ], [ %i.ih, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ] ; 4 uses
  %.0546 = phi ptr [ null, %bb.ay ], [ %i.hq, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ] ; 2 uses
  %.1244 = phi i32 [ 0, %bb.ay ], [ %.0243, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ] ; 8 uses
  %.0242 = phi i32 [ 0, %bb.ay ], [ %i.hu, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ] ; 7 uses
  %.0237 = phi float [ 0.000000e+00, %bb.ay ], [ %i.ip, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ]
  %.1235 = phi float [ 0.000000e+00, %bb.ay ], [ %.0234, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit._crit_edge ]
  %i.iw = load ptr, ptr %i.h, align 8, !tbaa !23
  %.not293 = icmp eq ptr %i.iw, null
  br i1 %.not293, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit351, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ix = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !9
  %i.iy = sext i32 %i.ix to i64
  %i.iz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.54, i32 noundef 277, i64 noundef range(i64 -2147483648, 2147483648) %i.iy, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit:         ; preds = %bb.ba
  %i.ja = load i32, ptr @_ZZ11gmx_vanhoveiPPcE2nr, align 4, !tbaa !9
  %i.jb = sext i32 %i.ja to i64
  %i.jc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.54, i32 noundef 279, i64 noundef range(i64 -2147483648, 2147483648) %i.jb, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit351 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit351:       ; preds = %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit, %bb.az
  %.0547 = phi ptr [ null, %bb.az ], [ %i.iz, %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit ] ; 4 uses
  %.0544 = phi ptr [ null, %bb.az ], [ %i.jc, %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit ] ; 2 uses
  %.2266 = phi i32 [ %.1265, %bb.az ], [ 0, %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit ]
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !23
  %.not294 = icmp eq ptr %i.jd, null
  br i1 %.not294, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit351
  %i.je = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9 ; 2 uses
  %i.jf = icmp slt i32 %i.je, 1
  br i1 %i.jf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 %i.gt, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.jg = phi i32 [ %i.gt, %bb.bc ], [ %i.je, %bb.bb ]
  %i.jh = sext i32 %i.jg to i64
  %i.ji = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.54, i32 noundef 288, i64 noundef range(i64 -2147483648, 2147483648) %i.jh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353:       ; preds = %bb.bd
  %i.jj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.54, i32 noundef 289, i64 noundef range(i64 -2147483648, 2147483648) %indvars.iv.next713, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355:       ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit353
  %i.jk = load float, ptr @_ZZ11gmx_vanhoveiPPcE4rint, align 4, !tbaa !34 ; 2 uses
  %i.jl = fmul float %i.jk, %i.jk
  %i.jm = load i32, ptr %i.n, align 4, !tbaa !9
  %i.jn = mul nsw i32 %i.jm, %i.gu
  store i32 %i.jn, ptr %i.jj, align 4, !tbaa !9
  %i.jo = load i32, ptr %i.ji, align 4, !tbaa !9
  %i.jp = add nsw i32 %i.jo, %i.gu
  store i32 %i.jp, ptr %i.ji, align 4, !tbaa !9
  br label %bb.bf

bb.be:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit351
  store i32 0, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355
  %.0548 = phi ptr [ null, %bb.be ], [ %i.jj, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ] ; 2 uses
  %.0545 = phi ptr [ null, %bb.be ], [ %i.ji, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ] ; 2 uses
  %.0236 = phi float [ 0.000000e+00, %bb.be ], [ %i.jl, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit355 ] ; 2 uses
  %i.jq = uitofp nneg i32 %i.gu to double
  %i.jr = fdiv double 1.000000e+00, %i.jq
  %i.js = fptrunc double %i.jr to float           ; 8 uses
  %i.jt = insertelement <2 x float> poison, float %i.js, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x float> %i.dt, %i.ju           ; 3 uses
  %i.jw = extractelement <4 x float> %i.dv, i64 0
  %i.jx = fmul float %i.jw, %i.js                 ; 2 uses
  %i.jy = extractelement <4 x float> %i.dv, i64 1
  %i.jz = fmul float %i.jy, %i.js                 ; 3 uses
  %i.ka = extractelement <4 x float> %i.dv, i64 2
  %i.kb = fmul float %i.ka, %i.js                 ; 5 uses
  %i.kc = extractelement <4 x float> %i.dv, i64 3
  %30 = fmul float %i.kc, %i.js                   ; 2 uses
  %i.kd = fmul float %27, %i.js                   ; 3 uses
  %31 = fmul float %29, %i.js                     ; 4 uses
  %i.ke = fmul float %i.dw, %i.js                 ; 6 uses
  %wide.trip.count760 = zext i32 %indvars.iv755 to i64
  %i.kf = fpext float %i.ke to double             ; 2 uses
  %i.kg = fmul double %i.kf, 5.000000e-01         ; 2 uses
  %i.kh = fmul double %i.kf, -5.000000e-01        ; 2 uses
  %i.ki = fpext float %i.kb to double             ; 2 uses
  %i.kj = fmul double %i.ki, 5.000000e-01         ; 2 uses
  %i.kk = fmul double %i.ki, -5.000000e-01        ; 2 uses
  %i.kl = extractelement <2 x float> %i.jv, i64 0 ; 3 uses
  %i.km = fpext float %i.kl to double             ; 2 uses
  %i.kn = fmul double %i.km, 5.000000e-01         ; 2 uses
  %i.ko = fmul double %i.km, -5.000000e-01        ; 2 uses
  %i.kp = extractelement <2 x float> %i.jv, i64 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.loopexit559
  %indvars.iv752 = phi i64 [ 0, %bb.bf ], [ %indvars.iv.next753, %.loopexit559 ] ; 10 uses
  %.3267648 = phi i32 [ %.2266, %bb.bf ], [ %.8272, %.loopexit559 ] ; 2 uses
  %i.kq = trunc nuw nsw i64 %indvars.iv752 to i32 ; 3 uses
  %i.kr = urem i32 %i.kq, 100
  %i.ks = icmp eq i32 %i.kr, 0
  br i1 %i.ks, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kt, ptr noundef nonnull @.str.67, i32 noundef %i.kq) #26 ; 0 uses
  %i.kv = load ptr, ptr @stderr, align 8, !tbaa !24
  %i.kw = call i32 @fflush(ptr noundef %i.kv)     ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.kx = load i32, ptr %i.i, align 4, !tbaa !48
  %.not322 = icmp eq i32 %i.kx, 1
  br i1 %.not322, label %.loopexit560, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ky = getelementptr inbounds nuw [36 x i8], ptr %.1, i64 %indvars.iv752 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !34 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.lb = load float, ptr %i.la, align 4, !tbaa !34 ; 2 uses
  %i.lc = fmul float %i.kz, %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.le = load float, ptr %i.ld, align 4, !tbaa !34 ; 2 uses
  %i.lf = fmul float %i.lc, %i.le
  %i.lg = call float @llvm.fabs.f32(float %i.lf)
  %i.lh = fcmp ugt float %i.lg, f0x03C80000
  br i1 %i.lh, label %bb.br, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.li = call ptr @__cxa_allocate_exception(i64 24) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull @.str.93)
          to label %bb.bl unwind label %.thread.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(56) %3)
          to label %bb.bm unwind label %.thread41.i

bb.bm:                                            ; preds = %bb.bl
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx10RangeErrorE, i64 16), ptr %2, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %4, align 8, !tbaa !50
  %i.lj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmxL15invertBoxMatrixEPA3_KfPA3_f, ptr %i.lj, align 8, !tbaa !23
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr @.str.94, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 211, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !9
  invoke void @_ZN3gmxlsINS_10RangeErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::RangeError") align 8 %i.li, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  invoke void @__cxa_throw(ptr %i.li, ptr nonnull @_ZTIN3gmx10RangeErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #25
          to label %bb.bq unwind label %bb.bo

.thread.i:                                        ; preds = %bb.bk
  %i.lk = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

.thread41.i:                                      ; preds = %bb.bl
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  br label %.sink.split.i

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.0.i = phi i1 [ false, %bb.bn ], [ true, %bb.bm ]
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %.0.i, label %bb.bp, label %.body

.sink.split.i:                                    ; preds = %.thread41.i, %.thread.i
  %.pn.pn40.ph.i = phi { ptr, i32 } [ %i.ll, %.thread41.i ], [ %i.lk, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split.i, %bb.bo
  %.pn.pn40.i = phi { ptr, i32 } [ %i.lm, %bb.bo ], [ %.pn.pn40.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.li) #21
  br label %.body

bb.bq:                                            ; preds = %bb.bn
  unreachable

bb.br:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ky, i64 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ky, i64 12
  %i.lp = fdiv float 1.000000e+00, %i.kz          ; 3 uses
  %i.lq = fdiv float 1.000000e+00, %i.lb          ; 4 uses
  %i.lr = fdiv float 1.000000e+00, %i.le          ; 3 uses
  %i.ls = load float, ptr %i.lo, align 4, !tbaa !34 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ky, i64 28
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !34 ; 2 uses
  %i.lv = fmul float %i.ls, %i.lu
  %i.lw = load float, ptr %i.ln, align 4, !tbaa !34
  %i.lx = fneg float %i.lw
  %i.ly = call float @llvm.fmuladd.f32(float %i.lv, float %i.lq, float %i.lx)
  %i.lz = fmul float %i.lp, %i.ly
  %i.ma = fmul float %i.lr, %i.lz
  %i.mb = fneg float %i.ls
  %i.mc = fmul float %i.lp, %i.mb
  %i.md = fmul float %i.lq, %i.mc
  %i.me = fneg float %i.lu
  %i.mf = fmul float %i.lq, %i.me
  %i.mg = fmul float %i.lr, %i.mf
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.mh = fmul float %i.kl, %i.lp                 ; 3 uses
  %i.mi = fmul float %i.kb, %i.md
  %i.mj = call float @llvm.fmuladd.f32(float %i.jz, float %i.mh, float %i.mi) ; 2 uses
  %i.mk = fmul float %i.kb, %i.lq                 ; 2 uses
  %i.ml = fmul float %31, %i.mj
  %i.mm = call float @llvm.fmuladd.f32(float %i.kd, float %i.mh, float %i.ml)
  %i.mn = call float @llvm.fmuladd.f32(float %i.ke, float %i.ma, float %i.mm)
  %i.mo = fmul float %i.ke, %i.mg
  %i.mp = call float @llvm.fmuladd.f32(float %31, float %i.mk, float %i.mo)
  %i.mq = fmul float %i.ke, %i.lr
  %i.mr = load i32, ptr %i.n, align 4, !tbaa !9   ; 2 uses
  %i.ms = icmp sgt i32 %i.mr, 0
  br i1 %i.ms, label %.lr.ph621, label %.loopexit560

.lr.ph621:                                        ; preds = %bb.br
  %i.mt = getelementptr [8 x i8], ptr %.1541, i64 %indvars.iv752 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !36
  %.not330 = icmp eq i64 %indvars.iv752, 0
  %i.mv = getelementptr i8, ptr %i.mt, i64 -8
  %wide.trip.count726 = zext nneg i32 %i.mr to i64
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph621, %.loopexit557
  %indvars.iv723 = phi i64 [ 0, %.lr.ph621 ], [ %indvars.iv.next724, %.loopexit557 ] ; 3 uses
  %i.mw = getelementptr inbounds nuw [12 x i8], ptr %i.mu, i64 %indvars.iv723 ; 10 uses
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !34 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mw, i64 4 ; 7 uses
  %i.mz = load float, ptr %i.my, align 4, !tbaa !34 ; 2 uses
  %i.na = fmul float %i.mp, %i.mz
  %i.nb = call float @llvm.fmuladd.f32(float %i.mn, float %i.mx, float %i.na)
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 8 uses
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !34
  %i.ne = call float @llvm.fmuladd.f32(float %i.mq, float %i.nd, float %i.nb) ; 4 uses
  store float %i.ne, ptr %i.nc, align 4, !tbaa !34
  %i.nf = fmul float %i.mk, %i.mz
  %i.ng = call float @llvm.fmuladd.f32(float %i.mj, float %i.mx, float %i.nf) ; 3 uses
  store float %i.ng, ptr %i.my, align 4, !tbaa !34
  %i.nh = fmul float %i.mh, %i.mx                 ; 3 uses
  store float %i.nh, ptr %i.mw, align 4, !tbaa !34
  br i1 %.not330, label %.loopexit557, label %.preheader556

.preheader556:                                    ; preds = %bb.bs
  %i.ni = load ptr, ptr %i.mv, align 8, !tbaa !36
  %i.nj = getelementptr inbounds nuw [12 x i8], ptr %i.ni, i64 %indvars.iv723 ; 5 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8 ; 3 uses
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !34
  %i.nm = fsub float %i.ne, %i.nl
  %i.nn = fpext float %i.nm to double             ; 2 uses
  %i.no = fcmp olt double %i.kg, %i.nn
  br i1 %i.no, label %.lr.ph611, label %.preheader553

.preheader553:                                    ; preds = %.lr.ph611, %.preheader556
  %.pre-phi824 = phi double [ %i.nn, %.preheader556 ], [ %i.nx, %.lr.ph611 ]
  %i.np = phi float [ %i.ng, %.preheader556 ], [ %35, %.lr.ph611 ] ; 2 uses
  %i.nq = phi float [ %i.nh, %.preheader556 ], [ %34, %.lr.ph611 ] ; 2 uses
  %i.nr = phi float [ %i.ne, %.preheader556 ], [ %i.nu, %.lr.ph611 ] ; 2 uses
  %i.ns = fcmp ult double %i.kh, %.pre-phi824
  br i1 %i.ns, label %._crit_edge617, label %.lr.ph616

.lr.ph611:                                        ; preds = %.preheader556, %.lr.ph611
  %32 = phi float [ %i.nu, %.lr.ph611 ], [ %i.ne, %.preheader556 ]
  %33 = phi float [ %35, %.lr.ph611 ], [ %i.ng, %.preheader556 ]
  %i.nt = phi float [ %34, %.lr.ph611 ], [ %i.nh, %.preheader556 ]
  %34 = fsub float %i.nt, %i.kd                   ; 3 uses
  %35 = fsub float %33, %31                       ; 3 uses
  %i.nu = fsub float %32, %i.ke                   ; 4 uses
  store float %34, ptr %i.mw, align 4, !tbaa !34
  store float %35, ptr %i.my, align 4, !tbaa !34
  store float %i.nu, ptr %i.nc, align 4, !tbaa !34
  %i.nv = load float, ptr %i.nk, align 4, !tbaa !34
  %i.nw = fsub float %i.nu, %i.nv
  %i.nx = fpext float %i.nw to double             ; 2 uses
  %i.ny = fcmp olt double %i.kg, %i.nx
  br i1 %i.ny, label %.lr.ph611, label %.preheader553, !llvm.loop !52

.lr.ph616:                                        ; preds = %.preheader553, %.lr.ph616
  %i.nz = phi float [ %i.oe, %.lr.ph616 ], [ %i.nr, %.preheader553 ]
  %i.oa = phi float [ %i.od, %.lr.ph616 ], [ %i.np, %.preheader553 ]
  %i.ob = phi float [ %i.oc, %.lr.ph616 ], [ %i.nq, %.preheader553 ]
  %i.oc = fadd float %i.ob, %i.kd                 ; 3 uses
  %i.od = fadd float %i.oa, %31                   ; 3 uses
  %i.oe = fadd float %i.nz, %i.ke                 ; 4 uses
  store float %i.oc, ptr %i.mw, align 4, !tbaa !34
  store float %i.od, ptr %i.my, align 4, !tbaa !34
  store float %i.oe, ptr %i.nc, align 4, !tbaa !34
  %i.of = load float, ptr %i.nk, align 4, !tbaa !34
  %i.og = fsub float %i.oe, %i.of
  %i.oh = fpext float %i.og to double
  %i.oi = fcmp ult double %i.kh, %i.oh
  br i1 %i.oi, label %._crit_edge617, label %.lr.ph616, !llvm.loop !53

._crit_edge617:                                   ; preds = %.lr.ph616, %.preheader553
  %i.oj = phi float [ %i.nr, %.preheader553 ], [ %i.oe, %.lr.ph616 ] ; 2 uses
  %i.ok = phi float [ %i.nq, %.preheader553 ], [ %i.oc, %.lr.ph616 ] ; 2 uses
  %i.ol = phi float [ %i.np, %.preheader553 ], [ %i.od, %.lr.ph616 ] ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.nj, i64 4 ; 3 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !34
  %i.oo = fsub float %i.ol, %i.on
  %i.op = fpext float %i.oo to double             ; 2 uses
  %i.oq = fcmp olt double %i.kj, %i.op
  br i1 %i.oq, label %.lr.ph611.1, label %.preheader553.1

.lr.ph611.1:                                      ; preds = %._crit_edge617, %.lr.ph611.1
  %i.or = phi float [ %i.ow, %.lr.ph611.1 ], [ %i.oj, %._crit_edge617 ]
  %i.os = phi float [ %i.ov, %.lr.ph611.1 ], [ %i.ol, %._crit_edge617 ]
  %i.ot = phi float [ %i.ou, %.lr.ph611.1 ], [ %i.ok, %._crit_edge617 ]
  %i.ou = fsub float %i.ot, %i.jz                 ; 3 uses
  %i.ov = fsub float %i.os, %i.kb                 ; 4 uses
  %i.ow = fsub float %i.or, %30                   ; 3 uses
  store float %i.ou, ptr %i.mw, align 4, !tbaa !34
  store float %i.ov, ptr %i.my, align 4, !tbaa !34
  store float %i.ow, ptr %i.nc, align 4, !tbaa !34
  %i.ox = load float, ptr %i.om, align 4, !tbaa !34
  %i.oy = fsub float %i.ov, %i.ox
  %i.oz = fpext float %i.oy to double             ; 2 uses
  %i.pa = fcmp olt double %i.kj, %i.oz
  br i1 %i.pa, label %.lr.ph611.1, label %.preheader553.1, !llvm.loop !52

.preheader553.1:                                  ; preds = %.lr.ph611.1, %._crit_edge617
  %.pre-phi826 = phi double [ %i.op, %._crit_edge617 ], [ %i.oz, %.lr.ph611.1 ]
  %i.pb = phi float [ %i.oj, %._crit_edge617 ], [ %i.ow, %.lr.ph611.1 ] ; 2 uses
  %i.pc = phi float [ %i.ok, %._crit_edge617 ], [ %i.ou, %.lr.ph611.1 ] ; 2 uses
  %i.pd = phi float [ %i.ol, %._crit_edge617 ], [ %i.ov, %.lr.ph611.1 ] ; 2 uses
  %i.pe = fcmp ult double %i.kk, %.pre-phi826
  br i1 %i.pe, label %._crit_edge617.1, label %.lr.ph616.1

.lr.ph616.1:                                      ; preds = %.preheader553.1, %.lr.ph616.1
  %i.pf = phi float [ %i.pk, %.lr.ph616.1 ], [ %i.pb, %.preheader553.1 ]
  %i.pg = phi float [ %i.pj, %.lr.ph616.1 ], [ %i.pd, %.preheader553.1 ]
  %i.ph = phi float [ %i.pi, %.lr.ph616.1 ], [ %i.pc, %.preheader553.1 ]
  %i.pi = fadd float %i.ph, %i.jz                 ; 3 uses
  %i.pj = fadd float %i.pg, %i.kb                 ; 4 uses
  %i.pk = fadd float %i.pf, %30                   ; 3 uses
  store float %i.pi, ptr %i.mw, align 4, !tbaa !34
  store float %i.pj, ptr %i.my, align 4, !tbaa !34
  store float %i.pk, ptr %i.nc, align 4, !tbaa !34
  %i.pl = load float, ptr %i.om, align 4, !tbaa !34
  %i.pm = fsub float %i.pj, %i.pl
  %i.pn = fpext float %i.pm to double
  %i.po = fcmp ult double %i.kk, %i.pn
  br i1 %i.po, label %._crit_edge617.1, label %.lr.ph616.1, !llvm.loop !53

._crit_edge617.1:                                 ; preds = %.lr.ph616.1, %.preheader553.1
  %i.pp = phi float [ %i.pb, %.preheader553.1 ], [ %i.pk, %.lr.ph616.1 ] ; 2 uses
  %i.pq = phi float [ %i.pd, %.preheader553.1 ], [ %i.pj, %.lr.ph616.1 ] ; 2 uses
  %i.pr = phi float [ %i.pc, %.preheader553.1 ], [ %i.pi, %.lr.ph616.1 ] ; 3 uses
  %i.ps = load float, ptr %i.nj, align 4, !tbaa !34
  %i.pt = fsub float %i.pr, %i.ps
  %i.pu = fpext float %i.pt to double             ; 2 uses
  %i.pv = fcmp olt double %i.kn, %i.pu
  br i1 %i.pv, label %.lr.ph611.2, label %.preheader553.2

.lr.ph611.2:                                      ; preds = %._crit_edge617.1, %.lr.ph611.2
  %36 = phi float [ %39, %.lr.ph611.2 ], [ %i.pp, %._crit_edge617.1 ]
  %37 = phi float [ %i.px, %.lr.ph611.2 ], [ %i.pq, %._crit_edge617.1 ]
  %i.pw = phi float [ %38, %.lr.ph611.2 ], [ %i.pr, %._crit_edge617.1 ]
  %38 = fsub float %i.pw, %i.kl                   ; 4 uses
  %i.px = fsub float %37, %i.kp                   ; 3 uses
  %39 = fsub float %36, %i.jx                     ; 3 uses
  store float %38, ptr %i.mw, align 4, !tbaa !34
  store float %i.px, ptr %i.my, align 4, !tbaa !34
  store float %39, ptr %i.nc, align 4, !tbaa !34
  %40 = load float, ptr %i.nj, align 4, !tbaa !34
  %i.py = fsub float %38, %40
  %i.pz = fpext float %i.py to double             ; 2 uses
  %i.qa = fcmp olt double %i.kn, %i.pz
  br i1 %i.qa, label %.lr.ph611.2, label %.preheader553.2, !llvm.loop !52

.preheader553.2:                                  ; preds = %.lr.ph611.2, %._crit_edge617.1
  %.pre-phi828 = phi double [ %i.pu, %._crit_edge617.1 ], [ %i.pz, %.lr.ph611.2 ]
  %i.qb = phi float [ %i.pp, %._crit_edge617.1 ], [ %39, %.lr.ph611.2 ]
  %i.qc = phi float [ %i.pq, %._crit_edge617.1 ], [ %i.px, %.lr.ph611.2 ]
  %i.qd = phi float [ %i.pr, %._crit_edge617.1 ], [ %38, %.lr.ph611.2 ]
  %i.qe = fcmp ult double %i.ko, %.pre-phi828
  br i1 %i.qe, label %.loopexit557, label %.lr.ph616.2.preheader

.lr.ph616.2.preheader:                            ; preds = %.preheader553.2
  %i.qf = insertelement <2 x float> poison, float %i.qd, i64 0
  %i.qg = insertelement <2 x float> %i.qf, float %i.qc, i64 1
  br label %.lr.ph616.2

.lr.ph616.2:                                      ; preds = %.lr.ph616.2.preheader, %.lr.ph616.2
  %i.qh = phi float [ %i.qk, %.lr.ph616.2 ], [ %i.qb, %.lr.ph616.2.preheader ]
  %i.qi = phi <2 x float> [ %i.qj, %.lr.ph616.2 ], [ %i.qg, %.lr.ph616.2.preheader ]
  %i.qj = fadd <2 x float> %i.qi, %i.jv           ; 3 uses
  %i.qk = fadd float %i.qh, %i.jx                 ; 2 uses
  store <2 x float> %i.qj, ptr %i.mw, align 4, !tbaa !34
  store float %i.qk, ptr %i.nc, align 4, !tbaa !34
  %i.ql = load float, ptr %i.nj, align 4, !tbaa !34
  %i.qm = extractelement <2 x float> %i.qj, i64 0
  %i.qn = fsub float %i.qm, %i.ql
  %i.qo = fpext float %i.qn to double
  %i.qp = fcmp ult double %i.ko, %i.qo
  br i1 %i.qp, label %.loopexit557, label %.lr.ph616.2, !llvm.loop !53

.loopexit557:                                     ; preds = %.lr.ph616.2, %.preheader553.2, %bb.bs
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %.loopexit560, label %bb.bs, !llvm.loop !54

.loopexit560:                                     ; preds = %.loopexit557, %bb.br, %bb.bi
  %.not685 = icmp eq i64 %indvars.iv752, 0
  br i1 %.not685, label %._crit_edge630, label %.lr.ph629

.lr.ph629:                                        ; preds = %.loopexit560
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv752
  %i.qr = load ptr, ptr %i.f, align 8
  %.not327 = icmp eq ptr %i.qr, null
  %i.qs = load ptr, ptr %i.g, align 8
  %.not328 = icmp eq ptr %i.qs, null
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph629, %bb.ch
  %indvars.iv734 = phi i64 [ 0, %.lr.ph629 ], [ %indvars.iv.next735, %bb.ch ] ; 3 uses
  %i.qt = sub nuw nsw i64 %indvars.iv752, %indvars.iv734 ; 3 uses
  %i.qu = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5fmmax, align 4, !tbaa !9
  %i.qv = trunc nuw i64 %i.qt to i32              ; 6 uses
  %.not325 = icmp slt i32 %i.qu, %i.qv
  %i.qw = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4 ; 2 uses
  %.not326 = icmp slt i32 %i.qw, %i.qv
  %or.cond334 = select i1 %.not325, i1 %.not326, i1 false
  br i1 %or.cond334, label %bb.ch, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qx = load float, ptr @_ZZ11gmx_vanhoveiPPcE4sbin, align 4, !tbaa !34
  %i.qy = fcmp oeq float %i.qx, 0.000000e+00
  br i1 %i.qy, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.qz = uitofp nneg i32 %i.qv to float
  %i.ra = fmul float %i.hi, %i.qz
  %i.rb = call noundef float @sqrtf(float noundef %i.ra) #21
  %i.rc = fmul float %.1235, %i.rb
  %i.rd = call float @llvm.rint.f32(float %i.rc)
  %i.re = fptosi float %i.rd to i32
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.0241 = phi i32 [ %i.re, %bb.bv ], [ %i.qv, %bb.bu ] ; 3 uses
  %i.rf = load i32, ptr %i.n, align 4, !tbaa !9   ; 3 uses
  %i.rg = icmp sgt i32 %i.rf, 0
  br i1 %i.rg, label %.lr.ph624, label %._crit_edge625

.lr.ph624:                                        ; preds = %bb.bw
  %i.rh = load ptr, ptr %i.qq, align 8, !tbaa !36 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %.1541, i64 %indvars.iv734
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !36 ; 2 uses
  %i.rk = icmp slt i32 %.0241, %.1244
  %i.rl = sext i32 %.0241 to i64
  %i.rm = getelementptr inbounds [8 x i8], ptr %.0549, i64 %i.rl
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.0548, i64 %i.qt ; 4 uses
  %.fr = freeze i1 %i.rk
  br i1 %.fr, label %.lr.ph624.split, label %.lr.ph624.split.us

.lr.ph624.split.us:                               ; preds = %.lr.ph624, %bb.by
  %i.ro = phi i32 [ %i.sh, %bb.by ], [ %i.rf, %.lr.ph624 ]
  %i.rp = phi i32 [ %i.si, %bb.by ], [ %i.qw, %.lr.ph624 ] ; 2 uses
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %bb.by ], [ 0, %.lr.ph624 ] ; 3 uses
  %i.rq = getelementptr inbounds nuw [12 x i8], ptr %i.rh, i64 %indvars.iv728 ; 2 uses
  %i.rr = getelementptr inbounds nuw [12 x i8], ptr %i.rj, i64 %indvars.iv728 ; 2 uses
  %i.rs = load <2 x float>, ptr %i.rr, align 4, !tbaa !34
  %i.rt = load <2 x float>, ptr %i.rq, align 4, !tbaa !34
  %i.ru = fsub <2 x float> %i.rs, %i.rt           ; 2 uses
  %i.rv = fmul <2 x float> %i.ru, %i.ru           ; 2 uses
  %shift = shufflevector <2 x float> %i.rv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.rv, %shift
  %i.rw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rr, i64 8
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !34
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sa = load float, ptr %i.rz, align 4, !tbaa !34
  %i.sb = fsub float %i.ry, %i.sa                 ; 2 uses
  %i.sc = fmul float %i.sb, %i.sb
  %i.sd = fadd float %i.rw, %i.sc
  %.not329.us = icmp slt i32 %i.rp, %i.qv
  %i.se = fcmp ugt float %i.sd, %.0236
  %or.cond336.us = select i1 %.not329.us, i1 true, i1 %i.se
  br i1 %or.cond336.us, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph624.split.us
  %i.sf = load i32, ptr %i.rn, align 4, !tbaa !9
  %i.sg = add nsw i32 %i.sf, 1
  store i32 %i.sg, ptr %i.rn, align 4, !tbaa !9
  %.pre815 = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  %.pre817 = load i32, ptr %i.n, align 4, !tbaa !9
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph624.split.us
  %i.sh = phi i32 [ %.pre817, %bb.bx ], [ %i.ro, %.lr.ph624.split.us ] ; 2 uses
  %i.si = phi i32 [ %.pre815, %bb.bx ], [ %i.rp, %.lr.ph624.split.us ]
  %indvars.iv.next729 = add nuw nsw i64 %indvars.iv728, 1 ; 2 uses
  %i.sj = sext i32 %i.sh to i64
  %i.sk = icmp slt i64 %indvars.iv.next729, %i.sj
  br i1 %i.sk, label %.lr.ph624.split.us, label %._crit_edge625, !llvm.loop !55

.lr.ph624.split:                                  ; preds = %.lr.ph624, %bb.cd
  %i.sl = phi i32 [ %i.to, %bb.cd ], [ %i.rf, %.lr.ph624 ]
  %indvars.iv731 = phi i64 [ %indvars.iv.next732, %bb.cd ], [ 0, %.lr.ph624 ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [12 x i8], ptr %i.rh, i64 %indvars.iv731 ; 2 uses
  %i.sn = getelementptr inbounds nuw [12 x i8], ptr %i.rj, i64 %indvars.iv731 ; 2 uses
  %i.so = load <2 x float>, ptr %i.sn, align 4, !tbaa !34
  %i.sp = load <2 x float>, ptr %i.sm, align 4, !tbaa !34
  %i.sq = fsub <2 x float> %i.so, %i.sp           ; 2 uses
  %i.sr = fmul <2 x float> %i.sq, %i.sq           ; 2 uses
  %shift1145 = shufflevector <2 x float> %i.sr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1146 = fadd <2 x float> %i.sr, %shift1145
  %i.ss = extractelement <2 x float> %foldExtExtBinop1146, i64 0
  %i.st = getelementptr inbounds nuw i8, ptr %i.sn, i64 8
  %i.su = load float, ptr %i.st, align 4, !tbaa !34
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sw = load float, ptr %i.sv, align 4, !tbaa !34
  %i.sx = fsub float %i.su, %i.sw                 ; 2 uses
  %i.sy = fmul float %i.sx, %i.sx
  %i.sz = fadd float %i.ss, %i.sy                 ; 3 uses
  %i.ta = fcmp olt float %i.sz, %.0237
  br i1 %i.ta, label %bb.bz, label %bb.cb

bb.bz:                                            ; preds = %.lr.ph624.split
  %sqrt = call float @llvm.sqrt.f32(float %i.sz)
  %i.tb = fmul float %i.hk, %sqrt
  %i.tc = call float @llvm.rint.f32(float %i.tb)
  %i.td = fptosi float %i.tc to i32               ; 2 uses
  %i.te = icmp sgt i32 %.0242, %i.td
  br i1 %i.te, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.tf = load ptr, ptr %i.rm, align 8, !tbaa !36
  %i.tg = sext i32 %i.td to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %i.tf, i64 %i.tg ; 2 uses
  %i.ti = load float, ptr %i.th, align 4, !tbaa !34
  %i.tj = fadd float %i.ti, 1.000000e+00
  store float %i.tj, ptr %i.th, align 4, !tbaa !34
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %.lr.ph624.split
  %i.tk = load i32, ptr @_ZZ11gmx_vanhoveiPPcE5ftmax, align 4, !tbaa !9
  %.not329 = icmp slt i32 %i.tk, %i.qv
  %i.tl = fcmp ugt float %i.sz, %.0236
  %or.cond336 = select i1 %.not329, i1 true, i1 %i.tl
  br i1 %or.cond336, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tm = load i32, ptr %i.rn, align 4, !tbaa !9
  %i.tn = add nsw i32 %i.tm, 1
  store i32 %i.tn, ptr %i.rn, align 4, !tbaa !9
  %.pre818 = load i32, ptr %i.n, align 4, !tbaa !9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc
  %i.to = phi i32 [ %i.sl, %bb.cb ], [ %.pre818, %bb.cc ] ; 2 uses
  %indvars.iv.next732 = add nuw nsw i64 %indvars.iv731, 1 ; 2 uses
  %i.tp = sext i32 %i.to to i64
  %i.tq = icmp slt i64 %indvars.iv.next732, %i.tp
  br i1 %i.tq, label %.lr.ph624.split, label %._crit_edge625, !llvm.loop !55

._crit_edge625:                                   ; preds = %bb.by, %bb.cd, %bb.bw
  br i1 %.not327, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %._crit_edge625
  %i.tr = sext i32 %.0241 to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %.0546, i64 %i.tr ; 2 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !9
  %i.tu = add nsw i32 %i.tt, 1
  store i32 %i.tu, ptr %i.ts, align 4, !tbaa !9
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge625
  br i1 %.not328, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %.0545, i64 %i.qt ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !9
  %i.tx = add nsw i32 %i.tw, 1
end_hunk_0
