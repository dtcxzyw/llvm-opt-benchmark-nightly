Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/TypeInfer?download=true
inline.NumInlined: 13252
inline.NumDeleted: 4925
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN4Luau11TypeChecker14checkExprTableERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableERKSt6vectorISt4pairIPKNS_4TypeESD_ESaISE_EESt8optionalISD_E:bb.a
bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.j, align 8, !tbaa !545
  %i.l = icmp eq i32 %i.k, 9
  br i1 %i.l, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.o = load i32, ptr %i.n, align 8, !tbaa !725
  %i.p = icmp eq i32 %i.o, 0
  %spec.select = select i1 %i.p, ptr %i.m, ptr null
  br label %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread

_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread: ; preds = %bb.c, %bb.d, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %spec.select, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit ], [ null, %bb.d ], [ null, %bb.c ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !935
  %.not256 = icmp eq i64 %i.r, 0
  br i1 %.not256, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 3 uses
  %.not87 = icmp eq ptr %.1, null                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.1, i64 8 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 120 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %.1, i64 48 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 56 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %16, i64 136 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %16, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %16, i64 120 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %16, i64 88
  %i.ba = getelementptr inbounds nuw i8, ptr %16, i64 96
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1800
  br label %bb.e

._crit_edge:                                      ; preds = %bb.br, %_ZN4Luau3getINS_9TableTypeEEEPKT_PKNS_4TypeE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #35
  %i.bh = load ptr, ptr %1, align 8, !tbaa !309
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 120
  %.sroa.0.0.copyload = load i64, ptr %i.bi, align 8, !tbaa !75
  invoke void @_ZN4Luau9TableTypeC1ERKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_8PropertyESt4lessIS7_ESaISt4pairIKS7_S8_EEERKSt8optionalINS_12TableIndexerEENS_9TypeLevelENS_10TableStateE(ptr noundef nonnull align 8 dereferenceable(328) %23, ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 %.sroa.0.0.copyload, i32 noundef 1)
          to label %bb.bs unwind label %bb.bv

bb.e:                                             ; preds = %.lr.ph, %bb.br
  %.062255 = phi i64 [ 0, %.lr.ph ], [ %i.ky, %bb.br ] ; 3 uses
  %i.bj = load ptr, ptr %i.s, align 8, !tbaa !938
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.062255 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !942 ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !943 ; 2 uses
  %i.bp = load ptr, ptr %3, align 8, !tbaa !937
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bp, i64 %.062255 ; 2 uses
  %.sroa.0213.0.copyload = load ptr, ptr %i.bq, align 8 ; 2 uses
  %.sroa.6215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.6215.0.copyload = load ptr, ptr %.sroa.6215.0..sroa_idx, align 8 ; 5 uses
  %i.br = load i32, ptr %i.bk, align 8, !tbaa !941
  switch i32 %i.br, label %bb.br [
    i32 0, label %bb.f
    i32 1, label %bb.k
    i32 2, label %bb.k
  ]

bb.f:                                             ; preds = %bb.e
  %i.bs = load i8, ptr %i.h, align 8, !range !104 ; 2 uses
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond = select i1 %.not87, i1 true, i1 %i.bt
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %.pre264 = load i8, ptr %i.h, align 8, !tbaa !645, !range !104
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bu = phi i8 [ %.pre264, %bb.g ], [ %i.bs, %bb.f ]
  %i.bv = trunc nuw i8 %i.bu to i1
  %i.bw = load ptr, ptr %i.bg, align 8, !tbaa !637 ; 2 uses
  br i1 %i.bv, label %bb.i, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %11, align 8, !tbaa !647
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store i8 0, ptr %9, align 1, !tbaa !639
  %i.bz = invoke noundef zeroext i1 @_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationERKNS_14UnifierOptionsE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %i.bw, ptr noundef %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  %i.ca = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !648
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store i8 0, ptr %8, align 1, !tbaa !639
  %i.cb = invoke noundef zeroext i1 @_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationERKNS_14UnifierOptionsE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.sroa.6215.0.copyload, ptr noundef %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.by, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit103: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  br label %bb.br

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit: ; preds = %bb.h
  %i.cc = load ptr, ptr %i.t, align 8, !tbaa !347
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 928
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !509
  %spec.select.i.i = icmp ult i32 %i.ce, 2
  %i.cf = load ptr, ptr %i.u, align 8
  %.0.i = select i1 %spec.select.i.i, ptr %i.cf, ptr %.sroa.6215.0.copyload
  store ptr %i.bw, ptr %11, align 8, !tbaa !269
  store ptr %.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !269
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !529
  store i8 1, ptr %i.h, align 8, !tbaa !645
  br label %bb.br

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !96
  %i.ci = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !75
  %i.cj = icmp ne i32 %i.ch, %i.ci
  %.not83229 = icmp eq ptr %i.bm, null
  %.not83 = select i1 %i.cj, i1 true, i1 %.not83229
  br i1 %.not83, label %bb.bl, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = invoke noundef ptr @_ZN4Luau6followEPKNS_4TypeE(ptr noundef %.sroa.6215.0.copyload)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !347
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 928
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !509
  %spec.select.i = icmp ult i32 %i.cn, 2
  br i1 %spec.select.i, label %bb.n, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.n:                                             ; preds = %bb.m
  %i.co = invoke noundef ptr @_ZN4Luau12getTableTypeEPKNS_4TypeE(ptr noundef %i.ck)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %.not85 = icmp eq ptr %i.co, null
  br i1 %.not85, label %bb.p, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i104 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i104, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !545
  %i.cq = icmp eq i32 %i.cp, 8
  br i1 %i.cq, label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cr = load ptr, ptr %i.u, align 8, !tbaa !538
  br label %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit

_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit: ; preds = %bb.q, %bb.r, %bb.o, %bb.m
  %.060 = phi ptr [ %i.ck, %bb.o ], [ %i.ck, %bb.m ], [ %i.cr, %bb.r ], [ %i.ck, %bb.q ] ; 7 uses
  br i1 %.not87, label %bb.av, label %bb.s

bb.s:                                             ; preds = %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !770 ; 4 uses
  store ptr %i.v, ptr %12, align 8, !tbaa !287
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cv = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ct) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.cv, ptr %i.b, align 8, !tbaa !608
  %i.cw = icmp ugt i64 %i.cv, 15
  br i1 %i.cw, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.u
  %i.cx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc105 unwind label %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc105:                                        ; preds = %.noexc.i
  store ptr %i.cx, ptr %12, align 8, !tbaa !81
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !608
  store i64 %i.cy, ptr %i.v, align 8, !tbaa !288
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc105, %bb.u
  %i.cz = phi ptr [ %i.cx, %.noexc105 ], [ %i.v, %bb.u ] ; 2 uses
  switch i64 %i.cv, label %bb.w [
    i64 1, label %bb.v
    i64 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !288
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !288
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr nonnull align 1 %i.ct, i64 %i.cv, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i
  %i.db = load i64, ptr %i.b, align 8, !tbaa !608 ; 2 uses
  store i64 %i.db, ptr %i.w, align 8, !tbaa !133
  %i.dc = load ptr, ptr %12, align 8, !tbaa !81
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 0, ptr %i.dd, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.de = load ptr, ptr %i.x, align 8, !tbaa !760 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.de, null
  %.pre = load ptr, ptr %12, align 8              ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.x
  %i.df = load i64, ptr %i.w, align 8, !tbaa !133 ; 4 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.de, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.df, i64 %i.dh) ; 2 uses
  %i.di = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.di, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !81
  %i.dl = call i32 @memcmp(ptr noundef %i.dk, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.y
  %i.dm = sub i64 %i.dh, %i.df
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dm, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.dl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.dn = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.dn, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.dn, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !761 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.y, !llvm.loop !16

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.do = icmp eq ptr %.19.i.i.i, %i.y
  br i1 %i.do, label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, label %bb.z

bb.z:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !133 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.df) ; 2 uses
  %i.dr = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.dr, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !81
  %i.du = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.dt, i64 noundef %.sroa.speculated.i.i.i.i.i) #35 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.du, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.z
  %i.dv = sub i64 %i.df, %i.dq
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.dv, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.du, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.dw = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i106 = select i1 %i.dw, ptr %i.y, ptr %.19.i.i.i
  br label %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit

_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.x
  %.sroa.0.0.i.i = phi ptr [ %i.y, %bb.x ], [ %i.y, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISA_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %spec.select.i.i106, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ] ; 2 uses
  %i.dx = icmp eq ptr %.pre, %i.v
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit
  %i.dy = load i64, ptr %i.v, align 8, !tbaa !288
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.dz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEE4findERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %.not = icmp eq ptr %.sroa.0.0.i.i, %i.y
  br i1 %.not, label %bb.ao, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  invoke void @_ZN4Luau8PropertyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %13, ptr noundef nonnull align 8 dereferenceable(176) %i.ea)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.eb = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %13)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  invoke void @_ZN4Luau11TypeChecker9tryUnify_IPKNS_4TypeEEESt6vectorINS_9TypeErrorESaIS6_EET_S9_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.264") align 8 %14, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.060, ptr noundef %i.eb, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ec)
          to label %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit unwind label %bb.af

_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit: ; preds = %bb.ac
  %i.ed = load ptr, ptr %14, align 8, !tbaa !536  ; 2 uses
  %i.ee = load ptr, ptr %i.z, align 8, !tbaa !536 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.eg = invoke noundef ptr @_ZNK4Luau8Property15type_DEPRECATEDEv(ptr noundef nonnull align 8 dereferenceable(176) %13)
          to label %._crit_edge260 unwind label %bb.ag

