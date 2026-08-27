Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/AstQuery?download=true
inline.NumInlined: 928
inline.NumDeleted: 489
begin_hunk_0_@_ZN4Luau26findExpectedTypeAtPositionERKNS_6ModuleERKNS_12SourceModuleENS_8PositionE:bb.a

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau21findBindingAtPositionERKNS_6ModuleERKNS_12SourceModuleENS_8PositionE(ptr dead_on_unwind noalias writable sret(%"class.std::optional.142") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1097) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(240) %2, i64 %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 6 uses
  %5 = alloca %"struct.Luau::(anonymous namespace)::FindExprOrLocal", align 8 ; 9 uses
  %6 = alloca %"struct.Luau::Position", align 8   ; 5 uses
  %7 = alloca %"struct.Luau::Symbol", align 8     ; 9 uses
  %8 = alloca %"class.std::shared_ptr.43", align 8 ; 11 uses
  store i64 %3, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr getelementptr inbounds nuw inrange(-16, 536) (i8, ptr @_ZTVN4Luau12_GLOBAL__N_115FindExprOrLocalE, i64 16), ptr %5, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.h, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i
  %.not13.i.i = icmp eq i64 %i.h, 0
  br i1 %.not13.i.i, label %.thread68, label %.lr.ph.i.i

.thread68:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  br label %.thread73

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i, %.lr.ph.i.i
  %.01114.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.af, %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i ] ; 2 uses
  %i.k = load ptr, ptr %.01114.i.i, align 8, !tbaa !92 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i32, ptr %i.m, align 4, !tbaa !31   ; 2 uses
  %i.o = load i32, ptr %i.j, align 4, !tbaa !31   ; 3 uses
  %i.p = icmp eq i32 %i.n, %i.o
  %i.q = load i32, ptr %i.l, align 4              ; 2 uses
  %i.r = load i32, ptr %i.a, align 8              ; 4 uses
  %i.s = icmp eq i32 %i.q, %i.r                   ; 2 uses
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.i.i

_ZNK4Luau8PositionleERKS0_.exit.i.i:              ; preds = %bb.b
  %i.u = icmp ult i32 %i.n, %i.o
  %i.v = icmp ult i32 %i.q, %i.r
  %.0.i.i.i.i = select i1 %i.s, i1 %i.u, i1 %i.v
  br i1 %.0.i.i.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZNK4Luau8PositionleERKS0_.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !85   ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp ugt i32 %i.aa, %i.o
  %i.ac = icmp ugt i32 %i.x, %i.r
  %.0.i.i.i = select i1 %i.y, i1 %i.ab, i1 %i.ac
  br i1 %.0.i.i.i, label %_ZN4Luau25findExprOrLocalAtPositionERKNS_12SourceModuleENS_8PositionE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(28) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %5), !inline_history !121
  br label %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i

_ZNK4Luau8PositionleERKS0_.exit.thread.i.i:       ; preds = %bb.d, %_ZNK4Luau8PositionleERKS0_.exit.i.i, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %.01114.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.af, %i.i
  br i1 %.not.i.i, label %_ZN4Luau25findExprOrLocalAtPositionERKNS_12SourceModuleENS_8PositionE.exit, label %bb.b

_ZN4Luau25findExprOrLocalAtPositionERKNS_12SourceModuleENS_8PositionE.exit: ; preds = %bb.c, %_ZNK4Luau8PositionleERKS0_.exit.thread.i.i
  %.sroa.03.0.copyload.pre.i = load ptr, ptr %i.b, align 8, !tbaa !114 ; 4 uses
  %.sroa.2.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.2.0.copyload.pre.i = load ptr, ptr %.sroa.2.0..sroa_idx.phi.trans.insert.i, align 8, !tbaa !122 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %.sroa.03.0.copyload.pre.i, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN4Luau25findExprOrLocalAtPositionERKNS_12SourceModuleENS_8PositionE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.pre.i, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !124 ; 2 uses
  %i.ai = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprGlobalEE5valueE, align 4, !tbaa !9
  %.not81 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not81, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.pre.i, i64 32
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !125
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ak, ptr %.sroa.460.0..sroa_idx, align 8, !tbaa !125
  br label %.critedge38

bb.g:                                             ; preds = %bb.e
  %i.al = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprLocalEE5valueE, align 4, !tbaa !9
  %.not83 = icmp eq i32 %i.ah, %i.al
  br i1 %.not83, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.am, align 8, !tbaa !126
  br label %bb.ax

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.pre.i, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !128
  store ptr %i.ao, ptr %7, align 8, !tbaa !122
  br label %.critedge38

