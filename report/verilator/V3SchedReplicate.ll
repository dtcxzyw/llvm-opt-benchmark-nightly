Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3SchedReplicate?download=true
inline.NumInlined: 1219
inline.NumDeleted: 505
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7V3Sched14replicateLogicERNS_12LogicRegionsE:bb.a

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bf = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.bc
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !36
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.v

bb.t:                                             ; preds = %bb.w, %_ZN7V3Sched12_GLOBAL__N_110buildGraphERKNS_12LogicRegionsE.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  %i.bl = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.bc
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.u
  %i.bn = load i64, ptr %i.bc, align 8, !tbaa !36
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %.body

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r
  %.val19 = load ptr, ptr %6, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %.val19, i64 8
  br label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit: ; preds = %_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit, %bb.v
  %.sroa.046.0.in = phi ptr [ %i.bp, %bb.v ], [ %i.br, %_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit ]
  %.sroa.046.0 = load ptr, ptr %.sroa.046.0.in, align 8, !tbaa !243 ; 7 uses
  %.not = icmp eq ptr %.sroa.046.0, null
  br i1 %.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %i.bq = invoke noundef i32 @_ZL14dumpGraphLevelv()
          to label %bb.aa unwind label %bb.t

bb.x:                                             ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.046.0, i64 8 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !244 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, null
  %i.bt = select i1 %.not.i, ptr %.sroa.046.0, ptr %i.bs
  call void @llvm.prefetch.p0(ptr nonnull %i.bt, i32 1, i32 3, i32 1)
  %i.bu = load ptr, ptr %.sroa.046.0, align 8, !tbaa !17
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.046.0, i64 noundef ptrtoint (ptr @_ZZN7V3Sched12_GLOBAL__N_120SchedReplicateVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %.noexc26 unwind label %bb.z, !inline_history !237

.noexc26:                                         ; preds = %bb.x
  br i1 %i.bw, label %_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit, label %bb.y, !prof !40

bb.y:                                             ; preds = %.noexc26
  %i.bx = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.66, i32 noundef 249)
          to label %.noexc27 unwind label %bb.z   ; 0 uses

.noexc27:                                         ; preds = %bb.y
  %i.by = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %.noexc28 unwind label %bb.z   ; 2 uses

.noexc28:                                         ; preds = %.noexc27
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef nonnull @.str.67, i64 noundef 37)
          to label %.noexc29 unwind label %bb.z   ; 0 uses

.noexc29:                                         ; preds = %.noexc28
  invoke void @_ZNK13V3GraphVertex15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.046.0, ptr noundef nonnull align 8 dereferenceable(112) %i.by)
          to label %_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit unwind label %bb.z

_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit: ; preds = %.noexc26, %.noexc29
  invoke fastcc void @_ZN7V3Sched12_GLOBAL__N_123propagateDrivingRegionsEPNS0_20SchedReplicateVertexE(ptr noundef %.sroa.046.0)
          to label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit unwind label %bb.z

bb.z:                                             ; preds = %.noexc29, %.noexc28, %.noexc27, %bb.y, %bb.x, %_ZN13V3GraphVertex2asIN7V3Sched12_GLOBAL__N_120SchedReplicateVertexEEEPT_v.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.w
  %i.cb = icmp sgt i32 %i.bq, 5
  br i1 %i.cb, label %.noexc.i32, label %bb.ae

.noexc.i32:                                       ; preds = %bb.aa
  %.val18 = load ptr, ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cc, ptr %8, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 26, ptr %i.a, align 8, !tbaa !41
  %i.cd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.ac  ; 2 uses

.noexc33:                                         ; preds = %.noexc.i32
  store ptr %i.cd, ptr %8, align 8, !tbaa !37
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !41  ; 3 uses
  store i64 %i.ce, ptr %i.cc, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.cd, ptr noundef nonnull align 1 dereferenceable(26) @.str.1, i64 26, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !35
  %i.cg = load ptr, ptr %8, align 8, !tbaa !37
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  invoke void @_ZNK7V3Graph19dumpDotFilePrefixedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(24) %.val18, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %.noexc33
  %i.ci = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cc
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ab
  %i.ck = load i64, ptr %i.cc, align 8, !tbaa !36
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.ae

