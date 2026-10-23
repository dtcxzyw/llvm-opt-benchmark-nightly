Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_dipoles?download=true
inline.NumInlined: 537
inline.NumDeleted: 165
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z11gmx_dipolesiPPc:bb.a
  br i1 %i.gj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.gk = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.75, i32 noundef 15, ptr noundef nonnull %5)
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  br i1 %i.gk, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 1 dereferenceable(67) @.str.100, i8 noundef zeroext 2)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 1740, ptr noundef nonnull @.str.103) #23
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #22
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn32 = phi { ptr, i32 } [ %i.gm, %bb.n ], [ %i.gl, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.body

bb.p:                                             ; preds = %bb.i
  %i.gn = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.87, i32 noundef 15, ptr noundef nonnull %5)
          to label %bb.q unwind label %bb.e

bb.q:                                             ; preds = %bb.p
  %i.go = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.57, i32 noundef 17, ptr noundef nonnull %4)
          to label %bb.r unwind label %bb.e

bb.r:                                             ; preds = %bb.q
  br i1 %i.go, label %bb.s, label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.gp = load i32, ptr %i.q, align 4, !tbaa !10
  %i.gq = add i32 %i.gp, -3
  %or.cond = icmp ult i32 %i.gq, -2
  br i1 %or.cond, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(67) @.str.100, i8 noundef zeroext 2)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1750, ptr noundef nonnull @.str.104) #23
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.gs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn30 = phi { ptr, i32 } [ %i.gs, %bb.x ], [ %i.gr, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.body

bb.z:                                             ; preds = %bb.s, %bb.r
  %.024 = phi i1 [ %i.gn, %bb.r ], [ true, %bb.s ]
  %i.gt = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.97, i32 noundef 15, ptr noundef nonnull %5)
          to label %bb.aa unwind label %bb.e

bb.aa:                                            ; preds = %bb.z
  br i1 %i.gt, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gu = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.61, i32 noundef 17, ptr noundef nonnull %4)
          to label %bb.ac unwind label %bb.e

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.gu, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gv = invoke noundef zeroext i1 @_Z13opt2parg_bSetPKciPK7t_pargs(ptr noundef nonnull @.str.59, i32 noundef 17, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.e

bb.ae:                                            ; preds = %bb.aa, %bb.ac, %bb.ad
  %i.gw = phi i1 [ true, %bb.ac ], [ true, %bb.aa ], [ %i.gv, %bb.ad ]
  %i.gx = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.100, i32 noundef 1776, i64 noundef 1, i64 noundef 2464)
          to label %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit unwind label %bb.e ; 6 uses

_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit: ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #22
  %i.gy = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 27, i32 noundef 15, ptr noundef nonnull %5)
          to label %bb.af unwind label %bb.ay

bb.af:                                            ; preds = %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit
  store ptr %i.gy, ptr %i.y, align 8, !tbaa !16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.y, i8 noundef zeroext 2)
          to label %bb.ag unwind label %bb.ay

bb.ag:                                            ; preds = %bb.af
  %i.gz = invoke noundef i32 @_Z12read_tpx_topRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10t_topology(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef null, ptr noundef nonnull %i.x, ptr noundef nonnull %i.w, ptr noundef null, ptr noundef null, ptr noundef %i.gx)
          to label %bb.ah unwind label %bb.az

bb.ah:                                            ; preds = %bb.ag
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef nonnull %i.hb) #22
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.ai, %bb.ah
  %i.hc = load ptr, ptr %8, align 8, !tbaa !25    ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.hf = load i64, ptr %i.hd, align 8, !tbaa !17
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hc, i64 noundef %i.hg) #24
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.hh = load i32, ptr %i.q, align 4, !tbaa !10
  %i.hi = sext i32 %i.hh to i64
  %i.hj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.100, i32 noundef 1779, i64 noundef range(i64 -2147483648, 2147483648) %i.hi, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %bb.e ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.hk = load i32, ptr %i.q, align 4, !tbaa !10
  %i.hl = sext i32 %i.hk to i64
  %i.hm = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.100, i32 noundef 1780, i64 noundef range(i64 -2147483648, 2147483648) %i.hl, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit unwind label %bb.e

