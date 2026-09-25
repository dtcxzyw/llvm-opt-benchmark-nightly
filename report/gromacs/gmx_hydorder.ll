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

bb.s:                                             ; preds = %.tail251.thread
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 692, ptr noundef nonnull @.str.34) #16
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %.tail251.thread
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

bb.x:                                             ; preds = %.tail251, %.tail247, %.tail
  %.str.37.sink = phi ptr [ @.str.36, %.tail247 ], [ @.str.35, %.tail ], [ @.str.37, %.tail251 ]
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !95
  %fwrite = call i64 @fwrite(ptr nonnull %.str.37.sink, i64 40, i64 1, ptr %i.bv) #17 ; 0 uses
  %i.bw = invoke { ptr, ptr } @_Z7opt2fnsB5cxx11PKciPK8t_filenm(ptr noundef nonnull @.str.26, i32 noundef 6, ptr noundef nonnull %30)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.y:                                             ; preds = %bb.x
  %i.bx = extractvalue { ptr, ptr } %i.bw, 0      ; 3 uses
  %i.by = extractvalue { ptr, ptr } %i.bw, 1
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = ashr exact i64 %i.cb, 5
  %.not21 = icmp eq i64 %i.cb, 64
  br i1 %.not21, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 1 dereferenceable(68) @.str.32, i8 noundef zeroext 2)
          to label %bb.aa unwind label %bb.ac

bb.aa:                                            ; preds = %bb.z
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 707, ptr noundef nonnull @.str.38, i64 noundef %i.cc) #16
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  unreachable

.loopexit:                                        ; preds = %bb.bv, %.noexc116, %.noexc117
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.noexc114, %bb.bu
  %lpad.loopexit257 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.au
  %lpad.loopexit260 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.as
  %lpad.loopexit262 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph341.i, %.noexc56
  %lpad.loopexit265 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc86, %.noexc85, %.noexc84, %.noexc83, %.noexc82, %.noexc81, %.noexc80, %.noexc79, %.noexc78, %.noexc77, %.noexc76, %.loopexit.2.i.i
  %lpad.loopexit267 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.us.i.i
  %lpad.loopexit270 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph255.split.i.i
  %lpad.loopexit272 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph345.i, %.noexc54
  %lpad.loopexit276 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.bk, %.noexc97, %.noexc96, %.noexc95, %.noexc94, %.noexc93, %.noexc92, %.noexc91, %.noexc90, %.noexc89, %.noexc88, %_ZL21find_tetra_order_grid10t_topology7PbcTypeiPA3_fS2_iPKiPfS5_iiiPPS5_S7_.exit.i, %.noexc73, %.noexc72, %.noexc71, %.noexc70, %._crit_edge.3.i.i, %.noexc68, %._crit_edge.2.i.i, %.noexc66, %._crit_edge.1.i.i, %.noexc64, %._crit_edge.i.i, %.noexc61, %.preheader251.i.i, %.loopexit.i, %.noexc52, %.noexc51, %.noexc50, %bb.ar
  %lpad.loopexit278 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i, %.noexc48
  %lpad.loopexit281 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc46, %.lr.ph337.i
  %lpad.loopexit283 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %.noexc146, %.noexc145, %.noexc144, %.noexc143, %.noexc142, %._crit_edge301.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i129, %._crit_edge.i125, %.noexc138, %.noexc137, %.noexc136, %bb.bx, %.noexc119, %._crit_edge372.i, %.noexc112, %.noexc111, %.noexc110, %.noexc109, %.noexc108, %._crit_edge363.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i, %._crit_edge.i.i.i, %.noexc104, %.noexc103, %.noexc102, %bb.bl, %.noexc44, %.noexc43, %bb.ap, %bb.ak, %.noexc40, %.noexc39, %.noexc38, %.noexc37, %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, %bb.af, %bb.x
  %lpad.loopexit.split-lp284 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ac:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %33) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn30 = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.cd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #15
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.cf = load float, ptr @_ZZ12gmx_hydorderiPPcE8binwidth, align 4, !tbaa !93 ; 4 uses
  %i.cg = load i32, ptr @_ZZ12gmx_hydorderiPPcE9nsttblock, align 4, !tbaa !81 ; 3 uses
  %i.ch = load float, ptr @_ZZ12gmx_hydorderiPPcE3sg1, align 4, !tbaa !93
  %i.ci = load float, ptr @_ZZ12gmx_hydorderiPPcE3sg2, align 4, !tbaa !93
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !97  ; 4 uses
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
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.af
  %i.ck = invoke noundef zeroext i1 @_Z13read_tps_confRKNSt10filesystem7__cxx114pathEP10t_topologyP7PbcTypePPA3_fSA_S9_b(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull %19, ptr noundef nonnull %i.j, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.o, i1 noundef zeroext false)
          to label %bb.ag unwind label %bb.am     ; 0 uses

