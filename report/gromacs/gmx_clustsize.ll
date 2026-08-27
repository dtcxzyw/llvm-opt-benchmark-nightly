Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_clustsize?download=true
inline.NumInlined: 320
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13gmx_clustsizeiPPc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447.i: ; preds = %bb.bj
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !20
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449.i: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447.i, %bb.bg
  %.pn386.pn.i = phi { ptr, i32 } [ %i.ix, %bb.bg ], [ %.pn386.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i447.i ], [ %.pn386.i, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %.body.i

bb.bk:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit434.i
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !47
  store i32 %i.jg, ptr %i.p, align 4, !tbaa !9
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !52 ; 6 uses
  %i.jj = load ptr, ptr %i.l, align 8, !tbaa !37
  %.not.i = icmp eq ptr %i.jj, null
  br i1 %.not.i, label %bb.cf, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 2)
          to label %bb.bm unwind label %bb.bs

bb.bm:                                            ; preds = %bb.bl
  invoke void @_Z13readTpxHeaderRKNSt10filesystem7__cxx114pathEb(ptr dead_on_unwind nonnull writable sret(%struct.TpxFileHeader) align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %19, i1 noundef zeroext true)
          to label %bb.bn unwind label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %.sroa.5739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.5739.0.copyload.i = load i32, ptr %.sroa.5739.0..sroa_idx.i, align 8, !tbaa !9 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i450.i = icmp eq ptr %i.jl, null
  br i1 %.not.i.i.i450.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i451.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.jk, ptr noundef nonnull %i.jl) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i451.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i451.i: ; preds = %bb.bo, %bb.bn
  %i.jm = load ptr, ptr %19, align 8, !tbaa !44   ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.jo = icmp eq ptr %i.jm, %i.jn
  br i1 %i.jo, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit454.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i451.i
  %i.jp = load i64, ptr %i.jn, align 8, !tbaa !20
  %i.jq = add i64 %i.jp, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jq) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit454.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit454.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i451.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i452.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  %i.jr = load i32, ptr %i.p, align 4, !tbaa !9
  %.not351.i = icmp eq i32 %.sroa.5739.0.copyload.i, %i.jr
  br i1 %.not351.i, label %bb.by, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit454.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 1 dereferenceable(69) @.str.48, i8 noundef zeroext 2)
          to label %bb.bq unwind label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.js = load i32, ptr %i.p, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %20, i32 noundef 142, ptr noundef nonnull @.str.59, i32 noundef %.sroa.5739.0.copyload.i, i32 noundef %i.js) #16
          to label %bb.br unwind label %bb.bw

bb.br:                                            ; preds = %bb.bq
  unreachable

bb.bs:                                            ; preds = %bb.bl
  %i.jt = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bm
  %i.ju = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.pn349.i = phi { ptr, i32 } [ %i.ju, %bb.bt ], [ %i.jt, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %.body.i

bb.bv:                                            ; preds = %bb.bp
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bq
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #15
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn384.i = phi { ptr, i32 } [ %i.jw, %bb.bw ], [ %i.jv, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.body.i

bb.by:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit454.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 2)
          to label %bb.bz unwind label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.jx = invoke noundef i32 @_Z8read_tpxRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10gmx_mtop_t(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.p, ptr noundef null, ptr noundef null, ptr noundef nonnull %4)
          to label %bb.ca unwind label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.jy = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i455.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i455.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.jy, ptr noundef nonnull %i.jz) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i: ; preds = %bb.cb, %bb.ca
  %i.ka = load ptr, ptr %21, align 8, !tbaa !44   ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !20
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i456.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i457.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.cf

bb.cc:                                            ; preds = %bb.by
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bz
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #15
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn352.i = phi { ptr, i32 } [ %i.kg, %bb.cd ], [ %i.kf, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %.body.i

bb.cf:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i, %bb.bk
  %.0320.i = phi i32 [ %i.jx, %_ZNSt10filesystem7__cxx114pathD2Ev.exit459.i ], [ 4, %bb.bk ]
  %i.kh = icmp slt i32 %i.fa, 0
  br i1 %i.kh, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ki = uitofp nneg i32 %i.fa to double
  %i.kj = load i32, ptr %i.p, align 4, !tbaa !9
  %i.kk = sitofp i32 %i.kj to double
  %i.kl = fmul nnan double %i.kk, 3.000000e+00
  %i.km = fdiv double %i.ki, %i.kl
  %i.kn = fptrunc double %i.km to float
  %i.ko = fpext float %i.kn to double
  %i.kp = fmul double %i.ko, 3.000000e+00
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0317.i = phi double [ %i.kp, %bb.cg ], [ 3.000000e+00, %bb.cf ]
  %i.kq = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #18
          to label %bb.ci unwind label %.body.i.i ; 7 uses

.body.i.i:                                        ; preds = %bb.ch
  %i.kr = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ci:                                            ; preds = %bb.ch
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kq, i64 4 ; 5 uses
  store i32 0, ptr %i.kq, align 4, !tbaa !9
  br i1 %i.eu, label %bb.cj, label %bb.cs

bb.cj:                                            ; preds = %bb.ci
  %.not354.i = icmp eq ptr %i.dt, null
  br i1 %.not354.i, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef nonnull %i.dt) ; 0 uses
  br label %bb.cm

bb.cl:                                            ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i, %.loopexit787.i, %_ZN3gmx17RangePartitioningD2Ev.exit.i
  %.sroa.23.0.i = phi ptr [ %.sroa.23.1.i.a, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.23.1.i.a, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.23.1.i.a, %.loopexit787.i ], [ %i.la, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %.sroa.0648.0.i = phi ptr [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i ], [ %.sroa.0648.1.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i ], [ %.sroa.0648.1.i, %.loopexit787.i ], [ %i.kw, %_ZN3gmx17RangePartitioningD2Ev.exit.i ]
  %i.ku = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.kv = load ptr, ptr %i.l, align 8, !tbaa !37
  %.not355.i = icmp eq ptr %i.kv, null
  br i1 %.not355.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10clust_sizePKcS0_S0_S0_S0_S0_S0_S0_S0_S0_bbS0_fii5t_rgbS1_iPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.48, i32 noundef 162) #16
          to label %.noexc460.i unwind label %bb.cq

