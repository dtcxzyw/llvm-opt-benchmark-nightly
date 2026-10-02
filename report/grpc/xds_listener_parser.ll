Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/xds_listener_parser?download=true
inline.NumInlined: 4722
inline.NumDeleted: 2564
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK9grpc_core23XdsListenerResourceType6DecodeERKNS_15XdsResourceType13DecodeContextESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  %i.nj = extractvalue { ptr, i32 } %i.ni, 0
  call void @__clang_call_terminate(ptr %i.nj) #31, !noalias !339
  unreachable

bb.dy:                                            ; preds = %bb.dw, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !340
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @google__protobuf__BoolValue_msg_init) #30, !noalias !339, !srcloc !64
  %i.nk = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 80
  %i.nl = load i64, ptr %i.nk, align 1, !noalias !340 ; 2 uses
  %i.nm = icmp eq i64 %i.nl, 0
  br i1 %i.nm, label %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.thread.i.i, label %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.i.i

_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.i.i: ; preds = %bb.dy
  %i.nn = inttoptr i64 %i.nl to ptr
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load i8, ptr %i.no, align 1, !noalias !339
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.dz, label %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.thread.i.i

bb.dz:                                            ; preds = %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #30, !noalias !340
  store ptr %21, ptr %25, align 8, !tbaa !90, !noalias !340
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %21, i64 16, ptr nonnull @.str.48)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit62.i.i unwind label %bb.ed, !noalias !339

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit62.i.i: ; preds = %bb.dz
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %21, i64 19, ptr nonnull @.str.49)
          to label %bb.ea unwind label %bb.ee, !noalias !339

bb.ea:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit62.i.i
  invoke void @_ZN9grpc_core16ValidationErrors8PopFieldEv(ptr noundef nonnull align 8 dereferenceable(80) %21)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit64.i.i unwind label %bb.eb, !noalias !339

bb.eb:                                            ; preds = %bb.ea
  %i.nr = landingpad { ptr, i32 }
          catch ptr null
  %i.ns = extractvalue { ptr, i32 } %i.nr, 0
  call void @__clang_call_terminate(ptr %i.ns) #31, !noalias !339
  unreachable

_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit64.i.i: ; preds = %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !340
  br label %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.thread.i.i

bb.ec:                                            ; preds = %.body.i12.i, %bb.ds
  %.pn.i11.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i12.i ], [ %i.mx, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30, !noalias !340
  br label %bb.kh

bb.ed:                                            ; preds = %bb.dz
  %i.nt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit62.i.i
  %i.nu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #30, !noalias !339
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn33.i.i = phi { ptr, i32 } [ %i.nu, %bb.ee ], [ %i.nt, %bb.ed ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #30, !noalias !340
  br label %bb.kh

_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.thread.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit64.i.i, %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.i.i, %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #30, !noalias !340
  store ptr %21, ptr %26, align 8, !tbaa !90, !noalias !340
  invoke void @_ZN9grpc_core16ValidationErrors9PushFieldESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %21, i64 13, ptr nonnull @.str.50)
          to label %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit66.i.i unwind label %bb.hi, !noalias !339

_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit66.i.i: ; preds = %_ZN9grpc_core14ParseBoolValueEPK25google_protobuf_BoolValueb.exit.thread.i.i
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @envoy__config__listener__v3__FilterChain_msg_init) #30, !noalias !339, !srcloc !64
  %i.nv = getelementptr inbounds nuw i8, ptr %.0.i11.i.i.i, i64 72
  %i.nw = load i64, ptr %i.nv, align 1, !noalias !340 ; 2 uses
  %.not.i67.i.i = icmp eq i64 %i.nw, 0
  br i1 %.not.i67.i.i, label %.thread.i.i, label %envoy_config_listener_v3_Listener_filter_chains.exit.i.i

.thread.i.i:                                      ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit66.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !340
  %i.nx = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.nx, i8 0, i64 16, i1 false), !noalias !340
  %i.ny = getelementptr inbounds nuw i8, ptr %27, i64 16
  br label %._crit_edge.i.i

envoy_config_listener_v3_Listener_filter_chains.exit.i.i: ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldC2EPS0_St17basic_string_viewIcSt11char_traitsIcEE.exit66.i.i
  %i.nz = inttoptr i64 %i.nw to ptr               ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !137, !noalias !339 ; 5 uses
  %i.oc = load i64, ptr %i.nz, align 8, !tbaa !138, !noalias !339
  %i.od = and i64 %i.oc, -8
  %i.oe = inttoptr i64 %i.od to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #30, !noalias !340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %27, i8 0, i64 24, i1 false), !noalias !340
  %i.of = icmp ugt i64 %i.ob, 50127021939428129
  br i1 %i.of, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %envoy_config_listener_v3_Listener_filter_chains.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #34
          to label %.noexc69.i.i unwind label %bb.hj, !noalias !339

.noexc69.i.i:                                     ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %envoy_config_listener_v3_Listener_filter_chains.exit.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  %.not313.i.i = icmp eq i64 %i.ob, 0
  br i1 %.not313.i.i, label %._crit_edge.i.i, label %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_111FilterChainESaIS2_EE11_M_allocateEm.exit.i.i.i

_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_111FilterChainESaIS2_EE11_M_allocateEm.exit.i.i.i: ; preds = %bb.eh
  %i.oh = mul nuw nsw i64 %i.ob, 184
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #36
          to label %.lr.ph.i.i unwind label %bb.hj, !noalias !339 ; 4 uses

