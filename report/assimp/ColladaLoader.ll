inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"class.std::vector.140", align 8  ; 14 uses
  %i.l = alloca [16 x float], align 16            ; 7 uses
  %21 = alloca %class.aiMatrix4x4t, align 4       ; 7 uses
  %22 = alloca %class.aiMatrix4x4t, align 4       ; 6 uses
  %23 = alloca %"class.std::vector.319", align 8  ; 16 uses
  %24 = alloca %"class.std::vector.291", align 8  ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  invoke void @_ZNK6Assimp13ColladaLoader12CollectNodesEPK6aiNodeRSt6vectorIS3_SaIS3_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %5, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not9591796 = icmp eq ptr %i.o, %i.q
  br i1 %.not9591796, label %._crit_edge1806, label %.lr.ph1805

.lr.ph1805:                                       ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 624
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 13 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 19 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 10 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 13 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 72 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 9 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 6 uses
  %i.au = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %21, i64 60
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 60 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 10 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %24, i64 16
  br label %bb.d

._crit_edge1806:                                  ; preds = %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704, %bb.b
  %.sroa.20.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.20.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.12.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 3 uses
  %.sroa.0872.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.0872.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 9 uses
  %.sroa.22.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.22.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.13.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 3 uses
  %.sroa.0886.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.0886.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 9 uses
  %i.bp = icmp eq ptr %.sroa.0886.0.lcssa, %.sroa.13.0.lcssa ; 2 uses
  %i.bq = icmp eq ptr %.sroa.0872.0.lcssa, %.sroa.12.0.lcssa ; 2 uses
  %or.cond958 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond958, label %_ZNSt6vectorIP11aiAnimationSaIS1_EE9push_backERKS1_.exit, label %bb.hu

bb.c:                                             ; preds = %bb.a
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIP10aiNodeAnimSaIS1_EED2Ev.exit733

bb.d:                                             ; preds = %.lr.ph1805, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704
  %.sroa.0886.01803 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.0886.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 21 uses
  %.sroa.13.01802 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.13.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 9 uses
  %.sroa.22.01801 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.22.3, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 20 uses
  %.sroa.0872.01800 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.0872.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 11 uses
  %.sroa.12.01799 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.12.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 11 uses
  %.sroa.20.01798 = phi ptr [ null, %.lr.ph1805 ], [ %.sroa.20.4, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 25 uses
  %.sroa.0869.01797 = phi ptr [ %i.o, %.lr.ph1805 ], [ %i.awc, %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EED2Ev.exit704 ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.0869.01797, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4 ; 3 uses
  store ptr %i.r, ptr %7, align 8
  %i.bu = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store i64 %i.bu, ptr %i.k, align 8
  %i.bv = icmp ugt i64 %i.bu, 15
  br i1 %i.bv, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.bw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc unwind label %bb.h     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.bw, ptr %7, align 8
  %i.bx = load i64, ptr %i.k, align 8
  store i64 %i.bx, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.by = phi ptr [ %i.bw, %.noexc ], [ %i.r, %bb.d ] ; 2 uses
  switch i64 %i.bu, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bz = load i8, ptr %i.bt, align 1
  store i8 %i.bz, ptr %i.by, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.by, ptr nonnull align 1 %i.bt, i64 %i.bu, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.ca = load i64, ptr %i.k, align 8             ; 2 uses
  store i64 %i.ca, ptr %i.s, align 8
  %i.cb = load ptr, ptr %7, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.ca
  store i8 0, ptr %i.cc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  %i.cd = load ptr, ptr %i.t, align 8
  %i.ce = call noundef ptr @_ZNK6Assimp13ColladaLoader8FindNodeEPKNS_7Collada4NodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %7) ; 7 uses
  %.not295 = icmp eq ptr %i.ce, null
  br i1 %.not295, label %bb.hq, label %bb.i

bb.h:                                             ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit715

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.u, ptr %8, align 8
  store i64 0, ptr %i.v, align 8
  store i8 0, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %i.w, ptr %9, align 8
  store i64 0, ptr %i.x, align 8
  store i8 0, ptr %i.w, align 8
  %i.cg = load ptr, ptr %i.y, align 8             ; 2 uses
  %i.ch = load ptr, ptr %i.z, align 8
  %.not9661731 = icmp eq ptr %i.cg, %i.ch
  br i1 %.not9661731, label %._crit_edge1735, label %.lr.ph1734

.lr.ph1734:                                       ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 136
  br label %bb.j

._crit_edge1735:                                  ; preds = %_ZN6Assimp7Collada12ChannelEntryD2Ev.exit, %bb.i
  %i.cm = load ptr, ptr %6, align 8               ; 3 uses
  %i.cn = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EED2Ev.exit, label %.preheader994

bb.j:                                             ; preds = %.lr.ph1734, %_ZN6Assimp7Collada12ChannelEntryD2Ev.exit
  %.sroa.0862.01732 = phi ptr [ %i.cg, %.lr.ph1734 ], [ %i.vf, %_ZN6Assimp7Collada12ChannelEntryD2Ev.exit ] ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr null, ptr %10, align 8
  store ptr %i.ab, ptr %i.aa, align 8
  store i64 0, ptr %i.ac, align 8
  store i8 0, ptr %i.ab, align 8
  store ptr %i.ae, ptr %i.ad, align 8
  store i64 0, ptr %i.af, align 8
  store i8 0, ptr %i.ae, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 48, i1 false)
  %i.cp = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, i8 noundef signext 47, i64 noundef 0) #26 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %bb.k, label %bb.aq

bb.k:                                             ; preds = %bb.j
  %i.cr = load ptr, ptr %i.ci, align 8
  %i.cs = load i64, ptr %i.cj, align 8
  %i.ct = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, ptr noundef %i.cr, i64 noundef 0, i64 noundef %i.cs) #26 ; 2 uses
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %.sroa.0862.01732, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.cv = load i64, ptr %i.ay, align 8
  %i.cw = add i64 %i.cv, %i.ct                    ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0862.01732, i64 8
  %i.cy = load i64, ptr %i.cx, align 8            ; 3 uses
  %i.cz = sub i64 %i.cy, %i.cw                    ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.da = icmp ugt i64 %i.cw, %i.cy
  br i1 %i.da, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.cw, i64 noundef %i.cy) #29
          to label %.noexc364 unwind label %.loopexit.split-lp1021

