Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_hydorder?download=true
inline.NumInlined: 289
inline.NumDeleted: 114
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z12gmx_hydorderiPPc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef nonnull align 1 dereferenceable(68) @.str.32, i8 noundef zeroext 2)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %.tail249.thread
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 692, ptr noundef nonnull @.str.34) #16
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %.tail249.thread
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %32) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.v ], [ %i.bt, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #15
  br label %.body

bb.x:                                             ; preds = %.tail249, %.tail245, %.tail
  %.str.37.sink = phi ptr [ @.str.36, %.tail245 ], [ @.str.35, %.tail ], [ @.str.37, %.tail249 ]
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !95
  %i.bw = call i64 @fwrite(ptr nonnull %.str.37.sink, i64 40, i64 1, ptr %i.bv) #17 ; 0 uses
  %i.bx = invoke { ptr, ptr } @_Z7opt2fnsB5cxx11PKciPK8t_filenm(ptr noundef nonnull @.str.26, i32 noundef 6, ptr noundef nonnull %30)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.by = extractvalue { ptr, ptr } %i.bx, 0      ; 3 uses
  %i.bz = extractvalue { ptr, ptr } %i.bx, 1
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = ashr exact i64 %i.cc, 5
  %.not19 = icmp eq i64 %i.cc, 64
  br i1 %.not19, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(68) @.str.32, i8 noundef zeroext 2)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 707, ptr noundef nonnull @.str.38, i64 noundef %i.cd) #16
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

.loopexit:                                        ; preds = %bb.bv, %.noexc114, %.noexc115
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc112, %bb.bu
  %lpad.loopexit255 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.au
  %lpad.loopexit258 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.as
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph341.i, %.noexc54
  %lpad.loopexit263 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc84, %.noexc83, %.noexc82, %.noexc81, %.noexc80, %.noexc79, %.noexc78, %.noexc77, %.noexc76, %.noexc75, %.noexc74, %.loopexit.2.i.i
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.us.i.i
  %lpad.loopexit268 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph255.split.i.i
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph345.i, %.noexc52
  %lpad.loopexit274 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bk, %.noexc95, %.noexc94, %.noexc93, %.noexc92, %.noexc91, %.noexc90, %.noexc89, %.noexc88, %.noexc87, %.noexc86, %_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i, %.noexc71, %.noexc70, %.noexc69, %.noexc68, %._crit_edge.3.i.i, %.noexc66, %._crit_edge.2.i.i, %.noexc64, %._crit_edge.1.i.i, %.noexc62, %._crit_edge.i.i, %.noexc59, %.preheader251.i.i, %.loopexit.i, %.noexc50, %.noexc49, %.noexc48, %bb.ar
  %lpad.loopexit276 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i, %.noexc46
  %lpad.loopexit279 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc44, %.lr.ph337.i
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.noexc144, %.noexc143, %.noexc142, %.noexc141, %.noexc140, %._crit_edge301.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i127, %._crit_edge.i123, %.noexc136, %.noexc135, %.noexc134, %bb.bx, %.noexc117, %._crit_edge372.i, %.noexc110, %.noexc109, %.noexc108, %.noexc107, %.noexc106, %._crit_edge363.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i, %._crit_edge.i.i.i, %.noexc102, %.noexc101, %.noexc100, %bb.bl, %.noexc42, %.noexc41, %bb.ap, %bb.ak, %.noexc38, %.noexc37, %.noexc36, %.noexc35, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %bb.af, %bb.x
  %lpad.loopexit.split-lp282 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.z
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn28 = phi { ptr, i32 } [ %i.cf, %bb.ad ], [ %i.ce, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.cg = load float, ptr @_ZZ12gmx_hydorderiPPcE8binwidth, align 4, !tbaa !93 ; 4 uses
  %i.ch = load i32, ptr @_ZZ12gmx_hydorderiPPcE9nsttblock, align 4, !tbaa !81 ; 3 uses
  %i.ci = load float, ptr @_ZZ12gmx_hydorderiPPcE3sg1, align 4, !tbaa !93
  %i.cj = load float, ptr @_ZZ12gmx_hydorderiPPcE3sg2, align 4, !tbaa !93
  %i.ck = load ptr, ptr %i.q, align 8, !tbaa !97  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.bf, ptr %i.h, align 8, !tbaa !15
  store ptr %i.bg, ptr %i.i, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i8 noundef zeroext 2)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.af
  %i.cl = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %19, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.o, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %.noexc34
  %i.cm = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.cn) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.ah, %bb.ag
  %i.co = load ptr, ptr %20, align 8, !tbaa !20   ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !21
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cs) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.ct = load float, ptr %i.o, align 16, !tbaa !93
  %i.cu = fdiv float %i.ct, %i.cg
  %i.cv = fadd float %i.cu, 5.000000e-01
  %i.cw = fptosi float %i.cv to i32               ; 14 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.cy = load <4 x float>, ptr %i.cx, align 16
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.db = load float, ptr %i.da, align 16, !tbaa !93
  %i.dc = insertelement <2 x float> %i.cz, float %i.db, i64 1
  %i.dd = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de
  %i.dg = fadd <2 x float> %i.df, splat (float 5.000000e-01)
  %i.dh = fptosi <2 x float> %i.dg to <2 x i32>   ; 5 uses
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.di = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef 322, i64 noundef 1, i64 noundef 8)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.dj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.32, i32 noundef 323, i64 noundef 1, i64 noundef 8)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc36:                                         ; preds = %.noexc35
  %i.dk = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, i32 noundef 324, i64 noundef 1, i64 noundef 4)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc37:                                         ; preds = %.noexc36
  %i.dl = getelementptr inbounds nuw i8, ptr %19, i64 2344 ; 3 uses
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.dl, ptr noundef %i.be, i32 noundef 1, ptr noundef %i.dk, ptr noundef %i.dj, ptr noundef %i.di)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc38:                                         ; preds = %.noexc37
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext 2)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc39:                                         ; preds = %.noexc38
  %i.dm = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.ck, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
          to label %bb.ai unwind label %bb.an     ; 16 uses