_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit:         ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.hn = load i32, ptr %i.q, align 4, !tbaa !10
  %i.ho = sext i32 %i.hn to i64
  %i.hp = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.100, i32 noundef 1781, i64 noundef range(i64 -2147483648, 2147483648) %i.ho, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit unwind label %bb.e ; 3 uses

_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit:         ; preds = %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit
  %i.hq = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 15, ptr noundef nonnull %5)
          to label %bb.aj unwind label %bb.e

bb.aj:                                            ; preds = %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gx, i64 2344
  %i.hs = load i32, ptr %i.q, align 4, !tbaa !10
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.hr, ptr noundef %i.hq, i32 noundef %i.hs, ptr noundef %i.hj, ptr noundef %i.hp, ptr noundef %i.hm)
          to label %.preheader unwind label %bb.e

.preheader:                                       ; preds = %bb.aj
  %i.ht = load i32, ptr %i.q, align 4, !tbaa !10
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 2416
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gx, i64 2424 ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gx, i64 2352
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph, %_ZL15neutralize_molsiPKiPK7t_blockP6t_atom.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZL15neutralize_molsiPKiPK7t_blockP6t_atom.exit ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv ; 3 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !27 ; 4 uses
  %i.ib = load i32, ptr %i.hy, align 4, !tbaa !10 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.preheader.i, label %bb.av

.preheader.i:                                     ; preds = %bb.ak, %._crit_edge.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %._crit_edge.i ], [ 0, %bb.ak ] ; 2 uses
  %i.id = phi i32 [ %i.ji, %._crit_edge.i ], [ %i.ib, %bb.ak ]
  %.03656.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.ak ] ; 6 uses
  %i.ie = load i32, ptr %i.hv, align 8, !tbaa !85 ; 3 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ig = sext i32 %.03656.i to i64
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !10
  %i.ij = load ptr, ptr %i.hw, align 8, !tbaa !29
  %wide.trip.count.i = zext nneg i32 %i.ie to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.am ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %indvars.iv.i
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !10
  %.not.i = icmp eq i32 %i.ii, %i.il
  br i1 %.not.i, label %.critedge.loopexit.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.al, !llvm.loop !62

.critedge.loopexit.i:                             ; preds = %bb.al
  %i.im = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.im, %.critedge.loopexit.i ] ; 3 uses
  %i.in = icmp eq i32 %.034.lcssa.i, %i.ie
  br i1 %i.in, label %.critedge.thread.i, label %bb.ap

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(67) @.str.100, i8 noundef zeroext 2)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %.critedge.thread.i
  %i.io = add nsw i32 %.03656.i, 1
  %i.ip = sext i32 %.03656.i to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !10
  %i.is = add nsw i32 %i.ir, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1558, ptr noundef nonnull @.str.115, i32 noundef %i.io, i32 noundef %i.is) #23
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %.noexc
  unreachable

bb.ao:                                            ; preds = %.noexc
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.ap:                                            ; preds = %.critedge.i
  %i.iu = load ptr, ptr %i.hw, align 8, !tbaa !29
  %i.iv = zext nneg i32 %.034.lcssa.i to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !10 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !10 ; 2 uses
  %i.ja = icmp slt i32 %i.ix, %i.iz
  br i1 %i.ja, label %.lr.ph53.preheader.i, label %._crit_edge.i

.lr.ph53.preheader.i:                             ; preds = %bb.ap
  %i.jb = sext i32 %.03656.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.id, i32 %.03656.i)
  %wide.trip.count66.i = sext i32 %smax.i to i64
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.au, %.lr.ph53.preheader.i
  %indvars.iv63.i = phi i64 [ %i.jb, %.lr.ph53.preheader.i ], [ %indvars.iv.next64.i, %bb.au ] ; 3 uses
  %.03552.i = phi i32 [ %i.ix, %.lr.ph53.preheader.i ], [ %i.jf, %bb.au ] ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv63.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph53.i
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %indvars.iv63.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !10
  %.not39.i = icmp eq i32 %i.jd, %.03552.i
  br i1 %.not39.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA67_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(67) @.str.100, i8 noundef zeroext 2)
          to label %.noexc35 unwind label %bb.e

