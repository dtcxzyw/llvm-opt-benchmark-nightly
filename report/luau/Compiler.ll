Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8CompilerD2Ev:bb.a
  br label %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameENS_7Compile6GlobalESt4hashIS1_ESt8equal_toIS1_EED2Ev.exit, %bb.ab
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !328 ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i28, label %_ZN4Luau12DenseHashMapIPNS_15AstExprFunctionENS_8Compiler8FunctionENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !329 ; 2 uses
  %.not.i.i.i.i29 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i.i29, label %_ZN4Luau6detail14DenseHashTableIPNS_15AstExprFunctionESt4pairIS3_NS_8Compiler8FunctionEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE7destroyEv.exit.i.i, label %.lr.ph.i.i.i.i30

.lr.ph.i.i.i.i30:                                 ; preds = %bb.ac, %_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i
  %.04.i.i.i.i31 = phi i64 [ %i.eb, %_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i ], [ 0, %bb.ac ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.dq, i64 %.04.i.i.i.i31 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i.i32 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i.i.i.i.i32, label %_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i30
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !227
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dv to i64
  %i.ea = sub i64 %i.dy, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.ea) #29
  br label %_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i

_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i:      ; preds = %bb.ad, %.lr.ph.i.i.i.i30
  %i.eb = add nuw i64 %.04.i.i.i.i31, 1           ; 2 uses
  %exitcond.not.i.i.i.i33 = icmp eq i64 %i.eb, %i.ds
  br i1 %exitcond.not.i.i.i.i33, label %_ZN4Luau6detail16ItemInterfaceMapIPNS_15AstExprFunctionENS_8Compiler8FunctionEE7destroyEPSt4pairIS3_S5_Em.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i30, !llvm.loop !5

_ZN4Luau6detail16ItemInterfaceMapIPNS_15AstExprFunctionENS_8Compiler8FunctionEE7destroyEPSt4pairIS3_S5_Em.exit.loopexit.i.i.i: ; preds = %_ZN4Luau8Compiler8FunctionD2Ev.exit.i.i.i.i
  %.pre.i.i.i34 = load ptr, ptr %i.dp, align 8, !tbaa !328
  br label %_ZN4Luau6detail14DenseHashTableIPNS_15AstExprFunctionESt4pairIS3_NS_8Compiler8FunctionEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE7destroyEv.exit.i.i

_ZN4Luau6detail14DenseHashTableIPNS_15AstExprFunctionESt4pairIS3_NS_8Compiler8FunctionEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE7destroyEv.exit.i.i: ; preds = %_ZN4Luau6detail16ItemInterfaceMapIPNS_15AstExprFunctionENS_8Compiler8FunctionEE7destroyEPSt4pairIS3_S5_Em.exit.loopexit.i.i.i, %bb.ac
  %i.ec = phi ptr [ %.pre.i.i.i34, %_ZN4Luau6detail16ItemInterfaceMapIPNS_15AstExprFunctionENS_8Compiler8FunctionEE7destroyEPSt4pairIS3_S5_Em.exit.loopexit.i.i.i ], [ %i.dq, %bb.ac ]
  tail call void @_ZdlPv(ptr noundef %i.ec) #30
  br label %_ZN4Luau12DenseHashMapIPNS_15AstExprFunctionENS_8Compiler8FunctionENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit

_ZN4Luau12DenseHashMapIPNS_15AstExprFunctionENS_8Compiler8FunctionENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit: ; preds = %_ZN4Luau12DenseHashMapIPNS_8AstLocalENS_8Compiler5LocalENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit, %_ZN4Luau6detail14DenseHashTableIPNS_15AstExprFunctionESt4pairIS3_NS_8Compiler8FunctionEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE7destroyEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau10AstVisitorD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau14compileOrThrowERNS_15BytecodeBuilderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_14CompileOptionsERKNS_12ParseOptionsE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(90) %3) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Luau::Allocator", align 8   ; 8 uses
  %5 = alloca %"class.Luau::AstNameTable", align 8 ; 8 uses
  %6 = alloca %"struct.Luau::ParseResult", align 8 ; 15 uses
  %7 = alloca %"struct.Luau::ParseOptions", align 8 ; 15 uses
  %8 = alloca %"class.std::vector.5", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  call void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  invoke void @_ZN4Luau12AstNameTableC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = load ptr, ptr %1, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !47
  %i.d = load i16, ptr %3, align 8
  store i16 %i.d, ptr %7, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 4 uses
  store i8 0, ptr %i.f, align 8, !tbaa !331
  %i.g = load i8, ptr %i.e, align 8, !tbaa !331, !range !86, !noundef !87
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, label %bb.j

