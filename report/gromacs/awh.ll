Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/awh?download=true
inline.NumInlined: 1383
inline.NumDeleted: 900
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii:bb.a
  %i.au = getelementptr i8, ptr %.sroa.033.2.i.i.i.i.i.i, i64 65
  %.val.i23.i.i.i.i.i.i = load i8, ptr %i.au, align 1, !tbaa !204, !range !109, !noundef !110
  %i.av = trunc nuw i8 %.val.i23.i.i.i.i.i.i to i1
  %spec.select.i.i.i.i.i.i = select i1 %i.av, ptr %.sroa.033.2.i.i.i.i.i.i, ptr %i.x
  br label %.loopexit359

.loopexit.split.loop.exit41.i.i.i.i.i.i:          ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 104
  br label %.loopexit359

.loopexit.split.loop.exit43.i.i.i.i.i.i:          ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 208
  br label %.loopexit359

.loopexit.split.loop.exit45.i.i.i.i.i.i:          ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.033.050.i.i.i.i.i.i, i64 312
  br label %.loopexit359

.loopexit359:                                     ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.split.loop.exit45.i.i.i.i.i.i, %.loopexit.split.loop.exit43.i.i.i.i.i.i, %.loopexit.split.loop.exit41.i.i.i.i.i.i, %bb.v, %bb.t, %bb.r, %._crit_edge.i.i.i.i.i.i
  %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.033.1.i.i.i.i.i.i, %bb.t ], [ %spec.select.i.i.i.i.i.i, %bb.v ], [ %i.x, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.033.0.lcssa.i.i.i.i.i.i, %bb.r ], [ %i.ax, %.loopexit.split.loop.exit43.i.i.i.i.i.i ], [ %i.aw, %.loopexit.split.loop.exit41.i.i.i.i.i.i ], [ %i.ay, %.loopexit.split.loop.exit45.i.i.i.i.i.i ], [ %.sroa.033.050.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not332 = icmp eq ptr %.val161, %.sroa.010.0.in.sroa.speculated.i.i.i.i.i.i
  br i1 %.not332, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit359
  invoke void @_Z11please_citeP8_IO_FILEPKc(ptr noundef nonnull %1, ptr noundef nonnull @.str.5)
          to label %bb.x unwind label %bb.f

bb.x:                                             ; preds = %.loopexit359, %bb.w, %bb.i
  %i.az = invoke noundef zeroext i1 @_ZN3gmx31haveBiasSharingWithinSimulationERKNS_9AwhParamsE(ptr noundef nonnull align 8 dereferenceable(49) %5)
          to label %bb.y unwind label %bb.f

bb.y:                                             ; preds = %bb.x
  br i1 %i.az, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @.str.6)
          to label %bb.aa unwind label %.thread

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.ab unwind label %.thread298

bb.ab:                                            ; preds = %bb.aa
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %11, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %13, align 8, !tbaa !213
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii, ptr %i.bb, align 8, !tbaa !215
  %.sroa.4290.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.2, ptr %.sroa.4290.0..sroa_idx, align 8, !tbaa !215
  %.sroa.5291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 215, ptr %.sroa.5291.0..sroa_idx, align 8, !tbaa !18
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.ba, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @__cxa_throw(ptr %i.ba, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.dj unwind label %bb.ad

.thread:                                          ; preds = %bb.z
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread298:                                       ; preds = %bb.aa
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #26
  br label %.sink.split

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %.0118 = phi i1 [ false, %bb.ac ], [ true, %bb.ab ]
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br i1 %.0118, label %bb.ae, label %.body

.sink.split:                                      ; preds = %.thread, %.thread298
  %.pn153.pn297.ph = phi { ptr, i32 } [ %i.bd, %.thread298 ], [ %i.bc, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split, %bb.ad
  %.pn153.pn297 = phi { ptr, i32 } [ %i.be, %bb.ad ], [ %.pn153.pn297.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.ba) #26
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !217, !range !109, !noundef !110
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = icmp ne ptr %4, null
  %or.cond = and i1 %i.bi, %i.bh
  br i1 %or.cond, label %bb.ag, label %.loopexit358

bb.ag:                                            ; preds = %bb.af
  %i.bj = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #24
          to label %.noexc164 unwind label %bb.ai ; 3 uses

.noexc164:                                        ; preds = %bb.ag
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !218, !noalias !220
  invoke void @_ZN3gmx11BiasSharingC1ERKNS_9AwhParamsERKNS_7MpiCommEP10tmpi_comm_(ptr noundef nonnull align 8 dereferenceable(104) %i.bj, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.bl)
          to label %_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit unwind label %bb.ah, !noalias !220

bb.ah:                                            ; preds = %.noexc164
  %i.bm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 104) #25, !noalias !220
  br label %.body

_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %.noexc164
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !223 ; 3 uses
  store ptr %i.bj, ptr %i.h, align 8, !tbaa !223
  %.not.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i.i.i.i: ; preds = %_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  tail call void @_ZN3gmx11BiasSharingD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.bn) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef 104) #25
  br label %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx11BiasSharingEEclEPS1_.exit.i.i.i.i, %_ZSt11make_uniqueIN3gmx11BiasSharingEJRKNS0_9AwhParamsERKNS0_7MpiCommERKP10tmpi_comm_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  br i1 %.not126, label %.loopexit358, label %.preheader