bb.i:                                             ; preds = %_ZN4Luau25findExprOrLocalAtPositionERKNS_12SourceModuleENS_8PositionE.exit
  %.not31.not = icmp eq ptr %.sroa.2.0.copyload.pre.i, null
  br i1 %.not31.not, label %.thread73, label %bb.j

.thread73:                                        ; preds = %bb.i, %.thread68
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i8 0, ptr %i.ap, align 8, !tbaa !126
  br label %bb.ax

bb.j:                                             ; preds = %bb.i
  store ptr %.sroa.2.0.copyload.pre.i, ptr %7, align 8, !tbaa !122
  br label %.critedge38

.critedge38:                                      ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %.sroa.0.0.copyload = load i64, ptr %6, align 8
  call void @_ZN4Luau19findScopeAtPositionERKNS_6ModuleENS_8PositionE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.43") align 8 %8, ptr noundef nonnull align 8 dereferenceable(1097) %1, i64 %.sroa.0.0.copyload)
  %i.aq = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %.not84107 = icmp eq ptr %i.aq, null
  br i1 %.not84107, label %.critedge40, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge38
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit
  %i.av = phi ptr [ %i.aq, %.lr.ph ], [ %i.fn, %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = invoke ptr @_ZNSt10_HashtableIN4Luau6SymbolESt4pairIKS1_NS0_7BindingEESaIS5_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE4findERS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit unwind label %bb.af ; 6 uses

_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit: ; preds = %bb.k
  %.not85 = icmp eq ptr %i.ax, null
  br i1 %.not85, label %.critedge42, label %bb.l

bb.l:                                             ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 36
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 3 uses
  %i.bb = load i32, ptr %i.ar, align 4, !tbaa !31 ; 2 uses
  %i.bc = icmp eq i32 %i.ba, %i.bb
  %i.bd = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.be = load i32, ptr %6, align 8               ; 2 uses
  %i.bf = icmp eq i32 %i.bd, %i.be                ; 2 uses
  %i.bg = select i1 %i.bc, i1 %i.bf, i1 false
  br i1 %i.bg, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %_ZNK4Luau8PositionleERKS0_.exit

_ZNK4Luau8PositionleERKS0_.exit:                  ; preds = %bb.l
  %i.bh = icmp ult i32 %i.ba, %i.bb
  %i.bi = icmp ult i32 %i.bd, %i.be
  %.0.i.i = select i1 %i.bf, i1 %i.bh, i1 %i.bi
  br i1 %.0.i.i, label %_ZNK4Luau8PositionleERKS0_.exit.thread, label %.critedge42

_ZNK4Luau8PositionleERKS0_.exit.thread:           ; preds = %bb.l, %_ZNK4Luau8PositionleERKS0_.exit
  %.val = load ptr, ptr %i.c, align 8
  %i.bj = icmp eq i32 %i.ba, 0
  %i.bk = icmp eq i32 %i.bd, 0
  %i.bl = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %i.bl, label %_ZNK4Luau8LocationeqERKS0_.exit.i, label %_ZNK4Luau8LocationeqERKS0_.exit.thread.i

_ZNK4Luau8LocationeqERKS0_.exit.i:                ; preds = %_ZNK4Luau8PositionleERKS0_.exit.thread
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 44
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !31
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = load i32, ptr %i.bm, align 4
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %i.bs, label %.thread75, label %_ZNK4Luau8LocationeqERKS0_.exit.thread.i

_ZNK4Luau8LocationeqERKS0_.exit.thread.i:         ; preds = %_ZNK4Luau8LocationeqERKS0_.exit.i, %_ZNK4Luau8PositionleERKS0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %.sroa.0.0.copyload.i = load i64, ptr %i.ay, align 8
  invoke void @_ZN4Luau25findAstAncestryOfPositionEPNS_12AstStatBlockENS_8PositionEb(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %4, ptr noundef %.val, i64 %.sroa.0.0.copyload.i, i1 noundef zeroext false)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %_ZNK4Luau8LocationeqERKS0_.exit.thread.i
  %i.bt = load ptr, ptr %i.as, align 8, !tbaa !82, !noalias !131 ; 4 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !82, !noalias !134 ; 4 uses
  %i.bv = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bw = ptrtoint ptr %i.bu to i64               ; 5 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = ashr i64 %i.bx, 5                       ; 3 uses
  %i.bz = icmp sgt i64 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc
  %i.ca = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !9, !noalias !137 ; 4 uses
  %i.cb = mul nsw i64 %i.by, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.bt, i64 %i.cb
  br label %bb.m

bb.m:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i
  %i.cc = phi ptr [ %i.bt, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.t ] ; 6 uses
  %i.cd = phi i64 [ %i.bv, %.lr.ph.i.i.i.i ], [ %i.da, %bb.t ] ; 2 uses
  %.036.i.i.i.i = phi i64 [ %i.by, %.lr.ph.i.i.i.i ], [ %i.cy, %bb.t ] ; 2 uses
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !28, !noalias !137
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val.i.i.i.i.i = load i32, ptr %i.ch, align 8, !tbaa !124, !noalias !137
  %i.ci = icmp eq i32 %.val.i.i.i.i.i, %i.ca
  br i1 %i.ci, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !28, !noalias !137
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %.val.i8.i.i.i.i = load i32, ptr %i.cl, align 8, !tbaa !124, !noalias !137
  %i.cm = icmp eq i32 %.val.i8.i.i.i.i, %i.ca
  br i1 %i.cm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds i8, ptr %i.cc, i64 -8
  %.cast.i.i.i.i = ptrtoint ptr %i.cn to i64
  br label %.loopexit.i

bb.p:                                             ; preds = %bb.n
  %i.co = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !28, !noalias !137
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %.val.i9.i.i.i.i = load i32, ptr %i.cq, align 8, !tbaa !124, !noalias !137
  %i.cr = icmp eq i32 %.val.i9.i.i.i.i, %i.ca
  br i1 %i.cr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds i8, ptr %i.cc, i64 -16
  %.cast22.i.i.i.i = ptrtoint ptr %i.cs to i64
  br label %.loopexit.i

bb.r:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds i8, ptr %i.cc, i64 -32 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !28, !noalias !137
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val.i10.i.i.i.i = load i32, ptr %i.cv, align 8, !tbaa !124, !noalias !137
  %i.cw = icmp eq i32 %.val.i10.i.i.i.i, %i.ca
  br i1 %i.cw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %.cast23.i.i.i.i = ptrtoint ptr %i.cx to i64
  br label %.loopexit.i

bb.t:                                             ; preds = %bb.r
  %i.cy = add nsw i64 %.036.i.i.i.i, -1
  %i.cz = icmp sgt i64 %.036.i.i.i.i, 1
  %i.da = ptrtoint ptr %i.ct to i64               ; 3 uses
  br i1 %i.cz, label %bb.m, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !144

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.t
  %.pre56.i.i.i.i = sub i64 %i.da, %i.bw
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.noexc
  %.pre-phi57.i.i.i.i = phi i64 [ %.pre56.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bx, %.noexc ]
  %i.db = phi i64 [ %i.da, %._crit_edge.loopexit.i.i.i.i ], [ %i.bv, %.noexc ] ; 4 uses
  %i.dc = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bt, %.noexc ] ; 2 uses
  %i.dd = ashr exact i64 %.pre-phi57.i.i.i.i, 3
  switch i64 %i.dd, label %.loopexit.i [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i
  %.pre53.i.i.i.i = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !9, !noalias !137
  br label %bb.y

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i
  %.pre.i.i.i.i = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !9, !noalias !137
  br label %bb.w

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.de = inttoptr i64 %i.db to ptr
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !28, !noalias !137
  %i.dh = getelementptr i8, ptr %i.dg, i64 8
  %.val.i13.i.i.i.i = load i32, ptr %i.dh, align 8, !tbaa !124, !noalias !137
  %i.di = load i32, ptr @_ZN4Luau7AstRttiINS_12AstStatLocalEE5valueE, align 4, !tbaa !9, !noalias !137 ; 2 uses
  %i.dj = icmp eq i32 %.val.i13.i.i.i.i, %i.di
  br i1 %i.dj, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = getelementptr inbounds i8, ptr %i.dc, i64 -8 ; 2 uses
  %i.dl = ptrtoint ptr %i.dk to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge._crit_edge.i.i.i.i
  %i.dm = phi ptr [ %i.dk, %bb.v ], [ %i.dc, %._crit_edge._crit_edge.i.i.i.i ]
  %i.dn = phi i32 [ %i.di, %bb.v ], [ %.pre.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ] ; 2 uses
  %i.do = phi i64 [ %i.dl, %bb.v ], [ %i.db, %._crit_edge._crit_edge.i.i.i.i ] ; 2 uses
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !28, !noalias !137
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val.i14.i.i.i.i = load i32, ptr %i.ds, align 8, !tbaa !124, !noalias !137
  %i.dt = icmp eq i32 %.val.i14.i.i.i.i, %i.dn
  br i1 %i.dt, label %.loopexit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.du = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.dv = ptrtoint ptr %i.du to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge._crit_edge52.i.i.i.i
  %i.dw = phi i32 [ %i.dn, %bb.x ], [ %.pre53.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ]
  %i.dx = phi i64 [ %i.dv, %bb.x ], [ %i.db, %._crit_edge._crit_edge52.i.i.i.i ] ; 2 uses
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !28, !noalias !137
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %.val.i15.i.i.i.i = load i32, ptr %i.eb, align 8, !tbaa !124, !noalias !137
  %i.ec = icmp eq i32 %.val.i15.i.i.i.i, %i.dw
  %spec.select.i.i.i = select i1 %i.ec, i64 %i.dx, i64 %i.bw
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.m, %bb.y, %bb.w, %bb.u, %._crit_edge.i.i.i.i, %bb.s, %bb.q, %bb.o
  %.sink.i.i.i.i = phi i64 [ %spec.select.i.i.i, %bb.y ], [ %i.do, %bb.w ], [ %i.db, %bb.u ], [ %i.bw, %._crit_edge.i.i.i.i ], [ %.cast23.i.i.i.i, %bb.s ], [ %.cast22.i.i.i.i, %bb.q ], [ %.cast.i.i.i.i, %bb.o ], [ %i.cd, %bb.m ]
  %i.ed = inttoptr i64 %.sink.i.i.i.i to ptr      ; 2 uses
  %.not.i.not = icmp eq ptr %i.bu, %i.ed          ; 2 uses
  br i1 %.not.i.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !28
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit.i
  %.sroa.08.0.i = phi ptr [ %i.ef, %bb.z ], [ undef, %.loopexit.i ]
  %.not.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eg = load ptr, ptr %i.at, align 8, !tbaa !27
  %i.eh = ptrtoint ptr %i.eg to i64
  %i.ei = sub i64 %i.eh, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.ei) #22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.not.i.not, label %.thread75, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 12
  %i.ek = invoke noundef zeroext i1 @_ZNK4Luau8Location8containsERKNS_8PositionE(ptr noundef nonnull align 4 dereferenceable(16) %i.ej, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.ek, label %.critedge42, label %.thread75

.thread75:                                        ; preds = %_ZNK4Luau8LocationeqERKS0_.exit.i, %bb.ae, %bb.ac
  %i.el = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  invoke void @_ZN4Luau7BindingC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.el)
          to label %.critedge40 unwind label %.loopexit.split-lp, !llvm.loop !145