.noexc364:                                        ; preds = %bb.m
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.l
  store ptr %i.az, ptr %11, align 8, !alias.scope !118
  %i.db = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !118
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cw ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #26, !noalias !118
  store i64 %i.cz, ptr %i.j, align 8, !noalias !118
  %i.dd = icmp ugt i64 %i.cz, 15
  br i1 %i.dd, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.de = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0)
          to label %.noexc365 unwind label %.loopexit1020 ; 2 uses

.noexc365:                                        ; preds = %.noexc10.i.i
  store ptr %i.de, ptr %11, align 8, !alias.scope !118
  %i.df = load i64, ptr %i.j, align 8, !noalias !118
  store i64 %i.df, ptr %i.az, align 8, !alias.scope !118
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.dg = phi ptr [ %i.de, %.noexc365 ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %i.cz, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %bb.p
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.dh = load i8, ptr %i.dc, align 1
  store i8 %i.dh, ptr %i.dg, align 1
  br label %bb.p

bb.o:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dg, ptr align 1 %i.dc, i64 %i.cz, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i
  %i.di = load i64, ptr %i.j, align 8, !noalias !118 ; 2 uses
  store i64 %i.di, ptr %i.ba, align 8, !alias.scope !118
  %i.dj = load ptr, ptr %11, align 8, !alias.scope !118
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.di
  store i8 0, ptr %i.dk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #26, !noalias !118
  %i.dl = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.dm = icmp eq ptr %i.dl, %i.ab
  %i.dn = load ptr, ptr %11, align 8              ; 5 uses
  %i.do = icmp eq ptr %i.dn, %i.az                ; 2 uses
  br i1 %i.dm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.p
  br i1 %i.do, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.p
  br i1 %i.do, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.dp = load i64, ptr %i.ba, align 8            ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  switch i64 %i.dp, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.dr = load i8, ptr %i.dn, align 1
  store i8 %i.dr, ptr %i.dl, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.dn, i64 %i.dp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.ds = load i64, ptr %i.ba, align 8            ; 2 uses
  store i64 %i.ds, ptr %i.ac, align 8
  %i.dt = load ptr, ptr %i.aa, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ds
  store i8 0, ptr %i.du, align 1
  %.pre.i = load ptr, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.dn, ptr %i.aa, align 8
  %i.dv = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.dv, ptr %i.ac, align 8
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.dw = load i64, ptr %i.ab, align 8
  store ptr %i.dn, ptr %i.aa, align 8
  %i.dx = load <2 x i64>, ptr %i.ba, align 8
  store <2 x i64> %i.dx, ptr %i.ac, align 8
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.dl, ptr %11, align 8
  store i64 %i.dw, ptr %i.az, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.az, ptr %11, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %i.dy = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.dl, %bb.t ], [ %i.az, %bb.u ]
  store i64 0, ptr %i.ba, align 8
  store i8 0, ptr %i.dy, align 1
  %i.dz = load ptr, ptr %11, align 8              ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.az
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.eb = load i64, ptr %i.az, align 8
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  %i.ed = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = icmp eq i8 %i.ee, 45
  br i1 %i.ef, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.eg = load i64, ptr %i.ac, align 8, !noalias !121 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i366

bb.w:                                             ; preds = %bb.v
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef 1, i64 noundef 0) #29
          to label %.noexc370 unwind label %.loopexit.split-lp1026

.noexc370:                                        ; preds = %bb.w
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i366: ; preds = %bb.v
  store ptr %i.bb, ptr %12, align 8, !alias.scope !121
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  %i.ej = add i64 %i.eg, -1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #26, !noalias !121
  store i64 %i.ej, ptr %i.i, align 8, !noalias !121
  %i.ek = icmp ugt i64 %i.ej, 15
  br i1 %i.ek, label %.noexc10.i.i369, label %._crit_edge.i.i.i368

.noexc10.i.i369:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i366
  %i.el = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 0)
          to label %.noexc371 unwind label %.loopexit1025 ; 2 uses

.noexc371:                                        ; preds = %.noexc10.i.i369
  store ptr %i.el, ptr %12, align 8, !alias.scope !121
  %i.em = load i64, ptr %i.i, align 8, !noalias !121
  store i64 %i.em, ptr %i.bb, align 8, !alias.scope !121
  br label %._crit_edge.i.i.i368

._crit_edge.i.i.i368:                             ; preds = %.noexc371, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i366
  %i.en = phi ptr [ %i.el, %.noexc371 ], [ %i.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i366 ] ; 2 uses
  switch i64 %i.ej, label %bb.y [
    i64 1, label %bb.x
    i64 0, label %bb.z
  ]

bb.x:                                             ; preds = %._crit_edge.i.i.i368
  %i.eo = load i8, ptr %i.ei, align 1
  store i8 %i.eo, ptr %i.en, align 1
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i.i368
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ColladaLoader15CreateAnimationEP7aiSceneRKNS_13ColladaParserEPKNS_7Collada9AnimationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.ez
  store i8 0, ptr %i.fb, align 1
  %.pre.i377 = load ptr, ptr %12, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380

.thread.i379:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i378
  store ptr %i.eu, ptr %i.aa, align 8
  %i.fc = load <2 x i64>, ptr %i.bc, align 8
  store <2 x i64> %i.fc, ptr %i.ac, align 8
  br label %bb.ae

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i374: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i373
  %i.fd = load i64, ptr %i.ab, align 8
  store ptr %i.eu, ptr %i.aa, align 8
  %i.fe = load <2 x i64>, ptr %i.bc, align 8
  store <2 x i64> %i.fe, ptr %i.ac, align 8
  %.not.i375 = icmp eq ptr %i.es, null
  br i1 %.not.i375, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i374
  store ptr %i.es, ptr %12, align 8
  store i64 %i.fd, ptr %i.bb, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380

bb.ae:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i374, %.thread.i379
  store ptr %i.bb, ptr %12, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i376, %bb.ad, %bb.ae
  %i.ff = phi ptr [ %.pre.i377, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i376 ], [ %i.es, %bb.ad ], [ %i.bb, %bb.ae ]
  store i64 0, ptr %i.bc, align 8
  store i8 0, ptr %i.ff, align 1
  %i.fg = load ptr, ptr %12, align 8              ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.bb
  br i1 %i.fh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380
  %i.fi = load i64, ptr %i.bb, align 8
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit380, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %bb.ah