.noexc460.i:                                      ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_Z18gmx_mtop_moleculesRK10gmx_mtop_t(ptr dead_on_unwind nonnull writable sret(%"class.gmx::RangePartitioning") align 8 %22, ptr noundef nonnull align 8 dereferenceable(768) %4)
          to label %_ZN3gmx17RangePartitioningaSEOS0_.exit.i unwind label %bb.cr

_ZN3gmx17RangePartitioningaSEOS0_.exit.i:         ; preds = %bb.co
  %i.kw = load ptr, ptr %22, align 8, !tbaa !53   ; 4 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !55 ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef 4) #17
  %i.lb = load ptr, ptr %22, align 8, !tbaa !53   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx17RangePartitioningD2Ev.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  %i.lc = load ptr, ptr %i.kz, align 8, !tbaa !56
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %i.lb to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.lf) #17
  br label %_ZN3gmx17RangePartitioningD2Ev.exit.i

_ZN3gmx17RangePartitioningD2Ev.exit.i:            ; preds = %bb.cp, %_ZN3gmx17RangePartitioningaSEOS0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  %i.lg = ptrtoint ptr %i.ky to i64
  %i.lh = ptrtoint ptr %i.kw to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = lshr exact i64 %i.li, 2
  %i.lk = trunc i64 %i.lj to i32
  %i.ll = add nsw i32 %i.lk, -1                   ; 2 uses
  store i32 %i.ll, ptr %i.o, align 4, !tbaa !9
  %i.lm = sext i32 %i.ll to i64
  %i.ln = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.48, i32 noundef 167, i64 noundef range(i64 -2147483648, 2147483648) %i.lm, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i unwind label %bb.cl ; 2 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit.i
  store ptr %i.ln, ptr %i.n, align 8, !tbaa !38
  %i.lo = load i32, ptr %i.o, align 4, !tbaa !9   ; 2 uses
  %i.lp = icmp sgt i32 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.i, label %.loopexit787.i

.lr.ph.i:                                         ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ] ; 3 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv.i
  %i.lr = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.lr, ptr %i.lq, align 4, !tbaa !9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ls = load i32, ptr %i.o, align 4, !tbaa !9   ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %i.lu = icmp slt i64 %indvars.iv.next.i, %i.lt
  br i1 %i.lu, label %.lr.ph.i, label %.loopexit787.i, !llvm.loop !57

bb.cq:                                            ; preds = %bb.cn
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.cr:                                            ; preds = %bb.co
  %i.lw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %.thread.i

bb.cs:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  invoke void @_Z8rd_indexPKciPiPS1_PPc(ptr noundef %i.dt, i32 noundef 1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n, ptr noundef nonnull %i.s)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.lx = load ptr, ptr %i.s, align 8, !tbaa !37
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.48, i32 noundef 177, ptr noundef %i.lx)
          to label %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i unwind label %bb.cu

_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i:         ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  %.pre.i = load i32, ptr %i.o, align 4, !tbaa !9
  br label %.loopexit787.i

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ly = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  br label %.thread.i

.loopexit787.i:                                   ; preds = %.lr.ph.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i
  %i.lz = phi i32 [ %.pre.i, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.lo, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.ls, %.lr.ph.i ]
  %.sroa.23.1.i.a = phi ptr [ %i.ks, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.la, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.la, %.lr.ph.i ] ; 23 uses
  %.sroa.18.0.i = phi ptr [ %i.ks, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.ky, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.ky, %.lr.ph.i ]
  %.sroa.0648.1.i = phi ptr [ %i.kq, %_ZL14gmx_sfree_implIcEvPKcS1_iPT_.exit.i ], [ %i.kw, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.i ], [ %i.kw, %.lr.ph.i ] ; 28 uses
  %i.ma = sext i32 %i.lz to i64
  %i.mb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.48, i32 noundef 180, i64 noundef range(i64 -2147483648, 2147483648) %i.ma, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i unwind label %bb.cl ; 12 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i:     ; preds = %.loopexit787.i
  %i.mc = load i32, ptr %i.o, align 4, !tbaa !9
  %i.md = sext i32 %i.mc to i64
  %i.me = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.48, i32 noundef 181, i64 noundef range(i64 -2147483648, 2147483648) %i.md, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i unwind label %bb.cl ; 8 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i:     ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit464.i
  %i.mf = fmul float %i.ex, %i.ex                 ; 3 uses
  %i.mg = load i32, ptr %i.o, align 4, !tbaa !9
  %i.mh = sext i32 %i.mg to i64
  %i.mi = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.48, i32 noundef 185, i64 noundef range(i64 -2147483648, 2147483648) %i.mh, i64 noundef 4)
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i unwind label %bb.cl ; 6 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit466.i
  %i.mj = load i32, ptr %i.o, align 4, !tbaa !9   ; 4 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %iter.check, label %.preheader783.i

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.mj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.mj, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check360 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check360, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ml = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.mm = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mn = add <8 x i32> %i.mm, splat (i32 1)
  %i.mo = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mp = add <8 x i32> %i.mo, splat (i32 9)
  %i.mq = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mr = add <8 x i32> %i.mq, splat (i32 17)
  %i.ms = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mt = add <8 x i32> %i.ms, splat (i32 25)
  %i.mu = uitofp nneg <8 x i32> %i.mn to <8 x float>
  %i.mv = uitofp nneg <8 x i32> %i.mp to <8 x float>
  %i.mw = uitofp nneg <8 x i32> %i.mr to <8 x float>
  %i.mx = uitofp nneg <8 x i32> %i.mt to <8 x float>
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  store <8 x float> %i.mu, ptr %i.my, align 4, !tbaa !10
  store <8 x float> %i.mv, ptr %i.mz, align 4, !tbaa !10
  store <8 x float> %i.mw, ptr %i.na, align 4, !tbaa !10
  store <8 x float> %i.mx, ptr %i.nb, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader783.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec361 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next364, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind363 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next365, %vec.epilog.vector.body ] ; 2 uses
  %i.nd = trunc <4 x i64> %vec.ind363 to <4 x i32>
  %i.ne = add <4 x i32> %i.nd, splat (i32 1)
  %i.nf = uitofp nneg <4 x i32> %i.ne to <4 x float>
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index362
  store <4 x float> %i.nf, ptr %i.ng, align 4, !tbaa !10
  %index.next364 = add nuw i64 %index362, 4       ; 2 uses
  %vec.ind.next365 = add nuw nsw <4 x i64> %vec.ind363, splat (i64 4)
  %i.nh = icmp eq i64 %index.next364, %n.vec361
  br i1 %i.nh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n366 = icmp eq i64 %n.vec361, %wide.trip.count.i
  br i1 %cmp.n366, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv972.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec361, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i

