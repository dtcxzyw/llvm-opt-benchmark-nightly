inline.NumInlined: 16951
inline.NumDeleted: 7027
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv:bb.a
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !20
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #47
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !137  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !20
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #47
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 120) #47
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i, !llvm.loop !242

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !106
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !114
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_(ptr nofree noundef readonly byval(%"class.simdjson::fallback::ondemand::value") align 8 captures(none) %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 5 uses
  %2 = alloca %"class.simdjson::fallback::ondemand::value", align 8 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !243    ; 28 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !245  ; 18 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !19   ; 11 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !3
  %i.f = zext i32 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20    ; 2 uses
  switch i8 %i.h, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit [
    i8 123, label %bb.u
    i8 91, label %bb.b
    i8 34, label %bb.bl
    i8 110, label %bb.bt
    i8 116, label %bb.bo
    i8 102, label %bb.bo
    i8 45, label %bb.ap
    i8 48, label %bb.ap
    i8 49, label %bb.ap
    i8 50, label %bb.ap
    i8 51, label %bb.ap
    i8 52, label %bb.ap
    i8 53, label %bb.ap
    i8 54, label %bb.ap
    i8 55, label %bb.ap
    i8 56, label %bb.ap
    i8 57, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21, !noalias !246 ; 4 uses
  %i.l = icmp eq ptr %i.k, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !41, !noalias !246 ; 3 uses
  %i.o = load i32, ptr %i.i, align 8, !tbaa !249, !noalias !246 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.p), !noalias !246
  %i.q = icmp sgt i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.q), !noalias !246
  %i.r = load i32, ptr %i.k, align 4, !tbaa !3, !noalias !246
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20, !noalias !246
  %.not8.i.i = icmp eq i8 %i.u, 91
  br i1 %.not8.i.i, label %bb.d, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.j, align 8, !tbaa !21, !noalias !246
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.d
  %i.w = phi i32 [ %i.n, %bb.d ], [ %i.o, %bb.b ] ; 15 uses
  %i.x = phi ptr [ %i.v, %bb.d ], [ %i.k, %bb.b ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.z = icmp eq ptr %i.x, %i.y
  tail call void @llvm.assume(i1 %i.z), !noalias !246
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.ab = icmp sgt i32 %i.w, 0
  tail call void @llvm.assume(i1 %i.ab), !noalias !246
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !246
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !20, !noalias !246
  %i.ag = icmp eq i8 %i.af, 93
  br i1 %i.ag, label %.thread, label %.lr.ph820

.thread:                                          ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !21, !noalias !246
  %i.ai = add nsw i32 %i.w, -1
  %or.cond.i5.i = icmp ne i32 %i.w, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i5.i), !noalias !246
  store i32 %i.ai, ptr %i.aa, align 4, !tbaa !41, !noalias !246
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

