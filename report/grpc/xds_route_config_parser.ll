Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_route_config_parser?download=true
inline.NumInlined: 4860
inline.NumDeleted: 2409
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN9grpc_core12_GLOBAL__N_116RetryPolicyParseEPK33envoy_config_route_v3_RetryPolicyPNS_16ValidationErrorsE:bb.a
  %.pn70 = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  br label %bb.ba

bb.o:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit77, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit85, %bb.h, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit89, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit81, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.av = phi i32 [ %i.aj, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit77 ], [ %i.an, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit85 ], [ %i.w, %bb.h ], [ %i.w, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ %i.ap, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit89 ], [ %i.al, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit81 ], [ %i.ah, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0128.0142, i64 16 ; 2 uses
  %.not140 = icmp eq ptr %i.aw, %i.u
  br i1 %.not140, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.o, %bb.f
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__UInt32Value_msg_init) #29, !srcloc !44
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load i64, ptr %i.ax, align 1            ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread, label %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread: ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.ba, align 4, !tbaa !225
  br label %bb.v

_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit: ; preds = %._crit_edge
  %i.bb = inttoptr i64 %i.ay to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 1            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !225
  %i.bf = icmp eq i32 %i.bd, 0
  br i1 %i.bf, label %bb.p, label %bb.v

bb.p:                                             ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %2, ptr %8, align 8, !tbaa !58
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 12, ptr nonnull @.str.40)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.s

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.p
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 22, ptr nonnull @.str.41)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #33
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.bj, %bb.t ], [ %i.bi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  br label %bb.ba

bb.v:                                             ; preds = %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit, %_ZN9grpc_core16ParseUInt32ValueEPK27google_protobuf_UInt32Value.exit.thread
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__route__v3__RetryPolicy__RetryBackOff_msg_init) #29, !srcloc !44
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bl = load i64, ptr %i.bk, align 1            ; 2 uses
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %.not = icmp eq i64 %i.bl, 0
  br i1 %.not, label %bb.ax, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  store ptr %2, ptr %9, align 8, !tbaa !58
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 15, ptr nonnull @.str.42)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit90 unwind label %bb.z

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit90: ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %2, ptr %10, align 8, !tbaa !58
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 14, ptr nonnull @.str.43)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit90
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__Duration_msg_init) #29, !srcloc !44
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load i64, ptr %i.bn, align 1            ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 17, ptr nonnull @.str.23)
          to label %bb.af unwind label %bb.ab

bb.z:                                             ; preds = %bb.w
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.aa:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit90
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ab:                                            ; preds = %bb.y
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ac:                                            ; preds = %bb.x
  %i.bt = inttoptr i64 %i.bo to ptr
  %i.bu = invoke i64 @_ZN9grpc_core13ParseDurationEPK24google_protobuf_DurationPNS_16ValidationErrorsE(ptr noundef nonnull %i.bt, ptr noundef nonnull %2)
          to label %bb.ad unwind label %bb.ae     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !67
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.af:                                            ; preds = %bb.y, %bb.ad
  %.sroa.02.0.copyload = phi i64 [ 0, %bb.y ], [ %i.bu, %bb.ad ] ; 3 uses
  %i.bw = load ptr, ptr %10, align 8, !tbaa !58   ; 2 uses
  %.not.i92 = icmp eq ptr %i.bw, null
  br i1 %.not.i92, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.bw)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #33
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #29
  store ptr %2, ptr %11, align 8, !tbaa !58
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %2, i64 13, ptr nonnull @.str.44)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__Duration_msg_init) #29, !srcloc !44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.ca = load i64, ptr %i.bz, align 1            ; 2 uses
  %.not62 = icmp eq i64 %i.ca, 0
  br i1 %.not62, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = invoke i64 @_ZN9grpc_core13ParseDurationEPK24google_protobuf_DurationPNS_16ValidationErrorsE(ptr noundef nonnull %i.cb, ptr noundef nonnull %2)
          to label %_ZN9grpc_coremlEdNS_8DurationE.exit unwind label %bb.an