.preheader:                                       ; preds = %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit
  %i.bo = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.bp = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = sdiv exact i64 %i.bs, 104
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %.loopexit358

bb.ai:                                            ; preds = %bb.ag
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader, %bb.al
  %indvars.iv = phi i64 [ %i.cc, %bb.al ], [ 0, %.preheader ] ; 3 uses
  %i.bx = phi ptr [ %i.cm, %bb.al ], [ %i.bp, %.preheader ]
  %i.by = getelementptr inbounds nuw [104 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 88
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !224 ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  %i.cc = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  br i1 %i.cb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph
  %i.cd = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !13
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18
  %i.ch = trunc nuw nsw i64 %i.cc to i32
  %i.ci = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, i32 noundef %i.ch, i32 noundef %i.ca, i32 noundef %i.cg) #26 ; 0 uses
  br label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.cj = trunc nuw nsw i64 %i.cc to i32
  %i.ck = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.8, i32 noundef %i.cj) #26 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.cl = load ptr, ptr %i.m, align 8, !tbaa !201
  %i.cm = load ptr, ptr %5, align 8, !tbaa !200   ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 104
  %sext = shl i64 %i.cq, 32
  %i.cr = ashr exact i64 %sext, 32
  %i.cs = icmp slt i64 %i.cc, %i.cr
  br i1 %i.cs, label %.lr.ph, label %.loopexit358, !llvm.loop !225

.loopexit358:                                     ; preds = %bb.al, %.preheader, %_ZNSt10unique_ptrIN3gmx11BiasSharingESt14default_deleteIS1_EED2Ev.exit, %bb.af
  %i.ct = invoke noundef float @_Z27constantEnsembleTemperatureRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %2)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %.loopexit358
  %i.cu = fpext float %i.ct to double
  %i.cv = fmul double %i.cu, f0x3F81072C483AF26D
  %i.cw = fdiv double 1.000000e+00, %i.cv         ; 4 uses
  %i.cx = load ptr, ptr %5, align 8, !tbaa !200   ; 3 uses
  %i.cy = load ptr, ptr %i.m, align 8, !tbaa !201 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cx to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph446, label %._crit_edge447

.lr.ph446:                                        ; preds = %bb.am
  %i.dd = udiv exact i64 %i.db, 104
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 600
  %i.df = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.aq

._crit_edge447.loopexit:                          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.val.i.pre = load ptr, ptr %5, align 8, !tbaa !200
  %.val18.i.pre = load ptr, ptr %i.m, align 8, !tbaa !201
  br label %._crit_edge447

._crit_edge447:                                   ; preds = %._crit_edge447.loopexit, %bb.am
  %.val18.i = phi ptr [ %.val18.i.pre, %._crit_edge447.loopexit ], [ %i.cy, %bb.am ] ; 3 uses
  %.val.i = phi ptr [ %.val.i.pre, %._crit_edge447.loopexit ], [ %i.cx, %bb.am ] ; 3 uses
  %i.dk = load ptr, ptr %i.i, align 8, !tbaa !196 ; 2 uses
  %i.dl = call fastcc noundef zeroext i1 @_ZN3gmxL18anyDimUsesProviderERKNS_9AwhParamsENS_25AwhCoordinateProviderTypeE(ptr %.val.i, ptr %.val18.i, i32 noundef 0)
  %i.dm = icmp eq ptr %i.dk, null
  %or.cond.not.i = and i1 %i.dm, %i.dl
  br i1 %or.cond.not.i, label %bb.an, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge447
  %.not34.i = icmp eq ptr %.val.i, %.val18.i
  br i1 %.not34.i, label %_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit, label %.lr.ph36.i

