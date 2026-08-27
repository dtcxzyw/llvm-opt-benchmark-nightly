Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/posix_endpoint?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1302
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17grpc_event_engine12experimental17PosixEndpointImpl9TcpDoReadERN4absl12lts_202505126StatusE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !149
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %_ZN4absl12lts_202505126StatusD2Ev.exit136.thread

bb.bh:                                            ; preds = %_ZSt3getIN17grpc_event_engine12experimental10PosixErrorEJlS2_EERKT_RKSt7variantIJDpT0_EE.exit.i, %bb.aw
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.bi:                                            ; preds = %_ZNK17grpc_event_engine12experimental12PosixErrorOrIlE8StrErrorB5cxx11Ev.exit
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

bb.bj:                                            ; preds = %bb.ax
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.ay
  %i.ha = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505126StatusD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #39
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.ha, %bb.bk ], [ %i.gz, %bb.bj ] ; 2 uses
  %i.hb = load ptr, ptr %11, align 8, !tbaa !153  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148: ; preds = %bb.bl
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !149
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148, %bb.bi
  %.pn.pn = phi { ptr, i32 } [ %i.gy, %bb.bi ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i148 ], [ %.pn, %bb.bl ] ; 2 uses
  %i.hg = load ptr, ptr %14, align 8, !tbaa !153  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hi = icmp eq ptr %i.hg, %i.hh
  br i1 %i.hi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150
  %i.hj = load i64, ptr %i.hh, align 8, !tbaa !149
  %i.hk = add i64 %i.hj, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hk) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %bb.bh
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.bh ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  br label %bb.ch

bb.bm:                                            ; preds = %bb.x
  %i.hl = invoke noundef nonnull align 8 dereferenceable(4264) ptr @_ZN9grpc_core6PerCpuINS_20GlobalStatsCollector4DataEE8this_cpuEv(ptr noundef nonnull align 8 dereferenceable(24) @_ZN9grpc_core19NoDestructSingletonINS_20GlobalStatsCollectorEE6value_E)
          to label %.noexc154 unwind label %.loopexit212

.noexc154:                                        ; preds = %bb.bm
  %i.hm = trunc i64 %spec.select.i to i32
  %i.hn = invoke noundef i32 @_ZN9grpc_core24Histogram_16777216_20_649BucketForEi(i32 noundef %i.hm)
          to label %bb.bn unwind label %.loopexit212

bb.bn:                                            ; preds = %.noexc154
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hl, i64 664
  %i.hp = sext i32 %i.hn to i64
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hp
  %i.hr = atomicrmw add ptr %i.hq, i64 1 monotonic, align 8 ; 0 uses
  %i.hs = uitofp nneg i64 %spec.select.i to double
  %i.ht = load double, ptr %i.an, align 8, !tbaa !33
  %i.hu = fadd double %i.ht, %i.hs
  store double %i.hu, ptr %i.an, align 8, !tbaa !33
  %i.hv = load i8, ptr %i.ae, align 4, !tbaa !102, !range !103, !noundef !157 ; 2 uses
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bo, label %thread-pre-split193

bb.bo:                                            ; preds = %bb.bn
  %i.hx = load i64, ptr %i.ah, align 8, !tbaa !113 ; 2 uses
  %i.hy = icmp ult i64 %i.hx, 16
  %i.hz = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not100243252 = icmp eq ptr %i.hz, null
  %.not100243 = select i1 %i.hy, i1 true, i1 %.not100243252
  br i1 %.not100243, label %thread-pre-split193, label %.lr.ph246

.lr.ph246:                                        ; preds = %bb.bo
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hx
  %i.ib = ptrtoint ptr %i.ia to i64
  br label %bb.bp

bb.bp:                                            ; preds = %.lr.ph246, %__cmsg_nxthdr.exit
  %.068244 = phi ptr [ %i.hz, %.lr.ph246 ], [ %i.iy, %__cmsg_nxthdr.exit ] ; 8 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.068244, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !158
  %i.ie = icmp eq i32 %i.id, 6
  br i1 %i.ie, label %bb.bq, label %thread-pre-split

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr inbounds nuw i8, ptr %.068244, i64 12
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !158
  %i.ih = icmp eq i32 %i.ig, 36
  br i1 %i.ih, label %bb.br, label %thread-pre-split

