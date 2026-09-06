Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_gyrate?download=true
inline.NumInlined: 351
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z10gmx_gyrateiPPc:._crit_edge.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.be, i8 0, i64 16, i1 false)
  store i64 2, ptr %i.bf, align 16, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i8 0, i64 24, i1 false)
  store i32 23, ptr %i.bh, align 16, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store i64 10, ptr %i.bj, align 8, !tbaa !52
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr null, ptr %i.bm, align 16, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 184
  store ptr @.str.30, ptr %i.bn, align 8, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 192
  store i64 4, ptr %i.bo, align 16, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 224
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  store i32 21, ptr %i.bq, align 16, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 232
  store ptr @.str.31, ptr %i.br, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 240
  store ptr @.str.32, ptr %i.bs, align 16, !tbaa !51
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 248
  store i64 12, ptr %i.bt, align 8, !tbaa !52
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  store i32 5, ptr %i.p, align 4, !tbaa !42
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sink.sroa.gep628 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sink.sroa.gep629 = getelementptr inbounds nuw i8, ptr %4, i64 128
  %.sink.sroa.gep630 = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.bv = invoke noundef ptr @_Z13add_acf_pargsPiP7t_pargs(ptr noundef nonnull %i.p, ptr noundef nonnull %2)
          to label %bb.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.bw = load i32, ptr %i.p, align 4, !tbaa !42
  %i.bx = invoke noundef zeroext i1 @_Z17parse_common_argsPiPPcmiP8t_filenmiP7t_pargsiPPKciS8_PP16gmx_output_env_t(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef 16608, i32 noundef 5, ptr noundef nonnull %6, i32 noundef %i.bw, ptr noundef %i.bv, i32 noundef 11, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.o)
          to label %bb.b unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  br i1 %i.bx, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef 269, ptr noundef %i.bv)
          to label %_ZL14gmx_sfree_implI7t_pargsEvPKcS2_iPT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit343:                                     ; preds = %bb.cu, %bb.ct, %bb.cs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIdEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %bb.ck, %bb.bx, %.lr.ph
  %lpad.loopexit344 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bt, %bb.cv
  %lpad.loopexit347 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %._crit_edge.i.i, %bb.a, %bb.d, %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %bb.t, %bb.bm, %bb.bq, %bb.cx, %bb.cz, %bb.da, %bb.dh, %bb.di, %bb.c, %bb.m, %_ZNSt10filesystem7__cxx114pathD2Ev.exit181, %bb.ci
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.b
  %i.by = load ptr, ptr @stdout, align 8, !tbaa !54
  %i.bz = call i64 @fwrite(ptr nonnull @.str.35, i64 85, i64 1, ptr %i.by) ; 0 uses
  %i.ca = invoke noundef zeroext i1 @_Z8opt2bSetPKciPK8t_filenm(ptr noundef nonnull @.str.31, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.cb = load i32, ptr @_ZZ10gmx_gyrateiPPcE4nmol, align 4
  %i.cc = icmp ne i32 %i.cb, 1
  %or.cond = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(66) @.str.34, i8 noundef zeroext 2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 280, ptr noundef nonnull @.str.36) #17
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #16
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn139 = phi { ptr, i32 } [ %i.ce, %bb.j ], [ %i.cd, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.e
  %i.cf = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bRot, align 1, !tbaa !56, !range !57, !noundef !58
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bMOI, align 1, !range !57
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond3 = select i1 %i.cg, i1 true, i1 %i.ci
  %i.cj = or i1 %i.ca, %or.cond3                  ; 2 uses
  %i.ck = zext i1 %i.cj to i8
  store i8 %i.ck, ptr @_ZZ10gmx_gyrateiPPcE4bRot, align 1, !tbaa !56
  br i1 %i.cj, label %bb.m, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread

bb.m:                                             ; preds = %bb.l
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.cl = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.34, i32 noundef 290, i64 noundef 3, i64 noundef 8)
          to label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit:         ; preds = %bb.m
  %.pre = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bMOI, align 1, !tbaa !56, !range !57
  %i.cm = trunc nuw i8 %.pre to i1
  br i1 %i.cm, label %.thread, label %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread

.thread:                                          ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %puts118 = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  store i8 0, ptr @_ZZ10gmx_gyrateiPPcE2bQ, align 1, !tbaa !56
  br label %bb.o

_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread:  ; preds = %bb.l, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit
  %.0336556 = phi ptr [ %i.cl, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit ], [ null, %bb.l ] ; 2 uses
  %.pre416 = load i8, ptr @_ZZ10gmx_gyrateiPPcE2bQ, align 1, !tbaa !56, !range !57
  %i.cn = trunc nuw i8 %.pre416 to i1
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread
  %puts119 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread
  %.0336555558 = phi ptr [ %i.cl, %.thread ], [ %.0336556, %bb.n ], [ %.0336556, %_ZL13gmx_snew_implIPfEvPKcS2_iRPT_m.exit.thread ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  %i.co = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 26, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  store ptr %i.co, ptr %i.q, align 8, !tbaa !17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i8 noundef zeroext 2)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
  %i.cp = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %3, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef nonnull %i.h, i1 noundef zeroext true)
          to label %bb.r unwind label %bb.aa      ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cq, ptr noundef nonnull %i.cr) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.s, %bb.r
  %i.cs = load ptr, ptr %8, align 8, !tbaa !20    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !16
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.cx = invoke noundef ptr @_Z11ftp2fn_nulliiPK8t_filenm(i32 noundef 23, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.t:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 2344
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.cy, ptr noundef %i.cx, i32 noundef 1, ptr noundef nonnull %i.m, ptr noundef nonnull %i.n, ptr noundef nonnull %i.l)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.cz = load i32, ptr @_ZZ10gmx_gyrateiPPcE4nmol, align 4, !tbaa !42 ; 4 uses
  %i.da = load i32, ptr %i.m, align 4, !tbaa !42  ; 4 uses
  %i.db = icmp sgt i32 %i.cz, %i.da
  br i1 %i.db, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = srem i32 %i.da, %i.cz
  %i.dd = sdiv exact i32 %i.da, %i.cz             ; 7 uses
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(66) @.str.34, i8 noundef zeroext 2)
          to label %bb.x unwind label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.de = load i32, ptr %i.m, align 4, !tbaa !42
  %i.df = load i32, ptr @_ZZ10gmx_gyrateiPPcE4nmol, align 4, !tbaa !42
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef 307, ptr noundef nonnull @.str.41, i32 noundef %i.de, i32 noundef %i.df) #17
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.p, %bb.o
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.pn120 = phi { ptr, i32 } [ %i.dh, %bb.aa ], [ %i.dg, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.loopexit.split-lp

bb.ac:                                            ; preds = %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #16
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn137 = phi { ptr, i32 } [ %i.dj, %bb.ad ], [ %i.di, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.v
  %i.dk = load ptr, ptr %i.o, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  %i.dl = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 1, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.ag unwind label %bb.ao

bb.ag:                                            ; preds = %bb.af
  store ptr %i.dl, ptr %i.r, align 8, !tbaa !17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.r, i8 noundef zeroext 2)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  %i.dm = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.dk, ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %i.k, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %bb.ai unwind label %bb.ap     ; 3 uses

bb.ai:                                            ; preds = %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i177 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i177, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.do) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178: ; preds = %bb.aj, %bb.ai
  %i.dp = load ptr, ptr %10, align 8, !tbaa !20   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !16
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit181

_ZNSt10filesystem7__cxx114pathD2Ev.exit181:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i178, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.du = sext i32 %i.dm to i64
  %i.dv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34, i32 noundef 312, i64 noundef range(i64 -2147483648, 2147483648) %i.du, i64 noundef 12)
          to label %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 11 uses

_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit:       ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit181
  %i.dw = load float, ptr %i.k, align 4, !tbaa !62
  %i.dx = load i8, ptr @_ZZ10gmx_gyrateiPPcE2bQ, align 1, !tbaa !56, !range !57, !noundef !58
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %_ZL13gmx_snew_implIA3_fEvPKcS2_iRPT_m.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  %i.dz = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.al unwind label %bb.ar