bb.ai:                                            ; preds = %.noexc39
  %i.dn = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i216.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i216.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef nonnull %i.do) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i: ; preds = %bb.aj, %bb.ai
  %i.dp = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !21
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.du = load i32, ptr %i.dl, align 8, !tbaa !114
  %i.dv = icmp sgt i32 %i.dm, %i.du
  br i1 %i.dv, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(68) @.str.32, i8 noundef zeroext 2)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.ak
  %i.dw = load i32, ptr %i.dl, align 8, !tbaa !114
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 331, ptr noundef nonnull @.str.46, i32 noundef %i.dw, i32 noundef %i.dm) #16
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %.noexc40
  unreachable

bb.am:                                            ; preds = %.noexc34
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.bw

bb.an:                                            ; preds = %.noexc39
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.bw

bb.ao:                                            ; preds = %.noexc40
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.bw

bb.ap:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i
  %i.ea = load ptr, ptr %i.dj, align 8, !tbaa !115
  invoke void @_Z11check_indexPKciPiS0_i(ptr noundef null, i32 noundef 1, ptr noundef %i.ea, ptr noundef null, i32 noundef %i.dm)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %bb.ap
  %i.eb = sext i32 %i.cw to i64                   ; 7 uses
  %i.ec = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.32, i32 noundef 337, i64 noundef range(i64 -2147483648, 2147483648) %i.eb, i64 noundef 8)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc42:                                         ; preds = %.noexc41
  %i.ed = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.32, i32 noundef 338, i64 noundef range(i64 -2147483648, 2147483648) %i.eb, i64 noundef 8)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc43:                                         ; preds = %.noexc42
  %i.ee = icmp slt i32 %i.cw, 1                   ; 9 uses
  %i.ef = extractelement <2 x i32> %i.dh, i64 1   ; 9 uses
  %i.eg = sext i32 %i.ef to i64                   ; 6 uses
  %36 = extractelement <2 x i32> %i.dh, i64 0     ; 16 uses
  %.pre = sext i32 %36 to i64                     ; 8 uses
  br i1 %i.ee, label %._crit_edge338.i, label %.lr.ph337.i.preheader

.lr.ph337.i.preheader:                            ; preds = %.noexc43
  %i.eh = icmp sgt i32 %36, 0
  br label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.preheader, %._crit_edge.i
  %indvars.iv386.i = phi i64 [ %indvars.iv.next387.i, %._crit_edge.i ], [ 0, %.lr.ph337.i.preheader ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv386.i ; 2 uses
  %i.ej = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, i32 noundef 341, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %.lr.ph337.i
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !117
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv386.i ; 2 uses
  %i.el = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.32, i32 noundef 342, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc45:                                         ; preds = %.noexc44
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !117
  br i1 %i.eh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc45, %.noexc47
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc47 ], [ 0, %.noexc45 ] ; 3 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !117
  %i.en = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.32, i32 noundef 345, i64 noundef range(i64 -2147483648, 2147483648) %i.eg, i64 noundef 4)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %.lr.ph.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !119
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.eq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.32, i32 noundef 346, i64 noundef range(i64 -2147483648, 2147483648) %i.eg, i64 noundef 4)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %.noexc46
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !119
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %.pre
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.noexc47, %.noexc45
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next387.i, %i.eb
  br i1 %exitcond320.not, label %._crit_edge338.i, label %.lr.ph337.i, !llvm.loop !30

._crit_edge338.i:                                 ; preds = %._crit_edge.i, %.noexc43
  %i.es = sext i32 %i.dm to i64                   ; 8 uses
  %i.et = icmp sgt i32 %i.dm, 0                   ; 4 uses
  %wide.trip.count297.i.i = zext i32 %i.dm to i64 ; 24 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.fb = icmp slt i32 %i.ef, 1                   ; 3 uses
  %wide.trip.count338.i.i = zext i32 %i.ef to i64 ; 9 uses
  %i.fc = sitofp i32 %i.ch to float               ; 7 uses
  %i.fd = icmp sgt i32 %36, 0                     ; 5 uses
  %wide.trip.count292.i.i = zext i32 %i.cw to i64 ; 8 uses
  %wide.trip.count287.i.i = zext i32 %36 to i64   ; 10 uses
  %i.fe = sitofp i32 %i.cw to float
  %i.ff = sitofp <2 x i32> %i.dh to <2 x float>
  %i.fg = icmp slt i32 %36, 1                     ; 3 uses
  %brmerge.i.i = or i1 %i.fg, %i.fb
  %or.cond.i = select i1 %i.ee, i1 true, i1 %brmerge.i.i
  %i.fh = select i1 %i.ee, i1 true, i1 %i.fg
  %or.cond = select i1 %i.fh, i1 true, i1 %i.fb
  %i.fi = shl nuw nsw i64 %wide.trip.count338.i.i, 2 ; 4 uses
  %min.iters.check585 = icmp ult i32 %i.dm, 4
  %min.iters.check587 = icmp ult i32 %i.dm, 32
  %i.fj = and i64 %wide.trip.count297.i.i, 28
  %n.vec589 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n596 = icmp eq i64 %n.vec589, %wide.trip.count297.i.i
  %min.epilog.iters.check601 = icmp eq i64 %i.fj, 0
  %n.vec603 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n610 = icmp eq i64 %n.vec603, %wide.trip.count297.i.i
  %min.iters.check557 = icmp ult i32 %i.dm, 4
  %min.iters.check559 = icmp ult i32 %i.dm, 32
  %i.fk = and i64 %wide.trip.count297.i.i, 28
  %n.vec561 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n568 = icmp eq i64 %n.vec561, %wide.trip.count297.i.i
  %min.epilog.iters.check573 = icmp eq i64 %i.fk, 0
  %n.vec575 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n582 = icmp eq i64 %n.vec575, %wide.trip.count297.i.i
  %min.iters.check529 = icmp ult i32 %i.dm, 4
  %min.iters.check531 = icmp ult i32 %i.dm, 32
  %i.fl = and i64 %wide.trip.count297.i.i, 28
  %n.vec533 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n540 = icmp eq i64 %n.vec533, %wide.trip.count297.i.i
  %min.epilog.iters.check545 = icmp eq i64 %i.fl, 0
  %n.vec547 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n554 = icmp eq i64 %n.vec547, %wide.trip.count297.i.i
  %min.iters.check510 = icmp ult i32 %i.dm, 4
  %min.iters.check511 = icmp ult i32 %i.dm, 32
  %i.fm = and i64 %wide.trip.count297.i.i, 28
  %n.vec513 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n520 = icmp eq i64 %n.vec513, %wide.trip.count297.i.i
  %min.epilog.iters.check = icmp eq i64 %i.fm, 0
  %n.vec521 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n526 = icmp eq i64 %n.vec521, %wide.trip.count297.i.i
  %xtraiter = and i64 %wide.trip.count338.i.i, 1
  %i.fn = icmp eq i32 %i.ef, 1
  %unroll_iter = and i64 %wide.trip.count338.i.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod693 = trunc i32 %i.ef to i1
  %min.iters.check = icmp ult i32 %i.ef, 8
  %n.vec = and i64 %wide.trip.count338.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.fc, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count338.i.i
  %xtraiter694 = and i64 %wide.trip.count338.i.i, 1
  %lcmp.mod695.not = icmp eq i64 %xtraiter694, 0
  %i.fo = add nsw i64 %wide.trip.count338.i.i, -1
  br label %bb.aq