._crit_edge260:                                   ; preds = %bb.ad
  %.pre261 = load ptr, ptr %14, align 8, !tbaa !557
  %.pre262 = load ptr, ptr %i.z, align 8, !tbaa !548
  br label %bb.ah

.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i, %bb.t
  %lpad.loopexit.split-lp341 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  br label %.loopexit.split-lp

bb.ae:                                            ; preds = %bb.aa
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.af:                                            ; preds = %bb.ac, %bb.ab
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ag:                                            ; preds = %bb.ad
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #35
  br label %bb.am

bb.ah:                                            ; preds = %._crit_edge260, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit
  %i.ej = phi ptr [ %i.ee, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ], [ %.pre262, %._crit_edge260 ] ; 2 uses
  %i.ek = phi ptr [ %i.ed, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ], [ %.pre261, %._crit_edge260 ] ; 3 uses
  %.161 = phi ptr [ %.060, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit ], [ %i.eg, %._crit_edge260 ]
  %.not4.i.i.i = icmp eq ptr %i.ek, %i.ej
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i111

.lr.ph.i.i.i111:                                  ; preds = %bb.ah, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ez, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i ], [ %i.ek, %bb.ah ] ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48
  %i.em = load i32, ptr %i.el, align 8, !tbaa !303
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !82
  %i.eq = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  invoke void %i.ep(ptr noundef nonnull %i.eq)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy unwind label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i111
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy: ; preds = %.lr.ph.i.i.i111
  %i.et = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !81 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !288
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #36
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i:  ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i112 = icmp eq ptr %i.ez, %i.ej
  br i1 %.not.i.i.i112, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i111, !llvm.loop !4

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %14, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.ah
  %i.fa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ek, %bb.ah ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i
  %i.fb = load ptr, ptr %i.aa, align 8, !tbaa !586
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.fe) #36
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit:  ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  %i.ff = load i8, ptr %i.ab, align 8, !tbaa !444, !range !104, !noundef !105
  %i.fg = trunc nuw i8 %i.ff to i1
  store i8 0, ptr %i.ab, align 8, !tbaa !444
  br i1 %i.fg, label %bb.ak, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

bb.ak:                                            ; preds = %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit
  %i.fh = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.ad
  br i1 %i.fi, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113: ; preds = %bb.ak
  %i.fj = load i64, ptr %i.ad, align 8, !tbaa !288
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i113, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit
  %i.fl = load ptr, ptr %i.ae, align 8, !tbaa !762 ; 3 uses
  %i.fm = load ptr, ptr %i.af, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.fs, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.fl, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %i.fn = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !81 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.fp = icmp eq ptr %i.fn, %i.fo
  br i1 %i.fp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i: ; preds = %.lr.ph.i.i.i.i
  %i.fq = load i64, ptr %i.fo, align 8, !tbaa !288
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fr) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i
  %i.fs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fs, %i.fm
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ae, align 8, !tbaa !762
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i
  %i.ft = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.fl, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ft, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.fu = load ptr, ptr %i.ag, align 8, !tbaa !764
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.ft to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.ft, i64 noundef %i.fx) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.al, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.fy = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.ai
  br i1 %i.fz, label %_ZN4Luau8PropertyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ga = load i64, ptr %i.ai, align 8, !tbaa !288
  %i.gb = add i64 %i.ga, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gb) #36
  br label %_ZN4Luau8PropertyD2Ev.exit

_ZN4Luau8PropertyD2Ev.exit:                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %bb.av