_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, i8 0, i64 16, i1 false)
  %i.n = load <2 x i64>, ptr %i.m, align 8, !tbaa !41
  store <2 x i64> %i.n, ptr %i.l, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !332  ; 2 uses
  %.not.i.i.i21 = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i21, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.q = shl i64 %i.p, 4
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #32
          to label %.noexc22 unwind label %bb.s

.noexc22:                                         ; preds = %bb.c
  store ptr %i.r, ptr %i.i, align 8, !tbaa !241
  %i.s = load i64, ptr %i.o, align 8, !tbaa !332
  %.not13.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not13.i.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc22, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i ], [ 0, %.noexc22 ] ; 3 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !241
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.012.i.i.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !241
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.012.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false)
  %i.x = add nuw i64 %.012.i.i.i, 1               ; 3 uses
  store i64 %i.x, ptr %i.k, align 8, !tbaa !332
  %i.y = load i64, ptr %i.o, align 8, !tbaa !332
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %.lr.ph.i.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, !llvm.loop !6

_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i: ; preds = %.lr.ph.i.i.i, %.noexc22, %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !229 ; 2 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !228 ; 3 uses
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i.i.i, label %.noexc5.i, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i
  %i.ai = icmp ugt i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i, !prof !333

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #31
          to label %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !288 ; 2 uses
  %.pre28 = load ptr, ptr %i.ac, align 8, !tbaa !288
  %.pre29 = ptrtoint ptr %.pre28 to i64
  %.pre30 = ptrtoint ptr %.pre to i64
  br label %.noexc5.i

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i
  %.pre-phi31 = phi i64 [ %.pre30, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ag, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ]
  %.pre-phi = phi i64 [ %.pre29, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.af, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ]
  %i.ak = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ae, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ] ; 2 uses
  %i.al = phi ptr [ %i.aj, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ null, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ] ; 6 uses
  store ptr %i.al, ptr %i.aa, align 8, !tbaa !228
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !227
  %i.ap = sub i64 %.pre-phi, %.pre-phi31          ; 4 uses
  %i.aq = icmp sgt i64 %i.ap, 8
  br i1 %i.aq, label %bb.e, label %bb.f, !prof !334

bb.e:                                             ; preds = %.noexc5.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.al, ptr align 8 %i.ak, i64 %i.ap, i1 false)
  br label %.noexc

bb.f:                                             ; preds = %.noexc5.i
  %i.ar = icmp eq i64 %i.ap, 8
  br i1 %i.ar, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.ak, align 8, !tbaa !272
  store ptr %i.as, ptr %i.al, align 8, !tbaa !272
  br label %.noexc

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %i.i, align 8, !tbaa !241 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i6.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.au) #30
  br label %.body

.noexc:                                           ; preds = %bb.g, %bb.f, %bb.e
  %i.av = getelementptr inbounds i8, ptr %i.al, i64 %i.ap
  store ptr %i.av, ptr %i.am, align 8, !tbaa !229
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !40
  store i8 1, ptr %i.f, align 8, !tbaa !331
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bb = load i16, ptr %i.ba, align 8
  store i16 %i.bb, ptr %i.az, align 8
  invoke void @_ZN4Luau6Parser5parseEPKcmRNS_12AstNameTableERNS_9AllocatorENS_12ParseOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::ParseResult") align 8 %6, ptr noundef %i.a, i64 noundef %i.c, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 %7)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bd = load i8, ptr %i.f, align 8, !tbaa !331, !range !86, !noundef !87
  %i.be = trunc nuw i8 %i.bd to i1
  store i8 0, ptr %i.f, align 8, !tbaa !331
  br i1 %i.be, label %bb.l, label %_ZN4Luau12ParseOptionsD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !227
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #29
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bm = load ptr, ptr %i.bc, align 8, !tbaa !241 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau12ParseOptionsD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bm) #30
  br label %_ZN4Luau12ParseOptionsD2Ev.exit