bb.aq:                                            ; preds = %.noexc99, %._crit_edge338.i
  %.0 = phi i32 [ 0, %._crit_edge338.i ], [ %.1, %.noexc99 ] ; 4 uses
  %.0322.i = phi ptr [ null, %._crit_edge338.i ], [ %.1323.i, %.noexc99 ]
  %.0320.i = phi ptr [ null, %._crit_edge338.i ], [ %.1321.i, %.noexc99 ]
  %.0318.i = phi ptr [ null, %._crit_edge338.i ], [ %.1319.i, %.noexc99 ] ; 2 uses
  %.0316.i = phi ptr [ null, %._crit_edge338.i ], [ %.1317.i, %.noexc99 ] ; 2 uses
  %.0189.i = phi i32 [ 0, %._crit_edge338.i ], [ %i.acj, %.noexc99 ] ; 2 uses
  %i.fp = srem i32 %.0189.i, %i.ch
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fr = add nsw i32 %.0, 1
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.32, i32 noundef 361, ptr noundef %.0318.i, i64 noundef range(i64 -2147483647, 2147483648) %i.fs, i64 noundef 8)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc48:                                         ; preds = %bb.ar
  %i.fu = invoke noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.32, i32 noundef 362, ptr noundef %.0316.i, i64 noundef range(i64 -2147483647, 2147483648) %i.fs, i64 noundef 8)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc49:                                         ; preds = %.noexc48
  %i.fv = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.32, i32 noundef 363, i64 noundef range(i64 -2147483648, 2147483648) %i.eb, i64 noundef 8)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc50:                                         ; preds = %.noexc49
  %i.fw = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.32, i32 noundef 364, i64 noundef range(i64 -2147483648, 2147483648) %i.eb, i64 noundef 8)
          to label %.noexc51 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 3 uses

.noexc51:                                         ; preds = %.noexc50
  br i1 %i.ee, label %.loopexit.i, label %.lr.ph345.i

.lr.ph345.i:                                      ; preds = %.noexc51, %._crit_edge342.i
  %indvars.iv392.i = phi i64 [ %indvars.iv.next393.i, %._crit_edge342.i ], [ 0, %.noexc51 ] ; 3 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv392.i ; 2 uses
  %i.fy = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.32, i32 noundef 367, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc52 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc52:                                         ; preds = %.lr.ph345.i
  store ptr %i.fy, ptr %i.fx, align 8, !tbaa !117
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %indvars.iv392.i ; 2 uses
  %i.ga = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.32, i32 noundef 368, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc53:                                         ; preds = %.noexc52
  store ptr %i.ga, ptr %i.fz, align 8, !tbaa !117
  br i1 %i.fd, label %.lr.ph341.i, label %._crit_edge342.i

.lr.ph341.i:                                      ; preds = %.noexc53, %.noexc55
  %indvars.iv389.i = phi i64 [ %indvars.iv.next390.i, %.noexc55 ], [ 0, %.noexc53 ] ; 3 uses
  %i.gb = load ptr, ptr %i.fx, align 8, !tbaa !117
  %i.gc = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.32, i32 noundef 371, i64 noundef range(i64 -2147483648, 2147483648) %i.eg, i64 noundef 4)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc54:                                         ; preds = %.lr.ph341.i
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv389.i
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !119
  %i.ge = load ptr, ptr %i.fz, align 8, !tbaa !117
  %i.gf = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.32, i32 noundef 372, i64 noundef range(i64 -2147483648, 2147483648) %i.eg, i64 noundef 4)
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc55:                                         ; preds = %.noexc54
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv389.i
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !119
  %indvars.iv.next390.i = add nuw nsw i64 %indvars.iv389.i, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next390.i, %.pre
  br i1 %exitcond321.not, label %._crit_edge342.i, label %.lr.ph341.i, !llvm.loop !31

._crit_edge342.i:                                 ; preds = %.noexc55, %.noexc53
  %indvars.iv.next393.i = add nuw nsw i64 %indvars.iv392.i, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next393.i, %i.eb
  br i1 %exitcond322.not, label %.loopexit.i, label %.lr.ph345.i, !llvm.loop !32

.loopexit.i:                                      ; preds = %._crit_edge342.i, %bb.aq, %.noexc51
  %.1323.i = phi ptr [ %.0322.i, %bb.aq ], [ %i.fv, %.noexc51 ], [ %i.fv, %._crit_edge342.i ] ; 3 uses
  %.1321.i = phi ptr [ %.0320.i, %bb.aq ], [ %i.fw, %.noexc51 ], [ %i.fw, %._crit_edge342.i ] ; 4 uses
  %.1319.i = phi ptr [ %.0318.i, %bb.aq ], [ %i.ft, %.noexc51 ], [ %i.ft, %._crit_edge342.i ] ; 5 uses
  %.1317.i = phi ptr [ %.0316.i, %bb.aq ], [ %i.fu, %.noexc51 ], [ %i.fu, %._crit_edge342.i ] ; 5 uses
  %i.gh = load i32, ptr %i.j, align 4, !tbaa !121 ; 2 uses
  %i.gi = load ptr, ptr %i.n, align 8, !tbaa !119 ; 16 uses