bb.an:                                            ; preds = %._crit_edge447
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_tENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 510) #23
          to label %.noexc166 unwind label %.loopexit.split-lp339

.noexc166:                                        ; preds = %bb.an
  unreachable

.lr.ph36.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.sroa.026.035.i = phi ptr [ %i.dq, %._crit_edge.i ], [ %.val.i, %.preheader.i ] ; 3 uses
  %i.dn = load ptr, ptr %.sroa.026.035.i, align 8, !tbaa !226 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.026.035.i, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !227 ; 2 uses
  %.not3132.i = icmp eq ptr %i.dn, %i.dp
  br i1 %.not3132.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc167, %.lr.ph36.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.026.035.i, i64 104 ; 2 uses
  %.not.i165 = icmp eq ptr %i.dq, %.val18.i
  br i1 %.not.i165, label %_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit, label %.lr.ph36.i

.lr.ph.i:                                         ; preds = %.lr.ph36.i, %.noexc167
  %.sroa.0.033.i = phi ptr [ %i.dv, %.noexc167 ], [ %i.dn, %.lr.ph36.i ] ; 3 uses
  %i.dr = load i32, ptr %.sroa.0.033.i, align 8, !tbaa !228
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.ao, label %.noexc167

bb.ao:                                            ; preds = %.lr.ph.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !231
  invoke void @_Z32register_external_pull_potentialP6pull_tiPKc(ptr noundef %i.dk, i32 noundef %i.du, ptr noundef nonnull @.str.60)
          to label %.noexc167 unwind label %.loopexit338

.noexc167:                                        ; preds = %bb.ao, %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 64 ; 2 uses
  %.not31.i = icmp eq ptr %i.dv, %i.dp
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i

bb.ap:                                            ; preds = %.loopexit358
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %.lr.ph446, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvars.iv514 = phi i64 [ 0, %.lr.ph446 ], [ %indvars.iv.next515, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.dx = getelementptr inbounds nuw [104 x i8], ptr %i.cx, i64 %indvars.iv514 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !226 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !227 ; 2 uses
  %.not337436 = icmp eq ptr %i.dy, %i.ea
  br i1 %.not337436, label %._crit_edge, label %.lr.ph441

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.eb = ptrtoint ptr %.sroa.11276.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.aq
  %.sroa.0271.0.lcssa = phi ptr [ null, %bb.aq ], [ %.sroa.0271.1, %._crit_edge.loopexit ] ; 7 uses
  %.sroa.11276.0.lcssa = phi i64 [ 0, %bb.aq ], [ %i.eb, %._crit_edge.loopexit ]
  %.sroa.20.0.lcssa = phi ptr [ null, %bb.aq ], [ %.sroa.20.1, %._crit_edge.loopexit ] ; 3 uses
  %i.ec = load ptr, ptr %i.g, align 8, !tbaa !232, !nonnull !110, !align !233
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !234
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #26
  %i.eh = ptrtoint ptr %.sroa.0271.0.lcssa to i64 ; 2 uses
  %i.ei = sub i64 %.sroa.11276.0.lcssa, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0271.0.lcssa, i64 %i.ei
  %i.ek = load double, ptr %i.dh, align 8, !tbaa !243
  %i.el = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.em = trunc nuw nsw i64 %indvars.iv514 to i32
  invoke void @_ZN3gmx4BiasC1EiRKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddPKNS_11BiasSharingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_16ThisRankWillDoIOENS_10BiasParams18DisableUpdateSkipsE(ptr noundef nonnull align 8 dereferenceable(588) %25, i32 noundef %i.em, ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull align 8 dereferenceable(104) %i.dx, ptr %.sroa.0271.0.lcssa, ptr %i.ej, double noundef %i.cw, double noundef %i.ek, ptr noundef %i.el, ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.eg, i32 noundef 0)
          to label %bb.ch unwind label %bb.cp

.lr.ph441:                                        ; preds = %bb.aq, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.0267.0440 = phi ptr [ %i.ik, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.dy, %bb.aq ] ; 5 uses
  %.sroa.20.0439 = phi ptr [ %.sroa.20.1, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ null, %bb.aq ] ; 24 uses
  %.sroa.11276.0438 = phi ptr [ %.sroa.11276.1, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ null, %bb.aq ] ; 13 uses
  %.sroa.0271.0437 = phi ptr [ %.sroa.0271.1, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ null, %bb.aq ] ; 26 uses
  %i.en = load i32, ptr %.sroa.0267.0440, align 8, !tbaa !228
  switch i32 %i.en, label %bb.ar [
    i32 0, label %bb.ax
    i32 1, label %bb.cc
  ]

bb.ar:                                            ; preds = %.lr.ph441
  %i.eo = call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull @.str.9)
          to label %bb.as unwind label %.thread301

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(56) %16)
          to label %bb.at unwind label %.thread305