bb.ac:                                            ; preds = %.noexc.i32
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.ad:                                            ; preds = %.noexc33
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.co = load ptr, ptr %8, align 8, !tbaa !37    ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.cc
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.ad
  %i.cq = load i64, ptr %i.cc, align 8, !tbaa !36
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.ac
  %.pn11 = phi { ptr, i32 } [ %i.cm, %bb.ac ], [ %i.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.cn, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.aa
  %.val = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %i.cs = getelementptr i8, ptr %.val, i64 8
  %.val21 = load ptr, ptr %i.cs, align 8, !tbaa !246 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 0, i64 120, i1 false), !alias.scope !247
  %.not1012.i = icmp eq ptr %.val21, null
  br i1 %.not1012.i, label %_ZNKSt14default_deleteIN7V3Sched12_GLOBAL__N_15GraphEEclEPS2_.exit.i, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %bb.ae
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.af

bb.af:                                            ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i, %.lr.ph.i41
  %.sroa.03.013.i = phi ptr [ %.val21, %.lr.ph.i41 ], [ %i.ei, %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i ] ; 17 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.03.013.i, i64 8 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !244 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cy, null
  %i.cz = select i1 %.not.i.i, ptr %.sroa.03.013.i, ptr %i.cy
  call void @llvm.prefetch.p0(ptr nonnull %i.cz, i32 1, i32 3, i32 1)
  %i.da = load ptr, ptr %.sroa.03.013.i, align 8, !tbaa !17
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef zeroext i1 %i.db(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.03.013.i, i64 noundef ptrtoint (ptr @_ZZN7V3Sched12_GLOBAL__N_125SchedReplicateLogicVertex13v3RttiClassIdEvE15s_vlrttiClassId to i64))
          to label %bb.ag unwind label %bb.an, !inline_history !240

bb.ag:                                            ; preds = %bb.af
  br i1 %i.dc, label %bb.ah, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.dd = getelementptr i8, ptr %.sroa.03.013.i, i64 80
  %.val.i = load i8, ptr %i.dd, align 8, !tbaa !48
  %i.de = getelementptr i8, ptr %.sroa.03.013.i, i64 112
  %.val28.i = load i8, ptr %i.de, align 8, !tbaa !52
  %i.df = getelementptr i8, ptr %.sroa.03.013.i, i64 96 ; 6 uses
  %.val29.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.dg = invoke noundef zeroext i1 @_ZNK10AstSenTree10hasClockedEv(ptr noundef nonnull align 8 dereferenceable(160) %.val29.i)
          to label %bb.ai unwind label %.loopexit.i

bb.ai:                                            ; preds = %bb.ah
  %i.dh = xor i8 %.val28.i, -1
  %i.di = and i8 %.val.i, %i.dh                   ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 4 uses
  %i.dk = icmp ne i8 %i.di, 0
  %.not17.i = and i1 %i.dk, %i.dg
  br i1 %.not17.i, label %bb.aj, label %bb.ao, !prof !53

bb.aj:                                            ; preds = %bb.ai
  %i.dl = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.14, i32 noundef 281)
          to label %bb.ak unwind label %.loopexit.split-lp.i ; 0 uses

bb.ak:                                            ; preds = %bb.aj
  %i.dm = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.al unwind label %.loopexit.split-lp.i ; 2 uses

bb.al:                                            ; preds = %bb.ak
  %i.dn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull @.str.59, i64 noundef 25)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %.loopexit.split-lp.i ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.al
  invoke void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.dm) #29
          to label %bb.am unwind label %.loopexit.split-lp.i

bb.am:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  unreachable

bb.an:                                            ; preds = %bb.af
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.i:                                      ; preds = %.noexc57.i, %bb.at, %.noexc51.i, %bb.as, %.noexc45.i, %bb.ar, %.noexc39.i, %bb.aq, %.noexc.i43, %bb.ap, %bb.ah
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

.loopexit.split-lp.i:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.al, %bb.ak, %bb.aj
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ao:                                            ; preds = %bb.ai
  %9 = trunc i8 %i.di to i1
  br i1 %9, label %bb.ap, label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit.i"