.loopexit1020:                                    ; preds = %.noexc10.i.i
  %lpad.loopexit1022 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.loopexit.split-lp1021:                           ; preds = %bb.m
  %lpad.loopexit.split-lp1023 = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp1021, %.loopexit1020
  %lpad.phi1024 = phi { ptr, i32 } [ %lpad.loopexit1022, %.loopexit1020 ], [ %lpad.loopexit.split-lp1023, %.loopexit.split-lp1021 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body743

.loopexit1025:                                    ; preds = %.noexc10.i.i369
  %lpad.loopexit1027 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp1026:                           ; preds = %bb.w
  %lpad.loopexit.split-lp1028 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp1026, %.loopexit1025
  %lpad.phi1029 = phi { ptr, i32 } [ %lpad.loopexit1027, %.loopexit1025 ], [ %lpad.loopexit.split-lp1028, %.loopexit.split-lp1026 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  br label %.body743

bb.ah:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fk = load ptr, ptr %i.aw, align 8            ; 10 uses
  %i.fl = load ptr, ptr %i.ax, align 8
  %.not.i384 = icmp eq ptr %i.fk, %i.fl
  br i1 %.not.i384, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = load ptr, ptr %10, align 8
  store ptr %i.fm, ptr %i.fk, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 24 ; 5 uses
  store ptr %i.fo, ptr %i.fn, align 8
  %i.fp = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.fq = load i64, ptr %i.ac, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.fq, ptr %i.b, align 8
  %i.fr = icmp ugt i64 %i.fq, 15
  br i1 %i.fr, label %.noexc.i.i741, label %._crit_edge.i.i.i736

.noexc.i.i741:                                    ; preds = %bb.ai
  %i.fs = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc742 unwind label %bb.ap ; 2 uses

.noexc742:                                        ; preds = %.noexc.i.i741
  store ptr %i.fs, ptr %i.fn, align 8
  %i.ft = load i64, ptr %i.b, align 8
  store i64 %i.ft, ptr %i.fo, align 8
  br label %._crit_edge.i.i.i736

._crit_edge.i.i.i736:                             ; preds = %.noexc742, %bb.ai
  %i.fu = phi ptr [ %i.fs, %.noexc742 ], [ %i.fo, %bb.ai ] ; 2 uses
  switch i64 %i.fq, label %bb.ak [
    i64 1, label %bb.aj
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.aj:                                            ; preds = %._crit_edge.i.i.i736
  %i.fv = load i8, ptr %i.fp, align 1
  store i8 %i.fv, ptr %i.fu, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.ak:                                            ; preds = %._crit_edge.i.i.i736
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr align 1 %i.fp, i64 %i.fq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.ak, %bb.aj, %._crit_edge.i.i.i736
  %i.fw = load i64, ptr %i.b, align 8             ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = load ptr, ptr %i.fn, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fw
  store i8 0, ptr %i.fz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fk, i64 40 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fk, i64 56 ; 3 uses
  store ptr %i.gb, ptr %i.ga, align 8
  %i.gc = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.gd = load i64, ptr %i.af, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.gd, ptr %i.a, align 8
  %i.ge = icmp ugt i64 %i.gd, 15
  br i1 %i.ge, label %.noexc.i7.i, label %._crit_edge.i.i6.i

.noexc.i7.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.gf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i740 unwind label %bb.an ; 2 uses

.noexc.i740:                                      ; preds = %.noexc.i7.i
  store ptr %i.gf, ptr %i.ga, align 8
  %i.gg = load i64, ptr %i.a, align 8
  store i64 %i.gg, ptr %i.gb, align 8
  br label %._crit_edge.i.i6.i

._crit_edge.i.i6.i:                               ; preds = %.noexc.i740, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.gh = phi ptr [ %i.gf, %.noexc.i740 ], [ %i.gb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ] ; 2 uses
  switch i64 %i.gd, label %bb.am [
    i64 1, label %bb.al
    i64 0, label %.noexc385
  ]

bb.al:                                            ; preds = %._crit_edge.i.i6.i
  %i.gi = load i8, ptr %i.gc, align 1
  store i8 %i.gi, ptr %i.gh, align 1
  br label %.noexc385

bb.am:                                            ; preds = %._crit_edge.i.i6.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gc, i64 %i.gd, i1 false)
  br label %.noexc385

bb.an:                                            ; preds = %.noexc.i7.i
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load ptr, ptr %i.fn, align 8            ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.fo
  br i1 %i.gl, label %.body743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i737: ; preds = %bb.an
  %i.gm = load i64, ptr %i.fo, align 8
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #27
  br label %.body743

.noexc385:                                        ; preds = %bb.am, %bb.al, %._crit_edge.i.i6.i
  %i.go = load i64, ptr %i.a, align 8             ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fk, i64 48
  store i64 %i.go, ptr %i.gp, align 8
  %i.gq = load ptr, ptr %i.ga, align 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.go
  store i8 0, ptr %i.gr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  br label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit.sink.split

bb.ao:                                            ; preds = %bb.ah
  invoke void @_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.fk, ptr noundef nonnull align 8 dereferenceable(120) %10)
          to label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.noexc.i.i741, %bb.ao
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body743

bb.aq:                                            ; preds = %bb.j
  %i.gu = add nuw i64 %i.cp, 1                    ; 13 uses
  %i.gv = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, i8 noundef signext 47, i64 noundef %i.gu) #26
  %.not315 = icmp eq i64 %i.gv, -1
  br i1 %.not315, label %bb.ar, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit

bb.ar:                                            ; preds = %bb.aq
  store i64 0, ptr %i.v, align 8
  %i.gw = load ptr, ptr %8, align 8
  store i8 0, ptr %i.gw, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0862.01732, i64 8 ; 6 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !124
  store ptr %i.ah, ptr %13, align 8, !alias.scope !124
  %i.gz = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !124 ; 2 uses
  %spec.select.i.i.i388 = call noundef i64 @llvm.umin.i64(i64 %i.cp, i64 %i.gy) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26, !noalias !124
  store i64 %spec.select.i.i.i388, ptr %i.h, align 8, !noalias !124
  %i.ha = icmp ugt i64 %spec.select.i.i.i388, 15
  br i1 %i.ha, label %.noexc10.i.i390, label %._crit_edge.i.i.i389

.noexc10.i.i390:                                  ; preds = %bb.ar
  %i.hb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 0)
          to label %.noexc391 unwind label %bb.bb ; 2 uses