end_hunk_0
begin_hunk_1_@_Z12gmx_hydorderiPPc:bb.a
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [12 x i8], ptr %i.gi, i64 %i.qg
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %17, ptr noundef %i.ir, ptr noundef %i.qh, ptr noundef nonnull %i.f)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc81:                                         ; preds = %.noexc80
  %i.qi = load float, ptr %i.ey, align 8, !tbaa !93
  %i.qj = load float, ptr %i.fa, align 8, !tbaa !93
  %i.qk = load <2 x float>, ptr %i.g, align 8, !tbaa !93 ; 2 uses
  %i.ql = load float, ptr %i.ex, align 4, !tbaa !93
  %i.qm = load <2 x float>, ptr %i.f, align 8, !tbaa !93 ; 2 uses
  %i.qn = load float, ptr %i.ez, align 4, !tbaa !93
  %i.qo = shufflevector <2 x float> %i.qk, <2 x float> %i.qm, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.qp = fmul <2 x float> %i.qo, %i.qo
  %i.qq = shufflevector <2 x float> %i.qk, <2 x float> %i.qm, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.qr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qq, <2 x float> %i.qq, <2 x float> %i.qp)
  %i.qs = insertelement <2 x float> poison, float %i.qi, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %i.qj, i64 1 ; 3 uses
  %i.qu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qt, <2 x float> %i.qt, <2 x float> %i.qr)
  %i.qv = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.qu)
  %i.qw = fdiv <2 x float> splat (float 1.000000e+00), %i.qv ; 3 uses
  %i.qx = shufflevector <2 x float> %i.qw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.qy = extractelement <2 x float> %i.qw, i64 0
  %i.qz = fmul float %i.ql, %i.qy
  %i.ra = extractelement <2 x float> %i.qw, i64 1
  %i.rb = fmul float %i.qn, %i.ra
  %i.rc = shufflevector <2 x float> %i.qq, <2 x float> %i.qt, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.rd = fmul <4 x float> %i.rc, %i.qx           ; 4 uses
  %i.re = fmul float %i.qz, %i.rb
  %i.rf = extractelement <4 x float> %i.rd, i64 0
  %i.rg = extractelement <4 x float> %i.rd, i64 2
  %i.rh = call float @llvm.fmuladd.f32(float %i.rf, float %i.rg, float %i.re)
  %i.ri = extractelement <4 x float> %i.rd, i64 1
  %i.rj = extractelement <4 x float> %i.rd, i64 3
  %i.rk = call noundef float @llvm.fmuladd.f32(float %i.ri, float %i.rj, float %i.rh)
  %i.rl = fadd float %i.rk, f0x3EAAAAAB           ; 2 uses
  %i.rm = fmul float %i.rl, %i.rl
  %i.rn = load float, ptr %i.kp, align 4, !tbaa !93
  %i.ro = fadd float %i.rn, %i.rm
  store float %i.ro, ptr %i.kp, align 4, !tbaa !93
  %i.rp = load i32, ptr %i.iw, align 4, !tbaa !81
  %i.rq = sext i32 %i.rp to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.rq
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !81
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [12 x i8], ptr %i.gi, i64 %i.rt
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %17, ptr noundef %i.ir, ptr noundef %i.ru, ptr noundef nonnull %i.g)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc82:                                         ; preds = %.noexc81
  %i.rv = load i32, ptr %i.iy, align 4, !tbaa !81
  %i.rw = sext i32 %i.rv to i64
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !81
  %i.rz = sext i32 %i.ry to i64
  %i.sa = getelementptr inbounds [12 x i8], ptr %i.gi, i64 %i.rz
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %17, ptr noundef %i.ir, ptr noundef %i.sa, ptr noundef nonnull %i.f)
          to label %.noexc83 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc83:                                         ; preds = %.noexc82
  %i.sb = load float, ptr %i.ey, align 8, !tbaa !93
  %i.sc = load float, ptr %i.fa, align 8, !tbaa !93
  %i.sd = load <2 x float>, ptr %i.g, align 8, !tbaa !93 ; 2 uses
  %i.se = load float, ptr %i.ex, align 4, !tbaa !93
  %i.sf = load <2 x float>, ptr %i.f, align 8, !tbaa !93 ; 2 uses
  %i.sg = load float, ptr %i.ez, align 4, !tbaa !93
  %i.sh = shufflevector <2 x float> %i.sd, <2 x float> %i.sf, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.si = fmul <2 x float> %i.sh, %i.sh
  %i.sj = shufflevector <2 x float> %i.sd, <2 x float> %i.sf, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.sk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sj, <2 x float> %i.sj, <2 x float> %i.si)
  %i.sl = insertelement <2 x float> poison, float %i.sb, i64 0
  %i.sm = insertelement <2 x float> %i.sl, float %i.sc, i64 1 ; 3 uses
  %i.sn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sm, <2 x float> %i.sm, <2 x float> %i.sk)
  %i.so = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.sn)
  %i.sp = fdiv <2 x float> splat (float 1.000000e+00), %i.so ; 3 uses
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sr = extractelement <2 x float> %i.sp, i64 0
  %i.ss = fmul float %i.se, %i.sr
  %i.st = extractelement <2 x float> %i.sp, i64 1
  %i.su = fmul float %i.sg, %i.st
  %i.sv = shufflevector <2 x float> %i.sj, <2 x float> %i.sm, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.sw = fmul <4 x float> %i.sv, %i.sq           ; 4 uses
  %i.sx = fmul float %i.ss, %i.su
  %i.sy = extractelement <4 x float> %i.sw, i64 0
  %i.sz = extractelement <4 x float> %i.sw, i64 2
  %i.ta = call float @llvm.fmuladd.f32(float %i.sy, float %i.sz, float %i.sx)
  %i.tb = extractelement <4 x float> %i.sw, i64 1
  %i.tc = extractelement <4 x float> %i.sw, i64 3
  %i.td = call noundef float @llvm.fmuladd.f32(float %i.tb, float %i.tc, float %i.ta)
  %i.te = fadd float %i.td, f0x3EAAAAAB           ; 2 uses
  %i.tf = fmul float %i.te, %i.te
  %i.tg = load float, ptr %i.kp, align 4, !tbaa !93
  %i.th = fadd float %i.tg, %i.tf
  store float %i.th, ptr %i.kp, align 4, !tbaa !93
  %i.ti = load i32, ptr %i.iw, align 4, !tbaa !81
  %i.tj = sext i32 %i.ti to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !81
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [12 x i8], ptr %i.gi, i64 %i.tm
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %17, ptr noundef %i.ir, ptr noundef %i.tn, ptr noundef nonnull %i.g)
          to label %.noexc84 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc84:                                         ; preds = %.noexc83
  %i.to = load i32, ptr %i.ix, align 4, !tbaa !81
  %i.tp = sext i32 %i.to to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.tp
  %i.tr = load i32, ptr %i.tq, align 4, !tbaa !81
  %i.ts = sext i32 %i.tr to i64
  %i.tt = getelementptr inbounds [12 x i8], ptr %i.gi, i64 %i.ts
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %17, ptr noundef %i.ir, ptr noundef %i.tt, ptr noundef nonnull %i.f)
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc85:                                         ; preds = %.noexc84
  %i.tu = load float, ptr %i.ey, align 8, !tbaa !93
  %i.tv = load float, ptr %i.fa, align 8, !tbaa !93
  %i.tw = load <2 x float>, ptr %i.g, align 8, !tbaa !93 ; 2 uses
  %i.tx = load float, ptr %i.ex, align 4, !tbaa !93
  %i.ty = load <2 x float>, ptr %i.f, align 8, !tbaa !93 ; 2 uses
  %i.tz = load float, ptr %i.ez, align 4, !tbaa !93
  %i.ua = shufflevector <2 x float> %i.tw, <2 x float> %i.ty, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ub = fmul <2 x float> %i.ua, %i.ua
  %i.uc = shufflevector <2 x float> %i.tw, <2 x float> %i.ty, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ud = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uc, <2 x float> %i.uc, <2 x float> %i.ub)
  %i.ue = insertelement <2 x float> poison, float %i.tu, i64 0
  %i.uf = insertelement <2 x float> %i.ue, float %i.tv, i64 1 ; 3 uses
  %i.ug = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uf, <2 x float> %i.uf, <2 x float> %i.ud)
  %i.uh = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ug)
  %i.ui = fdiv <2 x float> splat (float 1.000000e+00), %i.uh ; 3 uses
  %i.uj = shufflevector <2 x float> %i.ui, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.uk = extractelement <2 x float> %i.ui, i64 0
  %i.ul = fmul float %i.tx, %i.uk
  %i.um = extractelement <2 x float> %i.ui, i64 1
  %i.un = fmul float %i.tz, %i.um
  %i.uo = shufflevector <2 x float> %i.uc, <2 x float> %i.uf, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %i.up = fmul <4 x float> %i.uo, %i.uj           ; 4 uses
  %i.uq = fmul float %i.ul, %i.un
  %i.ur = extractelement <4 x float> %i.up, i64 0
  %i.us = extractelement <4 x float> %i.up, i64 2
  %i.ut = call float @llvm.fmuladd.f32(float %i.ur, float %i.us, float %i.uq)
  %i.uu = extractelement <4 x float> %i.up, i64 1
  %i.uv = extractelement <4 x float> %i.up, i64 3
  %i.uw = call noundef float @llvm.fmuladd.f32(float %i.uu, float %i.uv, float %i.ut)
  %i.ux = fadd float %i.uw, f0x3EAAAAAB           ; 2 uses
  %i.uy = fmul float %i.ux, %i.ux
  %i.uz = load float, ptr %i.kp, align 4, !tbaa !93
  %i.va = fadd float %i.uz, %i.uy
  %i.vb = fadd float %i.ki, 0.000000e+00
  %i.vc = fadd float %i.vb, %i.kk
  %i.vd = fadd float %i.vc, %i.km
  %i.ve = fadd float %i.vd, %i.ko
  %i.vf = fmul float %i.ve, 2.500000e-01          ; 6 uses
  %i.vg = fmul float %i.va, 3.000000e+00
  %i.vh = fmul float %i.vg, 3.125000e-02
  store float %i.vh, ptr %i.kp, align 4, !tbaa !93
  %i.vi = fmul float %i.vf, 1.200000e+01
  %i.vj = fmul float %i.vf, %i.vi                 ; 4 uses
  %.promoted.i.i = load float, ptr %i.kq, align 4, !tbaa !93
  %i.vk = load float, ptr %i.is, align 4, !tbaa !93
  %i.vl = fsub float %i.vf, %i.vk                 ; 2 uses
  %i.vm = fmul float %i.vl, %i.vl
  %i.vn = fdiv float %i.vm, %i.vj
  %i.vo = fadd float %.promoted.i.i, %i.vn        ; 2 uses
  store float %i.vo, ptr %i.kq, align 4, !tbaa !93
  %i.vp = load float, ptr %i.it, align 4, !tbaa !93
  %i.vq = fsub float %i.vf, %i.vp                 ; 2 uses
  %i.vr = fmul float %i.vq, %i.vq
  %i.vs = fdiv float %i.vr, %i.vj
  %i.vt = fadd float %i.vo, %i.vs                 ; 2 uses
  store float %i.vt, ptr %i.kq, align 4, !tbaa !93
  %i.vu = load float, ptr %i.iu, align 4, !tbaa !93
  %i.vv = fsub float %i.vf, %i.vu                 ; 2 uses
  %i.vw = fmul float %i.vv, %i.vv
  %i.vx = fdiv float %i.vw, %i.vj
  %i.vy = fadd float %i.vt, %i.vx                 ; 2 uses
  store float %i.vy, ptr %i.kq, align 4, !tbaa !93
  %i.vz = load float, ptr %i.iv, align 4, !tbaa !93
  %i.wa = fsub float %i.vf, %i.vz                 ; 2 uses
  %i.wb = fmul float %i.wa, %i.wa
  %i.wc = fdiv float %i.wb, %i.vj
  %i.wd = fadd float %i.vy, %i.wc
  store float %i.wd, ptr %i.kq, align 4, !tbaa !93
  %i.we = getelementptr inbounds nuw [12 x i8], ptr %i.gi, i64 %indvars.iv330.i.i ; 2 uses
  %i.wf = load float, ptr %i.we, align 4, !tbaa !93
  %i.wg = load float, ptr %i.o, align 16, !tbaa !93
  %i.wh = fdiv float %i.wf, %i.wg
  %i.wi = fadd float %i.wh, 1.000000e+00
  %i.wj = fmul float %i.wi, %i.fe
  %i.wk = call noundef float @llvm.round.f32(float %i.wj)
  %i.wl = fptosi float %i.wk to i32
  %i.wm = srem i32 %i.wl, %i.cw
  %i.wn = getelementptr inbounds nuw i8, ptr %i.we, i64 4
  %i.wo = load <4 x float>, ptr %i.cx, align 16
  %i.wp = shufflevector <4 x float> %i.wo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.wq = load float, ptr %i.da, align 16, !tbaa !93
  %i.wr = load <2 x float>, ptr %i.wn, align 4, !tbaa !93
  %i.ws = insertelement <2 x float> %i.wp, float %i.wq, i64 1
  %i.wt = fdiv <2 x float> %i.wr, %i.ws
  %i.wu = fadd <2 x float> %i.wt, splat (float 1.000000e+00)
  %i.wv = fmul <2 x float> %i.wu, %i.ff
  %i.ww = call <2 x float> @llvm.round.v2f32(<2 x float> %i.wv)
  %37 = fptosi <2 x float> %i.ww to <2 x i32>
  %38 = srem <2 x i32> %37, %i.dh                 ; 2 uses
  %i.wx = load float, ptr %i.kp, align 4, !tbaa !93
  %i.wy = sext i32 %i.wm to i64                   ; 3 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.wy
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !117
  %39 = extractelement <2 x i32> %38, i64 0
  %i.xb = sext i32 %39 to i64                     ; 3 uses
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.xa, i64 %i.xb
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !119
  %40 = extractelement <2 x i32> %38, i64 1
  %i.xe = sext i32 %40 to i64                     ; 3 uses
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.xd, i64 %i.xe ; 2 uses
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !93
  %i.xh = fadd float %i.wx, %i.xg
  store float %i.xh, ptr %i.xf, align 4, !tbaa !93
  %i.xi = load float, ptr %i.kq, align 4, !tbaa !93
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %i.wy
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !117
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.xk, i64 %i.xb
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !119
  %i.xn = getelementptr inbounds [4 x i8], ptr %i.xm, i64 %i.xe ; 2 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !93
  %i.xp = fadd float %i.xi, %i.xo
  store float %i.xp, ptr %i.xn, align 4, !tbaa !93
  %i.xq = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.wy
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !123
  %i.xs = getelementptr inbounds [8 x i8], ptr %i.xr, i64 %i.xb
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !115
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xt, i64 %i.xe ; 2 uses
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !81
  %i.xw = add nsw i32 %i.xv, 1
  store i32 %i.xw, ptr %i.xu, align 4, !tbaa !81
  %indvars.iv.next331.i.i = add nuw nsw i64 %indvars.iv330.i.i, 1 ; 2 uses
  %exitcond334.not.i.i = icmp eq i64 %indvars.iv.next331.i.i, %wide.trip.count333.i.i
  br i1 %exitcond334.not.i.i, label %._crit_edge271.i.i, label %.lr.ph260.i.i, !llvm.loop !48