bb.ag:                                            ; preds = %.noexc36
  %i.cl = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull %i.cm) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i: ; preds = %bb.ah, %bb.ag
  %i.cn = load ptr, ptr %20, align 8, !tbaa !20   ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !21
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit.i:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.cs = load float, ptr %i.o, align 16, !tbaa !93
  %i.ct = fdiv float %i.cs, %i.cf
  %i.cu = fadd float %i.ct, 5.000000e-01
  %i.cv = fptosi float %i.cu to i32               ; 14 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 4 uses
  %i.cx = load <4 x float>, ptr %i.cw, align 16
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cz = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  %i.da = load float, ptr %i.cz, align 16, !tbaa !93
  %i.db = insertelement <2 x float> %i.cy, float %i.da, i64 1
  %i.dc = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.de = fdiv <2 x float> %i.db, %i.dd
  %i.df = fadd <2 x float> %i.de, splat (float 5.000000e-01)
  %i.dg = fptosi <2 x float> %i.df to <2 x i32>   ; 5 uses
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dh = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef 322, i64 noundef 1, i64 noundef 8)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit.i
  %i.di = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.32, i32 noundef 323, i64 noundef 1, i64 noundef 8)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc38:                                         ; preds = %.noexc37
  %i.dj = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, i32 noundef 324, i64 noundef 1, i64 noundef 4)
          to label %.noexc39 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc39:                                         ; preds = %.noexc38
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 2344 ; 3 uses
  invoke void @_Z9get_indexPK7t_atomsPKciPiPS4_PPc(ptr noundef nonnull %i.dk, ptr noundef %i.be, i32 noundef 1, ptr noundef %i.dj, ptr noundef %i.di, ptr noundef %i.dh)
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %.noexc39
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef zeroext 2)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc41:                                         ; preds = %.noexc40
  %i.dl = invoke noundef i32 @_Z12read_first_xPK16gmx_output_env_tPP11t_trxstatusRKNSt10filesystem7__cxx114pathEPfPPA3_fSC_(ptr noundef %i.cj, ptr noundef nonnull %i.k, ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull %i.l, ptr noundef nonnull %i.n, ptr noundef nonnull %i.o)
          to label %bb.ai unwind label %bb.an     ; 16 uses

bb.ai:                                            ; preds = %.noexc41
  %i.dm = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i216.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i216.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull %i.dn) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i: ; preds = %bb.aj, %bb.ai
  %i.do = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !21
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i217.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i218.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  %i.dt = load i32, ptr %i.dk, align 8, !tbaa !114
  %i.du = icmp sgt i32 %i.dl, %i.dt
  br i1 %i.du, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA68_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 1 dereferenceable(68) @.str.32, i8 noundef zeroext 2)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc42:                                         ; preds = %bb.ak
  %i.dv = load i32, ptr %i.dk, align 8, !tbaa !114
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %22, i32 noundef 331, ptr noundef nonnull @.str.46, i32 noundef %i.dv, i32 noundef %i.dl) #16
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %.noexc42
  unreachable

bb.am:                                            ; preds = %.noexc36
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %20) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.bw

bb.an:                                            ; preds = %.noexc41
  %i.dx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.bw

bb.ao:                                            ; preds = %.noexc42
  %i.dy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %22) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.bw

bb.ap:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit220.i
  %i.dz = load ptr, ptr %i.di, align 8, !tbaa !115
  invoke void @_Z11check_indexPKciPiS0_i(ptr noundef null, i32 noundef 1, ptr noundef %i.dz, ptr noundef null, i32 noundef %i.dl)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc43:                                         ; preds = %bb.ap
  %i.ea = sext i32 %i.cv to i64                   ; 7 uses
  %i.eb = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.32, i32 noundef 337, i64 noundef range(i64 -2147483648, 2147483648) %i.ea, i64 noundef 8)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc44:                                         ; preds = %.noexc43
  %i.ec = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.32, i32 noundef 338, i64 noundef range(i64 -2147483648, 2147483648) %i.ea, i64 noundef 8)
          to label %.noexc45 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc45:                                         ; preds = %.noexc44
  %i.ed = icmp slt i32 %i.cv, 1                   ; 9 uses
  %i.ee = extractelement <2 x i32> %i.dg, i64 1   ; 9 uses
  %i.ef = sext i32 %i.ee to i64                   ; 6 uses
  %i.eg = extractelement <2 x i32> %i.dg, i64 0   ; 16 uses
  %.pre = sext i32 %i.eg to i64                   ; 8 uses
  br i1 %i.ed, label %._crit_edge338.i, label %.lr.ph337.i.preheader

.lr.ph337.i.preheader:                            ; preds = %.noexc45
  %i.eh = icmp sgt i32 %i.eg, 0
  br label %.lr.ph337.i