.noexc391:                                        ; preds = %.noexc10.i.i390
  store ptr %i.hb, ptr %13, align 8, !alias.scope !124
  %i.hc = load i64, ptr %i.h, align 8, !noalias !124
  store i64 %i.hc, ptr %i.ah, align 8, !alias.scope !124
  br label %._crit_edge.i.i.i389

._crit_edge.i.i.i389:                             ; preds = %.noexc391, %bb.ar
  %i.hd = phi ptr [ %i.hb, %.noexc391 ], [ %i.ah, %bb.ar ] ; 2 uses
  switch i64 %spec.select.i.i.i388, label %bb.at [
    i64 1, label %bb.as
    i64 0, label %bb.au
  ]

bb.as:                                            ; preds = %._crit_edge.i.i.i389
  %i.he = load i8, ptr %i.gz, align 1
  store i8 %i.he, ptr %i.hd, align 1
  br label %bb.au

bb.at:                                            ; preds = %._crit_edge.i.i.i389
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hd, ptr align 1 %i.gz, i64 %spec.select.i.i.i388, i1 false)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %._crit_edge.i.i.i389
  %i.hf = load i64, ptr %i.h, align 8, !noalias !124 ; 2 uses
  store i64 %i.hf, ptr %i.ai, align 8, !alias.scope !124
  %i.hg = load ptr, ptr %13, align 8, !alias.scope !124
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  store i8 0, ptr %i.hh, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !124
  %i.hi = load ptr, ptr %8, align 8               ; 6 uses
  %i.hj = icmp eq ptr %i.hi, %i.u
  %i.hk = load ptr, ptr %13, align 8              ; 5 uses
  %i.hl = icmp eq ptr %i.hk, %i.ah                ; 2 uses
  br i1 %i.hj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i398: ; preds = %bb.au
  br i1 %i.hl, label %bb.av, label %.thread.i399

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i393: ; preds = %bb.au
  br i1 %i.hl, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i394

bb.av:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i398
  %i.hm = load i64, ptr %i.ai, align 8            ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.hn)
  switch i64 %i.hm, label %bb.ax [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396
    i64 1, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.av
  %i.ho = load i8, ptr %i.hk, align 1
  store i8 %i.ho, ptr %i.hi, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396

bb.ax:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hi, ptr align 1 %i.hk, i64 %i.hm, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396: ; preds = %bb.ax, %bb.aw, %bb.av
  %i.hp = load i64, ptr %i.ai, align 8            ; 2 uses
  store i64 %i.hp, ptr %i.v, align 8
  %i.hq = load ptr, ptr %8, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hp
  store i8 0, ptr %i.hr, align 1
  %.pre.i397 = load ptr, ptr %13, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400

.thread.i399:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i398
  store ptr %i.hk, ptr %8, align 8
  %i.hs = load <2 x i64>, ptr %i.ai, align 8
  store <2 x i64> %i.hs, ptr %i.v, align 8
  br label %bb.az

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i394: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i393
  %i.ht = load i64, ptr %i.u, align 8
  store ptr %i.hk, ptr %8, align 8
  %i.hu = load <2 x i64>, ptr %i.ai, align 8
  store <2 x i64> %i.hu, ptr %i.v, align 8
  %.not.i395 = icmp eq ptr %i.hi, null
  br i1 %.not.i395, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i394
  store ptr %i.hi, ptr %13, align 8
  store i64 %i.ht, ptr %i.ah, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400

bb.az:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i394, %.thread.i399
  store ptr %i.ah, ptr %13, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396, %bb.ay, %bb.az
  %i.hv = phi ptr [ %.pre.i397, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i396 ], [ %i.hi, %bb.ay ], [ %i.ah, %bb.az ]
  store i64 0, ptr %i.ai, align 8
  store i8 0, ptr %i.hv, align 1
  %i.hw = load ptr, ptr %13, align 8              ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.ah
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400
  %i.hy = load i64, ptr %i.ah, align 8
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit400, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i401
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  %i.ia = load i64, ptr %i.v, align 8             ; 3 uses
  %i.ib = load i64, ptr %i.cj, align 8
  %i.ic = icmp eq i64 %i.ia, %i.ib
  br i1 %i.ic, label %bb.ba, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit403
  %i.id = icmp eq i64 %i.ia, 0
  br i1 %i.id, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread906, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.ba
  %i.ie = load ptr, ptr %i.ci, align 8
  %i.if = load ptr, ptr %8, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %i.if, ptr %i.ie, i64 %i.ia)
  %.not972 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not972, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread906, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit

bb.bb:                                            ; preds = %.noexc10.i.i390
  %i.ig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #26
  br label %.body743

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread906: ; preds = %bb.ba, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.ih = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, i8 noundef signext 46, i64 noundef 0) #26 ; 3 uses
  %.not316 = icmp eq i64 %i.ih, -1
  br i1 %.not316, label %bb.ca, label %bb.bc

bb.bc:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread906
  %i.ii = add nuw i64 %i.ih, 1                    ; 5 uses
  %i.ij = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, i8 noundef signext 46, i64 noundef %i.ii) #26
  %.not317 = icmp eq i64 %i.ij, -1
  br i1 %.not317, label %bb.bd, label %_ZNSt6vectorIN6Assimp7Collada12ChannelEntryESaIS2_EE9push_backERKS2_.exit

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.ik = load i64, ptr %i.gx, align 8, !noalias !127 ; 3 uses
  %25 = icmp ugt i64 %i.gu, %i.ik
  br i1 %25, label %bb.be, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i404

bb.be:                                            ; preds = %bb.bd
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.gu, i64 noundef %i.ik) #29
          to label %.noexc408 unwind label %.loopexit.split-lp996

.noexc408:                                        ; preds = %bb.be
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i404: ; preds = %bb.bd
  %i.il = xor i64 %i.cp, -1
  %i.im = add i64 %i.ih, %i.il
  store ptr %i.aj, ptr %14, align 8, !alias.scope !127
  %i.in = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !127
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.gu ; 2 uses
  %i.ip = sub nuw i64 %i.ik, %i.gu
  %spec.select.i.i.i405 = call noundef i64 @llvm.umin.i64(i64 %i.im, i64 %i.ip) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26, !noalias !127
  store i64 %spec.select.i.i.i405, ptr %i.g, align 8, !noalias !127
  %i.iq = icmp ugt i64 %spec.select.i.i.i405, 15
  br i1 %i.iq, label %.noexc10.i.i407, label %._crit_edge.i.i.i406