_ZN4Luau12ParseOptionsD2Ev.exit:                  ; preds = %bb.k, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 4 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !335
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !335
  %i.br = icmp eq ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.w, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  %i.bs = call ptr @__cxa_allocate_exception(i64 64) #30 ; 3 uses
  invoke void @_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %bb.p unwind label %.thread

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4Luau11ParseErrorsC1ESt6vectorINS_10ParseErrorESaIS2_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.bs, ptr noundef nonnull align 8 %8)
          to label %bb.q unwind label %.thread26

.thread26:                                        ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN4Luau11ParseErrorsE, ptr nonnull @_ZN4Luau11ParseErrorsD2Ev) #28
          to label %bb.ag unwind label %bb.u

bb.r:                                             ; preds = %bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12AstNameTableD2Ev.exit20

bb.s:                                             ; preds = %bb.c
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.t:                                             ; preds = %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %7) #30
  br label %.body

.thread:                                          ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %8) #30
  br label %bb.ae

bb.v:                                             ; preds = %.thread26, %.thread
  %.pn25 = phi { ptr, i32 } [ %i.bx, %.thread ], [ %i.bt, %.thread26 ]
  call void @__cxa_free_exception(ptr %i.bs) #30
  br label %bb.ae

bb.w:                                             ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  invoke void @_ZN4Luau14compileOrThrowERNS_15BytecodeBuilderERKNS_11ParseResultERNS_12AstNameTableERKNS_14CompileOptionsE(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !336 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i, label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdlPv(ptr noundef nonnull %i.ca) #30
  br label %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i

_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i: ; preds = %bb.y, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !337 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !338
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cc to i64
  %i.ch = sub i64 %i.cf, %i.cg
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.ch) #29
  br label %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i:  ; preds = %bb.z, %_ZN4Luau12DenseHashMapIPNS_7AstNodeEPNS_7CstNodeENS_16DenseHashPointerESt8equal_toIS2_EED2Ev.exit.i
  %i.ci = load ptr, ptr %i.bn, align 8, !tbaa !339 ; 3 uses
  %i.cj = load ptr, ptr %i.bp, align 8, !tbaa !340 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cm, %.lr.ph.i.i.i.i ], [ %i.ci, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.ck = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !51
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %.05.i.i.i.i) #30, !inline_history !7
  %i.cm = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cm, %i.cj
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !8

_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.bn, align 8, !tbaa !339
  br label %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i
  %i.cn = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ci, %_ZNSt6vectorIN4Luau7CommentESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !341
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.cn to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cn, i64 noundef %i.cs) #29
  br label %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i: ; preds = %bb.aa, %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !342 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !343 ; 2 uses
  %.not4.i.i.i2.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not4.i.i.i2.i, label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i3.i

