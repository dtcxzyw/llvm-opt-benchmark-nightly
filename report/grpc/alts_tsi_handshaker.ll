Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/alts_tsi_handshaker?download=true
inline.NumInlined: 852
inline.NumDeleted: 379
begin_hunk_0_@_Z33alts_tsi_handshaker_result_createP23grpc_gcp_HandshakerRespbPP21tsi_handshaker_result:bb.a
  store i8 0, ptr %i.ce, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cf = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %13) #28 ; 0 uses
  %i.cg = load ptr, ptr %13, align 8, !tbaa !34   ; 2 uses
  %i.ch = icmp eq ptr %i.cg, %i.bu
  br i1 %i.ch, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ae
  %i.ci = load i64, ptr %i.bu, align 8, !tbaa !14
  %i.cj = add i64 %i.ci, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.cj) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSESt9nullopt_t.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  %i.ck = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  store ptr %i.ck, ptr %14, align 8, !tbaa !13
  %i.cl = icmp eq ptr %.sroa.010.0.copyload11.i164, null
  br i1 %i.cl, label %.noexc189, label %bb.ag

.noexc189:                                        ; preds = %bb.af
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.59) #33
  unreachable

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i64 %.sroa.9.0.copyload13.i166, ptr %i.b, align 8, !tbaa !35
  %i.cm = icmp ugt i64 %.sroa.9.0.copyload13.i166, 15
  br i1 %i.cm, label %._crit_edge.i.i187.thread, label %._crit_edge.i.i187

._crit_edge.i.i187.thread:                        ; preds = %bb.ag
  %i.cn = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.cn, ptr %14, align 8, !tbaa !34
  %i.co = load i64, ptr %i.b, align 8, !tbaa !35
  store i64 %i.co, ptr %i.ck, align 8, !tbaa !14
  br label %bb.ai

._crit_edge.i.i187:                               ; preds = %bb.ag
  %cond = icmp eq i64 %.sroa.9.0.copyload13.i166, 1
  br i1 %cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i187
  %i.cp = load i8, ptr %.sroa.010.0.copyload11.i164, align 1, !tbaa !14
  store i8 %i.cp, ptr %i.ck, align 8, !tbaa !14
  br label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i.i187.thread, %._crit_edge.i.i187
  %i.cq = phi ptr [ %i.cn, %._crit_edge.i.i187.thread ], [ %i.ck, %._crit_edge.i.i187 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cq, ptr nonnull align 1 %.sroa.010.0.copyload11.i164, i64 %.sroa.9.0.copyload13.i166, i1 false)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cr = load i64, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !36
  %i.ct = load ptr, ptr %14, align 8, !tbaa !34
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cr
  store i8 0, ptr %i.cu, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.cv = load ptr, ptr %i.av, align 8, !tbaa !34 ; 6 uses
  %i.cw = icmp eq ptr %i.cv, %i.aw
  %i.cx = load ptr, ptr %14, align 8, !tbaa !34   ; 5 uses
  %i.cy = icmp eq ptr %i.cx, %i.ck                ; 2 uses
  br i1 %i.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.aj
  br i1 %i.cy, label %bb.ak, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.aj
  br i1 %i.cy, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ak:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cz = load i64, ptr %i.cs, align 8, !tbaa !36 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 16
  call void @llvm.assume(i1 %i.da)
  switch i64 %i.cz, label %bb.am [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.al
  ]

