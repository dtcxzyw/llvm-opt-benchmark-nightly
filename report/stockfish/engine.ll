Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/engine?download=true
inline.NumInlined: 3406
inline.NumDeleted: 1747
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN9Stockfish6EngineC2ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
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
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1184
  store i64 0, ptr %i.bs, align 8, !tbaa !61
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.bu = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #31 ; 12 uses
  %66 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %66, i8 0, i64 64, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store i64 8, ptr %i.bv, align 8, !tbaa !63
  %i.bw = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #31 ; 2 uses
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !69
  %67 = load i64, ptr %i.bv, align 8, !tbaa !63
  %68 = add i64 %67, -1
  %69 = lshr i64 %68, 1
  %70 = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %69 ; 3 uses
  %i.bx = call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31 ; 7 uses
  store ptr %i.bx, ptr %70, align 8, !tbaa !70
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store ptr %70, ptr %i.bz, align 8, !tbaa !71
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store ptr %i.bx, ptr %i.ca, align 8, !tbaa !72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 384 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !73
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 72
  store ptr %70, ptr %i.ce, align 8, !tbaa !71
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  store ptr %i.bx, ptr %i.cf, align 8, !tbaa !72
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store ptr %i.cb, ptr %i.cg, align 8, !tbaa !73
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !74
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 192
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !75
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.bx, i8 0, i64 192, i1 false)
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !76
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 20 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 3 uses
  store i32 0, ptr %i.cj, align 8, !tbaa !27
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1240
  store ptr null, ptr %i.ck, align 8, !tbaa !33
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1248
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1256
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cn, i8 0, i64 40, i1 false)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i8 0, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1376
  store ptr null, ptr %i.cp, align 8, !tbaa !78
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i8 0, ptr %i.cq, align 8, !tbaa !81
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1392
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.cs = call noalias noundef nonnull align 64 dereferenceable(137849344) ptr @_ZnwmSt11align_val_t(i64 noundef 137849344, i64 noundef 64) #31, !noalias !82 ; 21 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(20) %i.ct, ptr noundef nonnull align 8 dereferenceable(20) @.str.3, i64 20, i1 false), !noalias !82
  %.sroa.4408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331092
  store i8 0, ptr %.sroa.4408.0..sroa_idx, align 4, !noalias !82
  %.sroa.5410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331336
  store i64 20, ptr %.sroa.5410.0..sroa_idx, align 8, !noalias !82
  %.sroa.6411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331344
  store i32 1701736270, ptr %.sroa.6411.0..sroa_idx, align 16, !noalias !82
  %.sroa.7412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331348
  store i8 0, ptr %.sroa.7412.0..sroa_idx, align 4, !noalias !82
  %.sroa.8414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331608
  store i64 4, ptr %.sroa.8414.0..sroa_idx, align 8, !noalias !82
  %.sroa.9415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331616
  store i8 0, ptr %.sroa.9415.0..sroa_idx, align 32, !noalias !82
  %.sroa.10417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331880
  store i64 0, ptr %.sroa.10417.0..sroa_idx, align 8, !noalias !82
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 137848512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(20) %i.cu, ptr noundef nonnull align 8 dereferenceable(20) @.str.5, i64 20, i1 false), !noalias !82
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137848532
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 4, !noalias !82
  %.sroa.5404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137848776
  store i64 20, ptr %.sroa.5404.0..sroa_idx, align 8, !noalias !82
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137848784
  store i32 1701736270, ptr %.sroa.6.0..sroa_idx, align 16, !noalias !82
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137848788
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 4, !noalias !82
  %.sroa.8405.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137849048
  store i64 4, ptr %.sroa.8405.0..sroa_idx, align 8, !noalias !82
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137849056
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 32, !noalias !82
  %.sroa.10406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137849320
  store i64 0, ptr %.sroa.10406.0..sroa_idx, align 8, !noalias !82
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331888
  store i32 0, ptr %i.cv, align 16, !tbaa !85, !noalias !82
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 131331892
  store i8 0, ptr %i.cw, align 4, !tbaa !96, !noalias !82
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 137849328
  store i32 1, ptr %i.cx, align 16, !tbaa !97, !noalias !82
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 137849332
  store i8 0, ptr %i.cy, align 4, !tbaa !106, !noalias !82
  store ptr %i.cs, ptr %4, align 8, !tbaa !107, !alias.scope !82
  call void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEEC2ERNS_22NumaReplicationContextEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.cr, ptr noundef nonnull align 8 dereferenceable(136) %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.cz = load ptr, ptr %4, align 8, !tbaa !107   ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i

_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i: ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit
  call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %i.cz, i64 noundef 137849344, i64 noundef 64) #33
  br label %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit, %_ZNKSt14default_deleteIN9Stockfish4Eval4NNUE8NetworksEEclEPS3_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1640 ; 3 uses
  store i32 0, ptr %i.db, align 8, !tbaa !27
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1648
  store ptr null, ptr %i.dc, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1656
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.da, i8 0, i64 160, i1 false)
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1664
  store ptr %i.db, ptr %i.de, align 8, !tbaa !35
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store i64 0, ptr %i.df, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.dg, ptr %5, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i64 56, ptr %i.e, align 8, !tbaa !25
  %i.dh = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0) #28 ; 3 uses
  store ptr %i.dh, ptr %5, align 8, !tbaa !49
  %i.di = load i64, ptr %i.e, align 8, !tbaa !25  ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.dh, ptr noundef nonnull align 1 dereferenceable(56) @.str.6, i64 56, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.di, ptr %i.dj, align 8, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  store i8 0, ptr %i.dk, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.dl = load ptr, ptr %i.bt, align 8, !tbaa !76 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !109, !noalias !110 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !72, !noalias !110
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.i, label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71, !noalias !110
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !70
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 384
  br label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit

_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit: ; preds = %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit, %bb.i
  %i.dw = phi ptr [ %i.dv, %bb.i ], [ %i.dn, %_ZNSt10unique_ptrIN9Stockfish4Eval4NNUE8NetworksESt14default_deleteIS3_EED2Ev.exit ]
  %i.dx = getelementptr inbounds i8, ptr %i.dw, i64 -192
  %i.dy = call noundef nonnull align 8 dereferenceable(1048) ptr @_ZN9Stockfish8Position3setERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbPNS_9StateInfoE(ptr noundef nonnull align 8 dereferenceable(1048) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %5, i1 noundef zeroext false, ptr noundef nonnull %i.dx) #28 ; 0 uses
  %i.dz = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dg
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit
  %i.eb = load i64, ptr %i.dg, align 8, !tbaa !52
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE4backEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.ed, ptr %6, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ed, ptr noundef nonnull align 1 dereferenceable(14) @.str.7, i64 14, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 14, ptr %i.ee, align 8, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.ef, align 2, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.eg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 16, i1 false)
  store ptr @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E9_M_invokeERKSt9_Any_dataSB_", ptr %i.eh, align 8, !tbaa !113
  store ptr @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_0E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation", ptr %i.eg, align 8, !tbaa !116
  call void @_ZN9Stockfish6OptionC1EPKcSt8functionIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKS0_EE(ptr noundef nonnull align 8 dereferenceable(152) %7, ptr noundef nonnull @.str, ptr noundef nonnull align 8 %8) #28
  call void @_ZN9Stockfish10OptionsMap3addERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(80) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(152) %7) #28
  %i.ei = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !116 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ej, null
  br i1 %.not.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %i.el = call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i32 noundef 3) #28, !inline_history !117 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !52
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !49 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !52
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ey = load ptr, ptr %7, align 8, !tbaa !49    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fa = icmp eq ptr %i.ey, %i.ez
  br i1 %i.fa, label %_ZN9Stockfish6OptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
end_hunk_0
begin_hunk_1_@_ZN9Stockfish6Engine27set_numa_config_from_optionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i37: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i35, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit30
  %i.fr = phi ptr [ %.pr.i.i36, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i35 ], [ %i.fm, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit30 ] ; 3 uses
  %.not.i.i1.i.i38 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i1.i.i38, label %_ZN9Stockfish10NumaConfigD2Ev.exit39, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i37
  %i.fs = load ptr, ptr %i.eg, align 16, !tbaa !55
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = ptrtoint ptr %i.fr to i64
  %i.fv = sub i64 %i.ft, %i.fu
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fv) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit39

_ZN9Stockfish10NumaConfigD2Ev.exit39:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i37, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.n

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread85: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN9Stockfish10NumaConfig11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.Stockfish::NumaConfig") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !58 ; 5 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !59 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !55
  %i.gc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gd = load <2 x ptr>, ptr %5, align 16, !tbaa !53
  store <2 x ptr> %i.gd, ptr %i.fw, align 8, !tbaa !53
  %i.ge = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 16, !tbaa !55
  store ptr %i.gf, ptr %i.ga, align 8, !tbaa !55
  %.not4.i.i.i.i.i.i73 = icmp eq ptr %i.fx, %i.fz
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(81) %5, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i73, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i77, label %.lr.ph.i.i.i.i.i.i74

.lr.ph.i.i.i.i.i.i74:                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread85, %.lr.ph.i.i.i.i.i.i74
  %.05.i.i.i.i.i.i75 = phi ptr [ %i.gi, %.lr.ph.i.i.i.i.i.i74 ], [ %i.fx, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread85 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i75, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i.i.i75, ptr noundef %i.gh)
  %i.gi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i75, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i76 = icmp eq ptr %i.gi, %i.fz
  br i1 %.not.i.i.i.i.i.i76, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i77, label %.lr.ph.i.i.i.i.i.i74, !llvm.loop !60

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i77: ; preds = %.lr.ph.i.i.i.i.i.i74, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit25.thread85
  %.not.i.i1.i.i.i.i78 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i1.i.i.i.i78, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i79, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i77
  %i.gj = ptrtoint ptr %i.gb to i64
  %i.gk = ptrtoint ptr %i.fx to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.gl) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i79

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i79: ; preds = %bb.k, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i.i.i77
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.gm, ptr noundef %i.go)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  store ptr null, ptr %i.gn, align 8, !tbaa !33
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.gp, ptr %i.gq, align 8, !tbaa !34
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !35
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store i64 0, ptr %i.gs, align 8, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.gu, null
  br i1 %.not.i.i.i.i80, label %_ZN9Stockfish10NumaConfigaSEOS0_.exit81, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i79
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.gw = load i32, ptr %i.gv, align 16, !tbaa !27
  store i32 %i.gw, ptr %i.gp, align 8, !tbaa !27
  store ptr %i.gu, ptr %i.gn, align 8, !tbaa !33
  %i.gx = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.gz = load <2 x ptr>, ptr %i.gx, align 16, !tbaa !37
  store <2 x ptr> %i.gz, ptr %i.gq, align 8, !tbaa !37
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.gp, ptr %i.ha, align 8, !tbaa !57
  %i.hb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 16, !tbaa !36
  store i64 %i.hc, ptr %i.gs, align 8, !tbaa !36
  store ptr null, ptr %i.gt, align 8, !tbaa !33
  store ptr %i.gv, ptr %i.gx, align 16, !tbaa !34
  store ptr %i.gv, ptr %i.gy, align 8, !tbaa !35
  store i64 0, ptr %i.hb, align 16, !tbaa !36
  br label %_ZN9Stockfish10NumaConfigaSEOS0_.exit81

_ZN9Stockfish10NumaConfigaSEOS0_.exit81:          ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EEaSEOS6_.exit.i79, %bb.l
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.he = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hd, ptr noundef nonnull align 8 dereferenceable(9) %i.he, i64 9, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !34 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not8.i40 = icmp eq ptr %i.hg, %i.hh
  br i1 %.not8.i40, label %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44, label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %_ZN9Stockfish10NumaConfigaSEOS0_.exit81, %.lr.ph.i41
  %.sroa.05.09.i42 = phi ptr [ %i.hm, %.lr.ph.i41 ], [ %i.hg, %_ZN9Stockfish10NumaConfigaSEOS0_.exit81 ] ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i42, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !158 ; 2 uses
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !153
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.hj) #28, !inline_history !237
  %i.hm = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.05.09.i42) #30 ; 2 uses
  %.not.i43 = icmp eq ptr %i.hm, %i.hh
  br i1 %.not.i43, label %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44.loopexit, label %.lr.ph.i41

_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44.loopexit: ; preds = %.lr.ph.i41
  %.pre90 = load ptr, ptr %i.gt, align 8, !tbaa !33
  br label %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44

_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44: ; preds = %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44.loopexit, %_ZN9Stockfish10NumaConfigaSEOS0_.exit81
  %i.hn = phi ptr [ %.pre90, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44.loopexit ], [ null, %_ZN9Stockfish10NumaConfigaSEOS0_.exit81 ]
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ho, ptr noundef %i.hn)
  %i.hp = load ptr, ptr %5, align 16, !tbaa !58   ; 3 uses
  %i.hq = load ptr, ptr %i.gc, align 8, !tbaa !59 ; 2 uses
  %.not4.i.i.i.i45 = icmp eq ptr %i.hp, %i.hq
  br i1 %.not4.i.i.i.i45, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51, label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44, %.lr.ph.i.i.i.i46
  %.05.i.i.i.i47 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i46 ], [ %i.hp, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44 ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i47, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %.05.i.i.i.i47, ptr noundef %i.hs)
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i47, i64 48 ; 2 uses
  %.not.i.i.i.i48 = icmp eq ptr %i.ht, %i.hq
  br i1 %.not.i.i.i.i48, label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i49, label %.lr.ph.i.i.i.i46, !llvm.loop !60

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i49: ; preds = %.lr.ph.i.i.i.i46
  %.pr.i.i50 = load ptr, ptr %5, align 16, !tbaa !58
  br label %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51

_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51: ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i49, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44
  %i.hu = phi ptr [ %.pr.i.i50, %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exitthread-pre-split.i.i49 ], [ %i.hp, %_ZN9Stockfish22NumaReplicationContext15set_numa_configEONS_10NumaConfigE.exit44 ] ; 3 uses
  %.not.i.i1.i.i52 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i.i52, label %_ZN9Stockfish10NumaConfigD2Ev.exit53, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51
  %i.hv = load ptr, ptr %i.ge, align 16, !tbaa !55
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.hu to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hy) #33
  br label %_ZN9Stockfish10NumaConfigD2Ev.exit53

_ZN9Stockfish10NumaConfigD2Ev.exit53:             ; preds = %_ZSt8_DestroyIPSt3setImSt4lessImESaImEEEvT_S6_.exit.i.i51, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.n