.lr.ph.i.i.i3.i:                                  ; preds = %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i
  %.05.i.i.i4.i = phi ptr [ %i.dd, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i ], [ %i.cu, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.05.i.i.i4.i, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !48 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i4.i, i64 40 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3.i
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !41
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #29
  br label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i4.i, i64 56 ; 2 uses
  %.not.i.i.i5.i = icmp eq ptr %i.dd, %i.cw
  br i1 %.not.i.i.i5.i, label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i3.i, !llvm.loop !9

_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i.i
  %.pr.i6.i = load ptr, ptr %i.ct, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i
  %i.de = phi ptr [ %.pr.i6.i, %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.cu, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i7.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i1.i7.i, label %_ZN4Luau11ParseResultD2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN4Luau11ParseResultD2Ev:bb.a
_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Luau10ParseErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !342  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !343  ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.ag, %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i ], [ %i.x, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 40 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i3
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !41
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 56 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ag, %i.z
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !9

_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau10HotCommentEEvPT_.exit.i.i.i
  %.pr.i6 = load ptr, ptr %i.w, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit
  %i.ah = phi ptr [ %.pr.i6, %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %_ZNSt6vectorIN4Luau10ParseErrorESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i7 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i1.i7, label %_ZNSt6vectorIN4Luau10HotCommentESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !344
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #29
  br label %_ZNSt6vectorIN4Luau10HotCommentESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau10HotCommentESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4Luau10HotCommentES1_EvT_S3_RSaIT0_E.exit.i, %bb.e
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4Luau9AllocatorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7compileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_14CompileOptionsERKNS_12ParseOptionsEPNS_15BytecodeEncoderE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(90) %3, ptr noundef %4) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.Luau::Allocator", align 8   ; 8 uses
  %6 = alloca %"class.Luau::AstNameTable", align 8 ; 8 uses
  %7 = alloca %"struct.Luau::ParseResult", align 8 ; 15 uses
  %8 = alloca %"struct.Luau::ParseOptions", align 8 ; 15 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.Luau::BytecodeBuilder", align 8 ; 9 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  call void @_ZN4Luau9AllocatorC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZN4Luau12AstNameTableC1ERNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.b = load ptr, ptr %1, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !47
  %i.e = load i16, ptr %3, align 8
  store i16 %i.e, ptr %8, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 4 uses
  store i8 0, ptr %i.g, align 8, !tbaa !331
  %i.h = load i8, ptr %i.f, align 8, !tbaa !331, !range !86, !noundef !87
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i, label %bb.j

_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.j, i8 0, i64 16, i1 false)
  %i.o = load <2 x i64>, ptr %i.n, align 8, !tbaa !41
  store <2 x i64> %i.o, ptr %i.m, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !332  ; 2 uses
  %.not.i.i.i41 = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i41, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.r = shl i64 %i.q, 4
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #32
          to label %.noexc43 unwind label %bb.t

.noexc43:                                         ; preds = %bb.c
  store ptr %i.s, ptr %i.j, align 8, !tbaa !241
  %i.t = load i64, ptr %i.p, align 8, !tbaa !332
  %.not13.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not13.i.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc43, %.lr.ph.i.i.i
  %.012.i.i.i = phi i64 [ %i.y, %.lr.ph.i.i.i ], [ 0, %.noexc43 ] ; 3 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !241
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.012.i.i.i
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !241
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.012.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.y = add nuw i64 %.012.i.i.i, 1               ; 3 uses
  store i64 %i.y, ptr %i.l, align 8, !tbaa !332
  %i.z = load i64, ptr %i.p, align 8, !tbaa !332
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i.i.i, label %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i, !llvm.loop !6

_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i: ; preds = %.lr.ph.i.i.i, %.noexc43, %_ZNSt22_Optional_payload_baseIN4Luau27FragmentParseResumeSettingsEE12_M_constructIJRKS1_EEEvDpOT_.exit.i.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !229 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !228 ; 3 uses
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i.i.i.i.i, label %.noexc5.i, label %bb.d

bb.d:                                             ; preds = %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i
  %i.aj = icmp ugt i64 %i.ai, 9223372036854775800
  br i1 %i.aj, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i, !prof !333

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc.i42 unwind label %bb.h

.noexc.i42:                                       ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #31
          to label %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge unwind label %bb.h

_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge: ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !288 ; 2 uses
  %.pre44 = load ptr, ptr %i.ad, align 8, !tbaa !288
  %.pre45 = ptrtoint ptr %.pre44 to i64
  %.pre46 = ptrtoint ptr %.pre to i64
  br label %.noexc5.i

.noexc5.i:                                        ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i
  %.pre-phi47 = phi i64 [ %.pre46, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ah, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ]
  %.pre-phi = phi i64 [ %.pre45, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.ag, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ]
  %i.al = phi ptr [ %.pre, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ %i.af, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ] ; 2 uses
  %i.am = phi ptr [ %i.ak, %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i..noexc5.i_crit_edge ], [ null, %_ZN4Luau12DenseHashMapINS_7AstNameEPNS_8AstLocalESt4hashIS1_ESt8equal_toIS1_EEC2ERKS8_.exit.i ] ; 6 uses
  store ptr %i.am, ptr %i.ab, align 8, !tbaa !228
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !229
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ai
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !227
  %i.aq = sub i64 %.pre-phi, %.pre-phi47          ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 8
  br i1 %i.ar, label %bb.e, label %bb.f, !prof !334

bb.e:                                             ; preds = %.noexc5.i
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr align 8 %i.al, i64 %i.aq, i1 false)
  br label %.noexc

bb.f:                                             ; preds = %.noexc5.i
  %i.as = icmp eq i64 %i.aq, 8
  br i1 %i.as, label %bb.g, label %.noexc

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !272
  store ptr %i.at, ptr %i.am, align 8, !tbaa !272
  br label %.noexc