.preheader783.i:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %i.ni = icmp eq i32 %i.ey, 0
  %i.nj = icmp sgt i32 %i.ey, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.nl = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.nn = ptrtoint ptr %.sroa.18.0.i to i64
  %i.no = ptrtoint ptr %.sroa.0648.1.i to i64     ; 2 uses
  %i.np = sub i64 %i.nn, %i.no
  %.fr936.i = freeze i64 %i.np
  %i.nq = lshr i64 %.fr936.i, 2
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = icmp sgt i32 %i.nr, 1                   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.cv

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i
  %indvars.iv972.i = phi i64 [ %indvars.iv.next973.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i ], [ %indvars.iv972.i.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader ] ; 2 uses
  %indvars.iv.next973.i = add nuw nsw i64 %indvars.iv972.i, 1 ; 3 uses
  %i.od = trunc nuw nsw i64 %indvars.iv.next973.i to i32
  %i.oe = uitofp nneg i32 %i.od to float
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv972.i
  store float %i.oe, ptr %i.of, align 4, !tbaa !10
  %exitcond.not.i = icmp eq i64 %indvars.iv.next973.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader783.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, !llvm.loop !64

bb.cv:                                            ; preds = %bb.fc, %.preheader783.i
  %.0751.i = phi i32 [ %.3754.i, %bb.fc ], [ 0, %.preheader783.i ] ; 6 uses
  %.0747.i = phi i32 [ %.3750.i, %bb.fc ], [ 0, %.preheader783.i ] ; 5 uses
  %.0743.i = phi ptr [ %.1744.i, %bb.fc ], [ null, %.preheader783.i ] ; 3 uses
  %.0742.i = phi ptr [ %.1.i, %bb.fc ], [ null, %.preheader783.i ] ; 3 uses
  %.0321.i = phi i1 [ %.1322.i, %bb.fc ], [ true, %.preheader783.i ] ; 4 uses
  %.0290.i = phi i32 [ %i.aap, %bb.fc ], [ 0, %.preheader783.i ] ; 2 uses
  %.0286.i = phi i32 [ %.1287.i, %bb.fc ], [ 0, %.preheader783.i ] ; 4 uses
  %.0282.i = phi i32 [ %.3285.i, %bb.fc ], [ 1, %.preheader783.i ] ; 2 uses
  %.0278.i = phi i32 [ %.3281.i, %bb.fc ], [ -1, %.preheader783.i ] ; 2 uses
  %.0272.i = phi i32 [ %.2274.i, %bb.fc ], [ 0, %.preheader783.i ] ; 5 uses
  %.0269.i = phi float [ %.2271.i, %bb.fc ], [ undef, %.preheader783.i ] ; 2 uses
  br i1 %i.ni, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.nj, label %bb.cx, label %bb.ep

bb.cx:                                            ; preds = %bb.cw
  %i.og = urem i32 %.0290.i, %i.ey
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.cy, label %bb.ep

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  br i1 %i.ew, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %2, i32 noundef %.0320.i, ptr noundef nonnull %i.nk)
          to label %bb.da unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph933.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.dr
  %lpad.loopexit779.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fb, %_ZL15gmx_srenew_implIPfEvPKcS2_iRPT_m.exit.i, %bb.ef, %._crit_edge.i, %bb.cz
  %lpad.loopexit784.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit609.i, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i, %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %bb.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit555.i, %._crit_edge899.i, %._crit_edge886.i, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %lpad.loopexit.split-lp785.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.oi = load i32, ptr %i.o, align 4, !tbaa !9
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph804.i, label %._crit_edge.i

.preheader782.i:                                  ; preds = %.lr.ph804.i
  %i.ok = icmp sgt i32 %i.oo, 0
  br i1 %i.ok, label %.lr.ph858.i, label %._crit_edge.i