.noexc10.i.i407:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i404
  %i.ir = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc409 unwind label %.loopexit995 ; 2 uses

.noexc409:                                        ; preds = %.noexc10.i.i407
  store ptr %i.ir, ptr %14, align 8, !alias.scope !127
  %i.is = load i64, ptr %i.g, align 8, !noalias !127
  store i64 %i.is, ptr %i.aj, align 8, !alias.scope !127
  br label %._crit_edge.i.i.i406

._crit_edge.i.i.i406:                             ; preds = %.noexc409, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i404
  %i.it = phi ptr [ %i.ir, %.noexc409 ], [ %i.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i404 ] ; 2 uses
  switch i64 %spec.select.i.i.i405, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i406
  %i.iu = load i8, ptr %i.io, align 1
  store i8 %i.iu, ptr %i.it, align 1
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i.i406
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.it, ptr nonnull align 1 %i.io, i64 %spec.select.i.i.i405, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i406
  %i.iv = load i64, ptr %i.g, align 8, !noalias !127 ; 2 uses
  store i64 %i.iv, ptr %i.ak, align 8, !alias.scope !127
  %i.iw = load ptr, ptr %14, align 8, !alias.scope !127
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.iv
  store i8 0, ptr %i.ix, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !127
  %i.iy = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.iz = icmp eq ptr %i.iy, %i.ae
  %i.ja = load ptr, ptr %14, align 8              ; 5 uses
  %i.jb = icmp eq ptr %i.ja, %i.aj                ; 2 uses
  br i1 %i.iz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i416, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i416: ; preds = %bb.bh
  br i1 %i.jb, label %bb.bi, label %.thread.i417

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411: ; preds = %bb.bh
  br i1 %i.jb, label %bb.bi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412

bb.bi:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i416
  %i.jc = load i64, ptr %i.ak, align 8            ; 3 uses
  %i.jd = icmp ult i64 %i.jc, 16
  call void @llvm.assume(i1 %i.jd)
  switch i64 %i.jc, label %bb.bk [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414
    i64 1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.je = load i8, ptr %i.ja, align 1
  store i8 %i.je, ptr %i.iy, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414

bb.bk:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr align 1 %i.ja, i64 %i.jc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414: ; preds = %bb.bk, %bb.bj, %bb.bi
  %i.jf = load i64, ptr %i.ak, align 8            ; 2 uses
  store i64 %i.jf, ptr %i.af, align 8
  %i.jg = load ptr, ptr %i.ad, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jf
  store i8 0, ptr %i.jh, align 1
  %.pre.i415 = load ptr, ptr %14, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418

.thread.i417:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i416
  store ptr %i.ja, ptr %i.ad, align 8
  %i.ji = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.ji, ptr %i.af, align 8
  br label %bb.bm

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i411
  %i.jj = load i64, ptr %i.ae, align 8
  store ptr %i.ja, ptr %i.ad, align 8
  %i.jk = load <2 x i64>, ptr %i.ak, align 8
  store <2 x i64> %i.jk, ptr %i.af, align 8
  %.not.i413 = icmp eq ptr %i.iy, null
  br i1 %.not.i413, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412
  store ptr %i.iy, ptr %14, align 8
  store i64 %i.jj, ptr %i.aj, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418

bb.bm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i412, %.thread.i417
  store ptr %i.aj, ptr %14, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414, %bb.bl, %bb.bm
  %i.jl = phi ptr [ %.pre.i415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i414 ], [ %i.iy, %bb.bl ], [ %i.aj, %bb.bm ]
  store i64 0, ptr %i.ak, align 8
  store i8 0, ptr %i.jl, align 1
  %i.jm = load ptr, ptr %14, align 8              ; 2 uses
  %i.jn = icmp eq ptr %i.jm, %i.aj
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418
  %i.jo = load i64, ptr %i.aj, align 8
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jm, i64 noundef %i.jp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit418, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  store i64 0, ptr %i.x, align 8
  %i.jq = load ptr, ptr %9, align 8
  store i8 0, ptr %i.jq, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.jr = load i64, ptr %i.gx, align 8, !noalias !130 ; 3 uses
  %26 = icmp ugt i64 %i.ii, %i.jr
  br i1 %26, label %bb.bn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i422

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.ii, i64 noundef %i.jr) #29
          to label %.noexc426 unwind label %.loopexit.split-lp1001

.noexc426:                                        ; preds = %bb.bn
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i422: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421
  store ptr %i.al, ptr %15, align 8, !alias.scope !130
  %i.js = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !130
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ii ; 2 uses
  %i.ju = sub nuw i64 %i.jr, %i.ii                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26, !noalias !130
  store i64 %i.ju, ptr %i.f, align 8, !noalias !130
  %i.jv = icmp ugt i64 %i.ju, 15
  br i1 %i.jv, label %.noexc10.i.i425, label %._crit_edge.i.i.i424

.noexc10.i.i425:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i422
  %i.jw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc427 unwind label %.loopexit1000 ; 2 uses

.noexc427:                                        ; preds = %.noexc10.i.i425
  store ptr %i.jw, ptr %15, align 8, !alias.scope !130
  %i.jx = load i64, ptr %i.f, align 8, !noalias !130
  store i64 %i.jx, ptr %i.al, align 8, !alias.scope !130
  br label %._crit_edge.i.i.i424

._crit_edge.i.i.i424:                             ; preds = %.noexc427, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i422
  %i.jy = phi ptr [ %i.jw, %.noexc427 ], [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i422 ] ; 2 uses
  switch i64 %i.ju, label %bb.bp [
    i64 1, label %bb.bo
    i64 0, label %bb.bq
  ]

bb.bo:                                            ; preds = %._crit_edge.i.i.i424
  %i.jz = load i8, ptr %i.jt, align 1
  store i8 %i.jz, ptr %i.jy, align 1
  br label %bb.bq

bb.bp:                                            ; preds = %._crit_edge.i.i.i424
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr nonnull align 1 %i.jt, i64 %i.ju, i1 false)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %._crit_edge.i.i.i424
  %i.ka = load i64, ptr %i.f, align 8, !noalias !130 ; 2 uses
  store i64 %i.ka, ptr %i.am, align 8, !alias.scope !130
  %i.kb = load ptr, ptr %15, align 8, !alias.scope !130
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.ka
  store i8 0, ptr %i.kc, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !130
  %i.kd = load ptr, ptr %9, align 8               ; 6 uses
  %i.ke = icmp eq ptr %i.kd, %i.w
  %i.kf = load ptr, ptr %15, align 8              ; 5 uses
  %i.kg = icmp eq ptr %i.kf, %i.al                ; 2 uses
  br i1 %i.ke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434: ; preds = %bb.bq
  br i1 %i.kg, label %bb.br, label %.thread.i435

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429: ; preds = %bb.bq
  br i1 %i.kg, label %bb.br, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430