.lr.ph.i.i:                                       ; preds = %_ZNSt12_Vector_baseIN9grpc_core12_GLOBAL__N_111FilterChainESaIS2_EE11_M_allocateEm.exit.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 5 uses
  store ptr %i.oi, ptr %27, align 8, !tbaa !141, !noalias !340
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !142, !noalias !340
  %i.ok = getelementptr inbounds nuw [184 x i8], ptr %i.oi, i64 %i.ob
  store ptr %i.ok, ptr %i.og, align 8, !tbaa !143, !noalias !340
  %i.ol = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.om = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 3 uses
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.op = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.oq = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.or = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %33, i64 184 ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 4 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %33, i64 32 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 4 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %33, i64 56 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %33, i64 64 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %33, i64 72
  %i.pa = getelementptr inbounds nuw i8, ptr %33, i64 80
  %i.pb = getelementptr inbounds nuw i8, ptr %33, i64 88 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %33, i64 104 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %33, i64 112 ; 4 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %33, i64 128 ; 10 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %33, i64 120 ; 6 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %33, i64 144 ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %33, i64 160 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %33, i64 168 ; 4 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %33, i64 176 ; 3 uses
  br label %bb.hk

._crit_edge.loopexit.i.i:                         ; preds = %_ZN9grpc_core16ValidationErrors11ScopedFieldD2Ev.exit93.i.i
  %.val54.pre.i.i = load ptr, ptr %i.oj, align 8, !tbaa !344, !noalias !340
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.eh, %.thread.i.i
  %.not177318.i.i = phi i1 [ false, %._crit_edge.loopexit.i.i ], [ true, %.thread.i.i ], [ true, %bb.eh ]
  %i.pk = phi ptr [ %i.og, %._crit_edge.loopexit.i.i ], [ %i.ny, %.thread.i.i ], [ %i.og, %bb.eh ]
  %.val54.i.i = phi ptr [ %.val54.pre.i.i, %._crit_edge.loopexit.i.i ], [ null, %.thread.i.i ], [ null, %bb.eh ] ; 2 uses
  %.lcssa167.i.i = phi ptr [ %i.anu, %._crit_edge.loopexit.i.i ], [ null, %.thread.i.i ], [ null, %bb.eh ] ; 3 uses
  store ptr %.lcssa167.i.i, ptr %27, align 8, !noalias !340
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #30, !noalias !340
  %i.pl = getelementptr inbounds nuw i8, ptr %27, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #30, !noalias !346
  %i.pm = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 12 uses
  store i32 0, ptr %i.pm, align 8, !tbaa !77, !noalias !346
  %i.pn = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  store ptr null, ptr %i.pn, align 8, !tbaa !78, !noalias !346
  %i.po = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 3 uses
  store ptr %i.pm, ptr %i.po, align 8, !tbaa !79, !noalias !346
  %i.pp = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  store ptr %i.pm, ptr %i.pp, align 8, !tbaa !80, !noalias !346
  %i.pq = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 6 uses
  store i64 0, ptr %i.pq, align 8, !tbaa !103, !noalias !346
  %.not1555.i.i.i = icmp eq ptr %.lcssa167.i.i, %.val54.i.i
  br i1 %.not1555.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %34, i8 0, i64 24, i1 false), !alias.scope !347, !noalias !340
  br label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i
  %i.pr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.px = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.py = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.pz = ptrtoint ptr %i.py to i64
  %i.qa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.qb = getelementptr inbounds nuw i8, ptr %14, i64 152 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %14, i64 160 ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %14, i64 168 ; 3 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %14, i64 176
  %i.qf = getelementptr inbounds nuw i8, ptr %14, i64 184 ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %14, i64 200 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %14, i64 208 ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %14, i64 216 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %14, i64 224
  %i.qk = getelementptr inbounds nuw i8, ptr %14, i64 232 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %14, i64 248 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %14, i64 256 ; 4 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %14, i64 264 ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %14, i64 272
  %i.qp = getelementptr inbounds nuw i8, ptr %14, i64 280 ; 3 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %14, i64 144
  %i.qt = getelementptr inbounds nuw i8, ptr %14, i64 240
  %i.qu = getelementptr inbounds nuw i8, ptr %14, i64 192
  %i.qv = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 5 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %5, i64 232 ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %5, i64 248 ; 5 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %5, i64 256 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %5, i64 264 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %5, i64 272 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %5, i64 280 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.rm = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.rn = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.ro = insertelement <2 x ptr> poison, ptr %i.qb, i64 0
  %i.rp = shufflevector <2 x ptr> %i.ro, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rq = insertelement <2 x ptr> poison, ptr %i.qg, i64 0
  %i.rr = shufflevector <2 x ptr> %i.rq, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.rs = insertelement <2 x ptr> poison, ptr %i.ql, i64 0
  %i.rt = shufflevector <2 x ptr> %i.rs, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %bb.fa