.lr.ph804.i:                                      ; preds = %bb.da, %.lr.ph804.i
  %indvars.iv975.i = phi i64 [ %indvars.iv.next976.i, %.lr.ph804.i ], [ 0, %bb.da ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv975.i
  %i.om = trunc nuw nsw i64 %indvars.iv975.i to i32
  store i32 %i.om, ptr %i.ol, align 4, !tbaa !9
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv975.i
  store i32 1, ptr %i.on, align 4, !tbaa !9
  %indvars.iv.next976.i = add nuw nsw i64 %indvars.iv975.i, 1 ; 2 uses
  %i.oo = load i32, ptr %i.o, align 4, !tbaa !9   ; 3 uses
  %i.op = sext i32 %i.oo to i64
  %i.oq = icmp slt i64 %indvars.iv.next976.i, %i.op
  br i1 %i.oq, label %.lr.ph804.i, label %.preheader782.i, !llvm.loop !65

.loopexit778.i:                                   ; preds = %.critedge.thread.i, %.critedge.thread.us.i, %.critedge.thread.us.us.i, %.lr.ph858.i
  %i.or = phi i32 [ %i.ou, %.critedge.thread.us.i ], [ %i.qh, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph858.i ], [ %i.ut, %.critedge.thread.i ] ; 2 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next1015.i, %i.os
  %indvars.iv.next982.i = add nuw nsw i64 %indvars.iv981.i, 1
  br i1 %i.ot, label %.lr.ph858.i, label %._crit_edge.i, !llvm.loop !66

.lr.ph858.i:                                      ; preds = %.preheader782.i, %.loopexit778.i
  %i.ou = phi i32 [ %i.or, %.loopexit778.i ], [ %i.oo, %.preheader782.i ] ; 8 uses
  %indvars.iv1014.i = phi i64 [ %indvars.iv.next1015.i, %.loopexit778.i ], [ 0, %.preheader782.i ] ; 3 uses
  %indvars.iv981.i = phi i64 [ %indvars.iv.next982.i, %.loopexit778.i ], [ 1, %.preheader782.i ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1014.i
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !9  ; 6 uses
  %indvars.iv.next1015.i = add nuw nsw i64 %indvars.iv1014.i, 1 ; 3 uses
  %i.ox = sext i32 %i.ou to i64
  %i.oy = icmp slt i64 %indvars.iv.next1015.i, %i.ox
  br i1 %i.oy, label %.lr.ph826.i, label %.loopexit778.i

.lr.ph826.i:                                      ; preds = %.lr.ph858.i
  %i.oz = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv1014.i
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !9
  %i.pc = sext i32 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %i.pc ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = getelementptr [4 x i8], ptr %.sroa.0648.1.i, i64 %i.pc ; 3 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 4      ; 2 uses
  %i.ph = sext i32 %i.ow to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.ph ; 4 uses
  br i1 %i.eu, label %.lr.ph826.split.us.i, label %.lr.ph826.split.i

.lr.ph826.split.us.i:                             ; preds = %.lr.ph826.i
  br i1 %i.ns, label %.lr.ph826.split.us.split.us.i, label %.lr.ph826.split.us.split.i

.lr.ph826.split.us.split.us.i:                    ; preds = %.lr.ph826.split.us.i, %.critedge.thread.us.us.i
  %i.pj = phi i32 [ %i.qh, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph826.split.us.i ] ; 5 uses
  %i.pk = phi i32 [ %i.qi, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph826.split.us.i ] ; 5 uses
  %indvars.iv1011.i = phi i64 [ %indvars.iv.next1012.i, %.critedge.thread.us.us.i ], [ %indvars.iv981.i, %.lr.ph826.split.us.i ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1011.i
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9  ; 4 uses
  %.not378.us.us.i = icmp eq i32 %i.ow, %i.pm
  br i1 %.not378.us.us.i, label %.critedge.thread.us.us.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph826.split.us.split.us.i
  %i.pn = load i32, ptr %i.pf, align 4, !tbaa !9  ; 3 uses
  %i.po = load i32, ptr %i.pg, align 4, !tbaa !9  ; 4 uses
  %.not.i.i.us.us.i = icmp sgt i32 %i.pn, %i.po
  br i1 %.not.i.i.us.us.i, label %.split839.us.i, label %.preheader776.us.us.i

.preheader772.split.split.us.us.us.i:             ; preds = %.lr.ph.split, %.critedge2.split.us.us.i.loopexit
  %indvars.iv998.i63 = phi i64 [ %indvars.iv.next999.i, %.critedge2.split.us.us.i.loopexit ], [ %i.qr, %.lr.ph.split ] ; 2 uses
  %i.pp = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv998.i63 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  br label %.lr.ph814.us.us.i

bb.dc:                                            ; preds = %.lr.ph824.us.us.i, %.critedge766.us.us.i
  %i.pr = phi i32 [ %i.rj, %.lr.ph824.us.us.i ], [ %i.qc, %.critedge766.us.us.i ]
  %i.ps = phi i32 [ %i.rk, %.lr.ph824.us.us.i ], [ %i.qd, %.critedge766.us.us.i ]
  %i.pt = phi i32 [ %i.rk, %.lr.ph824.us.us.i ], [ %i.qe, %.critedge766.us.us.i ]
  %indvars.iv1008.i = phi i64 [ 0, %.lr.ph824.us.us.i ], [ %indvars.iv.next1009.i, %.critedge766.us.us.i ] ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1008.i ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !9
  %i.pw = icmp eq i32 %i.pv, %i.pm
  br i1 %i.pw, label %bb.dd, label %.critedge766.us.us.i

bb.dd:                                            ; preds = %bb.dc
  %i.px = load i32, ptr %i.si, align 4, !tbaa !9  ; 2 uses
  %i.py = icmp slt i32 %i.px, 1
  br i1 %i.py, label %.split841.us.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pz = add nsw i32 %i.px, -1
  store i32 %i.pz, ptr %i.si, align 4, !tbaa !9
  store i32 %i.ow, ptr %i.pu, align 4, !tbaa !9
  %i.qa = load i32, ptr %i.pi, align 4, !tbaa !9
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.pi, align 4, !tbaa !9
  %.pre1087.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  br label %.critedge766.us.us.i

.critedge766.us.us.i:                             ; preds = %bb.de, %bb.dc
  %i.qc = phi i32 [ %.pre1087.i, %bb.de ], [ %i.pr, %bb.dc ] ; 2 uses
  %i.qd = phi i32 [ %.pre1087.i, %bb.de ], [ %i.ps, %bb.dc ] ; 2 uses
  %i.qe = phi i32 [ %.pre1087.i, %bb.de ], [ %i.pt, %bb.dc ] ; 2 uses
  %indvars.iv.next1009.i = add nuw nsw i64 %indvars.iv1008.i, 1 ; 2 uses
  %i.qf = sext i32 %i.qe to i64
  %i.qg = icmp slt i64 %indvars.iv.next1009.i, %i.qf
  br i1 %i.qg, label %bb.dc, label %.critedge.thread.us.us.i, !llvm.loop !67

.critedge.thread.us.us.loopexit942.i:             ; preds = %.lr.ph66
  %.pre1088.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  br label %.critedge.thread.us.us.i

.critedge.thread.us.us.i:                         ; preds = %.critedge2.split.us.us.i.loopexit, %.critedge766.us.us.i, %.preheader776.split.us835.split.us.preheader.i, %.lr.ph.split, %.critedge766.preheader.loopexit.us.us.i, %.critedge.thread.us.us.loopexit942.i, %.lr.ph826.split.us.split.us.i
  %i.qh = phi i32 [ %i.pj, %.preheader776.split.us835.split.us.preheader.i ], [ %.pre1088.i, %.critedge.thread.us.us.loopexit942.i ], [ %i.pj, %.lr.ph826.split.us.split.us.i ], [ %i.rj, %.critedge766.preheader.loopexit.us.us.i ], [ %i.pj, %.lr.ph.split ], [ %i.qc, %.critedge766.us.us.i ], [ %i.pj, %.critedge2.split.us.us.i.loopexit ] ; 2 uses
  %i.qi = phi i32 [ %i.pk, %.preheader776.split.us835.split.us.preheader.i ], [ %.pre1088.i, %.critedge.thread.us.us.loopexit942.i ], [ %i.pk, %.lr.ph826.split.us.split.us.i ], [ %i.rk, %.critedge766.preheader.loopexit.us.us.i ], [ %i.pk, %.lr.ph.split ], [ %i.qd, %.critedge766.us.us.i ], [ %i.pk, %.critedge2.split.us.us.i.loopexit ] ; 2 uses
  %indvars.iv.next1012.i = add nuw nsw i64 %indvars.iv1011.i, 1 ; 2 uses
  %i.qj = trunc nuw i64 %indvars.iv.next1012.i to i32
  %i.qk = icmp sgt i32 %i.qi, %i.qj
  br i1 %i.qk, label %.lr.ph826.split.us.split.us.i, label %.loopexit778.i, !llvm.loop !68

end_hunk_0
begin_hunk_1_@_Z13gmx_clustsizeiPPc:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i568.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i567.i
  %i.als = load i64, ptr %i.alq, align 8, !tbaa !20
  %i.alt = add i64 %i.als, 1
  call void @_ZdlPvm(ptr noundef %i.alp, i64 noundef %i.alt) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit570.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit570.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i567.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i568.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #15
  %i.alu = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  store ptr %i.alu, ptr %34, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 34, ptr %i.a, align 8, !tbaa !124
  %i.alv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc573.i unwind label %bb.gy ; 3 uses

.noexc573.i:                                      ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit570.i
  store ptr %i.alv, ptr %34, align 8, !tbaa !44
  %i.alw = load i64, ptr %i.a, align 8, !tbaa !124 ; 3 uses
  store i64 %i.alw, ptr %i.alu, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.alv, ptr noundef nonnull align 1 dereferenceable(34) @.str.85, i64 34, i1 false)
  %i.alx = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 %i.alw, ptr %i.alx, align 8, !tbaa !42
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alv, i64 %i.alw
  store i8 0, ptr %i.aly, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #15
  %i.alz = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 6 uses
  store ptr %i.alz, ptr %35, align 8, !tbaa !40
  store i64 7957695015191409222, ptr %i.alz, align 8
  %i.ama = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 8, ptr %i.ama, align 8, !tbaa !42
  %i.amb = getelementptr inbounds nuw i8, ptr %35, i64 24
  store i8 0, ptr %i.amb, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #15
  %i.amc = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 6 uses
  store ptr %i.amc, ptr %36, align 8, !tbaa !40
  store i32 1702521171, ptr %i.amc, align 8
  %i.amd = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 4, ptr %i.amd, align 8, !tbaa !42
  %i.ame = getelementptr inbounds nuw i8, ptr %36, i64 20
  store i8 0, ptr %i.ame, align 4, !tbaa !20
  store <2 x double> splat (double 1.000000e+00), ptr %37, align 16, !tbaa !125
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %37, i64 16
  store double 1.000000e+00, ptr %.sroa.7.0..sroa_idx21.i, align 16, !tbaa !125
  invoke void @_Z10write_xpm3P8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPfS9_PS9_fff5t_rgbSB_SB_Pi(ptr noundef %i.alm, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %36, i32 noundef %.1287.i, i32 noundef %.3750.i, ptr noundef %.1744.i, ptr noundef %i.mi, ptr noundef %.1.i, float noundef 0.000000e+00, float noundef %.3314.lcssa.i, float noundef %.2.lcssa.i, ptr noundef nonnull byval(%struct.t_rgb) align 8 %37, ptr noundef nonnull byval(%struct.t_rgb) align 8 %39, ptr noundef nonnull byval(%struct.t_rgb) align 8 %38, ptr noundef nonnull %i.m)
          to label %bb.gt unwind label %bb.gz

bb.gt:                                            ; preds = %.noexc573.i
  %i.amf = load ptr, ptr %36, align 8, !tbaa !44  ; 2 uses
  %i.amg = icmp eq ptr %i.amf, %i.amc
  br i1 %i.amg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583.i: ; preds = %bb.gt
  %i.amh = load i64, ptr %i.amc, align 8, !tbaa !20
  %i.ami = add i64 %i.amh, 1
  call void @_ZdlPvm(ptr noundef %i.amf, i64 noundef %i.ami) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585.i: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  %i.amj = load ptr, ptr %35, align 8, !tbaa !44  ; 2 uses
  %i.amk = icmp eq ptr %i.amj, %i.alz
  br i1 %i.amk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585.i
  %i.aml = load i64, ptr %i.alz, align 8, !tbaa !20
  %i.amm = add i64 %i.aml, 1
  call void @_ZdlPvm(ptr noundef %i.amj, i64 noundef %i.amm) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  %i.amn = load ptr, ptr %34, align 8, !tbaa !44  ; 2 uses
  %i.amo = icmp eq ptr %i.amn, %i.alu
  br i1 %i.amo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.i
  %i.amp = load i64, ptr %i.alu, align 8, !tbaa !20
  %i.amq = add i64 %i.amp, 1
  call void @_ZdlPvm(ptr noundef %i.amn, i64 noundef %i.amq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  %i.amr = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.alm)
          to label %bb.gu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 0 uses

bb.gu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.48, i32 noundef 497, ptr noundef %.1744.i)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i:         ; preds = %bb.gu
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.48, i32 noundef 498, ptr noundef %i.mi)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594.preheader.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594.preheader.i: ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i
  br i1 %i.agi, label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i, label %.lr.ph933.preheader.i