bb.br:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434
  %i.kh = load i64, ptr %i.am, align 8            ; 3 uses
  %i.ki = icmp ult i64 %i.kh, 16
  call void @llvm.assume(i1 %i.ki)
  switch i64 %i.kh, label %bb.bt [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432
    i64 1, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  %i.kj = load i8, ptr %i.kf, align 1
  store i8 %i.kj, ptr %i.kd, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kd, ptr align 1 %i.kf, i64 %i.kh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432: ; preds = %bb.bt, %bb.bs, %bb.br
  %i.kk = load i64, ptr %i.am, align 8            ; 2 uses
  store i64 %i.kk, ptr %i.x, align 8
  %i.kl = load ptr, ptr %9, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 %i.kk
  store i8 0, ptr %i.km, align 1
  %.pre.i433 = load ptr, ptr %15, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

.thread.i435:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i434
  store ptr %i.kf, ptr %9, align 8
  %i.kn = load <2 x i64>, ptr %i.am, align 8
  store <2 x i64> %i.kn, ptr %i.x, align 8
  br label %bb.bv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i429
  %i.ko = load i64, ptr %i.w, align 8
  store ptr %i.kf, ptr %9, align 8
  %i.kp = load <2 x i64>, ptr %i.am, align 8
  store <2 x i64> %i.kp, ptr %i.x, align 8
  %.not.i431 = icmp eq ptr %i.kd, null
  br i1 %.not.i431, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430
  store ptr %i.kd, ptr %15, align 8
  store i64 %i.ko, ptr %i.al, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i430, %.thread.i435
  store ptr %i.al, ptr %15, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432, %bb.bu, %bb.bv
  %i.kq = phi ptr [ %.pre.i433, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i432 ], [ %i.kd, %bb.bu ], [ %i.al, %bb.bv ]
  store i64 0, ptr %i.am, align 8
  store i8 0, ptr %i.kq, align 1
  %i.kr = load ptr, ptr %15, align 8              ; 2 uses
  %i.ks = icmp eq ptr %i.kr, %i.al
  br i1 %i.ks, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436
  %i.kt = load i64, ptr %i.al, align 8
  %i.ku = add i64 %i.kt, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.ku) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit436, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i437
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.kv = load i64, ptr %i.x, align 8
  switch i64 %i.kv, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.kw = load ptr, ptr %9, align 8               ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 1
  %i.ky = xor i32 %i.kx, 1279741505
  %i.kz = getelementptr i8, ptr %i.kw, i64 4
  %i.la = load i8, ptr %i.kz, align 1
  %i.lb = zext i8 %i.la to i32
  %i.lc = xor i32 %i.lb, 69
  %i.ld = or i32 %i.ky, %i.lc
  %i.le = icmp ne i32 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  store i64 3, ptr %i.an, align 8
  br label %bb.cl

.loopexit995:                                     ; preds = %.noexc10.i.i407
  %lpad.loopexit997 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp996:                            ; preds = %bb.be
  %lpad.loopexit.split-lp998 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp996, %.loopexit995
  %lpad.phi999 = phi { ptr, i32 } [ %lpad.loopexit997, %.loopexit995 ], [ %lpad.loopexit.split-lp998, %.loopexit.split-lp996 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #26
  br label %.body743

.loopexit1000:                                    ; preds = %.noexc10.i.i425
  %lpad.loopexit1002 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp1001:                           ; preds = %bb.bn
  %lpad.loopexit.split-lp1003 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp1001, %.loopexit1000
  %lpad.phi1004 = phi { ptr, i32 } [ %lpad.loopexit1002, %.loopexit1000 ], [ %lpad.loopexit.split-lp1003, %.loopexit.split-lp1001 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  br label %.body743

bb.by:                                            ; preds = %bb.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %.body743

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439
  %i.li = load ptr, ptr %9, align 8               ; 3 uses
  %lhsc = load i8, ptr %i.li, align 1
  %i.lj = icmp eq i8 %lhsc, 88
  br i1 %i.lj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441
  store i64 0, ptr %i.an, align 8
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441
  %lhsc2427 = load i8, ptr %i.li, align 1
  %i.lk = icmp eq i8 %lhsc2427, 89
  br i1 %i.lk, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread909

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443
  store i64 1, ptr %i.an, align 8
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread909: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443
  %lhsc2428 = load i8, ptr %i.li, align 1
  %i.ll = icmp eq i8 %lhsc2428, 90
  br i1 %i.ll, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread909
  store i64 2, ptr %i.an, align 8
  br label %bb.cl

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit439, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread909
  %i.lm = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %bb.bz unwind label %bb.by

bb.bz:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread910
  invoke void @_ZN6Assimp6Logger4warnIJRA26_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA12_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.lm, ptr noundef nonnull align 1 dereferenceable(26) @.str.34, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(12) @.str.35)
          to label %bb.cl unwind label %bb.by

bb.ca:                                            ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread906
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ln = load i64, ptr %i.gx, align 8, !noalias !133 ; 3 uses
  %27 = icmp ugt i64 %i.gu, %i.ln
  br i1 %27, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i446

bb.cb:                                            ; preds = %bb.ca
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.gu, i64 noundef %i.ln) #29
          to label %.noexc450 unwind label %.loopexit.split-lp1006

.noexc450:                                        ; preds = %bb.cb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i446: ; preds = %bb.ca
  store ptr %i.ao, ptr %16, align 8, !alias.scope !133
  %i.lo = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !133
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.gu ; 2 uses
  %i.lq = sub nuw i64 %i.ln, %i.gu                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26, !noalias !133
  store i64 %i.lq, ptr %i.e, align 8, !noalias !133
  %i.lr = icmp ugt i64 %i.lq, 15
  br i1 %i.lr, label %.noexc10.i.i449, label %._crit_edge.i.i.i448

.noexc10.i.i449:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i446
  %i.ls = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc451 unwind label %.loopexit1005 ; 2 uses