bb.n:                                             ; preds = %_ZN9Stockfish10NumaConfigD2Ev.exit23, %_ZN9Stockfish10NumaConfigD2Ev.exit53, %_ZN9Stockfish10NumaConfigD2Ev.exit39, %_ZN9Stockfish10NumaConfigD2Ev.exit
  call void @_ZN9Stockfish6Engine14resize_threadsEv(ptr noundef nonnull align 8 dereferenceable(1680) %0)
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1304
  call void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64) %i.hz) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig11from_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::vector.179", align 8   ; 7 uses
  %3 = alloca %"class.std::vector.33", align 8    ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !238
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.b, align 8, !tbaa !27, !alias.scope !238
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !33, !alias.scope !238
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.b, ptr %i.d, align 8, !tbaa !34, !alias.scope !238
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.e, align 8, !tbaa !35, !alias.scope !238
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false), !alias.scope !238
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.g = load ptr, ptr %1, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !51
  call void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.179") align 8 %2, i64 %i.i, ptr %i.g, i64 1, ptr nonnull @.str.40)
  %i.j = load ptr, ptr %2, align 8, !tbaa !241    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !241  ; 2 uses
  %.not37 = icmp eq ptr %i.j, %i.l
  br i1 %.not37, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %.pre44 = load ptr, ptr %2, align 8, !tbaa !243
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.u = phi ptr [ %.pre44, %._crit_edge.loopexit ], [ %i.j, %bb.a ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !245
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.aa, align 8, !tbaa !143
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %.039 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 6 uses
  %.sroa.025.038 = phi ptr [ %i.j, %.lr.ph ], [ %i.fh, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.025.038, align 8, !tbaa !25 ; 5 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.025.038, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !246 ; 3 uses
  store ptr %i.m, ptr %4, align 8, !tbaa !46
  %i.ab = icmp eq ptr %.sroa.2.0.copyload.i, null
  %i.ac = icmp ne i64 %.sroa.0.0.copyload.i, 0
  %or.cond.i.i.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #32
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %.sroa.0.0.copyload.i, ptr %i.a, align 8, !tbaa !25
  %i.ad = icmp ugt i64 %.sroa.0.0.copyload.i, 15
  br i1 %i.ad, label %bb.f, label %._crit_edge.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !49
  %i.af = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.af, ptr %i.m, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %bb.e
  %i.ag = phi ptr [ %i.ae, %bb.f ], [ %i.m, %bb.e ] ; 2 uses
  switch i64 %.sroa.0.0.copyload.i, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ah = load i8, ptr %.sroa.2.0.copyload.i, align 1, !tbaa !52
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %.sroa.2.0.copyload.i, i64 %.sroa.0.0.copyload.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.h
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.ai, ptr %i.n, align 8, !tbaa !51
  %i.aj = load ptr, ptr %4, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.al = load ptr, ptr %4, align 8, !tbaa !49    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit
  %i.an = load i64, ptr %i.m, align 8, !tbaa !52
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.ap = load ptr, ptr %3, align 8, !tbaa !247   ; 3 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !247 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.x, label %.preheader

bb.i:                                             ; preds = %bb.w
  %i.as = add nuw i64 %.039, 1
  %.pr = load ptr, ptr %3, align 8, !tbaa !249
  br label %bb.x

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.w
  %.sroa.020.036 = phi ptr [ %i.fb, %bb.w ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.at = load i64, ptr %.sroa.020.036, align 8, !tbaa !25 ; 11 uses
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.au, %.preheader ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.b, %.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !25
  %i.ax = icmp ult i64 %i.aw, %i.at               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.ax, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.ax, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ay = icmp eq ptr %.19.i.i.i.i.i, %i.b
  br i1 %i.ay, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.at, %i.ba
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.preheader
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !59  ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 48
  %.not11.i = icmp ugt i64 %i.bg, %.039
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.bh = phi ptr [ %i.da, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bc, %.preheader.i ] ; 5 uses
  %i.bi = phi ptr [ %i.db, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.bb, %.preheader.i ] ; 9 uses
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !55
  %.not.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store i64 0, ptr %i.bn, align 8, !tbaa !36
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 2 uses
  store ptr %i.bp, ptr %i.p, align 8, !tbaa !59
  %.pre = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.k:                                             ; preds = %.lr.ph.i
  %i.bq = ptrtoint ptr %i.bi to i64
  %i.br = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br                    ; 3 uses
  %i.bt = icmp eq i64 %i.bs, 9223372036854775776
  br i1 %i.bt, label %bb.l, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.k
  %i.bu = sdiv exact i64 %i.bs, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bu, i64 1)
  %i.bv = add nsw i64 %.sroa.speculated.i.i, %i.bu ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bu
  %i.bx = call i64 @llvm.umin.i64(i64 %i.bv, i64 192153584101141162)
  %i.by = select i1 %i.bw, i64 192153584101141162, i64 %i.bx ; 3 uses
  %.not.i.i15 = icmp ne i64 %i.by, 0
  call void @llvm.assume(i1 %.not.i.i15)
  %i.bz = mul nuw nsw i64 %i.by, 48
  %i.ca = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #31 ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bs ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, i8 0, i64 24, i1 false)
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !34
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store ptr %i.cc, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  store i64 0, ptr %i.cf, align 8, !tbaa !36
  %.not10.i.i.i.i16 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i18 = phi ptr [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.cw, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.bh, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !252)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33, !alias.scope !255, !noalias !252 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !27, !alias.scope !255, !noalias !252
  %i.cl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !34, !alias.scope !255, !noalias !252
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !35, !alias.scope !255, !noalias !252
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %i.cg, ptr %i.cp, align 8, !tbaa !57, !noalias !257
  %i.cq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !36, !alias.scope !255, !noalias !252
  store ptr null, ptr %i.ch, align 8, !tbaa !33, !alias.scope !255, !noalias !252
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !34, !alias.scope !255, !noalias !252
  store ptr %i.cj, ptr %i.cn, align 8, !tbaa !35, !alias.scope !255, !noalias !252
  store i64 0, ptr %i.cq, align 8, !tbaa !36, !alias.scope !255, !noalias !252
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.m, %.lr.ph.i.i.i.i17
  %.sink6.i.i.i.i.i = phi ptr [ %i.cm, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i17 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.co, %bb.m ], [ %i.cg, %.lr.ph.i.i.i.i17 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.cr, %bb.m ], [ 0, %.lr.ph.i.i.i.i17 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ck, %bb.m ], [ 0, %.lr.ph.i.i.i.i17 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  store ptr %i.ci, ptr %i.cs, align 8, !tbaa !33, !alias.scope !252, !noalias !255
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.ct, align 8, !tbaa !34, !alias.scope !252, !noalias !255
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.cu, align 8, !tbaa !35, !alias.scope !252, !noalias !255
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !36, !alias.scope !252, !noalias !255
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.cg, align 8, !tbaa !27, !alias.scope !252, !noalias !255
  %i.cw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i.i19 = icmp eq ptr %i.cw, %i.bi
  br i1 %.not.i.i.i.i19, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i17, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.cx, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.bh, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %5 = load ptr, ptr %i.q, align 8, !tbaa !55
  %6 = ptrtoint ptr %5 to i64
  %7 = sub i64 %6, %i.br
  call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %7) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.n
  store ptr %i.ca, ptr %0, align 8, !tbaa !58
  store ptr %i.cy, ptr %i.p, align 8, !tbaa !59
  %i.cz = getelementptr inbounds nuw [48 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cz, ptr %i.q, align 8, !tbaa !55
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.j
  %i.da = phi ptr [ %.pre, %bb.j ], [ %i.ca, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.db = phi ptr [ %i.bp, %bb.j ], [ %i.cy, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = sdiv exact i64 %i.de, 48
  %.not.i = icmp ugt i64 %i.df, %.039
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !259

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.bc, %.preheader.i ], [ %i.da, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.039 ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.dh, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = icmp ult i64 %i.at, %i.dk               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.dl, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i9, label %.lr.ph.i.i.i.i, !llvm.loop !38

._crit_edge.i.i.i.i9:                             ; preds = %.lr.ph.i.i.i.i
  br i1 %i.dl, label %._crit_edge.thread.i.i.i.i, label %bb.p

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i9, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ], [ %i.di, %._crit_edge.i ] ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !34
  %i.do = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.dn
  br i1 %i.do, label %select.unfold.i.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.dp = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i9
  %i.dq = phi i64 [ %.pre.i.i.i, %bb.o ], [ %i.dk, %._crit_edge.i.i.i.i9 ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.o ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i9 ]
  %i.dr = icmp ult i64 %i.dq, %i.at
  br i1 %i.dr, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.p, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.p ] ; 3 uses
  %i.ds = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.di
  br i1 %i.ds, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %select.unfold.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.dv = icmp ult i64 %i.at, %i.du
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.q, %select.unfold.i.i.i
  %i.dw = phi i1 [ %i.dv, %bb.q ], [ true, %select.unfold.i.i.i ]
  %i.dx = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 32
  store i64 %i.at, ptr %i.dy, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.di) #28
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 40 ; 2 uses
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !36
  %i.eb = add i64 %i.ea, 1
  store i64 %i.eb, ptr %i.dz, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.p
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i12

.lr.ph.i.i.i.i12:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i12
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i12 ], [ %i.ec, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i12 ], [ %i.b, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !25
  %i.ef = icmp ult i64 %i.ee, %i.at               ; 2 uses
  %.19.i.i.i.i = select i1 %i.ef, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ef, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i13, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i12, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i12
  %i.eg = icmp eq ptr %.19.i.i.i.i, %i.b
  br i1 %i.eg, label %.critedge.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !25
  %i.ej = icmp ult i64 %i.at, %i.ei
  br i1 %i.ej, label %.critedge.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i:                                      ; preds = %bb.r, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i, %bb.r ], [ %.19.i.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.b, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.ek = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  store i64 %i.at, ptr %i.el, align 8, !tbaa !261
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  store i64 0, ptr %i.em, align 8, !tbaa !263
  %i.en = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.el) ; 2 uses
  %i.eo = extractvalue { ptr, ptr } %i.en, 0      ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.en, 1      ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i14, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %.not.i.i.i4.i = icmp ne ptr %i.eo, null
  %i.eq = icmp eq ptr %i.ep, %i.b
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.eq
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.es = load i64, ptr %i.el, align 8, !tbaa !25
  %i.et = load i64, ptr %i.er, align 8, !tbaa !25
  %i.eu = icmp ult i64 %i.es, %i.et
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.t, %bb.s
  %i.ev = phi i1 [ %i.eu, %bb.t ], [ true, %bb.s ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ev, ptr noundef nonnull %i.ek, ptr noundef nonnull %i.ep, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #28
  %i.ew = load i64, ptr %i.f, align 8, !tbaa !36
  %i.ex = add i64 %i.ew, 1
  store i64 %i.ex, ptr %i.f, align 8, !tbaa !36
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.u:                                             ; preds = %.critedge.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 48) #33
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.r, %.thread.i.i, %bb.u
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i, %bb.r ], [ %i.ek, %.thread.i.i ], [ %i.eo, %bb.u ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.039, ptr %i.ey, align 8, !tbaa !25
  %i.ez = load i64, ptr %i.s, align 8, !tbaa !264
  %i.fa = icmp ugt i64 %i.at, %i.ez
  br i1 %i.fa, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.at, ptr %i.s, align 8, !tbaa !264
  br label %bb.w

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i
  call void @exit(i32 noundef 1) #29
  unreachable

bb.w:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.v
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.020.036, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.fb, %i.aq
  br i1 %.not31, label %bb.i, label %.preheader

bb.x:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fc = phi ptr [ %.pr, %bb.i ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.1 = phi i64 [ %i.as, %bb.i ], [ %.039, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.not.i.i.i10 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = load ptr, ptr %i.t, align 8, !tbaa !265
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fg) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.025.038, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.fh, %i.l
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c
}

declare void @_ZN9Stockfish10ThreadPool25ensure_network_replicatedEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZNK9Stockfish10ThreadPool24wait_for_search_finishedEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

declare void @_ZN9Stockfish10ThreadPool3setERKNS_10NumaConfigENS_6Search11SharedStateERKNS4_13SearchManager13UpdateContextE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef byval(%"struct.Stockfish::Search::SharedState") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine11set_tt_sizeEm(ptr noundef nonnull align 8 dereferenceable(1680) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
end_hunk_1
begin_hunk_2_@_ZNK9Stockfish8Position3fenB5cxx11Ev
declare void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #6

declare void @_ZN9Stockfish4Eval5traceB5cxx11ERNS_8PositionERKNS0_4NNUE8NetworksE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef nonnull align 64 dereferenceable(137849344)) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZNK9Stockfish6Engine11get_optionsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1680) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN9Stockfish6Engine11get_optionsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(1680) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1224
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine3fenB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168
  tail call void @_ZNK9Stockfish8Position3fenB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1048) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9Stockfish6Engine4flipEv(ptr noundef nonnull align 8 dereferenceable(1680) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN9Stockfish8Position4flipEv(ptr noundef nonnull align 8 dereferenceable(1048) %i.a) #28
  ret void
}

declare void @_ZN9Stockfish8Position4flipEv(ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine9visualizeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.a) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVSt9basic_iosIcSt11char_traitsIcEE, i64 16), ptr %i.a, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 344
  store ptr null, ptr %i.b, align 8, !tbaa !341
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 352
  store i8 0, ptr %i.c, align 8, !tbaa !342
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 353
  store i8 0, ptr %i.d, align 1, !tbaa !343
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !153
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8 ; 2 uses
  %i.h = getelementptr i8, ptr %i.f, i64 -24      ; 2 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  store ptr %i.g, ptr %i.j, align 8, !tbaa !153
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !344
  %i.l = load ptr, ptr %2, align 8, !tbaa !153
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.o, ptr noundef null) #28
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 32), align 8 ; 2 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !153
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 40), align 8
  %i.s = getelementptr i8, ptr %i.q, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  store ptr %i.r, ptr %i.u, align 8, !tbaa !153
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !153
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %i.p, i64 %i.x
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.y, ptr noundef null) #28
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 2 uses
  store ptr %i.z, ptr %2, align 8, !tbaa !153
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 48), align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %2, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), ptr %2, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 104), ptr %i.a, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), ptr %i.p, align 8, !tbaa !153
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #28
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  store i32 24, ptr %i.ah, align 8, !tbaa !346
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 0, ptr %i.ak, align 8, !tbaa !51
  store i8 0, ptr %i.aj, align 8, !tbaa !52
  %i.al = load ptr, ptr %2, align 8, !tbaa !153
  %i.am = getelementptr i8, ptr %i.al, i64 -24
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = getelementptr inbounds i8, ptr %2, i64 %i.an
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.ao, ptr noundef nonnull %i.ae) #28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(1048) %i.ap) #28 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.experimental.noalias.scope.decl(metadata !353)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !46, !alias.scope !356
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !51, !alias.scope !356
  store i8 0, ptr %i.ar, align 8, !tbaa !52, !alias.scope !356
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !357, !noalias !356 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.au, null
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !356 ; 2 uses
  %i.ax = icmp ugt ptr %i.au, %i.aw
  %.08.i.i.i = select i1 %i.ax, ptr %i.au, ptr %i.aw ; 2 uses
  %.not4.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not4.i.i
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !358, !noalias !356 ; 2 uses
  %i.ba = ptrtoint ptr %.08.i.i.i to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.az, i64 noundef %i.bc) #28 ; 0 uses
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) #28
  br label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.b, %bb.c
  %i.be = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !tbaa !153
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.bg = getelementptr i8, ptr %i.be, i64 -24
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds i8, ptr %2, i64 %i.bh
  store ptr %i.bf, ptr %i.bi, align 8, !tbaa !153
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !153
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !49 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.aj
  br i1 %i.bl, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.bm = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #33
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.ae, align 8, !tbaa !153
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ag) #28
  store ptr %i.f, ptr %2, align 8, !tbaa !153
  %i.bo = load i64, ptr %i.h, align 8
  %i.bp = getelementptr inbounds i8, ptr %2, i64 %i.bo
  store ptr %i.g, ptr %i.bp, align 8, !tbaa !153
  store i64 0, ptr %i.k, align 8, !tbaa !344
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoRKNS_8PositionE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1048)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK9Stockfish6Engine12get_hashfullEi(ptr noundef nonnull align 8 dereferenceable(1680) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = tail call noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17) %i.a, i32 noundef %1) #28
  ret i32 %i.b
}