bb.al:                                            ; preds = %bb.ak
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !14
  store i8 %i.db, ptr %i.cv, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cv, ptr align 1 %i.cx, i64 %i.cz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.dc = load i64, ptr %i.cs, align 8, !tbaa !36 ; 2 uses
  store i64 %i.dc, ptr %i.ax, align 16, !tbaa !36
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dc
  store i8 0, ptr %i.de, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %14, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.cx, ptr %i.av, align 8, !tbaa !34
  %i.df = load <2 x i64>, ptr %i.cs, align 8, !tbaa !14
  store <2 x i64> %i.df, ptr %i.ax, align 16, !tbaa !14
  br label %bb.ao

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dg = load i64, ptr %i.aw, align 8, !tbaa !14
  store ptr %i.cx, ptr %i.av, align 8, !tbaa !34
  %i.dh = load <2 x i64>, ptr %i.cs, align 8, !tbaa !14
  store <2 x i64> %i.dh, ptr %i.ax, align 16, !tbaa !14
  %.not.i = icmp eq ptr %i.cv, null
  br i1 %.not.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.cv, ptr %14, align 8, !tbaa !34
  store i64 %i.dg, ptr %i.ck, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.ao:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ck, ptr %14, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.an, %bb.ao
  %i.di = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.cv, %bb.an ], [ %i.ck, %bb.ao ]
  store i64 0, ptr %i.cs, align 8, !tbaa !36
  store i8 0, ptr %i.di, align 1, !tbaa !14
  %i.dj = load ptr, ptr %14, align 8, !tbaa !34   ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.ck
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.dl = load i64, ptr %i.ck, align 8, !tbaa !14
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i192
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  %i.dn = call ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global) ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.dp = invoke noundef zeroext i1 @_Z37grpc_gcp_rpc_protocol_versions_encodePK28grpc_gcp_RpcProtocolVersionsP9upb_ArenaP10grpc_slice(ptr noundef nonnull %i.ac, ptr noundef %i.dn, ptr noundef nonnull %i.do)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  br i1 %i.dp, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str, i32 noundef 382) #29
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %15, i64 49, ptr nonnull @.str.9)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit unwind label %bb.au

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit: ; preds = %bb.ar
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit197 unwind label %bb.au

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit197: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZN3upb5ArenaD2Ev.exit

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit194
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3upb5ArenaD2Ev.exit214

bb.at:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.au:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit, %bb.ar
  %i.ds = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.pn = phi { ptr, i32 } [ %i.ds, %bb.au ], [ %i.dr, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %_ZN3upb5ArenaD2Ev.exit214

bb.aw:                                            ; preds = %bb.ap
  %i.dt = invoke ptr @upb_Arena_Init(ptr noundef null, i64 noundef 0, ptr noundef nonnull @upb_alloc_global)
          to label %_ZN3upb5ArenaC2Ev.exit unwind label %bb.ax ; 8 uses

_ZN3upb5ArenaC2Ev.exit:                           ; preds = %bb.aw
  %i.du = load i16, ptr getelementptr inbounds nuw (i8, ptr @grpc__gcp__AltsContext_msg_init, i64 8), align 8, !tbaa !127
  %i.dv = zext i16 %i.du to i64                   ; 5 uses
  %i.dw = and i64 %i.dv, 7
  %i.dx = icmp eq i64 %i.dw, 0
  call void @llvm.assume(i1 %i.dx)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !39
  %i.ea = load ptr, ptr %i.dt, align 8, !tbaa !40 ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = icmp ult i64 %i.ed, %i.dv
  br i1 %i.ee, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !41

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %_ZN3upb5ArenaC2Ev.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dv
  store ptr %i.ef, ptr %i.dt, align 8, !tbaa !40
  br label %.noexc199.a

upb_Arena_Malloc.exit.i.i:                        ; preds = %_ZN3upb5ArenaC2Ev.exit
  %i.eg = invoke ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %i.dt, i64 noundef %i.dv)
          to label %.noexc199.a unwind label %bb.ay

.noexc199.a:                                      ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.sink = phi ptr [ %i.ea, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.eg, %upb_Arena_Malloc.exit.i.i ] ; 15 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink) ]
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %.sink, i8 0, i64 %i.dv, i1 false)
  %i.eh = getelementptr inbounds nuw i8, ptr %.sink, i64 16
  store ptr %.sroa.010.0.copyload11.i157, ptr %i.eh, align 1
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sink, i64 24
  store i64 %.sroa.9.0.copyload13.i159, ptr %.sroa.56.0..sroa_idx.i, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink, i64 32
  store ptr %.sroa.010.0.copyload11.i164, ptr %i.ei, align 1
  %.sroa.56.0..sroa_idx.i200 = getelementptr inbounds nuw i8, ptr %.sink, i64 40
  store i64 %.sroa.9.0.copyload13.i166, ptr %.sroa.56.0..sroa_idx.i200, align 1
  %i.ej = load i64, ptr %i.ax, align 16, !tbaa !36
  %i.ek = icmp eq i64 %i.ej, 15
  br i1 %i.ek, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread249

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.noexc199.a
  %i.el = load ptr, ptr %i.av, align 8, !tbaa !34 ; 2 uses
  %i.em = load i64, ptr %i.el, align 1
  %i.en = xor i64 %i.em, 5142917613995969601
  %i.eo = getelementptr i8, ptr %i.el, i64 7
  %i.ep = load i64, ptr %i.eo, align 1
  %i.eq = xor i64 %i.ep, 4049353300179504455
  %i.er = or i64 %i.en, %i.eq
  %i.es = icmp ne i64 %i.er, 0
  %i.et = zext i1 %i.es to i32
  %bcmp.i.fr = freeze i32 %i.et
  %i.eu = icmp eq i32 %bcmp.i.fr, 0
  %spec.select = select i1 %i.eu, i32 1, i32 2
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread249