.noexc451:                                        ; preds = %.noexc10.i.i449
  store ptr %i.ls, ptr %16, align 8, !alias.scope !133
  %i.lt = load i64, ptr %i.e, align 8, !noalias !133
  store i64 %i.lt, ptr %i.ao, align 8, !alias.scope !133
  br label %._crit_edge.i.i.i448

._crit_edge.i.i.i448:                             ; preds = %.noexc451, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i446
  %i.lu = phi ptr [ %i.ls, %.noexc451 ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i446 ] ; 2 uses
  switch i64 %i.lq, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %bb.ce
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i.i448
  %i.lv = load i8, ptr %i.lp, align 1
  store i8 %i.lv, ptr %i.lu, align 1
  br label %bb.ce

bb.cd:                                            ; preds = %._crit_edge.i.i.i448
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lu, ptr nonnull align 1 %i.lp, i64 %i.lq, i1 false)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %._crit_edge.i.i.i448
  %i.lw = load i64, ptr %i.e, align 8, !noalias !133 ; 2 uses
  store i64 %i.lw, ptr %i.ap, align 8, !alias.scope !133
  %i.lx = load ptr, ptr %16, align 8, !alias.scope !133
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lw
  store i8 0, ptr %i.ly, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26, !noalias !133
  %i.lz = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.ma = icmp eq ptr %i.lz, %i.ae
  %i.mb = load ptr, ptr %16, align 8              ; 5 uses
  %i.mc = icmp eq ptr %i.mb, %i.ao                ; 2 uses
  br i1 %i.ma, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i453

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i458: ; preds = %bb.ce
  br i1 %i.mc, label %bb.cf, label %.thread.i459

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i453: ; preds = %bb.ce
  br i1 %i.mc, label %bb.cf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i454

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i453, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i458
  %i.md = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.me = icmp ult i64 %i.md, 16
  call void @llvm.assume(i1 %i.me)
  switch i64 %i.md, label %bb.ch [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456
    i64 1, label %bb.cg
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.mf = load i8, ptr %i.mb, align 1
  store i8 %i.mf, ptr %i.lz, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456

bb.ch:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lz, ptr align 1 %i.mb, i64 %i.md, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456: ; preds = %bb.ch, %bb.cg, %bb.cf
  %i.mg = load i64, ptr %i.ap, align 8            ; 2 uses
  store i64 %i.mg, ptr %i.af, align 8
  %i.mh = load ptr, ptr %i.ad, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mg
  store i8 0, ptr %i.mi, align 1
  %.pre.i457 = load ptr, ptr %16, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460

.thread.i459:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i458
  store ptr %i.mb, ptr %i.ad, align 8
  %i.mj = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.mj, ptr %i.af, align 8
  br label %bb.cj

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i454: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i453
  %i.mk = load i64, ptr %i.ae, align 8
  store ptr %i.mb, ptr %i.ad, align 8
  %i.ml = load <2 x i64>, ptr %i.ap, align 8
  store <2 x i64> %i.ml, ptr %i.af, align 8
  %.not.i455 = icmp eq ptr %i.lz, null
  br i1 %.not.i455, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i454
  store ptr %i.lz, ptr %16, align 8
  store i64 %i.mk, ptr %i.ao, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i454, %.thread.i459
  store ptr %i.ao, ptr %16, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456, %bb.ci, %bb.cj
  %i.mm = phi ptr [ %.pre.i457, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i456 ], [ %i.lz, %bb.ci ], [ %i.ao, %bb.cj ]
  store i64 0, ptr %i.ap, align 8
  store i8 0, ptr %i.mm, align 1
  %i.mn = load ptr, ptr %16, align 8              ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.ao
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460
  %i.mp = load i64, ptr %i.ao, align 8
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit460, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.cl

.loopexit1005:                                    ; preds = %.noexc10.i.i449
  %lpad.loopexit1007 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp1006:                           ; preds = %bb.cb
  %lpad.loopexit.split-lp1008 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp1006, %.loopexit1005
  %lpad.phi1009 = phi { ptr, i32 } [ %lpad.loopexit1007, %.loopexit1005 ], [ %lpad.loopexit.split-lp1008, %.loopexit.split-lp1006 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %.body743

bb.cl:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit443.thread, %bb.bz, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit445.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit441.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
  %i.mr = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0862.01732, i8 noundef signext 40, i64 noundef 0) #26 ; 6 uses
  %.not318 = icmp eq i64 %i.mr, -1
  br i1 %.not318, label %bb.dm, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.ms = load i64, ptr %i.gx, align 8, !noalias !136 ; 3 uses
  %28 = icmp ugt i64 %i.gu, %i.ms
  br i1 %28, label %bb.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i464

bb.cn:                                            ; preds = %bb.cm
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.gu, i64 noundef %i.ms) #29
          to label %.noexc468 unwind label %.loopexit.split-lp1011

.noexc468:                                        ; preds = %bb.cn
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i464: ; preds = %bb.cm
  %i.mt = xor i64 %i.cp, -1
  %i.mu = add i64 %i.mr, %i.mt
  store ptr %i.aq, ptr %17, align 8, !alias.scope !136
  %i.mv = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !136
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.gu ; 2 uses
  %i.mx = sub nuw i64 %i.ms, %i.gu
  %spec.select.i.i.i465 = call noundef i64 @llvm.umin.i64(i64 %i.mu, i64 %i.mx) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26, !noalias !136
  store i64 %spec.select.i.i.i465, ptr %i.d, align 8, !noalias !136
  %i.my = icmp ugt i64 %spec.select.i.i.i465, 15
  br i1 %i.my, label %.noexc10.i.i467, label %._crit_edge.i.i.i466

.noexc10.i.i467:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i464
  %i.mz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc469 unwind label %.loopexit1010 ; 2 uses

.noexc469:                                        ; preds = %.noexc10.i.i467
  store ptr %i.mz, ptr %17, align 8, !alias.scope !136
  %i.na = load i64, ptr %i.d, align 8, !noalias !136
  store i64 %i.na, ptr %i.aq, align 8, !alias.scope !136
  br label %._crit_edge.i.i.i466