bb.am:                                            ; preds = %bb.ag, %bb.af
  %.pn90 = phi { ptr, i32 } [ %24, %bb.ag ], [ %i.ei, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %13) #35
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ae
  %.pn90.pn = phi { ptr, i32 } [ %.pn90, %bb.am ], [ %i.eh, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  br label %.loopexit.split-lp

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gc = load i8, ptr %i.aj, align 8, !tbaa !645, !range !104, !noundef !105
  %i.gd = trunc nuw i8 %i.gc to i1
  br i1 %i.gd, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !647
  %i.gf = invoke noundef zeroext i1 @_ZN4Luau11maybeStringEPKNS_4TypeE(ptr noundef %i.ge)
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.gf, label %bb.ar, label %bb.av

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.gg = load ptr, ptr %i.al, align 8, !tbaa !648
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  invoke void @_ZN4Luau11TypeChecker9tryUnify_IPKNS_4TypeEEESt6vectorINS_9TypeErrorESaIS6_EET_S9_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.264") align 8 %15, ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.060, ptr noundef %i.gg, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.gh)
          to label %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116 unwind label %bb.as

_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116: ; preds = %bb.ar
  %i.gi = load ptr, ptr %15, align 8, !tbaa !536  ; 3 uses
  %i.gj = load ptr, ptr %i.am, align 8, !tbaa !536 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %.thread, label %.lr.ph.i.i.i118

.thread:                                          ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116
  %i.gl = load ptr, ptr %i.al, align 8, !tbaa !648
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.n, %bb.i, %bb.j, %bb.bo, %bb.bp, %bb.ap, %bb.b
  %lpad.loopexit.split-lp339 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %.loopexit.split-lp

.lr.ph.i.i.i118:                                  ; preds = %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123
  %.05.i.i.i119 = phi ptr [ %i.hb, %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123 ], [ %i.gi, %_ZN4Luau11TypeChecker8tryUnifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit116 ] ; 5 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 48
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !303
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds [8 x i8], ptr @_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExternTypesUnsafeENS_23UninhabitedTypeFunctionENS_27UninhabitedTypePackFunctionENS_17WhereClauseNeededENS_21PackWhereClauseNeededENS_24CheckedFunctionCallErrorENS_32NonStrictFunctionDefinitionErrorENS_23PropertyAccessViolationENS_28CheckedFunctionIncorrectArgsENS_25UnexpectedTypeInSubtypingENS_29UnexpectedTypePackInSubtypingENS_37ExplicitFunctionAnnotationRecommendedENS_28UserDefinedTypeFunctionErrorENS_24BuiltInTypeFunctionErrorENS_18ReservedIdentifierENS_28UnexpectedArrayLikeTableItemENS_35CannotCheckDynamicStringFormatCallsENS_24GenericTypeCountMismatchENS_28GenericTypePackCountMismatchENS_26MultipleNonviableOverloadsENS_27RecursiveRestraintViolationENS_21GenericBoundsMismatchENS_21UnappliedTypeFunctionENS_32InstantiateGenericsOnNonFunctionENS_30TypeInstantiationCountMismatchENS_21AmbiguousFunctionCallEEE9tableDtorE, i64 %i.gp
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !82
  %i.gs = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 56
  invoke void %i.gr(ptr noundef nonnull %i.gs)
          to label %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121 unwind label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i.i118
  %i.gt = landingpad { ptr, i32 }
          catch ptr null
  %i.gu = extractvalue { ptr, i32 } %i.gt, 0
  call void @__clang_call_terminate(ptr %i.gu) #34
  unreachable

_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121: ; preds = %.lr.ph.i.i.i118
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !81 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !288
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #36
  br label %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123

_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123: ; preds = %_ZN4Luau7VariantIJNS_12TypeMismatchENS_13UnknownSymbolENS_15UnknownPropertyENS_9NotATableENS_17CannotExtendTableENS_27CannotCompareUnrelatedTypesENS_24OnlyTablesCanHaveMethodsENS_23DuplicateTypeDefinitionENS_13CountMismatchENS_23FunctionDoesNotTakeSelfENS_20FunctionRequiresSelfENS_17OccursCheckFailedENS_14UnknownRequireENS_30IncorrectGenericParameterCountENS_11SyntaxErrorENS_14CodeTooComplexENS_21UnificationTooComplexENS_27UnknownPropButFoundLikePropENS_12GenericErrorENS_13InternalErrorENS_32ConstraintSolvingIncompleteErrorENS_21CannotCallNonFunctionENS_16ExtraInformationENS_17DeprecatedApiUsedENS_25ModuleHasCyclicDependencyENS_25CyclicModuleGraphTooLargeENS_14IllegalRequireENS_29FunctionExitsWithoutReturningENS_25DuplicateGenericParameterENS_19CannotAssignToNeverENS_26CannotInferBinaryOperationENS_17MissingPropertiesENS_27SwappedGenericTypeParameterENS_19OptionalValueAccessENS_20MissingUnionPropertyENS_17TypesAreUnrelatedENS_23NormalizationTooComplexENS_16TypePackMismatchENS_40DynamicPropertyLookupOnExter121, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i122
  %i.hb = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 184 ; 2 uses
  %.not.i.i.i124 = icmp eq ptr %i.hb, %i.gj
  br i1 %.not.i.i.i124, label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125, label %.lr.ph.i.i.i118, !llvm.loop !4

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125: ; preds = %_ZSt8_DestroyIN4Luau9TypeErrorEEvPT_.exit.i.i.i123
  %.pr.i126 = load ptr, ptr %15, align 8, !tbaa !557
  br label %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127

_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127: ; preds = %.thread, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125
  %.2225 = phi ptr [ %.060, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125 ], [ %i.gl, %.thread ]
  %i.hc = phi ptr [ %.pr.i126, %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i125 ], [ %i.gi, %.thread ] ; 3 uses
  %.not.i.i1.i128 = icmp eq ptr %i.hc, null
  br i1 %.not.i.i1.i128, label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130, label %bb.au

bb.au:                                            ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127
  %i.hd = load ptr, ptr %i.an, align 8, !tbaa !586
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hc to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hc, i64 noundef %i.hg) #36
  br label %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130