bb.ax:                                            ; preds = %bb.aw
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3upb5ArenaD2Ev.exit214

bb.ay:                                            ; preds = %upb_Arena_Malloc.exit.i.i
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread249: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %.noexc199.a
  %i.ex = phi i32 [ 2, %.noexc199.a ], [ %spec.select, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sink, i64 12
  store i32 %i.ex, ptr %i.ey, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.sink, i64 48
  store ptr %.sroa.010.0.copyload11.i, ptr %i.ez, align 1
  %.sroa.56.0..sroa_idx.i201 = getelementptr inbounds nuw i8, ptr %.sink, i64 56
  store i64 %.sroa.9.0.copyload13.i, ptr %.sroa.56.0..sroa_idx.i201, align 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink, i64 64
  store ptr %.sroa.010.0.i171, ptr %i.fa, align 1
  %.sroa.56.0..sroa_idx.i202 = getelementptr inbounds nuw i8, ptr %.sink, i64 72
  store i64 %.sroa.9.0.i172, ptr %.sroa.56.0..sroa_idx.i202, align 1
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__gcp__RpcProtocolVersions_msg_init) #28, !srcloc !9
  %i.fb = getelementptr inbounds nuw i8, ptr %.sink, i64 8 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !14
  %i.fd = or i8 %i.fc, 1
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !14
  %i.fe = getelementptr inbounds nuw i8, ptr %.sink, i64 80
  store i64 %i.ab, ptr %i.fe, align 1
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__gcp__Identity__AttributesEntry_msg_init) #28, !srcloc !9
  %i.ff = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 4            ; 2 uses
  %i.fh = inttoptr i64 %i.fg to ptr               ; 3 uses
  %.not.i203 = icmp eq i64 %i.fg, 0
  br i1 %.not.i203, label %grpc_gcp_Identity_attributes_size.exit.thread, label %bb.az

bb.az:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread249
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 3
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !43, !range !32, !noundef !33
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !14
  %i.fn = zext i32 %i.fm to i64
  br label %grpc_gcp_Identity_attributes_size.exit

bb.bb:                                            ; preds = %bb.az
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fp = invoke i64 @upb_inttable_count(ptr noundef nonnull %i.fo)
          to label %grpc_gcp_Identity_attributes_size.exit unwind label %bb.bg

grpc_gcp_Identity_attributes_size.exit:           ; preds = %bb.ba, %bb.bb
  %i.fq = phi i64 [ %i.fp, %bb.bb ], [ %i.fn, %bb.ba ]
  %.not122 = icmp eq i64 %i.fq, 0
  br i1 %.not122, label %grpc_gcp_Identity_attributes_size.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %grpc_gcp_Identity_attributes_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i64 -1, ptr %i.d, align 8, !tbaa !35
  %.sroa.5221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bf, %bb.bc
  call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__gcp__Identity__AttributesEntry_msg_init) #28, !srcloc !9
  %i.fr = load i64, ptr %i.ff, align 4            ; 2 uses
  %.not.i205 = icmp eq i64 %i.fr, 0
  br i1 %.not.i205, label %grpc_gcp_Identity_attributes_next.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fs = inttoptr i64 %i.fr to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.ft = invoke zeroext i1 @upb_Map_Next(ptr noundef nonnull %i.fs, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %i.d)
          to label %.noexc206 unwind label %bb.bh