bb.at:                                            ; preds = %bb.as
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %15, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %17, align 8, !tbaa !213
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii, ptr %i.ep, align 8, !tbaa !215
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr @.str.2, ptr %.sroa.4264.0..sroa_idx, align 8, !tbaa !215
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 259, ptr %.sroa.5265.0..sroa_idx, align 8, !tbaa !18
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.eo, ptr noundef nonnull align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  invoke void @__cxa_throw(ptr %i.eo, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #23
          to label %bb.dj unwind label %bb.av

.thread301:                                       ; preds = %bb.ar
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split612

.thread305:                                       ; preds = %bb.as
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #26
  br label %.sink.split612

bb.av:                                            ; preds = %bb.at, %bb.au
  %.087 = phi i1 [ false, %bb.au ], [ true, %bb.at ]
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #26
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %16) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br i1 %.087, label %bb.aw, label %bb.cs

.sink.split612:                                   ; preds = %.thread301, %.thread305
  %.pn143.pn304.ph = phi { ptr, i32 } [ %i.er, %.thread305 ], [ %i.eq, %.thread301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.aw

bb.aw:                                            ; preds = %.sink.split612, %bb.av
  %.pn143.pn304 = phi { ptr, i32 } [ %i.es, %bb.av ], [ %.pn143.pn304.ph, %.sink.split612 ]
  call void @__cxa_free_exception(ptr %i.eo) #26
  br label %bb.cs

bb.ax:                                            ; preds = %.lr.ph441
  %i.et = load ptr, ptr %i.de, align 8, !tbaa !202
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0267.0440, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !231
  %i.ex = sext i32 %i.ew to i64
  %i.ey = load ptr, ptr %i.eu, align 8, !tbaa !337
  %i.ez = getelementptr inbounds nuw [176 x i8], ptr %i.ey, i64 %i.ex ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 40
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !340
  %i.fc = icmp eq i32 %i.fb, 3
  br i1 %i.fc, label %bb.ay, label %bb.be

bb.ay:                                            ; preds = %bb.ax
  %i.fd = call ptr @__cxa_allocate_exception(i64 24) #26 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #26
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull @.str.10)
          to label %bb.az unwind label %.thread309

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(56) %19)
          to label %bb.ba unwind label %.thread313

bb.ba:                                            ; preds = %bb.az
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %18, align 8, !tbaa !213
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %20, align 8, !tbaa !213
  %i.fe = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii, ptr %i.fe, align 8, !tbaa !215
  %.sroa.4260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr @.str.2, ptr %.sroa.4260.0..sroa_idx, align 8, !tbaa !215
  %.sroa.5261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i32 267, ptr %.sroa.5261.0..sroa_idx, align 8, !tbaa !18
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.fd, ptr noundef nonnull align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %20)
end_hunk_0
begin_hunk_1_@_ZN3gmx3AwhC2EP8_IO_FILERK10t_inputrecRKNS_7MpiCommEPK14gmx_multisim_tRKNS_9AwhParamsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP6pull_tii:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 40 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hr, %.sroa.20.0439
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !357

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc182
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.hp, %.noexc182 ], [ %i.hs, %.lr.ph.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0271.0437, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0271.0437, i64 noundef %i.hh) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.cb, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.ht = getelementptr inbounds nuw [40 x i8], ptr %i.hp, i64 %i.hn
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

.loopexit348:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit350 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp349:                            ; preds = %bb.bu
  %lpad.loopexit.split-lp351 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit353:                                     ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit355 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp354:                            ; preds = %bb.ca
  %lpad.loopexit.split-lp356 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cc:                                            ; preds = %.lr.ph441
  %i.hu = load i32, ptr %i.k, align 8, !tbaa !198 ; 2 uses
  %.not.i.i183 = icmp eq ptr %.sroa.11276.0438, %.sroa.20.0439
  br i1 %.not.i.i183, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  store double %i.cw, ptr %.sroa.11276.0438, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11276.0438, i64 8
  store i32 %i.hu, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11276.0438, i64 24
  store i8 1, ptr %.sroa.7233.0..sroa_idx, align 8
  %.sroa.8237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11276.0438, i64 32
  store double 1.000000e+00, ptr %.sroa.8237.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.ce:                                            ; preds = %bb.cc
  %i.hv = ptrtoint ptr %.sroa.20.0439 to i64
  %i.hw = ptrtoint ptr %.sroa.0271.0437 to i64
  %i.hx = sub i64 %i.hv, %i.hw                    ; 4 uses
  %i.hy = icmp eq i64 %i.hx, 9223372036854775800
  br i1 %i.hy, label %bb.cf, label %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc187 unwind label %.loopexit.split-lp344