._crit_edge.i.i.i45:                              ; preds = %_ZN9grpc_core12_GLOBAL__N_139AddFilterChainDataForDestinationIpRangeERKNS0_11FilterChainEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22InternalFilterChainMap13DestinationIpESt4lessISA_ESaISt4pairIKSA_SC_EEEPNS_16ValidationErrorsE.exit.i.i.i
  %.val.i.pre.i.i.i = load ptr, ptr %i.po, align 8, !tbaa !79, !noalias !348 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %34, i8 0, i64 24, i1 false), !alias.scope !350, !noalias !340
  %.not45.i.i.i.i = icmp eq ptr %.val.i.pre.i.i.i, %i.pm
  br i1 %.not45.i.i.i.i, label %.loopexit.i.i, label %.lr.ph48.i.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %._crit_edge.i.i.i45
  %i.ru = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.rv = getelementptr inbounds nuw i8, ptr %15, i64 144 ; 6 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %15, i64 160
  %i.rz = getelementptr inbounds nuw i8, ptr %15, i64 168 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %15, i64 184
  %i.sb = getelementptr inbounds nuw i8, ptr %15, i64 192 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %15, i64 208
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap13DestinationIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i, %.lr.ph48.i.i.i.i
  %.sroa.036.046.i.i.i.i = phi ptr [ %.val.i.pre.i.i.i, %.lr.ph48.i.i.i.i ], [ %i.wb, %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap13DestinationIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %.sroa.036.046.i.i.i.i, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30, !noalias !348
  store i8 0, ptr %i.ru, align 8, !tbaa !145, !noalias !348
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.rv, i8 0, i64 72, i1 false), !noalias !348
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(140) %15, ptr noundef nonnull align 8 dereferenceable(140) %i.sd, i64 140, i1 false), !noalias !339
  %i.se = getelementptr inbounds nuw i8, ptr %.sroa.036.046.i.i.i.i, i64 208
  br label %bb.em

bb.ej:                                            ; preds = %._crit_edge.i.i.i.i
  %i.sf = load ptr, ptr %i.rw, align 8, !tbaa !148, !alias.scope !350, !noalias !340 ; 10 uses
  %i.sg = load ptr, ptr %i.rx, align 16, !tbaa !149, !alias.scope !350, !noalias !340
  %.not.i.i.i.i.i15.i = icmp eq ptr %i.sf, %i.sg
  br i1 %.not.i.i.i.i.i15.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.sf, ptr noundef nonnull align 8 dereferenceable(216) %15, i64 140, i1 false), !noalias !339
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 144
  %i.si = load <2 x ptr>, ptr %i.rv, align 8, !tbaa !151, !noalias !348
  store <2 x ptr> %i.si, ptr %i.sh, align 8, !tbaa !151, !noalias !339
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 160
  %i.sk = load ptr, ptr %i.ry, align 8, !tbaa !153, !noalias !348
  store ptr %i.sk, ptr %i.sj, align 8, !tbaa !153, !noalias !339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.rv, i8 0, i64 24, i1 false), !noalias !348
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sf, i64 168
  %i.sm = load <2 x ptr>, ptr %i.rz, align 8, !tbaa !151, !noalias !348
  store <2 x ptr> %i.sm, ptr %i.sl, align 8, !tbaa !151, !noalias !339
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sf, i64 184
  %i.so = load ptr, ptr %i.sa, align 8, !tbaa !153, !noalias !348
  store ptr %i.so, ptr %i.sn, align 8, !tbaa !153, !noalias !339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rz, i8 0, i64 24, i1 false), !noalias !348
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sf, i64 192
  %i.sq = load <2 x ptr>, ptr %i.sb, align 8, !tbaa !151, !noalias !348
  store <2 x ptr> %i.sq, ptr %i.sp, align 8, !tbaa !151, !noalias !339
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sf, i64 208
  %i.ss = load ptr, ptr %i.sc, align 8, !tbaa !153, !noalias !348
  store ptr %i.ss, ptr %i.sr, align 8, !tbaa !153, !noalias !339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sb, i8 0, i64 24, i1 false), !noalias !348
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 216
  store ptr %i.st, ptr %i.rw, align 8, !tbaa !148, !alias.scope !350, !noalias !340
  br label %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap13DestinationIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i

bb.el:                                            ; preds = %bb.ej
  invoke void @_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap13DestinationIpESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr %i.sf, ptr noundef nonnull align 8 dereferenceable(216) %15)
          to label %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap13DestinationIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i unwind label %bb.ex, !noalias !339

bb.em:                                            ; preds = %._crit_edge.i.i.i.i, %bb.ei
  %indvars.iv.i.i.i.i = phi i64 [ 0, %bb.ei ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.su = getelementptr inbounds nuw [48 x i8], ptr %i.se, i64 %indvars.iv.i.i.i.i ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !79, !noalias !339 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.su, i64 8 ; 2 uses
  %.not3741.i.i.i.i = icmp eq ptr %i.sw, %i.sx
  br i1 %.not3741.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.em
  %i.sy = getelementptr inbounds nuw [24 x i8], ptr %i.rv, i64 %indvars.iv.i.i.i.i ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 8 ; 4 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sy, i64 16 ; 3 uses
  %.pre.i.i.i.i = load ptr, ptr %i.sz, align 8, !tbaa !154, !noalias !348
  br label %bb.en

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i, %bb.em
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.i, label %bb.ej, label %bb.em, !llvm.loop !307

bb.en:                                            ; preds = %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.tb = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.vz, %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 13 uses
  %.sroa.032.042.i.i.i.i = phi ptr [ %i.sw, %.lr.ph.i.i.i.i ], [ %i.wa, %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i ] ; 12 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 64 ; 2 uses
  %i.td = load ptr, ptr %i.ta, align 8, !tbaa !153, !noalias !348
  %.not.i.i25.i.i.i.i = icmp eq ptr %i.tb, %i.td
  br i1 %.not.i.i25.i.i.i.i, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.tb, ptr noundef nonnull align 8 dereferenceable(192) %i.tc, i64 140, i1 false), !noalias !339
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 152 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 224 ; 2 uses
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !78, !noalias !339 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.tg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.th = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 216 ; 3 uses
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !77, !noalias !339
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 160
  store ptr %i.tg, ptr %i.tj, align 8, !tbaa !78, !noalias !339
  %i.tk = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 232 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 168
  %i.tm = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 240
  %i.tn = load <2 x ptr>, ptr %i.tk, align 8, !tbaa !155, !noalias !339
  store <2 x ptr> %i.tn, ptr %i.tl, align 8, !tbaa !155, !noalias !339
  %i.to = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  store ptr %i.te, ptr %i.to, align 8, !tbaa !102, !noalias !339
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 248 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !103, !noalias !339
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tb, i64 184
  store i64 %i.tq, ptr %i.tr, align 8, !tbaa !103, !noalias !339
  store ptr null, ptr %i.tf, align 8, !tbaa !78, !noalias !339
  store ptr %i.th, ptr %i.tk, align 8, !tbaa !79, !noalias !339
  store ptr %i.th, ptr %i.tm, align 8, !tbaa !80, !noalias !339
  store i64 0, ptr %i.tp, align 8, !tbaa !103, !noalias !339
  br label %_ZN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpC2EOS2_.exit.i.i.i.i.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tb, i64 160
  store ptr null, ptr %i.ts, align 8, !tbaa !78, !noalias !339
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tb, i64 168
  store ptr %i.te, ptr %i.tt, align 8, !tbaa !79, !noalias !339
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tb, i64 176
  store ptr %i.te, ptr %i.tu, align 8, !tbaa !80, !noalias !339
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tb, i64 184
  store i64 0, ptr %i.tv, align 8, !tbaa !103, !noalias !339
  br label %_ZN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpC2EOS2_.exit.i.i.i.i.i.i