bb.af:                                            ; preds = %bb.k
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit:                                        ; preds = %bb.ad, %_ZNK4Luau8LocationeqERKS0_.exit.thread.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %.thread75
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.critedge42:                                      ; preds = %_ZNSt13unordered_mapIN4Luau6SymbolENS0_7BindingESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_S2_EEE4findERS8_.exit, %bb.ae, %_ZNK4Luau8PositionleERKS0_.exit
  %i.en = load ptr, ptr %8, align 8, !tbaa !100   ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !100 ; 2 uses
  store ptr %i.eo, ptr %8, align 8, !tbaa !100
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !98 ; 4 uses
  %i.er = load ptr, ptr %i.au, align 8, !tbaa !98 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eq, %i.er
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit, label %bb.ag

bb.ag:                                            ; preds = %.critedge42
  %.not7.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 3 uses
  %i.et = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i.i.i.i47 = icmp eq i8 %i.et, 0
  br i1 %.not.i.i.i.i47, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eu = load i32, ptr %i.es, align 4, !tbaa !9
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.es, align 4, !tbaa !9
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ew = atomicrmw volatile add ptr %i.es, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.au, align 8, !tbaa !98
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.ex = phi ptr [ %i.er, %bb.ag ], [ %i.er, %bb.ai ], [ %.pr.pre.i.i.i, %bb.aj ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 4 uses
  %i.ez = load atomic i64, ptr %i.ey acquire, align 8 ; 2 uses
  %i.fa = icmp eq i64 %i.ez, 4294967297
  %i.fb = trunc i64 %i.ez to i32                  ; 2 uses
  br i1 %i.fa, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.ey, align 8, !tbaa !103
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  store i32 0, ptr %i.fc, align 4, !tbaa !105
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8
  call void %i.ff(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !106
  %i.fg = load ptr, ptr %i.ex, align 8, !tbaa !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23, !inline_history !106
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.am:                                            ; preds = %bb.ak
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !99
  %.not.i9.i.i.i = icmp eq i8 %i.fj, 0
  br i1 %.not.i9.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fk = add nsw i32 %i.fb, -1
  store i32 %i.fk, ptr %i.ey, align 8, !tbaa !9
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.fl = atomicrmw volatile add ptr %i.ey, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i.i = phi i32 [ %i.fb, %bb.an ], [ %i.fl, %bb.ao ]
  %i.fm = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fm, label %bb.ap, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !81

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ex) #23
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.al, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.eq, ptr %i.au, align 8, !tbaa !98
  %.pre = load ptr, ptr %8, align 8, !tbaa !100
  br label %_ZNSt10shared_ptrIN4Luau5ScopeEEaSERKS2_.exit

end_hunk_0