bb.br:                                            ; preds = %bb.bq
  %i.ii = load i64, ptr %.068244, align 8, !tbaa !18 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 20
  br i1 %i.ij, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ik = getelementptr inbounds nuw i8, ptr %.068244, i64 16
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !158 ; 2 uses
  store i32 %i.il, ptr %i.aa, align 16, !tbaa !105
  br label %bb.bv

thread-pre-split:                                 ; preds = %bb.bq, %bb.bp
  %.pr = load i64, ptr %.068244, align 8, !tbaa !18
  br label %bb.bt

bb.bt:                                            ; preds = %thread-pre-split, %bb.br
  %i.im = phi i64 [ %.pr, %thread-pre-split ], [ %i.ii, %bb.br ] ; 4 uses
  %i.in = icmp ult i64 %i.im, 16
  br i1 %i.in, label %thread-pre-split193, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.io = sub i64 0, %i.im
  %i.ip = and i64 %i.io, 7
  %i.iq = or disjoint i64 %i.ip, 16               ; 2 uses
  %i.ir = ptrtoint ptr %.068244 to i64
  %i.is = sub i64 %i.ib, %i.ir                    ; 2 uses
  %i.it = icmp ult i64 %i.is, %i.iq
  %i.iu = sub nuw i64 %i.is, %i.iq
  %i.iv = icmp ult i64 %i.iu, %i.im
  %or.cond.i = select i1 %i.it, i1 true, i1 %i.iv
  br i1 %or.cond.i, label %thread-pre-split193, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.bu
  %i.iw = add nuw i64 %i.im, 7
  %i.ix = and i64 %i.iw, -8
  %i.iy = getelementptr inbounds nuw i8, ptr %.068244, i64 %i.ix
  %.not100 = icmp eq ptr %.068244, null
  br i1 %.not100, label %thread-pre-split193, label %bb.bp, !llvm.loop !159

thread-pre-split193:                              ; preds = %bb.bu, %bb.bt, %__cmsg_nxthdr.exit, %bb.bo, %bb.bn
  %.pr194 = load i32, ptr %i.aa, align 16, !tbaa !105
  br label %bb.bv

bb.bv:                                            ; preds = %thread-pre-split193, %bb.bs
  %i.iz = phi i32 [ %.pr194, %thread-pre-split193 ], [ %i.il, %bb.bs ]
  %i.ja = add i64 %spec.select.i, %.072           ; 4 uses
  %i.jb = icmp eq i32 %i.iz, 0
  br i1 %i.jb, label %.loopexit211, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jc = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !100 ; 2 uses
  %i.jf = icmp eq i64 %i.ja, %i.je
  br i1 %i.jf, label %.loopexit211, label %.preheader

.preheader:                                       ; preds = %bb.bw
  %.not253 = icmp eq i64 %.091, 0
  br i1 %.not253, label %_ZN4absl12lts_202505126StatusD2Ev.exit136, label %.lr.ph250

.lr.ph250:                                        ; preds = %.preheader, %bb.cc
  %.0249 = phi i64 [ %i.js, %bb.cc ], [ 0, %.preheader ] ; 2 uses
  %.065248 = phi i64 [ %.1, %bb.cc ], [ 0, %.preheader ] ; 5 uses
  %.066247 = phi i64 [ %.2, %bb.cc ], [ %spec.select.i, %.preheader ] ; 5 uses
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.0249 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !28 ; 4 uses
  %.not101 = icmp ult i64 %.066247, %i.ji
  br i1 %.not101, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph250
  %i.jj = sub nuw nsw i64 %.066247, %i.ji
  br label %bb.cc