.noexc206:                                        ; preds = %bb.be
  br i1 %i.ft, label %bb.bf, label %grpc_gcp_Identity_attributes_next.exit

grpc_gcp_Identity_attributes_next.exit:           ; preds = %.noexc206
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %grpc_gcp_Identity_attributes_next.exit.thread

bb.bf:                                            ; preds = %.noexc206
  %.sroa.0220.0.copyload = load ptr, ptr %3, align 8
  %.sroa.5221.0.copyload = load i64, ptr %.sroa.5221.0..sroa_idx, align 8
  %.sroa.0219.0.copyload = load ptr, ptr %4, align 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.fu = invoke zeroext i1 @grpc_gcp_AltsContext_peer_attributes_set(ptr noundef nonnull %.sink, ptr %.sroa.0220.0.copyload, i64 %.sroa.5221.0.copyload, ptr %.sroa.0219.0.copyload, i64 %.sroa.5.0.copyload, ptr noundef nonnull %i.dt)
          to label %bb.bd unwind label %bb.bh, !llvm.loop !123 ; 0 uses

bb.bg:                                            ; preds = %bb.bb
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bh:                                            ; preds = %bb.be, %bb.bf
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.bv

grpc_gcp_Identity_attributes_next.exit.thread:    ; preds = %bb.bd, %grpc_gcp_Identity_attributes_next.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %grpc_gcp_Identity_attributes_size.exit.thread

grpc_gcp_Identity_attributes_size.exit.thread:    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread249, %grpc_gcp_Identity_attributes_next.exit.thread, %grpc_gcp_Identity_attributes_size.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.fx = invoke i32 @upb_Encode(ptr noundef nonnull %.sink, ptr noundef nonnull @grpc__gcp__AltsContext_msg_init, i32 noundef 0, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %grpc_gcp_Identity_attributes_size.exit.thread
  %i.fy = load ptr, ptr %i.a, align 8, !tbaa !44  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull @.str, i32 noundef 418) #29
          to label %bb.bk unwind label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %16, i64 40, ptr nonnull @.str.12)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit209 unwind label %bb.bn

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit209: ; preds = %bb.bk
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit211 unwind label %bb.bn

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit211: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit209
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.bs

bb.bl:                                            ; preds = %grpc_gcp_Identity_attributes_size.exit.thread
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.bm:                                            ; preds = %bb.bj
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bn:                                            ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi41EEERS2_RAT__Kc.exit209, %bb.bk
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #30
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.pn123 = phi { ptr, i32 } [ %i.gc, %bb.bn ], [ %i.gb, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.bu

bb.bp:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  %i.gd = load i64, ptr %i.e, align 8, !tbaa !35
  invoke void @grpc_slice_from_copied_buffer(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %17, ptr noundef nonnull %i.fy, i64 noundef %i.gd)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ge = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ge, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
end_hunk_0
begin_hunk_1_@_Z33alts_tsi_handshaker_result_createP23grpc_gcp_HandshakerRespbPP21tsi_handshaker_result:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold nounwind
declare void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare ptr @gpr_zalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEaSIS5_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS6_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES9_ISt6__and_IJSt9is_scalarIS5_ESA_IS5_NSt5decayISD_E4typeEEEEESt16is_constructibleIS5_JSD_EESt13is_assignableIRS5_SD_EEERS6_E4typeEOSD_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !32, !noundef !33
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !34     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = icmp eq ptr %i.d, %i.e
  %i.g = load ptr, ptr %1, align 8, !tbaa !34     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.b
  br i1 %i.i, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36   ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %.not21.i = icmp eq ptr %1, %0
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.d, !prof !41

bb.d:                                             ; preds = %bb.c
  switch i64 %i.k, label %bb.f [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load i8, ptr %i.g, align 1, !tbaa !14
  store i8 %i.m, ptr %i.d, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr align 1 %i.g, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %i.n = load i64, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !36
  %i.p = load ptr, ptr %0, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %0, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !36
  store i64 %i.t, ptr %i.r, align 8, !tbaa !36
  %i.u = load i64, ptr %i.h, align 8, !tbaa !14
  store i64 %i.u, ptr %i.e, align 8, !tbaa !14
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.v = load i64, ptr %i.e, align 8, !tbaa !14
  store ptr %i.g, ptr %0, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !36
  %i.z = load i64, ptr %i.h, align 8, !tbaa !14
  store i64 %i.z, ptr %i.e, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.d, ptr %1, align 8, !tbaa !34
  store i64 %i.v, ptr %i.h, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.h, ptr %1, align 8, !tbaa !34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.d, %bb.g ], [ %i.h, %bb.h ], [ %i.g, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !36
  store i8 0, ptr %i.aa, align 1, !tbaa !14
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !13
  %i.ad = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36 ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false)
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  store ptr %i.ad, ptr %0, align 8, !tbaa !34
  %i.ak = load i64, ptr %i.ae, align 8, !tbaa !14
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !14
  br label %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit

_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !36
  store ptr %i.ae, ptr %1, align 8, !tbaa !34
  store i64 0, ptr %i.al, align 8, !tbaa !36
  store i8 0, ptr %i.ae, align 8, !tbaa !14
  store i8 1, ptr %i.a, align 8, !tbaa !31
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt19_Optional_base_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14_Optional_baseIS5_Lb0ELb0EEE12_M_constructIJS5_EEEvDpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  ret ptr %0
}

