Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_polystat?download=true
inline.NumInlined: 306
inline.NumDeleted: 140
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  store i64 13, ptr %i.bp, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 125
  store i8 0, ptr %i.bq, align 1, !tbaa !19
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bs, ptr noundef nonnull align 1 dereferenceable(13) @.str.40, i64 13, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 136
  store i64 13, ptr %i.bt, align 8, !tbaa !18
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 157
  store i8 0, ptr %i.bu, align 1, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 160 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 176 ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.bw, ptr noundef nonnull align 1 dereferenceable(13) @.str.41, i64 13, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 168
  store i64 13, ptr %i.bx, align 8, !tbaa !18
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 189
  store i8 0, ptr %i.by, align 1, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 192
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 2 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ca, ptr noundef nonnull align 1 dereferenceable(13) @.str.42, i64 13, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 200
  store i64 13, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 221
  store i8 0, ptr %i.cc, align 1, !tbaa !19
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 240 ; 2 uses
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ce, ptr noundef nonnull align 1 dereferenceable(13) @.str.43, i64 13, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i64 13, ptr %i.cf, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 253
  store i8 0, ptr %i.cg, align 1, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.ch = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.d, ptr noundef %1, i64 noundef 49376, i32 noundef 7, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull %2, i32 noundef 23, ptr noundef nonnull %i.e, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.f)
          to label %bb.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.a:                                             ; preds = %._crit_edge.i.i
  br i1 %i.ch, label %bb.b, label %bb.dx

