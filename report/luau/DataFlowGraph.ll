Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/DataFlowGraph?download=true
inline.NumInlined: 2061
inline.NumDeleted: 865
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4Luau20DataFlowGraphBuilder5visitEPNS_20AstStatLocalFunctionE:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !199 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !202
  %.not.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit
  %i.ao = ptrtoint ptr %i.f to i64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !199
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %_ZN4Luau12DenseHashMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !200 ; 5 uses
  %i.ar = ptrtoint ptr %i.al to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.h, label %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #28 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = ptrtoint ptr %i.f to i64
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !44
  %.not10.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.bb, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.aq, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.be = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !458, !noalias !457
  store i64 %i.be, ptr %.012.i.i.i.i.i, align 8, !tbaa !44, !alias.scope !457, !noalias !458
  %i.bf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.al
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !16

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bb, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  %i.bi = load ptr, ptr %i.am, align 8, !tbaa !202
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bk) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !200
  store ptr %i.bh, ptr %i.ak, align 8, !tbaa !199
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bl, ptr %i.am, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !459
  %i.bo = call noundef ptr @_ZN4Luau20DataFlowGraphBuilder14makeChildScopeENS_8DfgScope9ScopeTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 2), !inline_history !243 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.bq = load ptr, ptr %i.i, align 8, !tbaa !177 ; 4 uses
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !178 ; 4 uses
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 9 uses
  %i.bv = ashr exact i64 %i.bu, 3                 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !179
  %.not.i.i14 = icmp eq ptr %i.bq, %i.bx
  br i1 %.not.i.i14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !150
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.by, ptr %i.i, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit
  %i.bz = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bz, label %bb.l, label %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #28 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bu ; 2 uses
  store ptr %i.bo, ptr %i.cg, align 8, !tbaa !150
  %i.ch = icmp sgt i64 %i.bu, 0
  br i1 %i.ch, label %bb.m, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !179
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.cl) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !178
  store ptr %i.ci, ptr %i.i, align 8, !tbaa !177
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cm, ptr %i.bw, align 8, !tbaa !179
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit: ; preds = %bb.j, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cn = invoke { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder13visitFunctionEPNS_15AstExprFunctionENS_7NotNullINS_8DfgScopeEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bn, ptr %i.bo)
          to label %_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE.exit unwind label %bb.o, !inline_history !243 ; 0 uses

bb.o:                                             ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %i.bp, align 8, !tbaa !178
  %i.cq = ptrtoint ptr %i.cp to i64               ; 2 uses
  %.promoted.i = load ptr, ptr %i.i, align 8, !tbaa !177 ; 2 uses
  %i.cr = ptrtoint ptr %.promoted.i to i64
  %i.cs = sub i64 %i.cr, %i.cq
  %i.ct = icmp ugt i64 %i.cs, %i.bu
  br i1 %i.ct, label %.lr.ph.i, label %_ZN4Luau9PushScopeD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i ], [ %.promoted.i, %bb.o ]
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -8 ; 3 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = sub i64 %i.cw, %i.cq
  %i.cy = icmp ugt i64 %i.cx, %i.bu
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.cv, ptr %i.i, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %bb.o, %._crit_edge.i
  resume { ptr, i32 } %i.co

_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE.exit: ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.cz = load ptr, ptr %i.bp, align 8, !tbaa !178
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %.promoted.i10 = load ptr, ptr %i.i, align 8, !tbaa !177 ; 2 uses
  %i.db = ptrtoint ptr %.promoted.i10 to i64
  %i.dc = sub i64 %i.db, %i.da
  %i.dd = icmp ugt i64 %i.dc, %i.bu
  br i1 %i.dd, label %.lr.ph.i11, label %_ZN4Luau9PushScopeD2Ev.exit13

.lr.ph.i11:                                       ; preds = %_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE.exit, %.lr.ph.i11
  %i.de = phi ptr [ %i.df, %.lr.ph.i11 ], [ %.promoted.i10, %_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE.exit ]
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -8 ; 3 uses
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = sub i64 %i.dg, %i.da
  %i.di = icmp ugt i64 %i.dh, %i.bu
  br i1 %i.di, label %.lr.ph.i11, label %._crit_edge.i12, !llvm.loop !13

._crit_edge.i12:                                  ; preds = %.lr.ph.i11
  store ptr %i.df, ptr %i.i, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit13

_ZN4Luau9PushScopeD2Ev.exit13:                    ; preds = %_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE.exit, %._crit_edge.i12
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_16AstStatTypeAliasE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau20DataFlowGraphBuilder14makeChildScopeENS_8DfgScope9ScopeTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.d, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !150
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !178
  store ptr %i.v, ptr %i.c, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.j, align 8, !tbaa !179
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.01.0.copyload = load ptr, ptr %i.aa, align 8, !tbaa !245 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.22.0.copyload, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.idx
  %.not.i27 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i27, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit, %.noexc
  %.0.i28 = phi ptr [ %i.af, %.noexc ], [ %.sroa.01.0.copyload, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit ] ; 2 uses
  %i.ac = load ptr, ptr %.0.i28, align 8, !tbaa !247
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !249 ; 2 uses
  %.not10.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  invoke void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit, !inline_history !250

.noexc:                                           ; preds = %bb.g, %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.af, %i.ab
  br i1 %.not.i, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph

_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit: ; preds = %.noexc, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.0.0.copyload = load ptr, ptr %i.ag, align 8, !tbaa !252 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx32 = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx32
  %.not.i929 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i929, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, %.noexc11
  %.0.i830 = phi ptr [ %i.al, %.noexc11 ], [ %.sroa.0.0.copyload, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit ] ; 2 uses
  %i.ai = load ptr, ptr %.0.i830, align 8, !tbaa !254
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !257 ; 2 uses
  %.not10.i10 = icmp eq ptr %i.ak, null
  br i1 %.not10.i10, label %.noexc11, label %bb.h

bb.h:                                             ; preds = %.lr.ph31
  invoke void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.ak)
          to label %.noexc11 unwind label %.loopexit, !inline_history !258

.noexc11:                                         ; preds = %bb.h, %.lr.ph31
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i830, i64 8 ; 2 uses
  %.not.i9 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i9, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph31

_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit: ; preds = %.noexc11, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !461
  invoke void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.an)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.ap = ptrtoint ptr %i.ao to i64               ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %i.aq = ptrtoint ptr %.promoted.i to i64
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = icmp ugt i64 %i.ar, %i.h
  br i1 %i.as, label %.lr.ph.i, label %_ZN4Luau9PushScopeD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.at = phi ptr [ %i.au, %.lr.ph.i ], [ %.promoted.i, %bb.i ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8 ; 3 uses
  %i.av = ptrtoint ptr %i.au to i64
  %i.aw = sub i64 %i.av, %i.ap
  %i.ax = icmp ugt i64 %i.aw, %i.h
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.au, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %bb.i, %._crit_edge.i
  ret i32 1

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.g
  %lpad.loopexit23 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit23, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp ]
  %i.ay = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.az = ptrtoint ptr %i.ay to i64               ; 2 uses
  %.promoted.i12 = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %i.ba = ptrtoint ptr %.promoted.i12 to i64
  %i.bb = sub i64 %i.ba, %i.az
  %i.bc = icmp ugt i64 %i.bb, %i.h
  br i1 %i.bc, label %.lr.ph.i13, label %_ZN4Luau9PushScopeD2Ev.exit15