bb.by:                                            ; preds = %.lr.ph250
  %.not102 = icmp eq i64 %.066247, 0
  %i.jk = load ptr, ptr %i.jg, align 16, !tbaa !26 ; 2 uses
  br i1 %.not102, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.066247
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.065248
  store ptr %i.jl, ptr %i.jm, align 16, !tbaa !26
  %i.jn = sub i64 %i.ji, %.066247
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.065248
  store ptr %i.jk, ptr %i.jo, align 16, !tbaa !26
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.sink = phi i64 [ %i.ji, %bb.ca ], [ %i.jn, %bb.bz ]
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.065248
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  store i64 %.sink, ptr %i.jq, align 8, !tbaa !28
  %i.jr = add i64 %.065248, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bx
  %.2 = phi i64 [ %i.jj, %bb.bx ], [ 0, %bb.cb ]
  %.1 = phi i64 [ %.065248, %bb.bx ], [ %i.jr, %bb.cb ] ; 2 uses
  %i.js = add nuw i64 %.0249, 1                   ; 2 uses
  %exitcond266.not = icmp eq i64 %i.js, %.091
  br i1 %exitcond266.not, label %_ZN4absl12lts_202505126StatusD2Ev.exit136, label %.lr.ph250, !llvm.loop !160

_ZN4absl12lts_202505126StatusD2Ev.exit136.thread: ; preds = %bb.w, %_ZN4absl12lts_202505126StatusD2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZN4absl12lts_202505126StatusD2Ev.exit135, %bb.ar
  %.271.ph = phi i1 [ true, %bb.ar ], [ true, %_ZN4absl12lts_202505126StatusD2Ev.exit135 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ], [ true, %_ZN4absl12lts_202505126StatusD2Ev.exit ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit

_ZN4absl12lts_202505126StatusD2Ev.exit136:        ; preds = %bb.cc, %.preheader
  %.065.lcssa = phi i64 [ 0, %.preheader ], [ %.1, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %_ZN4absl12lts_2025051212log_internal12Check_NEImplImjEEPKcRKT_RKT0_S4_.exit

.loopexit211:                                     ; preds = %bb.bv, %_ZNK17grpc_event_engine12experimental12PosixErrorOrIlE12IsPosixErrorEi.exit128.thread, %bb.bw, %bb.q
  %.274.ph = phi i64 [ %.072, %bb.q ], [ %i.ja, %bb.bv ], [ %.072, %_ZNK17grpc_event_engine12experimental12PosixErrorOrIlE12IsPosixErrorEi.exit128.thread ], [ %i.ja, %bb.bw ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  %i.jt = load i32, ptr %i.aa, align 16, !tbaa !105
  %i.ju = icmp eq i32 %i.jt, 0
  br i1 %i.ju, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %.loopexit211
  %i.jv = load double, ptr %i.an, align 8, !tbaa !33 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jx = load double, ptr %i.jw, align 16, !tbaa !88 ; 3 uses
  %i.jy = fmul double %i.jx, 8.000000e-01
  %i.jz = fcmp ogt double %i.jv, %i.jy
  br i1 %i.jz, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.ka = fmul double %i.jx, 2.000000e+00         ; 2 uses
  %i.kb = fcmp olt double %i.ka, %i.jv
  %.sroa.speculated.i157 = select i1 %i.kb, double %i.jv, double %i.ka
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.kc = fmul double %i.jv, 1.000000e-02
  %i.kd = call double @llvm.fmuladd.f64(double %i.jx, double f0x3FEFAE147AE147AE, double %i.kc)
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %storemerge.i156 = phi double [ %i.kd, %bb.cf ], [ %.sroa.speculated.i157, %bb.ce ]
  store double %storemerge.i156, ptr %i.jw, align 16, !tbaa !88
  store double 0.000000e+00, ptr %i.an, align 8, !tbaa !33
  store i32 1, ptr %i.aa, align 16, !tbaa !105
  br label %bb.ci

bb.ch:                                            ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.at, %bb.au, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.s, %bb.r
  %.pn112 = phi { ptr, i32 } [ %i.do, %bb.r ], [ %i.dp, %bb.s ], [ %i.fk, %bb.at ], [ %i.et, %bb.ah ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %i.fl, %bb.au ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  br label %bb.cu

bb.ci:                                            ; preds = %.loopexit211, %bb.cg
  %i.ke = load i64, ptr %1, align 8, !tbaa !89    ; 3 uses
  %.not.i159 = icmp eq i64 %i.ke, 1
  br i1 %.not.i159, label %_ZN4absl12lts_202505126StatusD2Ev.exit161, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i64 1, ptr %1, align 8, !tbaa !89
  %i.kf = trunc i64 %i.ke to i1
  br i1 %i.kf, label %_ZN4absl12lts_202505126StatusD2Ev.exit161, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.kg = inttoptr i64 %i.ke to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.kg)
          to label %_ZN4absl12lts_202505126StatusD2Ev.exit161 unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kh = landingpad { ptr, i32 }
          catch ptr null
  %i.ki = extractvalue { ptr, i32 } %i.kh, 0
  call void @__clang_call_terminate(ptr %i.ki) #41
  unreachable

_ZN4absl12lts_202505126StatusD2Ev.exit161:        ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.kj = load atomic i64, ptr @_ZN9grpc_core15ExperimentFlags17experiment_flags_E monotonic, align 16 ; 2 uses
  %i.kk = and i64 %i.kj, 36028797018963968
  %.not.i.i.i = icmp eq i64 %i.kk, 0
  br i1 %.not.i.i.i, label %bb.cm, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread

bb.cm:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit161
  %.not4.i.i.i = icmp sgt i64 %i.kj, -1
  br i1 %.not4.i.i.i, label %bb.cn, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207

bb.cn:                                            ; preds = %bb.cm
  %i.kl = invoke noundef zeroext i1 @_ZN9grpc_core15ExperimentFlags17LoadFlagsAndCheckEm(i64 noundef 55)
          to label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit unwind label %.loopexit.split-lp

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit: ; preds = %bb.cn
  br i1 %i.kl, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread, label %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit161, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 3 uses
  %i.kn = load i32, ptr %i.km, align 8, !tbaa !161
  %i.ko = trunc i64 %.274.ph to i32
  %i.kp = sub i32 %i.kn, %i.ko                    ; 2 uses
  store i32 %i.kp, ptr %i.km, align 8, !tbaa !161
  %i.kq = icmp sgt i32 %i.kp, 0
  br i1 %i.kq, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread
  %i.kr = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @grpc_slice_buffer_move_first(ptr noundef nonnull align 8 dereferenceable(136) %i.kr, i64 noundef %.274.ph, ptr noundef nonnull align 8 dereferenceable(136) %i.ks)
          to label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit unwind label %.loopexit.split-lp

bb.cp:                                            ; preds = %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread
  store i32 1, ptr %i.km, align 8, !tbaa !161
  %i.kt = load ptr, ptr %i.f, align 8, !tbaa !99
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  invoke void @grpc_slice_buffer_move_first(ptr noundef nonnull align 8 dereferenceable(136) %i.kt, i64 noundef %.274.ph, ptr noundef nonnull align 8 dereferenceable(136) %i.ku)
          to label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit165 unwind label %.loopexit.split-lp

_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit165: ; preds = %bb.cp
  %i.kv = load ptr, ptr %i.f, align 8, !tbaa !99
  invoke void @grpc_slice_buffer_swap(ptr noundef nonnull align 8 dereferenceable(136) %i.kv, ptr noundef nonnull align 8 dereferenceable(136) %i.ku)
          to label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit unwind label %.loopexit.split-lp

_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207: ; preds = %bb.cm, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit
  %i.kw = load ptr, ptr %i.f, align 8, !tbaa !99  ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !100 ; 2 uses
  %i.kz = icmp ult i64 %.274.ph, %i.ky
  br i1 %i.kz, label %bb.cq, label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit

bb.cq:                                            ; preds = %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207
  %i.la = sub nuw i64 %i.ky, %.274.ph
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @grpc_slice_buffer_trim_end(ptr noundef nonnull align 8 dereferenceable(136) %i.kw, i64 noundef %i.la, ptr noundef nonnull align 8 dereferenceable(136) %i.lb)
          to label %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit unwind label %.loopexit.split-lp

_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit: ; preds = %bb.cq, %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit165, %bb.co, %_ZN4absl12lts_202505126StatusD2Ev.exit136.thread, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207
  %.3 = phi i1 [ %.271.ph, %_ZN4absl12lts_202505126StatusD2Ev.exit136.thread ], [ false, %bb.co ], [ true, %_ZN9grpc_core27IsTcpFrameSizeTuningEnabledEv.exit.thread207 ], [ true, %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit165 ], [ true, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.lc = load ptr, ptr %2, align 8, !tbaa !91
  %.not209 = icmp eq ptr %i.lc, null
  br i1 %.not209, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit118, label %bb.cr, !prof !94

bb.cr:                                            ; preds = %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !95
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !98
  %i.lh = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.cs unwind label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.le, i64 noundef %i.lg, i64 noundef %i.lh)
          to label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit118 unwind label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.li = landingpad { ptr, i32 }
          catch ptr null
  %i.lj = extractvalue { ptr, i32 } %i.li, 0
  call void @__clang_call_terminate(ptr %i.lj) #41
  unreachable

_ZN9grpc_core10latent_see5ScopeD2Ev.exit118:      ; preds = %_ZN17grpc_event_engine12experimental11SliceBuffer30MoveFirstNBytesIntoSliceBufferEmRS1_.exit, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i1 %.3

bb.cu:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e, %bb.h, %bb.ch
  %.pn116 = phi { ptr, i32 } [ %i.bp, %bb.e ], [ %.pn112, %bb.ch ], [ %i.bq, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %i.lk = load ptr, ptr %2, align 8, !tbaa !91
  %.not210 = icmp eq ptr %i.lk, null
  br i1 %.not210, label %_ZN9grpc_core10latent_see5ScopeD2Ev.exit, label %bb.cv, !prof !94

bb.cv:                                            ; preds = %bb.cu
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !95
  %i.ln = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !98
  %i.lp = invoke noundef i64 @_ZN4absl12lts_2025051219GetCurrentTimeNanosEv()
          to label %bb.cw unwind label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN9grpc_core10latent_see8Appender6AppendEPKNS0_8MetadataEll(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.lm, i64 noundef %i.lo, i64 noundef %i.lp)
end_hunk_0
begin_hunk_1_@"_ZZN17grpc_event_engine12experimental12_GLOBAL__N_120GetUlimitHardMemLockEvENK3$_0clEv":bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn30.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49 ], [ %i.bh, %bb.n ]
  resume { ptr, i32 } %.pn30.pn
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #32

declare ptr @readdir(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -2147483648, 2147483648) i64 @_ZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::allocator.42", align 1 ; 4 uses
  %2 = alloca %"class.absl::lts_20250512::StatusOr.216", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load atomic i8, ptr @_ZGVZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11 acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e, !prof !351

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11) #39
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) @_ZZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  %i.f = call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11, ptr nonnull @__dso_handle) #39 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11) #39
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @_ZN9grpc_core8LoadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.216") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext false)
  %i.g = load i64, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.g, label %.thread