.loopexit650:                                     ; preds = %bb.ck
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %._crit_edge704, %bb.cu, %._crit_edge715.thread, %bb.cq, %bb.co, %bb.cf
  %lpad.loopexit655 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.cb, %bb.ca, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.1, %bb.bz, %bb.by, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.preheader.preheader, %bb.bw, %bb.bx
  %lpad.loopexit658 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge.i.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.g, %bb.t, %bb.ax, %bb.ay, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit460, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit503.2, %bb.cw, %bb.cx, %bb.cy, %bb.da, %bb.dc, %bb.dd, %bb.dh, %._crit_edge723, %._crit_edge728, %bb.dn, %bb.do, %bb.dp, %bb.dr, %bb.ds, %bb.dt, %bb.dv, %bb.dw, %bb.b, %bb.h, %_ZNSt10filesystem7__cxx114pathD2Ev.exit456, %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit, %_ZL13gmx_snew_implIdEvPKcS1_iRPT_m.exit, %_ZNSt10filesystem7__cxx114pathD2Ev.exit485, %_ZNSt10filesystem7__cxx114pathD2Ev.exit498, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit, %_ZL13gmx_snew_implIPdEvPKcS2_iRPT_m.exit501
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.ci = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, i32 noundef 201, i64 noundef 1, i64 noundef 2464)
          to label %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  %i.cj = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 27, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit
  store ptr %i.cj, ptr %i.q, align 8, !tbaa !20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.ck = invoke noundef i32 @_Z12read_tpx_topRKNSt10filesystem7__cxx114pathEP10t_inputrecPA3_fPiS7_S7_P10t_topology(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef null, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef null, ptr noundef null, ptr noundef %i.ci)
          to label %bb.e unwind label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.cm) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.f, %bb.e
  %i.cn = load ptr, ptr %6, align 8, !tbaa !23    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !19
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %i.cs = load ptr, ptr @stderr, align 8, !tbaa !57
  %fwrite = call i64 @fwrite(ptr nonnull @.str.46, i64 43, i64 1, ptr %i.cs) #20 ; 0 uses
  %i.ct = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ci, i64 2344 ; 3 uses
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.cu, ptr noundef %i.ct, i32 noundef 1, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ci, i64 2416
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !76
  %i.cx = add nsw i32 %i.cw, 1
  %i.cy = sext i32 %i.cx to i64
  %i.cz = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef 207, i64 noundef range(i64 -2147483647, 2147483648) %i.cy, i64 noundef 4)
          to label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 12 uses

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader: ; preds = %bb.h
  %i.da = load i32, ptr %i.g, align 4, !tbaa !47  ; 2 uses
  %i.db = icmp sgt i32 %i.da, 0
  br i1 %i.db, label %.lr.ph, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  store i32 0, ptr %i.cz, align 4, !tbaa !47
  %i.dc = load i32, ptr %i.cu, align 8, !tbaa !77
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.preheader
  %i.dd = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 2424
  %.pre.pre = load ptr, ptr %i.de, align 8, !tbaa !78 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.df = phi i32 [ %i.da, %.lr.ph ], [ %i.dx, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ]
  %indvars.iv744 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next745, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 5 uses
  %.0308669 = phi i32 [ -1, %.lr.ph ], [ %.2310, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %.0313668 = phi i32 [ 0, %.lr.ph ], [ %.1314, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit ] ; 3 uses
  %i.dg = icmp eq i64 %indvars.iv744, 0
  br i1 %i.dg, label %._crit_edge885, label %bb.j

._crit_edge885:                                   ; preds = %bb.i
  %.pre = sext i32 %.0308669 to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv744
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !47
  %i.dj = sext i32 %.0308669 to i64               ; 2 uses
  %i.dk = getelementptr [4 x i8], ptr %.pre.pre, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !47
  %.not356 = icmp slt i32 %i.di, %i.dm
  br i1 %.not356, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge885, %bb.j
  %.pre-phi = phi i64 [ %.pre, %._crit_edge885 ], [ %i.dj, %bb.j ]
  %i.dn = sext i32 %.0313668 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv744 to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !47
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv744
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !47
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %.pre-phi, %bb.k ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %.pre.pre, i64 %indvars.iv
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !47
  %.not357 = icmp slt i32 %i.dr, %i.du
  br i1 %.not357, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit, label %bb.l, !llvm.loop !29

bb.m:                                             ; preds = %bb.c, %_ZL13gmx_snew_implI10t_topologyEvPKcS2_iRPT_m.exit
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.d
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %6) #18
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn325 = phi { ptr, i32 } [ %i.dw, %bb.n ], [ %i.dv, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.loopexit.split-lp

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit: ; preds = %bb.l
  %21 = add nsw i32 %.0313668, 1
  %22 = trunc nsw i64 %indvars.iv.next to i32
  %.pre872 = load i32, ptr %i.g, align 4, !tbaa !47
  br label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit:          ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit, %bb.j
  %i.dx = phi i32 [ %i.df, %bb.j ], [ %.pre872, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit ] ; 2 uses
  %.1314 = phi i32 [ %.0313668, %bb.j ], [ %21, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit ] ; 8 uses
  %.2310 = phi i32 [ %.0308669, %bb.j ], [ %22, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit.loopexit ]
  %indvars.iv.next745 = add nuw nsw i64 %indvars.iv744, 1 ; 3 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = icmp slt i64 %indvars.iv.next745, %i.dy
  br i1 %i.dz, label %bb.i, label %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge, !llvm.loop !30

_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit
  %i.ea = trunc nuw nsw i64 %indvars.iv.next745 to i32
  %i.eb = sext i32 %.1314 to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.eb
  store i32 %i.ea, ptr %i.ec, align 4, !tbaa !47
  %i.ed = load i32, ptr %i.cu, align 8, !tbaa !77 ; 3 uses
  %i.ee = icmp sgt i32 %.1314, 0
  br i1 %i.ee, label %.lr.ph675.preheader, label %._crit_edge

.lr.ph675.preheader:                              ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge
  %wide.trip.count = zext nneg i32 %.1314 to i64  ; 3 uses
  %.pre873 = load i32, ptr %i.cz, align 4, !tbaa !47 ; 2 uses
  %min.iters.check = icmp ult i32 %.1314, 32
  br i1 %min.iters.check, label %.lr.ph675.preheader1172, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph675.preheader
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %vector.recur.init = insertelement <8 x i32> poison, i32 %.pre873, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <8 x i32> [ %vector.recur.init, %vector.ph ], [ %wide.load1124, %vector.body ]
  %vec.phi = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.es, %vector.body ]
  %vec.phi1115 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.et, %vector.body ]
  %vec.phi1116 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.eu, %vector.body ]
  %vec.phi1117 = phi <8 x i32> [ %broadcast.splat, %vector.ph ], [ %i.ev, %vector.body ]
  %vec.phi1118 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ew, %vector.body ]
  %vec.phi1119 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ex, %vector.body ]
  %vec.phi1120 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi1121 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 68
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 100
  %wide.load = load <8 x i32>, ptr %i.eg, align 4, !tbaa !47 ; 3 uses
  %wide.load1122 = load <8 x i32>, ptr %i.eh, align 4, !tbaa !47 ; 3 uses
  %wide.load1123 = load <8 x i32>, ptr %i.ei, align 4, !tbaa !47 ; 3 uses
  %wide.load1124 = load <8 x i32>, ptr %i.ej, align 4, !tbaa !47 ; 4 uses
  %i.ek = shufflevector <8 x i32> %vector.recur, <8 x i32> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.el = shufflevector <8 x i32> %wide.load, <8 x i32> %wide.load1122, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.em = shufflevector <8 x i32> %wide.load1122, <8 x i32> %wide.load1123, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.en = shufflevector <8 x i32> %wide.load1123, <8 x i32> %wide.load1124, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eo = sub nsw <8 x i32> %wide.load, %i.ek     ; 2 uses
  %i.ep = sub nsw <8 x i32> %wide.load1122, %i.el ; 2 uses
  %i.eq = sub nsw <8 x i32> %wide.load1123, %i.em ; 2 uses
  %i.er = sub nsw <8 x i32> %wide.load1124, %i.en ; 2 uses
  %i.es = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eo, <8 x i32> %vec.phi) ; 2 uses
  %i.et = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ep, <8 x i32> %vec.phi1115) ; 2 uses
  %i.eu = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.eq, <8 x i32> %vec.phi1116) ; 2 uses
  %i.ev = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.er, <8 x i32> %vec.phi1117) ; 2 uses
  %i.ew = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1118, <8 x i32> %i.eo) ; 2 uses
  %i.ex = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1119, <8 x i32> %i.ep) ; 2 uses
  %i.ey = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1120, <8 x i32> %i.eq) ; 2 uses
  %i.ez = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %vec.phi1121, <8 x i32> %i.er) ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.es, <8 x i32> %i.et)
  %rdx.minmax1125 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax, <8 x i32> %i.eu)
  %rdx.minmax1126 = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %rdx.minmax1125, <8 x i32> %i.ev)
  %i.fb = call i32 @llvm.vector.reduce.smin.v8i32(<8 x i32> %rdx.minmax1126) ; 2 uses
  %rdx.minmax1127 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ew, <8 x i32> %i.ex)
  %rdx.minmax1128 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1127, <8 x i32> %i.ey)
  %rdx.minmax1129 = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %rdx.minmax1128, <8 x i32> %i.ez)
  %i.fc = call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %rdx.minmax1129) ; 2 uses
  %vector.recur.extract = extractelement <8 x i32> %wide.load1124, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph675.preheader1172

