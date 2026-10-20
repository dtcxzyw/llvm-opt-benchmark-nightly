Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_spol?download=true
inline.NumInlined: 145
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z8gmx_spoliPPc:bb.a
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = alloca ptr, align 8                      ; 12 uses
  %i.g = alloca [3 x float], align 8              ; 16 uses
  %i.h = alloca [3 x float], align 4              ; 9 uses
  %i.i = alloca [3 x [3 x float]], align 16       ; 9 uses
  %4 = alloca %struct.t_pbc, align 4              ; 7 uses
  %i.j = alloca [18 x ptr], align 16              ; 5 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %5 = alloca [6 x %struct.t_pargs], align 16     ; 5 uses
  %6 = alloca [4 x %struct.t_filenm], align 16    ; 50 uses
  %7 = alloca %struct.t_inputrec, align 8         ; 8 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i32 %0, ptr %i.b, align 4, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.j, ptr noundef nonnull align 16 dereferenceable(144) @__const._Z8gmx_spoliPPc.desc, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %5, ptr noundef nonnull align 16 dereferenceable(192) @__const._Z8gmx_spoliPPc.pa, i64 192, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store i32 1, ptr %6, align 16, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i32 27, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.t, align 16, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.v, align 16, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i64 10, ptr %i.x, align 8, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr null, ptr %i.aa, align 16, !tbaa !46
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr @.str.29, ptr %i.ab, align 8, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i64 4, ptr %i.ac, align 16, !tbaa !45
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false)
  %i.ae = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 16608, i32 noundef 4, ptr noundef nonnull %6, i32 noundef 6, ptr noundef nonnull %5, i32 noundef 18, ptr noundef nonnull %i.j, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.k)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.ae, label %bb.d, label %bb.bv

bb.c:                                             ; preds = %bb.d, %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.d:                                             ; preds = %bb.b
  %i.ag = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 231, i64 noundef 1, i64 noundef 2464)
          to label %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit unwind label %bb.c ; 7 uses

_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  invoke void @_ZN10t_inputrecC1Ev(ptr noundef nonnull align 8 dereferenceable(888) %7)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.ah = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 27, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  store ptr %i.ah, ptr %i.l, align 8, !tbaa !12
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ai = invoke noundef i32 @_Z12read_tpx_topRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10t_topology(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %7, ptr noundef nonnull %i.i, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null, ptr noundef %i.ag)
          to label %bb.h unwind label %bb.n       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull %i.ak) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.i, %bb.h
  %i.al = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.aq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31, i32 noundef 239, i64 noundef 2, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit:         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.ar = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.31, i32 noundef 240, i64 noundef 2, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit:         ; preds = %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit
  %i.as = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.31, i32 noundef 241, i64 noundef 2, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit
  %i.at = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 2344
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.au, ptr noundef %i.at, i32 noundef 2, ptr noundef %i.as, ptr noundef %i.ar, ptr noundef %i.aq)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.av = load i8, ptr @_ZZ8gmx_spoliPPcE4bCom, align 1, !tbaa !49, !range !50, !noundef !51
  %i.aw = trunc nuw i8 %i.av to i1                ; 2 uses
  %i.ax = load i32, ptr %i.as, align 4, !tbaa !37 ; 2 uses
  %. = select i1 %i.aw, i32 %i.ax, i32 1          ; 4 uses
  %.246 = select i1 %i.aw, i32 1, i32 %i.ax       ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 2416
  %i.bc = load i32, ptr %i.ay, align 4, !tbaa !37 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader.lr.ph.i, label %bb.z

bb.l:                                             ; preds = %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.m:                                             ; preds = %bb.f, %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.at, %bb.aw, %.backedge.i, %bb.ai, %bb.aj, %._crit_edge317, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, %bb.j, %_ZNSt10filesystem7__cxx114pathD2Ev.exit183, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit185, %bb.bf, %_ZL14gmx_sfree_implIA3_fEvPKcS2_iPT_.exit, %._crit_edge343, %bb.br, %bb.bs, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZL13gmx_snew_implIPcEvPKcS2_iRPT_m.exit, %_ZL13gmx_snew_implIPiEvPKcS2_iRPT_m.exit, %.critedge.thread.i, %bb.v, %bb.ae, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 2424 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %indvars.iv69.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next70.i, %._crit_edge.i ] ; 2 uses
  %i.bi = phi i32 [ %i.bc, %.preheader.lr.ph.i ], [ %i.cn, %._crit_edge.i ]
  %.03656.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 6 uses
  %i.bj = load i32, ptr %i.bb, align 8, !tbaa !55 ; 3 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bl = sext i32 %.03656.i to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !37
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !56
  %wide.trip.count.i = zext nneg i32 %i.bj to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !37
  %.not.i = icmp eq i32 %i.bn, %i.bq
  br i1 %.not.i, label %.critedge.loopexit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge.thread.i, label %bb.p, !llvm.loop !22