declare noundef zeroext i1 @_Z37grpc_gcp_rpc_protocol_versions_encodePK28grpc_gcp_RpcProtocolVersionsP9upb_ArenaP10grpc_slice(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr zeroext i1 @grpc_gcp_AltsContext_peer_attributes_set(ptr noundef %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr noundef %5) local_unnamed_addr #8 comdat {
bb.a:
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @grpc__gcp__AltsContext__PeerAttributesEntry_msg_init) #28, !srcloc !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i64, ptr %i.a, align 1              ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i, label %_upb_Message_GetOrCreateMutableMap.exit

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i: ; preds = %bb.a
  %i.d = tail call ptr @_upb_Map_New(ptr noundef %5, i64 noundef 0, i64 noundef 0) ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.a, align 1
  br label %_upb_Message_GetOrCreateMutableMap.exit

_upb_Message_GetOrCreateMutableMap.exit:          ; preds = %bb.a, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %.0.i = phi ptr [ %i.c, %bb.a ], [ %i.d, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = load ptr, ptr %5, align 8, !tbaa !40     ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 16
  br i1 %i.l, label %upb_Arena_Malloc.exit.i.i, label %bb.b, !prof !41

upb_Arena_Malloc.exit.i.i:                        ; preds = %_upb_Message_GetOrCreateMutableMap.exit
  %i.m = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %5, i64 noundef 16) ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_upb_Map_Insert.exit, label %.thread19.i.i

.thread19.i.i:                                    ; preds = %upb_Arena_Malloc.exit.i.i
  store ptr %3, ptr %i.m, align 8, !tbaa !44
  %.sroa.310.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %4, ptr %.sroa.310.0..sroa_idx11, align 8, !tbaa !35
  %i.n = ptrtoint ptr %i.m to i64
  br label %bb.c

bb.b:                                             ; preds = %_upb_Message_GetOrCreateMutableMap.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.o, ptr %5, align 8, !tbaa !40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  store ptr %3, ptr %i.h, align 8, !tbaa !44
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %4, ptr %.sroa.310.0..sroa_idx, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread19.i.i
  %.sroa.0.i.0 = phi i64 [ %i.n, %.thread19.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.q = load i8, ptr %i.p, align 1, !tbaa !43, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 4 uses
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.t = tail call zeroext i1 @upb_strtable_remove2(ptr noundef nonnull %i.s, ptr noundef %1, i64 noundef %2, ptr noundef null) ; 0 uses
  %i.u = tail call zeroext i1 @upb_strtable_insert(ptr noundef nonnull %i.s, ptr noundef %1, i64 noundef %2, i64 %.sroa.0.i.0, ptr noundef nonnull %5)
  br i1 %i.u, label %bb.f, label %_upb_Map_Insert.exit

bb.e:                                             ; preds = %bb.c
  %i.v = tail call zeroext i1 @upb_inttable_remove(ptr noundef nonnull %i.s, i64 noundef 0, ptr noundef null) ; 0 uses
  %i.w = tail call zeroext i1 @upb_inttable_insert(ptr noundef nonnull %i.s, i64 noundef 0, i64 %.sroa.0.i.0, ptr noundef nonnull %5)
  br i1 %i.w, label %bb.f, label %_upb_Map_Insert.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  br label %_upb_Map_Insert.exit

_upb_Map_Insert.exit:                             ; preds = %upb_Arena_Malloc.exit.i.i, %bb.d, %bb.e, %bb.f
  %.3.i = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.d ], [ false, %upb_Arena_Malloc.exit.i.i ]
  ret i1 %.3.i
}