.lr.ph675.preheader1172:                          ; preds = %.lr.ph675.preheader, %middle.block
  %.ph = phi i32 [ %.pre873, %.lr.ph675.preheader ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv747.ph = phi i64 [ 0, %.lr.ph675.preheader ], [ %n.vec, %middle.block ]
  %.0673.ph = phi i32 [ %i.ed, %.lr.ph675.preheader ], [ %i.fb, %middle.block ]
  %.0631672.ph = phi i32 [ 0, %.lr.ph675.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph675

.lr.ph675:                                        ; preds = %.lr.ph675.preheader1172, %.lr.ph675
  %i.fd = phi i32 [ %i.ff, %.lr.ph675 ], [ %.ph, %.lr.ph675.preheader1172 ]
  %indvars.iv747 = phi i64 [ %indvars.iv.next748, %.lr.ph675 ], [ %indvars.iv747.ph, %.lr.ph675.preheader1172 ]
  %.0673 = phi i32 [ %.sroa.speculated560, %.lr.ph675 ], [ %.0673.ph, %.lr.ph675.preheader1172 ]
  %.0631672 = phi i32 [ %.sroa.speculated, %.lr.ph675 ], [ %.0631672.ph, %.lr.ph675.preheader1172 ]
  %indvars.iv.next748 = add nuw nsw i64 %indvars.iv747, 1 ; 3 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next748
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !47 ; 2 uses
  %i.fg = sub nsw i32 %i.ff, %i.fd                ; 2 uses
  %.sroa.speculated560 = call i32 @llvm.smin.i32(i32 %i.fg, i32 %.0673) ; 2 uses
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %.0631672, i32 %i.fg) ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next748, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph675, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph675, %middle.block, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge
  %i.fh = phi i1 [ false, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge ], [ false, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread ], [ true, %middle.block ], [ true, %.lr.ph675 ]
  %.0313.lcssa1072 = phi i32 [ %.1314, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread ], [ %.1314, %middle.block ], [ %.1314, %.lr.ph675 ] ; 5 uses
  %.0631.lcssa = phi i32 [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge ], [ 0, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread ], [ %i.fc, %middle.block ], [ %.sroa.speculated, %.lr.ph675 ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.ed, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge ], [ %i.dc, %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit._crit_edge.thread ], [ %i.fb, %middle.block ], [ %.sroa.speculated560, %.lr.ph675 ]
  %.0.lcssa.fr = freeze i32 %.0.lcssa             ; 5 uses
  %i.fi = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.fj = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fi, ptr noundef nonnull @.str.48, ptr noundef %i.fj, i32 noundef %.0313.lcssa1072) #21 ; 0 uses
  %i.fl = load ptr, ptr @stderr, align 8, !tbaa !57
  %i.fm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fl, ptr noundef nonnull @.str.49, i32 noundef %.0.lcssa.fr, i32 noundef %.0631.lcssa) #21 ; 0 uses
  %i.fn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %.0313.lcssa1072) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #18
  %i.fo = invoke noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef nonnull @.str.28, i32 noundef 7, ptr noundef nonnull %3)
          to label %bb.p unwind label %bb.am

bb.p:                                             ; preds = %._crit_edge
  store ptr %i.fo, ptr %i.r, align 8, !tbaa !20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.q unwind label %bb.am

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  %i.fp = load ptr, ptr %i.f, align 8, !tbaa !82
  invoke void @_Z26output_env_get_xvgr_tlabelB5cxx11PK16gmx_output_env_t(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.fp)
          to label %._crit_edge.i.i390 unwind label %bb.an

._crit_edge.i.i390:                               ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  %i.fq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.fq, ptr %9, align 8, !tbaa !16
  store i32 695037480, ptr %i.fq, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 4, ptr %i.fr, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 20
  store i8 0, ptr %i.fs, align 4, !tbaa !19
  %i.ft = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.fu = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.ft)
          to label %bb.r unwind label %bb.ao      ; 7 uses

bb.r:                                             ; preds = %._crit_edge.i.i390
  %i.fv = load ptr, ptr %9, align 8, !tbaa !23    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fq
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394: ; preds = %bb.r
  %i.fx = load i64, ptr %i.fq, align 8, !tbaa !19
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i394
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  %i.fz = load ptr, ptr %8, align 8, !tbaa !23    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !19
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit396, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i397
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !22 ; 2 uses
  %.not.i.i.i400 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i.i400, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i401, label %bb.s

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ge, ptr noundef nonnull %i.gf) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i401

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i401: ; preds = %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit399
  %i.gg = load ptr, ptr %7, align 8, !tbaa !23    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i402

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i402: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i401
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i403

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i403: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i401, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  %i.gl = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.gm = trunc nuw i8 %i.gl to i1
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 256
  %.sroa.sel = select i1 %i.gm, ptr %.sroa.gep, ptr %i.bv
  %i.gn = load ptr, ptr %i.f, align 8, !tbaa !82
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %i.fu, ptr nonnull %4, ptr nonnull %.sroa.sel, ptr noundef %i.gn)
          to label %bb.t unwind label %bb.aq

end_hunk_0
begin_hunk_1_@_Z12gmx_polystatiPPc:._crit_edge.i.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.zo = load double, ptr %i.zn, align 8, !tbaa !91
  %i.zp = fdiv double %i.zo, %.0269.lcssa
  %i.zq = call double @llvm.fmuladd.f64(double %i.yz, double %i.xi, double %i.zp) ; 2 uses
  store double %i.zq, ptr %i.zn, align 8, !tbaa !91
  %i.zr = getelementptr inbounds nuw i8, ptr %i.za, i64 16 ; 2 uses
  %i.zs = load double, ptr %i.zr, align 8, !tbaa !91
  %i.zt = fadd double %i.zq, %i.zs
  store double %i.zt, ptr %i.zr, align 8, !tbaa !91
  %i.zu = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.zv = trunc nuw i8 %i.zu to i1
  br i1 %i.zv, label %bb.ck, label %.loopexit645

bb.ck:                                            ; preds = %._crit_edge690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.or, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ot, ptr noundef nonnull %i.b)
          to label %.noexc515 unwind label %.loopexit650

.noexc515:                                        ; preds = %bb.ck
  %i.zw = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.zx = load double, ptr %i.pr, align 16, !tbaa !91 ; 3 uses
  %i.zy = fcmp olt double %i.zw, %i.zx            ; 2 uses
  %spec.store.select.i = select i1 %i.zy, i32 0, i32 2 ; 2 uses
  %i.zz = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.aaa = fcmp ogt double %i.zz, %i.zw           ; 4 uses
  %spec.select1090 = zext i1 %i.aaa to i64        ; 4 uses
  %i.aab = zext nneg i32 %spec.store.select.i to i64
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aab
  %i.aad = load double, ptr %i.aac, align 16, !tbaa !91
  %i.aae = fcmp uge double %i.zz, %i.aad          ; 2 uses
  %.sroa.28.0 = select i1 %i.aae, i32 %spec.store.select.i, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val = load double, ptr %i.o, align 16
  %i.aaf = select i1 %i.aaa, double %.027.1.i.sroa.gep.val, double %.val
  %i.aag = fcmp ule double %i.zx, %i.aaf          ; 2 uses
  %i.aah = zext nneg i32 %.sroa.28.0 to i64
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aah
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !91
  %i.aak = fcmp olt double %i.zx, %i.aaj          ; 2 uses
  br i1 %i.aag, label %bb.cl, label %.thread41.i