_ZN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpC2EOS2_.exit.i.i.i.i.i.i: ; preds = %bb.eq, %bb.ep
  %.sink.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.eq ], [ %i.ti, %bb.ep ]
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i, ptr %i.te, align 8, !tbaa !77, !noalias !339
  %i.tw = load ptr, ptr %i.sz, align 8, !tbaa !154, !noalias !348
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 192 ; 2 uses
  store ptr %i.tx, ptr %i.sz, align 8, !tbaa !154, !noalias !348
  br label %_ZNSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE9push_backEOS3_.exit.i.i.i.i

bb.er:                                            ; preds = %bb.en
  %i.ty = load ptr, ptr %i.sy, align 8, !tbaa !156, !noalias !348 ; 5 uses
  %i.tz = ptrtoint ptr %i.tb to i64
  %i.ua = ptrtoint ptr %i.ty to i64               ; 2 uses
  %i.ub = sub i64 %i.tz, %i.ua                    ; 3 uses
  %i.uc = icmp eq i64 %i.ub, 9223372036854775680
  br i1 %i.uc, label %bb.es, label %_ZNKSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #34
          to label %.noexc30.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !339

.noexc30.i.i.i.i:                                 ; preds = %bb.es
  unreachable

_ZNKSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.er
  %i.ud = sdiv exact i64 %i.ub, 192               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ud, i64 1)
  %i.ue = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ud ; 2 uses
  %i.uf = icmp ult i64 %i.ue, %i.ud
  %i.ug = call i64 @llvm.umin.i64(i64 %i.ue, i64 48038396025285290)
  %i.uh = select i1 %i.uf, i64 48038396025285290, i64 %i.ug ; 3 uses
  %.not.i.i27.i.i.i.i = icmp ne i64 %i.uh, 0
  call void @llvm.assume(i1 %.not.i.i27.i.i.i.i)
  %i.ui = mul nuw nsw i64 %i.uh, 192
  %i.uj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ui) #36
          to label %.noexc31.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !339 ; 5 uses

.noexc31.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 %i.ub ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.uk, ptr noundef nonnull align 8 dereferenceable(192) %i.tc, i64 140, i1 false), !noalias !339
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 152 ; 4 uses
  %i.um = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 224 ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !78, !noalias !339 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i30.i = icmp eq ptr %i.un, null
  br i1 %.not.i.i.i.i.i.i.i.i.i30.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.noexc31.i.i.i.i
  %i.uo = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 216 ; 3 uses
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !77, !noalias !339
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 160
  store ptr %i.un, ptr %i.uq, align 8, !tbaa !78, !noalias !339
  %i.ur = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 232 ; 2 uses
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !79, !noalias !339
  %i.ut = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 240 ; 2 uses
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !80, !noalias !339
  %i.uv = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  store ptr %i.ul, ptr %i.uv, align 8, !tbaa !102, !noalias !339
  %i.uw = getelementptr inbounds nuw i8, ptr %.sroa.032.042.i.i.i.i, i64 248 ; 2 uses
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !103, !noalias !339
  store ptr null, ptr %i.um, align 8, !tbaa !78, !noalias !339
  store ptr %i.uo, ptr %i.ur, align 8, !tbaa !79, !noalias !339
  store ptr %i.uo, ptr %i.ut, align 8, !tbaa !80, !noalias !339
  store i64 0, ptr %i.uw, align 8, !tbaa !103, !noalias !339
end_hunk_0
begin_hunk_1_@_ZNK9grpc_core23XdsListenerResourceType6DecodeERKNS_15XdsResourceType13DecodeContextESt17basic_string_viewIcSt11char_traitsIcEE:bb.a

bb.fl:                                            ; preds = %bb.fj
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ws, i64 208
  %i.ys = getelementptr inbounds nuw i8, ptr %i.ws, i64 304
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ws, i64 320
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !78, !noalias !339
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ys, ptr noundef %i.yu)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i31.i.i.i unwind label %bb.fm, !noalias !339