bb.h:                                             ; preds = %_ZNSt15__new_allocatorIPN4Luau8AstLocalEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !241 ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i6.i, label %.body, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %i.av) #30
  br label %.body

.noexc:                                           ; preds = %bb.g, %bb.f, %bb.e
  %i.aw = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  store ptr %i.aw, ptr %i.an, align 8, !tbaa !229
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !40
  store i8 1, ptr %i.g, align 8, !tbaa !331
  br label %bb.j

bb.j:                                             ; preds = %.noexc, %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.bc = load i16, ptr %i.bb, align 8
  store i16 %i.bc, ptr %i.ba, align 8
  invoke void @_ZN4Luau6Parser5parseEPKcmRNS_12AstNameTableERNS_9AllocatorENS_12ParseOptionsE(ptr dead_on_unwind nonnull writable sret(%"struct.Luau::ParseResult") align 8 %7, ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 %8)
          to label %bb.k unwind label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.be = load i8, ptr %i.g, align 8, !tbaa !331, !range !86, !noundef !87
  %i.bf = trunc nuw i8 %i.be to i1
  store i8 0, ptr %i.g, align 8, !tbaa !331
  br i1 %i.bf, label %bb.l, label %_ZN4Luau12ParseOptionsD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !228 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !227
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bm) #29
  br label %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %i.bn = load ptr, ptr %i.bd, align 8, !tbaa !241 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN4Luau12ParseOptionsD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bn) #30
  br label %_ZN4Luau12ParseOptionsD2Ev.exit

_ZN4Luau12ParseOptionsD2Ev.exit:                  ; preds = %bb.k, %_ZNSt6vectorIPN4Luau8AstLocalESaIS2_EED2Ev.exit.i.i.i.i.i.i, %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !335 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !335
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.x, label %bb.o

bb.o:                                             ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.bt = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK4Luau10ParseError11getLocationEv(ptr noundef nonnull align 8 dereferenceable(56) %i.bp)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !352
  %i.bv = add i32 %i.bu, 1
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef ptr %i.by(ptr noundef nonnull align 8 dereferenceable(56) %i.bp) #30
  invoke void (ptr, ptr, ...) @_ZN4Luau6formatB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull @.str.122, i32 noundef %i.bv, ptr noundef %i.bz)
          to label %bb.q unwind label %bb.v

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4Luau15BytecodeBuilder8getErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.r unwind label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.ca = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !41
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.am

bb.s:                                             ; preds = %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4Luau12AstNameTableD2Ev.exit40

bb.t:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau12ParseOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(90) dereferenceable(90) %8) #30
  br label %.body

bb.v:                                             ; preds = %bb.p, %bb.o
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

bb.w:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %9, align 8, !tbaa !48    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cm = icmp eq ptr %i.ck, %i.cl
  br i1 %i.cm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.w
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !41
  %i.co = add i64 %i.cn, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.co) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28, %bb.v
  %.pn = phi { ptr, i32 } [ %i.ci, %bb.v ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28 ], [ %i.cj, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.as

bb.x:                                             ; preds = %_ZN4Luau12ParseOptionsD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN4Luau15BytecodeBuilderC1EPNS_15BytecodeEncoderE(ptr noundef nonnull align 8 dereferenceable(1048) %10, ptr noundef %4)
          to label %bb.y unwind label %bb.ad

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4Luau14compileOrThrowERNS_15BytecodeBuilderERKNS_11ParseResultERNS_12AstNameTableERKNS_14CompileOptionsE(ptr noundef nonnull align 8 dereferenceable(1048) %10, ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(96) %2)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %10, i64 912
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.cq, ptr %0, align 8, !tbaa !53
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !48 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 920
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !47 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.ct, ptr %i.a, align 8, !tbaa !54
  %i.cu = icmp ugt i64 %i.ct, 15
  br i1 %i.cu, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.z
  %i.cv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc31 unwind label %bb.ae  ; 2 uses

.noexc31:                                         ; preds = %.noexc.i
  store ptr %i.cv, ptr %0, align 8, !tbaa !48
  %i.cw = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !41
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc31, %bb.z
  %i.cx = phi ptr [ %i.cv, %.noexc31 ], [ %i.cq, %bb.z ] ; 2 uses
  switch i64 %i.ct, label %bb.ab [
    i64 1, label %bb.aa
    i64 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.cy = load i8, ptr %i.cr, align 1, !tbaa !41
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !41
  br label %bb.ac

bb.ab:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cx, ptr align 1 %i.cr, i64 %i.ct, i1 false)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i.i
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !47
  %i.db = load ptr, ptr %0, align 8, !tbaa !48
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cz
  store i8 0, ptr %i.dc, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  call void @_ZN4Luau15BytecodeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1048) dereferenceable(1048) %10) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.am