._crit_edge271.i.i:                               ; preds = %.noexc85, %.noexc72
  br i1 %or.cond.i, label %_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i, label %.preheader249.i.i

.preheader249.i.i:                                ; preds = %._crit_edge271.i.i, %._crit_edge276.i.i
  %indvars.iv345.i.i = phi i64 [ %indvars.iv.next346.i.i, %._crit_edge276.i.i ], [ 0, %._crit_edge271.i.i ] ; 4 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.gn, i64 %indvars.iv345.i.i
  %i.xy = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv345.i.i ; 3 uses
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv345.i.i ; 3 uses
  %i.ya = load ptr, ptr %i.xx, align 8, !tbaa !123
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge274.i.i, %.preheader249.i.i
  %indvars.iv340.i.i = phi i64 [ 0, %.preheader249.i.i ], [ %indvars.iv.next341.i.i, %._crit_edge274.i.i ] ; 8 uses
  %i.yb = getelementptr inbounds nuw [8 x i8], ptr %i.ya, i64 %indvars.iv340.i.i
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !115 ; 3 uses
  br i1 %i.fn, label %.epil.preheader, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i, %bb.bg
  %indvars.iv335.i.i = phi i64 [ %indvars.iv.next336.i.i.1, %bb.bg ], [ 0, %.preheader.i.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %bb.bg ], [ 0, %.preheader.i.i ]
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv335.i.i
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !81 ; 2 uses
  %i.yf = icmp sgt i32 %i.ye, 0
  br i1 %i.yf, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.preheader.i.i.new
  %i.yg = uitofp nneg i32 %i.ye to float          ; 2 uses
  %i.yh = load ptr, ptr %i.xy, align 8, !tbaa !117
  %i.yi = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %indvars.iv340.i.i
  %i.yj = load ptr, ptr %i.yi, align 8, !tbaa !119
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv335.i.i ; 2 uses
  %i.yl = load float, ptr %i.yk, align 4, !tbaa !93
  %i.ym = fdiv float %i.yl, %i.yg
  store float %i.ym, ptr %i.yk, align 4, !tbaa !93
  %i.yn = load ptr, ptr %i.xz, align 8, !tbaa !117
  %i.yo = getelementptr inbounds nuw [8 x i8], ptr %i.yn, i64 %indvars.iv340.i.i
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !119
  %i.yq = getelementptr inbounds nuw [4 x i8], ptr %i.yp, i64 %indvars.iv335.i.i ; 2 uses
  %i.yr = load float, ptr %i.yq, align 4, !tbaa !93
  %i.ys = fdiv float %i.yr, %i.yg
  store float %i.ys, ptr %i.yq, align 4, !tbaa !93
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.preheader.i.i.new
  %indvars.iv.next336.i.i = or disjoint i64 %indvars.iv335.i.i, 1 ; 3 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv.next336.i.i
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !81 ; 2 uses
  %i.yv = icmp sgt i32 %i.yu, 0
  br i1 %i.yv, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.yw = uitofp nneg i32 %i.yu to float          ; 2 uses
  %i.yx = load ptr, ptr %i.xy, align 8, !tbaa !117
  %i.yy = getelementptr inbounds nuw [8 x i8], ptr %i.yx, i64 %indvars.iv340.i.i
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !119
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %i.yz, i64 %indvars.iv.next336.i.i ; 2 uses
  %i.zb = load float, ptr %i.za, align 4, !tbaa !93
  %i.zc = fdiv float %i.zb, %i.yw
  store float %i.zc, ptr %i.za, align 4, !tbaa !93
  %i.zd = load ptr, ptr %i.xz, align 8, !tbaa !117
  %i.ze = getelementptr inbounds nuw [8 x i8], ptr %i.zd, i64 %indvars.iv340.i.i
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !119
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %i.zf, i64 %indvars.iv.next336.i.i ; 2 uses
  %i.zh = load float, ptr %i.zg, align 4, !tbaa !93
  %i.zi = fdiv float %i.zh, %i.yw
  store float %i.zi, ptr %i.zg, align 4, !tbaa !93
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %indvars.iv.next336.i.i.1 = add nuw nsw i64 %indvars.iv335.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge274.i.i.unr-lcssa, label %.preheader.i.i.new, !llvm.loop !49