bb.f:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11) #39
  br label %bb.al

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32
  %.not.i = icmp eq ptr %i.k, null                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 17
  %i.o = select i1 %.not.i, ptr %i.n, ptr %i.m    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = and i64 %i.q, 255
  %i.s = select i1 %.not.i, i64 %i.r, i64 %i.q    ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !144
  %i.u = icmp eq ptr %i.o, null
  %i.v = icmp ne i64 %i.s, 0
  %or.cond.i = and i1 %i.u, %i.v
  br i1 %or.cond.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.60) #42
          to label %.noexc22 unwind label %bb.m

.noexc22:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store i64 %i.s, ptr %i.b, align 8, !tbaa !18
  %i.w = icmp ugt i64 %i.s, 15
  br i1 %i.w, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.i
  %i.x = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc23 unwind label %bb.m   ; 2 uses

.noexc23:                                         ; preds = %.noexc.i
  store ptr %i.x, ptr %3, align 8, !tbaa !153
  %i.y = load i64, ptr %i.b, align 8, !tbaa !18
  store i64 %i.y, ptr %i.t, align 8, !tbaa !149
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc23, %bb.i
  %i.z = phi ptr [ %i.x, %.noexc23 ], [ %i.t, %bb.i ] ; 2 uses
  switch i64 %i.s, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.aa = load i8, ptr %i.o, align 1, !tbaa !149
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !149
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.o, i64 %i.s, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !147
  %i.ad = load ptr, ptr %3, align 8, !tbaa !153
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  %i.af = load ptr, ptr @_ZZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11, align 8, !tbaa !153
  %i.ag = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11, i64 8), align 8, !tbaa !147
  %i.ah = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.af, i64 noundef 0, i64 noundef %i.ag) #39 ; 3 uses
  %i.ai = icmp eq i64 %i.ah, -1
  br i1 %i.ai, label %bb.af, label %bb.n