.lr.ph337.i:                                      ; preds = %.lr.ph337.i.preheader, %._crit_edge.i
  %indvars.iv386.i = phi i64 [ %indvars.iv.next387.i, %._crit_edge.i ], [ 0, %.lr.ph337.i.preheader ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv386.i ; 2 uses
  %i.ej = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.32, i32 noundef 341, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc46 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc46:                                         ; preds = %.lr.ph337.i
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !117
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv386.i ; 2 uses
  %i.el = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.32, i32 noundef 342, i64 noundef range(i64 -2147483648, 2147483648) %.pre, i64 noundef 8)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %.noexc46
  store ptr %i.el, ptr %i.ek, align 8, !tbaa !117
  br i1 %i.eh, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc47, %.noexc49
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.noexc49 ], [ 0, %.noexc47 ] ; 3 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !117
  %i.en = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.32, i32 noundef 345, i64 noundef range(i64 -2147483648, 2147483648) %i.ef, i64 noundef 4)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %.lr.ph.i
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.i
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !119
  %i.ep = load ptr, ptr %i.ek, align 8, !tbaa !117
  %i.eq = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.32, i32 noundef 346, i64 noundef range(i64 -2147483648, 2147483648) %i.ef, i64 noundef 4)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc49:                                         ; preds = %.noexc48
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  store ptr %i.eq, ptr %i.er, align 8, !tbaa !119
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %.pre
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.noexc49, %.noexc47
  %indvars.iv.next387.i = add nuw nsw i64 %indvars.iv386.i, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next387.i, %i.ea
  br i1 %exitcond322.not, label %._crit_edge338.i, label %.lr.ph337.i, !llvm.loop !30

._crit_edge338.i:                                 ; preds = %._crit_edge.i, %.noexc45
  %i.es = sext i32 %i.dl to i64                   ; 8 uses
  %i.et = icmp sgt i32 %i.dl, 0                   ; 4 uses
  %wide.trip.count297.i.i = zext i32 %i.dl to i64 ; 24 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 6 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 6 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %i.fb = icmp slt i32 %i.ee, 1                   ; 3 uses
  %wide.trip.count338.i.i = zext i32 %i.ee to i64 ; 9 uses
  %i.fc = sitofp i32 %i.cg to float               ; 7 uses
  %i.fd = icmp sgt i32 %i.eg, 0                   ; 5 uses
  %wide.trip.count292.i.i = zext i32 %i.cv to i64 ; 8 uses
  %wide.trip.count287.i.i = zext i32 %i.eg to i64 ; 10 uses
  %i.fe = sitofp i32 %i.cv to float
  %i.ff = sitofp <2 x i32> %i.dg to <2 x float>
  %i.fg = icmp slt i32 %i.eg, 1                   ; 3 uses
  %brmerge.i.i = or i1 %i.fg, %i.fb
  %or.cond.i = select i1 %i.ed, i1 true, i1 %brmerge.i.i
  %i.fh = select i1 %i.ed, i1 true, i1 %i.fg
  %or.cond = select i1 %i.fh, i1 true, i1 %i.fb
  %i.fi = shl nuw nsw i64 %wide.trip.count338.i.i, 2 ; 4 uses
  %min.iters.check587 = icmp ult i32 %i.dl, 4
  %min.iters.check589 = icmp ult i32 %i.dl, 32
  %i.fj = and i64 %wide.trip.count297.i.i, 28
  %n.vec591 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n598 = icmp eq i64 %n.vec591, %wide.trip.count297.i.i
  %min.epilog.iters.check603 = icmp eq i64 %i.fj, 0
  %n.vec605 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n612 = icmp eq i64 %n.vec605, %wide.trip.count297.i.i
  %min.iters.check559 = icmp ult i32 %i.dl, 4
  %min.iters.check561 = icmp ult i32 %i.dl, 32
  %i.fk = and i64 %wide.trip.count297.i.i, 28
  %n.vec563 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
  %cmp.n570 = icmp eq i64 %n.vec563, %wide.trip.count297.i.i
  %min.epilog.iters.check575 = icmp eq i64 %i.fk, 0
  %n.vec577 = and i64 %wide.trip.count297.i.i, 2147483644 ; 3 uses
  %cmp.n584 = icmp eq i64 %n.vec577, %wide.trip.count297.i.i
  %min.iters.check531 = icmp ult i32 %i.dl, 4
  %min.iters.check533 = icmp ult i32 %i.dl, 32
  %i.fl = and i64 %wide.trip.count297.i.i, 28
  %n.vec535 = and i64 %wide.trip.count297.i.i, 2147483616 ; 4 uses