declare void @grpc_slice_from_copied_buffer(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z32alts_tsi_handshaker_has_shutdownP19alts_tsi_handshaker(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !59, !range !32, !noundef !33
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #34
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.b
  %i.f = trunc nuw i8 %i.c to i1
  ret i1 %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIPKvS4_EEPKcT_T0_S6_(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str, i32 noundef 702, ptr noundef nonnull %i.g) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.e

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.d
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #34
  unreachable
}

; Function Attrs: cold
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_Z26alts_tsi_handshaker_createPK29grpc_alts_credentials_optionsPKcS3_bP16grpc_pollset_setPP14tsi_handshakermSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, i64 noundef %6, ptr noundef align 8 %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.absl::lts_20250512::log_internal::LogMessage", align 8 ; 8 uses
  %9 = alloca %struct.grpc_slice, align 8         ; 5 uses
  %i.a = zext i1 %3 to i8
  %i.b = icmp eq ptr %2, null
  %i.c = icmp eq ptr %5, null
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp eq ptr %0, null
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %1, null                     ; 2 uses
  %or.cond5 = and i1 %i.e, %3
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str, i32 noundef 715) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %8, i64 49, ptr nonnull @.str.14)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit: ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.d

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.i

bb.d:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi50EEERS2_RAT__Kc.exit, %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051212log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %4, null                     ; 2 uses
  %i.h = zext i1 %i.g to i8
  %i.i = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #31 ; 11 uses
  %i.j = select i1 %i.g, ptr @_ZL27handshaker_vtable_dedicated, ptr @_ZL17handshaker_vtable
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.k, i8 0, i64 168, i1 false)
  store ptr %i.j, ptr %i.i, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @grpc_empty_slice(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %9)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @grpc_slice_from_static_string(ptr dead_on_unwind nonnull writable sret(%struct.grpc_slice) align 8 %9, ptr noundef nonnull %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 %i.a, ptr %i.m, align 8, !tbaa !60
  %i.n = call ptr @gpr_strdup(ptr noundef nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.n, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %4, ptr %i.p, align 8, !tbaa !62
  %i.q = call noundef ptr @_Z34grpc_alts_credentials_options_copyPK29grpc_alts_credentials_options(ptr noundef nonnull %0)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.q, ptr %i.r, align 8, !tbaa !63
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i8 %i.h, ptr %i.s, align 8, !tbaa !64
  %.not = icmp eq i64 %6, 0
  %i.t = select i1 %.not, i64 1048576, i64 %6
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 %i.t, ptr %i.u, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  call void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %7)
  store ptr %i.i, ptr %5, align 8, !tbaa !134
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit
  %.036 = phi i32 [ 2, %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit ], [ 0, %bb.h ]
  ret i32 %.036
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @grpc_empty_slice(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8) local_unnamed_addr #6

declare void @grpc_slice_from_static_string(ptr dead_on_unwind writable sret(%struct.grpc_slice) align 8, ptr noundef) local_unnamed_addr #6

declare ptr @gpr_strdup(ptr noundef) local_unnamed_addr #6

declare noundef ptr @_Z34grpc_alts_credentials_options_copyPK29grpc_alts_credentials_options(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z43alts_tsi_handshaker_result_set_unused_bytesP21tsi_handshaker_resultP10grpc_slicem(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !41

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 742, ptr noundef nonnull @.str.15) #29
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #34
  unreachable
end_hunk_1