bb.m:                                             ; preds = %.noexc.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.n:                                             ; preds = %bb.l
  %i.ak = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef signext 10, i64 noundef %i.ah) #39 ; 2 uses
  %i.al = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17grpc_event_engine12experimental12_GLOBAL__N_126ParseUlimitMemLockFromFileENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18kHardMemlockPrefixB5cxx11, i64 8), align 8, !tbaa !147
  %i.am = add nuw i64 %i.ah, 1
  %i.an = add i64 %i.am, %i.al                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  %i.ao = load i64, ptr %i.ac, align 8, !tbaa !147, !noalias !557 ; 3 uses
  %i.ap = icmp ugt i64 %i.an, %i.ao
  br i1 %i.ap, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.61, i64 noundef %i.an, i64 noundef %i.ao) #42
          to label %.noexc24 unwind label %bb.ae

.noexc24:                                         ; preds = %bb.o
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.n
  %i.aq = icmp eq i64 %i.ak, -1
  %i.ar = sub i64 %i.ak, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.as, ptr %4, align 8, !tbaa !144, !alias.scope !557
  %i.at = load ptr, ptr %3, align 8, !tbaa !153, !noalias !557
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an ; 2 uses
  %i.av = sub nuw i64 %i.ao, %i.an                ; 2 uses
  %i.aw = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.av)
  %spec.select.i.i.i = select i1 %i.aq, i64 %i.av, i64 %i.aw ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39, !noalias !557
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !18, !noalias !557
  %i.ax = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ax, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc25 unwind label %bb.ae  ; 2 uses