end_hunk_0
begin_hunk_1_@_Z12gmx_hydorderiPPc:bb.a
  %i.acq = phi ptr [ @.str.83, %.noexc98 ], [ @.str.85, %bb.bi ]
  %i.acr = phi ptr [ @.str.84, %.noexc98 ], [ @.str.86, %bb.bi ]
  %i.acs = phi i32 [ 379, %.noexc98 ], [ 396, %bb.bi ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.acq, ptr noundef nonnull %i.acr, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL26calc_tetra_order_interfacePKcS0_S0_fiPiS1_S1_ffPPPPfP16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.32, i32 noundef %i.acs) #16
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bj:                                            ; preds = %bb.bi
  %i.act = sext i32 %.0 to i64                    ; 2 uses
  %i.acu = getelementptr inbounds [8 x i8], ptr %.1319.i, i64 %i.act
  store ptr %.1321.i, ptr %i.acu, align 8, !tbaa !134
  %i.acv = getelementptr inbounds [8 x i8], ptr %.1317.i, i64 %i.act
  store ptr %.1323.i, ptr %i.acv, align 8, !tbaa !134
  %i.acw = add nsw i32 %.0, 1
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %._crit_edge352.split.i
  %.1 = phi i32 [ %i.acw, %bb.bj ], [ %.0, %._crit_edge352.split.i ] ; 10 uses
  %i.acx = load ptr, ptr %i.k, align 8, !tbaa !136
  %i.acy = load ptr, ptr %i.n, align 8, !tbaa !119
  %i.acz = invoke noundef zeroext i1 @_Z11read_next_xPK16gmx_output_env_tP11t_trxstatusPfPA3_fS6_(ptr noundef %i.cj, ptr noundef %i.acx, ptr noundef nonnull %i.l, ptr noundef %i.acy, ptr noundef nonnull %i.o)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc101:                                        ; preds = %bb.bk
  br i1 %i.acz, label %bb.aq, label %bb.bl, !llvm.loop !61

bb.bl:                                            ; preds = %.noexc101
  %i.ada = load ptr, ptr %i.k, align 8, !tbaa !136
  invoke void @_Z9close_trxP11t_trxstatus(ptr noundef %i.ada)
          to label %.noexc102 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc102:                                        ; preds = %bb.bl
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.32, i32 noundef 405, ptr noundef %i.dh)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc103:                                        ; preds = %.noexc102
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.32, i32 noundef 406, ptr noundef nonnull %i.di)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc104:                                        ; preds = %.noexc103
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.32, i32 noundef 407, ptr noundef nonnull %i.dj)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %.noexc104
  %i.adb = load ptr, ptr @debug, align 8, !tbaa !95
  %.not208.i = icmp eq ptr %i.adb, null
  br i1 %.not208.i, label %.noexc109, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc105
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA12_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 1 dereferenceable(12) @.str.61, i8 noundef zeroext 2)
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc106:                                        ; preds = %._crit_edge.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.adc = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.adc, ptr %24, align 8, !tbaa !23
  store i32 695037480, ptr %i.adc, align 8
  %i.add = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 4, ptr %i.add, align 8, !tbaa !24
  %i.ade = getelementptr inbounds nuw i8, ptr %24, i64 20
  store i8 0, ptr %i.ade, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.adf = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 6 uses
  store ptr %i.adf, ptr %25, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.adf, ptr noundef nonnull align 1 dereferenceable(6) @.str.64, i64 6, i1 false)
  %i.adg = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 6, ptr %i.adg, align 8, !tbaa !24
  %i.adh = getelementptr inbounds nuw i8, ptr %25, i64 22
  store i8 0, ptr %i.adh, align 2, !tbaa !21
  %i.adi = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull @.str.62, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef %i.cj)
          to label %bb.bm unwind label %bb.bs     ; 3 uses

bb.bm:                                            ; preds = %.noexc106
  %i.adj = load ptr, ptr %25, align 8, !tbaa !20  ; 2 uses
  %i.adk = icmp eq ptr %i.adj, %i.adf
  br i1 %i.adk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.bm
  %i.adl = load i64, ptr %i.adf, align 8, !tbaa !21
  %i.adm = add i64 %i.adl, 1
  call void @_ZdlPvm(ptr noundef %i.adj, i64 noundef %i.adm) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.adn = load ptr, ptr %24, align 8, !tbaa !20  ; 2 uses
  %i.ado = icmp eq ptr %i.adn, %i.adc
  br i1 %i.ado, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.adp = load i64, ptr %i.adc, align 8, !tbaa !21
  %i.adq = add i64 %i.adp, 1
  call void @_ZdlPvm(ptr noundef %i.adn, i64 noundef %i.adq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  %i.adr = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i228.i = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i228.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i229.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.adr, ptr noundef nonnull %i.ads) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i229.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i229.i: ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227.i
  %i.adt = load ptr, ptr %23, align 8, !tbaa !20  ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.adv = icmp eq ptr %i.adt, %i.adu
  br i1 %i.adv, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i229.i
  %i.adw = load i64, ptr %i.adu, align 8, !tbaa !21
  %i.adx = add i64 %i.adw, 1
  call void @_ZdlPvm(ptr noundef %i.adt, i64 noundef %i.adx) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i229.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i230.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA13_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 1 dereferenceable(13) @.str.65, i8 noundef zeroext 2)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc107:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit232.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.ady = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 6 uses
  store ptr %i.ady, ptr %27, align 8, !tbaa !23
  store i32 695037480, ptr %i.ady, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %27, i64 8
  store i64 4, ptr %i.adz, align 8, !tbaa !24
  %i.aea = getelementptr inbounds nuw i8, ptr %27, i64 20
  store i8 0, ptr %i.aea, align 4, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #15
  %i.aeb = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.aeb, ptr %28, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.aeb, ptr noundef nonnull align 1 dereferenceable(6) @.str.67, i64 6, i1 false)
  %i.aec = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 6, ptr %i.aec, align 8, !tbaa !24
  %i.aed = getelementptr inbounds nuw i8, ptr %28, i64 22
  store i8 0, ptr %i.aed, align 2, !tbaa !21
  %i.aee = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %i.cj)
          to label %bb.bo unwind label %bb.bt     ; 3 uses