bb.ad:                                            ; preds = %bb.x
  %i.dd = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau12CompileErrorE
  br label %bb.af

bb.ae:                                            ; preds = %.noexc.i, %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4Luau12CompileErrorE
  call void @_ZN4Luau15BytecodeBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(1048) dereferenceable(1048) %10) #30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn20 = phi { ptr, i32 } [ %i.de, %bb.ae ], [ %i.dd, %bb.ad ] ; 3 uses
  %.1 = extractvalue { ptr, i32 } %.pn20, 1
end_hunk_1
begin_hunk_2_@_ZN4Luau8Compiler18compileLValueIndexEhPNS_7AstExprERNS0_8RegScopeE:bb.a

.thread:                                          ; preds = %bb.f, %bb.e, %bb.b, %bb.a, %bb.g, %bb.i
  store i32 5, ptr %0, align 8, !tbaa !503
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ao, i8 0, i64 20, i1 false)
  store i8 %2, ptr %i.ao, align 4, !tbaa !504
  %i.aq = tail call noundef i32 @_ZN4Luau8Compiler15getExprLocalRegEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %1, ptr noundef %3), !inline_history !486 ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  %i.as = trunc i32 %i.aq to i8
  br i1 %i.ar, label %bb.k, label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit

bb.k:                                             ; preds = %.thread
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 1532 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !220 ; 2 uses
  %i.av = add i32 %i.au, 1                        ; 3 uses
  %i.aw = icmp ugt i32 %i.av, 255
  br i1 %i.aw, label %bb.l, label %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void (ptr, ptr, ...) @_ZN4Luau12CompileError5raiseERKNS_8LocationEPKcz(ptr noundef nonnull align 4 dereferenceable(16) %i.ax, ptr noundef nonnull @.str.135, i32 noundef 1, i32 noundef 255) #28, !inline_history !486
  unreachable

_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i: ; preds = %bb.k
  store i32 %i.av, ptr %i.at, align 4, !tbaa !220
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1536 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !40
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.az, i32 %i.av)
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !221
  %i.bb = trunc i32 %i.au to i8                   ; 2 uses
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %1, ptr noundef %3, i8 noundef zeroext %i.bb, i1 noundef zeroext true), !inline_history !885
  br label %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit

_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit: ; preds = %.thread, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i
  %.1.i = phi i8 [ %i.bb, %_ZN4Luau8Compiler8allocRegEPNS_7AstNodeEj.exit.i ], [ %i.as, %.thread ]
  store i8 %.1.i, ptr %i.ap, align 2, !tbaa !567
  br label %bb.m

bb.m:                                             ; preds = %_ZN4Luau8Compiler15compileExprAutoEPNS_7AstExprERNS0_8RegScopeE.exit, %bb.j, %bb.h
  %.sink = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, ptr noundef nonnull align 4 dereferenceable(16) %i.bc, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau8Compiler22compileExprTempMultRetEPNS_7AstExprEh(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_11AstExprCallEE5valueE, align 4, !tbaa !40
  %i.d = icmp ne i32 %i.b, %i.c
  %.not33 = icmp eq ptr %1, null                  ; 2 uses
  %.not = or i1 %.not33, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !292
  %i.g = icmp sgt i32 %i.f, 1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN4Luau8Compiler13isExprMultRetEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1)
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i1 noundef zeroext true), !inline_history !19
  br label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.i = zext i8 %2 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !220  ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !220
  invoke void @_ZN4Luau8Compiler15compileExprCallEPNS_11AstExprCallEhhbb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i8 noundef zeroext 0, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.k, ptr %i.j, align 4, !tbaa !220
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  store i32 %i.k, ptr %i.j, align 4, !tbaa !220
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.m = load i32, ptr @_ZN4Luau7AstRttiINS_14AstExprVarargsEE5valueE, align 4, !tbaa !40
  %i.n = icmp ne i32 %i.b, %i.m
  %.not22.not = or i1 %.not33, %i.n
  br i1 %.not22.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = zext i8 %2 to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1532 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !220  ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !220
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !269
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.j, label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !270
  %i.x = add i32 %i.w, 1
  invoke void @_ZN4Luau15BytecodeBuilder12setDebugLineEi(ptr noundef nonnull align 8 dereferenceable(1048) %i.u, i32 noundef %i.x)
          to label %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit.i unwind label %bb.k