bb.ap:                                            ; preds = %bb.ao
  %i.dp = getelementptr i8, ptr %.sroa.03.013.i, i64 88
  %.val2.i.i = load ptr, ptr %i.dp, align 8, !tbaa !249
  %.val.i.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.dq = getelementptr i8, ptr %.sroa.03.013.i, i64 104
  %.val3.i.i = load ptr, ptr %i.dq, align 8, !tbaa !54
  %i.dr = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %.val3.i.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc.i43 unwind label %.loopexit.i

.noexc.i43:                                       ; preds = %bb.ap
  invoke void @_ZN7V3Sched12LogicByScope3addEP8AstScopeP10AstSenTreeP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %.val2.i.i, ptr noundef %.val.i.i, ptr noundef %i.dr)
          to label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit.i" unwind label %.loopexit.i

"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit.i": ; preds = %.noexc.i43, %bb.ao
  %i.ds = and i32 %i.dj, 2
  %.not19.i = icmp eq i32 %i.ds, 0
  br i1 %.not19.i, label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit41.i", label %bb.aq

bb.aq:                                            ; preds = %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit.i"
  %i.dt = getelementptr i8, ptr %.sroa.03.013.i, i64 88
  %.val2.i36.i = load ptr, ptr %i.dt, align 8, !tbaa !249
  %.val.i37.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.du = getelementptr i8, ptr %.sroa.03.013.i, i64 104
  %.val3.i38.i = load ptr, ptr %i.du, align 8, !tbaa !54
  %i.dv = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %.val3.i38.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc39.i unwind label %.loopexit.i

.noexc39.i:                                       ; preds = %bb.aq
  invoke void @_ZN7V3Sched12LogicByScope3addEP8AstScopeP10AstSenTreeP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef %.val2.i36.i, ptr noundef %.val.i37.i, ptr noundef %i.dv)
          to label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit41.i" unwind label %.loopexit.i

"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit41.i": ; preds = %.noexc39.i, %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit.i"
  %i.dw = and i32 %i.dj, 4
  %.not20.i = icmp eq i32 %i.dw, 0
  br i1 %.not20.i, label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit47.i", label %bb.ar

bb.ar:                                            ; preds = %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit41.i"
  %i.dx = getelementptr i8, ptr %.sroa.03.013.i, i64 88
  %.val2.i42.i = load ptr, ptr %i.dx, align 8, !tbaa !249
  %.val.i43.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.dy = getelementptr i8, ptr %.sroa.03.013.i, i64 104
  %.val3.i44.i = load ptr, ptr %i.dy, align 8, !tbaa !54
  %i.dz = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %.val3.i44.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc45.i unwind label %.loopexit.i

.noexc45.i:                                       ; preds = %bb.ar
  invoke void @_ZN7V3Sched12LogicByScope3addEP8AstScopeP10AstSenTreeP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef %.val2.i42.i, ptr noundef %.val.i43.i, ptr noundef %i.dz)
          to label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit47.i" unwind label %.loopexit.i

"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit47.i": ; preds = %.noexc45.i, %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit41.i"
  %i.ea = and i32 %i.dj, 8
  %.not21.i = icmp eq i32 %i.ea, 0
  br i1 %.not21.i, label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit53.i", label %bb.as

bb.as:                                            ; preds = %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit47.i"
  %i.eb = getelementptr i8, ptr %.sroa.03.013.i, i64 88
  %.val2.i48.i = load ptr, ptr %i.eb, align 8, !tbaa !249
  %.val.i49.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.ec = getelementptr i8, ptr %.sroa.03.013.i, i64 104
  %.val3.i50.i = load ptr, ptr %i.ec, align 8, !tbaa !54
  %i.ed = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %.val3.i50.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc51.i unwind label %.loopexit.i

.noexc51.i:                                       ; preds = %bb.as
  invoke void @_ZN7V3Sched12LogicByScope3addEP8AstScopeP10AstSenTreeP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef %.val2.i48.i, ptr noundef %.val.i49.i, ptr noundef %i.ed)
          to label %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit53.i" unwind label %.loopexit.i