.critedge.loopexit.i:                             ; preds = %bb.p
  %i.br = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %.preheader.i
  %.034.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.br, %.critedge.loopexit.i ] ; 3 uses
  %i.bs = icmp eq i32 %.034.lcssa.i, %i.bj
  br i1 %i.bs, label %.critedge.thread.i, label %bb.t

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 1 dereferenceable(64) @.str.31, i8 noundef zeroext 2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.critedge.thread.i
  %i.bt = add nsw i32 %.03656.i, 1
  %i.bu = sext i32 %.03656.i to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !37
  %i.bx = add nsw i32 %i.bw, 1
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 142, ptr noundef nonnull @.str.48, i32 noundef %i.bt, i32 noundef %i.bx) #16
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc
  unreachable

bb.s:                                             ; preds = %.noexc
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %.body

bb.t:                                             ; preds = %.critedge.i
  %i.bz = load ptr, ptr %i.bh, align 8, !tbaa !56
  %i.ca = zext nneg i32 %.034.lcssa.i to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !37 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !37 ; 2 uses
  %i.cf = icmp slt i32 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph53.preheader.i, label %._crit_edge.i

.lr.ph53.preheader.i:                             ; preds = %bb.t
  %i.cg = sext i32 %.03656.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %i.bi, i32 %.03656.i)
  %wide.trip.count66.i = sext i32 %smax.i to i64
  br label %.lr.ph53.i

.lr.ph53.i:                                       ; preds = %bb.y, %.lr.ph53.preheader.i
  %indvars.iv63.i = phi i64 [ %i.cg, %.lr.ph53.preheader.i ], [ %indvars.iv.next64.i, %bb.y ] ; 3 uses
  %.03552.i = phi i32 [ %i.cc, %.lr.ph53.preheader.i ], [ %i.ck, %bb.y ] ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv63.i, %wide.trip.count66.i
  br i1 %exitcond67.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph53.i
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv63.i
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !37
  %.not39.i = icmp eq i32 %i.ci, %.03552.i
  br i1 %.not39.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph53.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(64) @.str.31, i8 noundef zeroext 2)
          to label %.noexc178 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc178:                                        ; preds = %bb.v
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 151, ptr noundef nonnull @.str.49) #16
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %.noexc178
  unreachable

bb.x:                                             ; preds = %.noexc178
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %.body

bb.y:                                             ; preds = %bb.u
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %i.ck = add i32 %.03552.i, 1                    ; 2 uses
  %exitcond68.not.i = icmp eq i32 %i.ck, %i.ce
  br i1 %exitcond68.not.i, label %._crit_edge.loopexit.i, label %.lr.ph53.i, !llvm.loop !23

._crit_edge.loopexit.i:                           ; preds = %bb.y
  %i.cl = trunc nsw i64 %indvars.iv.next64.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.t
  %.1.lcssa.i = phi i32 [ %.03656.i, %bb.t ], [ %i.cl, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv69.i
  store i32 %.034.lcssa.i, ptr %i.cm, align 4, !tbaa !37
  %i.cn = load i32, ptr %i.ay, align 4, !tbaa !37 ; 2 uses
  %i.co = icmp slt i32 %.1.lcssa.i, %i.cn
  br i1 %i.co, label %.preheader.i, label %._crit_edge57.loopexit.i, !llvm.loop !24

._crit_edge57.loopexit.i:                         ; preds = %._crit_edge.i
  %i.cp = trunc nuw i64 %indvars.iv.next70.i to i32
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge57.loopexit.i, %bb.k
  %.037.lcssa.i = phi i32 [ 0, %bb.k ], [ %i.cp, %._crit_edge57.loopexit.i ] ; 2 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.037.lcssa.i) ; 0 uses
  store i32 %.037.lcssa.i, ptr %i.ay, align 4, !tbaa !37
  %i.cr = load i32, ptr @_ZZ8gmx_spoliPPcE6srefat, align 4, !tbaa !37
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr @_ZZ8gmx_spoliPPcE6srefat, align 4, !tbaa !37
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %i.cu = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 4, ptr noundef nonnull %6)
          to label %bb.aa unwind label %bb.af