bb.bo:                                            ; preds = %.noexc107
  %i.aef = load ptr, ptr %28, align 8, !tbaa !20  ; 2 uses
  %i.aeg = icmp eq ptr %i.aef, %i.aeb
  br i1 %i.aeg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.i: ; preds = %bb.bo
  %i.aeh = load i64, ptr %i.aeb, align 8, !tbaa !21
  %i.aei = add i64 %i.aeh, 1
  call void @_ZdlPvm(ptr noundef %i.aef, i64 noundef %i.aei) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243.i: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.aej = load ptr, ptr %27, align 8, !tbaa !20  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.ady
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243.i
  %i.ael = load i64, ptr %i.ady, align 8, !tbaa !21
  %i.aem = add i64 %i.ael, 1
  call void @_ZdlPvm(ptr noundef %i.aej, i64 noundef %i.aem) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  %i.aen = getelementptr inbounds nuw i8, ptr %26, i64 32 ; 2 uses
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i247.i = icmp eq ptr %i.aeo, null
  br i1 %.not.i.i.i247.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248.i, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.aen, ptr noundef nonnull %i.aeo) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248.i: ; preds = %bb.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246.i
  %i.aep = load ptr, ptr %26, align 8, !tbaa !20  ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.aer = icmp eq ptr %i.aep, %i.aeq
  br i1 %i.aer, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248.i
  %i.aes = load i64, ptr %i.aeq, align 8, !tbaa !21
  %i.aet = add i64 %i.aes, 1
  call void @_ZdlPvm(ptr noundef %i.aep, i64 noundef %i.aet) #18
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i

_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i:     ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i248.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i249.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  %i.aeu = icmp sgt i32 %.1, 0
  br i1 %i.aeu, label %.lr.ph362.i, label %._crit_edge363.i

.lr.ph362.i:                                      ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i
  %i.aev = sitofp i32 %i.cv to double             ; 2 uses
  %i.aew = sitofp <2 x i32> %i.dg to <2 x double> ; 3 uses
  %i.aex = zext nneg i32 %.1 to i64
  %brmerge = select i1 %i.fg, i1 true, i1 %i.fb
  %i.aey = extractelement <2 x double> %i.aew, i64 0
  %i.aez = extractelement <2 x double> %i.aew, i64 1
  br label %bb.bq

bb.bq:                                            ; preds = %._crit_edge360.i, %.lr.ph362.i
  %indvars.iv419.i = phi i64 [ 0, %.lr.ph362.i ], [ %indvars.iv.next420.i, %._crit_edge360.i ] ; 4 uses
  %i.afa = trunc nuw nsw i64 %indvars.iv419.i to i32 ; 2 uses
  %i.afb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adi, ptr noundef nonnull @.str.68, i32 noundef %i.afa) #15 ; 0 uses
  %i.afc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aee, ptr noundef nonnull @.str.68, i32 noundef %i.afa) #15 ; 0 uses
  br i1 %i.ed, label %._crit_edge360.i, label %.preheader325.lr.ph.i

.preheader325.lr.ph.i:                            ; preds = %bb.bq
  %i.afd = getelementptr inbounds nuw [8 x i8], ptr %.1317.i, i64 %indvars.iv419.i
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %.1319.i, i64 %indvars.iv419.i
  br i1 %brmerge, label %._crit_edge360.i, label %.preheader325.i

.preheader325.i:                                  ; preds = %.preheader325.lr.ph.i, %._crit_edge358.split.i.loopexit
  %indvars.iv416.i = phi i64 [ %indvars.iv.next417.i, %._crit_edge358.split.i.loopexit ], [ 0, %.preheader325.lr.ph.i ] ; 4 uses
  %i.aff = trunc nuw nsw i64 %indvars.iv416.i to i32
  %i.afg = uitofp nneg i32 %i.aff to double
  %i.afh = fadd double %i.afg, 5.000000e-01       ; 2 uses
  br label %.preheader324.i