.lr.ph.i13:                                       ; preds = %.loopexit.split-lp, %.lr.ph.i13
  %i.bd = phi ptr [ %i.be, %.lr.ph.i13 ], [ %.promoted.i12, %.loopexit.split-lp ]
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -8 ; 3 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.az
  %i.bh = icmp ugt i64 %i.bg, %i.h
  br i1 %i.bh, label %.lr.ph.i13, label %._crit_edge.i14, !llvm.loop !13

._crit_edge.i14:                                  ; preds = %.lr.ph.i13
  store ptr %i.be, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit15

_ZN4Luau9PushScopeD2Ev.exit15:                    ; preds = %.loopexit.split-lp, %._crit_edge.i14
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_19AstStatTypeFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau20DataFlowGraphBuilder14makeChildScopeENS_8DfgScope9ScopeTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 13 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4Luau20DataFlowGraphBuilder5visitEPNS_22AstStatDeclareFunctionE:bb.a
_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bv
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #28 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bu ; 2 uses
  store ptr %i.bo, ptr %i.cg, align 8, !tbaa !150
  %i.ch = icmp sgt i64 %i.bu, 0
  br i1 %i.ch, label %bb.m, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.br, i64 %i.bu, i1 false)
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.m, %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.cj = load ptr, ptr %i.bw, align 8, !tbaa !179
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.cl) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.cf, ptr %i.bp, align 8, !tbaa !178
  store ptr %i.ci, ptr %i.k, align 8, !tbaa !177
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.cm, ptr %i.bw, align 8, !tbaa !179
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit: ; preds = %bb.j, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.01.0.copyload = load ptr, ptr %i.cn, align 8, !tbaa !245 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.22.0.copyload, 3
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.idx
  %.not.i1957 = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i1957, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit, %.noexc
  %.0.i58 = phi ptr [ %i.cs, %.noexc ], [ %.sroa.01.0.copyload, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit ] ; 2 uses
  %i.cp = load ptr, ptr %.0.i58, align 8, !tbaa !247
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !249 ; 2 uses
  %.not10.i = icmp eq ptr %i.cr, null
  br i1 %.not10.i, label %.noexc, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  invoke void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.cr)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !250

.noexc:                                           ; preds = %bb.o, %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i58, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cs, %i.co
  br i1 %.not.i19, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph

_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit: ; preds = %.noexc, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload = load ptr, ptr %i.ct, align 8, !tbaa !252 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx65 = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx65
  %.not.i2159 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not.i2159, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph61

.lr.ph61:                                         ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, %.noexc23
  %.0.i2060 = phi ptr [ %i.cy, %.noexc23 ], [ %.sroa.0.0.copyload, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit ] ; 2 uses
  %i.cv = load ptr, ptr %.0.i2060, align 8, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !257 ; 2 uses
  %.not10.i22 = icmp eq ptr %i.cx, null
  br i1 %.not10.i22, label %.noexc23, label %bb.p

bb.p:                                             ; preds = %.lr.ph61
  invoke void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.cx)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit, !inline_history !258

.noexc23:                                         ; preds = %bb.p, %.lr.ph61
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i2060, i64 8 ; 2 uses
  %.not.i21 = icmp eq ptr %i.cy, %i.cu
  br i1 %.not.i21, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph61

_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit: ; preds = %.noexc23, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.048.0.copyload = load ptr, ptr %i.cz, align 8, !tbaa !262 ; 2 uses
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.249.0.copyload = load i64, ptr %.sroa.249.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !263 ; 2 uses
  %.idx66 = shl nuw nsw i64 %.sroa.249.0.copyload, 3
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.048.0.copyload, i64 %.idx66
  %.not.i2562 = icmp eq i64 %.sroa.249.0.copyload, 0
  br i1 %.not.i2562, label %._crit_edge, label %.lr.ph64

._crit_edge:                                      ; preds = %.noexc26, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit
  %.not9.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not9.i, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %bb.q

.lr.ph64:                                         ; preds = %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, %.noexc26
  %.0.i2463 = phi ptr [ %i.dc, %.noexc26 ], [ %.sroa.048.0.copyload, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit ] ; 2 uses
  %i.db = load ptr, ptr %.0.i2463, align 8, !tbaa !264
  invoke void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.db)
          to label %.noexc26 unwind label %.loopexit, !inline_history !265

.noexc26:                                         ; preds = %.lr.ph64
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i2463, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.dc, %i.da
  br i1 %.not.i25, label %._crit_edge, label %.lr.ph64

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.3.0.copyload)
          to label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !265

_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit: ; preds = %._crit_edge, %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !479
  invoke void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.de)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit
  %i.df = load ptr, ptr %i.bp, align 8, !tbaa !178
  %i.dg = ptrtoint ptr %i.df to i64               ; 2 uses
  %.promoted.i = load ptr, ptr %i.k, align 8, !tbaa !177 ; 2 uses
  %i.dh = ptrtoint ptr %.promoted.i to i64
  %i.di = sub i64 %i.dh, %i.dg
  %i.dj = icmp ugt i64 %i.di, %i.bu
  br i1 %i.dj, label %.lr.ph.i, label %_ZN4Luau9PushScopeD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.dk = phi ptr [ %i.dl, %.lr.ph.i ], [ %.promoted.i, %bb.r ]
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 3 uses
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.dg
  %i.do = icmp ugt i64 %i.dn, %i.bu
  br i1 %i.do, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.dl, ptr %i.k, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %bb.r, %._crit_edge.i
  ret i32 1

.loopexit:                                        ; preds = %.lr.ph64
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.p
  %lpad.loopexit50 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.o
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit50, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit53, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = load ptr, ptr %i.bp, align 8, !tbaa !178
  %i.dq = ptrtoint ptr %i.dp to i64               ; 2 uses
  %.promoted.i28 = load ptr, ptr %i.k, align 8, !tbaa !177 ; 2 uses
  %i.dr = ptrtoint ptr %.promoted.i28 to i64
  %i.ds = sub i64 %i.dr, %i.dq
  %i.dt = icmp ugt i64 %i.ds, %i.bu
  br i1 %i.dt, label %.lr.ph.i29, label %_ZN4Luau9PushScopeD2Ev.exit31

.lr.ph.i29:                                       ; preds = %.loopexit.split-lp, %.lr.ph.i29
  %i.du = phi ptr [ %i.dv, %.lr.ph.i29 ], [ %.promoted.i28, %.loopexit.split-lp ]
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -8 ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.dw, %i.dq
  %i.dy = icmp ugt i64 %i.dx, %i.bu
  br i1 %i.dy, label %.lr.ph.i29, label %._crit_edge.i30, !llvm.loop !13

._crit_edge.i30:                                  ; preds = %.lr.ph.i29
  store ptr %i.dv, ptr %i.k, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit31