._crit_edge.i.i.i466:                             ; preds = %.noexc469, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i464
  %i.nb = phi ptr [ %i.mz, %.noexc469 ], [ %i.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i464 ] ; 2 uses
  switch i64 %spec.select.i.i.i465, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %bb.cq
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i466
  %i.nc = load i8, ptr %i.mw, align 1
  store i8 %i.nc, ptr %i.nb, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %._crit_edge.i.i.i466
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nb, ptr nonnull align 1 %i.mw, i64 %spec.select.i.i.i465, i1 false)
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i466
  %i.nd = load i64, ptr %i.d, align 8, !noalias !136 ; 2 uses
  store i64 %i.nd, ptr %i.ar, align 8, !alias.scope !136
  %i.ne = load ptr, ptr %17, align 8, !alias.scope !136
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 %i.nd
  store i8 0, ptr %i.nf, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26, !noalias !136
  %i.ng = load ptr, ptr %i.ad, align 8            ; 6 uses
  %i.nh = icmp eq ptr %i.ng, %i.ae
  %i.ni = load ptr, ptr %17, align 8              ; 5 uses
  %i.nj = icmp eq ptr %i.ni, %i.aq                ; 2 uses
  br i1 %i.nh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i476, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i471

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i476: ; preds = %bb.cq
  br i1 %i.nj, label %bb.cr, label %.thread.i477

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i471: ; preds = %bb.cq
  br i1 %i.nj, label %bb.cr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i472

bb.cr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i471, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i476
  %i.nk = load i64, ptr %i.ar, align 8            ; 3 uses
  %i.nl = icmp ult i64 %i.nk, 16
  call void @llvm.assume(i1 %i.nl)
  switch i64 %i.nk, label %bb.ct [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474
    i64 1, label %bb.cs
  ]

bb.cs:                                            ; preds = %bb.cr
  %i.nm = load i8, ptr %i.ni, align 1
  store i8 %i.nm, ptr %i.ng, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ng, ptr align 1 %i.ni, i64 %i.nk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474: ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.nn = load i64, ptr %i.ar, align 8            ; 2 uses
  store i64 %i.nn, ptr %i.af, align 8
  %i.no = load ptr, ptr %i.ad, align 8
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nn
  store i8 0, ptr %i.np, align 1
  %.pre.i475 = load ptr, ptr %17, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478

.thread.i477:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i476
  store ptr %i.ni, ptr %i.ad, align 8
  %i.nq = load <2 x i64>, ptr %i.ar, align 8
  store <2 x i64> %i.nq, ptr %i.af, align 8
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i472: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i471
  %i.nr = load i64, ptr %i.ae, align 8
  store ptr %i.ni, ptr %i.ad, align 8
  %i.ns = load <2 x i64>, ptr %i.ar, align 8
  store <2 x i64> %i.ns, ptr %i.af, align 8
  %.not.i473 = icmp eq ptr %i.ng, null
  br i1 %.not.i473, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i472
  store ptr %i.ng, ptr %17, align 8
  store i64 %i.nr, ptr %i.aq, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i472, %.thread.i477
  store ptr %i.aq, ptr %17, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474, %bb.cu, %bb.cv
  %i.nt = phi ptr [ %.pre.i475, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i474 ], [ %i.ng, %bb.cu ], [ %i.aq, %bb.cv ]
  store i64 0, ptr %i.ar, align 8
  store i8 0, ptr %i.nt, align 1
  %i.nu = load ptr, ptr %17, align 8              ; 2 uses
  %i.nv = icmp eq ptr %i.nu, %i.aq
  br i1 %i.nv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478
  %i.nw = load i64, ptr %i.aq, align 8
  %i.nx = add i64 %i.nw, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.nx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit478, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  store i64 0, ptr %i.x, align 8
  %i.ny = load ptr, ptr %9, align 8
  store i8 0, ptr %i.ny, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.nz = load i64, ptr %i.gx, align 8, !noalias !139 ; 3 uses
  %i.oa = icmp ugt i64 %i.mr, %i.nz
  br i1 %i.oa, label %bb.cw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i482

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.97, i64 noundef %i.mr, i64 noundef %i.nz) #29
          to label %.noexc486 unwind label %.loopexit.split-lp1016

.noexc486:                                        ; preds = %bb.cw
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i482: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
  store ptr %i.as, ptr %18, align 8, !alias.scope !139
  %i.ob = load ptr, ptr %.sroa.0862.01732, align 8, !noalias !139
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.mr ; 2 uses
  %i.od = sub nuw i64 %i.nz, %i.mr                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26, !noalias !139
  store i64 %i.od, ptr %i.c, align 8, !noalias !139
  %i.oe = icmp ugt i64 %i.od, 15
  br i1 %i.oe, label %.noexc10.i.i485, label %._crit_edge.i.i.i484

.noexc10.i.i485:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i482
  %i.of = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc487 unwind label %.loopexit1015 ; 2 uses

.noexc487:                                        ; preds = %.noexc10.i.i485
  store ptr %i.of, ptr %18, align 8, !alias.scope !139
  %i.og = load i64, ptr %i.c, align 8, !noalias !139
  store i64 %i.og, ptr %i.as, align 8, !alias.scope !139
  br label %._crit_edge.i.i.i484

._crit_edge.i.i.i484:                             ; preds = %.noexc487, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i482
  %i.oh = phi ptr [ %i.of, %.noexc487 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i482 ] ; 2 uses
  switch i64 %i.od, label %bb.cy [
    i64 1, label %bb.cx
    i64 0, label %bb.cz
  ]

bb.cx:                                            ; preds = %._crit_edge.i.i.i484
  %i.oi = load i8, ptr %i.oc, align 1
  store i8 %i.oi, ptr %i.oh, align 1
  br label %bb.cz

bb.cy:                                            ; preds = %._crit_edge.i.i.i484
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oh, ptr align 1 %i.oc, i64 %i.od, i1 false)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %._crit_edge.i.i.i484
  %i.oj = load i64, ptr %i.c, align 8, !noalias !139 ; 2 uses
  store i64 %i.oj, ptr %i.at, align 8, !alias.scope !139
  %i.ok = load ptr, ptr %18, align 8, !alias.scope !139
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oj
  store i8 0, ptr %i.ol, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26, !noalias !139
  %i.om = load ptr, ptr %9, align 8               ; 6 uses
  %i.on = icmp eq ptr %i.om, %i.w
  %i.oo = load ptr, ptr %18, align 8              ; 5 uses
  %i.op = icmp eq ptr %i.oo, %i.as                ; 2 uses
  br i1 %i.on, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i489

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i494: ; preds = %bb.cz
  br i1 %i.op, label %bb.da, label %.thread.i495

end_hunk_1