.noexc35:                                         ; preds = %bb.ar
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1567, ptr noundef nonnull @.str.116) #23
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc35
  unreachable

bb.at:                                            ; preds = %.noexc35
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

bb.au:                                            ; preds = %bb.aq
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %i.jf = add i32 %.03552.i, 1                    ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.jf, %i.iz
  br i1 %exitcond68.not.i, label %._crit_edge.loopexit.i, label %.lr.ph53.i, !llvm.loop !63

._crit_edge.loopexit.i:                           ; preds = %bb.au
  %i.jg = trunc nsw i64 %indvars.iv.next64.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ap
  %.1.lcssa.i = phi i32 [ %.03656.i, %bb.ap ], [ %i.jg, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %indvars.iv69.i
  store i32 %.034.lcssa.i, ptr %i.jh, align 4, !tbaa !10
  %i.ji = load i32, ptr %i.hy, align 4, !tbaa !10 ; 2 uses
  %i.jj = icmp slt i32 %.1.lcssa.i, %i.ji
  br i1 %i.jj, label %.preheader.i, label %._crit_edge57.loopexit.i, !llvm.loop !64

._crit_edge57.loopexit.i:                         ; preds = %._crit_edge.i
  %i.jk = trunc nuw i64 %indvars.iv.next70.i to i32
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge57.loopexit.i, %bb.ak
  %.037.lcssa.i = phi i32 [ 0, %bb.ak ], [ %i.jk, %._crit_edge57.loopexit.i ] ; 4 uses
  %i.jl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.117, i32 noundef %.037.lcssa.i) ; 0 uses
  store i32 %.037.lcssa.i, ptr %i.hy, align 4, !tbaa !10
  %i.jm = load ptr, ptr %i.hz, align 8, !tbaa !27
  %i.jn = load ptr, ptr %i.hx, align 8, !tbaa !45 ; 11 uses
  %i.jo = icmp sgt i32 %.037.lcssa.i, 0
  br i1 %i.jo, label %.lr.ph48.i, label %_ZL15neutralize_molsiPKiPK7t_blockP6t_atom.exit

.lr.ph48.i:                                       ; preds = %bb.av
  %i.jp = load ptr, ptr %i.hw, align 8, !tbaa !29
  %wide.trip.count61.i = zext nneg i32 %.037.lcssa.i to i64
  br label %bb.aw