bb.cl:                                            ; preds = %.noexc515
  br i1 %i.aak, label %.preheader.thread.i, label %.preheader.i514

.thread41.i:                                      ; preds = %.noexc515
  br i1 %i.aak, label %.thread.i, label %.preheader.thread42.i

.preheader.i514:                                  ; preds = %bb.cl
  br i1 %i.aaa, label %.preheader.thread42.i, label %.thread37.i

.preheader.thread.i:                              ; preds = %bb.cl
  br i1 %i.aaa, label %.thread.i, label %.thread37.thread.i

.preheader.thread42.i:                            ; preds = %.thread41.i, %.preheader.i514
  %.sroa.0863.1 = phi i64 [ 2, %.thread41.i ], [ %spec.select1090, %.preheader.i514 ]
  %.not26.i = and i1 %i.aae, %i.zy                ; 2 uses
  %spec.select1095 = select i1 %.not26.i, i32 %i.qr, i32 0
  %spec.select1096 = select i1 %.not26.i, i32 0, i32 %.sroa.28.0
  br label %.thread.i

.thread.i:                                        ; preds = %.preheader.thread42.i, %.preheader.thread.i, %.thread41.i
  %i.aal = phi i32 [ %spec.select1095, %.preheader.thread42.i ], [ 0, %.thread41.i ], [ 0, %.preheader.thread.i ] ; 2 uses
  %.sroa.0863.3 = phi i64 [ %.sroa.0863.1, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ %spec.select1090, %.preheader.thread.i ] ; 2 uses
  %.sroa.28.2 = phi i32 [ %spec.select1096, %.preheader.thread42.i ], [ 2, %.thread41.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  %.not.1.i = phi i1 [ %i.aag, %.preheader.thread42.i ], [ false, %.thread41.i ], [ true, %.preheader.thread.i ]
  br i1 %.not.1.i, label %.thread39.i, label %.thread37.i

.thread37.i:                                      ; preds = %.thread.i, %.preheader.i514
  %i.aam = phi i32 [ %i.aal, %.thread.i ], [ %i.qr, %.preheader.i514 ]
  %.sroa.0863.4 = phi i64 [ %.sroa.0863.3, %.thread.i ], [ %spec.select1090, %.preheader.i514 ]
  %.sroa.28.3 = phi i32 [ %.sroa.28.2, %.thread.i ], [ %.sroa.28.0, %.preheader.i514 ] ; 2 uses
  %i.aan = phi i1 [ true, %.thread.i ], [ false, %.preheader.i514 ]
  %.not26.1.i = icmp eq i32 %.sroa.28.3, 1
  %spec.select1097 = select i1 %.not26.1.i, i32 %i.aam, i32 1
  br label %.thread37.thread.i

.thread37.thread.i:                               ; preds = %.thread37.i, %.preheader.thread.i
  %i.aao = phi i32 [ %spec.select1097, %.thread37.i ], [ 1, %.preheader.thread.i ] ; 2 uses
  %.sroa.0863.6 = phi i64 [ %.sroa.0863.4, %.thread37.i ], [ %spec.select1090, %.preheader.thread.i ] ; 2 uses
  %.not.2.i = phi i1 [ %i.aan, %.thread37.i ], [ false, %.preheader.thread.i ]
  %i.aap = phi i32 [ %.sroa.28.3, %.thread37.i ], [ 2, %.preheader.thread.i ] ; 2 uses
  br i1 %.not.2.i, label %_ZL10gyro_eigenPPdS_S0_Pi.exit, label %.thread39.i

.thread39.i:                                      ; preds = %.thread37.thread.i, %.thread.i
  %i.aaq = phi i32 [ %i.aal, %.thread.i ], [ %i.aao, %.thread37.thread.i ]
  %.sroa.0863.7 = phi i64 [ %.sroa.0863.3, %.thread.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %i.aar = phi i32 [ %.sroa.28.2, %.thread.i ], [ %i.aap, %.thread37.thread.i ] ; 2 uses
  %.not26.2.i = icmp eq i32 %i.aar, 2
  %spec.select1092 = select i1 %.not26.2.i, i32 %i.aaq, i32 2
  br label %_ZL10gyro_eigenPPdS_S0_Pi.exit

_ZL10gyro_eigenPPdS_S0_Pi.exit:                   ; preds = %.thread39.i, %.thread37.thread.i
  %i.aas = phi i32 [ %spec.select1092, %.thread39.i ], [ %i.aao, %.thread37.thread.i ] ; 2 uses
  %.sroa.0863.8 = phi i64 [ %.sroa.0863.7, %.thread39.i ], [ %.sroa.0863.6, %.thread37.thread.i ]
  %.sroa.28.7 = phi i32 [ %i.aar, %.thread39.i ], [ %i.aap, %.thread37.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.8
  %i.aau = load double, ptr %i.aat, align 8, !tbaa !91
  %i.aav = fadd double %i.aau, %.sroa.0.2
  %i.aaw = sext i32 %i.aas to i64
  %i.aax = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.aaw
  %i.aay = load double, ptr %i.aax, align 8, !tbaa !91
  %i.aaz = fadd double %i.aay, %.sroa.8.2
  %i.aba = zext nneg i32 %.sroa.28.7 to i64
  %i.abb = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.aba
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !91
  %i.abd = fadd double %i.abc, %.sroa.11.2
  br label %.loopexit645

.loopexit645:                                     ; preds = %_ZL10gyro_eigenPPdS_S0_Pi.exit, %._crit_edge690
  %i.abe = phi i32 [ %i.aas, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %i.qr, %._crit_edge690 ] ; 2 uses
  %.sroa.0.3 = phi double [ %i.aav, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.0.2, %._crit_edge690 ] ; 2 uses
  %.sroa.8.3 = phi double [ %i.aaz, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.8.2, %._crit_edge690 ] ; 2 uses
  %.sroa.11.3 = phi double [ %i.abd, %_ZL10gyro_eigenPPdS_S0_Pi.exit ], [ %.sroa.11.2, %._crit_edge690 ] ; 2 uses
  br i1 %.not, label %.loopexit, label %.preheader644

.preheader644:                                    ; preds = %.loopexit645
  %i.abf = icmp slt i32 %i.qt, %i.rd
  br i1 %i.abf, label %.lr.ph696, label %.preheader643

.lr.ph696:                                        ; preds = %.preheader644
  %i.abg = load ptr, ptr %i.l, align 8, !tbaa !89 ; 2 uses
  %i.abh = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %i.qy
  %.pre883 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !47
  br label %bb.cm

.preheader643:                                    ; preds = %bb.cm, %.preheader644
  %i.abi = icmp sge i32 %i.qt, %i.rd
  %brmerge732 = or i1 %i.abi, %i.pp
  br i1 %brmerge732, label %.loopexit, label %.preheader639.preheader

.preheader639.preheader:                          ; preds = %.preheader643
  %i.abj = xor i64 %i.qy, -1
  %i.abk = add nsw i64 %i.qy, 2
  br label %.preheader639

bb.cm:                                            ; preds = %.lr.ph696, %bb.cm
  %i.abl = phi i32 [ %.pre883, %.lr.ph696 ], [ %i.abn, %bb.cm ]
  %indvars.iv792 = phi i64 [ %i.qy, %.lr.ph696 ], [ %indvars.iv.next793, %bb.cm ] ; 2 uses
  %indvars.iv.next793 = add nsw i64 %indvars.iv792, 1 ; 3 uses
  %i.abm = getelementptr inbounds [4 x i8], ptr %i.abh, i64 %indvars.iv.next793
  %i.abn = load i32, ptr %i.abm, align 4, !tbaa !47 ; 2 uses
  %i.abo = sext i32 %i.abn to i64
  %i.abp = getelementptr inbounds [12 x i8], ptr %i.abg, i64 %i.abo ; 2 uses
  %i.abq = sext i32 %i.abl to i64
  %i.abr = getelementptr inbounds [12 x i8], ptr %i.abg, i64 %i.abq ; 2 uses
  %i.abs = sub nsw i64 %indvars.iv792, %i.qy
  %i.abt = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.abs ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !93
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 8
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !93
  %i.aby = fsub float %i.abv, %i.abx              ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.aca = load <2 x float>, ptr %i.abp, align 4, !tbaa !93
  %i.acb = load <2 x float>, ptr %i.abr, align 4, !tbaa !93
  %i.acc = fsub <2 x float> %i.aca, %i.acb        ; 4 uses
  %foldExtExtBinop1158 = fmul <2 x float> %i.acc, %i.acc
  %i.acd = extractelement <2 x float> %foldExtExtBinop1158, i64 1
  %i.ace = extractelement <2 x float> %i.acc, i64 0 ; 2 uses
  %i.acf = call float @llvm.fmuladd.f32(float %i.ace, float %i.ace, float %i.acd)
  %i.acg = call noundef float @llvm.fmuladd.f32(float %i.aby, float %i.aby, float %i.acf)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.acg)
  %i.ach = fdiv float 1.000000e+00, %sqrt.i       ; 2 uses
  %i.aci = insertelement <2 x float> poison, float %i.ach, i64 0
  %i.acj = shufflevector <2 x float> %i.aci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ack = fmul <2 x float> %i.acc, %i.acj
  store <2 x float> %i.ack, ptr %i.abt, align 4, !tbaa !93
  %i.acl = fmul float %i.aby, %i.ach
  store float %i.acl, ptr %i.abz, align 4, !tbaa !93
  %exitcond796.not = icmp eq i64 %indvars.iv.next793, %i.re
  br i1 %exitcond796.not, label %.preheader643, label %bb.cm

.preheader639:                                    ; preds = %.preheader639.preheader, %..critedge_crit_edge
  %indvar = phi i64 [ 0, %.preheader639.preheader ], [ %indvar.next, %..critedge_crit_edge ] ; 3 uses
  %indvars.iv800 = phi i64 [ %i.qy, %.preheader639.preheader ], [ %indvars.iv.next801, %..critedge_crit_edge ] ; 3 uses
  %i.acm = sub i64 %i.abj, %indvar
  %i.acn = add i64 %i.abk, %indvar
  %i.aco = sub nsw i64 %indvars.iv800, %i.qy      ; 2 uses
  %i.acp = getelementptr inbounds [12 x i8], ptr %.0632, i64 %i.aco ; 3 uses
  %i.acq = load float, ptr %i.acp, align 4, !tbaa !93 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  %i.acs = load float, ptr %i.acr, align 4, !tbaa !93 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  %i.acu = load float, ptr %i.act, align 4, !tbaa !93 ; 2 uses
  %invariant.gep = getelementptr [12 x i8], ptr %.0632, i64 %i.aco ; 2 uses
  %i.acv = call i64 @llvm.smax.i64(i64 %i.acn, i64 %i.re)
  %i.acw = add i64 %i.acv, %i.acm
  %i.acx = lshr i64 %i.acw, 1
  %i.acy = call i64 @llvm.umin.i64(i64 %i.qh, i64 %i.acx) ; 2 uses
  %min.iters.check1132 = icmp samesign ult i64 %i.acy, 4
  br i1 %min.iters.check1132, label %scalar.ph1131.preheader, label %vector.ph1133

vector.ph1133:                                    ; preds = %.preheader639
  %i.acz = add nuw i64 %i.acy, 1                  ; 2 uses
  %i.ada = and i64 %i.acz, 3                      ; 2 uses
  %i.adb = icmp eq i64 %i.ada, 0
  %i.adc = select i1 %i.adb, i64 4, i64 %i.ada
  %n.vec1134 = sub i64 %i.acz, %i.adc             ; 2 uses
  %23 = shl i64 %n.vec1134, 1
  %broadcast.splatinsert1135 = insertelement <4 x float> poison, float %i.acq, i64 0
  %broadcast.splat1136 = shufflevector <4 x float> %broadcast.splatinsert1135, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1137 = insertelement <4 x float> poison, float %i.acs, i64 0
  %broadcast.splat1138 = shufflevector <4 x float> %broadcast.splatinsert1137, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1139 = insertelement <4 x float> poison, float %i.acu, i64 0
  %broadcast.splat1140 = shufflevector <4 x float> %broadcast.splatinsert1139, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body1141

vector.body1141:                                  ; preds = %vector.body1141, %vector.ph1133
  %index1142 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1150, %vector.body1141 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 2, i64 4, i64 6>, %vector.ph1133 ], [ %vec.ind.next, %vector.body1141 ] ; 3 uses
  %.idx = mul i64 %index1142, 24
  %i.add = getelementptr i8, ptr %invariant.gep, i64 %.idx
  %wide.vec = load <24 x float>, ptr %i.add, align 4, !tbaa !93 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 0, i32 6, i32 12, i32 18>
  %strided.vec1143 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 1, i32 7, i32 13, i32 19>
  %strided.vec1144 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <4 x i32> <i32 2, i32 8, i32 14, i32 20>
  %i.ade = fmul <4 x float> %broadcast.splat1138, %strided.vec1143
  %i.adf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1136, <4 x float> %strided.vec, <4 x float> %i.ade)
  %i.adg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat1140, <4 x float> %strided.vec1144, <4 x float> %i.adf)
  %i.adh = fpext <4 x float> %i.adg to <4 x double>
  %wide.gep = getelementptr inbounds nuw [8 x i8], ptr %.0634, <4 x i64> %vec.ind ; 2 uses
  %i.adi = extractelement <4 x ptr> %wide.gep, i64 0
  %wide.vec1145 = load <8 x double>, ptr %i.adi, align 8, !tbaa !91
  %strided.vec1146 = shufflevector <8 x double> %wide.vec1145, <8 x double> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adj = fadd <4 x double> %strided.vec1146, %i.adh
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %i.adj, <4 x ptr> align 8 %wide.gep, <4 x i1> splat (i1 true)), !tbaa !91
  %wide.gep1147 = getelementptr inbounds nuw [4 x i8], ptr %.0633, <4 x i64> %vec.ind ; 2 uses
  %i.adk = extractelement <4 x ptr> %wide.gep1147, i64 0
  %wide.vec1148 = load <8 x i32>, ptr %i.adk, align 4, !tbaa !47
  %strided.vec1149 = shufflevector <8 x i32> %wide.vec1148, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adl = add nsw <4 x i32> %strided.vec1149, splat (i32 1)
  call void @llvm.masked.scatter.v4i32.v4p0(<4 x i32> %i.adl, <4 x ptr> align 4 %wide.gep1147, <4 x i1> splat (i1 true)), !tbaa !47
  %index.next1150 = add nuw i64 %index1142, 4     ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 8)
  %i.adm = icmp eq i64 %index.next1150, %n.vec1134
  br i1 %i.adm, label %scalar.ph1131.preheader, label %vector.body1141, !llvm.loop !37