_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130: ; preds = %_ZSt8_DestroyIPN4Luau9TypeErrorES1_EvT_S3_RSaIT0_E.exit.i127, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  br label %bb.av

bb.av:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130, %bb.aq, %bb.ao, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit
  %.4 = phi ptr [ %.060, %_ZN4Luau3getINS_12FunctionTypeEEEPKT_PKNS_4TypeE.exit ], [ %.161, %_ZN4Luau8PropertyD2Ev.exit ], [ %.2225, %_ZNSt6vectorIN4Luau9TypeErrorESaIS1_EED2Ev.exit130 ], [ %.060, %bb.aq ], [ %.060, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #35
  store ptr %i.ao, ptr %17, align 8, !tbaa !287
  store i64 0, ptr %i.ap, align 8, !tbaa !133
  store i8 0, ptr %i.ao, align 8, !tbaa !288
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %18, ptr noundef nonnull align 4 dereferenceable(16) %i.hh, i64 16, i1 false), !tbaa.struct !506
  store i8 1, ptr %i.aq, align 8, !tbaa !732
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #35
  store i8 0, ptr %i.ar, align 8, !tbaa !444
  store i8 0, ptr %i.as, align 8, !tbaa !732
  invoke void @_ZN4Luau8PropertyC1EPKNS_4TypeEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8optionalINS_8LocationEERKSt6vectorIS9_SaIS9_EERKSC_IS9_ESE_(ptr noundef nonnull align 8 dereferenceable(176) %16, ptr noundef %.4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull byval(%"class.std::optional") align 8 %18, ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef nonnull byval(%"class.std::optional") align 8 %21)
          to label %bb.aw unwind label %bb.bh

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #35
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !770 ; 4 uses
  store ptr %i.at, ptr %22, align 8, !tbaa !287
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.178) #38
          to label %.noexc133 unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp

.noexc133:                                        ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.hl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hj) #35 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.hl, ptr %i.a, align 8, !tbaa !608
  %i.hm = icmp ugt i64 %i.hl, 15
  br i1 %i.hm, label %.noexc.i132, label %._crit_edge.i.i131

.noexc.i132:                                      ; preds = %bb.ay
  %i.hn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc134 unwind label %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc134:                                        ; preds = %.noexc.i132
  store ptr %i.hn, ptr %22, align 8, !tbaa !81
  %i.ho = load i64, ptr %i.a, align 8, !tbaa !608
  store i64 %i.ho, ptr %i.at, align 8, !tbaa !288
  br label %._crit_edge.i.i131