bb.al:                                            ; preds = %bb.ak
  store ptr %i.dz, ptr %i.s, align 8, !tbaa !17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.s, i8 noundef zeroext 2)
          to label %._crit_edge.i.i183 unwind label %bb.ar

._crit_edge.i.i183:                               ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.ea, ptr %12, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ea, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 9, ptr %i.eb, align 8, !tbaa !15
  %i.ec = getelementptr inbounds nuw i8, ptr %12, i64 25
  store i8 0, ptr %i.ec, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  %i.ed = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store ptr %i.ed, ptr %13, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.ed, ptr noundef nonnull align 1 dereferenceable(7) @.str.45, i64 7, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 7, ptr %i.ee, align 8, !tbaa !15
  %i.ef = getelementptr inbounds nuw i8, ptr %13, i64 23
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  %i.eg = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.eh = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef %i.eg)
          to label %bb.am unwind label %bb.as

bb.am:                                            ; preds = %._crit_edge.i.i183
  %i.ei = load ptr, ptr %13, align 8, !tbaa !20   ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.ed
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191: ; preds = %bb.am
  %i.ek = load i64, ptr %i.ed, align 8, !tbaa !16
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.em = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ea
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193
  %i.eo = load i64, ptr %i.ea, align 8, !tbaa !16
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.eq = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i197 = icmp eq ptr %i.er, null
  br i1 %.not.i.i.i197, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i198, label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull %i.er) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i198

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i198: ; preds = %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.es = load ptr, ptr %11, align 8, !tbaa !20   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i198
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !16
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit201

_ZNSt10filesystem7__cxx114pathD2Ev.exit201:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %bb.bk

bb.ao:                                            ; preds = %bb.ag, %bb.af
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ah
  %i.ey = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn122 = phi { ptr, i32 } [ %i.ey, %bb.ap ], [ %i.ex, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %.loopexit.split-lp
end_hunk_0
begin_hunk_1_@_Z10gmx_gyrateiPPc:._crit_edge.i.i
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232, %bb.az
  %.pn128.pn.pn = phi { ptr, i32 } [ %.pn128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit232 ], [ %i.gm, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %.loopexit.split-lp

bb.bd:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #16
  %i.gx = invoke noundef ptr @_Z6ftp2fniiPK8t_filenm(i32 noundef 21, i32 noundef 5, ptr noundef nonnull %6)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %bb.bd
  store ptr %i.gx, ptr %i.u, align 8, !tbaa !17
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.u, i8 noundef zeroext 2)
          to label %._crit_edge.i.i233 unwind label %bb.bh

._crit_edge.i.i233:                               ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.gy = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  store ptr %i.gy, ptr %18, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.gy, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.gz = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 9, ptr %i.gz, align 8, !tbaa !15
  %i.ha = getelementptr inbounds nuw i8, ptr %18, i64 25
  store i8 0, ptr %i.ha, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  %i.hb = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 6 uses
  store ptr %i.hb, ptr %19, align 8, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.hb, ptr noundef nonnull align 1 dereferenceable(7) @.str.45, i64 7, i1 false)
  %i.hc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 7, ptr %i.hc, align 8, !tbaa !15
  %i.hd = getelementptr inbounds nuw i8, ptr %19, i64 23
  store i8 0, ptr %i.hd, align 1, !tbaa !16
  %i.he = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.hf = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.he)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %._crit_edge.i.i233
  %i.hg = load ptr, ptr %19, align 8, !tbaa !20   ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.hb
  br i1 %i.hh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.bf
  %i.hi = load i64, ptr %i.hb, align 8, !tbaa !16
  %i.hj = add i64 %i.hi, 1
  call void @_ZdlPvm(ptr noundef %i.hg, i64 noundef %i.hj) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.hk = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.gy
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243
  %i.hm = load i64, ptr %i.gy, align 8, !tbaa !16
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hk, i64 noundef %i.hn) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.ho = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !19 ; 2 uses
  %.not.i.i.i247 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i.i247, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull %i.hp) #16
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248: ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246
  %i.hq = load ptr, ptr %17, align 8, !tbaa !20   ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248
  %i.ht = load i64, ptr %i.hr, align 8, !tbaa !16
  %i.hu = add i64 %i.ht, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.hu) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit251