scalar.ph1131.preheader:                          ; preds = %vector.body1141, %.preheader639
  %indvars.iv797.ph = phi i64 [ 0, %.preheader639 ], [ %23, %vector.body1141 ]
  br label %scalar.ph1131

scalar.ph1131:                                    ; preds = %scalar.ph1131.preheader, %scalar.ph1131
  %indvars.iv797 = phi i64 [ %indvars.iv.next798, %scalar.ph1131 ], [ %indvars.iv797.ph, %scalar.ph1131.preheader ] ; 4 uses
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv797 ; 3 uses
  %i.adn = load float, ptr %gep, align 4, !tbaa !93
  %i.ado = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.adp = load float, ptr %i.ado, align 4, !tbaa !93
  %i.adq = fmul float %i.acs, %i.adp
  %i.adr = call float @llvm.fmuladd.f32(float %i.acq, float %i.adn, float %i.adq)
  %i.ads = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.adt = load float, ptr %i.ads, align 4, !tbaa !93
  %i.adu = call noundef float @llvm.fmuladd.f32(float %i.acu, float %i.adt, float %i.adr)
  %i.adv = fpext float %i.adu to double
  %i.adw = getelementptr inbounds nuw [8 x i8], ptr %.0634, i64 %indvars.iv797 ; 2 uses
  %i.adx = load double, ptr %i.adw, align 8, !tbaa !91
  %i.ady = fadd double %i.adx, %i.adv
  store double %i.ady, ptr %i.adw, align 8, !tbaa !91
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %.0633, i64 %indvars.iv797 ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !47
  %i.aeb = add nsw i32 %i.aea, 1
  store i32 %i.aeb, ptr %i.adz, align 4, !tbaa !47
  %indvars.iv.next798 = add nuw nsw i64 %indvars.iv797, 2 ; 3 uses
  %i.aec = add nsw i64 %indvars.iv.next798, %indvars.iv800
  %i.aed = icmp slt i64 %i.aec, %i.re
  %i.aee = icmp slt i64 %indvars.iv.next798, %i.qa
  %or.cond = and i1 %i.aed, %i.aee
  br i1 %or.cond, label %scalar.ph1131, label %..critedge_crit_edge, !llvm.loop !38