_ZN4Luau9PushScopeD2Ev.exit31:                    ; preds = %.loopexit.split-lp, %._crit_edge.i30
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_24AstStatDeclareExternTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau20DataFlowGraphBuilder14makeChildScopeENS_8DfgScope9ScopeTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !178  ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.d, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !150
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !178
  store ptr %i.v, ptr %i.c, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.j, align 8, !tbaa !179
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %.promoted.i21 = phi ptr [ %i.l, %bb.b ], [ %i.v, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.aa = phi ptr [ %i.e, %bb.b ], [ %i.s, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !482 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !483 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ae, 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx
  %.not17 = icmp eq i64 %i.ae, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !178
  %.promoted.i.pre = load ptr, ptr %i.c, align 8, !tbaa !177
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %.promoted.i = phi ptr [ %.promoted.i.pre, %._crit_edge.loopexit ], [ %.promoted.i21, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit ] ; 2 uses
  %i.ag = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.aa, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit ]
  %i.ah = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.ai = ptrtoint ptr %.promoted.i to i64
  %i.aj = sub i64 %i.ai, %i.ah
  %i.ak = icmp ugt i64 %i.aj, %i.h
  br i1 %i.ak, label %.lr.ph.i, label %_ZN4Luau9PushScopeD2Ev.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %i.al = phi ptr [ %i.am, %.lr.ph.i ], [ %.promoted.i, %._crit_edge ]
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8 ; 3 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.ah
  %i.ap = icmp ugt i64 %i.ao, %i.h
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.am, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %._crit_edge, %._crit_edge.i
  ret i32 1

.lr.ph:                                           ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit, %bb.g
  %.018 = phi ptr [ %i.aq, %bb.g ], [ %i.ac, %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit ] ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.018, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !264
  invoke void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.sroa.4.0.copyload)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.018, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.aq, %i.af
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.ar = landingpad { ptr, i32 }
          cleanup
  %i.as = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.at = ptrtoint ptr %i.as to i64               ; 2 uses
  %.promoted.i10 = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %i.au = ptrtoint ptr %.promoted.i10 to i64
  %i.av = sub i64 %i.au, %i.at
  %i.aw = icmp ugt i64 %i.av, %i.h
  br i1 %i.aw, label %.lr.ph.i11, label %_ZN4Luau9PushScopeD2Ev.exit13

.lr.ph.i11:                                       ; preds = %bb.h, %.lr.ph.i11
  %i.ax = phi ptr [ %i.ay, %.lr.ph.i11 ], [ %.promoted.i10, %bb.h ]
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.at
  %i.bb = icmp ugt i64 %i.ba, %i.h
  br i1 %i.bb, label %.lr.ph.i11, label %._crit_edge.i12, !llvm.loop !13

._crit_edge.i12:                                  ; preds = %.lr.ph.i11
  store ptr %i.ay, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit13

_ZN4Luau9PushScopeD2Ev.exit13:                    ; preds = %bb.h, %._crit_edge.i12
  resume { ptr, i32 } %i.ar
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_12AstStatClassE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.Luau::Symbol", align 8     ; 6 uses
  %3 = alloca %"struct.Luau::Symbol", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !188
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !492  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.08.0.copyload = load i64, ptr %i.e, align 8, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !26
  %i.f = tail call ptr @_ZN4Luau8DefArena9freshCellENS_6SymbolENS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr %i.d, ptr null, i64 %.sroa.08.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext false) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_8AstLocalEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  store ptr %i.f, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !205
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !150  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !492
  store ptr null, ptr %2, align 8, !tbaa !119
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.n, align 8, !tbaa !94
  store i64 %i.p, ptr %i.o, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !118
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !115
  %i.u = mul i64 %i.t, 3
  %i.v = lshr i64 %i.u, 2
  %.not.i.i = icmp ult i64 %i.r, %i.v
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapINS_6SymbolEPKNS_3DefESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = call noundef ptr @_ZNK4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_PKNS_3DefEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EESt4hashIS2_ESt8equal_toIS2_EE4findERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %.not2.i.i = icmp eq ptr %i.w, null
  br i1 %.not2.i.i, label %bb.c, label %_ZN4Luau12DenseHashMapINS_6SymbolEPKNS_3DefESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit

bb.c:                                             ; preds = %bb.b
  call void @_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_PKNS_3DefEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EESt4hashIS2_ESt8equal_toIS2_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %i.m)
  br label %_ZN4Luau12DenseHashMapINS_6SymbolEPKNS_3DefESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit

_ZN4Luau12DenseHashMapINS_6SymbolEPKNS_3DefESt4hashIS1_ESt8equal_toIS1_EEixERKS1_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.x = call noundef ptr @_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_PKNS_3DefEES3_IKS2_S6_ENS0_16ItemInterfaceMapIS2_S6_EESt4hashIS2_ESt8equal_toIS2_EE13insert_unsafeERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.f, ptr %i.y, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
end_hunk_1
begin_hunk_2_@_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprE:bb.a
bb.am:                                            ; preds = %bb.ak
  %i.dt = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprTableEE5valueE, align 4, !tbaa !26
  %i.du = icmp ne i32 %i.ax, %i.dt
  %.not89.i = or i1 %.not.i1885, %i.du
  br i1 %.not89.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_12AstExprTableE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.ao:                                            ; preds = %bb.am
  %i.dw = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprUnaryEE5valueE, align 4, !tbaa !26
  %i.dx = icmp ne i32 %i.ax, %i.dw
  %.not90.i = or i1 %.not.i1885, %i.dx
  br i1 %.not90.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_12AstExprUnaryE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.aq:                                            ; preds = %bb.ao
  %i.dz = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprBinaryEE5valueE, align 4, !tbaa !26
  %i.ea = icmp ne i32 %i.ax, %i.dz
  %.not91.i = or i1 %.not.i1885, %i.ea
  br i1 %.not91.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_13AstExprBinaryE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.as:                                            ; preds = %bb.aq
  %i.ec = load i32, ptr @_ZN4Luau7AstRttiINS_20AstExprTypeAssertionEE5valueE, align 4, !tbaa !26
  %i.ed = icmp ne i32 %i.ax, %i.ec
  %.not92.i = or i1 %.not.i1885, %i.ed
  br i1 %.not92.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ee = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_20AstExprTypeAssertionE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500 ; 2 uses
  %i.ef = extractvalue { ptr, ptr } %i.ee, 1
  br label %bb.bf

bb.au:                                            ; preds = %bb.as
  %i.eg = load i32, ptr @_ZN4Luau7AstRttiINS_13AstExprIfElseEE5valueE, align 4, !tbaa !26
  %i.eh = icmp ne i32 %i.ax, %i.eg
  %.not93.i = or i1 %.not.i1885, %i.eh
  br i1 %.not93.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ei = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_13AstExprIfElseE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.aw:                                            ; preds = %bb.au
  %i.ej = load i32, ptr @_ZN4Luau7AstRttiINS_19AstExprInterpStringEE5valueE, align 4, !tbaa !26
  %i.ek = icmp ne i32 %i.ax, %i.ej
  %.not94.i = or i1 %.not.i1885, %i.ek
  br i1 %.not94.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.el = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_19AstExprInterpStringE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.ay:                                            ; preds = %bb.aw
  %i.em = load i32, ptr @_ZN4Luau7AstRttiINS_18AstExprInstantiateEE5valueE, align 4, !tbaa !26
  %i.en = icmp ne i32 %i.ax, %i.em
  %.not95.i = or i1 %.not.i1885, %i.en
  br i1 %.not95.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_18AstExprInstantiateE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500 ; 2 uses
  %i.ep = extractvalue { ptr, ptr } %i.eo, 1
  br label %bb.bf

bb.ba:                                            ; preds = %bb.ay
  %i.eq = load i32, ptr @_ZN4Luau7AstRttiINS_12AstExprErrorEE5valueE, align 4, !tbaa !26
  %i.er = icmp ne i32 %i.ax, %i.eq
  %.not96.i = or i1 %.not.i1885, %i.er
  br i1 %.not96.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.es = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_12AstExprErrorE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %1), !inline_history !500
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(1) %3), !inline_history !500
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %2) #29
          to label %bb.bd unwind label %bb.be, !inline_history !500

bb.bd:                                            ; preds = %bb.bc
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %i.ew = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.be
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !52
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.ev