.noexc25:                                         ; preds = %.noexc10.i.i
  store ptr %i.ay, ptr %4, align 8, !tbaa !153, !alias.scope !557
  %i.az = load i64, ptr %i.a, align 8, !tbaa !18, !noalias !557
  store i64 %i.az, ptr %i.as, align 8, !tbaa !149, !alias.scope !557
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ba = phi ptr [ %i.ay, %.noexc25 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.q [
    i64 1, label %bb.p
    i64 0, label %bb.r
  ]

bb.p:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = load i8, ptr %i.au, align 1, !tbaa !149
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !149
  br label %bb.r

bb.q:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.au, i64 %spec.select.i.i.i, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %._crit_edge.i.i.i
  %i.bc = load i64, ptr %i.a, align 8, !tbaa !18, !noalias !557 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !147, !alias.scope !557
  %i.be = load ptr, ptr %4, align 8, !tbaa !153, !alias.scope !557
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bc
  store i8 0, ptr %i.bf, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39, !noalias !557
  %i.bg = load ptr, ptr %4, align 8, !tbaa !153, !noalias !560 ; 3 uses
  %i.bh = load i64, ptr %i.bd, align 8, !tbaa !147, !noalias !560 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh ; 4 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bk = ptrtoint ptr %i.bg to i64               ; 4 uses
  %i.bl = ashr i64 %i.bh, 2                       ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.preheader.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.r
  %5 = and i64 %i.bh, -4
  %6 = sub i64 %i.bj, %5
  %i.bn = mul nsw i64 %i.bl, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.bi, i64 %i.bn
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %.lr.ph.i.preheader.i.i.i
  %i.bo = phi ptr [ %i.cf, %bb.y ], [ %i.bi, %.lr.ph.i.preheader.i.i.i ] ; 6 uses
  %i.bp = phi i64 [ %i.cm, %bb.y ], [ %i.bj, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.ck, %bb.y ], [ %i.bl, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !149, !noalias !563
  %i.bt = zext i8 %i.bs to i32
  %i.bu = call i32 @isspace(i32 noundef %i.bt) #46, !noalias !563
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bo, i64 -2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !149, !noalias !563
  %i.bx = zext i8 %i.bw to i32
  %i.by = call i32 @isspace(i32 noundef %i.bx) #46, !noalias !563
  %.not.i.i8.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i8.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bz = getelementptr inbounds i8, ptr %i.bo, i64 -1
  %.cast.i.i.i.i = ptrtoint ptr %i.bz to i64
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 -3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !149, !noalias !563
  %i.cc = zext i8 %i.cb to i32
  %i.cd = call i32 @isspace(i32 noundef %i.cc) #46, !noalias !563
  %.not.i.i9.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i9.i.i.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds i8, ptr %i.bo, i64 -2
  %.cast22.i.i.i.i = ptrtoint ptr %i.ce to i64
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds i8, ptr %i.bo, i64 -4 ; 3 uses
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !149, !noalias !563
  %i.ch = zext i8 %i.cg to i32
  %i.ci = call i32 @isspace(i32 noundef %i.ch) #46, !noalias !563
  %.not.i.i10.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i.i10.i.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cj = getelementptr inbounds i8, ptr %i.bo, i64 -3
  %.cast23.i.i.i.i = ptrtoint ptr %i.cj to i64
  br label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.ck = add nsw i64 %.036.i.i.i.i, -1
  %i.cl = icmp sgt i64 %.036.i.i.i.i, 1
  %i.cm = ptrtoint ptr %i.cf to i64
  br i1 %i.cl, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !570

._crit_edge.i.i.i.i:                              ; preds = %bb.y, %bb.r
  %i.cn = phi i64 [ %i.bj, %bb.r ], [ %6, %bb.y ] ; 5 uses
  %i.co = phi ptr [ %i.bi, %bb.r ], [ %scevgep.i.i.i, %bb.y ] ; 2 uses
  %i.cp = sub i64 %i.cn, %i.bk
  switch i64 %i.cp, label %.loopexit [
    i64 3, label %bb.z
    i64 2, label %bb.ab
    i64 1, label %bb.ad
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cq = inttoptr i64 %i.cn to ptr
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !149, !noalias !563
  %i.ct = zext i8 %i.cs to i32
  %i.cu = call i32 @isspace(i32 noundef %i.ct) #46, !noalias !563
  %.not.i.i13.i.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i13.i.i.i.i, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = getelementptr inbounds i8, ptr %i.co, i64 -1 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i
  %i.cx = phi ptr [ %i.cv, %bb.aa ], [ %i.co, %._crit_edge.i.i.i.i ]
  %i.cy = phi i64 [ %i.cw, %bb.aa ], [ %i.cn, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !149, !noalias !563
  %i.dc = zext i8 %i.db to i32
  %i.dd = call i32 @isspace(i32 noundef %i.dc) #46, !noalias !563
  %.not.i.i14.i.i.i.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.i14.i.i.i.i, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.de = getelementptr inbounds i8, ptr %i.cx, i64 -1
  %i.df = ptrtoint ptr %i.de to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %._crit_edge.i.i.i.i
  %i.dg = phi i64 [ %i.df, %bb.ac ], [ %i.cn, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 -1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !149, !noalias !563
  %i.dk = zext i8 %i.dj to i32
  %i.dl = call i32 @isspace(i32 noundef %i.dk) #46, !noalias !563
  %.not.i.i15.i.i.i.i = icmp eq i32 %i.dl, 0
  %spec.select.i.i.i26 = select i1 %.not.i.i15.i.i.i.i, i64 %i.dg, i64 %i.bk
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.ad, %bb.ab, %bb.z, %._crit_edge.i.i.i.i, %bb.x, %bb.v, %bb.t
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i26, %bb.ad ], [ %i.cy, %bb.ab ], [ %i.cn, %bb.z ], [ %i.bk, %._crit_edge.i.i.i.i ], [ %.cast23.i.i.i.i, %bb.x ], [ %.cast22.i.i.i.i, %bb.v ], [ %.cast.i.i.i.i, %bb.t ], [ %i.bp, %.lr.ph.i.i.i.i ]
  %i.dm = sub i64 %.sink.i.i.i.i, %i.bk           ; 2 uses
  store i64 %i.dm, ptr %i.bd, align 8, !tbaa !147
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.dm
  store i8 0, ptr %i.dn, align 1, !tbaa !149
  %i.do = load i64, ptr %i.bd, align 8, !tbaa !147
  %.pre = load ptr, ptr %4, align 8, !tbaa !153   ; 6 uses
  switch i64 %i.do, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39 [
    i64 9, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 8, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.loopexit
  %i.dp = load i64, ptr %.pre, align 1
  %i.dq = xor i64 %i.dp, 7310584013770223221
  %i.dr = getelementptr i8, ptr %.pre, i64 8
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i64
  %i.du = xor i64 %i.dt, 100
  %i.dv = or i64 %i.dq, %i.du
  %i.dw = icmp ne i64 %i.dv, 0
  %i.dx = zext i1 %i.dw to i32
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28: ; preds = %.loopexit
  %i.dz = load i64, ptr %.pre, align 1
  %i.ea = icmp ne i64 %i.dz, 8751735898823356009
  %i.eb = zext i1 %i.ea to i32
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39

bb.ae:                                            ; preds = %.noexc10.i.i, %bb.o
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %i.ee = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.t
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39: ; preds = %.loopexit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28
  %i.eg = call i64 @__isoc23_strtol(ptr noundef nonnull %.pre, ptr noundef null, i32 noundef 10) #39, !inline_history !571
  %sext = shl i64 %i.eg, 32
  %i.eh = ashr exact i64 %sext, 32
  %.pre70 = load ptr, ptr %4, align 8, !tbaa !153
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39
  %i.ei = phi ptr [ %.pre70, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39 ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28 ], [ %.pre, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ] ; 2 uses
  %.013 = phi i64 [ %i.eh, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28.thread39 ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit28 ], [ -1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ej = icmp eq ptr %i.ei, %i.as
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ek = load i64, ptr %i.as, align 8, !tbaa !149
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  br label %bb.af

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.ae
  %i.em = load i64, ptr %i.t, align 8, !tbaa !149
  %i.en = add i64 %i.em, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.en) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.af:                                            ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %.114 = phi i64 [ %.013, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ 0, %bb.l ] ; 4 uses
  %i.eo = load ptr, ptr %3, align 8, !tbaa !153   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.t
  br i1 %i.ep, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.af
  %i.eq = load i64, ptr %i.t, align 8, !tbaa !149
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #43
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.m ], [ %i.ed, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.ed, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  call void @_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pr = load i64, ptr %2, align 8, !tbaa !89     ; 2 uses
  %i.es = icmp eq i64 %.pr, 1
  br i1 %i.es, label %_ZN4absl12lts_202505126StatusD2Ev.exit.i, label %.thread

_ZN4absl12lts_202505126StatusD2Ev.exit.i:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36
  %i.et = load ptr, ptr %i.j, align 8, !tbaa !32  ; 4 uses
  %i.eu = icmp ugt ptr %i.et, inttoptr (i64 1 to ptr)
  br i1 %i.eu, label %bb.ag, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.ag:                                            ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i
  %i.ev = atomicrmw sub ptr %i.et, i64 1 acq_rel, align 8
  %i.ew = icmp eq i64 %i.ev, 1
  br i1 %i.ew, label %bb.ah, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !572
  invoke void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.et)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.ai, !inline_history !574

bb.ai:                                            ; preds = %bb.ah
  %i.ez = landingpad { ptr, i32 }
          catch ptr null
  %i.fa = extractvalue { ptr, i32 } %i.ez, 0
  call void @__clang_call_terminate(ptr %i.fa) #41
  unreachable

.thread:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36
  %.21542 = phi i64 [ %.114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36 ], [ 0, %bb.e ] ; 2 uses
  %i.fb = phi i64 [ %.pr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i36 ], [ %i.g, %bb.e ] ; 2 uses
  %i.fc = trunc i64 %i.fb to i1
  br i1 %i.fc, label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.fd = inttoptr i64 %i.fb to ptr
  invoke void @_ZNK4absl12lts_2025051215status_internal9StatusRep5UnrefEv(ptr noundef nonnull align 8 dereferenceable(48) %i.fd)
          to label %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fe = landingpad { ptr, i32 }
          catch ptr null
  %i.ff = extractvalue { ptr, i32 } %i.fe, 0
  call void @__clang_call_terminate(ptr %i.ff) #41
  unreachable

_ZN4absl12lts_2025051217internal_statusor12StatusOrDataIN9grpc_core5SliceEED2Ev.exit: ; preds = %_ZN4absl12lts_202505126StatusD2Ev.exit.i, %bb.ag, %bb.ah, %.thread, %bb.aj
  %.21541 = phi i64 [ %.114, %_ZN4absl12lts_202505126StatusD2Ev.exit.i ], [ %.114, %bb.ag ], [ %.114, %bb.ah ], [ %.21542, %.thread ], [ %.21542, %bb.aj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  ret i64 %.21541

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34 ], [ %i.i, %bb.f ]
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_1