declare noundef i32 @_ZNK9Stockfish18TranspositionTable8hashfullEi(ptr noundef nonnull align 8 dereferenceable(17), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.128") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.std::vector.33", align 8    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1304
  call void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.33") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !359  ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !249    ; 3 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit
  %i.h = phi ptr [ %i.e, %.lr.ph ], [ %i.al, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 2 uses
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.am, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ]
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.an, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 5 uses
  %i.k = phi ptr [ null, %.lr.ph ], [ %i.ao, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 4 uses
  %.037 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 3 uses
  %i.l = phi ptr [ null, %.lr.ph ], [ %i.ap, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit ] ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.037 ; 2 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.n, i64 %.037
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.r, ptr %i.k, align 8, !tbaa !360
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !362
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.f, align 8, !tbaa !363
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = ptrtoint ptr %i.l to i64
  %i.w = sub i64 %i.u, %i.v                       ; 4 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.e, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.l, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = call i64 @llvm.umin.i64(i64 %i.z, i64 576460752303423487)
  %i.ac = select i1 %i.aa, i64 576460752303423487, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #31 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 2 uses
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !25
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !360
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.q, ptr %i.ah, align 8, !tbaa !362
  %.not10.i.i.i.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i ], [ %i.l, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !366
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ai, %i.j
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !370

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %.lr.ph.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i24.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i24.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.w) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i
  store ptr %i.ak, ptr %i.f, align 8, !tbaa !363
  %3 = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac ; 2 uses
  store ptr %3, ptr %i.g, align 8, !tbaa !371
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !359
  %.pre57 = load ptr, ptr %2, align 8, !tbaa !249
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit: ; preds = %bb.c, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.al = phi ptr [ %i.h, %bb.c ], [ %.pre57, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 5 uses
  %i.am = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 3 uses
  %i.an = phi ptr [ %i.j, %bb.c ], [ %3, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ao = phi ptr [ %i.t, %bb.c ], [ %i.ak, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ap = phi ptr [ %i.l, %bb.c ], [ %i.ae, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRmmEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 4 uses
  %i.aq = add nuw i64 %.037, 1                    ; 4 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3
  %i.av = icmp ult i64 %i.aq, %i.au
  br i1 %i.av, label %bb.b, label %._crit_edge, !llvm.loop !372

._crit_edge:                                      ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRmmEEERS1_DpOT_.exit
  %i.aw = icmp eq ptr %i.al, %i.am
  store ptr %i.ap, ptr %0, align 8
  br i1 %i.aw, label %._crit_edge.thread, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !59 ; 2 uses
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = sdiv exact i64 %i.bc, 48
  %i.be = icmp ult i64 %i.aq, %i.bd
  br i1 %i.be, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %.preheader
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph45, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit
  %i.bh = phi ptr [ %i.az, %.lr.ph45 ], [ %i.ch, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 2 uses
  %i.bi = phi ptr [ %i.ay, %.lr.ph45 ], [ %i.ci, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ]
  %i.bj = phi ptr [ %i.an, %.lr.ph45 ], [ %i.cj, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 5 uses
  %i.bk = phi ptr [ %i.ao, %.lr.ph45 ], [ %i.ck, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 4 uses
  %.144 = phi i64 [ %i.aq, %.lr.ph45 ], [ %i.cm, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 2 uses
  %i.bl = phi ptr [ %i.ap, %.lr.ph45 ], [ %i.cl, %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit ] ; 7 uses
  %i.bm = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %.144
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !36 ; 2 uses
  %.not.i11 = icmp eq ptr %i.bk, %i.bj
  br i1 %.not.i11, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.bk, align 8, !tbaa !360
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !362
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  store ptr %i.bq, ptr %i.bf, align 8, !tbaa !363
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.br = ptrtoint ptr %i.bj to i64
  %i.bs = ptrtoint ptr %i.bl to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775792
  br i1 %i.bu, label %bb.j, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12

bb.j:                                             ; preds = %bb.i
  store ptr %i.bl, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12: ; preds = %bb.i
  %i.bv = ashr exact i64 %i.bt, 4                 ; 3 uses
  %.sroa.speculated.i.i.i13 = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i13, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = call i64 @llvm.umin.i64(i64 %i.bw, i64 576460752303423487)
  %i.bz = select i1 %i.bx, i64 576460752303423487, i64 %i.by ; 3 uses
  %.not.i.i.i14 = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i14)
  %i.ca = shl nuw nsw i64 %i.bz, 4
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #31 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !360
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i64 %i.bo, ptr %i.cd, align 8, !tbaa !362
  %.not10.i.i.i.i.i15 = icmp eq ptr %i.bl, %i.bj
  br i1 %.not10.i.i.i.i.i15, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12, %.lr.ph.i.i.i.i.i16
  %.012.i.i.i.i.i17 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i16 ], [ %i.cb, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  %.0911.i.i.i.i.i18 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i16 ], [ %i.bl, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i17, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i18, i64 16, i1 false), !alias.scope !373
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i18, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i17, i64 16 ; 2 uses
  %.not.i.i.i.i.i19 = icmp eq ptr %i.ce, %i.bj
  br i1 %.not.i.i.i.i.i19, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20, label %.lr.ph.i.i.i.i.i16, !llvm.loop !370

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20: ; preds = %.lr.ph.i.i.i.i.i16, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12
  %.0.lcssa.i.i.i.i.i21 = phi ptr [ %i.cb, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i.i12 ], [ %i.cf, %.lr.ph.i.i.i.i.i16 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i21, i64 16 ; 2 uses
  %.not.i24.i.i22 = icmp eq ptr %i.bl, null
  br i1 %.not.i24.i.i22, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bt) #33
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i.i20
  store ptr %i.cg, ptr %i.bf, align 8, !tbaa !363
  %4 = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %i.bz ; 2 uses
  store ptr %4, ptr %i.bg, align 8, !tbaa !371
  %.pre58 = load ptr, ptr %i.ax, align 8, !tbaa !59
  %.pre59 = load ptr, ptr %i.b, align 8, !tbaa !58
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ch = phi ptr [ %i.bh, %bb.h ], [ %.pre59, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.ci = phi ptr [ %i.bi, %bb.h ], [ %.pre58, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.cj = phi ptr [ %i.bj, %bb.h ], [ %4, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ck = phi ptr [ %i.bq, %bb.h ], [ %i.cg, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.cl = phi ptr [ %i.bl, %bb.h ], [ %i.cb, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJimEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ] ; 2 uses
  %i.cm = add nuw i64 %.144, 1                    ; 2 uses
  %i.cn = ptrtoint ptr %i.ci to i64
  %i.co = ptrtoint ptr %i.ch to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = sdiv exact i64 %i.cp, 48
  %i.cr = icmp ult i64 %i.cm, %i.cq
  br i1 %i.cr, label %bb.g, label %.loopexit.loopexit, !llvm.loop !377

.loopexit.loopexit:                               ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJimEEERS1_DpOT_.exit
  %.pre60.pre = load ptr, ptr %2, align 8, !tbaa !249
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader
  %.pre60 = phi ptr [ %i.al, %.preheader ], [ %.pre60.pre, %.loopexit.loopexit ]
  %.lcssa42 = phi ptr [ %i.ap, %.preheader ], [ %i.cl, %.loopexit.loopexit ]
  store ptr %.lcssa42, ptr %0, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %.loopexit, %._crit_edge
  %i.cs = phi ptr [ %.pre60, %.loopexit ], [ %i.al, %._crit_edge ], [ %i.e, %bb.a ] ; 3 uses
  %.not.i.i.i23 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i.i23, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !265
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.cs to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.cx) #33
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge.thread, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare void @_ZNK9Stockfish10ThreadPool35get_bound_thread_count_by_numa_nodeEv(ptr dead_on_unwind writable sret(%"class.std::vector.33") align 8, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK9Stockfish6Engine25get_numa_config_as_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1680) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNK9Stockfish10NumaConfig9to_stringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 0, ptr %i.b, align 8, !tbaa !51
  store i8 0, ptr %i.a, align 8, !tbaa !52
  %i.c = load ptr, ptr %1, align 8, !tbaa !53     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not6486 = icmp eq ptr %i.c, %i.e
  br i1 %.not6486, label %._crit_edge90, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge90:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %._crit_edge
  %.088 = phi i1 [ true, %.lr.ph ], [ false, %._crit_edge ]
  %.sroa.060.087 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %._crit_edge ] ; 3 uses
  br i1 %.088, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !51
  %i.m = icmp eq i64 %i.l, 4611686018427387903
  br i1 %i.m, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c
  %i.n = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.40, i64 noundef 1) #28 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 8 ; 3 uses
  %.not6582 = icmp eq ptr %i.p, %i.q
  br i1 %.not6582, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.an
  %.01285 = phi i1 [ %.1, %bb.an ], [ true, %bb.e ] ; 2 uses
  %.sroa.052.084 = phi ptr [ %i.ga, %bb.an ], [ %i.p, %bb.e ] ; 5 uses
  %.sroa.057.083 = phi ptr [ %.sroa.057.1, %bb.an ], [ %i.p, %bb.e ] ; 3 uses
  %i.r = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.052.084) #30 ; 4 uses
  %i.s = icmp eq ptr %i.r, %i.q
  br i1 %i.s, label %.critedge, label %bb.f

._crit_edge:                                      ; preds = %bb.an, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.060.087, i64 48 ; 2 uses
  %.not64 = icmp eq ptr %i.t, %i.e
  br i1 %.not64, label %._crit_edge90, label %bb.b

bb.f:                                             ; preds = %.preheader
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.052.084, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !25
  %i.y = add i64 %i.x, 1
  %.not = icmp eq i64 %i.v, %i.y
  br i1 %.not, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.preheader, %bb.f
  br i1 %.01285, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.z = load i64, ptr %i.b, align 8, !tbaa !51
  %i.aa = icmp eq i64 %i.z, 4611686018427387903
  br i1 %i.aa, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.61) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13: ; preds = %bb.g
  %i.ab = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.49, i64 noundef 1) #28 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit13, %.critedge
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.052.084, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !25 ; 10 uses
  %.not66 = icmp eq ptr %.sroa.052.084, %.sroa.057.083
  br i1 %.not66, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.057.083, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %i.ag = icmp ult i64 %i.af, 10
  br i1 %i.ag, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.029.i.i = phi i32 [ %i.ao, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %.02328.i.i = phi i64 [ %i.an, %bb.p ], [ %i.af, %bb.j ] ; 5 uses
  %i.ah = icmp ult i64 %.02328.i.i, 100
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ai = add i32 %.029.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.aj = icmp ult i64 %.02328.i.i, 1000
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = add i32 %.029.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.al = icmp ult i64 %.02328.i.i, 10000
  br i1 %i.al, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.am = add i32 %.029.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.an = udiv i64 %.02328.i.i, 10000
  %i.ao = add i32 %.029.i.i, 4                    ; 2 uses
  %i.ap = icmp ult i64 %.02328.i.i, 100000
  br i1 %i.ap, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !195

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.p, %bb.o, %bb.m, %bb.k, %bb.j
  %.022.i.i = phi i32 [ %i.am, %bb.o ], [ %i.ai, %bb.k ], [ %i.ak, %bb.m ], [ 1, %bb.j ], [ %i.ao, %bb.p ]
  %i.aq = zext i32 %.022.i.i to i64
  store ptr %i.f, ptr %2, align 8, !tbaa !46, !alias.scope !378
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.aq, i8 noundef signext 0) #28
  %i.ar = load ptr, ptr %2, align 8, !tbaa !49, !alias.scope !378 ; 4 uses
  %i.as = icmp ugt i64 %i.af, 99
  br i1 %i.as, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.at = load i64, ptr %i.g, align 8, !tbaa !51, !alias.scope !378
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.au, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ay, %.lr.ph.i2.i ], [ %i.af, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bi, %.lr.ph.i2.i ], [ %i.av, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aw = urem i64 %.020.i.i, 100
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52, !noalias !378
  %i.bc = zext i32 %.01819.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !52
  %i.be = load i8, ptr %i.az, align 2, !tbaa !52, !noalias !378
  %i.bf = add i32 %.01819.i.i, -1
end_hunk_2
begin_hunk_3_@_ZN9Stockfish10NumaConfig29indices_from_shortened_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  ]

bb.z:                                             ; preds = %._crit_edge.i.i.i.i24
  %i.co = load i8, ptr %.sroa.2.0.copyload.i22, align 1, !tbaa !52
  store i8 %i.co, ptr %i.cn, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i24
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cn, ptr align 1 %.sroa.2.0.copyload.i22, i64 %.sroa.0.0.copyload.i20, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25: ; preds = %._crit_edge.i.i.i.i24, %bb.z, %bb.aa
  %i.cp = load i64, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  store i64 %i.cp, ptr %i.o, align 8, !tbaa !51
  %i.cq = load ptr, ptr %6, align 8, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 0, ptr %i.cr, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.cs = call noundef i64 @_ZN9Stockfish13str_to_size_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %6) #28 ; 2 uses
  %i.ct = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.n
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25
  %i.cv = load i64, ptr %i.n, align 8, !tbaa !52
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ISt17basic_string_viewIcS2_EvEERKT_RKS3_.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %.not52 = icmp ugt i64 %i.cb, %i.cs
  br i1 %.not52, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit
  %i.cx = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  %i.cy = phi ptr [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.cz = phi ptr [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %storemerge53 = phi i64 [ %i.dv, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 3 uses
  %i.da = phi ptr [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ] ; 6 uses
  %.not.i29 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i29, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph
  store i64 %storemerge53, ptr %i.cz, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 2 uses
  store ptr %i.db, ptr %i.p, align 8, !tbaa !359
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.ac:                                            ; preds = %.lr.ph
  %i.dc = ptrtoint ptr %i.cy to i64
  %i.dd = ptrtoint ptr %i.da to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 6 uses
  %i.df = icmp eq i64 %i.de, 9223372036854775800
  br i1 %i.df, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.da, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30: ; preds = %bb.ac
  %i.dg = ashr exact i64 %i.de, 3                 ; 3 uses
  %.sroa.speculated.i.i.i31 = call i64 @llvm.umax.i64(i64 %i.dg, i64 1)
  %i.dh = add nsw i64 %.sroa.speculated.i.i.i31, %i.dg ; 2 uses
  %i.di = icmp ult i64 %i.dh, %i.dg
  %i.dj = call i64 @llvm.umin.i64(i64 %i.dh, i64 1152921504606846975)
  %i.dk = select i1 %i.di, i64 1152921504606846975, i64 %i.dj ; 3 uses
  %.not.i.i.i32 = icmp ne i64 %i.dk, 0
  call void @llvm.assume(i1 %.not.i.i.i32)
  %i.dl = shl nuw nsw i64 %i.dk, 3
  %i.dm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dl) #31 ; 4 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.de ; 2 uses
  store i64 %storemerge53, ptr %i.dn, align 8, !tbaa !25
  %i.do = icmp sgt i64 %i.de, 0
  br i1 %i.do, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

bb.ae:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dm, ptr align 8 %i.da, i64 %i.de, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33: ; preds = %bb.ae, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 2 uses
  %.not.i17.i.i34 = icmp eq ptr %i.da, null
  br i1 %.not.i17.i.i34, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  call void @_ZdlPvm(ptr noundef nonnull %i.da, i64 noundef %i.de) #33
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i33
  store ptr %i.dp, ptr %i.p, align 8, !tbaa !359
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dk ; 3 uses
  store ptr %i.dq, ptr %i.q, align 8, !tbaa !265
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit: ; preds = %bb.ab, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %i.dr = phi ptr [ %i.cx, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cy, %bb.ab ], [ %i.dq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dt = phi ptr [ %i.db, %bb.ab ], [ %i.dp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.du = phi ptr [ %i.da, %bb.ab ], [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ] ; 2 uses
  %i.dv = add i64 %storemerge53, 1                ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.cs
  br i1 %.not, label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit, label %.lr.ph, !llvm.loop !485

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %i.dw = phi ptr [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dr, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dx = phi ptr [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.ds, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %i.dy = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.dt, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ]
  %.lcssa = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.du, %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit ] ; 2 uses
  store ptr %.lcssa, ptr %0, align 8
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split: ; preds = %bb.l, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit
  %.ph = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dw, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph87 = phi ptr [ %i.aa, %bb.l ], [ %i.bq, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dx, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.ph88 = phi ptr [ %i.bb, %bb.l ], [ %i.bp, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.dy, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.promoted62.ph = phi ptr [ %i.ad, %bb.l ], [ %i.bm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.lcssa, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit.loopexit ]
  %.pr = load ptr, ptr %3, align 8, !tbaa !243
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit

_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split, %bb.e
  %i.dz = phi ptr [ %.pr, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ah, %bb.e ] ; 3 uses
  %i.ea = phi ptr [ %.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.aa, %bb.e ]
  %i.eb = phi ptr [ %.ph87, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ab, %bb.e ]
  %i.ec = phi ptr [ %.ph88, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ac, %bb.e ]
  %.promoted62 = phi ptr [ %.promoted62.ph, %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exitthread-pre-split ], [ %i.ad, %bb.e ]
  %.not.i.i.i35 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i.i35, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !245
  %i.ee = ptrtoint ptr %i.ed to i64
  %i.ef = ptrtoint ptr %i.dz to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef %i.eg) #33
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36: ; preds = %_ZNSt6vectorImSaImEE12emplace_backIJRKmEEERmDpOT_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.ah

bb.ah:                                            ; preds = %bb.d, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36
  %i.eh = phi ptr [ %i.aa, %bb.d ], [ %i.ea, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ei = phi ptr [ %i.ab, %bb.d ], [ %i.eb, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ej = phi ptr [ %i.ac, %bb.d ], [ %i.ec, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %.promoted61 = phi ptr [ %i.ad, %bb.d ], [ %.promoted62, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit36 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.045.055, i64 16 ; 2 uses
  %.not50 = icmp eq ptr %i.ek, %i.j
  br i1 %.not50, label %._crit_edge.loopexit, label %bb.d

bb.ai:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm(ptr dead_on_unwind noalias writable sret(%"class.Stockfish::NumaConfig") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.std::tuple.202", align 8    ; 4 uses
  %4 = alloca %"class.std::tuple.205", align 1    ; 3 uses
  %5 = alloca %"class.std::map.193", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  store i32 0, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  store ptr %i.a, ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.a, ptr %i.d, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !36
  %i.f = load ptr, ptr %1, align 8, !tbaa !459    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !459  ; 2 uses
  %.not85100 = icmp eq ptr %i.f, %i.h
  br i1 %.not85100, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !34
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.i = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(81) %0, i8 0, i64 24, i1 false), !alias.scope !486
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  store i32 0, ptr %i.j, align 8, !tbaa !27, !alias.scope !486
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr null, ptr %i.k, align 8, !tbaa !33, !alias.scope !486
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %i.l, align 8, !tbaa !34, !alias.scope !486
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.m, align 8, !tbaa !35, !alias.scope !486
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.n, i8 0, i64 17, i1 false), !alias.scope !486
  %.not86120 = icmp eq ptr %i.i, %i.a
  br i1 %.not86120, label %._crit_edge125, label %.lr.ph124

.lr.ph124:                                        ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.h

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %.sroa.081.0101 = phi ptr [ %i.ba, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit ], [ %i.f, %bb.a ] ; 10 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph
  %i.t = load i64, ptr %.sroa.081.0101, align 8, !tbaa !25 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %bb.b ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %i.a, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !25
  %i.w = icmp ult i64 %i.v, %i.t                  ; 3 uses
  %.19.i.i.i.i = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.w, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, label %bb.b, !llvm.loop !489

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i: ; preds = %bb.b
  %i.x = icmp eq ptr %.19.i.i.i.i, %i.a
  br i1 %i.x, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.w, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.y = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !25
  %i.z = icmp ult i64 %i.t, %i.y
  br i1 %i.z, label %.critedge.i, label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

.critedge.i:                                      ; preds = %bb.c, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i, %.lr.ph
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.c ], [ %.19.i.i.i.i, %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEE11lower_boundERS8_.exit.i ], [ %i.a, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store ptr %.sroa.081.0101, ptr %3, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.aa = call ptr @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESI_IJEEEEESt17_Rb_tree_iteratorIS7_ESt23_Rb_tree_const_iteratorIS7_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit

_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit: ; preds = %bb.c, %.critedge.i
  %.sroa.06.0.i = phi ptr [ %i.aa, %.critedge.i ], [ %.19.i.i.i.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !455 ; 12 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !458
  %.not.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.af = load i64, ptr %.sroa.081.0101, align 8, !tbaa !450
  store i64 %i.af, ptr %i.ac, align 8, !tbaa !450
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ai, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 40
  %i.ap = load <2 x ptr>, ptr %i.am, align 8, !tbaa !37
  store <2 x ptr> %i.ap, ptr %i.an, align 8, !tbaa !37
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 48 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !36
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.as, ptr %i.at, align 8, !tbaa !36
  store ptr null, ptr %i.ah, align 8, !tbaa !33
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !34
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !35
  store i64 0, ptr %i.ar, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr null, ptr %i.au, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !34
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %i.ag, ptr %i.aw, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 0, ptr %i.ax, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainC2EOS0_.exit.i

_ZN9Stockfish8L3DomainC2EOS0_.exit.i:             ; preds = %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi i32 [ 0, %bb.f ], [ %i.ak, %bb.e ]
  store i32 %.sink.i.i.i.i.i.i, ptr %i.ag, align 8, !tbaa !27
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store ptr %i.ay, ptr %i.ab, align 8, !tbaa !455
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.g:                                             ; preds = %_ZNSt3mapImSt6vectorIN9Stockfish8L3DomainESaIS2_EESt4lessImESaISt4pairIKmS4_EEEixERS8_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  call void @_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.az, ptr %i.ac, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.081.0101)
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN9Stockfish8L3DomainC2EOS0_.exit.i, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.081.0101, i64 56 ; 2 uses
  %.not85 = icmp eq ptr %i.ba, %i.h
  br i1 %.not85, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge125:                                   ; preds = %._crit_edge118, %._crit_edge
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.h:                                             ; preds = %.lr.ph124, %._crit_edge118
  %.035122 = phi i64 [ 0, %.lr.ph124 ], [ %.136.lcssa, %._crit_edge118 ] ; 2 uses
  %.sroa.077.0121 = phi ptr [ %i.i, %.lr.ph124 ], [ %i.es, %._crit_edge118 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 40 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.077.0121, i64 48 ; 5 uses
  %.pre137 = load ptr, ptr %i.bd, align 8, !tbaa !455
  %.pre138 = load ptr, ptr %i.bc, align 8, !tbaa !460
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge106, %bb.h
  %i.be = phi ptr [ %i.ek, %._crit_edge106 ], [ %.pre138, %bb.h ] ; 3 uses
  %i.bf = phi ptr [ %i.el, %._crit_edge106 ], [ %.pre137, %bb.h ] ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = sdiv exact i64 %i.bi, 56
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph105, label %.preheader

._crit_edge106:                                   ; preds = %bb.r
  br i1 %.1, label %bb.i, label %.preheader, !llvm.loop !490

.preheader:                                       ; preds = %bb.i, %._crit_edge106
  %i.bl = phi ptr [ %i.el, %._crit_edge106 ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bm = phi ptr [ %i.ek, %._crit_edge106 ], [ %i.be, %bb.i ] ; 2 uses
  %.not87114 = icmp eq ptr %i.bm, %i.bl
  br i1 %.not87114, label %._crit_edge118, label %.lr.ph117

.lr.ph105:                                        ; preds = %bb.i, %bb.r
  %i.bn = phi ptr [ %i.ek, %bb.r ], [ %i.be, %bb.i ] ; 4 uses
  %i.bo = phi ptr [ %i.el, %bb.r ], [ %i.bf, %bb.i ] ; 2 uses
  %i.bp = phi i64 [ %i.em, %bb.r ], [ 1, %bb.i ]  ; 3 uses
  %.0103 = phi i64 [ %i.bp, %bb.r ], [ 0, %bb.i ] ; 2 uses
  %.034102 = phi i1 [ %.1, %bb.r ], [ false, %bb.i ]
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %.0103 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !36
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.bn, i64 %i.bp ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 48 ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !36
  %i.bw = add i64 %i.bv, %i.bs
  %.not = icmp ugt i64 %i.bw, %2
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %.lr.ph105
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 3 uses
  %.not21.i = icmp eq ptr %i.by, %i.bz
  br i1 %.not21.i, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i, %.lr.ph.i43
  %.sroa.013.022.i = phi ptr [ %i.by, %.lr.ph.i43 ], [ %i.cd, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i ] ; 3 uses
  %i.cd = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.013.022.i) #30 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i, i64 32 ; 2 uses
  %.02022.i.i = load ptr, ptr %i.ca, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i = icmp eq ptr %.02022.i.i, null
  br i1 %.not23.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.02024.i.i = phi ptr [ %.02022.i.i, %.lr.ph.i.i ], [ %.020.i.i, %bb.l ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !25 ; 2 uses
  %i.ci = icmp ult i64 %i.cf, %i.ch               ; 2 uses
  %.in.v.i.i = select i1 %i.ci, i64 16, i64 24
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i44 = icmp eq ptr %.020.i.i, null
end_hunk_3
begin_hunk_4_@_ZN9Stockfish10NumaConfig12from_l3_infoEOSt6vectorINS_8L3DomainESaIS2_EEm:bb.a
_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i: ; preds = %bb.o, %select.unfold.i
  %i.cy = phi i1 [ %i.cx, %bb.o ], [ true, %select.unfold.i ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.cy, ptr noundef nonnull %i.cp, ptr noundef nonnull %.sroa.4.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(32) %i.cb) #28
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !36
  %i.da = add i64 %i.cz, 1
  store i64 %i.da, ptr %i.br, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE14_M_insert_nodeEPSt18_Rb_tree_node_baseS7_PSt13_Rb_tree_nodeImE.exit.i, %bb.n
  %.not.i45 = icmp eq ptr %i.cd, %i.bz
  br i1 %.not.i45, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, label %bb.k, !llvm.loop !491

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE24_M_get_insert_unique_posERKm.exit.i
  %.pre139 = load ptr, ptr %i.bc, align 8, !tbaa !459
  %.pre140 = load ptr, ptr %i.bd, align 8, !tbaa !459
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit, %bb.j
  %i.db = phi ptr [ %.pre140, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bo, %bb.j ] ; 4 uses
  %i.dc = phi ptr [ %.pre139, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit.loopexit ], [ %i.bn, %bb.j ]
  %i.dd = getelementptr inbounds [56 x i8], ptr %i.dc, i64 %.0103 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 112 ; 3 uses
  %.not.i.i = icmp eq ptr %i.de, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit
  %i.df = ptrtoint ptr %i.db to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg                    ; 2 uses
  %i.di = icmp sgt i64 %i.dh, 0
  br i1 %i.di, label %.lr.ph.preheader.i.i.i.i.i.i.i, label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.p
  %i.dj = udiv exact i64 %i.dh, 56
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.ed, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i.i.pn = phi ptr [ %.0811.i.i.i.i.i.i.i, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ec, %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i ], [ %i.de, %.lr.ph.preheader.i.i.i.i.i.i.i ] ; 7 uses
  %.0811.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 56 ; 2 uses
  %i.dk = load i64, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !450
  store i64 %i.dk, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !450
  %i.dl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 64
  %i.dm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 80 ; 3 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.dl, ptr noundef %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 72 ; 4 uses
  store ptr null, ptr %i.dm, align 8, !tbaa !33
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 88 ; 2 uses
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 96
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i.pn, i64 104 ; 2 uses
  store i64 0, ptr %i.dr, align 8, !tbaa !36
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 16 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !27
  store i32 %i.dv, ptr %i.do, align 8, !tbaa !27
  store ptr %i.dt, ptr %i.dm, align 8, !tbaa !33
  %i.dw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 40
  %i.dy = load <2 x ptr>, ptr %i.dw, align 8, !tbaa !37
  store <2 x ptr> %i.dy, ptr %i.dp, align 8, !tbaa !37
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr %i.do, ptr %i.dz, align 8, !tbaa !57
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !36
  store i64 %i.eb, ptr %i.dr, align 8, !tbaa !36
  store ptr null, ptr %i.ds, align 8, !tbaa !33
  store ptr %i.du, ptr %i.dw, align 8, !tbaa !34
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !35
  store i64 0, ptr %i.ea, align 8, !tbaa !36
  br label %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i

_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i: ; preds = %bb.q, %.lr.ph.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 56
  %i.ed = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.ee = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i, !llvm.loop !492

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i: ; preds = %_ZN9Stockfish8L3DomainaSEOS0_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.bd, align 8, !tbaa !455
  br label %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit

_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit: ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit, %bb.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i
  %i.ef = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish8L3DomainESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.loopexit.i.i ], [ %i.db, %bb.p ], [ %i.db, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE15_M_merge_uniqueIS3_EEvRS_ImmS1_T_S4_E.exit ] ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -56
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !455
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 -48
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !33
  call void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.eh, ptr noundef %i.ej)
  %.pre141 = load ptr, ptr %i.bd, align 8, !tbaa !455
  %.pre142 = load ptr, ptr %i.bc, align 8, !tbaa !460
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph105, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit
  %i.ek = phi ptr [ %.pre142, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bn, %.lr.ph105 ] ; 4 uses
  %i.el = phi ptr [ %.pre141, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %i.bo, %.lr.ph105 ] ; 4 uses
  %.1 = phi i1 [ true, %_ZNSt6vectorIN9Stockfish8L3DomainESaIS1_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EE.exit ], [ %.034102, %.lr.ph105 ] ; 2 uses
  %i.em = add nuw i64 %i.bp, 1                    ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = ptrtoint ptr %i.ek to i64
  %i.ep = sub i64 %i.en, %i.eo
  %i.eq = sdiv exact i64 %i.ep, 56
  %i.er = icmp ult i64 %i.em, %i.eq
  br i1 %i.er, label %.lr.ph105, label %._crit_edge106, !llvm.loop !493

._crit_edge118:                                   ; preds = %._crit_edge113, %.preheader
  %.136.lcssa = phi i64 [ %.035122, %.preheader ], [ %i.et, %._crit_edge113 ]
  %i.es = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.077.0121) #30 ; 2 uses
  %.not86 = icmp eq ptr %i.es, %i.a
  br i1 %.not86, label %._crit_edge125, label %bb.h

.lr.ph117:                                        ; preds = %.preheader, %._crit_edge113
  %.136116 = phi i64 [ %i.et, %._crit_edge113 ], [ %.035122, %.preheader ] ; 5 uses
  %.sroa.069.0115 = phi ptr [ %i.ex, %._crit_edge113 ], [ %i.bm, %.preheader ] ; 3 uses
  %i.et = add i64 %.136116, 1                     ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 32
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !34 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 16 ; 2 uses
  %.not88109 = icmp eq ptr %i.ev, %i.ew
  br i1 %.not88109, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit, %.lr.ph117
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.069.0115, i64 56 ; 2 uses
  %.not87 = icmp eq ptr %i.ex, %i.bl
  br i1 %.not87, label %._crit_edge118, label %.lr.ph117

.lr.ph112:                                        ; preds = %.lr.ph117, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit
  %.sroa.065.0110 = phi ptr [ %i.jh, %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit ], [ %i.ev, %.lr.ph117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.065.0110, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !25 ; 11 uses
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i.i, label %.preheader.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph112, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fa, %.lr.ph112 ] ; 3 uses
  %.0811.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.j, %.lr.ph112 ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !25
  %i.fd = icmp ult i64 %i.fc, %i.ez               ; 2 uses
  %.19.i.i.i.i.i = select i1 %i.fd, ptr %.0811.i.i.i.i.i, ptr %.012.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i = select i1 %i.fd, i64 24, i64 16
  %.1.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i
  %.1.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.1.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fe = icmp eq ptr %.19.i.i.i.i.i, %i.j
  br i1 %i.fe, label %.preheader.i, label %.split.i

.split.i:                                         ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !25
  %.not8.i = icmp ult i64 %i.ez, %i.fg
  br i1 %.not8.i, label %.preheader.i, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

.preheader.i:                                     ; preds = %.split.i, %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i, %.lr.ph112
  %i.fh = load ptr, ptr %i.o, align 8, !tbaa !59  ; 2 uses
  %i.fi = load ptr, ptr %0, align 8, !tbaa !58    ; 3 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk
  %i.fm = sdiv exact i64 %i.fl, 48
  %.not11.i = icmp ugt i64 %i.fm, %.136116
  br i1 %.not11.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i
  %i.fn = phi ptr [ %i.hg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fi, %.preheader.i ] ; 5 uses
  %i.fo = phi ptr [ %i.hh, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ], [ %i.fh, %.preheader.i ] ; 9 uses
  %i.fp = load ptr, ptr %i.p, align 8, !tbaa !55
  %.not.i.i38 = icmp eq ptr %i.fo, %i.fp
  br i1 %.not.i.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i8 0, i64 24, i1 false)
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.fq, ptr %i.fs, align 8, !tbaa !35
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i64 0, ptr %i.ft, align 8, !tbaa !36
  %i.fu = load ptr, ptr %i.o, align 8, !tbaa !59
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 48 ; 2 uses
  store ptr %i.fv, ptr %i.o, align 8, !tbaa !59
  %.pre143 = load ptr, ptr %0, align 8, !tbaa !58
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.fw = ptrtoint ptr %i.fo to i64
  %i.fx = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx                    ; 3 uses
  %i.fz = icmp eq i64 %i.fy, 9223372036854775776
  br i1 %i.fz, label %bb.u, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.t
  %i.ga = sdiv exact i64 %i.fy, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gb = add nsw i64 %.sroa.speculated.i.i, %i.ga ; 2 uses
  %i.gc = icmp ult i64 %i.gb, %i.ga
  %i.gd = call i64 @llvm.umin.i64(i64 %i.gb, i64 192153584101141162)
  %i.ge = select i1 %i.gc, i64 192153584101141162, i64 %i.gd ; 3 uses
  %.not.i.i60 = icmp ne i64 %i.ge, 0
  call void @llvm.assume(i1 %.not.i.i60)
  %i.gf = mul nuw nsw i64 %i.ge, 48
  %i.gg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #31 ; 6 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fy ; 5 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gh, i8 0, i64 24, i1 false)
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %i.gi, ptr %i.gk, align 8, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store i64 0, ptr %i.gl, align 8, !tbaa !36
  %.not10.i.i.i.i61 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not10.i.i.i.i61, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i62

.lr.ph.i.i.i.i62:                                 ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i63 = phi ptr [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  %.0911.i.i.i.i = phi ptr [ %i.hc, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.fn, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.gm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 8 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !33, !alias.scope !497, !noalias !494 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i62
  %i.gp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 3 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !27, !alias.scope !497, !noalias !494
  %i.gr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !34, !alias.scope !497, !noalias !494
  %i.gt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !35, !alias.scope !497, !noalias !494
  %i.gv = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gm, ptr %i.gv, align 8, !tbaa !57, !noalias !499
  %i.gw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40 ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !36, !alias.scope !497, !noalias !494
  store ptr null, ptr %i.gn, align 8, !tbaa !33, !alias.scope !497, !noalias !494
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !34, !alias.scope !497, !noalias !494
  store ptr %i.gp, ptr %i.gt, align 8, !tbaa !35, !alias.scope !497, !noalias !494
  store i64 0, ptr %i.gw, align 8, !tbaa !36, !alias.scope !497, !noalias !494
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i62
  %.sink6.i.i.i.i.i = phi ptr [ %i.gs, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i62 ]
  %.sink5.i.i.i.i.i = phi ptr [ %i.gu, %bb.v ], [ %i.gm, %.lr.ph.i.i.i.i62 ]
  %.sink.i.i.i.i.i = phi i64 [ %i.gx, %bb.v ], [ 0, %.lr.ph.i.i.i.i62 ]
  %.sink.i.i.i.i.i.i.i.i.i = phi i32 [ %i.gq, %bb.v ], [ 0, %.lr.ph.i.i.i.i62 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 16
  store ptr %i.go, ptr %i.gy, align 8, !tbaa !33, !alias.scope !494, !noalias !497
  %i.gz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 24
  store ptr %.sink6.i.i.i.i.i, ptr %i.gz, align 8, !tbaa !34, !alias.scope !494, !noalias !497
  %i.ha = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 32
  store ptr %.sink5.i.i.i.i.i, ptr %i.ha, align 8, !tbaa !35, !alias.scope !494, !noalias !497
  %i.hb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 40
  store i64 %.sink.i.i.i.i.i, ptr %i.hb, align 8, !tbaa !36, !alias.scope !494, !noalias !497
  store i32 %.sink.i.i.i.i.i.i.i.i.i, ptr %i.gm, align 8, !tbaa !27, !alias.scope !494, !noalias !497
  %i.hc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i63, i64 48 ; 2 uses
  %.not.i.i.i.i64 = icmp eq ptr %i.hc, %i.fo
  br i1 %.not.i.i.i.i64, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, label %.lr.ph.i.i.i.i62, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.gg, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit.i ], [ %i.hd, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.he = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.fn, null
  br i1 %.not.i28.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i
  %6 = load ptr, ptr %i.p, align 8, !tbaa !55
  %7 = ptrtoint ptr %6 to i64
  %8 = sub i64 %7, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fn, i64 noundef %8) #33
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i, %bb.w
  store ptr %i.gg, ptr %0, align 8, !tbaa !58
  store ptr %i.he, ptr %i.o, align 8, !tbaa !59
  %i.hf = getelementptr inbounds nuw [48 x i8], ptr %i.gg, i64 %i.ge
  store ptr %i.hf, ptr %i.p, align 8, !tbaa !55
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit, %bb.s
  %i.hg = phi ptr [ %.pre143, %bb.s ], [ %i.gg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 3 uses
  %i.hh = phi ptr [ %i.fv, %bb.s ], [ %i.he, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit ] ; 2 uses
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = sdiv exact i64 %i.hk, 48
  %.not.i39 = icmp ugt i64 %i.hl, %.136116
  br i1 %.not.i39, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !259

._crit_edge.i:                                    ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i, %.preheader.i
  %.lcssa10.i = phi ptr [ %i.fi, %.preheader.i ], [ %i.hg, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit.i ]
  %i.hm = getelementptr inbounds nuw [48 x i8], ptr %.lcssa10.i, i64 %.136116 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 3 uses
  %.02022.i.i.i.i = load ptr, ptr %i.hn, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i.i = icmp eq ptr %.02022.i.i.i.i, null
  br i1 %.not23.i.i.i.i, label %._crit_edge.thread.i.i.i.i, label %.lr.ph.i.i.i.i40

.lr.ph.i.i.i.i40:                                 ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i40
  %.02024.i.i.i.i = phi ptr [ %.020.i.i.i.i, %.lr.ph.i.i.i.i40 ], [ %.02022.i.i.i.i, %._crit_edge.i ] ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 32
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !25 ; 2 uses
  %i.hr = icmp ult i64 %i.ez, %i.hq               ; 2 uses
  %.in.v.i.i.i.i = select i1 %i.hr, i64 16, i64 24
  %.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i.i, i64 %.in.v.i.i.i.i
  %.020.i.i.i.i = load ptr, ptr %.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %.020.i.i.i.i, null
  br i1 %.not.i.i.i.i41, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i40, !llvm.loop !38

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i40
  br i1 %i.hr, label %._crit_edge.thread.i.i.i.i, label %bb.y

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %._crit_edge.i
  %.019.lcssa29.i.i.i.i = phi ptr [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ho, %._crit_edge.i ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !34
  %i.hu = icmp eq ptr %.019.lcssa29.i.i.i.i, %i.ht
  br i1 %i.hu, label %select.unfold.i.i.i, label %bb.x

bb.x:                                             ; preds = %._crit_edge.thread.i.i.i.i
  %i.hv = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i.i) #30
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i
  %i.hw = phi i64 [ %.pre.i.i.i, %bb.x ], [ %i.hq, %._crit_edge.i.i.i.i ]
  %.019.lcssa28.i.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %bb.x ], [ %.02024.i.i.i.i, %._crit_edge.i.i.i.i ]
  %i.hx = icmp ult i64 %i.hw, %i.ez
  br i1 %i.hx, label %select.unfold.i.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

select.unfold.i.i.i:                              ; preds = %bb.y, %._crit_edge.thread.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i = phi ptr [ %.019.lcssa29.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %.019.lcssa28.i.i.i.i, %bb.y ] ; 3 uses
  %i.hy = icmp eq ptr %.sroa.4.0.i.ph.i.i.i, %i.ho
  br i1 %i.hy, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %select.unfold.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i.i, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !25
  %i.ib = icmp ult i64 %i.ez, %i.ia
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i: ; preds = %bb.z, %select.unfold.i.i.i
  %i.ic = phi i1 [ %i.ib, %bb.z ], [ true, %select.unfold.i.i.i ]
  %i.id = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  store i64 %i.ez, ptr %i.ie, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ic, ptr noundef nonnull %i.id, ptr noundef nonnull %.sroa.4.0.i.ph.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ho) #28
  %i.if = getelementptr inbounds nuw i8, ptr %i.hm, i64 40 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !36
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i:    ; preds = %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i.i, %bb.y
  %i.ii = load ptr, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %.not10.i.i.i.i48 = icmp eq ptr %i.ii, null
  br i1 %.not10.i.i.i.i48, label %.critedge.i58, label %.lr.ph.i.i.i.i50

.lr.ph.i.i.i.i50:                                 ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i, %.lr.ph.i.i.i.i50
  %.012.i.i.i.i51 = phi ptr [ %.1.i.i.i.i56, %.lr.ph.i.i.i.i50 ], [ %i.ii, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ] ; 3 uses
  %.0811.i.i.i.i52 = phi ptr [ %.19.i.i.i.i53, %.lr.ph.i.i.i.i50 ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i51, i64 32
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !25
  %i.il = icmp ult i64 %i.ik, %i.ez               ; 2 uses
  %.19.i.i.i.i53 = select i1 %i.il, ptr %.0811.i.i.i.i52, ptr %.012.i.i.i.i51 ; 6 uses
  %.1.in.v.i.i.i.i54 = select i1 %i.il, i64 24, i64 16
  %.1.in.i.i.i.i55 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i51, i64 %.1.in.v.i.i.i.i54
  %.1.i.i.i.i56 = load ptr, ptr %.1.in.i.i.i.i55, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i57 = icmp eq ptr %.1.i.i.i.i56, null
  br i1 %.not.i.i.i.i57, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, label %.lr.ph.i.i.i.i50, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i: ; preds = %.lr.ph.i.i.i.i50
  %i.im = icmp eq ptr %.19.i.i.i.i53, %i.j
  br i1 %i.im, label %.critedge.i58, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i
  %i.in = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i53, i64 32
  %i.io = load i64, ptr %i.in, align 8, !tbaa !25
  %i.ip = icmp ult i64 %i.ez, %i.io
  br i1 %i.ip, label %.critedge.i58, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

.critedge.i58:                                    ; preds = %bb.aa, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i
  %.08.lcssa.i.i.i14.i = phi ptr [ %.19.i.i.i.i53, %bb.aa ], [ %.19.i.i.i.i53, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit.i ], [ %i.j, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit.i ]
  %i.iq = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32 ; 3 uses
  store i64 %i.ez, ptr %i.ir, align 8, !tbaa !261
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 40
  store i64 0, ptr %i.is, align 8, !tbaa !263
  %i.it = call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr %.08.lcssa.i.i.i14.i, ptr noundef nonnull align 8 dereferenceable(8) %i.ir) ; 2 uses
  %i.iu = extractvalue { ptr, ptr } %i.it, 0      ; 2 uses
  %i.iv = extractvalue { ptr, ptr } %i.it, 1      ; 4 uses
  %.not.i.i59 = icmp eq ptr %i.iv, null
  br i1 %.not.i.i59, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i58
  %.not.i.i.i4.i = icmp ne ptr %i.iu, null
  %i.iw = icmp eq ptr %i.iv, %i.j
  %or.cond.i.i.i.i = or i1 %.not.i.i.i4.i, %i.iw
  br i1 %or.cond.i.i.i.i, label %.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.iy = load i64, ptr %i.ir, align 8, !tbaa !25
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !25
  %i.ja = icmp ult i64 %i.iy, %i.iz
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ac, %bb.ab
  %i.jb = phi i1 [ %i.ja, %bb.ac ], [ true, %bb.ab ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.jb, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #28
  %i.jc = load i64, ptr %i.n, align 8, !tbaa !36
  %i.jd = add i64 %i.jc, 1
  store i64 %i.jd, ptr %i.n, align 8, !tbaa !36
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

bb.ad:                                            ; preds = %.critedge.i58
  call void @_ZdlPvm(ptr noundef nonnull %i.iq, i64 noundef 48) #33
  br label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit: ; preds = %bb.aa, %.thread.i.i, %bb.ad
  %.sroa.09.0.i = phi ptr [ %.19.i.i.i.i53, %bb.aa ], [ %i.iq, %.thread.i.i ], [ %i.iu, %bb.ad ]
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i, i64 40
  store i64 %.136116, ptr %i.je, align 8, !tbaa !25
  %i.jf = load i64, ptr %i.r, align 8, !tbaa !264
  %i.jg = icmp ugt i64 %i.ez, %i.jf
  br i1 %i.jg, label %bb.ae, label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

bb.ae:                                            ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit
  store i64 %i.ez, ptr %i.r, align 8, !tbaa !264
  br label %_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit

_ZN9Stockfish10NumaConfig15add_cpu_to_nodeEmm.exit: ; preds = %.split.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_.exit, %bb.ae
  %i.jh = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.065.0110) #30 ; 2 uses
  %.not88 = icmp eq ptr %i.jh, %i.ew
  br i1 %.not88, label %._crit_edge113, label %.lr.ph112
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish5splitESt17basic_string_viewIcSt11char_traitsIcEES3_(ptr dead_on_unwind noalias writable sret(%"class.std::vector.179") align 8 %0, i64 %1, ptr %2, i64 %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12emplace_backIJS3_EEERS3_DpOT_.exit27, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp eq i64 %3, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %2 to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %invariant.op = sub i64 1, %3
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.o
  %i.h = phi ptr [ %i.as, %bb.o ], [ null, %.preheader ] ; 9 uses
  %i.i = phi ptr [ %i.at, %bb.o ], [ null, %.preheader ] ; 8 uses
  %i.j = phi ptr [ %i.au, %bb.o ], [ null, %.preheader ] ; 14 uses
  %.09 = phi i64 [ %i.av, %bb.o ], [ 0, %.preheader ] ; 14 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not27.i.i = icmp ugt i64 %.09, %1
  br i1 %.not27.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i = icmp ult i64 %.09, %1
  br i1 %.not.i.i, label %bb.e, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread

end_hunk_4
begin_hunk_5_@_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS7_ERS1_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !37 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i64, ptr %2, align 8, !tbaa !25     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = icmp ult i64 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !37 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !529

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #30 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i64, ptr %.phi.trans.insert80, align 8, !tbaa !25
  %.pre82 = load i64, ptr %2, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i64 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i64 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i64 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %2, align 8, !tbaa !25     ; 8 uses
  %i.y = load i64, ptr %i.w, align 8, !tbaa !25   ; 2 uses
  %i.z = icmp ult i64 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !25
  %i.ag = icmp ult i64 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !132
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !25 ; 2 uses
  %i.an = icmp ult i64 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !37 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !529

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #30 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i64, ptr %.phi.trans.insert78, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i64 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i64 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i64 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #30 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25
  %i.az = icmp ult i64 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !132
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !37 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !25 ; 2 uses
  %i.bg = icmp ult i64 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !37 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !529

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #30 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i64 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i64 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorIN9Stockfish8L3DomainESaIS4_EEESt10_Select1stIS7_ESt4lessImESaIS7_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %2 = load i64, ptr %1, align 8, !tbaa !25       ; 2 uses
  br label %.lr.ph.i.i.i.a

.lr.ph.i.i.i.a:                                   ; preds = %.lr.ph.i.i.i.a, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %.lr.ph.i.i.i.a ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %.lr.ph.i.i.i.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  %i.f = icmp ult i64 %i.e, %2                    ; 2 uses
  %.19.i.i.i = select i1 %i.f, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, label %.lr.ph.i.i.i.a, !llvm.loop !260

_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit: ; preds = %.lr.ph.i.i.i.a
  %i.g = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = icmp ult i64 %2, %i.i
  br i1 %i.j, label %.critedge, label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit, %bb.b
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.b ], [ %.19.i.i.i, %_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEE11lower_boundERS3_.exit ], [ %i.c, %bb.a ]
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #31 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  %3 = load i64, ptr %1, align 8, !tbaa !25
  store i64 %3, ptr %i.l, align 8, !tbaa !261
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %i.m, align 8, !tbaa !263
  %i.n = tail call { ptr, ptr } @_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS2_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.n, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.o, null
  %i.q = icmp eq ptr %i.p, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.q
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load i64, ptr %i.l, align 8, !tbaa !25
  %i.t = load i64, ptr %i.r, align 8, !tbaa !25
  %i.u = icmp ult i64 %i.s, %i.t
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c
  %i.v = phi i1 [ %i.u, %bb.d ], [ true, %bb.c ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.v, ptr noundef nonnull %i.k, ptr noundef nonnull %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !36
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.w, align 8, !tbaa !36
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

bb.e:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #33
  br label %_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit

_ZNSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESD_IJEEEEESt17_Rb_tree_iteratorIS2_ESt23_Rb_tree_const_iteratorIS2_EDpOT_.exit: ; preds = %bb.e, %.thread.i, %bb.b
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.b ], [ %i.k, %.thread.i ], [ %i.o, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.z
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !58     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.r, ptr %i.t, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store i64 0, ptr %i.u, align 8, !tbaa !36
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !533)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33, !alias.scope !533, !noalias !530 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !27, !alias.scope !533, !noalias !530
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34, !alias.scope !533, !noalias !530
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35, !alias.scope !533, !noalias !530
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.v, ptr %i.ae, align 8, !tbaa !57, !noalias !535
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !36, !alias.scope !533, !noalias !530
  store ptr null, ptr %i.w, align 8, !tbaa !33, !alias.scope !533, !noalias !530
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !34, !alias.scope !533, !noalias !530
  store ptr %i.y, ptr %i.ac, align 8, !tbaa !35, !alias.scope !533, !noalias !530
  store i64 0, ptr %i.af, align 8, !tbaa !36, !alias.scope !533, !noalias !530
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %.sink6.i.i.i.i = phi ptr [ %i.ab, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink5.i.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.v, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i = phi i64 [ %i.ag, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %.sink.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.c ], [ 0, %.lr.ph.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store ptr %i.x, ptr %i.ah, align 8, !tbaa !33, !alias.scope !530, !noalias !533
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  store ptr %.sink6.i.i.i.i, ptr %i.ai, align 8, !tbaa !34, !alias.scope !530, !noalias !533
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  store ptr %.sink5.i.i.i.i, ptr %i.aj, align 8, !tbaa !35, !alias.scope !530, !noalias !533
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %.sink.i.i.i.i, ptr %i.ak, align 8, !tbaa !36, !alias.scope !530, !noalias !533
  store i32 %.sink.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !27, !alias.scope !530, !noalias !533
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.al, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12_M_check_lenEmPKc.exit ], [ %i.am, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i15 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i15, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16

.lr.ph.i.i.i16:                                   ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20
  %.012.i.i.i17 = phi ptr [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  %.0911.i.i.i18 = phi ptr [ %i.be, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ], [ %1, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !536)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !539)
  %i.ao = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 8 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 16 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33, !alias.scope !539, !noalias !536 ; 3 uses
  %.not.i.i.i.i.i.i.i.i19 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i.i.i19, label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 8 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !27, !alias.scope !539, !noalias !536
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34, !alias.scope !539, !noalias !536
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 32 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35, !alias.scope !539, !noalias !536
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.ax, align 8, !tbaa !57, !noalias !541
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 40 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !36, !alias.scope !539, !noalias !536
  store ptr null, ptr %i.ap, align 8, !tbaa !33, !alias.scope !539, !noalias !536
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !34, !alias.scope !539, !noalias !536
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !35, !alias.scope !539, !noalias !536
  store i64 0, ptr %i.ay, align 8, !tbaa !36, !alias.scope !539, !noalias !536
  br label %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20

_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20: ; preds = %bb.d, %.lr.ph.i.i.i16
  %.sink6.i.i.i.i21 = phi ptr [ %i.au, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink5.i.i.i.i22 = phi ptr [ %i.aw, %bb.d ], [ %i.ao, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i23 = phi i64 [ %i.az, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %.sink.i.i.i.i.i.i.i.i24 = phi i32 [ %i.as, %bb.d ], [ 0, %.lr.ph.i.i.i16 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 16
  store ptr %i.aq, ptr %i.ba, align 8, !tbaa !33, !alias.scope !536, !noalias !539
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 24
  store ptr %.sink6.i.i.i.i21, ptr %i.bb, align 8, !tbaa !34, !alias.scope !536, !noalias !539
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 32
  store ptr %.sink5.i.i.i.i22, ptr %i.bc, align 8, !tbaa !35, !alias.scope !536, !noalias !539
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 40
  store i64 %.sink.i.i.i.i23, ptr %i.bd, align 8, !tbaa !36, !alias.scope !536, !noalias !539
  store i32 %.sink.i.i.i.i.i.i.i.i24, ptr %i.ao, align 8, !tbaa !27, !alias.scope !536, !noalias !539
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i18, i64 48 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i17, i64 48 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.be, %i.b
  br i1 %.not.i.i.i25, label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, label %.lr.ph.i.i.i16, !llvm.loop !258

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27: ; preds = %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit
  %.0.lcssa.i.i.i26 = phi ptr [ %i.an, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit ], [ %i.bf, %_ZSt19__relocate_object_aISt3setImSt4lessImESaImEES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i28 = icmp eq ptr %i.c, null
  br i1 %.not.i28, label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !55
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #33
  br label %_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseISt3setImSt4lessImESaImEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27, %bb.e
  store ptr %i.p, ptr %0, align 8, !tbaa !58
  store ptr %.0.lcssa.i.i.i26, ptr %i.a, align 8, !tbaa !59
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !55
  ret void
end_hunk_5
begin_hunk_6_@_ZN9Stockfish9Benchmark5perftILb1EEEmRNS_8PositionEi:bb.a
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10) #28, !inline_history !340
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i8 noundef signext %.0.i.i.i) #28
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar) #28
  %i.at = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9StockfishlsERSoNS_8SyncCoutE(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 1) #28 ; 0 uses
  %i.au = load ptr, ptr %5, align 8, !tbaa !49    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.l
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !52
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %i.ay = getelementptr inbounds nuw i8, ptr %.02630, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.ay, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9Stockfish9Benchmark5perftILb0EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %2 = alloca %"struct.Stockfish::StateInfo", align 8 ; 4 uses
  %3 = alloca %"struct.Stockfish::MoveList", align 8 ; 7 uses
  %4 = alloca %"struct.Stockfish::MoveList", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 512
  %i.b = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %3) #28 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !563
  %.not21 = icmp eq ptr %3, %i.b
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = icmp eq i32 %1, 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 622 ; 2 uses
  %i.g = add nsw i32 %1, -1
  %i.h = ptrtoint ptr %4 to i64
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.023.us = phi i64 [ %i.n, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.01922.us = phi ptr [ %i.o, %.lr.ph.split.us ], [ %3, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload.us = load i16, ptr %.01922.us, align 2, !tbaa !566 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !61
  %i.i = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload.us) #28
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload.us, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.j = call noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048) %0, ptr noundef nonnull align 8 dereferenceable(520) %4) #28
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.h
  %i.m = ashr exact i64 %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.n = add i64 %i.m, %.023.us                   ; 2 uses
  %.sroa.0.0.copyload.us = load i16, ptr %.01922.us, align 2, !tbaa !566
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload.us) #28
  %i.o = getelementptr inbounds nuw i8, ptr %.01922.us, i64 2 ; 2 uses
  %.not.us = icmp eq ptr %i.o, %i.b
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.lr.ph.split.us ], [ %i.r, %.lr.ph.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret i64 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.023 = phi i64 [ %i.r, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.01922 = phi ptr [ %i.s, %.lr.ph.split ], [ %3, %.lr.ph ] ; 3 uses
  %.sroa.01.0.copyload = load i16, ptr %.01922, align 2, !tbaa !566 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !61
  %i.p = call noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload) #28
  call void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.01.0.copyload, ptr noundef nonnull align 8 dereferenceable(192) %2, i1 noundef zeroext %i.p, ptr noundef nonnull align 1 dereferenceable(7) %i.f, ptr noundef nonnull align 8 dereferenceable(416) %i.d, ptr noundef null, ptr noundef null) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.q = call noundef i64 @_ZN9Stockfish9Benchmark5perftILb0EEEmRNS_8PositionEi(ptr noundef nonnull align 8 dereferenceable(1048) %0, i32 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.r = add i64 %i.q, %.023                      ; 2 uses
  %.sroa.0.0.copyload = load i16, ptr %.01922, align 2, !tbaa !566
  call void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048) %0, i16 %.sroa.0.0.copyload) #28
  %i.s = getelementptr inbounds nuw i8, ptr %.01922, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.s, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph.split
}

declare void @_ZN9Stockfish8Position9undo_moveENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

declare void @_ZN9Stockfish9UCIEngine4moveB5cxx11ENS_4MoveEb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i16, i1 noundef zeroext) local_unnamed_addr #6

declare noundef ptr @_ZN9Stockfish8generateILNS_7GenTypeE4EEEPNS_4MoveERKNS_8PositionES3_(ptr noundef nonnull align 8 dereferenceable(1048), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !214    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.c, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, !prof !578

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #31
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !214
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !217
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !219
  %i.n = load ptr, ptr %1, align 8, !tbaa !232    ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.n, %i.o
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 7 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ac, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.p, ptr %.09.i.i.i.i, align 8, !tbaa !46
  %i.q = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !49 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.s, ptr %i.a, align 8, !tbaa !25
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.u = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #28 ; 2 uses
  store ptr %i.u, ptr %.09.i.i.i.i, align 8, !tbaa !49
  %i.v = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %i.v, ptr %i.p, align 8, !tbaa !52
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.d, %.lr.ph.i.i.i.i
  %i.w = phi ptr [ %i.u, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.x = load i8, ptr %i.q, align 1, !tbaa !52
  store i8 %i.x, ptr %i.w, align 1, !tbaa !52
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.q, i64 %i.s, i1 false)
  br label %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i.i.i.i.i
  %i.y = load i64, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !51
  %i.aa = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 32 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, %i.o
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !579

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_S7_ET0_T_SG_SF_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit ], [ %i.ad, %_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.k, align 8, !tbaa !217
  ret void
}

declare void @_ZN9Stockfish8Position7do_moveENS_4MoveERNS_9StateInfoEbRNS_10DirtyPieceERNS_12DirtyThreatsEPKNS_18TranspositionTableEPKNS_15SharedHistoriesE(ptr noundef nonnull align 8 dereferenceable(1048), i16, ptr noundef nonnull align 8 dereferenceable(192), i1 noundef zeroext, ptr noundef nonnull align 1 dereferenceable(7), ptr noundef nonnull align 8 dereferenceable(416), ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK9Stockfish8Position11gives_checkENS_4MoveE(ptr noundef nonnull align 8 dereferenceable(1048), i16) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9Stockfish10NumaConfig21add_cpu_range_to_nodeEmmm(ptr noundef nonnull align 8 dereferenceable(81) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %.not25 = icmp ugt i64 %2, %3                   ; 2 uses
  br i1 %.not25, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not10.i.i.i.i, label %.preheader, label %.lr.ph.i.i.i.i.preheader

.preheader:                                       ; preds = %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !58
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 48
  %.not1728 = icmp ugt i64 %i.k, %1
  br i1 %.not1728, label %._crit_edge, label %.lr.ph29

.lr.ph29:                                         ; preds = %.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread
  %.01426 = phi i64 [ %i.s, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread ], [ %2, %.lr.ph ] ; 3 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i.i.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25
  %i.o = icmp ult i64 %i.n, %.01426               ; 2 uses
  %.19.i.i.i.i = select i1 %i.o, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.o, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !251

_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = icmp eq ptr %.19.i.i.i.i, %i.d
  br i1 %i.p, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit

_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %.not21 = icmp ult i64 %.01426, %i.r
  br i1 %.not21, label %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread, label %.thread

_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit.thread: ; preds = %_ZNKSt8_Rb_treeImSt4pairIKmmESt10_Select1stIS2_ESt4lessImESaIS2_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS2_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i.i, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit
  %i.s = add i64 %.01426, 1                       ; 2 uses
  %.not = icmp ugt i64 %i.s, %3
  br i1 %.not, label %.preheader, label %.lr.ph.i.i.i.i.preheader, !llvm.loop !580

bb.b:                                             ; preds = %.lr.ph29, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit
  %i.t = phi ptr [ %i.f, %.lr.ph29 ], [ %i.ab, %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit ] ; 7 uses
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !55
  %.not.i = icmp eq ptr %i.t, %i.u
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  store ptr %i.v, ptr %i.w, align 8, !tbaa !34
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.v, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i64 0, ptr %i.y, align 8, !tbaa !36
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !59
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.t)
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !59
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit

_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit: ; preds = %bb.c, %bb.d
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !58
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = sdiv exact i64 %i.af, 48
  %.not17 = icmp ugt i64 %i.ag, %1
  br i1 %.not17, label %._crit_edge, label %bb.b, !llvm.loop !581

._crit_edge:                                      ; preds = %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE12emplace_backIJEEERS4_DpOT_.exit, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  br i1 %.not25, label %._crit_edge36, label %.lr.ph35

.lr.ph35:                                         ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.e

._crit_edge36:                                    ; preds = %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !264
  %i.ak = icmp ugt i64 %3, %i.aj
  br i1 %i.ak, label %bb.i, label %.thread

bb.e:                                             ; preds = %.lr.ph35, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit
  %storemerge31 = phi i64 [ %2, %.lr.ph35 ], [ %i.bk, %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit ] ; 3 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !58
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %1 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %.02022.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %bb.e ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !25 ; 2 uses
  %i.ar = icmp ult i64 %storemerge31, %i.aq       ; 2 uses
  %.in.v.i.i.i = select i1 %i.ar, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8, !tbaa !37 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !38

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i
  br i1 %i.ar, label %._crit_edge.thread.i.i.i, label %bb.g

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i, %bb.e
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i ], [ %i.ao, %bb.e ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !34
  %i.au = icmp eq ptr %.019.lcssa29.i.i.i, %i.at
  br i1 %i.au, label %select.unfold.i.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i.i.i
  %i.av = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #30
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !25
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i.i.i
  %i.aw = phi i64 [ %.pre.i.i, %bb.f ], [ %i.aq, %._crit_edge.i.i.i ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.f ], [ %.02024.i.i.i, %._crit_edge.i.i.i ]
  %i.ax = icmp ult i64 %i.aw, %storemerge31
  br i1 %i.ax, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

select.unfold.i.i:                                ; preds = %bb.g, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.g ] ; 3 uses
  %i.ay = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.ao
  br i1 %i.ay, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %select.unfold.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !25
  %i.bb = icmp ult i64 %storemerge31, %i.ba
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i: ; preds = %bb.h, %select.unfold.i.i
  %i.bc = phi i1 [ %i.bb, %bb.h ], [ true, %select.unfold.i.i ]
  %i.bd = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %4 = load i64, ptr %i.a, align 8, !tbaa !25
  store i64 %4, ptr %i.be, align 8, !tbaa !25
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 40 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !36
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !36
  br label %_ZNSt3setImSt4lessImESaImEE6insertERKm.exit

_ZNSt3setImSt4lessImESaImEE6insertERKm.exit:      ; preds = %bb.g, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_IRKmNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSD_OT_RT0_.exit.i.i
  %i.bi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapImmSt4lessImESaISt4pairIKmmEEEixERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store i64 %1, ptr %i.bi, align 8, !tbaa !25
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !25
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !25
  %.not18 = icmp ugt i64 %i.bk, %3
  br i1 %.not18, label %._crit_edge36, label %bb.e, !llvm.loop !582

bb.i:                                             ; preds = %._crit_edge36
  store i64 %3, ptr %i.ai, align 8, !tbaa !264
  br label %.thread

.thread:                                          ; preds = %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit, %._crit_edge36, %bb.i
  %.not24 = phi i1 [ true, %bb.i ], [ true, %._crit_edge36 ], [ false, %_ZNK9Stockfish10NumaConfig15is_cpu_assignedEm.exit ]
  ret i1 %.not24
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #15

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noalias noundef nonnull ptr @_ZnwmSt11align_val_t(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvmSt11align_val_t(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS3_St14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %2 = alloca %class.anon.316, align 1            ; 3 uses
  %3 = alloca %class.anon.316, align 1            ; 3 uses
  %4 = alloca %"class.std::unique_ptr.264", align 8 ; 5 uses
  %5 = alloca %"class.std::thread", align 8       ; 6 uses
  %6 = alloca %class.anon.316, align 1            ; 3 uses
  %7 = alloca %class.anon.237, align 8            ; 5 uses
  %8 = alloca %"struct.Stockfish::SystemWideSharedConstant", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !266  ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 152
  %i.f = load i8, ptr %i.e, align 8, !tbaa !164
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i, label %bb.b, !prof !578

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(160) %.05.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !583

_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i
  store ptr %i.b, ptr %i.c, align 8, !tbaa !266
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE5clearEv.exit

_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155  ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load i8, ptr %i.j, align 8, !tbaa !143, !range !44, !noundef !45
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread, label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit

_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE5clearEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !59
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 48
  %i.t = icmp ugt i64 %i.s, 1
  br i1 %i.t, label %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread, label %bb.h

_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread: ; preds = %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE5clearEv.exit, %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %0, ptr %7, align 8, !tbaa !584
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.u, align 8, !tbaa !587
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 0, ptr %5, align 8, !tbaa !588
  %i.v = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS3_28LazyNumaReplicatedSystemWideINS3_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS9_St14default_deleteIS9_EEEUlvE_EEvmOT_EUlvE_EEEEEE, i64 16), ptr %i.v, align 8, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.i, ptr %i.w, align 8, !tbaa !467
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %7, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !172
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !25
  store ptr %i.v, ptr %4, align 8, !tbaa !590
  call void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 %4, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv) #28
  %i.x = load ptr, ptr %4, align 8, !tbaa !590    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i: ; preds = %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #28, !inline_history !592
  br label %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i

_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i: ; preds = %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i.i, %_ZNK9Stockfish10NumaConfig27requires_memory_replicationEv.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #28
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %5, align 8, !tbaa !25
  %.not.i.i6 = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i6, label %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i
  call void @_ZSt9terminatev() #32
  unreachable

_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit: ; preds = %_ZNSt6threadC2IZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS1_28LazyNumaReplicatedSystemWideINS1_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS7_St14default_deleteIS7_EEEUlvE_EEvmOT_EUlvE_JEvEESG_DpOT0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !59
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !58
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = sdiv exact i64 %i.ag, 48                ; 4 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !266 ; 3 uses
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !161 ; 2 uses
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = sdiv exact i64 %i.am, 160               ; 3 uses
  %i.ao = icmp ugt i64 %i.ah, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit
  %i.ap = sub nuw nsw i64 %i.ah, %i.an
  call void @_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.ap)
  br label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNK9Stockfish10NumaConfig20execute_on_numa_nodeIZNS_28LazyNumaReplicatedSystemWideINS_4Eval4NNUE8NetworksEE22prepare_replicate_fromEOSt10unique_ptrIS5_St14default_deleteIS5_EEEUlvE_EEvmOT_.exit
  %i.aq = icmp ult i64 %i.ah, %i.an
  br i1 %i.aq, label %bb.f, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw [160 x i8], ptr %i.aj, i64 %i.ah ; 3 uses
  %.not.i.i7 = icmp eq ptr %i.ai, %i.ar
  br i1 %.not.i.i7, label %_ZNSt6vectorIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEESaIS5_EE6resizeEm.exit, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %bb.f, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11
  %.05.i.i.i.i9 = phi ptr [ %i.au, %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11 ], [ %i.ar, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i9, i64 152
  %i.at = load i8, ptr %i.as, align 8, !tbaa !164
  %.not.i.i.i.i.i.i.i.i10 = icmp eq i8 %i.at, -1
  br i1 %.not.i.i.i.i.i.i.i.i10, label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11, label %bb.g, !prof !578

bb.g:                                             ; preds = %.lr.ph.i.i.i.i8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJSt9monostateN9Stockfish19SharedMemoryBackendINS4_4Eval4NNUE8NetworksEEENS4_27SharedMemoryBackendFallbackIS8_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS3_S9_SB_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(160) %.05.i.i.i.i9)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11

_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11: ; preds = %bb.g, %.lr.ph.i.i.i.i8
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i9, i64 160 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.au, %i.ai
  br i1 %.not.i.i.i.i12, label %_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i13, label %.lr.ph.i.i.i.i8, !llvm.loop !583

_ZSt8_DestroyIPN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvT_S7_.exit.i.i13: ; preds = %_ZSt8_DestroyIN9Stockfish24SystemWideSharedConstantINS0_4Eval4NNUE8NetworksEEEEvPT_.exit.i.i.i.i11
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !266
end_hunk_6
begin_hunk_7_@_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEC2EOS5_:bb.a
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i13
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !51
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !49
  store i64 0, ptr %i.az, align 8, !tbaa !51
  store i8 0, ptr %i.as, align 8, !tbaa !52
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %1)
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  store i32 -1, ptr %i.p, align 8, !tbaa !270
  store i64 0, ptr %i.az, align 8, !tbaa !51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !49
  store i8 0, ptr %i.bc, align 1, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !648 ; 5 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !648 ; 6 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 5                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.i = and i64 %i.f, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !649
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !649
  %i.n = icmp eq ptr %i.m, %0
  br i1 %i.n, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !649
  %i.q = icmp eq ptr %i.p, %0
  br i1 %i.q, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !649
  %i.t = icmp eq ptr %i.s, %0
  br i1 %i.t, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.v = add nsw i64 %.052.i.i.i.i, -1
  %i.w = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !651

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.d, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.f, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.b, %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.x, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.y = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !649
  %i.z = icmp eq ptr %i.y, %0
  br i1 %i.z, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ab = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !649
  %i.ac = icmp eq ptr %i.ab, %0
  br i1 %i.ac, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ae = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !649
  %i.af = icmp eq ptr %i.ae, %0
  %spec.select.i.i.i.i = select i1 %i.af, ptr %.sroa.032.2.i.i.i.i, ptr %i.c
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i: ; preds = %bb.c, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.ai, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit31 ], [ %i.ah, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit29 ], [ %i.ag, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.c ] ; 4 uses
  %i.aj = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.c
  %.sroa.07.026.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, i64 8 ; 2 uses
  %.not27.i.i = icmp eq ptr %.sroa.07.026.i.i, %i.c
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %.not27.i.i
  br i1 %or.cond.i.i, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i, %bb.l
  %.sroa.07.029.i.i = phi ptr [ %.sroa.07.0.i.i, %bb.l ], [ %.sroa.07.026.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ] ; 2 uses
  %.sroa.013.028.i.i = phi ptr [ %.sroa.013.1.i.i, %bb.l ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ] ; 3 uses
  %i.ak = load ptr, ptr %.sroa.07.029.i.i, align 8, !tbaa !649 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %0
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  store ptr %i.ak, ptr %.sroa.013.028.i.i, align 8, !tbaa !649
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.028.i.i, %.lr.ph.i.i ], [ %i.am, %bb.k ] ; 2 uses
  %.sroa.07.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i, i64 8 ; 2 uses
  %.not.i.i3 = icmp eq ptr %.sroa.07.0.i.i, %i.c
  br i1 %.not.i.i3, label %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, label %.lr.ph.i.i, !llvm.loop !652

_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit: ; preds = %bb.l, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i
  %.sroa.013.2.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops16_Iter_equals_valIKS6_EEET_SG_SG_T0_.exit.i.i ], [ %.sroa.013.1.i.i, %bb.l ] ; 2 uses
  %.not.i.i4 = icmp eq ptr %.sroa.013.2.i.i, %i.c
  br i1 %.not.i.i4, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i: ; preds = %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit
  %i.an = ptrtoint ptr %.sroa.013.2.i.i to i64
  %i.ao = sub i64 %i.an, %i.e
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZSt6removeIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEES6_ET_SC_SC_RKT0_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN9Stockfish3shm6detail16SharedMemoryBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i
  %i.aq = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17register_instanceEPNS1_16SharedMemoryBaseE(ptr noundef %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 2 uses
  %.not.i.i = icmp eq i32 %i.a, 0
  br i1 %.not.i.i, label %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.a) #32
  unreachable

_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit:       ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653 ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  %.not.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  store ptr %0, ptr %i.b, align 8, !tbaa !649
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

bb.d:                                             ; preds = %_ZNSt11scoped_lockIJSt5mutexEEC2ERS0_.exit
  %i.e = load ptr, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !428 ; 4 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 5 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 4 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.h ; 2 uses
  store ptr %0, ptr %i.q, align 8, !tbaa !649
  %i.r = icmp sgt i64 %i.h, 0
  br i1 %i.r, label %bb.f, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.not.i17.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %1 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  %2 = ptrtoint ptr %1 to i64
  %3 = sub i64 %2, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %3) #33
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.p, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, align 8, !tbaa !428
  store ptr %i.s, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 8), align 8, !tbaa !653
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.t, ptr getelementptr inbounds nuw (i8, ptr @_ZN9Stockfish3shm6detail20SharedMemoryRegistry17active_instances_E, i64 16), align 8, !tbaa !431
  br label %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.c, %_ZNSt6vectorIPN9Stockfish3shm6detail16SharedMemoryBaseESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.u = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZN9Stockfish3shm6detail20SharedMemoryRegistry15registry_mutex_E) #28 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !153
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = load i64, ptr %i.l, align 8, !tbaa !52
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.t = load i64, ptr %i.r, align 8, !tbaa !52
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEEE, i64 16), ptr %0, align 8, !tbaa !153
  tail call void @_ZN9Stockfish3shm6detail20SharedMemoryRegistry19unregister_instanceEPNS1_16SharedMemoryBaseE(ptr noundef nonnull align 8 dereferenceable(144) %0), !inline_history !632
  %i.a = load ptr, ptr %0, align 8, !tbaa !153
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext false) #28, !inline_history !632
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.f, align 8, !tbaa !52
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #33, !inline_history !632
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.n = load i64, ptr %i.l, align 8, !tbaa !52
  %i.o = add i64 %i.n, 1
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #33, !inline_history !632
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !52
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #33, !inline_history !632
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE5closeEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i1 noundef zeroext %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !270
  %i.c = icmp eq i32 %i.b, -1                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %i.g = load i32, ptr %i.a, align 8, !tbaa !270
  %i.h = tail call i32 @flock(i32 noundef %i.g, i32 noundef 2) #28
  %.not.i = icmp eq i32 %i.h, -1
  br i1 %.not.i, label %bb.c, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit

bb.c:                                             ; preds = %.preheader.i
  %i.i = tail call ptr @__errno_location() #34
  %i.j = load i32, ptr %i.i, align 4, !tbaa !121
  %i.k = icmp eq i32 %i.j, 4
  br i1 %i.k, label %.preheader.i, label %.critedge, !llvm.loop !654

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit: ; preds = %.preheader.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !274
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %.preheader.i14

.preheader.i14:                                   ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE9lock_fileEi.exit, %.preheader.i14
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.o = tail call i32 @pthread_mutex_lock(ptr noundef %i.n) #28
  switch i32 %i.o, label %.critedge [
    i32 0, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
    i32 130, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
    i32 4, label %.preheader.i14
  ]

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit: ; preds = %.preheader.i14
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !274
  %i.q = tail call i32 @pthread_mutex_consistent(ptr noundef %i.p) #28
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread, label %.critedge

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread: ; preds = %.preheader.i14, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !274  ; 2 uses
  %.not9 = icmp eq ptr %i.s, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE17lock_shared_mutexEv.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE20remove_sentinel_fileEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = tail call i32 @unlink(ptr noundef %i.z) #28 ; 0 uses
  store i64 0, ptr %i.v, align 8, !tbaa !51
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !49
  store i8 0, ptr %i.ab, align 1, !tbaa !52
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE20remove_sentinel_fileEv.exit