._crit_edge274.i.i.unr-lcssa:                     ; preds = %bb.bg
  br i1 %lcmp.mod.not, label %._crit_edge274.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge274.i.i.unr-lcssa, %.preheader.i.i
  %indvars.iv335.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next336.i.i.1, %._crit_edge274.i.i.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod693)
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv335.i.i.epil.init
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !81 ; 2 uses
  %i.zl = icmp sgt i32 %i.zk, 0
  br i1 %i.zl, label %bb.bh, label %._crit_edge274.i.i

bb.bh:                                            ; preds = %.epil.preheader
  %i.zm = uitofp nneg i32 %i.zk to float          ; 2 uses
  %i.zn = load ptr, ptr %i.xy, align 8, !tbaa !117
  %i.zo = getelementptr inbounds nuw [8 x i8], ptr %i.zn, i64 %indvars.iv340.i.i
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !119
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.zp, i64 %indvars.iv335.i.i.epil.init ; 2 uses
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !93
  %i.zs = fdiv float %i.zr, %i.zm
  store float %i.zs, ptr %i.zq, align 4, !tbaa !93
  %i.zt = load ptr, ptr %i.xz, align 8, !tbaa !117
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv340.i.i
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !119
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %indvars.iv335.i.i.epil.init ; 2 uses
  %i.zx = load float, ptr %i.zw, align 4, !tbaa !93
  %i.zy = fdiv float %i.zx, %i.zm
  store float %i.zy, ptr %i.zw, align 4, !tbaa !93
  br label %._crit_edge274.i.i