bb.ak:                                            ; preds = %bb.ae, %bb.ab
  %.pn59 = phi { ptr, i32 } [ %i.bs, %bb.ab ], [ %i.bv, %bb.ae ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #29
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aa
  %.pn59.pn = phi { ptr, i32 } [ %.pn59, %bb.ak ], [ %i.br, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.av

bb.am:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.an:                                            ; preds = %bb.aj
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #29
  br label %bb.au

bb.ao:                                            ; preds = %bb.ai
  %.sroa.02.0.copyload.off = add i64 %.sroa.02.0.copyload, -9223372036854775807
  %switch = icmp ult i64 %.sroa.02.0.copyload.off, 2
  br i1 %switch, label %_ZN9grpc_coremlEdNS_8DurationE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cf = sitofp i64 %.sroa.02.0.copyload to double
  %i.cg = fmul nnan double %i.cf, 1.000000e+01
  %i.ch = fdiv nnan double %i.cg, 1.000000e+03
  %i.ci = fmul nnan double %i.ch, 1.000000e+03    ; 3 uses
  %i.cj = fcmp ult double %i.ci, f0x43E0000000000000
  br i1 %i.cj, label %12, label %_ZN9grpc_coremlEdNS_8DurationE.exit

12:                                               ; preds = %bb.ap
  %13 = fcmp ugt double %i.ci, f0xC3E0000000000000
  br i1 %13, label %14, label %_ZN9grpc_coremlEdNS_8DurationE.exit

14:                                               ; preds = %12
  %15 = fptosi double %i.ci to i64
  br label %_ZN9grpc_coremlEdNS_8DurationE.exit

_ZN9grpc_coremlEdNS_8DurationE.exit:              ; preds = %bb.ao, %14, %12, %bb.ap, %bb.aj
  %storemerge = phi i64 [ %i.cc, %bb.aj ], [ 9223372036854775807, %bb.ap ], [ %15, %14 ], [ -9223372036854775808, %12 ], [ %.sroa.02.0.copyload, %bb.ao ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %storemerge, ptr %i.ck, align 8, !tbaa !67
  %i.cl = load ptr, ptr %11, align 8, !tbaa !58   ; 2 uses
  %.not.i95 = icmp eq ptr %i.cl, null
  br i1 %.not.i95, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit96, label %bb.aq

bb.aq:                                            ; preds = %_ZN9grpc_coremlEdNS_8DurationE.exit
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.cl)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit96 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = landingpad { ptr, i32 }
          catch ptr null
  %i.cn = extractvalue { ptr, i32 } %i.cm, 0
  call void @__clang_call_terminate(ptr %i.cn) #33
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit96: ; preds = %_ZN9grpc_coremlEdNS_8DurationE.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  %i.co = load ptr, ptr %9, align 8, !tbaa !58    ; 2 uses
  %.not.i97 = icmp eq ptr %i.co, null
  br i1 %.not.i97, label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit98, label %bb.as

bb.as:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit96
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %i.co)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit98 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #33
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit98: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit96, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ay

bb.au:                                            ; preds = %bb.an, %bb.am
  %.pn63.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.an ], [ %i.cd, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.al
  %.pn63.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn, %bb.au ], [ %.pn59.pn, %bb.al ]
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #29
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.z
  %.pn63.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn63.pn.pn.pn, %bb.av ], [ %i.bq, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  br label %bb.ba

bb.ax:                                            ; preds = %bb.v
  store i64 25, ptr %i.b, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 250, ptr %i.cr, align 8, !tbaa !67
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit98
  %i.cs = load ptr, ptr %5, align 8, !tbaa !229   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ct = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !231
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #31
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.cy = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.d
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit
  %i.da = load i64, ptr %i.d, align 8, !tbaa !61
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void

bb.ba:                                            ; preds = %bb.aw, %bb.u, %bb.n
  %.pn70.pn = phi { ptr, i32 } [ %.pn70, %bb.n ], [ %.pn63.pn.pn.pn.pn, %bb.aw ], [ %.pn, %bb.u ] ; 2 uses
  %i.dc = load ptr, ptr %5, align 8, !tbaa !229   ; 3 uses
  %.not.i.i.i99 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i99, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit100, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !231
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #31
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit100

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit100: ; preds = %bb.bb, %bb.ba, %bb.g
  %.pn70.pn.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %.pn70.pn, %bb.ba ], [ %.pn70.pn, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  %i.di = load ptr, ptr %4, align 8, !tbaa !54    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.d
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit100
  %i.dk = load i64, ptr %i.d, align 8, !tbaa !61
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  resume { ptr, i32 } %.pn70.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN9grpc_core12_GLOBAL__N_110ParseRouteERKNS_15XdsResourceType13DecodeContextEPK27envoy_config_route_v3_RouteRKSt8optionalINS_22XdsRouteConfigResource11RetryPolicyEERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_St4lessISK_ESaISt4pairIKSK_SK_EEEPSt3setISt17basic_string_viewIcSI_ESL_ISW_ESaISW_EEPNS_16ValidationErrorsE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %4, ptr noundef nonnull %5, ptr noundef nonnull %6) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.anon.390, align 1            ; 3 uses
  %8 = alloca %class.anon.577, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %9 = alloca %union.upb_MessageValue, align 8    ; 6 uses
  %10 = alloca %union.upb_MessageValue, align 8   ; 5 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %11 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %16 = alloca %"class.std::optional.207", align 8 ; 16 uses
  %17 = alloca %"class.std::optional.207", align 8 ; 14 uses
  %18 = alloca %"class.std::optional.207", align 8 ; 11 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %20 = alloca %"class.std::optional.559", align 8 ; 10 uses
  %21 = alloca %"class.grpc_core::RefCountedPtr.422", align 8 ; 7 uses
  %22 = alloca %class.anon.555, align 1           ; 3 uses
  %23 = alloca %class.anon.555, align 1           ; 3 uses
  %24 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %i.f = alloca i64, align 8                      ; 8 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %25 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %28 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %29 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %30 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %32 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 6 uses
  %33 = alloca %"class.grpc_core::StringMatcher", align 8 ; 9 uses
  %34 = alloca %"class.grpc_core::HeaderMatcher", align 8 ; 12 uses
  %35 = alloca %"class.grpc_core::StringMatcher", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %41 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %43 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %44 = alloca %"class.absl::lts_20250512::StatusOr.503", align 8 ; 8 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %47 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %48 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::strings_internal::MaxSplitsImpl<absl::lts_20250512::ByChar>, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %i.k = alloca i64, align 8                      ; 7 uses
  %49 = alloca %"struct.absl::lts_20250512::strings_internal::Splitter<absl::lts_20250512::strings_internal::MaxSplitsImpl<absl::lts_20250512::ByChar>, absl::lts_20250512::AllowEmpty, std::basic_string_view<char>>::ConvertToContainer", align 1 ; 3 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %51 = alloca %"class.std::vector.424", align 8  ; 9 uses
  %52 = alloca %"class.absl::lts_20250512::strings_internal::Splitter.489", align 8 ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %54 = alloca %"class.std::basic_string_view", align 8 ; 8 uses
  %55 = alloca %"class.std::vector.424", align 8  ; 12 uses
  %56 = alloca %"class.absl::lts_20250512::strings_internal::Splitter.489", align 8 ; 8 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %58 = alloca %"class.std::allocator.11", align 1 ; 4 uses
  %59 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %61 = alloca %"class.absl::lts_20250512::StatusOr.491", align 8 ; 11 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %63 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %64 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %65 = alloca %"struct.grpc_core::XdsRouteConfigResource::Route", align 8 ; 46 uses
  %66 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 10 uses
  %67 = alloca %"class.std::optional.430", align 8 ; 18 uses
  %68 = alloca %"class.grpc_core::ValidationErrors::ScopedField", align 8 ; 5 uses
  %69 = alloca %"class.std::optional.440", align 8 ; 16 uses
  %70 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
end_hunk_0