bb.bf:                                            ; preds = %bb.bb, %bb.az, %bb.ax, %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af
  %.pn108.i = phi { ptr, ptr } [ %i.dh, %bb.af ], [ %i.dk, %bb.ah ], [ %i.do, %bb.aj ], [ %i.ds, %bb.al ], [ %i.dv, %bb.an ], [ %i.dy, %bb.ap ], [ %i.eb, %bb.ar ], [ %i.ee, %bb.at ], [ %i.ei, %bb.av ], [ %i.el, %bb.ax ], [ %i.eo, %bb.az ], [ %i.es, %bb.bb ]
  %.sroa.22.10.i = phi ptr [ null, %bb.af ], [ %i.dl, %bb.ah ], [ %i.dp, %bb.aj ], [ null, %bb.al ], [ null, %bb.an ], [ null, %bb.ap ], [ null, %bb.ar ], [ %i.ef, %bb.at ], [ null, %bb.av ], [ null, %bb.ax ], [ %i.ep, %bb.az ], [ null, %bb.bb ]
  %i.fb = insertvalue { ptr, ptr } %.pn108.i, ptr %.sroa.22.10.i, 1
  br label %"_ZZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprEENK3$_0clEv.exit"

"_ZZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprEENK3$_0clEv.exit": ; preds = %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.bf, %bb.n
  %.fca.1.insert.merged.i = phi { ptr, ptr } [ %i.bc, %bb.n ], [ %i.bk, %bb.p ], [ %i.bs, %bb.r ], [ %i.ca, %bb.t ], [ %i.ci, %bb.v ], [ %i.cq, %bb.x ], [ %i.ct, %bb.z ], [ %i.cw, %bb.ab ], [ %i.de, %bb.ad ], [ %i.fb, %bb.bf ] ; 7 uses
  %i.fc = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 0 ; 2 uses
  %i.fd = extractvalue { ptr, ptr } %.fca.1.insert.merged.i, 1 ; 4 uses
  %i.fe = load i8, ptr @_ZN5FFlag25LuauDoNotOverwriteAstDefsE, align 8, !tbaa !187, !range !53, !noundef !54
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %bb.bg, label %bb.bn

bb.bg:                                            ; preds = %"_ZZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprEENK3$_0clEv.exit"
  %i.fg = load i64, ptr %i.c, align 8, !tbaa !67
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !60 ; 2 uses
  %i.fk = icmp eq ptr %1, %i.fj
  br i1 %i.fk, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !65
  %i.fn = add i64 %i.fm, -1                       ; 2 uses
  %i.fo = ptrtoint ptr %1 to i64
  %i.fp = mul i64 %i.fo, -4658895280553007687     ; 2 uses
  %i.fq = lshr i64 %i.fp, 31
  %i.fr = xor i64 %i.fq, %i.fp
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !66
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bl, %bb.bi
  %.pn.i.i19 = phi i64 [ %i.fr, %bb.bi ], [ %i.fy, %bb.bl ]
  %.01828.i.i20 = phi i64 [ 0, %bb.bi ], [ %i.fx, %bb.bl ]
  %.01929.i.i21 = and i64 %.pn.i.i19, %i.fn       ; 2 uses
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %.01929.i.i21
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !60 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %1
  br i1 %i.fv, label %_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fw = icmp eq ptr %i.fu, %i.fj
  br i1 %i.fw, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fx = add i64 %.01828.i.i20, 1                ; 3 uses
  %i.fy = add i64 %i.fx, %.01929.i.i21
  %.not.i.i22 = icmp ugt i64 %i.fx, %i.fn
  br i1 %.not.i.i22, label %.loopexit, label %bb.bj, !llvm.loop !0

.loopexit:                                        ; preds = %bb.bk, %bb.bl, %bb.bh, %bb.bg
  %i.fz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.fc, ptr %i.fz, align 8, !tbaa !44
  %.not11 = icmp eq ptr %i.fd, null
  br i1 %.not11, label %_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.bm

bb.bm:                                            ; preds = %.loopexit
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.ga, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.fd, ptr %i.gb, align 8, !tbaa !40
  br label %_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

bb.bn:                                            ; preds = %"_ZZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprEENK3$_0clEv.exit"
  %i.gc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.fc, ptr %i.gc, align 8, !tbaa !44
  %.not10 = icmp eq ptr %i.fd, null
  br i1 %.not10, label %_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ge = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.gd, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  store ptr %i.fd, ptr %i.ge, align 8, !tbaa !40
  br label %_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit

_ZNK4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EE8containsERKS3_.exit: ; preds = %bb.bj, %.loopexit, %bb.bm, %bb.bo, %bb.bn, %_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread
  %.fca.1.insert.merged = phi { ptr, ptr } [ %i.av, %_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EE4findERKS3_.exit.thread ], [ %.fca.1.insert.merged.i, %.loopexit ], [ %.fca.1.insert.merged.i, %bb.bn ], [ %.fca.1.insert.merged.i, %bb.bo ], [ %.fca.1.insert.merged.i, %bb.bm ], [ %.fca.1.insert.merged.i, %bb.bj ]
  ret { ptr, ptr } %.fca.1.insert.merged
}

declare noundef zeroext i1 @_ZN4Luau13doesCallErrorEPKNS_11AstExprCallE(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211  ; 2 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_16AstTypeReferenceEE5valueE, align 4, !tbaa !26 ; 2 uses
  %.not92 = icmp eq i32 %i.b, %i.c
  br i1 %.not92, label %tailrecurse._crit_edge, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %bb.a
  %.pre123 = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeTableEE5valueE, align 4, !tbaa !26
  br label %.lr.ph95

tailrecurse._crit_edge:                           ; preds = %tailrecurse.backedge, %bb.a
  %.tr81.lcssa = phi ptr [ %1, %bb.a ], [ %.tr81.be, %tailrecurse.backedge ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.tr81.lcssa, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !274  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.tr81.lcssa, i64 112
  %i.g = load i64, ptr %i.f, align 8, !tbaa !275  ; 2 uses
  %.idx114 = shl nuw nsw i64 %i.g, 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx114
  %.not.i107 = icmp eq i64 %i.g, 0
  br i1 %.not.i107, label %_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE.exit, label %.lr.ph110

.lr.ph110:                                        ; preds = %tailrecurse._crit_edge, %bb.d
  %.0.i108 = phi ptr [ %i.i, %bb.d ], [ %i.e, %tailrecurse._crit_edge ] ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %.0.i108, align 8, !tbaa !264 ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.0.0.copyload.i, null
  br i1 %.not9.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph110
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.0.0.copyload.i), !inline_history !501
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i108, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !263
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.sroa.5.0.copyload.i), !inline_history !501
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i108, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE.exit, label %.lr.ph110

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %tailrecurse.backedge
  %i.j = phi i32 [ %i.x, %tailrecurse.backedge ], [ %i.c, %.lr.ph95.preheader ]
  %i.k = phi i32 [ %i.y, %tailrecurse.backedge ], [ %.pre123, %.lr.ph95.preheader ] ; 2 uses
  %i.l = phi i32 [ %i.aa, %tailrecurse.backedge ], [ %i.b, %.lr.ph95.preheader ] ; 10 uses
  %.tr8193 = phi ptr [ %.tr81.be, %tailrecurse.backedge ], [ %1, %.lr.ph95.preheader ] ; 19 uses
  %.not74 = icmp eq i32 %i.l, %i.k
  br i1 %.not74, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph95
  %i.m = getelementptr inbounds nuw i8, ptr %.tr8193, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !278  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.tr8193, i64 40
  %i.p = load i64, ptr %i.o, align 8, !tbaa !279  ; 2 uses
  %.idx113 = mul nuw nsw i64 %i.p, 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx113
  %.not.i4890 = icmp eq i64 %i.p, 0
  br i1 %.not.i4890, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.tr8193, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !283  ; 2 uses
  %.not12.i = icmp eq ptr %i.s, null
  br i1 %.not12.i, label %_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE.exit, label %bb.f

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0.i4791 = phi ptr [ %i.t, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.i4791, i64 24
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.sroa.3.0.copyload.i), !inline_history !502
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i4791, i64 56 ; 2 uses
  %.not.i48 = icmp eq ptr %i.t, %i.q
  br i1 %.not.i48, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %._crit_edge
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !286
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.u), !inline_history !502
  %i.v = load ptr, ptr %i.r, align 8, !tbaa !283
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.pre = load i32, ptr @_ZN4Luau7AstRttiINS_12AstTypeTableEE5valueE, align 4, !tbaa !26
  %.pre124 = load i32, ptr @_ZN4Luau7AstRttiINS_16AstTypeReferenceEE5valueE, align 4, !tbaa !26
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.f, %bb.y
  %i.x = phi i32 [ %.pre124, %bb.f ], [ %i.j, %bb.y ] ; 2 uses
  %i.y = phi i32 [ %.pre, %bb.f ], [ %i.k, %bb.y ]
  %.tr81.be.in = phi ptr [ %i.w, %bb.f ], [ %i.cd, %bb.y ]
  %.tr81.be = load ptr, ptr %.tr81.be.in, align 8, !tbaa !264 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.tr81.be, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !211 ; 2 uses
  %.not = icmp eq i32 %i.aa, %i.x
  br i1 %.not, label %tailrecurse._crit_edge, label %.lr.ph95