._crit_edge.i.i131:                               ; preds = %.noexc134, %bb.ay
  %i.hp = phi ptr [ %i.hn, %.noexc134 ], [ %i.at, %bb.ay ] ; 2 uses
  switch i64 %i.hl, label %bb.ba [
    i64 1, label %bb.az
    i64 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i131
  %i.hq = load i8, ptr %i.hj, align 1, !tbaa !288
  store i8 %i.hq, ptr %i.hp, align 1, !tbaa !288
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i131
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hp, ptr nonnull align 1 %i.hj, i64 %i.hl, i1 false)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i131
  %i.hr = load i64, ptr %i.a, align 8, !tbaa !608 ; 2 uses
  store i64 %i.hr, ptr %i.au, align 8, !tbaa !133
  %i.hs = load ptr, ptr %22, align 8, !tbaa !81
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  store i8 0, ptr %i.ht, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.hu = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEEixEOS5_(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.bc unwind label %bb.bi

bb.bc:                                            ; preds = %bb.bb
  %i.hv = call noundef nonnull align 8 dereferenceable(176) ptr @_ZN4Luau8PropertyaSEOS0_(ptr noundef nonnull align 8 dereferenceable(176) %i.hu, ptr noundef nonnull align 8 dereferenceable(176) %16) #35 ; 0 uses
  %i.hw = load ptr, ptr %22, align 8, !tbaa !81   ; 2 uses
  %i.hx = icmp eq ptr %i.hw, %i.at
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.bc
  %i.hy = load i64, ptr %i.at, align 8, !tbaa !288
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.hz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  %i.ia = load i8, ptr %i.av, align 8, !tbaa !444, !range !104, !noundef !105
  %i.ib = trunc nuw i8 %i.ia to i1
  store i8 0, ptr %i.av, align 8, !tbaa !444
  br i1 %i.ib, label %bb.bd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139

bb.bd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ic = load ptr, ptr %i.aw, align 8, !tbaa !81 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ax
  br i1 %i.id, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154: ; preds = %bb.bd
  %i.ie = load i64, ptr %i.ax, align 8, !tbaa !288
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ig = load ptr, ptr %i.ay, align 8, !tbaa !762 ; 3 uses
  %i.ih = load ptr, ptr %i.az, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i.i140 = icmp eq ptr %i.ig, %i.ih
  br i1 %.not4.i.i.i.i140, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148, label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144
  %.05.i.i.i.i142 = phi ptr [ %i.in, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144 ], [ %i.ig, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139 ] ; 3 uses
  %i.ii = load ptr, ptr %.05.i.i.i.i142, align 8, !tbaa !81 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i142, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143: ; preds = %.lr.ph.i.i.i.i141
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !288
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144: ; preds = %.lr.ph.i.i.i.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1.i143
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i142, i64 32 ; 2 uses
  %.not.i.i.i.i145 = icmp eq ptr %i.in, %i.ih
  br i1 %.not.i.i.i.i145, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146, label %.lr.ph.i.i.i.i141, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i144
  %.pr.i.i147 = load ptr, ptr %i.ay, align 8, !tbaa !762
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139
  %i.io = phi ptr [ %.pr.i.i147, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i146 ], [ %i.ig, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit.i139 ] ; 3 uses
  %.not.i.i1.i.i149 = icmp eq ptr %i.io, null
  br i1 %.not.i.i1.i.i149, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148
  %i.ip = load ptr, ptr %i.ba, align 8, !tbaa !764
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.is) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150: ; preds = %bb.be, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i148
  %i.it = load ptr, ptr %i.bb, align 8, !tbaa !81 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.bc
  br i1 %i.iu, label %_ZN4Luau8PropertyD2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150
  %i.iv = load i64, ptr %i.bc, align 8, !tbaa !288
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #36
  br label %_ZN4Luau8PropertyD2Ev.exit156

_ZN4Luau8PropertyD2Ev.exit156:                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i150, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i151
  %i.ix = load i8, ptr %i.ar, align 8, !tbaa !444, !range !104, !noundef !105
  %i.iy = trunc nuw i8 %i.ix to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !444
  br i1 %i.iy, label %bb.bf, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.bf:                                            ; preds = %_ZN4Luau8PropertyD2Ev.exit156
  %i.iz = load ptr, ptr %20, align 8, !tbaa !81   ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.bd
  br i1 %i.ja, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.bf
  %i.jb = load i64, ptr %i.bd, align 8, !tbaa !288
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.bf, %_ZN4Luau8PropertyD2Ev.exit156, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  %i.jd = load ptr, ptr %19, align 8, !tbaa !762  ; 3 uses
  %i.je = load ptr, ptr %i.be, align 8, !tbaa !763 ; 2 uses
  %.not4.i.i.i157 = icmp eq ptr %i.jd, %i.je
  br i1 %.not4.i.i.i157, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i158

.lr.ph.i.i.i158:                                  ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i159 = phi ptr [ %i.jk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.jd, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit ] ; 3 uses
  %i.jf = load ptr, ptr %.05.i.i.i159, align 8, !tbaa !81 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 16 ; 2 uses
  %i.jh = icmp eq ptr %i.jf, %i.jg
  br i1 %i.jh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160: ; preds = %.lr.ph.i.i.i158
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !288
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jj) #36
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i160
  %i.jk = getelementptr inbounds nuw i8, ptr %.05.i.i.i159, i64 32 ; 2 uses
  %.not.i.i.i161 = icmp eq ptr %i.jk, %i.je
  br i1 %.not.i.i.i161, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i158, !llvm.loop !17

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i162 = load ptr, ptr %19, align 8, !tbaa !762
end_hunk_0
begin_hunk_1_@_ZN4Luau11TypeChecker14checkExprTableERKSt10shared_ptrINS_5ScopeEERKNS_12AstExprTableERKSt6vectorISt4pairIPKNS_4TypeESD_ESaISE_EESt8optionalISD_E:bb.a
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.jq = load ptr, ptr %17, align 8, !tbaa !81   ; 2 uses
  %i.jr = icmp eq ptr %i.jq, %i.ao
  br i1 %i.jr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.js = load i64, ptr %i.ao, align 8, !tbaa !288
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.jt) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %bb.br