bb.aa:                                            ; preds = %bb.z
  store ptr %i.cu, ptr %i.m, align 8, !tbaa !12
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i8 noundef zeroext 2)
          to label %bb.ab unwind label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cv = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.ct, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.cv, ptr %i.d, align 4, !tbaa !37
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i179, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i180, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef nonnull %i.cx) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i180

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i180: ; preds = %bb.ad, %bb.ac
  %i.cy = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i180
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !18
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #15
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit183

_ZNSt10filesystem7__cxx114pathD2Ev.exit183:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 176 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !156
  %i.df = invoke noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef %i.de, ptr noundef nonnull %i.i)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit183
  %i.dg = call noundef float @sqrtf(float noundef %i.df) #14
  %i.dh = fpext float %i.dg to double
  %i.di = fmul double %i.dh, f0x3FEFAE147AE147AE
  %i.dj = fptrunc double %i.di to float           ; 2 uses
  %i.dk = fcmp oeq float %i.dj, 0.000000e+00
  %i.dl = load float, ptr @_ZZ8gmx_spoliPPcE4rmax, align 4
  %i.dm = fmul float %i.dl, 1.000000e+01
  %.0156 = select i1 %i.dk, float %i.dm, float %i.dj ; 3 uses
  %i.dn = fmul float %.0156, %.0156
  %i.do = load float, ptr @_ZZ8gmx_spoliPPcE2bw, align 4, !tbaa !157
  %i.dp = fdiv float 1.000000e+00, %i.do          ; 2 uses
  %i.dq = fmul float %i.dp, %.0156
  %i.dr = fptosi float %i.dq to i32               ; 3 uses
  %i.ds = add nsw i32 %i.dr, 2
  %i.dt = sext i32 %i.ds to i64
  %i.du = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.31, i32 noundef 269, i64 noundef range(i64 -2147483646, 2147483648) %i.dt, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit185 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.af:                                            ; preds = %bb.aa, %bb.z
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #14
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn167 = phi { ptr, i32 } [ %i.dw, %bb.ag ], [ %i.dv, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %.body

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit185:       ; preds = %bb.ae
  %i.dx = load float, ptr @_ZZ8gmx_spoliPPcE4rmin, align 4, !tbaa !157 ; 2 uses
  %i.dy = fmul float %i.dx, %i.dx
  %i.dz = load float, ptr @_ZZ8gmx_spoliPPcE4rmax, align 4, !tbaa !157 ; 2 uses
  %i.ea = fmul float %i.dz, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ag, i64 2424
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !171
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ag, i64 2352 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !172 ; 14 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.eg = load i32, ptr %i.dd, align 8, !tbaa !156
  %i.eh = load i32, ptr %i.d, align 4, !tbaa !37
  %i.ei = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.ef, i32 noundef %i.eg, i32 noundef %i.eh)
          to label %.preheader253 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.preheader253:                                    ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit185
  %i.ej = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 8 uses
  %i.el = icmp slt i32 %., 1                      ; 2 uses
  %wide.trip.count.i191 = zext i32 %. to i64      ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.eo = icmp sgt i32 %.246, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %wide.trip.count = zext nneg i32 %.246 to i64
  %exitcond.peel.not = icmp eq i32 %.246, 1
  %xtraiter = and i64 %wide.trip.count.i191, 1
  %i.er = icmp eq i32 %., 1
  %unroll_iter = and i64 %wide.trip.count.i191, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod609 = trunc i32 %. to i1
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader253, %bb.be
  %.promoted324338 = phi float [ %.promoted324334, %bb.be ], [ 0.000000e+00, %.preheader253 ] ; 3 uses
  %.promoted333 = phi float [ %.promoted329, %bb.be ], [ 0.000000e+00, %.preheader253 ] ; 3 uses
  %.promoted304327 = phi float [ %.promoted304326, %bb.be ], [ 0.000000e+00, %.preheader253 ] ; 2 uses
  %.0161 = phi i32 [ %i.tz, %bb.be ], [ 0, %.preheader253 ]
  %.0158 = phi i32 [ %.1159.lcssa, %bb.be ], [ 0, %.preheader253 ] ; 2 uses
  %.0152 = phi float [ %.1153.lcssa, %bb.be ], [ 0.000000e+00, %.preheader253 ] ; 2 uses
  %i.es = phi <2 x double> [ %i.tt, %bb.be ], [ zeroinitializer, %.preheader253 ] ; 2 uses
  %i.et = phi <2 x double> [ %i.tu, %bb.be ], [ zeroinitializer, %.preheader253 ] ; 2 uses
  %i.eu = load i32, ptr %i.d, align 4, !tbaa !37
  %i.ev = load ptr, ptr %i.f, align 8, !tbaa !173
  invoke void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef %i.ei, i32 noundef %i.eu, ptr noundef nonnull %i.i, ptr noundef %i.ev)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.ew = load i32, ptr %i.dd, align 8, !tbaa !156
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %4, i32 noundef %i.ew, ptr noundef nonnull %i.i)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.aj
  %i.ex = load i8, ptr @_ZZ8gmx_spoliPPcE4bCom, align 1, !tbaa !49, !range !50, !noundef !51