..critedge_crit_edge:                             ; preds = %scalar.ph1131
  %indvars.iv.next801 = add nsw i64 %indvars.iv800, 1 ; 2 uses
  %exitcond804.not = icmp eq i64 %indvars.iv.next801, %i.re
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond804.not, label %.loopexit, label %.preheader639, !llvm.loop !39

.loopexit:                                        ; preds = %..critedge_crit_edge, %.preheader643, %.loopexit645
  %exitcond809.not = icmp eq i64 %indvars.iv.next806, %wide.trip.count808
  br i1 %exitcond809.not, label %._crit_edge704, label %.lr.ph703, !llvm.loop !40

._crit_edge704:                                   ; preds = %.loopexit, %.loopexit652
  %.sroa.13.1 = phi i32 [ %.sroa.13.0, %.loopexit652 ], [ %i.abe, %.loopexit ] ; 2 uses
  %.sroa.0.4 = phi double [ %.sroa.0.1, %.loopexit652 ], [ %.sroa.0.3, %.loopexit ] ; 2 uses
  %.sroa.8.4 = phi double [ %.sroa.8.1, %.loopexit652 ], [ %.sroa.8.3, %.loopexit ] ; 2 uses
  %.sroa.11.4 = phi double [ %.sroa.11.1, %.loopexit652 ], [ %.sroa.11.3, %.loopexit ] ; 2 uses
  %.0280.lcssa = phi double [ 0.000000e+00, %.loopexit652 ], [ %i.rw, %.loopexit ]
  %i.aef = load ptr, ptr %i.os, align 8, !tbaa !87 ; 3 uses
  %i.aeg = load <2 x double>, ptr %i.aef, align 8, !tbaa !91
  %i.aeh = fdiv <2 x double> %i.aeg, %i.qc        ; 2 uses
  store <2 x double> %i.aeh, ptr %i.aef, align 8, !tbaa !91
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 16 ; 2 uses
  %i.aej = load double, ptr %i.aei, align 8, !tbaa !91
  %i.aek = fdiv double %i.aej, %i.ps
  store double %i.aek, ptr %i.aei, align 8, !tbaa !91
  %i.ael = extractelement <2 x double> %i.aeh, i64 0
  %i.aem = fadd double %i.ael, 0.000000e+00
  %i.aen = load ptr, ptr %i.pa, align 8, !tbaa !87 ; 3 uses
  %i.aeo = load <2 x double>, ptr %i.aen, align 8, !tbaa !91
  %i.aep = fdiv <2 x double> %i.aeo, %i.qc        ; 2 uses
  store <2 x double> %i.aep, ptr %i.aen, align 8, !tbaa !91
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aen, i64 16 ; 2 uses
  %i.aer = load double, ptr %i.aeq, align 8, !tbaa !91
  %i.aes = fdiv double %i.aer, %i.ps
  store double %i.aes, ptr %i.aeq, align 8, !tbaa !91
  %i.aet = extractelement <2 x double> %i.aep, i64 1
  %i.aeu = fadd double %i.aem, %i.aet
  %i.aev = load ptr, ptr %i.pg, align 8, !tbaa !87 ; 3 uses
  %i.aew = load <2 x double>, ptr %i.aev, align 8, !tbaa !91
  %i.aex = fdiv <2 x double> %i.aew, %i.qc
  store <2 x double> %i.aex, ptr %i.aev, align 8, !tbaa !91
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aev, i64 16 ; 2 uses
  %i.aez = load double, ptr %i.aey, align 8, !tbaa !91
  %i.afa = fdiv double %i.aez, %i.ps              ; 2 uses
  store double %i.afa, ptr %i.aey, align 8, !tbaa !91
  %i.afb = fadd double %i.aeu, %i.afa             ; 2 uses
  %i.afc = fdiv double %.0280.lcssa, %i.ps        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  invoke void @_Z6jacobiPPdiS_S0_Pi(ptr noundef nonnull %i.os, i32 noundef 3, ptr noundef nonnull %i.o, ptr noundef nonnull %i.ot, ptr noundef nonnull %i.a)
          to label %.noexc533 unwind label %.loopexit.split-lp.loopexit