_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit.i: ; preds = %bb.j, %bb.i
  %i.y = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  invoke void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.y, i32 noundef 63, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 0)
          to label %_ZN4Luau8Compiler18compileExprVarargsEPNS_14AstExprVarargsEhhb.exit unwind label %bb.k

_ZN4Luau8Compiler18compileExprVarargsEPNS_14AstExprVarargsEhhb.exit: ; preds = %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit.i
  store i32 %i.q, ptr %i.p, align 4, !tbaa !220
  br label %bb.m

bb.k:                                             ; preds = %_ZN4Luau8Compiler12setDebugLineEPNS_7AstNodeE.exit.i, %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  store i32 %i.q, ptr %i.p, align 4, !tbaa !220
  br label %bb.n

bb.l:                                             ; preds = %bb.h
  tail call void @_ZN4Luau8Compiler11compileExprEPNS_7AstExprEhb(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef nonnull %1, i8 noundef zeroext %2, i1 noundef zeroext true), !inline_history !19
  br label %bb.m

bb.m:                                             ; preds = %_ZN4Luau8Compiler18compileExprVarargsEPNS_14AstExprVarargsEhhb.exit, %bb.l, %bb.f, %bb.d
  %.1 = phi i1 [ true, %bb.f ], [ false, %bb.d ], [ false, %bb.l ], [ true, %_ZN4Luau8Compiler18compileExprVarargsEPNS_14AstExprVarargsEhhb.exit ]
  ret i1 %.1