end_hunk_0
begin_hunk_1_@_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE:bb.a
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !18
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_Z11max_cutoff27PbcTypePA3_Kf(i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14gmx_rmpbc_doneP9gmx_rmpbc(ptr noundef) local_unnamed_addr #3

declare void @_Z9close_trxP11t_trxstatus(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN10t_inputrecD1Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888)) unnamed_addr #8

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA64_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(64) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(64) %1) #14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.b, ptr %i.a, align 8, !tbaa !21
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !17
  %i.f = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.f, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.h, ptr %i.g, align 1, !tbaa !18
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !20
  %i.k = load ptr, ptr %0, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !14   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !18
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !11, i64 8, !5, i64 16}
!17 = !{!16, !10, i64 0}
!18 = !{!5, !5, i64 0}
!19 = !{!15, !10, i64 0}
!20 = !{!16, !11, i64 8}
!21 = !{!11, !11, i64 0}
!22 = distinct !{!22, !57}
!23 = distinct !{!23, !57}
!24 = distinct !{!24, !57}
!25 = distinct !{!25, !57}
!26 = distinct !{!26, !57}
!27 = distinct !{!27, !57}
!28 = distinct !{!28, !57, !178}
!29 = distinct !{!29, !180}
!30 = distinct !{!30, !57}
!31 = distinct !{!31, !180}
!32 = distinct !{!32, !57}
!33 = distinct !{!33, !57}
!34 = distinct !{!34, !57}
!35 = distinct !{!35, !57}
!36 = distinct !{!36, !57}
!37 = !{!6, !6, i64 0}
!38 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !41, i64 0}
!43 = !{!"_ZTS8t_filenm", !6, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !42, i64 32}
!44 = !{!43, !6, i64 0}
!45 = !{!43, !11, i64 24}
!46 = !{!43, !10, i64 8}
!47 = !{!43, !10, i64 16}
!48 = !{!"bool", !5, i64 0}
!49 = !{!48, !48, i64 0}
!50 = !{i8 0, i8 2}
!51 = !{}
!52 = !{!"p1 int", !9, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!"_ZTS7t_block", !6, i64 0, !52, i64 8, !6, i64 16}
!55 = !{!54, !6, i64 0}
!56 = !{!54, !52, i64 8}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"p1 _ZTS16gmx_output_env_t", !9, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"_ZTS20IntegrationAlgorithm", !5, i64 0}
!61 = !{!"_ZTS12CutoffScheme", !5, i64 0}
!62 = !{!"_ZTS19ComRemovalAlgorithm", !5, i64 0}
!63 = !{!"double", !5, i64 0}
!64 = !{!"p1 _ZTSN3gmx8MtsLevelE", !9, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !64, i64 0, !64, i64 8, !64, i64 16}
!66 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !65, i64 0}
!67 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !66, i64 0}
!68 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !67, i64 0}
!69 = !{!"float", !5, i64 0}
!70 = !{!"_ZTS13EwaldGeometry", !5, i64 0}
!71 = !{!"_ZTS12LongRangeVdW", !5, i64 0}
!72 = !{!"_ZTS7PbcType", !5, i64 0}
!73 = !{!"_ZTS26EnsembleTemperatureSetting", !5, i64 0}
!74 = !{!"_ZTS19TemperatureCoupling", !5, i64 0}
!75 = !{!"_ZTS16PressureCoupling", !5, i64 0}
!76 = !{!"_ZTS20PressureCouplingType", !5, i64 0}
!77 = !{!"_ZTS15RefCoordScaling", !5, i64 0}
!78 = !{!"_ZTS23PressureCouplingOptions", !75, i64 0, !76, i64 4, !6, i64 8, !69, i64 12, !5, i64 16, !5, i64 52, !77, i64 88}
!79 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !82, i64 0}
!84 = !{!"_ZTS22CoulombInteractionType", !5, i64 0}
!85 = !{!"_ZTS20InteractionModifiers", !5, i64 0}
!86 = !{!"_ZTS15VanDerWaalsType", !5, i64 0}
!87 = !{!"_ZTS24DispersionCorrectionType", !5, i64 0}
!88 = !{!"_ZTS26FreeEnergyPerturbationType", !5, i64 0}
!89 = !{!"p1 _ZTS8t_lambda", !9, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !89, i64 0}
!91 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !90, i64 0}
!92 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !91, i64 0}
!93 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !92, i64 0}
!94 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !93, i64 0}
!95 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !94, i64 0}
!96 = !{!"p1 _ZTS9t_simtemp", !9, i64 0}
!97 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !96, i64 0}
!98 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !97, i64 0}
!99 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !98, i64 0}
!100 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !99, i64 0}
!101 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !100, i64 0}
!102 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !101, i64 0}
!103 = !{!"p1 _ZTS10t_expanded", !9, i64 0}
!104 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !103, i64 0}
!105 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !104, i64 0}
!106 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !105, i64 0}
!107 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !106, i64 0}
!108 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !107, i64 0}
!109 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !108, i64 0}
!110 = !{!"_ZTS27DistanceRestraintRefinement", !5, i64 0}
!111 = !{!"_ZTS26DistanceRestraintWeighting", !5, i64 0}
!112 = !{!"_ZTS19ConstraintAlgorithm", !5, i64 0}
!113 = !{!"_ZTS8WallType", !5, i64 0}
!114 = !{!"p1 _ZTS13pull_params_t", !9, i64 0}
!115 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !114, i64 0}
!116 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !115, i64 0}
!117 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !116, i64 0}
!118 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !118, i64 0}
!120 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !119, i64 0}
!121 = !{!"p1 _ZTSN3gmx9AwhParamsE", !9, i64 0}
!122 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !121, i64 0}
!123 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !122, i64 0}
!124 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !123, i64 0}
!125 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !124, i64 0}
!126 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !125, i64 0}
!127 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !126, i64 0}
!128 = !{!"p1 _ZTS5t_rot", !9, i64 0}
!129 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !128, i64 0}
!130 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !129, i64 0}
!131 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !130, i64 0}
!132 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !131, i64 0}
!133 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !132, i64 0}
!134 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !133, i64 0}
!135 = !{!"_ZTS8SwapType", !5, i64 0}
!136 = !{!"p1 _ZTS12t_swapcoords", !9, i64 0}
!137 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !136, i64 0}
!138 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !137, i64 0}
!139 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !138, i64 0}
!140 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !140, i64 0}
!142 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !141, i64 0}
!143 = !{!"p1 _ZTS5t_IMD", !9, i64 0}
!144 = !{!"p1 float", !9, i64 0}
!145 = !{!"any p2 pointer", !9, i64 0}
!146 = !{!"p2 float", !145, i64 0}
!147 = !{!"_ZTS9t_grpopts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !144, i64 16, !144, i64 24, !9, i64 32, !52, i64 40, !146, i64 48, !146, i64 56, !144, i64 64, !83, i64 72, !52, i64 96, !52, i64 104, !6, i64 112}
!148 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !9, i64 0}
!149 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !148, i64 0}
!150 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !149, i64 0}
!151 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !150, i64 0}
!152 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !151, i64 0}
!153 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !152, i64 0}
!154 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !153, i64 0}
!155 = !{!"_ZTS10t_inputrec", !6, i64 0, !60, i64 4, !11, i64 8, !6, i64 16, !11, i64 24, !6, i64 32, !61, i64 36, !6, i64 40, !6, i64 44, !62, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !63, i64 80, !63, i64 88, !48, i64 96, !68, i64 104, !69, i64 128, !69, i64 132, !69, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !69, i64 156, !69, i64 160, !70, i64 164, !69, i64 168, !71, i64 172, !72, i64 176, !48, i64 180, !48, i64 181, !73, i64 184, !69, i64 188, !74, i64 192, !6, i64 196, !48, i64 200, !78, i64 204, !83, i64 296, !83, i64 320, !6, i64 344, !69, i64 348, !69, i64 352, !69, i64 356, !69, i64 360, !84, i64 364, !85, i64 368, !69, i64 372, !69, i64 376, !69, i64 380, !69, i64 384, !48, i64 388, !86, i64 392, !85, i64 396, !69, i64 400, !69, i64 404, !87, i64 408, !69, i64 412, !69, i64 416, !88, i64 420, !95, i64 424, !48, i64 432, !102, i64 440, !48, i64 448, !109, i64 456, !110, i64 464, !69, i64 468, !111, i64 472, !48, i64 476, !6, i64 480, !69, i64 484, !69, i64 488, !69, i64 492, !6, i64 496, !69, i64 500, !69, i64 504, !6, i64 508, !69, i64 512, !6, i64 516, !6, i64 520, !112, i64 524, !6, i64 528, !69, i64 532, !6, i64 536, !48, i64 540, !69, i64 544, !11, i64 552, !6, i64 560, !113, i64 564, !69, i64 568, !5, i64 572, !5, i64 580, !69, i64 588, !48, i64 592, !120, i64 600, !48, i64 608, !127, i64 616, !48, i64 624, !134, i64 632, !135, i64 640, !142, i64 648, !48, i64 656, !143, i64 664, !69, i64 672, !5, i64 676, !6, i64 712, !6, i64 716, !6, i64 720, !6, i64 724, !69, i64 728, !69, i64 732, !69, i64 736, !69, i64 740, !147, i64 744, !48, i64 864, !48, i64 865, !48, i64 866, !48, i64 867, !148, i64 872, !154, i64 880}
!156 = !{!155, !72, i64 176}
!157 = !{!69, !69, i64 0}
!158 = !{!"p2 omnipotent char", !145, i64 0}
!159 = !{!"p1 _ZTS9t_iparams", !9, i64 0}
!160 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !5, i64 0}
!161 = !{!"_ZTS6t_idef", !6, i64 0, !6, i64 4, !9, i64 8, !159, i64 16, !69, i64 24, !159, i64 32, !159, i64 40, !160, i64 48, !6, i64 2328}
!162 = !{!"p1 _ZTS6t_atom", !9, i64 0}
!163 = !{!"any p3 pointer", !145, i64 0}
!164 = !{!"p3 omnipotent char", !163, i64 0}
!165 = !{!"p1 _ZTS9t_resinfo", !9, i64 0}
!166 = !{!"p1 _ZTS9t_pdbinfo", !9, i64 0}
!167 = !{!"_ZTS7t_atoms", !6, i64 0, !162, i64 8, !164, i64 16, !164, i64 24, !164, i64 32, !6, i64 40, !165, i64 48, !166, i64 56, !48, i64 64, !48, i64 65, !48, i64 66, !48, i64 67, !48, i64 68}
!168 = !{!"p1 _ZTS8t_symbuf", !9, i64 0}
!169 = !{!"_ZTS8t_symtab", !6, i64 0, !168, i64 8}
!170 = !{!"_ZTS10t_topology", !158, i64 0, !161, i64 8, !167, i64 2344, !54, i64 2416, !48, i64 2440, !169, i64 2448}
!171 = !{!170, !52, i64 2424}
end_hunk_1