_ZNSt10filesystem7__cxx114pathD2Ev.exit251:       ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.bk

bb.bh:                                            ; preds = %bb.be, %bb.bd
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i233
  %i.hw = landingpad { ptr, i32 }
          cleanup
  %i.hx = load ptr, ptr %19, align 8, !tbaa !20   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hb
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.bi
  %i.hz = load i64, ptr %i.hb, align 8, !tbaa !16
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.ib = load ptr, ptr %18, align 8, !tbaa !20   ; 2 uses
  %i.ic = icmp eq ptr %i.ib, %i.gy
  br i1 %i.ic, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254
  %i.id = load i64, ptr %i.gy, align 8, !tbaa !16
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.ie) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %17) #16
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %bb.bh
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.hw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %i.hv, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %.loopexit.split-lp

bb.bk:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit226, %_ZNSt10filesystem7__cxx114pathD2Ev.exit251, %_ZNSt10filesystem7__cxx114pathD2Ev.exit201
  %.0105 = phi ptr [ %i.eh, %_ZNSt10filesystem7__cxx114pathD2Ev.exit201 ], [ %i.fw, %_ZNSt10filesystem7__cxx114pathD2Ev.exit226 ], [ %i.hf, %_ZNSt10filesystem7__cxx114pathD2Ev.exit251 ] ; 7 uses
  %i.if = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bMOI, align 1, !tbaa !56, !range !57, !noundef !58
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %.invoke, label %bb.bl

.invoke:                                          ; preds = %bb.bk, %bb.bl, %bb.bo, %bb.bn
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.bl ], [ %.sink.sroa.gep628, %bb.bn ], [ %.sink.sroa.gep629, %bb.bo ], [ %.sink.sroa.gep630, %bb.bk ]
  %.sink = phi ptr [ %4, %bb.bl ], [ %4, %bb.bn ], [ %4, %bb.bo ], [ %5, %bb.bk ]
  %i.ih = load ptr, ptr %i.o, align 8, !tbaa !60
  invoke void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef %.0105, ptr nonnull %.sink, ptr nonnull %.sink.sroa.phi, ptr noundef %i.ih)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %i.ii = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bRot, align 1, !tbaa !56, !range !57, !noundef !58
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.bm, label %.invoke

bb.bm:                                            ; preds = %bb.bl
  %i.ik = load ptr, ptr %i.o, align 8, !tbaa !60
  %i.il = invoke noundef zeroext i1 @_Z31output_env_get_print_xvgr_codesPK16gmx_output_env_t(ptr noundef %i.ik)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bm
  br i1 %i.il, label %bb.bo, label %.invoke

bb.bo:                                            ; preds = %bb.bn
  %i.im = call i64 @fwrite(ptr nonnull @.str.49, i64 47, i64 1, ptr %.0105) ; 0 uses
  br label %.invoke