.preheader324.i:                                  ; preds = %.preheader325.i, %._crit_edge356.i
  %indvars.iv413.i = phi i64 [ %indvars.iv.next414.i, %._crit_edge356.i ], [ 0, %.preheader325.i ] ; 4 uses
  %i.afi = trunc nuw nsw i64 %indvars.iv413.i to i32
  %i.afj = uitofp nneg i32 %i.afi to double
  %i.afk = fadd double %i.afj, 5.000000e-01       ; 2 uses
  %i.afl = insertelement <2 x double> poison, double %i.afk, i64 0
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.preheader324.i
  %indvars.iv408.i = phi i64 [ 0, %.preheader324.i ], [ %indvars.iv.next409.i, %bb.br ] ; 4 uses
  %i.afm = load float, ptr %i.o, align 16, !tbaa !93
  %i.afn = fpext float %i.afm to double
  %i.afo = fmul double %i.afh, %i.afn
  %i.afp = fdiv double %i.afo, %i.aev
  %i.afq = load float, ptr %i.cw, align 16, !tbaa !93
  %i.afr = fpext float %i.afq to double
  %i.afs = fmul double %i.afk, %i.afr
  %i.aft = fdiv double %i.afs, %i.aey
  %i.afu = trunc nuw nsw i64 %indvars.iv408.i to i32
  %i.afv = uitofp nneg i32 %i.afu to double
  %i.afw = fadd double %i.afv, 5.000000e-01       ; 2 uses
  %i.afx = load float, ptr %i.cz, align 16, !tbaa !93
  %i.afy = fpext float %i.afx to double
  %i.afz = fmul double %i.afw, %i.afy
  %i.aga = fdiv double %i.afz, %i.aez
  %i.agb = load ptr, ptr %i.afd, align 8, !tbaa !134
  %i.agc = getelementptr inbounds nuw [8 x i8], ptr %i.agb, i64 %indvars.iv416.i
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !117
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %i.agd, i64 %indvars.iv413.i
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !119
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.agf, i64 %indvars.iv408.i
  %i.agh = load float, ptr %i.agg, align 4, !tbaa !93
  %i.agi = fpext float %i.agh to double
  %i.agj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.adi, ptr noundef nonnull @.str.69, double noundef %i.afp, double noundef %i.aft, double noundef %i.aga, double noundef %i.agi) #15 ; 0 uses
  %i.agk = load float, ptr %i.o, align 16, !tbaa !93
  %i.agl = fpext float %i.agk to double
  %i.agm = fmul double %i.afh, %i.agl
  %i.agn = fdiv double %i.agm, %i.aev
  %i.ago = load <4 x float>, ptr %i.cw, align 16
  %i.agp = shufflevector <4 x float> %i.ago, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.agq = load float, ptr %i.cz, align 16, !tbaa !93
  %i.agr = insertelement <2 x float> %i.agp, float %i.agq, i64 1
  %i.ags = fpext <2 x float> %i.agr to <2 x double>
  %i.agt = insertelement <2 x double> %i.afl, double %i.afw, i64 1
  %i.agu = fmul <2 x double> %i.agt, %i.ags
  %i.agv = fdiv <2 x double> %i.agu, %i.aew       ; 2 uses
  %i.agw = load ptr, ptr %i.afe, align 8, !tbaa !134
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.agw, i64 %indvars.iv416.i
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !117
  %i.agz = getelementptr inbounds nuw [8 x i8], ptr %i.agy, i64 %indvars.iv413.i
  %i.aha = load ptr, ptr %i.agz, align 8, !tbaa !119
  %i.ahb = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %indvars.iv408.i
  %i.ahc = load float, ptr %i.ahb, align 4, !tbaa !93
  %i.ahd = fpext float %i.ahc to double
  %i.ahe = extractelement <2 x double> %i.agv, i64 0
  %i.ahf = extractelement <2 x double> %i.agv, i64 1
  %i.ahg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aee, ptr noundef nonnull @.str.69, double noundef %i.agn, double noundef %i.ahe, double noundef %i.ahf, double noundef %i.ahd) #15 ; 0 uses
  %indvars.iv.next409.i = add nuw nsw i64 %indvars.iv408.i, 1 ; 2 uses
  %exitcond412.not.i = icmp eq i64 %indvars.iv.next409.i, %wide.trip.count338.i.i
  br i1 %exitcond412.not.i, label %._crit_edge356.i, label %bb.br, !llvm.loop !62