.lr.ph933.preheader.i:                            ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594.preheader.i
  %wide.trip.count1079.i = zext nneg i32 %.1287.i to i64
  br label %.lr.ph933.i

.lr.ph933.i:                                      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit596.i, %.lr.ph933.preheader.i
  %indvars.iv1075.i = phi i64 [ 0, %.lr.ph933.preheader.i ], [ %indvars.iv.next1076.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit596.i ] ; 2 uses
  %i.ams = getelementptr inbounds nuw [8 x i8], ptr %.1.i, i64 %indvars.iv1075.i
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !75
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.48, i32 noundef 501, ptr noundef %i.amt)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit596.i unwind label %.loopexit.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit596.i:      ; preds = %.lr.ph933.i
  %indvars.iv.next1076.i = add nuw nsw i64 %indvars.iv1075.i, 1 ; 2 uses
  %exitcond1080.not.i = icmp eq i64 %indvars.iv.next1076.i, %wide.trip.count1079.i
  br i1 %exitcond1080.not.i, label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i, label %.lr.ph933.i, !llvm.loop !130

bb.gv:                                            ; preds = %._crit_edge927.i
  %i.amu = landingpad { ptr, i32 }
          cleanup
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gq
  %i.amv = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #15
  br label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %bb.gv
  %.pn369.i = phi { ptr, i32 } [ %i.amv, %bb.gw ], [ %i.amu, %bb.gv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %.loopexit.split-lp.i

bb.gy:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit570.i
  %i.amw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i

bb.gz:                                            ; preds = %.noexc573.i
  %i.amx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amy = load ptr, ptr %36, align 8, !tbaa !44  ; 2 uses
  %i.amz = icmp eq ptr %i.amy, %i.amc
  br i1 %i.amz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597.i: ; preds = %bb.gz
  %i.ana = load i64, ptr %i.amc, align 8, !tbaa !20
  %i.anb = add i64 %i.ana, 1
  call void @_ZdlPvm(ptr noundef %i.amy, i64 noundef %i.anb) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599.i: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i597.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #15
  %i.anc = load ptr, ptr %35, align 8, !tbaa !44  ; 2 uses
  %i.and = icmp eq ptr %i.anc, %i.alz
  br i1 %i.and, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599.i
  %i.ane = load i64, ptr %i.alz, align 8, !tbaa !20
  %i.anf = add i64 %i.ane, 1
  call void @_ZdlPvm(ptr noundef %i.anc, i64 noundef %i.anf) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit599.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i600.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #15
  %i.ang = load ptr, ptr %34, align 8, !tbaa !44  ; 2 uses
  %i.anh = icmp eq ptr %i.ang, %i.alu
  br i1 %i.anh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i
  %i.ani = load i64, ptr %i.alu, align 8, !tbaa !20
  %i.anj = add i64 %i.ani, 1
  call void @_ZdlPvm(ptr noundef %i.ang, i64 noundef %i.anj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603.i, %bb.gy
  %.pn371.pn.pn.i = phi { ptr, i32 } [ %i.amw, %bb.gy ], [ %i.amx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i603.i ], [ %i.amx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit602.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #15
  br label %.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i: ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit596.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594.preheader.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.48, i32 noundef 503, ptr noundef %.1.i)
          to label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i:        ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit594._crit_edge.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.48, i32 noundef 504, ptr noundef %i.mb)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i:         ; preds = %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.48, i32 noundef 505, ptr noundef %i.me)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit609.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit609.i:      ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i
  %i.ank = load ptr, ptr %i.n, align 8, !tbaa !38
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.48, i32 noundef 506, ptr noundef %i.ank)
          to label %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit611.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit611.i:      ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit609.i
  %.not.i.i.i.i612.i = icmp eq ptr %.sroa.0648.1.i, null
  br i1 %.not.i.i.i.i612.i, label %_ZN3gmx17RangePartitioningD2Ev.exit613.i, label %bb.ha