bb.g:                                             ; preds = %.lr.ph95
  %i.ab = load i32, ptr @_ZN4Luau7AstRttiINS_15AstTypeFunctionEE5valueE, align 4, !tbaa !26
  %.not75 = icmp eq i32 %i.l, %i.ab
  br i1 %.not75, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr8193, i64 48
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ac, align 8, !tbaa !245 ; 2 uses
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.tr8193, i64 56
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !51 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.22.0.copyload.i, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload.i, i64 %.idx
  %.not.i6296 = icmp eq i64 %.sroa.22.0.copyload.i, 0
  br i1 %.not.i6296, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.h, %bb.j
  %.0.i6197 = phi ptr [ %i.ah, %bb.j ], [ %.sroa.01.0.copyload.i, %bb.h ] ; 2 uses
  %i.ae = load ptr, ptr %.0.i6197, align 8, !tbaa !247
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !249 ; 2 uses
  %.not10.i63 = icmp eq ptr %i.ag, null
  br i1 %.not10.i63, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph99
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.ag), !inline_history !503
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph99
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i6197, i64 8 ; 2 uses
  %.not.i62 = icmp eq ptr %i.ah, %i.ad
  br i1 %.not.i62, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph99

_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit: ; preds = %bb.j, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr8193, i64 64
  %.sroa.0.0.copyload.i50 = load ptr, ptr %i.ai, align 8, !tbaa !252 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.tr8193, i64 72
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !51 ; 2 uses
  %.idx111 = shl nuw nsw i64 %.sroa.2.0.copyload.i, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i50, i64 %.idx111
  %.not.i60100 = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %.not.i60100, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, %bb.l
  %.0.i59101 = phi ptr [ %i.an, %bb.l ], [ %.sroa.0.0.copyload.i50, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit ] ; 2 uses
  %i.ak = load ptr, ptr %.0.i59101, align 8, !tbaa !254
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !257 ; 2 uses
  %.not10.i = icmp eq ptr %i.am, null
  br i1 %.not10.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph102
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.am), !inline_history !504
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph102
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i59101, i64 8 ; 2 uses
  %.not.i60 = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i60, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph102

_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit: ; preds = %bb.l, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr8193, i64 80
  %.sroa.065.0.copyload = load ptr, ptr %i.ao, align 8, !tbaa !262 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr8193, i64 88
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr8193, i64 96
  %.sroa.566.0.copyload = load ptr, ptr %.sroa.566.0..sroa_idx, align 8, !tbaa !263 ; 2 uses
  %.idx112 = shl nuw nsw i64 %.sroa.4.0.copyload, 3
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.065.0.copyload, i64 %.idx112
  %.not.i57103 = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i57103, label %._crit_edge106, label %.lr.ph105

._crit_edge106:                                   ; preds = %.lr.ph105, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit
  %.not9.i58 = icmp eq ptr %.sroa.566.0.copyload, null
  br i1 %.not9.i58, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %bb.m

.lr.ph105:                                        ; preds = %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, %.lr.ph105
  %.0.i56104 = phi ptr [ %i.ar, %.lr.ph105 ], [ %.sroa.065.0.copyload, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit ] ; 2 uses
  %i.aq = load ptr, ptr %.0.i56104, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aq), !inline_history !505
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i56104, i64 8 ; 2 uses
  %.not.i57 = icmp eq ptr %i.ar, %i.ap
  br i1 %.not.i57, label %._crit_edge106, label %.lr.ph105

bb.m:                                             ; preds = %._crit_edge106
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.566.0.copyload), !inline_history !505
  br label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit

_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit: ; preds = %._crit_edge106, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %.tr8193, i64 120
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !290
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.at), !inline_history !506
  br label %_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE.exit

bb.n:                                             ; preds = %bb.g
  %i.au = load i32, ptr @_ZN4Luau7AstRttiINS_13AstTypeTypeofEE5valueE, align 4, !tbaa !26
  %.not76 = icmp eq i32 %i.l, %i.au
  br i1 %.not76, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.tr8193, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !292
  %i.ax = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.aw), !inline_history !507 ; 0 uses
  br label %_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE.exit