"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit53.i": ; preds = %.noexc51.i, %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit47.i"
  %i.ee = and i32 %i.dj, 16
  %.not22.i = icmp eq i32 %i.ee, 0
  br i1 %.not22.i, label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i, label %bb.at

bb.at:                                            ; preds = %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit53.i"
  %i.ef = getelementptr i8, ptr %.sroa.03.013.i, i64 88
  %.val2.i54.i = load ptr, ptr %i.ef, align 8, !tbaa !249
  %.val.i55.i = load ptr, ptr %i.df, align 8, !tbaa !248
  %i.eg = getelementptr i8, ptr %.sroa.03.013.i, i64 104
  %.val3.i56.i = load ptr, ptr %i.eg, align 8, !tbaa !54
  %i.eh = invoke noundef ptr @_ZN7AstNode9cloneTreeEbb(ptr noundef nonnull align 8 dereferenceable(152) %.val3.i56.i, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %.noexc57.i unwind label %.loopexit.i

.noexc57.i:                                       ; preds = %bb.at
  invoke void @_ZN7V3Sched12LogicByScope3addEP8AstScopeP10AstSenTreeP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef %.val2.i54.i, ptr noundef %.val.i55.i, ptr noundef %i.eh)
          to label %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i unwind label %.loopexit.i

_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i: ; preds = %.noexc57.i, %"_ZZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphEENK3$_0clERNS_12LogicByScopeE.exit53.i", %bb.ag
  %i.ei = load ptr, ptr %i.cx, align 8, !tbaa !244 ; 2 uses
  %.not10.i = icmp eq ptr %i.ei, null
  br i1 %.not10.i, label %_ZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphE.exit, label %bb.af

bb.au:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.an
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.do, %bb.an ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @_ZN7V3Sched13LogicReplicasD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) #25
  br label %.body

_ZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphE.exit: ; preds = %_ZN6V3ListI13V3GraphVertexXadL_ZNS0_5linksEvEES0_E19SimpleItertatorImplIS0_Lb0EEppEv.exit.i
  %.pre = load ptr, ptr %6, align 8, !tbaa !20    ; 2 uses
  %.not.i44 = icmp eq ptr %.pre, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN7V3Sched12_GLOBAL__N_15GraphESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN7V3Sched12_GLOBAL__N_15GraphEEclEPS2_.exit.i

_ZNKSt14default_deleteIN7V3Sched12_GLOBAL__N_15GraphEEclEPS2_.exit.i: ; preds = %bb.ae, %_ZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphE.exit
  %i.ej = phi ptr [ %.pre, %_ZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphE.exit ], [ %.val, %bb.ae ] ; 2 uses
  call void @_ZN7V3GraphD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ej) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef 24) #27
  br label %_ZNSt10unique_ptrIN7V3Sched12_GLOBAL__N_15GraphESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN7V3Sched12_GLOBAL__N_15GraphESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN7V3Sched12_GLOBAL__N_19replicateEPNS0_5GraphE.exit, %_ZNKSt14default_deleteIN7V3Sched12_GLOBAL__N_15GraphEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void

.body:                                            ; preds = %bb.z, %bb.t, %bb.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %bb.au ], [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.bj, %bb.t ], [ %i.ca, %bb.z ]
  call fastcc void @_ZNSt10unique_ptrIN7V3Sched12_GLOBAL__N_15GraphESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL14dumpGraphLevelv() #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %1 = alloca %"class.std::allocator.2", align 1  ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 4 uses
  %i.a = load i32, ptr @_ZZL14dumpGraphLevelvE7s_level, align 4, !tbaa !55 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.l, !prof !53

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.58, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK9V3Options9dumpLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !36
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = invoke noundef i32 @_ZNK9V3Options12dumpSrcLevelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.f
  %i.m = load i64, ptr %i.k, align 8, !tbaa !36
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.o = call i32 @llvm.umax.i32(i32 %i.c, i32 %i.i) ; 3 uses
  %i.p = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1914), align 2, !tbaa !100, !range !101, !noundef !102
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.thread, label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.h:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.h
end_hunk_0