._crit_edge274.i.i:                               ; preds = %.epil.preheader, %bb.bh, %._crit_edge274.i.i.unr-lcssa
  %indvars.iv.next341.i.i = add nuw nsw i64 %indvars.iv340.i.i, 1 ; 2 uses
  %exitcond344.not.i.i = icmp eq i64 %indvars.iv.next341.i.i, %wide.trip.count287.i.i
  br i1 %exitcond344.not.i.i, label %._crit_edge276.i.i, label %.preheader.i.i, !llvm.loop !50

._crit_edge276.i.i:                               ; preds = %._crit_edge274.i.i
  %indvars.iv.next346.i.i = add nuw nsw i64 %indvars.iv345.i.i, 1 ; 2 uses
  %exitcond349.not.i.i = icmp eq i64 %indvars.iv.next346.i.i, %wide.trip.count292.i.i
  br i1 %exitcond349.not.i.i, label %_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i, label %.preheader249.i.i, !llvm.loop !51

_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i: ; preds = %._crit_edge276.i.i, %._crit_edge271.i.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.32, i32 noundef 263, ptr noundef %i.gn)
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc86:                                         ; preds = %_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.32, i32 noundef 264, ptr noundef %i.ik)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc87:                                         ; preds = %.noexc86
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.32, i32 noundef 265, ptr noundef %i.il)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc88:                                         ; preds = %.noexc87
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.32, i32 noundef 268, ptr noundef %i.gt)
          to label %.noexc89 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc89:                                         ; preds = %.noexc88
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.32, i32 noundef 269, ptr noundef %i.gu)
          to label %.noexc90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc90:                                         ; preds = %.noexc89
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.32, i32 noundef 268, ptr noundef %i.hf)
          to label %.noexc91 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc91:                                         ; preds = %.noexc90
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.32, i32 noundef 269, ptr noundef %i.hg)
          to label %.noexc92 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc92:                                         ; preds = %.noexc91
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.32, i32 noundef 268, ptr noundef %i.hp)
          to label %.noexc93 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc93:                                         ; preds = %.noexc92
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.32, i32 noundef 269, ptr noundef %i.hq)
          to label %.noexc94 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc94:                                         ; preds = %.noexc93
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.32, i32 noundef 268, ptr noundef %i.hz)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc95:                                         ; preds = %.noexc94
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.32, i32 noundef 269, ptr noundef %i.ia)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc96:                                         ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %.not.i = icmp eq ptr %.1321.i, null
  br i1 %.not.i, label %.invoke, label %.preheader328.i

.preheader328.i:                                  ; preds = %.noexc96
  br i1 %or.cond, label %._crit_edge352.split.i, label %.preheader327.i