bb.bs:                                            ; preds = %.noexc106
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  %i.ahi = load ptr, ptr %25, align 8, !tbaa !20  ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.adf
  br i1 %i.ahj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i: ; preds = %bb.bs
  %i.ahk = load i64, ptr %i.adf, align 8, !tbaa !21
  %i.ahl = add i64 %i.ahk, 1
  call void @_ZdlPvm(ptr noundef %i.ahi, i64 noundef %i.ahl) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #15
  %i.ahm = load ptr, ptr %24, align 8, !tbaa !20  ; 2 uses
  %i.ahn = icmp eq ptr %i.ahm, %i.adc
  br i1 %i.ahn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i
  %i.aho = load i64, ptr %i.adc, align 8, !tbaa !21
  %i.ahp = add i64 %i.aho, 1
  call void @_ZdlPvm(ptr noundef %i.ahm, i64 noundef %i.ahp) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i255.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.bw

bb.bt:                                            ; preds = %.noexc107
  %i.ahq = landingpad { ptr, i32 }
          cleanup
  %i.ahr = load ptr, ptr %28, align 8, !tbaa !20  ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.aeb
  br i1 %i.ahs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i: ; preds = %bb.bt
  %i.aht = load i64, ptr %i.aeb, align 8, !tbaa !21
  %i.ahu = add i64 %i.aht, 1
  call void @_ZdlPvm(ptr noundef %i.ahr, i64 noundef %i.ahu) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #15
  %i.ahv = load ptr, ptr %27, align 8, !tbaa !20  ; 2 uses
  %i.ahw = icmp eq ptr %i.ahv, %i.ady
  br i1 %i.ahw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i
  %i.ahx = load i64, ptr %i.ady, align 8, !tbaa !21
  %i.ahy = add i64 %i.ahx, 1
  call void @_ZdlPvm(ptr noundef %i.ahv, i64 noundef %i.ahy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %26) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #15
  br label %bb.bw

._crit_edge356.i:                                 ; preds = %bb.br
  %indvars.iv.next414.i = add nuw nsw i64 %indvars.iv413.i, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next414.i, %wide.trip.count287.i.i
  br i1 %exitcond325.not, label %._crit_edge358.split.i.loopexit, label %.preheader324.i, !llvm.loop !63

._crit_edge358.split.i.loopexit:                  ; preds = %._crit_edge356.i
  %indvars.iv.next417.i = add nuw nsw i64 %indvars.iv416.i, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next417.i, %wide.trip.count292.i.i
  br i1 %exitcond326.not, label %._crit_edge360.i, label %.preheader325.i, !llvm.loop !64

._crit_edge360.i:                                 ; preds = %._crit_edge358.split.i.loopexit, %.preheader325.lr.ph.i, %bb.bq
  %indvars.iv.next420.i = add nuw nsw i64 %indvars.iv419.i, 1 ; 2 uses
  %exitcond327.not = icmp eq i64 %indvars.iv.next420.i, %i.aex
  br i1 %exitcond327.not, label %._crit_edge363.i, label %bb.bq, !llvm.loop !65

._crit_edge363.i:                                 ; preds = %._crit_edge360.i, %_ZNSt10filesystem7__cxx114pathD2Ev.exit251.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.adi)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %._crit_edge363.i
  invoke void @_Z9xvgrcloseP8_IO_FILE(ptr noundef %i.aee)
          to label %.noexc109 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc108, %.noexc105
  %i.ahz = fadd float %i.ch, %i.ci
  %i.aia = fmul float %i.ahz, 5.000000e-01        ; 2 uses
  %i.aib = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.32, i32 noundef 454, i64 noundef 2, i64 noundef 8)
          to label %.noexc110 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc110:                                        ; preds = %.noexc109
  %i.aic = sext i32 %.1 to i64                    ; 3 uses
  %i.aid = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.32, i32 noundef 455, i64 noundef range(i64 -2147483648, 2147483648) %i.aic, i64 noundef 8)
          to label %.noexc111 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc111:                                        ; preds = %.noexc110
  store ptr %i.aid, ptr %i.aib, align 8, !tbaa !117
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 8 ; 5 uses
  %i.aif = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.32, i32 noundef 456, i64 noundef range(i64 -2147483648, 2147483648) %i.aic, i64 noundef 8)
          to label %.noexc112 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc112:                                        ; preds = %.noexc111
  store ptr %i.aif, ptr %i.aie, align 8, !tbaa !117
  %i.aig = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.32, i32 noundef 461, i64 noundef range(i64 -2147483648, 2147483648) %i.ef, i64 noundef 4)
          to label %.noexc113 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc113:                                        ; preds = %.noexc112
  %i.aih = icmp sgt i32 %.1, 0                    ; 3 uses
  br i1 %i.aih, label %.lr.ph371.i, label %._crit_edge372.i