.noexc187:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ce
  %i.hz = sdiv exact i64 %i.hx, 40                ; 3 uses
  %.sroa.speculated.i.i.i.i184 = call i64 @llvm.umax.i64(i64 %i.hz, i64 1)
  %i.ia = add nsw i64 %.sroa.speculated.i.i.i.i184, %i.hz ; 2 uses
  %i.ib = icmp ult i64 %i.ia, %i.hz
  %i.ic = call i64 @llvm.umin.i64(i64 %i.ia, i64 230584300921369395)
  %i.id = select i1 %i.ib, i64 230584300921369395, i64 %i.ic ; 3 uses
  %.not.i.i.i.i185 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i185)
  %i.ie = mul nuw nsw i64 %i.id, 40
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #24
          to label %.noexc188 unwind label %.loopexit343 ; 5 uses

.noexc188:                                        ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hx ; 4 uses
  store double %i.cw, ptr %i.ig, align 8
  %.sroa.6.0..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i32 %i.hu, ptr %.sroa.6.0..sroa_idx230, align 8
  %.sroa.7233.0..sroa_idx234 = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  store i8 1, ptr %.sroa.7233.0..sroa_idx234, align 8
  %.sroa.8237.0..sroa_idx238 = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  store double 1.000000e+00, ptr %.sroa.8237.0..sroa_idx238, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.0271.0437, %.sroa.20.0439
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i186

.lr.ph.i.i.i.i.i.i186:                            ; preds = %.noexc188, %.lr.ph.i.i.i.i.i.i186
  %.012.i.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i186 ], [ %i.if, %.noexc188 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i186 ], [ %.sroa.0271.0437, %.noexc188 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i.i.i.i, i64 40, i1 false), !alias.scope !358
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ih, %.sroa.20.0439
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i186, !llvm.loop !357

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i186, %.noexc188
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.if, %.noexc188 ], [ %i.ii, %.lr.ph.i.i.i.i.i.i186 ]
  %.not.i23.i.i.i = icmp eq ptr %.sroa.0271.0437, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0271.0437, i64 noundef %i.hx) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.cg, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.if, i64 %i.id
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

.loopexit343:                                     ; preds = %_ZNKSt6vectorIN3gmx9DimParamsESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit345 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

.loopexit.split-lp344:                            ; preds = %bb.cf
  %lpad.loopexit.split-lp346 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %bb.cd, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.by, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %.sroa.0271.1 = phi ptr [ %.sroa.0271.0437, %bb.by ], [ %i.hp, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.if, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0271.0437, %bb.cd ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn.pn = phi ptr [ %.sroa.11276.0438, %bb.by ], [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.11276.0438, %bb.cd ]
  %.sroa.20.1 = phi ptr [ %.sroa.20.0439, %bb.by ], [ %i.ht, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.ij, %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.20.0439, %bb.cd ] ; 2 uses
  %.sroa.11276.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn.pn, i64 40 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0267.0440, i64 64 ; 2 uses
  %.not337 = icmp eq ptr %i.ik, %i.ea
  br i1 %.not337, label %._crit_edge.loopexit, label %.lr.ph441

bb.ch:                                            ; preds = %._crit_edge
  %i.il = load ptr, ptr %i.di, align 8, !tbaa !362 ; 3 uses
  %i.im = load ptr, ptr %i.dj, align 8, !tbaa !363
  %.not.i189 = icmp eq ptr %i.il, %i.im
  br i1 %.not.i189, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  invoke void @_ZN3gmx4BiasC2EOS0_(ptr noundef nonnull align 8 dereferenceable(588) %10, ptr noundef nonnull align 8 dereferenceable(588) %25)
          to label %.noexc190 unwind label %bb.cq

.noexc190:                                        ; preds = %bb.ci
  invoke void @_ZN3gmx19BiasCoupledToSystemC1ENS_4BiasERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(616) %i.il, ptr noundef nonnull align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i unwind label %bb.cj

bb.cj:                                            ; preds = %.noexc190
  %i.in = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %10) #26
  br label %.body191