.noexc533:                                        ; preds = %._crit_edge704
  %i.afd = load double, ptr %i.o, align 16, !tbaa !91 ; 2 uses
  %i.afe = load double, ptr %i.pr, align 16, !tbaa !91 ; 3 uses
  %i.aff = fcmp olt double %i.afd, %i.afe         ; 2 uses
  %spec.store.select.i516 = select i1 %i.aff, i32 0, i32 2 ; 2 uses
  %i.afg = load double, ptr %.027.1.i.sroa.gep, align 8, !tbaa !91 ; 2 uses
  %i.afh = fcmp ogt double %i.afg, %i.afd         ; 4 uses
  %spec.select1093 = zext i1 %i.afh to i64        ; 4 uses
  %i.afi = zext nneg i32 %spec.store.select.i516 to i64
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afi
  %i.afk = load double, ptr %i.afj, align 16, !tbaa !91
  %i.afl = fcmp uge double %i.afg, %i.afk         ; 2 uses
  %.sroa.28.8 = select i1 %i.afl, i32 %spec.store.select.i516, i32 1 ; 3 uses
  %.027.1.i.sroa.gep.val1099 = load double, ptr %.027.1.i.sroa.gep, align 8
  %.val1100 = load double, ptr %i.o, align 16
  %i.afm = select i1 %i.afh, double %.027.1.i.sroa.gep.val1099, double %.val1100
  %i.afn = fcmp ogt double %i.afe, %i.afm
  %i.afo = zext nneg i32 %.sroa.28.8 to i64
  %i.afp = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.afo
  %i.afq = load double, ptr %i.afp, align 8, !tbaa !91
  %i.afr = fcmp olt double %i.afe, %i.afq         ; 2 uses
  br i1 %i.afn, label %.thread41.i530, label %bb.cn

bb.cn:                                            ; preds = %.noexc533
  br i1 %i.afr, label %.preheader.thread.i529, label %.preheader.i519

.thread41.i530:                                   ; preds = %.noexc533
  br i1 %i.afr, label %.thread.i521, label %.preheader.thread42.i531

.preheader.i519:                                  ; preds = %bb.cn
  br i1 %i.afh, label %.preheader.thread42.i531, label %.thread37.i523

.preheader.thread.i529:                           ; preds = %bb.cn
  br i1 %i.afh, label %.thread.i521, label %.thread37.thread.i525

.preheader.thread42.i531:                         ; preds = %.thread41.i530, %.preheader.i519
  %.sroa.0863.10 = phi i64 [ 2, %.thread41.i530 ], [ %spec.select1093, %.preheader.i519 ]
  %i.afs = phi i32 [ 2, %.thread41.i530 ], [ 1, %.preheader.i519 ]
  %.not26.i520 = and i1 %i.afl, %i.aff            ; 2 uses
  %spec.select1225 = select i1 %.not26.i520, i32 %.sroa.13.1, i32 0
  %spec.select1226 = select i1 %.not26.i520, i32 0, i32 %.sroa.28.8
  br label %.thread.i521

