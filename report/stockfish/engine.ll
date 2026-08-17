inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish6EngineC2ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %34 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %35 = alloca %"class.std::function.79", align 8 ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %38 = alloca %"class.std::function.79", align 8 ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %40 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %41 = alloca %"class.std::function.79", align 8 ; 5 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %43 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %44 = alloca %"class.std::function.79", align 8 ; 5 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %46 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %47 = alloca %"class.std::function.79", align 8 ; 5 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %49 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %50 = alloca %"class.std::function.79", align 8 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %52 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %53 = alloca %"class.std::function.79", align 8 ; 5 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %55 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %56 = alloca %"class.std::function.79", align 8 ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %58 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %59 = alloca %"class.std::function.79", align 8 ; 5 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %61 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %62 = alloca %"class.std::function.79", align 8 ; 7 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %64 = alloca %"class.Stockfish::Option", align 8 ; 12 uses
  %65 = alloca %"class.std::function.79", align 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !41, !range !44, !noundef !45
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %._crit_edge.i.i12

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.j, ptr %2, align 8, !tbaa !46
  %i.k = load ptr, ptr %1, align 8, !tbaa !49     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #28
  store i64 %i.m, ptr %i.f, align 8, !tbaa !25
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0) #28 ; 2 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !49
  %i.p = load i64, ptr %i.f, align 8, !tbaa !25
  store i64 %i.p, ptr %i.j, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.q = phi ptr [ %i.o, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge6
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !52
  store i8 %i.r, ptr %i.q, align 1, !tbaa !52
  br label %.critedge6

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %.critedge6

._crit_edge.i.i12:                                ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !46
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.t, align 8, !tbaa !51
  store i8 0, ptr %i.s, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.critedge6:                                       ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.u = load i64, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !51
  %i.w = load ptr, ptr %2, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28
  call void @_ZN9Stockfish11CommandLine20get_binary_directoryENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 %2) #28
  %i.y = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.j
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge6
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %._crit_edge.i.i12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN9Stockfish10NumaConfig11from_systemERKSt7variantIJNS_16SystemNumaPolicyENS_15L3DomainsPolicyENS_15BundledL3PolicyEEEb(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %3, ptr noundef nonnull align 8 dereferenceable(9) @_ZN9StockfishL17DefaultNumaPolicyE, i1 noundef zeroext true)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ae = load <2 x ptr>, ptr %3, align 16, !tbaa !53
  store <2 x ptr> %i.ae, ptr %i.ac, align 8, !tbaa !53
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !55
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %3, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.am = load i32, ptr %i.al, align 16, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.ai, ptr %i.as, align 8, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.au = load i64, ptr %i.at, align 16, !tbaa !36
  store ptr null, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.al, ptr %i.ao, align 16, !tbaa !34
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !35
  store i64 0, ptr %i.at, align 16, !tbaa !36
  br label %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.av, align 8, !tbaa !33
  br label %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit

_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit: ; preds = %bb.f, %bb.g
  %.sink419 = phi ptr [ %i.ai, %bb.g ], [ %i.ap, %bb.f ]
  %.sink418 = phi ptr [ %i.ai, %bb.g ], [ %i.ar, %bb.f ]
  %.sink = phi i64 [ 0, %bb.g ], [ %i.au, %bb.f ]
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.am, %bb.f ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sink419, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sink418, ptr %i.ax, align 8, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sink, ptr %i.ay, align 8, !tbaa !36
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !27
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.az, ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i64 9, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  store i32 0, ptr %i.bb, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.bc, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr %i.bb, ptr %i.bd, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 0, ptr %i.bf, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bg, ptr noundef null)
  %i.bh = load ptr, ptr %3, align 16, !tbaa !58   ; 3 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bh, %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i, ptr noundef %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bl, %i.bi
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 16, !tbaa !58
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i, %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit
  %i.bm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i ], [ %i.bh, %_ZN9Stockfish22NumaReplicationContextC2EONS_10NumaConfigE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i, label %_ZN9Stockfish10NumaConfigD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i
  %i.bn = load ptr, ptr %i.ag, align 16, !tbaa !55
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.bq) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit

_ZN9Stockfish10NumaConfigD2Ev.exit:               ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %66 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 0, ptr %i.br, align 8, !tbaa !61
  %67 = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.bs = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 11 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 8, ptr %i.bt, align 8, !tbaa !63
  %i.bu = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 2 uses
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !69
  %.06.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 3 uses
  %i.bv = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31 ; 7 uses
  store ptr %i.bv, ptr %.06.i.i.i.i.ptr, align 8, !tbaa !70
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  store ptr %.06.i.i.i.i.ptr, ptr %i.bx, align 8, !tbaa !71
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 384 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !73
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  store ptr %.06.i.i.i.i.ptr, ptr %i.cc, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  store ptr %i.bv, ptr %i.cd, align 8, !tbaa !72
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  store ptr %i.bz, ptr %i.ce, align 8, !tbaa !73
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 192
  store ptr %i.cf, ptr %i.cb, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bv, i8 0, i64 192, i1 false)
  store ptr %i.bs, ptr %67, align 8, !tbaa !76
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 20 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  store i32 0, ptr %i.ch, align 8, !tbaa !27
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store ptr null, ptr %i.ci, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store ptr %i.ch, ptr %i.cj, align 8, !tbaa !34
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store ptr %i.ch, ptr %i.ck, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cl, i8 0, i64 40, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, i8 0, i64 56, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store ptr null, ptr %i.cn, align 8, !tbaa !78
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i8 0, ptr %i.co, align 8, !tbaa !81
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1392
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.cq = call noalias noundef nonnull align 64 dereferenceable(137849344) ptr @_ZnwmSt11align_val_t(i64 noundef 137849344, i64 noundef 64) #31, !noalias !82 ; 21 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(20) %i.cr, ptr noundef nonnull align 8 dereferenceable(20) @.str.3, i64 20, i1 false), !noalias !82
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331092
  store i8 0, ptr %.sroa.4408.0..sroa_idx, align 4, !noalias !82
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331336
  store i64 20, ptr %.sroa.5410.0..sroa_idx, align 8, !noalias !82
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331344
  store i32 1701736270, ptr %.sroa.6411.0..sroa_idx, align 16, !noalias !82
  %.sroa.7412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331348
  store i8 0, ptr %.sroa.7412.0..sroa_idx, align 4, !noalias !82
  %.sroa.8414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331608
  store i64 4, ptr %.sroa.8414.0..sroa_idx, align 8, !noalias !82
  %.sroa.9415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331616
  store i8 0, ptr %.sroa.9415.0..sroa_idx, align 32, !noalias !82
  %.sroa.10417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331880
  store i64 0, ptr %.sroa.10417.0..sroa_idx, align 8, !noalias !82
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 137848512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(20) %i.cs, ptr noundef nonnull align 8 dereferenceable(20) @.str.5, i64 20, i1 false), !noalias !82
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137848532
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !82
  %.sroa.5404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137848776
  store i64 20, ptr %.sroa.5404.0..sroa_idx, align 8, !noalias !82
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137848784
  store i32 1701736270, ptr %.sroa.6.0..sroa_idx, align 16, !noalias !82
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137848788
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 4, !noalias !82
  %.sroa.8405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137849048
  store i64 4, ptr %.sroa.8405.0..sroa_idx, align 8, !noalias !82
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137849056
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 32, !noalias !82
  %.sroa.10406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cq, i64 137849320
  store i64 0, ptr %.sroa.10406.0..sroa_idx, align 8, !noalias !82
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331888
  store i32 0, ptr %i.ct, align 16, !tbaa !85, !noalias !82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 131331892
  store i8 0, ptr %i.cu, align 4, !tbaa !96, !noalias !82
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 137849328
  store i32 1, ptr %i.cv, align 16, !tbaa !97, !noalias !82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 137849332
  store i8 0, ptr %i.cw, align 4, !tbaa !106, !noalias !82
  store ptr %i.cq, ptr %4, align 8, !tbaa !107, !alias.scope !82
  call void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEC2ERNS_22NumaReplicationContextEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.cp, ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.cx = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i

_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i: ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.cx, i64 noundef 137849344, i64 noundef 64) #33
  br label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit, %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  store i32 0, ptr %i.cz, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store ptr null, ptr %i.da, align 8, !tbaa !33
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cy, i8 0, i64 160, i1 false)
  store ptr %i.cz, ptr %i.db, align 8, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store ptr %i.cz, ptr %i.dc, align 8, !tbaa !35
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store i64 0, ptr %i.dd, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.de, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 56, ptr %i.e, align 8, !tbaa !25
  %i.df = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #28 ; 3 uses
  store ptr %i.df, ptr %5, align 8, !tbaa !49
  %i.dg = load i64, ptr %i.e, align 8, !tbaa !25  ; 3 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.df, ptr noundef nonnull align 1 dereferenceable(56) @.str.6, i64 56, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dg
  store i8 0, ptr %i.di, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.dj = load ptr, ptr %67, align 8, !tbaa !76   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 48
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !109, !noalias !110 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !72, !noalias !110
  %i.do = icmp eq ptr %i.dl, %i.dn
  br i1 %i.do, label %bb.i, label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 72
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !71, !noalias !110
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !70
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 384
  br label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit

_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit: ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit, %bb.i
  %i.du = phi ptr [ %i.dt, %bb.i ], [ %i.dl, %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -192
  %i.dw = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %66, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false, ptr noundef nonnull %i.dv) #28 ; 0 uses
  %i.dx = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.de
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit
  %i.dz = load i64, ptr %i.de, align 8, !tbaa !52
  %i.ea = add i64 %i.dz, 1
  call void @_ZdlPvm(ptr noundef %i.dx, i64 noundef %i.ea) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.eb, ptr %6, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.eb, ptr noundef nonnull align 1 dereferenceable(14) @.str.7, i64 14, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.ec, align 8, !tbaa !51
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.ed, align 2, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.ee = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E9_M_invokeERKSt9_Any_dataSB_", ptr %i.ef, align 8, !tbaa !113
  store ptr @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.ee, align 8, !tbaa !116
  call void @_ZN9Stockfish6OptionC1EPKcSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 8 %8) #28
  call void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80) %i.cg, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(152) %7) #28
  %i.eg = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !116 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.ej = call noundef zeroext i1 %i.eh(ptr noundef nonnull align 8 dereferenceable(32) %i.ei, ptr noundef nonnull align 8 dereferenceable(32) %i.ei, i32 noundef 3) #28, !inline_history !117 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !49 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !52
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !49 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !52
end_hunk_0