_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i: ; preds = %.noexc190
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.io = load ptr, ptr %i.di, align 8, !tbaa !362
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 616
  store ptr %i.ip, ptr %i.di, align 8, !tbaa !362
  br label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit

bb.ck:                                            ; preds = %bb.ch
  invoke void @_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE17_M_realloc_insertIJNS0_4BiasERS_IiSaIiEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.il, ptr noundef nonnull align 8 dereferenceable(588) %25, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit unwind label %bb.cq

_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit: ; preds = %bb.ck, %_ZNSt15__new_allocatorIN3gmx19BiasCoupledToSystemEE9constructIS1_JNS0_4BiasERSt6vectorIiSaIiEEEEEvPT_DpOT0_.exit.i
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %25) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  %i.iq = load ptr, ptr %i.di, align 8, !tbaa !364
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -616
  invoke void @_ZNK3gmx4Bias24printInitializationToLogEP8_IO_FILE(ptr noundef nonnull align 8 dereferenceable(588) %i.ir, ptr noundef %1)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit
  %.not.i.i.i194 = icmp eq ptr %.sroa.0271.0.lcssa, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.is = ptrtoint ptr %.sroa.20.0.lcssa to i64
  %i.it = sub i64 %i.is, %i.eh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0271.0.lcssa, i64 noundef %i.it) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit:   ; preds = %bb.cl, %bb.cm
  %i.iu = load ptr, ptr %14, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i195 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i.i195, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit
  %i.iv = load ptr, ptr %i.dg, align 8, !tbaa !15
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.iu to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.iu, i64 noundef %i.iy) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  %indvars.iv.next515 = add nuw nsw i64 %indvars.iv514, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next515, %i.dd
  br i1 %exitcond.not, label %._crit_edge447.loopexit, label %bb.aq, !llvm.loop !365

bb.co:                                            ; preds = %_ZNSt6vectorIN3gmx19BiasCoupledToSystemESaIS1_EE12emplace_backIJNS0_4BiasERS_IiSaIiEEEEERS1_DpOT_.exit
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cp:                                            ; preds = %._crit_edge
  %i.ja = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cq:                                            ; preds = %bb.ck, %bb.ci
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body191

.body191:                                         ; preds = %bb.cj, %bb.cq
  %eh.lpad-body192 = phi { ptr, i32 } [ %i.jb, %bb.cq ], [ %i.in, %bb.cj ]
  call void @_ZN3gmx4BiasD2Ev(ptr noundef nonnull align 8 dead_on_return(588) dereferenceable(588) %25) #26
  br label %bb.cr

bb.cr:                                            ; preds = %.body191, %bb.cp
  %.pn128 = phi { ptr, i32 } [ %eh.lpad-body192, %.body191 ], [ %i.ja, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #26
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit343, %.loopexit.split-lp344, %.loopexit353, %.loopexit.split-lp354, %.loopexit348, %.loopexit.split-lp349, %bb.aw, %bb.av, %bb.bm, %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.bc, %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.co, %bb.cr
  %.sroa.0271.0408 = phi ptr [ %.sroa.0271.0437, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.0271.0.lcssa, %bb.cr ], [ %.sroa.0271.0.lcssa, %bb.co ], [ %.sroa.0271.0437, %bb.aw ], [ %.sroa.0271.0437, %bb.av ], [ %.sroa.0271.0437, %.loopexit.split-lp354 ], [ %.sroa.0271.0437, %bb.bd ], [ %.sroa.0271.0437, %bb.bc ], [ %.sroa.0271.0437, %bb.bq ], [ %.sroa.0271.0437, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0271.0437, %.loopexit.split-lp349 ], [ %.sroa.0271.0437, %bb.bm ], [ %.sroa.0271.0437, %.loopexit348 ], [ %.sroa.0271.0437, %.loopexit353 ], [ %.sroa.0271.0437, %.loopexit343 ], [ %.sroa.0271.0437, %.loopexit.split-lp344 ] ; 3 uses
  %.sroa.20.0379 = phi ptr [ %.sroa.20.0439, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.sroa.20.0.lcssa, %bb.cr ], [ %.sroa.20.0.lcssa, %bb.co ], [ %.sroa.20.0439, %bb.aw ], [ %.sroa.20.0439, %bb.av ], [ %.sroa.20.0439, %.loopexit.split-lp354 ], [ %.sroa.20.0439, %bb.bd ], [ %.sroa.20.0439, %bb.bc ], [ %.sroa.20.0439, %bb.bq ], [ %.sroa.20.0439, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.20.0439, %.loopexit.split-lp349 ], [ %.sroa.20.0439, %bb.bm ], [ %.sroa.20.0439, %.loopexit348 ], [ %.sroa.20.0439, %.loopexit353 ], [ %.sroa.20.0439, %.loopexit343 ], [ %.sroa.20.0439, %.loopexit.split-lp344 ]
  %.pn143.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn134, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn128, %bb.cr ], [ %i.iz, %bb.co ], [ %.pn143.pn304, %bb.aw ], [ %i.es, %bb.av ], [ %lpad.loopexit.split-lp356, %.loopexit.split-lp354 ], [ %.pn139.pn312, %bb.bd ], [ %i.fh, %bb.bc ], [ %.pn134.pn.pn318, %bb.bq ], [ %.pn134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %lpad.loopexit.split-lp351, %.loopexit.split-lp349 ], [ %i.ft, %bb.bm ], [ %lpad.loopexit350, %.loopexit348 ], [ %lpad.loopexit355, %.loopexit353 ], [ %lpad.loopexit345, %.loopexit343 ], [ %lpad.loopexit.split-lp346, %.loopexit.split-lp344 ]
  %.not.i.i.i196 = icmp eq ptr %.sroa.0271.0408, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.jc = ptrtoint ptr %.sroa.20.0379 to i64
  %i.jd = ptrtoint ptr %.sroa.0271.0408 to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0271.0408, i64 noundef %i.je) #25
  br label %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197