bb.ha:                                            ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit611.i
  %i.anl = ptrtoint ptr %.sroa.23.1.i.a to i64
  %i.anm = sub i64 %i.anl, %i.no
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0648.1.i, i64 noundef %i.anm) #17
  br label %_ZN3gmx17RangePartitioningD2Ev.exit613.i

_ZN3gmx17RangePartitioningD2Ev.exit613.i:         ; preds = %bb.ha, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit611.i
  %i.ann = load ptr, ptr %5, align 8, !tbaa !44   ; 2 uses
  %i.ano = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.anp = icmp eq ptr %i.ann, %i.ano
  br i1 %i.anp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i615.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614.i: ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit613.i
  %i.anq = load i64, ptr %i.ano, align 8, !tbaa !20
  %i.anr = add i64 %i.anq, 1
  call void @_ZdlPvm(ptr noundef %i.ann, i64 noundef %i.anr) #17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i615.i

.loopexit.split-lp.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i, %bb.gx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.i, %bb.gn, %bb.gd, %bb.fv, %bb.fu, %_ZNSt10filesystem7__cxx114pathD2Ev.exit23, %bb.dm, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.i, %bb.cl
  %.sroa.23.2.i = phi ptr [ %.sroa.23.1.i.a, %bb.fu ], [ %.sroa.23.1.i.a, %_ZNSt10filesystem7__cxx114pathD2Ev.exit23 ], [ %.sroa.23.0.i, %bb.cl ], [ %.sroa.23.1.i.a, %bb.dm ], [ %.sroa.23.1.i.a, %bb.gd ], [ %.sroa.23.1.i.a, %bb.fv ], [ %.sroa.23.1.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i ], [ %.sroa.23.1.i.a, %bb.gx ], [ %.sroa.23.1.i.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.i ], [ %.sroa.23.1.i.a, %bb.gn ], [ %.sroa.23.1.i.a, %.loopexit.i ], [ %.sroa.23.1.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %.sroa.23.1.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.23.1.i.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ]
  %.sroa.0648.2.i = phi ptr [ %.sroa.0648.1.i, %bb.fu ], [ %.sroa.0648.1.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit23 ], [ %.sroa.0648.0.i, %bb.cl ], [ %.sroa.0648.1.i, %bb.dm ], [ %.sroa.0648.1.i, %bb.gd ], [ %.sroa.0648.1.i, %bb.fv ], [ %.sroa.0648.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i ], [ %.sroa.0648.1.i, %bb.gx ], [ %.sroa.0648.1.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.i ], [ %.sroa.0648.1.i, %bb.gn ], [ %.sroa.0648.1.i, %.loopexit.i ], [ %.sroa.0648.1.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %.sroa.0648.1.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %.sroa.0648.1.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.pn379.pn.pn.i = phi { ptr, i32 } [ %.pn357.i, %bb.fu ], [ %.pn379.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit23 ], [ %i.ku, %bb.cl ], [ %i.su, %bb.dm ], [ %.pn359.pn.pn.i, %bb.gd ], [ %i.ace, %bb.fv ], [ %.pn371.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit605.i ], [ %.pn369.i, %bb.gx ], [ %.pn365.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit565.i ], [ %.pn363.i, %bb.gn ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit784.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp785.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit779.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ] ; 2 uses
  %.not.i.i.i.i617.i = icmp eq ptr %.sroa.0648.2.i, null
  br i1 %.not.i.i.i.i617.i, label %.body.i, label %.thread.i

.thread.i:                                        ; preds = %.loopexit.split-lp.i, %bb.fw, %bb.dq, %bb.dp, %bb.do, %bb.dn, %.loopexit.split-lp.thread.i, %bb.cu, %bb.cr, %bb.cq
  %.pn379.pn.pn762.i = phi { ptr, i32 } [ %.pn379.pn.pn.i, %.loopexit.split-lp.i ], [ %i.acf, %bb.fw ], [ %i.sv, %bb.dn ], [ %i.sw, %bb.do ], [ %i.sx, %bb.dp ], [ %i.sy, %bb.dq ], [ %i.lv, %bb.cq ], [ %i.lw, %bb.cr ], [ %i.ly, %bb.cu ], [ %lpad.loopexit773.us.us.us.us.i, %.loopexit.split-lp.thread.i ]
  %.sroa.0648.2761.i = phi ptr [ %.sroa.0648.2.i, %.loopexit.split-lp.i ], [ %.sroa.0648.1.i, %bb.fw ], [ %.sroa.0648.1.i, %bb.dn ], [ %.sroa.0648.1.i, %bb.do ], [ %.sroa.0648.1.i, %bb.dp ], [ %.sroa.0648.1.i, %bb.dq ], [ %i.kq, %bb.cq ], [ %i.kq, %bb.cr ], [ %i.kq, %bb.cu ], [ %.sroa.0648.1.i, %.loopexit.split-lp.thread.i ] ; 2 uses
  %.sroa.23.2760.i = phi ptr [ %.sroa.23.2.i, %.loopexit.split-lp.i ], [ %.sroa.23.1.i.a, %bb.fw ], [ %.sroa.23.1.i.a, %bb.dn ], [ %.sroa.23.1.i.a, %bb.do ], [ %.sroa.23.1.i.a, %bb.dp ], [ %.sroa.23.1.i.a, %bb.dq ], [ %i.ks, %bb.cq ], [ %i.ks, %bb.cr ], [ %i.ks, %bb.cu ], [ %.sroa.23.1.i.a, %.loopexit.split-lp.thread.i ]
  %i.ans = ptrtoint ptr %.sroa.23.2760.i to i64
  %i.ant = ptrtoint ptr %.sroa.0648.2761.i to i64
  %i.anu = sub i64 %i.ans, %i.ant
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0648.2761.i, i64 noundef %i.anu) #17
  br label %.body.i