bb.fm:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i32.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i31.i.i.i, %bb.fl
  %i.yv = landingpad { ptr, i32 }
          catch ptr null
  %i.yw = extractvalue { ptr, i32 } %i.yv, 0
  call void @__clang_call_terminate(ptr %i.yw) #31, !noalias !339
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i31.i.i.i: ; preds = %bb.fl
  %i.yx = getelementptr inbounds nuw i8, ptr %i.ws, i64 256
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ws, i64 272
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !78, !noalias !339
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.yx, ptr noundef %i.yz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i32.i.i.i unwind label %bb.fm, !noalias !339

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i32.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i31.i.i.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.ws, i64 224
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !78, !noalias !339
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(144) %i.yr, ptr noundef %i.zb)
          to label %_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i33.i.i.i unwind label %bb.fm, !noalias !339

_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i33.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i32.i.i.i
  %i.zc = load ptr, ptr %i.wt, align 8, !tbaa !61, !noalias !339 ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.wu
  br i1 %i.zd, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i35.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i: ; preds = %_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i33.i.i.i
  %i.ze = load i64, ptr %i.wu, align 8, !tbaa !62, !noalias !339
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zf) #35, !noalias !339
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i35.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i35.i.i.i: ; preds = %_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i33.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i34.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ws, i64 noundef 352) #35, !noalias !339
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit37.i.i.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit37.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i35.i.i.i, %.thread.i73.i.i
  %.sroa.03.0.i.i.i8.i.i.i = phi ptr [ %i.ws, %.thread.i73.i.i ], [ %i.yi, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit.i35.i.i.i ]
  %i.zg = load ptr, ptr %i.rh, align 8, !tbaa !78, !noalias !346
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.rm, ptr noundef %i.zg)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i unwind label %bb.fn, !noalias !339

bb.fn:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit37.i.i.i
  %i.zh = landingpad { ptr, i32 }
          catch ptr null
  %i.zi = extractvalue { ptr, i32 } %i.zh, 0
  call void @__clang_call_terminate(ptr %i.zi) #31, !noalias !339
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE10_Auto_nodeD2Ev.exit37.i.i.i
  %i.zj = load ptr, ptr %i.rc, align 8, !tbaa !78, !noalias !346
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %i.rn, ptr noundef %i.zj)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i unwind label %bb.fn, !noalias !339

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.i.i.i.i.i.i
  %i.zk = load ptr, ptr %i.qx, align 8, !tbaa !78, !noalias !346
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9grpc_core19XdsListenerResource14FilterChainMap8SourceIpEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(144) %i.rl, ptr noundef %i.zk)
          to label %_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i unwind label %bb.fn, !noalias !339

_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev.exit.i.i.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEED2Ev.exit.1.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !346
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i8.i.i.i, i64 64
  invoke fastcc void @_ZN9grpc_core12_GLOBAL__N_132AddFilterChainDataForServerNamesERKNS0_11FilterChainEPNS0_22InternalFilterChainMap13DestinationIpEPNS_16ValidationErrorsE(ptr noundef nonnull readonly align 8 dereferenceable(184) %.sroa.01.056.i.i.i, ptr noundef %i.zl, ptr noundef nonnull %21)
          to label %_ZN9grpc_core12_GLOBAL__N_139AddFilterChainDataForDestinationIpRangeERKNS0_11FilterChainEPSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_22InternalFilterChainMap13DestinationIpESt4lessISA_ESaISt4pairIKSA_SC_EEEPNS_16ValidationErrorsE.exit.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !339

bb.fo:                                            ; preds = %bb.fc
  %i.zm = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpD2Ev(ptr noundef nonnull align 8 dead_on_return(288) dereferenceable(288) %5) #30, !noalias !339
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !346
  br label %.body27.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.fb, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i
  %.sroa.077.084.i.i.i.i = phi ptr [ %i.ahd, %_ZN4absl12lts_2025051217internal_statusor12StatusOrDataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev.exit.i.i.i.i ], [ %i.wo, %bb.fb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30, !noalias !346
  invoke void @_Z23grpc_sockaddr_to_stringB5cxx11PK21grpc_resolved_addressb(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20250512::StatusOr.524") align 8 %6, ptr noundef nonnull %.sroa.077.084.i.i.i.i, i1 noundef zeroext false)
          to label %.noexc26.i.i.i unwind label %.loopexit.i.i.i, !noalias !339

.noexc26.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %i.zn = load i64, ptr %6, align 8, !tbaa !35, !noalias !346 ; 4 uses
  %i.zo = icmp eq i64 %i.zn, 1
  br i1 %i.zo, label %bb.fx, label %bb.fp

bb.fp:                                            ; preds = %.noexc26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !346
  store i64 59, ptr %8, align 8, !noalias !346
  store ptr @.str.84, ptr %i.pr, align 8, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !346
  %i.zp = trunc i64 %i.zn to i1
  br i1 %i.zp, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.zq = inttoptr i64 %i.zn to ptr               ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !61, !noalias !339
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zu = load i64, ptr %i.zt, align 8, !tbaa !63, !noalias !339
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.zv = and i64 %i.zn, 2
  %.not.i.i.i.i31.i = icmp eq i64 %i.zv, 0        ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i31.i, i64 0, i64 27
  %spec.select1.i.i.i.i.i = select i1 %.not.i.i.i.i31.i, ptr null, ptr @_ZN4absl12lts_202505126Status16kMovedFromStringE
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %.sroa.0.0.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i, %bb.fr ], [ %i.zu, %bb.fq ]
  %.sroa.4.0.i.i.i.i.i = phi ptr [ %spec.select1.i.i.i.i.i, %bb.fr ], [ %i.zs, %bb.fq ]
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %9, align 8, !tbaa !59, !noalias !346
  store ptr %.sroa.4.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !93, !noalias !346
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9)
          to label %bb.ft unwind label %bb.fv, !noalias !339