_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197: ; preds = %bb.cs, %bb.ct
  %i.jf = load ptr, ptr %14, align 8, !tbaa !13   ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIiSaIiEED2Ev.exit199, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197
  %i.jg = load ptr, ptr %i.dg, align 8, !tbaa !15
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit199

_ZNSt6vectorIiSaIiEED2Ev.exit199:                 ; preds = %_ZNSt6vectorIN3gmx9DimParamsESaIS1_EED2Ev.exit197, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body

_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit: ; preds = %._crit_edge.i, %.preheader.i
  %i.jk = load ptr, ptr %i.h, align 8, !tbaa !223 ; 2 uses
  %.not333 = icmp eq ptr %i.jk, null
  br i1 %.not333, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN3gmx3Awh19registerAwhWithPullERKNS_9AwhParamsEP6pull_t.exit
  %i.jl = load ptr, ptr %i.g, align 8, !tbaa !232, !nonnull !110, !align !233
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 12
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !234
  %i.jo = icmp eq i32 %i.jn, 0
  br i1 %i.jo, label %bb.cw, label %_ZNSt6vectorImSaImEED2Ev.exit

bb.cw:                                            ; preds = %bb.cv
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !362 ; 3 uses
  %i.jr = load ptr, ptr %0, align 8, !tbaa !366   ; 3 uses
  %i.js = ptrtoint ptr %i.jq to i64
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = sub i64 %i.js, %i.jt
  %i.jv = sdiv exact i64 %i.ju, 616               ; 3 uses
  %i.jw = icmp ugt i64 %i.jv, 1152921504606846975
  br i1 %i.jw, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
          to label %.noexc200 unwind label %bb.cz

.noexc200:                                        ; preds = %bb.cx
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %.not334 = icmp eq ptr %i.jq, %i.jr
  br i1 %.not334, label %._crit_edge454, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.cy
  %i.jx = shl nuw nsw i64 %i.jv, 3
  %i.jy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jx) #24
          to label %.lr.ph453.preheader unwind label %bb.cz ; 3 uses

.lr.ph453.preheader:                              ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jy, i64 %i.jv
  br label %.lr.ph453

._crit_edge454.loopexit:                          ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.ka = ptrtoint ptr %.sroa.11.2 to i64
  br label %._crit_edge454

._crit_edge454:                                   ; preds = %bb.cy, %._crit_edge454.loopexit
  %i.kb = phi ptr [ %.pre, %._crit_edge454.loopexit ], [ %i.jk, %bb.cy ]
  %.sroa.0216.0.lcssa = phi ptr [ %.sroa.0216.4, %._crit_edge454.loopexit ], [ null, %bb.cy ] ; 6 uses
  %.sroa.11.0.lcssa = phi i64 [ %i.ka, %._crit_edge454.loopexit ], [ 0, %bb.cy ]
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.4, %._crit_edge454.loopexit ], [ null, %bb.cy ] ; 2 uses
  %i.kc = ptrtoint ptr %.sroa.0216.0.lcssa to i64 ; 2 uses
  %i.kd = sub i64 %.sroa.11.0.lcssa, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.0216.0.lcssa, i64 %i.kd
  invoke void @_ZN3gmx47biasesAreCompatibleForSharingBetweenSimulationsERKNS_9AwhParamsENS_8ArrayRefIKmEERKNS_11BiasSharingE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr %.sroa.0216.0.lcssa, ptr %i.ke, ptr noundef nonnull align 8 dereferenceable(104) %i.kb)
          to label %bb.df unwind label %bb.cz