bb.aw:                                            ; preds = %.loopexit.i, %.lr.ph48.i
  %indvars.iv58.i = phi i64 [ 0, %.lr.ph48.i ], [ %indvars.iv.next59.i, %.loopexit.i ] ; 2 uses
  %.03445.i = phi i32 [ 0, %.lr.ph48.i ], [ %spec.select.i, %.loopexit.i ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %indvars.iv58.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !10
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.js ; 2 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !10 ; 3 uses
  %i.jv = getelementptr i8, ptr %i.jt, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !10 ; 3 uses
  %i.jx = icmp slt i32 %i.ju, %i.jw               ; 2 uses
  br i1 %i.jx, label %.lr.ph.preheader.i, label %._crit_edge.i36

.lr.ph.preheader.i:                               ; preds = %bb.aw
  %i.jy = sext i32 %i.ju to i64                   ; 4 uses
  %wide.trip.count.i39 = sext i32 %i.jw to i64    ; 3 uses
  %i.jz = sub nsw i64 %wide.trip.count.i39, %i.jy
  %xtraiter = and i64 %i.jz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol

.lr.ph.i40.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i40.prol
  %indvars.iv.i41.prol = phi i64 [ %indvars.iv.next.i42.prol, %.lr.ph.i40.prol ], [ %i.jy, %.lr.ph.preheader.i ] ; 2 uses
  %i.ka = phi <2 x double> [ %i.ke, %.lr.ph.i40.prol ], [ zeroinitializer, %.lr.ph.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i40.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.kb = getelementptr inbounds [36 x i8], ptr %i.jn, i64 %indvars.iv.i41.prol
  %i.kc = load <2 x float>, ptr %i.kb, align 4, !tbaa !12
  %i.kd = fpext <2 x float> %i.kc to <2 x double>
  %i.ke = fadd <2 x double> %i.ka, %i.kd          ; 3 uses
  %indvars.iv.next.i42.prol = add nsw i64 %indvars.iv.i41.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i40.prol.loopexit, label %.lr.ph.i40.prol, !llvm.loop !65

.lr.ph.i40.prol.loopexit:                         ; preds = %.lr.ph.i40.prol, %.lr.ph.preheader.i
  %.lcssa.unr = phi <2 x double> [ poison, %.lr.ph.preheader.i ], [ %i.ke, %.lr.ph.i40.prol ]
  %indvars.iv.i41.unr = phi i64 [ %i.jy, %.lr.ph.preheader.i ], [ %indvars.iv.next.i42.prol, %.lr.ph.i40.prol ]
  %.unr = phi <2 x double> [ zeroinitializer, %.lr.ph.preheader.i ], [ %i.ke, %.lr.ph.i40.prol ]
  %i.kf = sub nsw i64 %i.jy, %wide.trip.count.i39
  %i.kg = icmp ugt i64 %i.kf, -8
  br i1 %i.kg, label %._crit_edge.i36, label %.lr.ph.i40

.lr.ph.i40:                                       ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40
  %indvars.iv.i41 = phi i64 [ %indvars.iv.next.i42.7, %.lr.ph.i40 ], [ %indvars.iv.i41.unr, %.lr.ph.i40.prol.loopexit ] ; 9 uses
  %i.kh = phi <2 x double> [ %i.lu, %.lr.ph.i40 ], [ %.unr, %.lr.ph.i40.prol.loopexit ]
  %i.ki = getelementptr inbounds [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.kj = load <2 x float>, ptr %i.ki, align 4, !tbaa !12
  %i.kk = fpext <2 x float> %i.kj to <2 x double>
  %i.kl = fadd <2 x double> %i.kh, %i.kk
  %i.km = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.kn = getelementptr i8, ptr %i.km, i64 36
  %i.ko = load <2 x float>, ptr %i.kn, align 4, !tbaa !12
  %i.kp = fpext <2 x float> %i.ko to <2 x double>
  %i.kq = fadd <2 x double> %i.kl, %i.kp
  %i.kr = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.ks = getelementptr i8, ptr %i.kr, i64 72
  %i.kt = load <2 x float>, ptr %i.ks, align 4, !tbaa !12
  %i.ku = fpext <2 x float> %i.kt to <2 x double>
  %i.kv = fadd <2 x double> %i.kq, %i.ku
  %i.kw = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.kx = getelementptr i8, ptr %i.kw, i64 108
  %i.ky = load <2 x float>, ptr %i.kx, align 4, !tbaa !12
  %i.kz = fpext <2 x float> %i.ky to <2 x double>
  %i.la = fadd <2 x double> %i.kv, %i.kz
  %i.lb = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.lc = getelementptr i8, ptr %i.lb, i64 144
  %i.ld = load <2 x float>, ptr %i.lc, align 4, !tbaa !12
  %i.le = fpext <2 x float> %i.ld to <2 x double>
  %i.lf = fadd <2 x double> %i.la, %i.le
  %i.lg = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.lh = getelementptr i8, ptr %i.lg, i64 180
  %i.li = load <2 x float>, ptr %i.lh, align 4, !tbaa !12
  %i.lj = fpext <2 x float> %i.li to <2 x double>
  %i.lk = fadd <2 x double> %i.lf, %i.lj
  %i.ll = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.lm = getelementptr i8, ptr %i.ll, i64 216
  %i.ln = load <2 x float>, ptr %i.lm, align 4, !tbaa !12
  %i.lo = fpext <2 x float> %i.ln to <2 x double>
  %i.lp = fadd <2 x double> %i.lk, %i.lo
  %i.lq = getelementptr [36 x i8], ptr %i.jn, i64 %indvars.iv.i41
  %i.lr = getelementptr i8, ptr %i.lq, i64 252
  %i.ls = load <2 x float>, ptr %i.lr, align 4, !tbaa !12
  %i.lt = fpext <2 x float> %i.ls to <2 x double>
  %i.lu = fadd <2 x double> %i.lp, %i.lt          ; 2 uses
  %indvars.iv.next.i42.7 = add nsw i64 %indvars.iv.i41, 8 ; 2 uses
  %exitcond.not.i43.7 = icmp eq i64 %indvars.iv.next.i42.7, %wide.trip.count.i39
  br i1 %exitcond.not.i43.7, label %._crit_edge.i36, label %.lr.ph.i40, !llvm.loop !66

._crit_edge.i36:                                  ; preds = %.lr.ph.i40.prol.loopexit, %.lr.ph.i40, %bb.aw
  %i.lv = phi <2 x double> [ zeroinitializer, %bb.aw ], [ %.lcssa.unr, %.lr.ph.i40.prol.loopexit ], [ %i.lu, %.lr.ph.i40 ] ; 4 uses
  %i.lw = extractelement <2 x double> %i.lv, i64 1 ; 2 uses
  %i.lx = call noundef double @llvm.fabs.f64(double %i.lw)
  %i.ly = fcmp ogt double %i.lx, 1.000000e-02
  %i.lz = zext i1 %i.ly to i32
  %spec.select.i = add nuw nsw i32 %.03445.i, %i.lz ; 3 uses
  %i.ma = extractelement <2 x double> %i.lv, i64 0 ; 2 uses
  %i.mb = fcmp ogt double %i.ma, 0.000000e+00
  %or.cond.i = and i1 %i.jx, %i.mb
  br i1 %or.cond.i, label %.lr.ph44.preheader.i, label %.loopexit.i

.lr.ph44.preheader.i:                             ; preds = %._crit_edge.i36
  %i.mc = sext i32 %i.ju to i64                   ; 4 uses
  %wide.trip.count56.i = sext i32 %i.jw to i64    ; 2 uses
  %i.md = sub nsw i64 %wide.trip.count56.i, %i.mc ; 3 uses
  %min.iters.check = icmp ult i64 %i.md, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.preheader.i
  %n.vec = and i64 %i.md, -4                      ; 3 uses
  %i.me = add nsw i64 %n.vec, %i.mc
  %broadcast.splat = shufflevector <2 x double> %i.lv, <2 x double> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat122 = shufflevector <2 x double> %i.lv, <2 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <4 x i64> poison, i64 %i.mc, i64 0
  %broadcast.splat124 = shufflevector <4 x i64> %broadcast.splatinsert123, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i64> %broadcast.splat124, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds [36 x i8], ptr %i.jn, <4 x i64> %vec.ind ; 2 uses
  %wide.masked.gather = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !50
  %i.mf = fpext <4 x float> %wide.masked.gather to <4 x double>
  %i.mg = fmul <4 x double> %broadcast.splat, %i.mf
  %i.mh = fdiv <4 x double> %i.mg, %broadcast.splat122
  %wide.gep125 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 4 ; 2 uses
  %wide.masked.gather126 = call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep125, <4 x i1> splat (i1 true), <4 x float> poison), !tbaa !51
  %i.mi = fpext <4 x float> %wide.masked.gather126 to <4 x double>
  %i.mj = fsub <4 x double> %i.mi, %i.mh
  %i.mk = fptrunc <4 x double> %i.mj to <4 x float>
end_hunk_0