bb.ft:                                            ; preds = %bb.fs
  %i.zw = load ptr, ptr %7, align 8, !tbaa !61, !noalias !346
  %i.zx = load i64, ptr %i.ps, align 8, !tbaa !63, !noalias !346
  invoke void @_ZN9grpc_core16ValidationErrors8AddErrorESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(80) %21, i64 %i.zx, ptr %i.zw)
          to label %bb.fu unwind label %bb.fw, !noalias !339

bb.fu:                                            ; preds = %bb.ft
  %i.zy = load ptr, ptr %7, align 8, !tbaa !61, !noalias !346 ; 2 uses
  %i.zz = icmp eq ptr %i.zy, %i.pt
  br i1 %i.zz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.fu
  %i.aaa = load i64, ptr %i.pt, align 8, !tbaa !62, !noalias !346
  %i.aab = add i64 %i.aaa, 1
  call void @_ZdlPvm(ptr noundef %i.zy, i64 noundef %i.aab) #35, !noalias !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !346
  br label %bb.hc

bb.fv:                                            ; preds = %bb.fs
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i.i.i

bb.fw:                                            ; preds = %bb.ft
  %i.aad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aae = load ptr, ptr %7, align 8, !tbaa !61, !noalias !346 ; 2 uses
  %i.aaf = icmp eq ptr %i.aae, %i.pt
  br i1 %i.aaf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i.i: ; preds = %bb.fw
  %i.aag = load i64, ptr %i.pt, align 8, !tbaa !62, !noalias !346
  %i.aah = add i64 %i.aag, 1
  call void @_ZdlPvm(ptr noundef %i.aae, i64 noundef %i.aah) #35, !noalias !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.i.i.i.i: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i.i, %bb.fv
  %.pn.i15.i.i.i = phi { ptr, i32 } [ %i.aac, %bb.fv ], [ %i.aad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57.i.i.i.i ], [ %i.aad, %bb.fw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !346
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !346
  br label %bb.hh

bb.fx:                                            ; preds = %.noexc26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30, !noalias !346
  %i.aai = load ptr, ptr %i.pu, align 8, !tbaa !61, !noalias !346
  %i.aaj = load i64, ptr %i.pv, align 8, !tbaa !63, !noalias !346
  store i64 %i.aaj, ptr %11, align 8, !noalias !346
  store ptr %i.aai, ptr %i.pw, align 8, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #30, !noalias !346
  store i64 1, ptr %12, align 8, !noalias !346
  store ptr @.str.85, ptr %i.px, align 8, !noalias !346
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #30, !noalias !346
  %i.aak = getelementptr inbounds nuw i8, ptr %.sroa.077.084.i.i.i.i, i64 132
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !177, !noalias !339
  %i.aam = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.aal, ptr noundef nonnull %i.py)
          to label %bb.fy unwind label %bb.gz, !noalias !339

bb.fy:                                            ; preds = %bb.fx
  %i.aan = ptrtoint ptr %i.aam to i64
  %i.aao = sub i64 %i.aan, %i.pz
  store i64 %i.aao, ptr %13, align 8, !tbaa !179, !noalias !346
  store ptr %i.py, ptr %i.qa, align 8, !tbaa !180, !noalias !346
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(48) %13)
          to label %bb.fz unwind label %bb.gz, !noalias !339

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #30, !noalias !346
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %14, i8 0, i64 256, i1 false), !noalias !346
  store <2 x ptr> %i.rp, ptr %i.qd, align 8, !tbaa !155, !noalias !346
  store <2 x ptr> %i.rr, ptr %i.qi, align 8, !tbaa !155, !noalias !346
  store ptr null, ptr %i.qm, align 8, !tbaa !78, !noalias !346
  store <2 x ptr> %i.rt, ptr %i.qn, align 8, !tbaa !155, !noalias !346
  store i64 0, ptr %i.qp, align 8, !tbaa !103, !noalias !346
  %.val14.i.i.i.i.i = load ptr, ptr %10, align 8, !noalias !346 ; 2 uses
  %.val15.i.i.i.i.i = load i64, ptr %i.qq, align 8, !noalias !346 ; 4 uses
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.pn, align 8, !tbaa !78, !noalias !346 ; 2 uses
  %.not2.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not2.i.i.i.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i18.i.i.i