_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE20remove_sentinel_fileEv.exit: ; preds = %bb.e, %bb.f
  %i.ac = tail call noundef zeroext i1 @_ZNK9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE31has_other_live_sentinels_lockedEv(ptr noundef nonnull align 8 dereferenceable(144) %0) #28
  %i.ad = xor i1 %i.ac, true                      ; 2 uses
  %i.ae = load ptr, ptr %i.l, align 8, !tbaa !274 ; 2 uses
  %.not.i15 = icmp eq ptr %i.ae, null
  br i1 %.not.i15, label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE20remove_sentinel_fileEv.exit
  %i.af = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.ae) #28 ; 0 uses
  br label %_ZN9Stockfish3shm12SharedMemoryINS_4Eval4NNUE8NetworksEE19unlock_shared_mutexEv.exit
end_hunk_7
begin_hunk_8_@"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_5E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation":bb.a
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_5E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_6E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !758)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !758
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !758
  call void @_ZN9Stockfish6Engine16load_big_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !758
  %i.a = load ptr, ptr %3, align 8, !tbaa !49, !noalias !758 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !758
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !758
  br label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_6JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !758
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !758
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_6E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6", ptr %0, align 8, !tbaa !731
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !119
  store i64 %.val.i, ptr %0, align 8, !tbaa !119
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_6E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_7E9_M_invokeERKSt9_Any_dataSB_"(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::optional") align 8 captures(none) initializes((32, 33)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(152) %2) #4 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.val = load ptr, ptr %1, align 8, !tbaa !761
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !763
  call void @_ZNK9Stockfish6OptioncvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(152) %2) #28, !noalias !763
  call void @_ZN9Stockfish6Engine18load_small_networkERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1680) %.val, ptr noundef nonnull align 8 dereferenceable(32) %3), !noalias !763
  %i.a = load ptr, ptr %3, align 8, !tbaa !49, !noalias !763 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !52, !noalias !763
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #33, !noalias !763
  br label %"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit"