bb.bh:                                            ; preds = %bb.av
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc.i132, %bb.ax
  %lpad.loopexit.split-lp344 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

bb.bi:                                            ; preds = %bb.bb
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %22, align 8, !tbaa !81   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.at
  br i1 %i.jx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.bi
  %i.jy = load i64, ptr %i.at, align 8, !tbaa !288
  %i.jz = add i64 %i.jy, 1
  call void @_ZdlPvm(ptr noundef %i.jw, i64 noundef %i.jz) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.bi, %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  %.pn94 = phi { ptr, i32 } [ %i.jv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168 ], [ %lpad.loopexit.split-lp344, %.loopexit.split-lp236.loopexit.split-lp.loopexit.split-lp ], [ %i.jv, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #35
  call void @_ZN4Luau8PropertyD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %16) #35
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %bb.bh
  %.pn94.pn = phi { ptr, i32 } [ %.pn94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170 ], [ %i.ju, %bb.bh ]
  %i.ka = load i8, ptr %i.ar, align 8, !tbaa !444, !range !104, !noundef !105
  %i.kb = trunc nuw i8 %i.ka to i1
  store i8 0, ptr %i.ar, align 8, !tbaa !444
  br i1 %i.kb, label %bb.bk, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173

bb.bk:                                            ; preds = %bb.bj
  %i.kc = load ptr, ptr %20, align 8, !tbaa !81   ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.bd
  br i1 %i.kd, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171: ; preds = %bb.bk
  %i.ke = load i64, ptr %i.bd, align 8, !tbaa !288
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #36
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173: ; preds = %bb.bk, %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i171
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #35
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #35
  %i.kg = load ptr, ptr %17, align 8, !tbaa !81   ; 2 uses
  %i.kh = icmp eq ptr %i.kg, %i.ao
  br i1 %i.kh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173
  %i.ki = load i64, ptr %i.ao, align 8, !tbaa !288
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kg, i64 noundef %i.kj) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176: ; preds = %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit173, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i174
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #35
  br label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.k
  %i.kk = load i8, ptr %i.h, align 8, !range !104 ; 2 uses
  %i.kl = trunc nuw i8 %i.kk to i1
  %or.cond228 = select i1 %.not87, i1 true, i1 %i.kl
  br i1 %or.cond228, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false)
  %.pre263 = load i8, ptr %i.h, align 8, !tbaa !645, !range !104
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.km = phi i8 [ %.pre263, %bb.bm ], [ %i.kk, %bb.bl ]
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.ko = load ptr, ptr %11, align 8, !tbaa !647
  %i.kp = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store i8 0, ptr %7, align 1, !tbaa !639
  %i.kq = invoke noundef zeroext i1 @_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationERKNS_14UnifierOptionsE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.sroa.0213.0.copyload, ptr noundef %i.ko, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.kp, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  %i.kr = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !648
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  store i8 0, ptr %6, align 1, !tbaa !639
  %i.kt = invoke noundef zeroext i1 @_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationERKNS_14UnifierOptionsE(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef %.sroa.6215.0.copyload, ptr noundef %i.kr, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.ks, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit180 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit180: ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  br label %bb.br

bb.bq:                                            ; preds = %bb.bn
  %i.ku = load ptr, ptr %i.t, align 8, !tbaa !347
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 928
  %i.kw = load i32, ptr %i.kv, align 8, !tbaa !509
  %spec.select.i181 = icmp ult i32 %i.kw, 2
  br i1 %spec.select.i181, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit182, label %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit183

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit182: ; preds = %bb.bq
  %i.kx = load ptr, ptr %i.u, align 8, !tbaa !538 ; 2 uses
  store ptr %i.kx, ptr %11, align 8, !tbaa !269
  store ptr %i.kx, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !269
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !529
  store i8 1, ptr %i.h, align 8, !tbaa !645
  br label %bb.br

_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit183: ; preds = %bb.bq
  store ptr %.sroa.0213.0.copyload, ptr %11, align 8, !tbaa !269
  store ptr %.sroa.6215.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !269
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !529
  store i8 1, ptr %i.h, align 8, !tbaa !645
  br label %bb.br

bb.br:                                            ; preds = %_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit180, %_ZN4Luau11TypeChecker5unifyEPKNS_4TypeES3_RKSt10shared_ptrINS_5ScopeEERKNS_8LocationE.exit103, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit182, %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit183, %bb.e, %_ZNSt8optionalIN4Luau12TableIndexerEEaSIS1_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS2_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEES5_ISt6__and_IJSt9is_scalarIS1_ES6_IS1_NSt5decayIS9_E4typeEEEEESt16is_constructibleIS1_JS9_EESt13is_assignableIRS1_S9_EEERS2_E4typeEOS9_.exit
  %i.ky = add nuw i64 %.062255, 1                 ; 2 uses
  %i.kz = load i64, ptr %i.q, align 8, !tbaa !935
  %i.la = icmp ult i64 %i.ky, %i.kz
  br i1 %i.la, label %bb.e, label %._crit_edge, !llvm.loop !1614

bb.bs:                                            ; preds = %._crit_edge
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !347
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %23, i64 232
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.le, ptr noundef nonnull align 8 dereferenceable(32) %i.ld)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.bw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bs
  %i.lf = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.lg = getelementptr inbounds nuw i8, ptr %23, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, ptr noundef nonnull align 4 dereferenceable(16) %i.lf, i64 16, i1 false), !tbaa.struct !506
  %i.lh = invoke noundef ptr @_ZN4Luau11TypeChecker7addTypeINS_9TableTypeEEEPKNS_4TypeERKT_(ptr noundef nonnull align 8 dereferenceable(2040) %0, ptr noundef nonnull align 8 dereferenceable(328) %23)
          to label %bb.bt unwind label %bb.bw

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  %i.li = load ptr, ptr %i.d, align 8, !tbaa !760
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N4Luau8PropertyEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef %i.li)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lj = landingpad { ptr, i32 }
          catch ptr null
  %i.lk = extractvalue { ptr, i32 } %i.lj, 0
  call void @__clang_call_terminate(ptr %i.lk) #34
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  ret ptr %i.lh