.lr.ph.i.i.i.i.i18.i.i.i:                         ; preds = %bb.fz, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i
  %.04.i.i.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i ], [ %.val.i.i.i.i.i.i.i, %bb.fz ] ; 6 uses
  %.083.i.i.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i ], [ %i.pm, %bb.fz ] ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i, i64 40
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !63, !noalias !339 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val15.i.i.i.i.i, i64 %i.aaq) ; 2 uses
  %i.aar = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aar, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i18.i.i.i
  %i.aas = getelementptr inbounds nuw i8, ptr %.04.i.i.i.i.i.i.i.i, i64 32
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !61, !noalias !339
  %i.aau = call i32 @memcmp(ptr noundef %i.aat, ptr noundef readonly %.val14.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i) #30, !noalias !339 ; 2 uses
  %.not.i.i.i.i.i.i.i.i19.i.i.i = icmp eq i32 %i.aau, 0
  br i1 %.not.i.i.i.i.i.i.i.i19.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i18.i.i.i
  %i.aav = sub i64 %i.aaq, %.val15.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.aav, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.aau, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i ]
  %i.aaw = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 0 ; 4 uses
  %.19.i.i.i.i.i.i.i.i = select i1 %i.aaw, ptr %.083.i.i.i.i.i.i.i.i, ptr %.04.i.i.i.i.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i.i.i.i.i = select i1 %i.aaw, i64 24, i64 16
  %.1.in.i.i.i.i.i.i.i.i = getelementptr i8, ptr %.04.i.i.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i.i.i
  %.1.i.i.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i.i.i, align 8, !tbaa !155, !noalias !339 ; 2 uses
  %.not.i.i.i.i63.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i63.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i18.i.i.i, !llvm.loop !312

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i62.i.i.i.i
  %i.aax = icmp eq ptr %.19.i.i.i.i.i.i.i.i, %i.pm
  br i1 %i.aax, label %.critedge.i.i.i.i.i, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aaw, ptr %.083.i.i.i.i.i.i.i.i, ptr %.04.i.i.i.i.i.i.i.i
  %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.aay = load i64, ptr %.19.i.i.i.i.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !63, !noalias !339 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.aay, i64 %.val15.i.i.i.i.i) ; 2 uses
  %i.aaz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.aaz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ga
  %.19.i.i.i.i.i.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aaw, ptr %.083.i.i.i.i.i.i.i.i, ptr %.04.i.i.i.i.i.i.i.i
  %.19.i.i.i.i.i.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.aba = load ptr, ptr %.19.i.i.i.i.i.sroa.sel4.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !61, !noalias !339
  %i.abb = call i32 @memcmp(ptr noundef %.val14.i.i.i.i.i, ptr noundef %i.aba, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #30, !noalias !339 ; 2 uses
  %.not.i.i.i21.i.i.i.i.i = icmp eq i32 %i.abb, 0
  br i1 %.not.i.i.i21.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.ga
  %i.abc = sub i64 %.val15.i.i.i.i.i, %i.aay
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.abc, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.abb, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.abd = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.abd, label %.critedge.i.i.i.i.i, label %bb.gw

.critedge.i.i.i.i.i:                              ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i, %bb.fz
  %i.abe = phi i1 [ false, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ true, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i ], [ true, %bb.fz ]
  %.08.lcssa.i.i.i39.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i.i ], [ %.19.i.i.i.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core12_GLOBAL__N_122InternalFilterChainMap13DestinationIpESt4lessIS5_ESaISt4pairIKS5_S9_EEE11lower_boundERSD_.exit.i.i.i.i.i ], [ %i.pm, %bb.fz ] ; 11 uses
  %i.abf = invoke noalias noundef nonnull dereferenceable(352) ptr @_Znwm(i64 noundef 352) #36
          to label %.noexc66.i.i.i.i unwind label %bb.ha, !noalias !339 ; 31 uses