"_ZSt10__invoke_rISt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERZN9Stockfish6EngineC1ES7_E3$_7JRKNS8_6OptionEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESG_E4typeEOSH_DpOSI_.exit": ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !763
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.f, align 8, !tbaa !41, !alias.scope !763
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKN9Stockfish6OptionEEZNS8_6EngineC1ES7_E3$_7E10_M_managerERSt9_Any_dataRKSG_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #23 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7", ptr %0, align 8, !tbaa !731
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !172
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !119
  store i64 %.val.i, ptr %0, align 8, !tbaa !119
  br label %"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN9Stockfish6EngineC1ESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_7E10_M_managerERSt9_Any_dataRKSD_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE16_M_push_back_auxIJEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 1
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 192
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 192
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 48038396025285290
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !63
  %i.ag = load ptr, ptr %0, align 8, !tbaa !69
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #31
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !70
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !75
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.ap, i8 0, i64 192, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !227
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !71
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70 ; 3 uses
  store ptr %i.as, ptr %i.o, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 384
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !73
  store ptr %i.as, ptr %i.a, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIN9Stockfish9StateInfoESaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !226  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !63   ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !69
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !766

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !70
  store ptr %i.aa, ptr %i.t, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !766

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !70
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit, !prof !578

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #32
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #32
  unreachable