.body.i:                                          ; preds = %.thread.i, %.loopexit.split-lp.i, %.body.i.i, %bb.ce, %bb.bx, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449.i, %bb.bf, %bb.bc, %bb.az, %bb.aw, %bb.at, %bb.aq
  %.pn386.pn.pn.i = phi { ptr, i32 } [ %.pn386.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit449.i ], [ %.pn384.i, %bb.bx ], [ %i.hw, %bb.aq ], [ %.pn352.i, %bb.ce ], [ %.pn349.i, %bb.bu ], [ %.pn347.i, %bb.bf ], [ %.pn344.pn.i, %bb.bc ], [ %.pn341.pn.i, %bb.az ], [ %.pn338.pn.i, %bb.aw ], [ %.pn.pn.i, %bb.at ], [ %i.kr, %.body.i.i ], [ %.pn379.pn.pn762.i, %.thread.i ], [ %.pn379.pn.pn.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.anv = load ptr, ptr %5, align 8, !tbaa !44   ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.anx = icmp eq ptr %i.anv, %i.anw
  br i1 %i.anx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619.i: ; preds = %.body.i
  %i.any = load i64, ptr %i.anw, align 8, !tbaa !20
  %i.anz = add i64 %i.any, 1
  call void @_ZdlPvm(ptr noundef %i.anv, i64 noundef %i.anz) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619.i, %bb.ap
  %.pn386.pn.pn.pn.i = phi { ptr, i32 } [ %i.hv, %bb.ap ], [ %.pn386.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619.i ], [ %.pn386.pn.pn.i, %.body.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.hb

bb.hb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621.i, %bb.ao
  %.pn386.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn386.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621.i ], [ %i.hu, %bb.ao ]
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i615.i: ; preds = %_ZN3gmx17RangePartitioningD2Ev.exit613.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i614.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN10gmx_mtop_tD1Ev(ptr noundef nonnull align 8 dead_on_return(768) dereferenceable(768) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %39)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  %i.aoa = load ptr, ptr %i.ad, align 8, !tbaa !35
  invoke void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef %i.aoa)
          to label %bb.hc unwind label %bb.c