.noexc66.i.i.i.i:                                 ; preds = %.critedge.i.i.i.i.i
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 32 ; 4 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 48 ; 5 uses
  store ptr %i.abh, ptr %i.abg, align 8, !tbaa !58, !noalias !339
  %i.abi = load ptr, ptr %10, align 8, !tbaa !61, !noalias !346 ; 2 uses
  %i.abj = icmp eq ptr %i.abi, %i.qr
  br i1 %i.abj, label %bb.gb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.gb:                                            ; preds = %.noexc66.i.i.i.i
  %i.abk = load i64, ptr %i.qq, align 8, !tbaa !63, !noalias !346 ; 3 uses
  %i.abl = icmp ult i64 %i.abk, 16
  call void @llvm.assume(i1 %i.abl)
  %i.abm = add nuw nsw i64 %i.abk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abh, ptr noundef nonnull align 8 dereferenceable(1) %i.qr, i64 %i.abm, i1 false), !noalias !339
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc66.i.i.i.i
  store ptr %i.abi, ptr %i.abg, align 8, !tbaa !61, !noalias !339
  %i.abn = load i64, ptr %i.qr, align 8, !tbaa !62, !noalias !346
  store i64 %i.abn, ptr %i.abh, align 8, !tbaa !62, !noalias !339
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.qq, align 8, !tbaa !63, !noalias !346
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.gb
  %i.abo = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.abk, %bb.gb ]
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abf, i64 40 ; 2 uses
  store i64 %i.abo, ptr %i.abp, align 8, !tbaa !63, !noalias !339
  store ptr %i.qr, ptr %10, align 8, !tbaa !61, !noalias !346
  store i64 0, ptr %i.qq, align 8, !tbaa !63, !noalias !346
  store i8 0, ptr %i.qr, align 8, !tbaa !62, !noalias !346
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abf, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.abq, ptr noundef nonnull align 8 dereferenceable(288) %14, i64 141, i1 false), !noalias !339
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abf, i64 216 ; 4 uses
  %i.abs = load ptr, ptr %i.qc, align 8, !tbaa !78, !noalias !346 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.abs, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.abt = load i32, ptr %i.qb, align 8, !tbaa !77, !noalias !346
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abf, i64 224
  store ptr %i.abs, ptr %i.abu, align 8, !tbaa !78, !noalias !339
  %i.abv = load ptr, ptr %i.qd, align 8, !tbaa !79, !noalias !346
  %i.abw = load ptr, ptr %i.qe, align 8, !tbaa !80, !noalias !346
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  store ptr %i.abr, ptr %i.abx, align 8, !tbaa !102, !noalias !339
  %i.aby = load i64, ptr %i.qf, align 8, !tbaa !103, !noalias !346
  store ptr null, ptr %i.qc, align 8, !tbaa !78, !noalias !346
  store <2 x ptr> %i.rp, ptr %i.qd, align 8, !tbaa !155, !noalias !346
  store i64 0, ptr %i.qf, align 8, !tbaa !103, !noalias !346
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abf, i64 224
  store ptr null, ptr %i.abz, align 8, !tbaa !78, !noalias !339
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gd, %bb.gc
  %.sink2.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abr, %bb.gd ], [ %i.abv, %bb.gc ]
  %.sink1.i.i.i.i.i.i.i.i.i = phi ptr [ %i.abr, %bb.gd ], [ %i.abw, %bb.gc ]
  %.sink.i.i.i.i.i.i20.i.i.i = phi i64 [ 0, %bb.gd ], [ %i.aby, %bb.gc ]
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.gd ], [ %i.abt, %bb.gc ]
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abf, i64 232
  store ptr %.sink2.i.i.i.i.i.i.i.i.i, ptr %i.aca, align 8, !tbaa !79, !noalias !339
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abf, i64 240
  store ptr %.sink1.i.i.i.i.i.i.i.i.i, ptr %i.acb, align 8, !tbaa !80, !noalias !339
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abf, i64 248
  store i64 %.sink.i.i.i.i.i.i20.i.i.i, ptr %i.acc, align 8, !tbaa !103, !noalias !339
  store i32 %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.abr, align 8, !tbaa !77, !noalias !339
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abf, i64 264 ; 4 uses
  %i.ace = load ptr, ptr %i.qh, align 8, !tbaa !78, !noalias !346 ; 3 uses
  %.not.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ace, null
  br i1 %.not.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acf = load i32, ptr %i.qg, align 8, !tbaa !77, !noalias !346
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abf, i64 272
  store ptr %i.ace, ptr %i.acg, align 8, !tbaa !78, !noalias !339
  %i.ach = load ptr, ptr %i.qi, align 8, !tbaa !79, !noalias !346
  %i.aci = load ptr, ptr %i.qj, align 8, !tbaa !80, !noalias !346
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  store ptr %i.acd, ptr %i.acj, align 8, !tbaa !102, !noalias !339
  %i.ack = load i64, ptr %i.qk, align 8, !tbaa !103, !noalias !346
  store ptr null, ptr %i.qh, align 8, !tbaa !78, !noalias !346
  store <2 x ptr> %i.rr, ptr %i.qi, align 8, !tbaa !155, !noalias !346
  store i64 0, ptr %i.qk, align 8, !tbaa !103, !noalias !346
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.gf:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abf, i64 272
  store ptr null, ptr %i.acl, align 8, !tbaa !78, !noalias !339
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gf, %bb.ge
  %.sink5.i.i.i.i.i.i21.i.i.i = phi ptr [ %i.acd, %bb.gf ], [ %i.ach, %bb.ge ]
  %.sink4.i.i.i.i.i.i.i.i.i = phi ptr [ %i.acd, %bb.gf ], [ %i.aci, %bb.ge ]
  %.sink3.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.gf ], [ %i.ack, %bb.ge ]
  %.sink.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %bb.gf ], [ %i.acf, %bb.ge ]
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abf, i64 280
  store ptr %.sink5.i.i.i.i.i.i21.i.i.i, ptr %i.acm, align 8, !tbaa !79, !noalias !339
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abf, i64 288
  store ptr %.sink4.i.i.i.i.i.i.i.i.i, ptr %i.acn, align 8, !tbaa !80, !noalias !339
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abf, i64 296
  store i64 %.sink3.i.i.i.i.i.i.i.i.i, ptr %i.aco, align 8, !tbaa !103, !noalias !339
  store i32 %.sink.i.i.i.i.1.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.acd, align 8, !tbaa !77, !noalias !339
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abf, i64 312 ; 4 uses
  %i.acq = load ptr, ptr %i.qm, align 8, !tbaa !78, !noalias !346 ; 3 uses
  %.not.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i.i.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9grpc_core19XdsListenerResource14FilterChainMap8SourceIpESt4lessIS5_ESaISt4pairIKS5_S9_EEEC2EOSG_.exit.1.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.acr = load i32, ptr %i.ql, align 8, !tbaa !77, !noalias !346
  %i.acs = getelementptr inbounds nuw i8, ptr %i.abf, i64 320
  store ptr %i.acq, ptr %i.acs, align 8, !tbaa !78, !noalias !339
  %i.act = load ptr, ptr %i.qn, align 8, !tbaa !79, !noalias !346
  %i.acu = load ptr, ptr %i.qo, align 8, !tbaa !80, !noalias !346
  %i.acv = getelementptr inbounds nuw i8, ptr %i.acq, i64 8
  store ptr %i.acp, ptr %i.acv, align 8, !tbaa !102, !noalias !339
  %i.acw = load i64, ptr %i.qp, align 8, !tbaa !103, !noalias !346
  store ptr null, ptr %i.qm, align 8, !tbaa !78, !noalias !346
  store <2 x ptr> %i.rt, ptr %i.qn, align 8, !tbaa !155, !noalias !346
  store i64 0, ptr %i.qp, align 8, !tbaa !103, !noalias !346
  br label %bb.gi
end_hunk_1