_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #31 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %3 = load ptr, ptr %i.c, align 8, !tbaa !226    ; 3 uses
  %4 = load ptr, ptr %i.a, align 8, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %5 = ptrtoint ptr %i.aw to i64
  %i.ax = ptrtoint ptr %3 to i64
  %i.ay = sub i64 %5, %i.ax                       ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !766

bb.o:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %3, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseIN9Stockfish9StateInfoESaIS1_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %3, align 8, !tbaa !70
  store ptr %i.bb, ptr %i.av, align 8, !tbaa !70
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8, !tbaa !69
  %6 = load i64, ptr %i.k, align 8, !tbaa !63
  %i.bd = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #33
  store ptr %i.aq, ptr %0, align 8, !tbaa !69
  store i64 %i.am, ptr %i.k, align 8, !tbaa !63
  br label %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit

_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPN9Stockfish9StateInfoES3_ET0_T_S5_S4_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8, !tbaa !71
  %i.be = load ptr, ptr %.0, align 8, !tbaa !70   ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 384
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !71
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !70 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !73
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 192153584101141162
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.d = load ptr, ptr %0, align 8, !tbaa !182
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, label %bb.g

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 48
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #31 ; 4 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !182      ; 3 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !179    ; 2 uses
  %.not10.i.i.i = icmp eq ptr %2, %3
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %2, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.p = load i32, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !770, !noalias !767
  store i32 %i.p, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !767, !noalias !770
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.t, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  %i.u = load i8, ptr %i.s, align 8, !tbaa !41, !range !44, !alias.scope !770, !noalias !767, !noundef !45
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.q, align 8, !tbaa !46, !alias.scope !767, !noalias !770
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !49, !alias.scope !770, !noalias !767 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !51, !alias.scope !770, !noalias !767 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !772
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  store ptr %i.x, ptr %i.q, align 8, !tbaa !49, !alias.scope !767, !noalias !770
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !52, !alias.scope !767, !noalias !770
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.e
  %i.af = phi i64 [ %i.ab, %bb.e ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !51, !alias.scope !767, !noalias !770
  store ptr %i.y, ptr %i.r, align 8, !tbaa !49, !alias.scope !770, !noalias !767
  store i64 0, ptr %i.ag, align 8, !tbaa !51, !alias.scope !770, !noalias !767
  store i8 0, ptr %i.y, align 8, !tbaa !52, !alias.scope !770, !noalias !767
  store i8 1, ptr %i.t, align 8, !tbaa !41, !alias.scope !767, !noalias !770
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.s, align 8, !tbaa !41, !alias.scope !770, !noalias !767
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48
  %.not.i.i.i = icmp eq ptr %i.ai, %3
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !182
  br label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit
  %i.ak = phi ptr [ %.pre, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit.loopexit ], [ %2, %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_M_allocateEm.exit ] ; 3 uses
  %.not.i8 = icmp eq ptr %i.ak, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !184
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.ak to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ao) #33
  br label %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit

_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit: ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !182
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !179
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %1
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !184
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE13_M_deallocateEPSB_m.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE17_M_realloc_insertIJS2_SA_EEEvN9__gnu_cxx17__normal_iteratorIPSB_SD_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !182    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.51) #32
  unreachable

_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 192153584101141162)
  %i.l = select i1 %i.j, i64 192153584101141162, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 48
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #31 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load i32, ptr %2, align 4, !tbaa !203
  store i32 %i.r, ptr %i.q, align 8, !tbaa !185
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  store i8 0, ptr %i.u, align 8, !tbaa !41
  %i.v = load i8, ptr %i.t, align 8, !tbaa !41, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !46
  %i.y = load ptr, ptr %3, align 8, !tbaa !49     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.x, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.ae, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.y, ptr %i.s, align 8, !tbaa !49
  %i.af = load i64, ptr %i.z, align 8, !tbaa !52
  store i64 %i.af, ptr %i.x, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i, %bb.d
  %i.ag = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i ], [ %i.ac, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !51
  store ptr %i.z, ptr %3, align 8, !tbaa !49
  store i64 0, ptr %i.ah, align 8, !tbaa !51
  store i8 0, ptr %i.z, align 8, !tbaa !52
  store i8 1, ptr %i.u, align 8, !tbaa !41
  br label %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %_ZNKSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE12_M_check_lenEmPKc.exit, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i.i
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.bc, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.aj = load i32, ptr %.0911.i.i.i, align 8, !tbaa !185, !alias.scope !777, !noalias !774
  store i32 %i.aj, ptr %.012.i.i.i, align 8, !tbaa !185, !alias.scope !774, !noalias !777
  %i.ak = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40 ; 2 uses
  store i8 0, ptr %i.an, align 8, !tbaa !41, !alias.scope !774, !noalias !777
  %i.ao = load i8, ptr %i.am, align 8, !tbaa !41, !range !44, !alias.scope !777, !noalias !774, !noundef !45
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.e, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 3 uses
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !46, !alias.scope !774, !noalias !777
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !49, !alias.scope !777, !noalias !774 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 5 uses
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !51, !alias.scope !777, !noalias !774 ; 3 uses
  %i.aw = icmp ult i64 %i.av, 16
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = add nuw nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aq, ptr noundef nonnull align 8 dereferenceable(1) %i.as, i64 %i.ax, i1 false), !alias.scope !779
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !49, !alias.scope !774, !noalias !777
  %i.ay = load i64, ptr %i.as, align 8, !tbaa !52, !alias.scope !777, !noalias !774
  store i64 %i.ay, ptr %i.aq, align 8, !tbaa !52, !alias.scope !774, !noalias !777
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !51, !alias.scope !777, !noalias !774
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.az = phi i64 [ %i.av, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  store i64 %i.az, ptr %i.bb, align 8, !tbaa !51, !alias.scope !774, !noalias !777
  store ptr %i.as, ptr %i.al, align 8, !tbaa !49, !alias.scope !777, !noalias !774
  store i64 0, ptr %i.ba, align 8, !tbaa !51, !alias.scope !777, !noalias !774
  store i8 0, ptr %i.as, align 8, !tbaa !52, !alias.scope !777, !noalias !774
  store i8 1, ptr %i.an, align 8, !tbaa !41, !alias.scope !774, !noalias !777
  br label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  store i8 0, ptr %i.am, align 8, !tbaa !41, !alias.scope !777, !noalias !774
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bc, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, label %.lr.ph.i.i.i, !llvm.loop !773

_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit: ; preds = %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2IS1_S9_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit ], [ %i.bd, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i17 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i17, label %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit28, label %.lr.ph.i.i.i18

.lr.ph.i.i.i18:                                   ; preds = %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21
  %.012.i.i.i19 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %i.be, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 6 uses
  %.0911.i.i.i20 = phi ptr [ %i.by, %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21 ], [ %1, %_ZNSt6vectorISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISB_EE11_S_relocateEPSB_SE_SE_RSC_.exit ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !783)
  %i.bf = load i32, ptr %.0911.i.i.i20, align 8, !tbaa !185, !alias.scope !783, !noalias !780
  store i32 %i.bf, ptr %.012.i.i.i19, align 8, !tbaa !185, !alias.scope !780, !noalias !783
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 40 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 40 ; 2 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !41, !alias.scope !780, !noalias !783
  %i.bk = load i8, ptr %i.bi, align 8, !tbaa !41, !range !44, !alias.scope !783, !noalias !780, !noundef !45
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.g, label %_ZSt19__relocate_object_aISt4pairIN9Stockfish40SystemWideSharedConstantAllocationStatusESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESB_SaISB_EEvPT_PT0_RT1_.exit.i.i.i21

bb.g:                                             ; preds = %.lr.ph.i.i.i18
  %i.bm = getelementptr inbounds nuw i8, ptr %.012.i.i.i19, i64 24 ; 3 uses
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !46, !alias.scope !780, !noalias !783
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !49, !alias.scope !783, !noalias !780 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 24 ; 5 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i24

bb.h:                                             ; preds = %bb.g
  %i.bq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i20, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !51, !alias.scope !783, !noalias !780 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 16
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = add nuw nsw i64 %i.br, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bm, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.bt, i1 false), !alias.scope !785
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i27
end_hunk_8