.loopexit338:                                     ; preds = %bb.ao
  %lpad.loopexit340 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp339:                            ; preds = %bb.an
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cz:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.cx, %._crit_edge454
  %.sroa.0216.1 = phi ptr [ null, %bb.cx ], [ %.sroa.0216.0.lcssa, %._crit_edge454 ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %.sroa.17.1 = phi ptr [ null, %bb.cx ], [ %.sroa.17.0.lcssa, %._crit_edge454 ], [ null, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ]
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

.lr.ph453:                                        ; preds = %.lr.ph453.preheader, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %.sroa.0213.0452 = phi ptr [ %i.lc, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.jr, %.lr.ph453.preheader ] ; 3 uses
  %.sroa.17.0451 = phi ptr [ %.sroa.17.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.jz, %.lr.ph453.preheader ] ; 5 uses
  %.sroa.11.0450 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.jy, %.lr.ph453.preheader ] ; 3 uses
  %.sroa.0216.0449 = phi ptr [ %.sroa.0216.4, %_ZNSt6vectorImSaImEE9push_backEOm.exit ], [ %i.jy, %.lr.ph453.preheader ] ; 7 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0213.0452, i64 256
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.0213.0452, i64 264
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !367
  %i.kj = load ptr, ptr %i.kg, align 8, !tbaa !137
  %i.kk = ptrtoint ptr %i.ki to i64
  %i.kl = ptrtoint ptr %i.kj to i64
  %i.km = sub i64 %i.kk, %i.kl
  %i.kn = sdiv exact i64 %i.km, 96                ; 2 uses
  %.not.i.i202 = icmp eq ptr %.sroa.11.0450, %.sroa.17.0451
  br i1 %.not.i.i202, label %bb.db, label %bb.da

bb.da:                                            ; preds = %.lr.ph453
  store i64 %i.kn, ptr %.sroa.11.0450, align 8, !tbaa !33
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.db:                                            ; preds = %.lr.ph453
  %i.ko = ptrtoint ptr %.sroa.17.0451 to i64
  %i.kp = ptrtoint ptr %.sroa.0216.0449 to i64
  %i.kq = sub i64 %i.ko, %i.kp                    ; 6 uses
  %i.kr = icmp eq i64 %i.kq, 9223372036854775800
  br i1 %i.kr, label %bb.dc, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #23
          to label %.noexc206 unwind label %.loopexit.split-lp

.noexc206:                                        ; preds = %bb.dc
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.db
  %i.ks = ashr exact i64 %i.kq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i203 = call i64 @llvm.umax.i64(i64 %i.ks, i64 1)
  %i.kt = add nsw i64 %.sroa.speculated.i.i.i.i203, %i.ks ; 2 uses
  %i.ku = icmp ult i64 %i.kt, %i.ks
  %i.kv = call i64 @llvm.umin.i64(i64 %i.kt, i64 1152921504606846975)
  %i.kw = select i1 %i.ku, i64 1152921504606846975, i64 %i.kv ; 3 uses
  %.not.i.i.i.i204 = icmp ne i64 %i.kw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i204)
  %i.kx = shl nuw nsw i64 %i.kw, 3
  %i.ky = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kx) #24
          to label %.noexc207 unwind label %.loopexit ; 4 uses

.noexc207:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.kz = getelementptr inbounds i8, ptr %i.ky, i64 %i.kq ; 2 uses
  store i64 %i.kn, ptr %i.kz, align 8, !tbaa !33
  %i.la = icmp sgt i64 %i.kq, 0
  br i1 %i.la, label %bb.dd, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.dd:                                            ; preds = %.noexc207
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ky, ptr align 8 %.sroa.0216.0449, i64 %i.kq, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.dd, %.noexc207
  %.not.i17.i.i.i205 = icmp eq ptr %.sroa.0216.0449, null
  br i1 %.not.i17.i.i.i205, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0449, i64 noundef %i.kq) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.de, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
end_hunk_1