bb.bv:                                            ; preds = %._crit_edge
  %i.ll = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4Luau9TableTypeD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %23) #35
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn = phi { ptr, i32 } [ %i.lm, %bb.bw ], [ %i.ll, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #35
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176, %bb.as, %bb.an, %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bx
  %.pn100.pn = phi { ptr, i32 } [ %.pn90.pn, %bb.an ], [ %.pn, %bb.bx ], [ %i.gm, %bb.as ], [ %lpad.loopexit.split-lp341, %.loopexit.split-lp231.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn94.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit176 ], [ %lpad.loopexit.split-lp339, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4Luau8PropertyESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  resume { ptr, i32 } %.pn100.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8PropertyC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !905, !range !104, !noundef !105
  store i8 %i.c, ptr %0, align 8, !tbaa !905
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !287
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !81   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !133  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i64 %i.i, ptr %i.b, align 8, !tbaa !608
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !81
  %i.l = load i64, ptr %i.b, align 8, !tbaa !608
  store i64 %i.l, ptr %i.f, align 8, !tbaa !288
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !288
  store i8 %i.n, ptr %i.m, align 1, !tbaa !288
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !608  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !133
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !763  ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !762  ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i, label %.noexc10, label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775776
  br i1 %i.ac, label %.noexc.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, !prof !313

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #37
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ], [ %i.ad, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ae, ptr %i.u, align 8, !tbaa !762
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !763
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ab
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !764
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !631
  %i.aj = load ptr, ptr %i.w, align 8, !tbaa !631
  %i.ak = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEPS7_ET0_T_SG_SF_(ptr %i.ai, ptr %i.aj, ptr noundef %i.ae)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %.noexc10
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !762 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !764
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.aq) #36
  br label %.body

bb.g:                                             ; preds = %.noexc10
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !763
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i8 0, ptr %i.at, align 8, !tbaa !444
  %i.au = load i8, ptr %i.as, align 8, !tbaa !444, !range !104, !noundef !105
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.h, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr %i.ax, ptr %i.ar, align 8, !tbaa !287
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !81 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !133 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !608
  %i.bb = icmp ugt i64 %i.ba, 15
  br i1 %i.bb, label %.noexc.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %i.bc = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc11 unwind label %bb.l   ; 2 uses

.noexc11:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  store ptr %i.bc, ptr %i.ar, align 8, !tbaa !81
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !608
  store i64 %i.bd, ptr %i.ax, align 8, !tbaa !288
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc11, %bb.h
  %i.be = phi ptr [ %i.bc, %.noexc11 ], [ %i.ax, %bb.h ] ; 2 uses
  switch i64 %i.ba, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !288
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !288
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.ay, i64 %i.ba, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !608 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !133
  %i.bi = load ptr, ptr %i.ar, align 8, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 0, ptr %i.bj, align 1, !tbaa !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  store i8 1, ptr %i.at, align 8, !tbaa !444
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  ret void

bb.k:                                             ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #35
  br label %.body

.body:                                            ; preds = %bb.k, %bb.f, %bb.e, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bn, %bb.l ], [ %i.bm, %bb.k ], [ %i.al, %bb.f ], [ %i.al, %bb.e ]
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !81  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.f
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body
  %i.bq = load i64, ptr %i.f, align 8, !tbaa !288
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #36
end_hunk_1