bb.bp:                                            ; preds = %.invoke
  %i.in = load i32, ptr @_ZZ10gmx_gyrateiPPcE2nz, align 4, !tbaa !42
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iq = load i32, ptr %i.e, align 4, !tbaa !64
  %i.ir = invoke noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef nonnull %i.ip, i32 noundef %i.iq, i32 noundef %i.dm)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.094 = phi ptr [ null, %bb.bp ], [ %i.ir, %bb.bq ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 2352 ; 3 uses
  %i.iv = icmp sgt i32 %i.dd, 0                   ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %wide.trip.count92.i = zext i32 %i.dd to i64    ; 5 uses
  %i.ix = sext i32 %i.dd to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %.0336555558, i64 8 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0336555558, i64 16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0336555558, i64 16
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.jb = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.jd = getelementptr inbounds nuw i8, ptr %.0336555558, i64 8
  %i.je = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.jg = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.jh = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.ji = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %xtraiter610 = and i64 %wide.trip.count92.i, 3  ; 3 uses
  %i.jj = icmp ult i32 %i.dd, 4
  %unroll_iter616 = and i64 %wide.trip.count92.i, 2147483644
  %lcmp.mod612.not = icmp eq i64 %xtraiter610, 0
  %lcmp.mod615 = icmp ne i64 %xtraiter610, 0
  %xtraiter618 = and i64 %wide.trip.count92.i, 1
  %i.jk = icmp eq i32 %i.da, %i.cz
  %unroll_iter626 = and i64 %wide.trip.count92.i, 2147483646
  %lcmp.mod622.not = icmp eq i64 %xtraiter618, 0
  %lcmp.mod625 = trunc i32 %i.dd to i1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.cw, %bb.br
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %bb.cw ], [ 0, %bb.br ] ; 3 uses
  %.0102 = phi i32 [ %.2104, %bb.cw ], [ 0, %bb.br ] ; 5 uses
  %i.jl = load i32, ptr @_ZZ10gmx_gyrateiPPcE2nz, align 4, !tbaa !42
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.jn = load ptr, ptr %i.f, align 8, !tbaa !66
  invoke void @_Z14gmx_rmpbc_copyP9gmx_rmpbciPA3_KfPA3_fS5_(ptr noundef %.094, i32 noundef %i.dm, ptr noundef nonnull %i.h, ptr noundef %i.jn, ptr noundef %i.dv)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  store <2 x float> zeroinitializer, ptr %i.j, align 8, !tbaa !62
  store float 0.000000e+00, ptr %i.it, align 8, !tbaa !62
  %i.jo = load i32, ptr @_ZZ10gmx_gyrateiPPcE4nmol, align 4, !tbaa !42
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.bu, %bb.co
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.co ], [ 0, %bb.bu ] ; 2 uses
  %.099381 = phi float [ %.1100, %bb.co ], [ 0.000000e+00, %bb.bu ] ; 2 uses
  %.sroa.0324.0378 = phi float [ %i.yd, %bb.co ], [ 0.000000e+00, %bb.bu ]
  %.sroa.0322.0375 = phi float [ %.sroa.0322.1, %bb.co ], [ 0.000000e+00, %bb.bu ] ; 2 uses
  %.sroa.0313.0372 = phi float [ %i.yg, %bb.co ], [ 0.000000e+00, %bb.bu ]
  %i.jq = phi <2 x float> [ %i.yi, %bb.co ], [ zeroinitializer, %bb.bu ]
  %i.jr = phi <2 x float> [ %i.ye, %bb.co ], [ zeroinitializer, %bb.bu ]
  %i.js = phi <2 x float> [ %i.yc, %bb.co ], [ zeroinitializer, %bb.bu ] ; 2 uses
  %i.jt = load i32, ptr @_ZZ10gmx_gyrateiPPcE2nz, align 4, !tbaa !42
  %i.ju = icmp eq i32 %i.jt, 0
  %i.jv = load ptr, ptr %i.f, align 8
  %i.jw = select i1 %i.ju, ptr %i.dv, ptr %i.jv
  %i.jx = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.jy = mul nsw i64 %indvars.iv, %i.ix          ; 3 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.jx, i64 %i.jy
  %i.ka = load ptr, ptr %i.iu, align 8, !tbaa !84
  %i.kb = load i8, ptr @_ZZ10gmx_gyrateiPPcE2bQ, align 1, !tbaa !56, !range !57, !noundef !58
  %i.kc = trunc nuw i8 %i.kb to i1
  %i.kd = invoke noundef float @_Z7sub_xcmPA3_fiPKiPK6t_atomPfb(ptr noundef %i.jw, i32 noundef %i.dd, ptr noundef %i.jz, ptr noundef %i.ka, ptr noundef nonnull %i.g, i1 noundef zeroext %i.kc)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit ; 6 uses

bb.bv:                                            ; preds = %.lr.ph
  %i.ke = load i32, ptr @_ZZ10gmx_gyrateiPPcE2nz, align 4, !tbaa !42 ; 9 uses
  %i.kf = icmp eq i32 %i.ke, 0
  br i1 %i.kf, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.kg = load ptr, ptr %i.n, align 8, !tbaa !68
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %i.jy ; 9 uses
  %i.ki = load ptr, ptr %i.iu, align 8, !tbaa !84 ; 9 uses
  %i.kj = load i8, ptr @_ZZ10gmx_gyrateiPPcE2bQ, align 1, !tbaa !56, !range !57, !noundef !58
  %i.kk = trunc nuw i8 %i.kj to i1
  %i.kl = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bRot, align 1, !tbaa !56, !range !57, !noundef !58
  %i.km = trunc nuw i8 %i.kl to i1
  %i.kn = load i8, ptr @_ZZ10gmx_gyrateiPPcE4bMOI, align 1, !tbaa !56, !range !57, !noundef !58
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.km, label %bb.bx, label %.loopexit.i