bb.hc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i615.i, %bb.b
  %i.aob = getelementptr inbounds nuw i8, ptr %41, i64 592 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 16, !tbaa !131 ; 3 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %41, i64 600
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.aoc, %i.aoe
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.hc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.aok, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.aoc, %bb.hc ] ; 3 uses
  %i.aof = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.aoh = icmp eq ptr %i.aof, %i.aog
  br i1 %i.aoh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aoi = load i64, ptr %i.aog, align 8, !tbaa !20
  %i.aoj = add i64 %i.aoi, 1
  call void @_ZdlPvm(ptr noundef %i.aof, i64 noundef %i.aoj) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.aok = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.aok, %i.aoe
  br i1 %.not.i.i.i.i14, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !133

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aob, align 16, !tbaa !131
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.hc
  %i.aol = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.aoc, %bb.hc ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.aol, null
  br i1 %.not.i.i1.i.i, label %_ZN8t_filenmD2Ev.exit, label %bb.hd

bb.hd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.aom = getelementptr inbounds nuw i8, ptr %41, i64 608
  %i.aon = load ptr, ptr %i.aom, align 16, !tbaa !134
  %i.aoo = ptrtoint ptr %i.aon to i64
  %i.aop = ptrtoint ptr %i.aol to i64
  %i.aoq = sub i64 %i.aoo, %i.aop
  call void @_ZdlPvm(ptr noundef nonnull %i.aol, i64 noundef %i.aoq) #17
  br label %_ZN8t_filenmD2Ev.exit

_ZN8t_filenmD2Ev.exit:                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.hd
  %i.aor = getelementptr inbounds nuw i8, ptr %41, i64 536 ; 2 uses
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !131 ; 3 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %41, i64 544
  %i.aou = load ptr, ptr %i.aot, align 16, !tbaa !132 ; 2 uses
  %.not4.i.i.i.i.1 = icmp eq ptr %i.aos, %i.aou
  br i1 %.not4.i.i.i.i.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1, label %.lr.ph.i.i.i.i.1

.lr.ph.i.i.i.i.1:                                 ; preds = %_ZN8t_filenmD2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.05.i.i.i.i.1 = phi ptr [ %i.apa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1 ], [ %i.aos, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %i.aov = load ptr, ptr %.05.i.i.i.i.1, align 8, !tbaa !44 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 16 ; 2 uses
  %i.aox = icmp eq ptr %i.aov, %i.aow
  br i1 %i.aox, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1
  %i.aoy = load i64, ptr %i.aow, align 8, !tbaa !20
  %i.aoz = add i64 %i.aoy, 1
  call void @_ZdlPvm(ptr noundef %i.aov, i64 noundef %i.aoz) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.1
  %i.apa = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.1, i64 32 ; 2 uses
  %.not.i.i.i.i14.1 = icmp eq ptr %i.apa, %i.aou
  br i1 %.not.i.i.i.i14.1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, label %.lr.ph.i.i.i.i.1, !llvm.loop !133

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.1
  %.pr.i.i.1 = load ptr, ptr %i.aor, align 8, !tbaa !131
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1, %_ZN8t_filenmD2Ev.exit
  %i.apb = phi ptr [ %.pr.i.i.1, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.1 ], [ %i.aos, %_ZN8t_filenmD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.1 = icmp eq ptr %i.apb, null
  br i1 %.not.i.i1.i.i.1, label %_ZN8t_filenmD2Ev.exit.1, label %bb.he

bb.he:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.apc = getelementptr inbounds nuw i8, ptr %41, i64 552
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !134
  %i.ape = ptrtoint ptr %i.apd to i64
  %i.apf = ptrtoint ptr %i.apb to i64
  %i.apg = sub i64 %i.ape, %i.apf
  call void @_ZdlPvm(ptr noundef nonnull %i.apb, i64 noundef %i.apg) #17
  br label %_ZN8t_filenmD2Ev.exit.1

_ZN8t_filenmD2Ev.exit.1:                          ; preds = %bb.he, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.1
  %i.aph = getelementptr inbounds nuw i8, ptr %41, i64 480 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 16, !tbaa !131 ; 3 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %41, i64 488
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !132 ; 2 uses
  %.not4.i.i.i.i.2 = icmp eq ptr %i.api, %i.apk
  br i1 %.not4.i.i.i.i.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2, label %.lr.ph.i.i.i.i.2

.lr.ph.i.i.i.i.2:                                 ; preds = %_ZN8t_filenmD2Ev.exit.1, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.05.i.i.i.i.2 = phi ptr [ %i.apq, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2 ], [ %i.api, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %i.apl = load ptr, ptr %.05.i.i.i.i.2, align 8, !tbaa !44 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 16 ; 2 uses
  %i.apn = icmp eq ptr %i.apl, %i.apm
  br i1 %i.apn, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2
  %i.apo = load i64, ptr %i.apm, align 8, !tbaa !20
  %i.app = add i64 %i.apo, 1
  call void @_ZdlPvm(ptr noundef %i.apl, i64 noundef %i.app) #17
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2: ; preds = %.lr.ph.i.i.i.i.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.2
  %i.apq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.2, i64 32 ; 2 uses
  %.not.i.i.i.i14.2 = icmp eq ptr %i.apq, %i.apk
  br i1 %.not.i.i.i.i14.2, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, label %.lr.ph.i.i.i.i.2, !llvm.loop !133

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.2
  %.pr.i.i.2 = load ptr, ptr %i.aph, align 16, !tbaa !131
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2, %_ZN8t_filenmD2Ev.exit.1
  %i.apr = phi ptr [ %.pr.i.i.2, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.2 ], [ %i.api, %_ZN8t_filenmD2Ev.exit.1 ] ; 3 uses
  %.not.i.i1.i.i.2 = icmp eq ptr %i.apr, null
  br i1 %.not.i.i1.i.i.2, label %_ZN8t_filenmD2Ev.exit.2, label %bb.hf

bb.hf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
  %i.aps = getelementptr inbounds nuw i8, ptr %41, i64 496
  %i.apt = load ptr, ptr %i.aps, align 16, !tbaa !134
  %i.apu = ptrtoint ptr %i.apt to i64
  %i.apv = ptrtoint ptr %i.apr to i64
  %i.apw = sub i64 %i.apu, %i.apv
  call void @_ZdlPvm(ptr noundef nonnull %i.apr, i64 noundef %i.apw) #17
  br label %_ZN8t_filenmD2Ev.exit.2

_ZN8t_filenmD2Ev.exit.2:                          ; preds = %bb.hf, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.2
end_hunk_1