end_hunk_2
begin_hunk_3_@_ZN4Luau20DataFlowGraphBuilder13visitFunctionEPNS_15AstExprFunctionENS_7NotNullINS_8DfgScopeEEE:bb.a
  %.not10.i.i.i.i.i43 = icmp eq ptr %i.di, %i.dd
  br i1 %.not10.i.i.i.i.i43, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i48, label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i40, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i45 = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i44 ], [ %i.dt, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i40 ] ; 2 uses
  %.0911.i.i.i.i.i46 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i44 ], [ %i.di, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i40 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.dw = load i64, ptr %.0911.i.i.i.i.i46, align 8, !tbaa !44, !alias.scope !525, !noalias !524
  store i64 %i.dw, ptr %.012.i.i.i.i.i45, align 8, !tbaa !44, !alias.scope !524, !noalias !525
  %i.dx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i46, i64 8 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i45, i64 8 ; 2 uses
  %.not.i.i.i.i.i47 = icmp eq ptr %i.dx, %i.dd
  br i1 %.not.i.i.i.i.i47, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i48, label %.lr.ph.i.i.i.i.i44, !llvm.loop !16

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i48: ; preds = %.lr.ph.i.i.i.i.i44, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i40
  %.0.lcssa.i.i.i.i.i49 = phi ptr [ %i.dt, %_ZNKSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i40 ], [ %i.dy, %.lr.ph.i.i.i.i.i44 ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i49, i64 8
  %.not.i23.i.i50 = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i50, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i51, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i48
  %i.ea = load ptr, ptr %i.de, align 8, !tbaa !202
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = sub i64 %i.eb, %i.dk
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef %i.ec) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i51

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i51: ; preds = %bb.v, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i48
  store ptr %i.dt, ptr %i.db, align 8, !tbaa !200
  store ptr %i.dz, ptr %i.dc, align 8, !tbaa !199
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dr
  store ptr %i.ed, ptr %i.de, align 8, !tbaa !202
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit52

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE9push_backERKS4_.exit52: ; preds = %bb.s, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.ee = getelementptr inbounds nuw i8, ptr %.067, i64 8 ; 2 uses
  %.not27 = icmp eq ptr %i.ee, %i.br
  br i1 %.not27, label %._crit_edge, label %bb.l

bb.w:                                             ; preds = %._crit_edge
  call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.cd)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !526 ; 2 uses
  %.not29 = icmp eq ptr %i.eg, null
  br i1 %.not29, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.eg)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !527
  %i.ej = call noundef i32 @_ZN4Luau20DataFlowGraphBuilder5visitEPNS_12AstStatBlockE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ei) ; 0 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !188
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.en = load i64, ptr %i.em, align 8, !tbaa !94
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.ep, align 4, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !26
  %i.eq = call ptr @_ZN4Luau8DefArena9freshCellENS_6SymbolENS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(40) %i.el, ptr null, ptr %i.eo, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext false)
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %i.eq, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr null, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_15AstExprFunctionE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau20DataFlowGraphBuilder14makeChildScopeENS_8DfgScope9ScopeTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef 2) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !177  ; 4 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !178  ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 9 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !179
  %.not.i.i = icmp eq ptr %i.d, %i.k
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %i.d, align 8, !tbaa !150
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.l, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i.i.i, %i.i ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1152921504606846975)
  %i.q = select i1 %i.o, i64 1152921504606846975, i64 %i.p ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.r = shl nuw nsw i64 %i.q, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.h ; 2 uses
  store ptr %i.a, ptr %i.t, align 8, !tbaa !150
  %i.u = icmp sgt i64 %i.h, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPN4Luau8DfgScopeESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !179
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = sub i64 %i.x, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.y) #26
  br label %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !178
  store ptr %i.v, ptr %i.c, align 8, !tbaa !177
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.q
  store ptr %i.z, ptr %i.j, align 8, !tbaa !179
  br label %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit

_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPN4Luau8DfgScopeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.aa = invoke { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder13visitFunctionEPNS_15AstExprFunctionENS_7NotNullINS_8DfgScopeEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1, ptr %i.a)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %i.ad = ptrtoint ptr %.promoted.i to i64
  %i.ae = sub i64 %i.ad, %i.ac
  %i.af = icmp ugt i64 %i.ae, %i.h
  br i1 %i.af, label %.lr.ph.i, label %_ZN4Luau9PushScopeD2Ev.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.ag = phi ptr [ %i.ah, %.lr.ph.i ], [ %.promoted.i, %bb.g ]
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -8 ; 3 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.ai, %i.ac
  %i.ak = icmp ugt i64 %i.aj, %i.h
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.lr.ph.i
  store ptr %i.ah, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit

_ZN4Luau9PushScopeD2Ev.exit:                      ; preds = %bb.g, %._crit_edge.i
  ret { ptr, ptr } %i.aa

bb.h:                                             ; preds = %_ZN4Luau9PushScopeC2ERSt6vectorIPNS_8DfgScopeESaIS3_EES3_.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !178
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %.promoted.i5 = load ptr, ptr %i.c, align 8, !tbaa !177 ; 2 uses
  %i.ao = ptrtoint ptr %.promoted.i5 to i64
  %i.ap = sub i64 %i.ao, %i.an
  %i.aq = icmp ugt i64 %i.ap, %i.h
  br i1 %i.aq, label %.lr.ph.i6, label %_ZN4Luau9PushScopeD2Ev.exit8

.lr.ph.i6:                                        ; preds = %bb.h, %.lr.ph.i6
  %i.ar = phi ptr [ %i.as, %.lr.ph.i6 ], [ %.promoted.i5, %bb.h ]
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.an
  %i.av = icmp ugt i64 %i.au, %i.h
  br i1 %i.av, label %.lr.ph.i6, label %._crit_edge.i7, !llvm.loop !13

._crit_edge.i7:                                   ; preds = %.lr.ph.i6
  store ptr %i.as, ptr %i.c, align 8, !tbaa !177
  br label %_ZN4Luau9PushScopeD2Ev.exit8

_ZN4Luau9PushScopeD2Ev.exit8:                     ; preds = %bb.h, %._crit_edge.i7
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %i.b = load ptr, ptr %.013, align 8, !tbaa !247
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree readonly captures(address) %1, i64 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.idx = shl nuw nsw i64 %2, 3
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.013 = phi ptr [ %i.e, %bb.c ], [ %1, %bb.a ]  ; 2 uses
  %i.b = load ptr, ptr %.013, align 8, !tbaa !254
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !257  ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.e, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstStatEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !529  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !81   ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !77     ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !77   ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !82
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !77   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !528

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !81
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !77     ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !82    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !77 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !298
  %i.al = load i64, ptr %i.a, align 8, !tbaa !529
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !529
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !77 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_7AstStatESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef nonnull readonly byval(%"struct.Luau::AstTypeList") align 8 captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !293    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !294  ; 2 uses
  %.idx = shl nuw nsw i64 %i.c, 3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx
  %.not10 = icmp eq i64 %i.c, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !530  ; 2 uses
  %.not9 = icmp eq ptr %i.f, null
  br i1 %.not9, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.011 = phi ptr [ %i.h, %.lr.ph ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %.011, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef nonnull readonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::allocator.1", align 1  ; 3 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %._crit_edge, %bb.a
  %.tr19 = phi ptr [ %1, %bb.a ], [ %.sroa.517.0.copyload, %._crit_edge ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.tr19, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !211  ; 3 uses
  %i.c = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackExplicitEE5valueE, align 4, !tbaa !26
  %.not = icmp eq i32 %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.d = getelementptr inbounds nuw i8, ptr %.tr19, i64 32
  %.sroa.016.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !262 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr19, i64 40
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.tr19, i64 48
  %.sroa.517.0.copyload = load ptr, ptr %.sroa.517.0..sroa_idx, align 8, !tbaa !263 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.4.0.copyload, 3
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.016.0.copyload, i64 %.idx
  %.not.i22 = icmp eq i64 %.sroa.4.0.copyload, 0
  br i1 %.not.i22, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.not9.i = icmp eq ptr %.sroa.517.0.copyload, null
  br i1 %.not9.i, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %tailrecurse

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0.i23 = phi ptr [ %i.g, %.lr.ph ], [ %.sroa.016.0.copyload, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.0.i23, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.f), !inline_history !531
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i23, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %tailrecurse
  %i.h = load i32, ptr @_ZN4Luau7AstRttiINS_19AstTypePackVariadicEE5valueE, align 4, !tbaa !26
  %.not18 = icmp eq i32 %i.b, %i.h
  br i1 %.not18, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.tr19, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !301
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.j), !inline_history !532
  br label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit

bb.e:                                             ; preds = %bb.c
  %i.k = load i32, ptr @_ZN4Luau7AstRttiINS_18AstTypePackGenericEE5valueE, align 4, !tbaa !26
  %i.l = icmp eq i32 %i.b, %i.k
  br i1 %i.l, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %3)
  invoke void @_ZNK4Luau21InternalErrorReporter3iceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2) #29
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %2, align 8, !tbaa !49     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.s = load i64, ptr %i.q, align 8, !tbaa !52
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.o