bb.bx:                                            ; preds = %bb.bw
  invoke void @_Z14principal_compiPKiP6t_atomPA3_fS4_Pf(i32 noundef %i.dd, ptr noundef %i.kh, ptr noundef %i.ki, ptr noundef %i.dv, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
          to label %.noexc258 unwind label %.loopexit.split-lp.loopexit

.noexc258:                                        ; preds = %bb.bx
  %i.kp = load float, ptr %i.j, align 8, !tbaa !62 ; 3 uses
  %i.kq = load <2 x float>, ptr %i.is, align 4, !tbaa !62 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.kq, %i.kq
  %i.kr = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ks = call float @llvm.fmuladd.f32(float %i.kp, float %i.kp, float %i.kr)
  %i.kt = extractelement <2 x float> %i.kq, i64 1 ; 2 uses
  %i.ku = call noundef float @llvm.fmuladd.f32(float %i.kt, float %i.kt, float %i.ks)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ku)
  br i1 %i.ko, label %_ZL9calc_gyroPA3_fiPiP6t_atomfPfS4_bbbS0_.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.noexc258
  %i.kv = fdiv float %i.kp, %i.kd
  %i.kw = call noundef float @sqrtf(float noundef %i.kv) #16
  store float %i.kw, ptr %i.j, align 8, !tbaa !62
  %i.kx = insertelement <2 x float> poison, float %i.kd, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fdiv <2 x float> %i.kq, %i.ky           ; 2 uses
  %i.la = extractelement <2 x float> %i.kz, i64 0
  %i.lb = call noundef float @sqrtf(float noundef %i.la) #16
  store float %i.lb, ptr %i.is, align 4, !tbaa !62
  %i.lc = extractelement <2 x float> %i.kz, i64 1
  %i.ld = call noundef float @sqrtf(float noundef %i.lc) #16
  store float %i.ld, ptr %i.it, align 8, !tbaa !62
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.preheader.i, %bb.bw
  br i1 %i.iv, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.loopexit.i
  br i1 %i.kk, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  br i1 %i.jj, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  br i1 %i.jk, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i
  %.sroa.16.0.i = phi float [ %i.mn, %.lr.ph.split.us.i ], [ 0.000000e+00, %.lr.ph.split.us.i.preheader ]
  %indvars.iv62.i = phi i64 [ %indvars.iv.next63.i.1, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.le = phi <2 x float> [ %i.mj, %.lr.ph.split.us.i ], [ zeroinitializer, %.lr.ph.split.us.i.preheader ]
  %niter627 = phi i64 [ %niter627.next.1, %.lr.ph.split.us.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv62.i
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !42
  %i.lh = sext i32 %i.lg to i64                   ; 2 uses
  %i.li = getelementptr inbounds [36 x i8], ptr %i.ki, i64 %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !88
  %i.ll = call noundef float @llvm.fabs.f32(float %i.lk) ; 2 uses
  %i.lm = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.lh ; 2 uses
  %i.ln = load <2 x float>, ptr %i.lm, align 4, !tbaa !62 ; 2 uses
  %i.lo = fmul <2 x float> %i.ln, %i.ln
  %i.lp = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.lq = shufflevector <2 x float> %i.lp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lq, <2 x float> %i.le)
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !62 ; 2 uses
  %i.lu = fmul float %i.lt, %i.lt
  %i.lv = call float @llvm.fmuladd.f32(float %i.lu, float %i.ll, float %.sroa.16.0.i)
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv62.i
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 4
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !42
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %i.ma = getelementptr inbounds [36 x i8], ptr %i.ki, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !88
  %i.md = call noundef float @llvm.fabs.f32(float %i.mc) ; 2 uses
  %i.me = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.lz ; 2 uses
  %i.mf = load <2 x float>, ptr %i.me, align 4, !tbaa !62 ; 2 uses
  %i.mg = fmul <2 x float> %i.mf, %i.mf
  %i.mh = insertelement <2 x float> poison, float %i.md, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mg, <2 x float> %i.mi, <2 x float> %i.lr) ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !62 ; 2 uses
  %i.mm = fmul float %i.ml, %i.ml
  %i.mn = call float @llvm.fmuladd.f32(float %i.mm, float %i.md, float %i.lv) ; 3 uses
  %indvars.iv.next63.i.1 = add nuw nsw i64 %indvars.iv62.i, 2 ; 2 uses
  %niter627.next.1 = add i64 %niter627, 2         ; 2 uses
  %niter627.ncmp.1 = icmp eq i64 %niter627.next.1, %unroll_iter626
  br i1 %niter627.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !33

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i
  %.sroa.16.1.i = phi float [ %i.oz, %.lr.ph.split.i ], [ 0.000000e+00, %.lr.ph.split.i.preheader ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ] ; 5 uses
  %i.mo = phi <2 x float> [ %i.ov, %.lr.ph.split.i ], [ zeroinitializer, %.lr.ph.split.i.preheader ]
  %niter617 = phi i64 [ %niter617.next.3, %.lr.ph.split.i ], [ 0, %.lr.ph.split.i.preheader ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !42
  %i.mr = sext i32 %i.mq to i64                   ; 2 uses
  %i.ms = getelementptr inbounds [36 x i8], ptr %i.ki, i64 %i.mr
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !90 ; 2 uses
  %i.mu = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.mr ; 2 uses
  %i.mv = load <2 x float>, ptr %i.mu, align 4, !tbaa !62 ; 2 uses
  %i.mw = fmul <2 x float> %i.mv, %i.mv
  %i.mx = insertelement <2 x float> poison, float %i.mt, i64 0
  %i.my = shufflevector <2 x float> %i.mx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.my, <2 x float> %i.mo)
  %i.na = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.nb = load float, ptr %i.na, align 4, !tbaa !62 ; 2 uses
  %i.nc = fmul float %i.nb, %i.nb
  %i.nd = call float @llvm.fmuladd.f32(float %i.nc, float %i.mt, float %.sroa.16.1.i)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !42
  %i.nh = sext i32 %i.ng to i64                   ; 2 uses
  %i.ni = getelementptr inbounds [36 x i8], ptr %i.ki, i64 %i.nh
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !90 ; 2 uses
  %i.nk = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.nh ; 2 uses
  %i.nl = load <2 x float>, ptr %i.nk, align 4, !tbaa !62 ; 2 uses
  %i.nm = fmul <2 x float> %i.nl, %i.nl
  %i.nn = insertelement <2 x float> poison, float %i.nj, i64 0
  %i.no = shufflevector <2 x float> %i.nn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.np = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nm, <2 x float> %i.no, <2 x float> %i.mz)
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !62 ; 2 uses
  %i.ns = fmul float %i.nr, %i.nr
  %i.nt = call float @llvm.fmuladd.f32(float %i.ns, float %i.nj, float %i.nd)
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %indvars.iv.i
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !42
  %i.nx = sext i32 %i.nw to i64                   ; 2 uses
  %i.ny = getelementptr inbounds [36 x i8], ptr %i.ki, i64 %i.nx
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !90 ; 2 uses
  %i.oa = getelementptr inbounds [12 x i8], ptr %i.dv, i64 %i.nx ; 2 uses
  %i.ob = load <2 x float>, ptr %i.oa, align 4, !tbaa !62 ; 2 uses
  %i.oc = fmul <2 x float> %i.ob, %i.ob
  %i.od = insertelement <2 x float> poison, float %i.nz, i64 0
  %i.oe = shufflevector <2 x float> %i.od, <2 x float> poison, <2 x i32> zeroinitializer
  %i.of = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.oe, <2 x float> %i.np)
  %i.og = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oh = load float, ptr %i.og, align 4, !tbaa !62 ; 2 uses
end_hunk_1