.preheader327.i:                                  ; preds = %.preheader328.i, %._crit_edge350.i
  %indvars.iv403.i = phi i64 [ %indvars.iv.next404.i, %._crit_edge350.i ], [ 0, %.preheader328.i ] ; 5 uses
  %i.zz = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv403.i
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %.1321.i, i64 %indvars.iv403.i
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv403.i
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %.1323.i, i64 %indvars.iv403.i
end_hunk_1
begin_hunk_2_@_ZNSt10filesystem7__cxx114pathC2IA13_cS1_EERKT_NS1_6formatE:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = load ptr, ptr %0, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
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
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !21
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z10rangeArrayPii(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_Z15start_binsearchPfPiiifi(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z14gmx_rmpbc_initPK6t_idef7PbcTypei(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_Z15gmx_rmpbc_applyP9gmx_rmpbciPA3_KfPA3_f(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #11

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z9mk_matrixiib(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !23
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.39) #16
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.d, ptr %i.a, align 8, !tbaa !25
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.b
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !20
  %i.j = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.j, ptr %i.e, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.b
  %i.k = phi ptr [ %i.i, %.noexc.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.l = load i8, ptr %i.b, align 1, !tbaa !21
  store i8 %i.l, ptr %i.k, align 1, !tbaa !21
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !24
  %i.o = load ptr, ptr %0, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.i:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.t) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %bb.j ]
  %i.u = load ptr, ptr %0, align 8, !tbaa !20     ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.e
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.w = load i64, ptr %i.e, align 8, !tbaa !21
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_Z9write_xpmP8_IO_FILEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_S8_iiPKfSA_PKSA_ff5t_rgbSD_Pi(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef byval(%struct.t_rgb) align 8, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { cold }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !22}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!14 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!15 = !{!11, !11, i64 0}
!16 = !{!"p1 _ZTSNSt10filesystem7__cxx114path5_List5_ImplE", !10, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !12, i64 8, !6, i64 16}
!20 = !{!19, !11, i64 0}
!21 = !{!6, !6, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!18, !11, i64 0}
!24 = !{!19, !12, i64 8}
!25 = !{!12, !12, i64 0}
!26 = !{!14, !13, i64 0}
!27 = !{!14, !13, i64 8}
!28 = !{!14, !13, i64 16}
!29 = distinct !{!29, !22}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22, !124, !125}
!36 = distinct !{!36, !22, !124, !125}
!37 = distinct !{!37, !22, !125, !124}
!38 = distinct !{!38, !22, !124, !125}
!39 = distinct !{!39, !22, !124, !125}
!40 = distinct !{!40, !22, !125, !124}
!41 = distinct !{!41, !22, !124, !125}
!42 = distinct !{!42, !22, !124, !125}
!43 = distinct !{!43, !22, !125, !124}
!44 = distinct !{!44, !22, !124, !125}
!45 = distinct !{!45, !22, !124, !125}
!46 = distinct !{!46, !22, !125, !124}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !"LVerDomain"}
!53 = distinct !{!53, !52}
!54 = distinct !{!54, !52}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !22, !124, !125}
!58 = distinct !{!58, !22, !124}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22, !137}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22, !137}
!68 = distinct !{!68, !22}
!69 = distinct !{!69, !22, !124, !125}
!70 = distinct !{!70, !22, !124, !125}
!71 = distinct !{!71, !22, !124, !125}
!72 = distinct !{!72, !22, !124, !125}
!73 = distinct !{!73, !22, !125, !124}
!74 = distinct !{!74, !22, !125, !124}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = !{!7, !7, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !14, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !83, i64 0}
!85 = !{!"_ZTS8t_filenm", !7, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !84, i64 32}
!86 = !{!85, !7, i64 0}
!87 = !{!85, !11, i64 8}
!88 = !{!85, !11, i64 16}
!89 = !{!85, !12, i64 24}
!90 = !{!"bool", !6, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"float", !6, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"p1 _ZTS16gmx_output_env_t", !10, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"any p2 pointer", !10, i64 0}
!99 = !{!"p2 omnipotent char", !98, i64 0}
!100 = !{!"p1 _ZTS9t_iparams", !10, i64 0}
!101 = !{!"_ZTSN3gmx16EnumerationArrayI19InteractionFunction7t_ilistLS1_95EEE", !6, i64 0}
!102 = !{!"_ZTS6t_idef", !7, i64 0, !7, i64 4, !10, i64 8, !100, i64 16, !92, i64 24, !100, i64 32, !100, i64 40, !101, i64 48, !7, i64 2328}
!103 = !{!"p1 _ZTS6t_atom", !10, i64 0}
!104 = !{!"any p3 pointer", !98, i64 0}
!105 = !{!"p3 omnipotent char", !104, i64 0}
!106 = !{!"p1 _ZTS9t_resinfo", !10, i64 0}
!107 = !{!"p1 _ZTS9t_pdbinfo", !10, i64 0}
!108 = !{!"_ZTS7t_atoms", !7, i64 0, !103, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !7, i64 40, !106, i64 48, !107, i64 56, !90, i64 64, !90, i64 65, !90, i64 66, !90, i64 67, !90, i64 68}
!109 = !{!"p1 int", !10, i64 0}
!110 = !{!"_ZTS7t_block", !7, i64 0, !109, i64 8, !7, i64 16}
!111 = !{!"p1 _ZTS8t_symbuf", !10, i64 0}
!112 = !{!"_ZTS8t_symtab", !7, i64 0, !111, i64 8}
!113 = !{!"_ZTS10t_topology", !99, i64 0, !102, i64 8, !108, i64 2344, !110, i64 2416, !90, i64 2440, !112, i64 2448}
!114 = !{!113, !7, i64 2344}
!115 = !{!109, !109, i64 0}
!116 = !{!"p2 float", !98, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"p1 float", !10, i64 0}
!119 = !{!118, !118, i64 0}
!120 = !{!"_ZTS7PbcType", !6, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p2 int", !98, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"llvm.loop.isvectorized", i32 1}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
!126 = !{!"branch_weights", i32 4, i32 28}
!127 = !{!53}
!128 = !{!54}
!129 = !{!56, !53, !55}
!130 = !{!55}
!131 = !{!56}
!132 = !{!53, !55}
!133 = !{!"p3 float", !104, i64 0}
!134 = !{!133, !133, i64 0}
!135 = !{!"p1 _ZTS11t_trxstatus", !10, i64 0}
!136 = !{!135, !135, i64 0}
!137 = !{!"llvm.loop.unswitch.partial.disable"}
!138 = !{!"double", !6, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{i8 0, i8 2}
!141 = !{}
end_hunk_2