bb.n:                                             ; preds = %bb.k, %bb.g
  %.pn = phi { ptr, i32 } [ %i.l, %bb.g ], [ %i.z, %bb.k ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau19InsertionOrderedMapIiiED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !558  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !553 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !27

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !547
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !548
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !547  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !548
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEED2Ev.exit

_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !556    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEED2Ev.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !561
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #29
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit

_ZNSt6vectorISt4pairIiiESaIS1_EED2Ev.exit:        ; preds = %_ZNSt13unordered_mapIimSt4hashIiESt8equal_toIiESaISt4pairIKimEEED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !562  ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  %i.d = shl i64 %i.b, 1
  %spec.select = select i1 %i.c, i64 16, i64 %i.d ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !533  ; 2 uses
  %.not.i = icmp eq i64 %spec.select, 0
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl i64 %spec.select, 4
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #32 ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !533  ; 5 uses
  %xtraiter = and i64 %spec.select, 2             ; 2 uses
  %i.j = icmp ult i64 %spec.select, 4
  br i1 %i.j, label %.lr.ph.i.i.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %spec.select, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.new
  %.07.i.i = phi i64 [ 0, %.new ], [ %i.v, %.lr.ph.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  store ptr %i.i, ptr %i.k, align 8, !tbaa !533
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.i, ptr %i.n, align 8, !tbaa !533
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.i, ptr %i.q, align 8, !tbaa !533
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 0, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  store ptr %i.i, ptr %i.t, align 8, !tbaa !533
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.v = add nuw i64 %.07.i.i, 4                  ; 2 uses
  store i64 0, ptr %i.u, align 8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !887

_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa, %bb.b
  %.07.i.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.v, %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.07.i.i.epil = phi i64 [ %i.y, %.lr.ph.i.i.epil ], [ %.07.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.07.i.i.epil ; 2 uses
  store ptr %i.i, ptr %i.w, align 8, !tbaa !533
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = add nuw i64 %.07.i.i.epil, 1
  store i64 0, ptr %i.x, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, label %.lr.ph.i.i.epil, !llvm.loop !888

_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit: ; preds = %.lr.ph.i.i.epil, %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit.unr-lcssa
  %.pre = load i64, ptr %i.a, align 8, !tbaa !562
  br label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit

_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit: ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit, %bb.a
  %i.z = phi i64 [ %i.b, %bb.a ], [ %.pre, %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.h, %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit.loopexit ] ; 4 uses
  %.not = icmp eq i64 %i.z, 0
  %.pre32 = load ptr, ptr %0, align 8, !tbaa !890 ; 3 uses
  br i1 %.not, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  %i.aa = add i64 %spec.select, -1                ; 3 uses
  br label %bb.d

._crit_edge27:                                    ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EEC2ERS8_m.exit
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !890
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !54
  %.not.i11 = icmp eq ptr %.pre32, null
  br i1 %.not.i11, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge27.thread, %._crit_edge27
  tail call void @_ZdlPv(ptr noundef nonnull %.pre32) #30
  br label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit

_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EED2Ev.exit: ; preds = %._crit_edge27, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph26, %bb.f
  %.025 = phi i64 [ 0, %.lr.ph26 ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.pre32, i64 %.025 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !533 ; 6 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !533
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %.02131.i21 = and i64 %i.ai, %i.aa              ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i21 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !533 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.f
  br i1 %i.al, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.am = icmp eq ptr %i.ak, %i.ac
  br i1 %i.am, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

._crit_edge:                                      ; preds = %.lr.ph47, %bb.e
  %.lcssa = phi ptr [ %i.aj, %bb.e ], [ %i.aq, %.lr.ph47 ] ; 2 uses
  store ptr %i.ac, ptr %.lcssa, align 8, !tbaa !565
  br label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit

.lr.ph:                                           ; preds = %.lr.ph47
  %i.an = icmp eq ptr %i.ar, %i.ac
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i2246 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i2345 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i21, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i2246, 1                ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i2345
  %.not.i12 = icmp ule i64 %i.ao, %i.aa
  tail call void @llvm.assume(i1 %.not.i12)
  %.02131.i = and i64 %i.ap, %i.aa                ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !533 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.f
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.aj, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ] ; 2 uses
  store ptr %i.ac, ptr %i.at, align 8, !tbaa !565
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !40
  store i64 %i.aw, ptr %i.av, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %_ZN4Luau6detail14DenseHashTableIPNS_12AstExprTableESt4pairIS3_NS_7Compile10TableShapeEES4_IKS3_S6_ENS0_16ItemInterfaceMapIS3_S6_EENS_16DenseHashPointerESt8equal_toIS3_EE13insert_unsafeERS8_.exit, %bb.d
  %i.ax = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %i.z
  br i1 %exitcond.not, label %._crit_edge27.thread, label %bb.d, !llvm.loop !889

._crit_edge27.thread:                             ; preds = %bb.f
  store ptr %.sroa.0.0, ptr %0, align 8, !tbaa !890
  store i64 %spec.select, ptr %i.a, align 8, !tbaa !54
  br label %bb.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS4_10_Hash_nodeIS2_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !891
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !548
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !552
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #30 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !891
  invoke void @__cxa_rethrow() #28
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #33
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !548
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !547    ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !554  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !553
  store ptr %i.w, ptr %3, align 8, !tbaa !553
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !554
  store ptr %3, ptr %i.x, align 8, !tbaa !553
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !558
  store ptr %i.z, ptr %3, align 8, !tbaa !553
  store ptr %3, ptr %i.y, align 8, !tbaa !558
  %i.aa = load ptr, ptr %3, align 8, !tbaa !553   ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !548
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !40
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !554
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !554
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS4_10_Hash_nodeIS2_Lb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !552
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !552
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !333

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !893
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKimELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !333

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #28
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKimELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #31 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKimELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKimELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !558  ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !558
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !553 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !40
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !554  ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !558
  store ptr %i.p, ptr %.02530, align 8, !tbaa !553
  store ptr %.02530, ptr %i.g, align 8, !tbaa !558
  store ptr %i.g, ptr %i.n, align 8, !tbaa !554
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !553
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !554
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !553
  store ptr %i.s, ptr %.02530, align 8, !tbaa !553
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !554
  store ptr %.02530, ptr %i.t, align 8, !tbaa !553
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !892

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !547    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !548
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #29
  br label %_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiSt4pairIKimESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !548
end_hunk_2