.lr.ph371.i:                                      ; preds = %.noexc113
  %i.aii = mul nsw i32 %i.eg, %i.cv
  %i.aij = sext i32 %i.aii to i64                 ; 2 uses
  %i.aik = sdiv i32 %i.ee, 2                      ; 2 uses
  %i.ail = add nsw i32 %i.aik, -1
  %i.aim = add nsw i32 %i.ee, -1
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge368.i, %.lr.ph371.i
  %indvars.iv428.i = phi i64 [ 0, %.lr.ph371.i ], [ %indvars.iv.next429.i, %._crit_edge368.i ] ; 6 uses
  %i.ain = load ptr, ptr %i.aib, align 8, !tbaa !117
  %i.aio = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.32, i32 noundef 466, i64 noundef range(i64 -2147483648, 2147483648) %i.aij, i64 noundef 4)
          to label %.noexc114 unwind label %.loopexit.split-lp.loopexit

.noexc114:                                        ; preds = %bb.bu
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.ain, i64 %indvars.iv428.i
  store ptr %i.aio, ptr %i.aip, align 8, !tbaa !119
  %i.aiq = load ptr, ptr %i.aie, align 8, !tbaa !117
  %i.air = invoke noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.32, i32 noundef 467, i64 noundef range(i64 -2147483648, 2147483648) %i.aij, i64 noundef 4)
          to label %.noexc115 unwind label %.loopexit.split-lp.loopexit

.noexc115:                                        ; preds = %.noexc114
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.aiq, i64 %indvars.iv428.i
  store ptr %i.air, ptr %i.ais, align 8, !tbaa !119
  br i1 %i.ed, label %._crit_edge368.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.noexc115
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %.1317.i, i64 %indvars.iv428.i ; 2 uses
  br i1 %i.fd, label %.preheader.i, label %._crit_edge368.i

.preheader.i:                                     ; preds = %.preheader.lr.ph.i, %._crit_edge366.i
  %indvars.iv425.i = phi i64 [ %indvars.iv.next426.i, %._crit_edge366.i ], [ 0, %.preheader.lr.ph.i ] ; 4 uses
  %i.aiu = trunc nuw nsw i64 %indvars.iv425.i to i32
  %i.aiv = mul nuw nsw i32 %i.eg, %i.aiu
  br label %bb.bv

bb.bv:                                            ; preds = %.noexc118, %.preheader.i
  %indvars.iv422.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next423.i, %.noexc118 ] ; 4 uses
  invoke void @_Z10rangeArrayPii(ptr noundef %i.aig, i32 noundef %i.ee)
          to label %.noexc116 unwind label %.loopexit

.noexc116:                                        ; preds = %bb.bv
  %i.aiw = load ptr, ptr %i.ait, align 8, !tbaa !134
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %i.aiw, i64 %indvars.iv425.i
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !117
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %indvars.iv422.i
  %i.aja = load ptr, ptr %i.aiz, align 8, !tbaa !119
  %i.ajb = invoke noundef i32 @_Z15start_binsearchPfPiiifi(ptr noundef %i.aja, ptr noundef %i.aig, i32 noundef 0, i32 noundef %i.ail, float noundef %i.aia, i32 noundef 1)
          to label %.noexc117 unwind label %.loopexit

.noexc117:                                        ; preds = %.noexc116
  %i.ajc = load ptr, ptr %i.ait, align 8, !tbaa !134
  %i.ajd = getelementptr inbounds nuw [8 x i8], ptr %i.ajc, i64 %indvars.iv425.i
  %i.aje = load ptr, ptr %i.ajd, align 8, !tbaa !117
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %indvars.iv422.i
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !119
  %i.ajh = invoke noundef i32 @_Z15start_binsearchPfPiiifi(ptr noundef %i.ajg, ptr noundef %i.aig, i32 noundef %i.aik, i32 noundef %i.aim, float noundef %i.aia, i32 noundef -1)
          to label %.noexc118 unwind label %.loopexit

.noexc118:                                        ; preds = %.noexc117
  %i.aji = sext i32 %i.ajb to i64
  %i.ajj = getelementptr inbounds [4 x i8], ptr %i.aig, i64 %i.aji
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !81
  %i.ajl = sitofp i32 %i.ajk to float
  %i.ajm = fadd nnan float %i.ajl, 5.000000e-01
  %i.ajn = fmul float %i.cf, %i.ajm
  %i.ajo = load ptr, ptr %i.aib, align 8, !tbaa !117
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.ajo, i64 %indvars.iv428.i
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !119
  %i.ajr = trunc nuw nsw i64 %indvars.iv422.i to i32
  %i.ajs = add nsw i32 %i.aiv, %i.ajr
  %i.ajt = sext i32 %i.ajs to i64                 ; 2 uses
  %i.aju = getelementptr inbounds [4 x i8], ptr %i.ajq, i64 %i.ajt
  store float %i.ajn, ptr %i.aju, align 4, !tbaa !93
end_hunk_1