_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit: ; preds = %._crit_edge, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_3DefENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !65   ; 4 uses
  %i.e = mul i64 %i.d, 3
  %i.f = lshr i64 %i.e, 2
  %.not.i = icmp ult i64 %i.b, %i.f
  br i1 %.not.i, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %1, align 8, !tbaa !60     ; 3 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add i64 %i.d, -1                         ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = mul i64 %i.m, -4658895280553007687       ; 2 uses
  %i.o = lshr i64 %i.n, 31
  %i.p = xor i64 %i.o, %i.n
  %i.q = load ptr, ptr %0, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi i64 [ %i.p, %bb.d ], [ %i.w, %bb.g ]
  %.01828.i.i = phi i64 [ 0, %bb.d ], [ %i.v, %bb.g ]
  %.01929.i.i = and i64 %.pn.i.i, %i.l            ; 2 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01929.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !60   ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.i
  br i1 %i.t, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq ptr %i.s, %i.j
  br i1 %i.u, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add i64 %.01828.i.i, 1                   ; 3 uses
  %i.w = add i64 %i.v, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.v, %i.l
  br i1 %.not.i.i, label %.loopexit.i, label %bb.e, !llvm.loop !0

.loopexit.i:                                      ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  tail call void @_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE6rehashEv(ptr noundef nonnull align 8 dereferenceable(34) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !65
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit: ; preds = %bb.e, %bb.a, %.loopexit.i
  %i.x = phi i64 [ %.pre, %.loopexit.i ], [ %i.d, %bb.a ], [ %i.d, %bb.e ]
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !60     ; 4 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = mul i64 %i.aa, -4658895280553007687     ; 2 uses
  %i.ac = lshr i64 %i.ab, 31
  %i.ad = xor i64 %i.ac, %i.ab
  %i.ae = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !60 ; 2 uses
  %.02131.i5 = and i64 %i.ad, %i.y                ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i5 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %i.ak = icmp eq ptr %i.ai, %i.z
  br i1 %i.ak, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

._crit_edge:                                      ; preds = %.lr.ph26, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit
  %.lcssa = phi ptr [ %i.ah, %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE14rehash_if_fullERSA_.exit ], [ %i.aq, %.lr.ph26 ] ; 2 uses
  store ptr %i.z, ptr %.lcssa, align 8, !tbaa !303
  %i.al = load i64, ptr %i.a, align 8, !tbaa !67
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !67
  br label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit

.lr.ph:                                           ; preds = %.lr.ph26
  %i.an = icmp eq ptr %i.ar, %i.z
  br i1 %i.an, label %_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.02030.i625 = phi i64 [ %i.ao, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02131.i724 = phi i64 [ %.02131.i, %.lr.ph ], [ %.02131.i5, %.lr.ph.preheader ]
  %i.ao = add i64 %.02030.i625, 1                 ; 3 uses
  %i.ap = add i64 %i.ao, %.02131.i724
  %.not.i3 = icmp ule i64 %i.ao, %i.y
  tail call void @llvm.assume(i1 %.not.i3)
  %.02131.i = and i64 %i.ap, %i.y                 ; 2 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %.02131.i ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !60 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.ag
  br i1 %i.as, label %._crit_edge, label %.lr.ph

_ZN4Luau6detail14DenseHashTableIPKNS_7AstExprESt4pairIS4_PKNS_3DefEES5_IKS4_S8_ENS0_16ItemInterfaceMapIS4_S8_EENS_16DenseHashPointerESt8equal_toIS4_EE13insert_unsafeERSA_.exit: ; preds = %.lr.ph, %.lr.ph.preheader, %._crit_edge
  %i.at = phi ptr [ %.lcssa, %._crit_edge ], [ %i.ah, %.lr.ph.preheader ], [ %i.aq, %.lr.ph ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  ret ptr %i.au
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN4Luau12DenseHashMapIPKNS_7AstExprEPKNS_13RefinementKeyENS_16DenseHashPointerESt8equal_toIS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_3
begin_hunk_4_@_ZN4Luau20DataFlowGraphBuilder11visitLValueEPNS_16AstExprIndexNameENS_7NotNullIKNS_3DefEEE:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !50
  %i.af = load ptr, ptr %3, align 8, !tbaa !49
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN4Luau3DefEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit unwind label %bb.f

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit: ; preds = %bb.e
  store ptr %i.r, ptr %i.ah, align 8, !tbaa !44
  %i.ai = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.v
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !52
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret ptr %i.r

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.v
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !52
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  resume { ptr, i32 } %i.am
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau20DataFlowGraphBuilder11visitLValueEPNS_16AstExprIndexExprENS_7NotNullIKNS_3DefEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1, ptr %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !312
  %i.e = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !313
  %i.h = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.g) ; 0 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !313  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211
  %i.l = load i32, ptr @_ZN4Luau7AstRttiINS_21AstExprConstantStringEE5valueE, align 4, !tbaa !26
  %i.m = icmp ne i32 %i.k, %i.l
  %.not31 = icmp eq ptr %i.i, null
  %.not = or i1 %.not31, %i.m
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !205
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !150
  %i.r = extractvalue { ptr, ptr } %i.e, 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !188
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.02.0.copyload = load i64, ptr %i.u, align 4, !tbaa !26
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !26
  %i.v = tail call noundef zeroext i1 @_ZN4Luau29containsSubscriptedDefinitionENS_7NotNullIKNS_3DefEEE(ptr %2)
  %i.w = tail call ptr @_ZN4Luau8DefArena9freshCellENS_6SymbolENS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr null, ptr null, i64 %.sroa.02.0.copyload, i64 %.sroa.23.0.copyload, i1 noundef zeroext %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr %i.r, ptr %i.b, align 8, !tbaa !44
  %i.y = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4Luau12DenseHashMapIPKNS_3DefESt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES3_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_S3_EEENS_16DenseHashPointerESD_IS3_EEixERKS3_(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !317 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.ab, ptr %3, align 8, !tbaa !47
  %i.ac = icmp eq ptr %i.aa, null
  br i1 %i.ac, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.69) #29
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.ad = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !51
  %i.ae = icmp ugt i64 %i.ad, 15
  br i1 %i.ae, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.af = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !49
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !51
  store i64 %i.ag, ptr %i.ab, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.ah = phi ptr [ %i.af, %.noexc.i ], [ %i.ab, %bb.c ] ; 2 uses
  switch i64 %i.ad, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ai = load i8, ptr %i.aa, align 1, !tbaa !52
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ah, ptr nonnull align 1 %i.aa, i64 %i.ad, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !51  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !50
  %i.al = load ptr, ptr %3, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.an = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_PKN4Luau3DefEESaISD_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit unwind label %bb.g

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit: ; preds = %bb.f
  store ptr %i.w, ptr %i.an, align 8, !tbaa !44
  %i.ao = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit
  %i.aq = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKN4Luau3DefESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S9_EEEixEOS5_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %3, align 8, !tbaa !49    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.ab
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %bb.g
  %i.av = load i64, ptr %i.ab, align 8, !tbaa !52
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  resume { ptr, i32 } %i.as

bb.h:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !188
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.copyload = load i64, ptr %i.az, align 4, !tbaa !26
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !26
  %i.ba = tail call ptr @_ZN4Luau8DefArena9freshCellENS_6SymbolENS_8LocationEb(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr null, ptr null, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload, i1 noundef zeroext true)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.029.0 = phi ptr [ %i.ba, %bb.h ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret ptr %.sroa.029.0
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN4Luau20DataFlowGraphBuilder11visitLValueEPNS_12AstExprErrorENS_7NotNullIKNS_3DefEEE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_12AstExprErrorE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %1)
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_16AstTypeReferenceE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !274  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i64, ptr %i.c, align 8, !tbaa !275  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.011 = phi ptr [ %i.f, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %.011, align 8, !tbaa !264 ; 2 uses
  %.not9 = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.0.0.copyload)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.011, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !263
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.sroa.5.0.copyload)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.011, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_12AstTypeTableE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 56
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not13 = icmp eq i64 %i.d, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !283  ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.c, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.014, i64 24
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %.sroa.3.0.copyload)
  %i.h = getelementptr inbounds nuw i8, ptr %.014, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %._crit_edge
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !286
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.i)
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !283
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !572
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.l)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_15AstTypeFunctionE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !245 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.22.0.copyload, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.01.0.copyload, i64 %.idx.i
  %.not12.i = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not12.i, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.013.i = phi ptr [ %i.f, %bb.c ], [ %.sroa.01.0.copyload, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.013.i, align 8, !tbaa !247
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !249  ; 2 uses
  %.not10.i = icmp eq ptr %i.e, null
  br i1 %.not10.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.e), !inline_history !250
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.f, %i.b
  br i1 %.not.i, label %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, label %.lr.ph.i