.lr.ph820:                                        ; preds = %._crit_edge
  %i.aj = add nuw nsw i32 %i.w, 1                 ; 2 uses
  %or.cond.i.i = icmp samesign ult i32 %i.w, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i), !noalias !246
  store i32 %i.aj, ptr %i.aa, align 4, !tbaa !41, !noalias !246
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.am = add nuw nsw i32 %i.w, 1                 ; 4 uses
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.025.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ao = add nsw i32 %i.w, -1
  %.pre848 = load i32, ptr %i.al, align 8, !tbaa !42, !noalias !250
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph820, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit
  %i.ap = phi i32 [ %i.aj, %.lr.ph820 ], [ %i.cv, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ]
  %i.aq = phi i32 [ %.pre848, %.lr.ph820 ], [ %i.cw, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit ] ; 2 uses
  %.not.i67 = icmp eq i32 %i.aq, 0
  br i1 %.not.i67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr %i.an, align 8, !tbaa !28, !noalias !250
  store i32 0, ptr %i.ak, align 4, !tbaa !41, !noalias !250
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !43, !noalias !253 ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %i.c
  tail call void @llvm.assume(i1 %i.as), !noalias !253
  %i.at = icmp eq i32 %i.ap, %i.am
  tail call void @llvm.assume(i1 %i.at), !noalias !253
  store ptr %i.a, ptr %1, align 8, !tbaa !50
  store i32 %i.am, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8, !tbaa !3
  store i32 0, ptr %.sroa.025.sroa.5.0..sroa_idx, align 4
  store ptr %i.ar, ptr %.sroa.025.sroa.6.0..sroa_idx, align 8, !tbaa !40
  %i.au = tail call fastcc noundef i32 @_ZN8facebook5velox9functions12_GLOBAL__N_18validateIN8simdjson8fallback8ondemand5valueEEENS4_10error_codeET_(ptr noundef nonnull byval(%"class.simdjson::fallback::ondemand::value") align 8 %1) ; 2 uses
  %.not61 = icmp eq i32 %i.au, 0
  br i1 %.not61, label %bb.h, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.h:                                             ; preds = %bb.g
  %i.av = load i32, ptr %i.al, align 8, !tbaa !42 ; 2 uses
  %.not.i122 = icmp eq i32 %i.av, 0
  %.pre850 = load i32, ptr %i.ak, align 4, !tbaa !41 ; 11 uses
  br i1 %.not.i122, label %bb.i, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.j, align 8, !tbaa !43  ; 5 uses
  %i.ax = icmp ugt ptr %i.aw, %i.c
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = icmp sge i32 %.pre850, %i.w
  tail call void @llvm.assume(i1 %i.ay)
  %.not.i124 = icmp sgt i32 %.pre850, %i.w
  %.pre849 = load ptr, ptr %i.a, align 8, !tbaa !19 ; 4 uses
  br i1 %.not.i124, label %bb.j, label %.loopexit791

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4 ; 10 uses
  store ptr %i.az, ptr %i.j, align 8, !tbaa !21
  %i.ba = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.pre849, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !20
  switch i8 %i.bd, label %bb.n [
    i8 91, label %bb.o
    i8 123, label %bb.o
    i8 58, label %bb.o
    i8 44, label %bb.o
    i8 93, label %bb.k
    i8 125, label %bb.k
    i8 34, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.be = add nsw i32 %.pre850, -1                ; 4 uses
  store i32 %i.be, ptr %i.ak, align 4, !tbaa !41
  %.not6.i = icmp sgt i32 %i.be, %i.w
  br i1 %.not6.i, label %bb.o, label %.loopexit791

bb.l:                                             ; preds = %bb.j
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !3
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre849, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.bj = icmp eq i8 %i.bi, 58
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.j, align 8, !tbaa !21
  br label %bb.o

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.bl = add nsw i32 %.pre850, -1                ; 4 uses
  store i32 %i.bl, ptr %i.ak, align 4, !tbaa !41
  %.not7.i = icmp sgt i32 %i.bl, %i.w
  br i1 %.not7.i, label %bb.o, label %.loopexit791

bb.o:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.n, %bb.m, %bb.k
  %i.bm = phi i32 [ %.pre850, %bb.j ], [ %.pre850, %bb.j ], [ %.pre850, %bb.j ], [ %.pre850, %bb.j ], [ %i.bl, %bb.n ], [ %.pre850, %bb.m ], [ %i.be, %bb.k ] ; 2 uses
  %i.bn = phi ptr [ %i.az, %bb.j ], [ %i.az, %bb.j ], [ %i.az, %bb.j ], [ %i.az, %bb.j ], [ %i.az, %bb.n ], [ %i.bk, %bb.m ], [ %i.az, %bb.k ] ; 2 uses
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !28
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !29 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bu = zext i32 %i.bs to i64                   ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bu
  %i.bx = icmp ult ptr %i.bn, %i.bw
  br i1 %i.bx, label %.lr.ph817, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit

.lr.ph817:                                        ; preds = %bb.o, %bb.r
  %i.by = phi i32 [ %i.ch, %bb.r ], [ %i.bm, %bb.o ] ; 3 uses
  %i.bz = phi ptr [ %i.ca, %bb.r ], [ %i.bn, %bb.o ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 4 uses
  store ptr %i.ca, ptr %i.j, align 8, !tbaa !21
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre849, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !20
  switch i8 %i.ce, label %bb.r [
    i8 91, label %bb.p
    i8 123, label %bb.p
    i8 93, label %bb.q
    i8 125, label %bb.q
  ]

bb.p:                                             ; preds = %.lr.ph817, %.lr.ph817
  %i.cf = add nuw nsw i32 %i.by, 1                ; 2 uses
  store i32 %i.cf, ptr %i.ak, align 4, !tbaa !41
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph817, %.lr.ph817
  %i.cg = add nsw i32 %i.by, -1                   ; 4 uses
  store i32 %i.cg, ptr %i.ak, align 4, !tbaa !41
  %.not8.i = icmp sgt i32 %i.cg, %i.w
  br i1 %.not8.i, label %bb.r, label %.loopexit791

bb.r:                                             ; preds = %.lr.ph817, %bb.q, %bb.p
  %i.ch = phi i32 [ %i.by, %.lr.ph817 ], [ %i.cg, %bb.q ], [ %i.cf, %bb.p ] ; 2 uses
  %i.ci = load ptr, ptr %i.bt, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bu
  %i.ck = icmp ult ptr %i.ca, %i.cj
  br i1 %i.ck, label %.lr.ph817, label %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit, !llvm.loop !52

_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit: ; preds = %bb.r, %bb.o
  %i.cl = phi i32 [ %i.bm, %bb.o ], [ %i.ch, %bb.r ]
  store i32 3, ptr %i.al, align 8, !tbaa !42
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

.loopexit791:                                     ; preds = %bb.q, %bb.i, %bb.k, %bb.n
  %i.cm = phi i32 [ %i.bl, %bb.n ], [ %.pre850, %bb.i ], [ %i.be, %bb.k ], [ %i.cg, %bb.q ]
  %i.cn = phi ptr [ %i.az, %bb.n ], [ %i.aw, %bb.i ], [ %i.az, %bb.k ], [ %i.ca, %bb.q ] ; 3 uses
  %i.co = icmp ugt ptr %i.cn, %i.c
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp eq i32 %i.cm, %i.w
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store ptr %i.cq, ptr %i.j, align 8, !tbaa !21
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !3
  %i.cs = zext i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre849, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !20
  switch i8 %i.cu, label %bb.t [
    i8 93, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread
    i8 44, label %bb.s
  ]

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit.thread: ; preds = %.loopexit791
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !41
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.s:                                             ; preds = %.loopexit791
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !41
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

bb.t:                                             ; preds = %.loopexit791
  store i32 3, ptr %i.al, align 8, !tbaa !42
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand14array_iteratorEEppEv.exit: ; preds = %bb.t, %bb.s, %bb.h, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit
  %i.cv = phi i32 [ %i.w, %bb.t ], [ %i.am, %bb.s ], [ %i.cl, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ], [ %.pre850, %bb.h ] ; 2 uses
  %i.cw = phi i32 [ 3, %bb.t ], [ 0, %bb.s ], [ 3, %_ZN8simdjson8fallback8ondemand13json_iterator10skip_childEi.exit ], [ %i.av, %bb.h ]
  %.not785.not = icmp slt i32 %i.cv, %i.w
  br i1 %.not785.not, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %bb.e

bb.u:                                             ; preds = %bb.a
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 11 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21, !noalias !256 ; 4 uses
  %i.da = icmp eq ptr %i.cz, %i.c
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41, !noalias !256 ; 3 uses
  %i.dd = load i32, ptr %i.cx, align 8, !tbaa !249, !noalias !256 ; 2 uses
  %i.de = icmp eq i32 %i.dc, %i.dd
  br i1 %i.da, label %bb.v, label %._crit_edge851

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.assume(i1 %i.de), !noalias !256
  %i.df = icmp sgt i32 %i.dc, 0
  tail call void @llvm.assume(i1 %i.df), !noalias !256
  %i.dg = load i32, ptr %i.cz, align 4, !tbaa !3, !noalias !256
  %i.dh = zext i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !20, !noalias !256
  %.not8.i.i76 = icmp eq i8 %i.dj, 123
  br i1 %.not8.i.i76, label %bb.w, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.w:                                             ; preds = %bb.v
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 2 uses
  store ptr %i.dk, ptr %i.cy, align 8, !tbaa !21, !noalias !256
  br label %._crit_edge851

._crit_edge851:                                   ; preds = %bb.u, %bb.w
  %i.dl = phi i32 [ %i.dc, %bb.w ], [ %i.dd, %bb.u ] ; 18 uses
  %i.dm = phi ptr [ %i.dk, %bb.w ], [ %i.cz, %bb.u ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.do = icmp eq ptr %i.dm, %i.dn
  tail call void @llvm.assume(i1 %i.do), !noalias !256
  %i.dp = icmp sgt i32 %i.dl, 0
  tail call void @llvm.assume(i1 %i.dp), !noalias !256
  %i.dq = load i32, ptr %i.dm, align 4, !tbaa !3, !noalias !256
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !20, !noalias !256
  %i.du = icmp eq i8 %i.dt, 125
  br i1 %i.du, label %bb.x, label %.lr.ph826

bb.x:                                             ; preds = %._crit_edge851
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store ptr %i.dw, ptr %i.cy, align 8, !tbaa !21, !noalias !256
  %i.dx = add nsw i32 %i.dl, -1                   ; 2 uses
  %or.cond.i.i77 = icmp ne i32 %i.dl, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i77), !noalias !256
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !41, !noalias !256
  br label %.lr.ph826

.lr.ph826:                                        ; preds = %bb.x, %._crit_edge851
  %.ph = phi i32 [ %i.dx, %bb.x ], [ %i.dl, %._crit_edge851 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.ea = add nuw nsw i32 %i.dl, 1                ; 2 uses
  %or.cond.i.i142 = icmp samesign ult i32 %i.dl, 2147483646
  %.sroa.0183.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0183.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0183.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.ec = add nsw i32 %i.dl, -1                   ; 2 uses
  %.not7871000 = icmp slt i32 %.ph, %i.dl
  br i1 %.not7871000, label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit, label %.lr.ph1001

.lr.ph1001:                                       ; preds = %.lr.ph826, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit
  %i.ed = phi i32 [ %i.gv, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand15object_iteratorEEppEv.exit ], [ %.ph, %.lr.ph826 ]
  %i.ee = load i32, ptr %i.dz, align 8, !tbaa !42, !noalias !259 ; 2 uses
  %.not.i126 = icmp eq i32 %i.ee, 0
  br i1 %.not.i126, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph1001
  store ptr null, ptr %i.eb, align 8, !tbaa !28, !noalias !259
  store i32 0, ptr %i.dy, align 4, !tbaa !41, !noalias !259
  br label %_ZN8simdjson8fallback8ondemand5array5startERNS1_14value_iteratorE.exit

bb.z:                                             ; preds = %.lr.ph1001
  %i.ef = load ptr, ptr %i.cy, align 8, !tbaa !43, !noalias !262 ; 4 uses
  %i.eg = icmp ugt ptr %i.ef, %i.c
  tail call void @llvm.assume(i1 %i.eg), !noalias !262
  %i.eh = icmp eq i32 %i.ed, %i.dl
  tail call void @llvm.assume(i1 %i.eh), !noalias !262
  %i.ei = load ptr, ptr %i.a, align 8, !tbaa !19, !noalias !262 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 3 uses
  store ptr %i.ej, ptr %i.cy, align 8, !tbaa !21, !noalias !262
  %i.ek = load i32, ptr %i.ef, align 4, !tbaa !3, !noalias !262
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !20, !noalias !262
  %.not.i134 = icmp eq i8 %i.en, 34
  br i1 %.not.i134, label %.critedge.i132, label %bb.aa

.critedge.i132:                                   ; preds = %bb.z
  %i.eo = icmp ugt ptr %i.ej, %i.c
  tail call void @llvm.assume(i1 %i.eo), !noalias !262
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 3 uses
  store ptr %i.ep, ptr %i.cy, align 8, !tbaa !21, !noalias !262
  %i.eq = load i32, ptr %i.ej, align 4, !tbaa !3, !noalias !262
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !20, !noalias !262
  %.not.i140 = icmp eq i8 %i.et, 58
  br i1 %.not.i140, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.i132, %bb.z
  store i32 3, ptr %i.dz, align 8, !tbaa !42, !noalias !262
  store ptr null, ptr %i.eb, align 8, !tbaa !28
end_hunk_0