.thread.i521:                                     ; preds = %.preheader.thread42.i531, %.preheader.thread.i529, %.thread41.i530
  %.sroa.13.2 = phi i32 [ %spec.select1225, %.preheader.thread42.i531 ], [ 0, %.thread41.i530 ], [ 0, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.12 = phi i64 [ %.sroa.0863.10, %.preheader.thread42.i531 ], [ %spec.select1093, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 2 uses
  %.sroa.28.10 = phi i32 [ %spec.select1226, %.preheader.thread42.i531 ], [ 2, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ] ; 3 uses
  %i.aft = phi i32 [ %i.afs, %.preheader.thread42.i531 ], [ 1, %.preheader.thread.i529 ], [ 2, %.thread41.i530 ]
  %.not.1.i522 = icmp eq i32 %i.aft, 1
  br i1 %.not.1.i522, label %.thread39.i527, label %.thread37.i523

.thread37.i523:                                   ; preds = %.thread.i521, %.preheader.i519
  %.sroa.13.3 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.1, %.preheader.i519 ]
  %.sroa.0863.13 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %spec.select1093, %.preheader.i519 ]
  %.sroa.28.11 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.8, %.preheader.i519 ] ; 3 uses
  %i.afu = phi i32 [ 2, %.thread.i521 ], [ 0, %.preheader.i519 ]
  %.not26.1.i524 = icmp eq i32 %.sroa.28.11, 1    ; 2 uses
  %spec.select1227 = select i1 %.not26.1.i524, i32 %.sroa.13.3, i32 1
  %spec.select1228 = select i1 %.not26.1.i524, i32 1, i32 %.sroa.28.11
  br label %.thread37.thread.i525

.thread37.thread.i525:                            ; preds = %.thread37.i523, %.preheader.thread.i529
  %.sroa.13.4 = phi i32 [ %spec.select1227, %.thread37.i523 ], [ 1, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.0863.15 = phi i64 [ %.sroa.0863.13, %.thread37.i523 ], [ %spec.select1093, %.preheader.thread.i529 ] ; 2 uses
  %.sroa.28.13 = phi i32 [ %.sroa.28.11, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ] ; 2 uses
  %i.afv = phi i32 [ %i.afu, %.thread37.i523 ], [ 0, %.preheader.thread.i529 ]
  %i.afw = phi i32 [ %spec.select1228, %.thread37.i523 ], [ 2, %.preheader.thread.i529 ]
  %.not.2.i526 = icmp eq i32 %i.afv, 2
  br i1 %.not.2.i526, label %bb.co, label %.thread39.i527

.thread39.i527:                                   ; preds = %.thread37.thread.i525, %.thread.i521
  %.sroa.13.5 = phi i32 [ %.sroa.13.2, %.thread.i521 ], [ %.sroa.13.4, %.thread37.thread.i525 ]
  %.sroa.0863.16 = phi i64 [ %.sroa.0863.12, %.thread.i521 ], [ %.sroa.0863.15, %.thread37.thread.i525 ]
  %.sroa.28.14 = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  %i.afx = phi i32 [ %.sroa.28.10, %.thread.i521 ], [ %i.afw, %.thread37.thread.i525 ]
  %.not26.2.i528 = icmp eq i32 %i.afx, 2
  %spec.select = select i1 %.not26.2.i528, i32 %.sroa.13.5, i32 2
  br label %bb.co

bb.co:                                            ; preds = %.thread39.i527, %.thread37.thread.i525
  %.sroa.13.6 = phi i32 [ %spec.select, %.thread39.i527 ], [ %.sroa.13.4, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.0863.17 = phi i64 [ %.sroa.0863.16, %.thread39.i527 ], [ %.sroa.0863.15, %.thread37.thread.i525 ] ; 2 uses
  %.sroa.28.15 = phi i32 [ %.sroa.28.14, %.thread39.i527 ], [ %.sroa.28.13, %.thread37.thread.i525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.afy = load float, ptr %i.k, align 4, !tbaa !93
  %i.afz = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.aga = invoke noundef float @_Z26output_env_get_time_factorPK16gmx_output_env_t(ptr noundef %i.afz)
          to label %bb.cp unwind label %.loopexit.split-lp.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.agb = fmul float %i.afy, %i.aga
  %i.agc = fpext float %i.agb to double
  %i.agd = call double @sqrt(double noundef %i.afc) #18
  %i.age = call double @sqrt(double noundef %i.afb) #18
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.sroa.0863.17
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !91
  %i.agh = call double @sqrt(double noundef %i.agg) #18
  %i.agi = sext i32 %.sroa.13.6 to i64            ; 2 uses
  %i.agj = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.agi
  %i.agk = load double, ptr %i.agj, align 8, !tbaa !91
  %i.agl = call double @sqrt(double noundef %i.agk) #18
  %i.agm = zext nneg i32 %.sroa.28.15 to i64      ; 2 uses
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.agm
  %i.ago = load double, ptr %i.agn, align 8, !tbaa !91
  %i.agp = call double @sqrt(double noundef %i.ago) #18
  %i.agq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.69, double noundef %i.agc, double noundef %i.agd, double noundef %i.age, double noundef %i.agh, double noundef %i.agl, double noundef %i.agp) #18 ; 0 uses
  %i.agr = load i8, ptr @_ZZ12gmx_polystatiPPcE3bPC, align 1, !tbaa !83, !range !84, !noundef !85
  %i.ags = trunc nuw i8 %i.agr to i1
  br i1 %i.ags, label %.preheader648.preheader, label %.loopexit649

.preheader648.preheader:                          ; preds = %bb.cp
  %i.agt = fdiv double %.sroa.0.4, %i.ps
  %i.agu = call double @sqrt(double noundef %i.agt) #18
  %i.agv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.70, double noundef %i.agu) #18 ; 0 uses
  %i.agw = fdiv double %.sroa.8.4, %i.ps
  %i.agx = call double @sqrt(double noundef %i.agw) #18
  %i.agy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.70, double noundef %i.agx) #18 ; 0 uses
  %i.agz = fdiv double %.sroa.11.4, %i.ps
  %i.aha = call double @sqrt(double noundef %i.agz) #18
  %i.ahb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fu, ptr noundef nonnull @.str.70, double noundef %i.aha) #18 ; 0 uses
  br label %.loopexit649
end_hunk_1