_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit: ; preds = %bb.c, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !tbaa !252 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.idx.i7 = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.idx.i7
  %.not12.i8 = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not12.i8, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph.i9

.lr.ph.i9:                                        ; preds = %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit, %bb.e
  %.013.i10 = phi ptr [ %i.l, %bb.e ], [ %.sroa.0.0.copyload, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit ] ; 2 uses
  %i.i = load ptr, ptr %.013.i10, align 8, !tbaa !254
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !257  ; 2 uses
  %.not10.i11 = icmp eq ptr %i.k, null
  br i1 %.not10.i11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i9
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %i.k), !inline_history !258
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i9
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i10, i64 8 ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, %i.h
  br i1 %.not.i12, label %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, label %.lr.ph.i9

_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit: ; preds = %bb.e, %_ZN4Luau20DataFlowGraphBuilder13visitGenericsENS_8AstArrayIPNS_14AstGenericTypeEEE.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.018.0.copyload = load ptr, ptr %i.m, align 8, !tbaa !262 ; 2 uses
  %.sroa.2.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2.0.copyload20 = load i64, ptr %.sroa.2.0..sroa_idx19, align 8, !tbaa !51 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !263 ; 2 uses
  %.idx.i13 = shl nuw nsw i64 %.sroa.2.0.copyload20, 3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.018.0.copyload, i64 %.idx.i13
  %.not10.i14 = icmp eq i64 %.sroa.2.0.copyload20, 0
  br i1 %.not10.i14, label %._crit_edge.i, label %.lr.ph.i15

._crit_edge.i:                                    ; preds = %.lr.ph.i15, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit
  %.not9.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not9.i, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %bb.f

.lr.ph.i15:                                       ; preds = %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit, %.lr.ph.i15
  %.011.i = phi ptr [ %i.p, %.lr.ph.i15 ], [ %.sroa.018.0.copyload, %_ZN4Luau20DataFlowGraphBuilder17visitGenericPacksENS_8AstArrayIPNS_18AstGenericTypePackEEE.exit ] ; 2 uses
  %i.o = load ptr, ptr %.011.i, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.o), !inline_history !265
  %i.p = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i16 = icmp eq ptr %i.p, %i.n
  br i1 %.not.i16, label %._crit_edge.i, label %.lr.ph.i15

bb.f:                                             ; preds = %._crit_edge.i
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.3.0.copyload), !inline_history !265
  br label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit

_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit: ; preds = %._crit_edge.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !290
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.r)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_13AstTypeTypeofE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !292
  %i.c = tail call { ptr, ptr } @_ZN4Luau20DataFlowGraphBuilder9visitExprEPNS_7AstExprE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_12AstTypeUnionE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !294  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.010, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_19AstTypeIntersectionE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !294  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.010, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_12AstTypeErrorE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !293  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !294  ; 2 uses
  %.idx = shl nuw nsw i64 %i.d, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not9 = icmp eq i64 %i.d, 0
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.010 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.010, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.010, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_19AstTypePackExplicitE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.02.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !262 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !51 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !263 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.sroa.2.0.copyload, 3
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.0.copyload, i64 %.idx.i
  %.not10.i = icmp eq i64 %.sroa.2.0.copyload, 0
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.not9.i = icmp eq ptr %.sroa.3.0.copyload, null
  br i1 %.not9.i, label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit, label %bb.b

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.011.i = phi ptr [ %i.d, %.lr.ph.i ], [ %.sroa.02.0.copyload, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.011.i, align 8, !tbaa !264
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.c), !inline_history !265
  %i.d = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %._crit_edge.i
  tail call void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_11AstTypePackE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull %.sroa.3.0.copyload), !inline_history !265
  br label %_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit

_ZN4Luau20DataFlowGraphBuilder13visitTypeListENS_11AstTypeListE.exit: ; preds = %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau20DataFlowGraphBuilder13visitTypePackEPNS_19AstTypePackVariadicE(ptr noundef nonnull align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !301
  tail call void @_ZN4Luau20DataFlowGraphBuilder9visitTypeEPNS_7AstTypeE(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.b)
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #16 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #25 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(42) dereferenceable(42) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !191    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190  ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i
  %.04.i.i = phi i64 [ %i.s, %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.04.i.i ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !202
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #26
  br label %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !200  ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !202
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #26
  br label %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i

_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i: ; preds = %bb.d, %_ZNSt6vectorIN4Luau7NotNullIKNS0_3DefEEESaIS4_EED2Ev.exit.i.i.i
  %i.s = add nuw i64 %.04.i.i, 1                  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.s, %i.c
  br i1 %exitcond.not.i.i, label %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !14

_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i: ; preds = %_ZN4Luau20DataFlowGraphBuilder15FunctionCaptureD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !191
  br label %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit

_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit: ; preds = %bb.b, %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i
  %i.t = phi ptr [ %.pre.i, %_ZN4Luau6detail16ItemInterfaceMapINS_6SymbolENS_20DataFlowGraphBuilder15FunctionCaptureEE7destroyEPSt4pairIS2_S4_Em.exit.loopexit.i ], [ %i.a, %bb.b ]
  tail call void @_ZdlPv(ptr noundef %i.t) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN4Luau6detail14DenseHashTableINS_6SymbolESt4pairIS2_NS_20DataFlowGraphBuilder15FunctionCaptureEES3_IKS2_S5_ENS0_16ItemInterfaceMapIS2_S5_EESt4hashIS2_ESt8equal_toIS2_EE7destroyEv.exit, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau14TypedAllocatorINS_13RefinementKeyEE11appendBlockEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN4Luau13pagedAllocateEm(i64 noundef 32768) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.b, align 8, !tbaa !574
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !575  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !576
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.e, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.h, ptr %i.d, align 8, !tbaa !575
  br label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !577  ; 4 uses
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.f, label %_ZNKSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.70) #29
  unreachable

_ZNKSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store ptr %i.a, ptr %i.u, align 8, !tbaa !40
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !576
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.z) #26
  br label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.t, ptr %i.c, align 8, !tbaa !577
  store ptr %i.w, ptr %i.d, align 8, !tbaa !575
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !576
  br label %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN4Luau13RefinementKeyESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.ab, align 8, !tbaa !37
  ret void
}

declare noundef ptr @_ZN4Luau13pagedAllocateEm(i64 noundef) local_unnamed_addr #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #19

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #20
end_hunk_4
