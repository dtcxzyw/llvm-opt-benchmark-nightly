Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LTOBackend?download=true
inline.NumInlined: 4819
inline.NumDeleted: 2914
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm3lto3optERKNS0_6ConfigEPNS_13TargetMachineEjRNS_6ModuleEbPNS_18ModuleSummaryIndexEPKS8_RKSt6vectorIhSaIhEENS_8ArrayRefINS_9StringRefEEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !193 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !193 ; 2 uses
  %.not20.i.i = icmp eq ptr %i.ku, %i.kw
  br i1 %.not20.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Optional_baseIN4llvm10PGOOptionsELb0ELb0EED2Ev.exit125.i
  %i.kx = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.kz = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  br label %bb.ao

._crit_edge.i.i:                                  ; preds = %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i, %_ZNSt14_Optional_baseIN4llvm10PGOOptionsELb0ELb0EED2Ev.exit125.i
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !339 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !339 ; 2 uses
  %.not1922.i.i = icmp eq ptr %i.lb, %i.ld
  br i1 %.not1922.i.i, label %_ZL19RegisterPassPluginsRKN4llvm3lto6ConfigERNS_11PassBuilderE.exit.i, label %.lr.ph25.i.i

bb.ao:                                            ; preds = %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.016.021.i.i = phi ptr [ %i.ku, %.lr.ph.i.i ], [ %i.ls, %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @_ZN4llvm10PassPlugin4LoadERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.670") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.016.021.i.i) #25
  %i.le = load i8, ptr %i.kx, align 8             ; 2 uses
  %i.lf = trunc i8 %i.le to i1
  br i1 %i.lf, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i, label %bb.ap

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i.i.i: ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !340)
  %i.lg = load i64, ptr %12, align 8, !tbaa !343, !noalias !340
  %i.lh = inttoptr i64 %i.lg to ptr
  store ptr null, ptr %12, align 8, !tbaa !343, !noalias !340
  store ptr %i.lh, ptr %13, align 8, !tbaa !189, !alias.scope !340
  call void @_ZN4llvm21reportFatalUsageErrorENS_5ErrorE(ptr nofree noundef nonnull align 8 dereferenceable(8) %13) #28
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.li = load ptr, ptr %i.ky, align 8, !tbaa !344 ; 2 uses
  %.not.i.i126.i = icmp eq ptr %i.li, null
  br i1 %.not.i.i126.i, label %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void %i.li(ptr noundef nonnull align 8 dereferenceable(2288) %42) #25, !inline_history !348
  %.pre.i.i = load i8, ptr %i.kx, align 8
  br label %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit.i.i

_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit.i.i: ; preds = %bb.aq, %bb.ap
  %i.lj = phi i8 [ %i.le, %bb.ap ], [ %.pre.i.i, %bb.aq ]
  %i.lk = trunc i8 %i.lj to i1
  %i.ll = load ptr, ptr %12, align 8, !tbaa !151  ; 5 uses
  br i1 %i.lk, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit.i.i
  %i.lm = icmp eq ptr %i.ll, %i.kz
  br i1 %i.lm, label %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.ar
  %i.ln = load i64, ptr %i.kz, align 8, !tbaa !37
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #26
  br label %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i

bb.as:                                            ; preds = %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit.i.i
  %.not.i.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i: ; preds = %bb.as
  %i.lp = load ptr, ptr %i.ll, align 8, !tbaa !8
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(8) %i.ll) #25, !inline_history !349
  br label %_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i

_ZN4llvm8ExpectedINS_10PassPluginEED2Ev.exit.i.i: ; preds = %bb.ar, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i.i.i, %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.016.021.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ls, %i.kw
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.ao

.lr.ph25.i.i:                                     ; preds = %._crit_edge.i.i, %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i
  %.sroa.012.023.i.i = phi ptr [ %i.lw, %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i ], [ %i.lb, %._crit_edge.i.i ] ; 2 uses
  %i.lt = load ptr, ptr %.sroa.012.023.i.i, align 8, !tbaa !350
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 64
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !344 ; 2 uses
  %.not.i10.i.i = icmp eq ptr %i.lv, null
  br i1 %.not.i10.i.i, label %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph25.i.i
  call void %i.lv(ptr noundef nonnull align 8 dereferenceable(2288) %42) #25, !inline_history !348
  br label %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i

_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i: ; preds = %bb.at, %.lr.ph25.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 8 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.lw, %i.ld
  br i1 %.not19.i.i, label %_ZL19RegisterPassPluginsRKN4llvm3lto6ConfigERNS_11PassBuilderE.exit.i, label %.lr.ph25.i.i

_ZL19RegisterPassPluginsRKN4llvm3lto6ConfigERNS_11PassBuilderE.exit.i: ; preds = %_ZNK4llvm10PassPlugin28registerPassBuilderCallbacksERNS_11PassBuilderE.exit11.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  %i.lx = call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #29 ; 11 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.lz = getelementptr inbounds nuw i8, ptr %1, i64 1400
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !352
  call void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216) %i.lx, ptr noundef nonnull align 8 dereferenceable(56) %i.ly, i32 noundef %i.ma) #25
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 630
  %i.mc = load i8, ptr %i.mb, align 2, !tbaa !390, !range !21, !noundef !22
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZL19RegisterPassPluginsRKN4llvm3lto6ConfigERNS_11PassBuilderE.exit.i
  call void @_ZN4llvm21TargetLibraryInfoImpl19disableAllFunctionsEv(ptr noundef nonnull align 8 dereferenceable(216) %i.lx) #25
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %_ZL19RegisterPassPluginsRKN4llvm3lto6ConfigERNS_11PassBuilderE.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  store ptr %i.lx, ptr %46, align 8, !tbaa !391
  %i.me = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.me, i8 0, i64 72, i1 false)
  %i.mf = getelementptr inbounds nuw i8, ptr %76, i64 8
  %i.mg = getelementptr inbounds nuw i8, ptr %76, i64 20 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lx, i64 136
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 144
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lx, i64 156
  br label %bb.bi

bb.aw:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr @_ZN4llvm21TargetLibraryAnalysis3KeyE, ptr %i.c, align 8, !tbaa !396
  %i.mk = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.mk, 0
  %i.ml = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !398
  %.not.i127.i = icmp eq ptr %i.mm, null
  br i1 %.not.i127.i, label %bb.ax, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"

bb.ax:                                            ; preds = %bb.aw
  %i.mn = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !400)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @_ZN4llvm21TargetLibraryInfoImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216) %10, ptr noundef nonnull align 8 dereferenceable(216) %i.lx) #25, !noalias !400
  call void @_ZN4llvm21TargetLibraryInfoImplC1EOS0_(ptr noundef nonnull align 8 dereferenceable(224) %11, ptr noundef nonnull align 8 dereferenceable(216) %10) #25
  %i.mo = getelementptr inbounds nuw i8, ptr %11, i64 216 ; 4 uses
  store i8 1, ptr %i.mo, align 8, !tbaa !403, !alias.scope !400
  %i.mp = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !405, !noalias !400 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.mq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.mr = getelementptr inbounds nuw i8, ptr %10, i64 208
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !408, !noalias !400
  %i.mt = ptrtoint ptr %i.ms to i64
  %i.mu = ptrtoint ptr %i.mq to i64
  %i.mv = sub i64 %i.mt, %i.mu
  call void @_ZdlPvm(ptr noundef nonnull %i.mq, i64 noundef %i.mv) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.ay, %bb.ax
  %i.mw = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !405, !noalias !400 ; 3 uses
  %.not.i.i.i1.i.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i1.i.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !408, !noalias !400
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i: ; preds = %bb.az, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %10, i64 136 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %10, i64 156 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !409, !noalias !400 ; 2 uses
  %i.ng = icmp eq i32 %i.nf, 0
  br i1 %i.ng, label %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i", label %.lr.ph7.preheader.i.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i.i:                    ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i
  %i.nh = load ptr, ptr %i.nd, align 8, !tbaa !412, !noalias !400
  %i.ni = getelementptr inbounds nuw i8, ptr %10, i64 144
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !413, !noalias !400
  %i.nk = zext i32 %i.nf to i64
  %i.nl = add nuw nsw i64 %i.nk, 31
  %i.nm = lshr i64 %i.nl, 5
  br label %.lr.ph7.i.i.i.i.i.i

.lr.ph7.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i.i.i.i.i.i
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i.i.i.i = icmp eq i32 %i.no, 0
  br i1 %.not11.i2.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i.i.i to i32
  %i.np = shl nuw i32 %indvars.iv.tr.i.i.i.i.i.i, 5
  br label %bb.ba

bb.ba:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.0.i3.i.i.i.i.i.i = phi i32 [ %i.no, %.lr.ph.i.i.i.i.i.i ], [ %i.ob, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i ] ; 3 uses
  %i.nq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i.i, i1 true)
  %i.nr = or disjoint i32 %i.nq, %i.np
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [40 x i8], ptr %i.nh, i64 %i.ns ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !32 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 24 ; 2 uses
  %i.nx = icmp eq ptr %i.nv, %i.nw
  br i1 %i.nx, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ba
  %i.ny = load i64, ptr %i.nw, align 8, !tbaa !37
  %i.nz = add i64 %i.ny, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.nz) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.oa = add i32 %.0.i3.i.i.i.i.i.i, -1
  %i.ob = and i32 %i.oa, %.0.i3.i.i.i.i.i.i       ; 2 uses
  %.not11.i.i.i.i.i.i.i = icmp eq i32 %i.ob, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %bb.ba, !llvm.loop !414

._crit_edge.i.i.i.i.i.i:                          ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i.i, %.lr.ph7.i.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i, %i.nm
  br i1 %.not.i.i.i3.i.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i.i, label %.lr.ph7.i.i.i.i.i.i, !llvm.loop !415

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load i32, ptr %i.ne, align 4, !tbaa !409, !noalias !400 ; 2 uses
  %i.oc = icmp eq i32 %.pr.i.i.i.i.i, 0
  br i1 %i.oc, label %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i", label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i.i
  %i.od = load ptr, ptr %i.nd, align 8, !tbaa !412, !noalias !400
  %i.oe = zext i32 %.pr.i.i.i.i.i to i64          ; 2 uses
  %i.of = mul nuw nsw i64 %i.oe, 40
  %i.og = add nuw nsw i64 %i.oe, 31
  %i.oh = lshr i64 %i.og, 3
  %i.oi = and i64 %i.oh, 1073741820
  %i.oj = add nuw nsw i64 %i.oi, %i.of
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.od, i64 noundef %i.oj, i64 noundef 8) #25
  br label %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"

"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i": ; preds = %bb.bb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i.i, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %i.mn, align 8, !tbaa !8
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mn, i64 224 ; 2 uses
  store i8 0, ptr %i.ok, align 8, !tbaa !403
  %i.ol = load i8, ptr %i.mo, align 8, !tbaa !403, !range !21, !noundef !22
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %bb.bc, label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i

bb.bc:                                            ; preds = %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"
  %i.on = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  call void @_ZN4llvm21TargetLibraryInfoImplC1EOS0_(ptr noundef nonnull align 8 dereferenceable(224) %i.on, ptr noundef nonnull align 8 dereferenceable(224) %11) #25
  store i8 1, ptr %i.ok, align 8, !tbaa !403
  br label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i

_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i: ; preds = %bb.bc, %"_ZZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEEENK3$_0clEv.exit.i.i"
  %i.oo = load ptr, ptr %i.ml, align 8, !tbaa !398 ; 3 uses
  store ptr %i.mn, ptr %i.ml, align 8, !tbaa !398
  %.not.i.i.i128.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i.i128.i, label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !8
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.oo) #25, !inline_history !416
  br label %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i

_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEC2ES3_.exit.i.i
  %i.os = load i8, ptr %i.mo, align 8, !tbaa !403, !range !21, !noundef !22
  %i.ot = trunc nuw i8 %i.os to i1
  store i8 0, ptr %i.mo, align 8, !tbaa !403
  br i1 %i.ot, label %bb.bd, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"

bb.bd:                                            ; preds = %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i
  %i.ou = getelementptr inbounds nuw i8, ptr %11, i64 192
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ov, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ow = getelementptr inbounds nuw i8, ptr %11, i64 208
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !408
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.ov to i64
  %i.pa = sub i64 %i.oy, %i.oz
  call void @_ZdlPvm(ptr noundef nonnull %i.ov, i64 noundef %i.pa) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i: ; preds = %bb.be, %bb.bd
  %i.pb = getelementptr inbounds nuw i8, ptr %11, i64 168
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %11, i64 184
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !408
  %i.pf = ptrtoint ptr %i.pe to i64
  %i.pg = ptrtoint ptr %i.pc to i64
  %i.ph = sub i64 %i.pf, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef %i.ph) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i: ; preds = %bb.bf, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %11, i64 136 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %11, i64 156 ; 2 uses
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !409 ; 2 uses
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i", label %.lr.ph7.preheader.i.i.i.i.i

.lr.ph7.preheader.i.i.i.i.i:                      ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i
  %i.pm = load ptr, ptr %i.pi, align 8, !tbaa !412
  %i.pn = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !413
  %i.pp = zext i32 %i.pk to i64
  %i.pq = add nuw nsw i64 %i.pp, 31
  %i.pr = lshr i64 %i.pq, 5
  br label %.lr.ph7.i.i.i.i.i

.lr.ph7.i.i.i.i.i:                                ; preds = %._crit_edge.i.i.i.i.i, %.lr.ph7.preheader.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv.i.i.i.i.i
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i.i.i = icmp eq i32 %i.pt, 0
  br i1 %.not11.i2.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph7.i.i.i.i.i
  %indvars.iv.tr.i.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i.i to i32
  %i.pu = shl nuw i32 %indvars.iv.tr.i.i.i.i.i, 5
  br label %bb.bg

bb.bg:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.0.i3.i.i.i.i.i = phi i32 [ %i.pt, %.lr.ph.i.i.i.i.i ], [ %i.qg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i ] ; 3 uses
  %i.pv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i.i, i1 true)
  %i.pw = or disjoint i32 %i.pv, %i.pu
  %i.px = zext i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [40 x i8], ptr %i.pm, i64 %i.px ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !32 ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 24 ; 2 uses
  %i.qc = icmp eq ptr %i.qa, %i.qb
  br i1 %i.qc, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bg
  %i.qd = load i64, ptr %i.qb, align 8, !tbaa !37
  %i.qe = add i64 %i.qd, 1
  call void @_ZdlPvm(ptr noundef %i.qa, i64 noundef %i.qe) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.qf = add i32 %.0.i3.i.i.i.i.i, -1
  %i.qg = and i32 %i.qf, %.0.i3.i.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i.i = icmp eq i32 %i.qg, 0
  br i1 %.not11.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.bg, !llvm.loop !414

._crit_edge.i.i.i.i.i:                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i.i, %.lr.ph7.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, %i.pr
  br i1 %.not.i.i.i3.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, label %.lr.ph7.i.i.i.i.i, !llvm.loop !415

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i
  %.pr.i.i.i.i = load i32, ptr %i.pj, align 4, !tbaa !409 ; 2 uses
  %i.qh = icmp eq i32 %.pr.i.i.i.i, 0
  br i1 %i.qh, label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i", label %bb.bh

bb.bh:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i
  %i.qi = load ptr, ptr %i.pi, align 8, !tbaa !412
  %i.qj = zext i32 %.pr.i.i.i.i to i64            ; 2 uses
  %i.qk = mul nuw nsw i64 %i.qj, 40
  %i.ql = add nuw nsw i64 %i.qj, 31
  %i.qm = lshr i64 %i.ql, 3
  %i.qn = and i64 %i.qm, 1073741820
  %i.qo = add nuw nsw i64 %i.qn, %i.qk
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.qi, i64 noundef %i.qo, i64 noundef 8) #25
  br label %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"

"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i": ; preds = %bb.bh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i.i.i, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i.i.i, %_ZNSt10unique_ptrIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEESt14default_deleteIS7_EE5resetEPS7_.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !139 ; 2 uses
  %i.qs = icmp eq i64 %i.qr, 0
  br i1 %i.qs, label %bb.bu, label %bb.bo

bb.bi:                                            ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, %bb.av
  %indvars.iv.i = phi i64 [ 0, %bb.av ], [ %indvars.iv.next.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i ] ; 10 uses
  %i.qt = lshr i64 %indvars.iv.i, 6
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.qt
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !131
  %i.qw = and i64 %indvars.iv.i, 63
  %i.qx = shl nuw i64 1, %i.qw
  %i.qy = and i64 %i.qx, %i.qv
  %.not.i.i129.i = icmp eq i64 %i.qy, 0
  br i1 %.not.i.i129.i, label %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i: ; preds = %bb.bi
  %i.qz = lshr i64 %indvars.iv.i, 2
  %i.ra = and i64 %i.qz, 1073741823
  %i.rb = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !37
  %i.rd = zext i8 %i.rc to i32
  %indvars.iv.tr.i = trunc nuw nsw i64 %indvars.iv.i to i32 ; 2 uses
  %i.re = shl nuw nsw i32 %indvars.iv.tr.i, 1
  %i.rf = and i32 %i.re, 6
  %i.rg = lshr i32 %i.rd, %i.rf
  %i.rh = and i32 %i.rg, 3
  switch i32 %i.rh, label %bb.bk [
    i32 0, label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
    i32 3, label %bb.bj
  ]

bb.bj:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.ri = getelementptr inbounds nuw [4 x i8], ptr @_ZN4llvm21TargetLibraryInfoImpl20StandardNamesOffsetsE, i64 %indvars.iv.i
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.ri, align 4, !tbaa !129
  %i.rj = load ptr, ptr @_ZN4llvm21TargetLibraryInfoImpl21StandardNamesStrTableE, align 8, !tbaa !417
  %i.rk = zext i32 %.sroa.0.0.copyload.i.i to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr @_ZN4llvm21TargetLibraryInfoImpl22StandardNamesSizeTableE, i64 %indvars.iv.i
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !37
  %i.ro = zext i8 %i.rn to i64
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

bb.bk:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i
  %i.rp = load ptr, ptr %i.mh, align 8, !tbaa !412, !noalias !419 ; 2 uses
  %i.rq = load ptr, ptr %i.mi, align 8, !tbaa !413, !noalias !419 ; 2 uses
  %i.rr = load i32, ptr %i.mj, align 4, !tbaa !409, !noalias !419 ; 3 uses
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %.loopexit.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rt = add i32 %i.rr, -1                       ; 2 uses
  %i.ru = mul nuw nsw i32 %indvars.iv.tr.i, 37
  %.017.i.i.i.i.i = and i32 %i.rt, %i.ru          ; 3 uses
  %i.rv = zext nneg i32 %.017.i.i.i.i.i to i64    ; 2 uses
  %i.rw = lshr i64 %i.rv, 5
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.rw
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !129, !noalias !428
  %i.rz = and i32 %.017.i.i.i.i.i, 31
  %i.sa = lshr i32 %i.ry, %i.rz
  %i.sb = trunc i32 %i.sa to i1
  br i1 %i.sb, label %.lr.ph.i.i.i.i130.i, label %.loopexit.i.i.i.i, !prof !130

bb.bm:                                            ; preds = %.lr.ph.i.i.i.i130.i
  %i.sc = add nuw i32 %.018.i.i.i.i.i, 1
  %.0.i.i.i.i.i = and i32 %i.sc, %i.rt            ; 3 uses
  %i.sd = zext i32 %.0.i.i.i.i.i to i64           ; 2 uses
  %i.se = lshr i64 %i.sd, 5
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !129, !noalias !428
  %i.sh = and i32 %.0.i.i.i.i.i, 31
  %i.si = lshr i32 %i.sg, %i.sh
  %i.sj = trunc i32 %i.si to i1
  br i1 %i.sj, label %.lr.ph.i.i.i.i130.i, label %.loopexit.i.i.i.i, !prof !135

.lr.ph.i.i.i.i130.i:                              ; preds = %bb.bl, %bb.bm
  %i.sk = phi i64 [ %i.sd, %bb.bm ], [ %i.rv, %bb.bl ] ; 2 uses
  %.018.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i, %bb.bm ], [ %.017.i.i.i.i.i, %bb.bl ]
  %i.sl = getelementptr inbounds nuw [40 x i8], ptr %i.rp, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !129, !noalias !428
  %i.sn = zext i32 %i.sm to i64
  %i.so = icmp eq i64 %indvars.iv.i, %i.sn
  br i1 %i.so, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, label %bb.bm, !prof !429

.loopexit.i.i.i.i:                                ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.sp = zext i32 %i.rr to i64
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i: ; preds = %.lr.ph.i.i.i.i130.i, %.loopexit.i.i.i.i
  %i.sq = phi i64 [ %i.sp, %.loopexit.i.i.i.i ], [ %i.sk, %.lr.ph.i.i.i.i130.i ]
  %i.sr = getelementptr inbounds nuw [40 x i8], ptr %i.rp, i64 %i.sq ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 8
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !32
  %i.su = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !139
  br label %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i

_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i: ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i, %bb.bj, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i, %bb.bi
  %.sroa.06.0.i.i = phi ptr [ %i.st, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.rl, %bb.bj ], [ null, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ null, %bb.bi ] ; 2 uses
  %.sroa.57.0.i.i = phi i64 [ %i.sv, %_ZNK4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E4findERKj.exit.i.i ], [ %i.ro, %bb.bj ], [ 0, %_ZNK4llvm17TargetLibraryInfo8getStateENS_7LibFuncE.exit.i.i ], [ 0, %bb.bi ]
  %.sroa.22.0.copyload.fr.i.i = freeze i64 %.sroa.57.0.i.i ; 4 uses
  %i.sw = load ptr, ptr %76, align 8, !tbaa !121, !noalias !430 ; 2 uses
  %i.sx = load ptr, ptr %i.mf, align 8, !tbaa !127, !noalias !430 ; 3 uses
  %i.sy = load i32, ptr %i.mg, align 4, !tbaa !128, !noalias !430 ; 2 uses
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
  %i.ta = add i32 %i.sy, -1                       ; 3 uses
  %i.tb = call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.06.0.i.i, i64 %.sroa.22.0.copyload.fr.i.i) #25
  %.01627.i.i = and i32 %i.tb, %i.ta              ; 4 uses
  %i.tc = zext i32 %.01627.i.i to i64             ; 3 uses
  %i.td = lshr i64 %i.tc, 5
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !129
  %i.tg = and i32 %.01627.i.i, 31
  %i.th = lshr i32 %i.tf, %i.tg
  %i.ti = trunc i32 %i.th to i1
  br i1 %i.ti, label %.lr.ph.i226.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !130

.lr.ph.i226.i:                                    ; preds = %bb.bn
  %i.tj = icmp eq i64 %.sroa.22.0.copyload.fr.i.i, 0
  br i1 %i.tj, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i226.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i
  %i.tk = phi i64 [ %i.tn, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %i.tc, %.lr.ph.i226.i ]
  %.01628.us.i.i = phi i32 [ %.016.us.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i ], [ %.01627.i.i, %.lr.ph.i226.i ]
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %i.tk
  %.sroa.2.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %.sroa.2.0.copyload.us.i.i = load i64, ptr %.sroa.2.0..sroa_idx.us.i.i, align 8, !tbaa !131
  %.not.i.i.us.i.i = icmp eq i64 %.sroa.2.0.copyload.us.i.i, 0
  br i1 %.not.i.i.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i: ; preds = %.lr.ph.split.us.i.i
  %i.tm = add nuw i32 %.01628.us.i.i, 1
  %.016.us.i.i = and i32 %i.tm, %i.ta             ; 3 uses
  %i.tn = zext i32 %.016.us.i.i to i64            ; 2 uses
  %i.to = lshr i64 %i.tn, 5
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.to
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !129
  %i.tr = and i32 %.016.us.i.i, 31
  %i.ts = lshr i32 %i.tq, %i.tr
  %i.tt = trunc i32 %i.ts to i1
  br i1 %i.tt, label %.lr.ph.split.us.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !135

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i226.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i
  %i.tu = phi i64 [ %i.ty, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %i.tc, %.lr.ph.i226.i ]
  %.01628.i.i = phi i32 [ %.016.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i ], [ %.01627.i.i, %.lr.ph.i226.i ]
  %i.tv = getelementptr inbounds nuw [16 x i8], ptr %i.sw, i64 %i.tu ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !131
  %.not.i.i.i227.i = icmp eq i64 %.sroa.22.0.copyload.fr.i.i, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i227.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i: ; preds = %.lr.ph.split.i.i
  %.sroa.0.0.copyload.i228.i = load ptr, ptr %i.tv, align 8, !tbaa !133
  %bcmp.i.i.i.i = call i32 @bcmp(ptr %.sroa.06.0.i.i, ptr %.sroa.0.0.copyload.i228.i, i64 %.sroa.22.0.copyload.fr.i.i)
  %i.tw = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.tw, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, !prof !134

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.i.i
  %i.tx = add nuw i32 %.01628.i.i, 1
  %.016.i.i = and i32 %i.tx, %i.ta                ; 3 uses
  %i.ty = zext i32 %.016.i.i to i64               ; 2 uses
  %i.tz = lshr i64 %i.ty, 5
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.sx, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !129
  %i.uc = and i32 %.016.i.i, 31
  %i.ud = lshr i32 %i.ub, %i.uc
  %i.ue = trunc i32 %i.ud to i1
  br i1 %i.ue, label %.lr.ph.split.i.i, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i, !prof !135

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.i.i, %.lr.ph.split.us.i.i
  %indvars.iv.tr581.i = trunc i64 %indvars.iv.i to i8
  %i.uf = shl i8 %indvars.iv.tr581.i, 1
  %i.ug = and i8 %i.uf, 6
  %i.uh = shl nuw i8 3, %i.ug
  %i.ui = lshr i64 %indvars.iv.i, 2
  %i.uj = and i64 %i.ui, 1073741823
  %i.uk = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !37
  %i.um = xor i8 %i.uh, -1
  %i.un = and i8 %i.ul, %i.um
  store i8 %i.un, ptr %i.uk, align 1, !tbaa !37
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.thread.i: ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.i.i, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread21.us.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E6doFindIS2_EEPKS8_RKT_.exit.i, %bb.bn, %_ZNK4llvm17TargetLibraryInfo7getNameENS_7LibFuncE.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next.i, 529
  br i1 %.not.i, label %bb.aw, label %bb.bi, !llvm.loop !435

bb.bo:                                            ; preds = %"_ZN4llvm15AnalysisManagerINS_8FunctionEJEE12registerPassIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSC_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISH_vEEEEE3$_0EEbOT_.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.uo = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  store ptr %i.uo, ptr %47, align 8, !tbaa !14
  %i.up = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  store i32 0, ptr %i.up, align 8, !tbaa !194
  %i.uq = getelementptr inbounds nuw i8, ptr %47, i64 12
  store i32 4, ptr %i.uq, align 4, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  %i.ur = load ptr, ptr %i.qp, align 8, !tbaa !32
  call void @_ZN4llvm11PassBuilder15parseAAPipelineERNS_9AAManagerENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %48, ptr noundef nonnull align 8 dereferenceable(2288) %42, ptr noundef nonnull align 8 dereferenceable(48) %47, ptr %i.ur, i64 %i.qr) #25
  %i.us = load ptr, ptr %48, align 8, !tbaa !189
  %.not382.i = icmp eq ptr %i.us, null
  br i1 %.not382.i, label %_ZN4llvm5ErrorD2Ev.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  %i.ut = getelementptr inbounds nuw i8, ptr %52, i64 32
  %i.uu = getelementptr inbounds nuw i8, ptr %52, i64 33
  store i8 1, ptr %i.uu, align 1, !tbaa !436
  store ptr @.str.45, ptr %52, align 8, !tbaa !37
  store i8 3, ptr %i.ut, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  %i.uv = getelementptr inbounds nuw i8, ptr %53, i64 32
  store i8 4, ptr %i.uv, align 8, !tbaa !439
  %i.uw = getelementptr inbounds nuw i8, ptr %53, i64 33
  store i8 1, ptr %i.uw, align 1, !tbaa !436
  store ptr %i.qp, ptr %53, align 8, !tbaa !37
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %51, ptr noundef nonnull align 8 dereferenceable(34) %52, ptr noundef nonnull align 8 dereferenceable(34) %53)
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.ux = getelementptr inbounds nuw i8, ptr %54, i64 32
  %i.uy = getelementptr inbounds nuw i8, ptr %54, i64 33
  store i8 1, ptr %i.uy, align 1, !tbaa !436
  store ptr @.str.46, ptr %54, align 8, !tbaa !37
  store i8 3, ptr %i.ux, align 8, !tbaa !439
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %50, ptr noundef nonnull align 8 dereferenceable(34) %51, ptr noundef nonnull align 8 dereferenceable(34) %54)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  %i.uz = load ptr, ptr %48, align 8, !tbaa !189
  store ptr %i.uz, ptr %57, align 8, !tbaa !189
  store ptr null, ptr %48, align 8, !tbaa !189
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %56, ptr nofree noundef nonnull align 8 dereferenceable(8) %57) #25
  %i.va = getelementptr inbounds nuw i8, ptr %55, i64 32
  store i8 4, ptr %i.va, align 8, !tbaa !439
  %i.vb = getelementptr inbounds nuw i8, ptr %55, i64 33
  store i8 1, ptr %i.vb, align 1, !tbaa !436
  store ptr %56, ptr %55, align 8, !tbaa !37
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %49, ptr noundef nonnull align 8 dereferenceable(34) %50, ptr noundef nonnull align 8 dereferenceable(34) %55)
  call void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34) %49, i1 noundef zeroext true) #28
  unreachable

_ZN4llvm5ErrorD2Ev.exit.i:                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr @_ZN4llvm9AAManager3KeyE, ptr %i.b, align 8, !tbaa !396
  %i.vc = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(72) %37, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.fca.0.extract.i.i131.i = extractvalue { ptr, i8 } %i.vc, 0
  %i.vd = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i131.i, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm3lto3optERKNS0_6ConfigEPNS_13TargetMachineEjRNS_6ModuleEbPNS_18ModuleSummaryIndexEPKS8_RKSt6vectorIhSaIhEENS_8ArrayRefINS_9StringRefEEE:bb.a

bb.cz:                                            ; preds = %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.i.i
  store i8 44, ptr %i.afw, align 1
  %i.afz = load ptr, ptr %i.afp, align 8, !tbaa !517
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 1
  store ptr %i.aga, ptr %i.afp, align 8, !tbaa !517
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i:  ; preds = %bb.cz, %bb.cy
  %i.agb = load ptr, ptr %.sroa.010.024.i.i, align 8, !tbaa !449 ; 2 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !8
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.age = load ptr, ptr %i.agd, align 8
  call void %i.age(ptr noundef nonnull align 8 dereferenceable(8) %i.agb, ptr noundef nonnull align 8 dereferenceable(48) %72, ptr nonnull @"_ZN4llvm12function_refIFNS_9StringRefES1_EE11callback_fnIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSD_RKNS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEEE3$_2EES1_lS1_", i64 %i.afk) #25, !inline_history !515
  %i.agf = getelementptr inbounds nuw i8, ptr %.sroa.010.024.i.i, i64 8 ; 2 uses
  %.not.i163.i = icmp eq ptr %i.agf, %i.afn
  br i1 %.not.i163.i, label %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES8_EEE.exit.i, label %_ZN4llvm13ListSeparatorcvNS_9StringRefEEv.exit.i.i, !llvm.loop !518

_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES8_EEE.exit.i: ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i, %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.peel.i.i, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #25
  %i.agg = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() #25 ; 4 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agg, i64 24
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !516
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 32 ; 3 uses
  %i.agk = load ptr, ptr %i.agj, align 8, !tbaa !517 ; 2 uses
  %i.agl = ptrtoint ptr %i.agi to i64
  %i.agm = ptrtoint ptr %i.agk to i64
  %i.agn = sub i64 %i.agl, %i.agm
  %i.ago = icmp ult i64 %i.agn, 17
  br i1 %i.ago, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES8_EEE.exit.i
  %i.agp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.agg, ptr noundef nonnull @.str.48, i64 noundef 17) #25
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

bb.db:                                            ; preds = %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES8_EEE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.agk, ptr noundef nonnull align 1 dereferenceable(17) @.str.48, i64 17, i1 false)
  %i.agq = load ptr, ptr %i.agj, align 8, !tbaa !517
  %i.agr = getelementptr inbounds nuw i8, ptr %i.agq, i64 17
  store ptr %i.agr, ptr %i.agj, align 8, !tbaa !517
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.db, %bb.da
  %.0.i.i.i = phi ptr [ %i.agp, %bb.da ], [ %i.agg, %bb.db ]
  %i.ags = load ptr, ptr %71, align 8, !tbaa !32
  %i.agt = load i64, ptr %i.afe, align 8, !tbaa !139
  %i.agu = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i, ptr noundef %i.ags, i64 noundef %i.agt) #25 ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 32 ; 2 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !517 ; 3 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 24
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !516
  %.not.i166.i = icmp ult ptr %i.agw, %i.agy
  br i1 %.not.i166.i, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.agz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.agu, i8 noundef zeroext 10) #25 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agw, i64 1
  store ptr %i.aha, ptr %i.agv, align 8, !tbaa !517
  store i8 10, ptr %i.agw, align 1, !tbaa !37
  br label %_ZN4llvm11raw_ostreamlsEc.exit.i

_ZN4llvm11raw_ostreamlsEc.exit.i:                 ; preds = %bb.dd, %bb.dc
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %72) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25
  %i.ahb = load ptr, ptr %71, align 8, !tbaa !32  ; 2 uses
  %i.ahc = icmp eq ptr %i.ahb, %i.afd
  br i1 %i.ahc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i
  %i.ahd = load i64, ptr %i.afd, align 8, !tbaa !37
  %i.ahe = add i64 %i.ahd, 1
  call void @_ZdlPvm(ptr noundef %i.ahb, i64 noundef %i.ahe) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i: ; preds = %_ZN4llvm11raw_ostreamlsEc.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #25
  br label %bb.de

bb.de:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169.i, %_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE7addPassINS_12VerifierPassEEENSt9enable_ifIXntsr3stdE9is_same_vIT_S4_EEvE4typeEOS8_.exit162.i
  call void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE3runERS1_RS3_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::PreservedAnalyses") align 8 %74, ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(1288) %3, ptr noundef nonnull align 8 dereferenceable(72) %39) #25
  %i.ahf = getelementptr inbounds nuw i8, ptr %74, i64 56
  %i.ahg = load i8, ptr %i.ahf, align 8, !tbaa !17, !range !21, !noundef !22
  %i.ahh = trunc nuw i8 %i.ahg to i1
  br i1 %i.ahh, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ahi = getelementptr inbounds nuw i8, ptr %74, i64 40
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !23
  call void @free(ptr noundef %i.ahj) #25
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i:       ; preds = %bb.df, %bb.de
  %i.ahk = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.ahl = load i8, ptr %i.ahk, align 8, !tbaa !17, !range !21, !noundef !22
  %i.ahm = trunc nuw i8 %i.ahl to i1
  br i1 %i.ahm, label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i, label %bb.dg

bb.dg:                                            ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %i.ahn = load ptr, ptr %74, align 8, !tbaa !23
  call void @free(ptr noundef %i.ahn) #25
  br label %_ZN4llvm17PreservedAnalysesD2Ev.exit.i

_ZN4llvm17PreservedAnalysesD2Ev.exit.i:           ; preds = %bb.dg, %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i.i
  %i.aho = load ptr, ptr %58, align 8, !tbaa !451 ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !445 ; 2 uses
  %.not4.i.i.i.i170.i = icmp eq ptr %i.aho, %i.ahq
  br i1 %.not4.i.i.i.i170.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i179.i, label %.lr.ph.i.i.i.i171.i

.lr.ph.i.i.i.i171.i:                              ; preds = %_ZN4llvm17PreservedAnalysesD2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i
  %.05.i.i.i.i172.i = phi ptr [ %i.ahv, %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i ], [ %i.aho, %_ZN4llvm17PreservedAnalysesD2Ev.exit.i ] ; 2 uses
  %i.ahr = load ptr, ptr %.05.i.i.i.i172.i, align 8, !tbaa !449 ; 3 uses
  %.not.i.i.i.i.i.i173.i = icmp eq ptr %i.ahr, null
  br i1 %.not.i.i.i.i.i.i173.i, label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i, label %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i174.i

_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i174.i: ; preds = %.lr.ph.i.i.i.i171.i
  %i.ahs = load ptr, ptr %i.ahr, align 8, !tbaa !8
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  %i.ahu = load ptr, ptr %i.aht, align 8
  call void %i.ahu(ptr noundef nonnull align 8 dereferenceable(8) %i.ahr) #25, !inline_history !479
  br label %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i

_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail11PassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEEEJEEEEclEPS6_.exit.i.i.i.i.i.i174.i, %.lr.ph.i.i.i.i171.i
  %i.ahv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i172.i, i64 8 ; 2 uses
  %.not.i.i.i.i176.i = icmp eq ptr %i.ahv, %i.ahq
  br i1 %.not.i.i.i.i176.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i177.i, label %.lr.ph.i.i.i.i171.i, !llvm.loop !480

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i177.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvPT_.exit.i.i.i.i175.i
  %.pr.i.i178.i = load ptr, ptr %58, align 8, !tbaa !451
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i179.i

_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i179.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i177.i, %_ZN4llvm17PreservedAnalysesD2Ev.exit.i
  %i.ahw = phi ptr [ %.pr.i.i178.i, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exitthread-pre-split.i.i177.i ], [ %i.aho, %_ZN4llvm17PreservedAnalysesD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i180.i = icmp eq ptr %i.ahw, null
  br i1 %.not.i.i1.i.i180.i, label %_ZNSt10unique_ptrIN4llvm21TargetLibraryInfoImplESt14default_deleteIS1_EED2Ev.exit.i, label %bb.dh

bb.dh:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i179.i
  %i.ahx = getelementptr inbounds nuw i8, ptr %58, i64 16
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !448
  %i.ahz = ptrtoint ptr %i.ahy to i64
  %i.aia = ptrtoint ptr %i.ahw to i64
  %i.aib = sub i64 %i.ahz, %i.aia
  call void @_ZdlPvm(ptr noundef nonnull %i.ahw, i64 noundef %i.aib) #26
  br label %_ZNSt10unique_ptrIN4llvm21TargetLibraryInfoImplESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvm21TargetLibraryInfoImplESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.dh, %_ZSt8_DestroyIPSt10unique_ptrIN4llvm6detail11PassConceptINS1_6ModuleENS1_15AnalysisManagerIS4_JEEEJEEESt14default_deleteIS7_EEEvT_SC_.exit.i.i179.i
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #25
  call void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.lx) #25
  call void @_ZdlPvm(ptr noundef nonnull %i.lx, i64 noundef 216) #26
  call void @_ZN4llvm11PassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(2288) dereferenceable(2288) %42) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #25
  call void @_ZN4llvm24StandardInstrumentationsD2Ev(ptr noundef nonnull align 8 dead_on_return(929) dereferenceable(929) %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25
  call void @_ZN4llvm28PassInstrumentationCallbacksD2Ev(ptr noundef nonnull align 8 dead_on_return(1784) dereferenceable(1784) %40) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.aic = getelementptr inbounds nuw i8, ptr %39, i64 68
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !520 ; 2 uses
  %i.aie = icmp eq i32 %i.aid, 0
  br i1 %i.aie, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt10unique_ptrIN4llvm21TargetLibraryInfoImplESt14default_deleteIS1_EED2Ev.exit.i
  %i.aif = getelementptr inbounds nuw i8, ptr %39, i64 48
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !523
  %i.aih = zext i32 %i.aid to i64                 ; 2 uses
  %i.aii = mul nuw nsw i64 %i.aih, 24
  %i.aij = add nuw nsw i64 %i.aih, 31
  %i.aik = lshr i64 %i.aij, 3
  %i.ail = and i64 %i.aik, 1073741820
  %i.aim = add nuw nsw i64 %i.ail, %i.aii
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aig, i64 noundef %i.aim, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i: ; preds = %bb.di, %_ZNSt10unique_ptrIN4llvm21TargetLibraryInfoImplESt14default_deleteIS1_EED2Ev.exit.i
  %i.ain = getelementptr inbounds nuw i8, ptr %39, i64 24 ; 2 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %39, i64 44 ; 2 uses
  %i.aip = load i32, ptr %i.aio, align 4, !tbaa !524 ; 2 uses
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.air = load ptr, ptr %i.ain, align 8, !tbaa !527
  %i.ais = getelementptr inbounds nuw i8, ptr %39, i64 32
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !528
  %i.aiu = zext i32 %i.aip to i64
  %i.aiv = add nuw nsw i64 %i.aiu, 31
  %i.aiw = lshr i64 %i.aiv, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i238.i, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i238.i ] ; 3 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %indvars.iv.i.i.i
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.aiy, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i238.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.aiz = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.dj

bb.dj:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.aiy, %.lr.ph.i.i.i ], [ %i.ajn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.aja = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.ajb = or disjoint i32 %i.aja, %i.aiz
  %i.ajc = zext i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds nuw [32 x i8], ptr %i.air, i64 %i.ajc
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8 ; 3 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !529 ; 2 uses
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.ajf, %i.aje
  br i1 %.not8.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i236.i

.lr.ph.i.i.i.i.i236.i:                            ; preds = %bb.dj, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ajg, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i ], [ %i.ajf, %bb.dj ] ; 3 uses
  %i.ajg = load ptr, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !529 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 24
  %i.aji = load ptr, ptr %i.ajh, align 8, !tbaa !532 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aji, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i236.i
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !8
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  %i.ajl = load ptr, ptr %i.ajk, align 8
  call void %i.ajl(ptr noundef nonnull align 8 dereferenceable(8) %i.aji) #25, !inline_history !534
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i236.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i.i, i64 noundef 32) #26
  %.not.i.i.i.i.i237.i = icmp eq ptr %i.ajg, %i.aje
  br i1 %.not.i.i.i.i.i237.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i236.i, !llvm.loop !535

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_6ModuleENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, %bb.dj
  %i.ajm = add i32 %.0.i3.i.i.i, -1
  %i.ajn = and i32 %i.ajm, %.0.i3.i.i.i           ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ajn, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i238.i, label %bb.dj, !llvm.loop !536

._crit_edge.i.i238.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i239.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.aiw
  br i1 %.not.i.i.i239.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !537

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i238.i
  %.pr.i.i = load i32, ptr %i.aio, align 4, !tbaa !524 ; 2 uses
  %i.ajo = icmp eq i32 %.pr.i.i, 0
  br i1 %i.ajo, label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i
  %i.ajp = load ptr, ptr %i.ain, align 8, !tbaa !527
  %i.ajq = zext i32 %.pr.i.i to i64               ; 2 uses
  %i.ajr = shl nuw nsw i64 %i.ajq, 5
  %i.ajs = add nuw nsw i64 %i.ajq, 31
  %i.ajt = lshr i64 %i.ajs, 3
  %i.aju = and i64 %i.ajt, 1073741820
  %i.ajv = add nuw nsw i64 %i.aju, %i.ajr
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ajp, i64 noundef %i.ajv, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i: ; preds = %bb.dk, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_6ModuleEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.ajw = getelementptr inbounds nuw i8, ptr %39, i64 20 ; 2 uses
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !538 ; 2 uses
  %i.ajy = icmp eq i32 %i.ajx, 0
  br i1 %i.ajy, label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i.i

.lr.ph7.preheader.i.i.i.i:                        ; preds = %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  %i.ajz = load ptr, ptr %39, align 8, !tbaa !541
  %i.aka = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.akb = load ptr, ptr %i.aka, align 8, !tbaa !542
  %i.akc = zext i32 %i.ajx to i64
  %i.akd = add nuw nsw i64 %i.akc, 31
  %i.ake = lshr i64 %i.akd, 5
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %._crit_edge.i.i.i.i, %.lr.ph7.preheader.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.akb, i64 %indvars.iv.i.i.i.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i.i = icmp eq i32 %i.akg, 0
  br i1 %.not11.i2.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph7.i.i.i.i
  %indvars.iv.tr.i.i.i.i = trunc nuw i64 %indvars.iv.i.i.i.i to i32
  %i.akh = shl nuw i32 %indvars.iv.tr.i.i.i.i, 5
  br label %bb.dl

bb.dl:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.0.i3.i.i.i.i = phi i32 [ %i.akg, %.lr.ph.i.i.i.i ], [ %i.aks, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.aki = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i.i, i1 true)
  %i.akj = or disjoint i32 %i.aki, %i.akh
  %i.akk = zext i32 %i.akj to i64
  %i.akl = getelementptr inbounds nuw [16 x i8], ptr %i.ajz, i64 %i.akk
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 8
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !543 ; 3 uses
  %.not.i.i.i.i.i183.i = icmp eq ptr %i.akn, null
  br i1 %.not.i.i.i.i.i183.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i: ; preds = %bb.dl
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !8
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 8
  %i.akq = load ptr, ptr %i.akp, align 8
  call void %i.akq(ptr noundef nonnull align 8 dereferenceable(8) %i.akn) #25, !inline_history !545
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_6ModuleENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i, %bb.dl
  %i.akr = add i32 %.0.i3.i.i.i.i, -1
  %i.aks = and i32 %i.akr, %.0.i3.i.i.i.i         ; 2 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.aks, 0
  br i1 %.not11.i.i.i.i.i, label %._crit_edge.i.i.i.i, label %bb.dl, !llvm.loop !546

._crit_edge.i.i.i.i:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i.i
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i184.i = icmp eq i64 %indvars.iv.next.i.i.i.i, %i.ake
  br i1 %.not.i.i.i.i184.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i.i, !llvm.loop !547

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i
  %.pr.i.i185.i = load i32, ptr %i.ajw, align 4, !tbaa !538 ; 2 uses
  %i.akt = icmp eq i32 %.pr.i.i185.i, 0
  br i1 %i.akt, label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i, label %bb.dm

bb.dm:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i
  %i.aku = load ptr, ptr %39, align 8, !tbaa !541
  %i.akv = zext i32 %.pr.i.i185.i to i64          ; 2 uses
  %i.akw = shl nuw nsw i64 %i.akv, 4
  %i.akx = add nuw nsw i64 %i.akv, 31
  %i.aky = lshr i64 %i.akx, 3
  %i.akz = and i64 %i.aky, 1073741820
  %i.ala = add nuw nsw i64 %i.akz, %i.akw
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aku, i64 noundef %i.ala, i64 noundef 8) #25
  br label %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i

_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i: ; preds = %bb.dm, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_6ModuleENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, %_ZN4llvm8DenseMapIPNS_6ModuleENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  %i.alb = getelementptr inbounds nuw i8, ptr %38, i64 68
  %i.alc = load i32, ptr %i.alb, align 4, !tbaa !548 ; 2 uses
  %i.ald = icmp eq i32 %i.alc, 0
  br i1 %i.ald, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i.i, label %bb.dn

bb.dn:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i
  %i.ale = getelementptr inbounds nuw i8, ptr %38, i64 48
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !551
  %i.alg = zext i32 %i.alc to i64                 ; 2 uses
  %i.alh = mul nuw nsw i64 %i.alg, 24
  %i.ali = add nuw nsw i64 %i.alg, 31
  %i.alj = lshr i64 %i.ali, 3
  %i.alk = and i64 %i.alj, 1073741820
  %i.all = add nuw nsw i64 %i.alk, %i.alh
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.alf, i64 noundef %i.all, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i.i: ; preds = %bb.dn, %_ZN4llvm15AnalysisManagerINS_6ModuleEJEED2Ev.exit.i
  %i.alm = getelementptr inbounds nuw i8, ptr %38, i64 24 ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %38, i64 44 ; 2 uses
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !552 ; 2 uses
  %i.alp = icmp eq i32 %i.alo, 0
  br i1 %i.alp, label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i240.i

.lr.ph7.preheader.i.i240.i:                       ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i.i
  %i.alq = load ptr, ptr %i.alm, align 8, !tbaa !555
  %i.alr = getelementptr inbounds nuw i8, ptr %38, i64 32
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !556
  %i.alt = zext i32 %i.alo to i64
  %i.alu = add nuw nsw i64 %i.alt, 31
  %i.alv = lshr i64 %i.alu, 5
  br label %.lr.ph7.i.i241.i

.lr.ph7.i.i241.i:                                 ; preds = %._crit_edge.i.i253.i, %.lr.ph7.preheader.i.i240.i
  %indvars.iv.i.i242.i = phi i64 [ 0, %.lr.ph7.preheader.i.i240.i ], [ %indvars.iv.next.i.i254.i, %._crit_edge.i.i253.i ] ; 3 uses
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.i.i242.i
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i243.i = icmp eq i32 %i.alx, 0
  br i1 %.not11.i2.i.i243.i, label %._crit_edge.i.i253.i, label %.lr.ph.i.i244.i

.lr.ph.i.i244.i:                                  ; preds = %.lr.ph7.i.i241.i
  %indvars.iv.tr.i.i245.i = trunc nuw i64 %indvars.iv.i.i242.i to i32
  %i.aly = shl nuw i32 %indvars.iv.tr.i.i245.i, 5
  br label %bb.do

bb.do:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i244.i
  %.0.i3.i.i246.i = phi i32 [ %i.alx, %.lr.ph.i.i244.i ], [ %i.amm, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.alz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i246.i, i1 true)
  %i.ama = or disjoint i32 %i.alz, %i.aly
  %i.amb = zext i32 %i.ama to i64
  %i.amc = getelementptr inbounds nuw [32 x i8], ptr %i.alq, i64 %i.amb
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 8 ; 3 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !529 ; 2 uses
  %.not8.i.i.i.i.i247.i = icmp eq ptr %i.ame, %i.amd
  br i1 %.not8.i.i.i.i.i247.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i248.i

.lr.ph.i.i.i.i.i248.i:                            ; preds = %bb.do, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i249.i = phi ptr [ %i.amf, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i ], [ %i.ame, %bb.do ] ; 3 uses
  %i.amf = load ptr, ptr %.09.i.i.i.i.i249.i, align 8, !tbaa !529 ; 2 uses
  %i.amg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i249.i, i64 24
  %i.amh = load ptr, ptr %i.amg, align 8, !tbaa !557 ; 3 uses
  %.not.i.i.i.i.i.i.i250.i = icmp eq ptr %i.amh, null
  br i1 %.not.i.i.i.i.i.i.i250.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i248.i
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !8
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 8
  %i.amk = load ptr, ptr %i.amj, align 8
  call void %i.amk(ptr noundef nonnull align 8 dereferenceable(8) %i.amh) #25, !inline_history !559
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i248.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i249.i, i64 noundef 32) #26
  %.not.i.i.i.i.i251.i = icmp eq ptr %i.amf, %i.amd
  br i1 %.not.i.i.i.i.i251.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i248.i, !llvm.loop !560

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS7_JRS6_EE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i, %bb.do
  %i.aml = add i32 %.0.i3.i.i246.i, -1
  %i.amm = and i32 %i.aml, %.0.i3.i.i246.i        ; 2 uses
  %.not11.i.i.i252.i = icmp eq i32 %i.amm, 0
  br i1 %.not11.i.i.i252.i, label %._crit_edge.i.i253.i, label %bb.do, !llvm.loop !561

._crit_edge.i.i253.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i241.i
  %indvars.iv.next.i.i254.i = add nuw nsw i64 %indvars.iv.i.i242.i, 1 ; 2 uses
  %.not.i.i.i255.i = icmp eq i64 %indvars.iv.next.i.i254.i, %i.alv
  br i1 %.not.i.i.i255.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i241.i, !llvm.loop !562

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i253.i
  %.pr.i256.i = load i32, ptr %i.aln, align 4, !tbaa !552 ; 2 uses
  %i.amn = icmp eq i32 %.pr.i256.i, 0
  br i1 %i.amn, label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i, label %bb.dp

bb.dp:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i.i
  %i.amo = load ptr, ptr %i.alm, align 8, !tbaa !555
  %i.amp = zext i32 %.pr.i256.i to i64            ; 2 uses
  %i.amq = shl nuw nsw i64 %i.amp, 5
  %i.amr = add nuw nsw i64 %i.amp, 31
  %i.ams = lshr i64 %i.amr, 3
  %i.amt = and i64 %i.ams, 1073741820
  %i.amu = add nuw nsw i64 %i.amt, %i.amq
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.amo, i64 noundef %i.amu, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i: ; preds = %bb.dp, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS3_NS_15AnalysisManagerIS3_JRS2_EE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS4_vEENSB_12DenseMapPairIS4_SN_EEEES4_SN_SP_SR_E10destroyAllEv.exit.i.i, %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_13LazyCallGraph3SCCEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS5_NS_15AnalysisManagerIS5_JRS4_EE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS7_vEENSA_12DenseMapPairIS7_SL_EEED2Ev.exit.i.i
  %i.amv = getelementptr inbounds nuw i8, ptr %38, i64 20 ; 2 uses
  %i.amw = load i32, ptr %i.amv, align 4, !tbaa !563 ; 2 uses
  %i.amx = icmp eq i32 %i.amw, 0
  br i1 %i.amx, label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i186.i

.lr.ph7.preheader.i.i.i186.i:                     ; preds = %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i
  %i.amy = load ptr, ptr %38, align 8, !tbaa !566
  %i.amz = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !567
  %i.anb = zext i32 %i.amw to i64
  %i.anc = add nuw nsw i64 %i.anb, 31
  %i.and = lshr i64 %i.anc, 5
  br label %.lr.ph7.i.i.i187.i

.lr.ph7.i.i.i187.i:                               ; preds = %._crit_edge.i.i.i195.i, %.lr.ph7.preheader.i.i.i186.i
  %indvars.iv.i.i.i188.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i186.i ], [ %indvars.iv.next.i.i.i196.i, %._crit_edge.i.i.i195.i ] ; 3 uses
  %i.ane = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %indvars.iv.i.i.i188.i
  %i.anf = load i32, ptr %i.ane, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i189.i = icmp eq i32 %i.anf, 0
  br i1 %.not11.i2.i.i.i189.i, label %._crit_edge.i.i.i195.i, label %.lr.ph.i.i.i190.i

.lr.ph.i.i.i190.i:                                ; preds = %.lr.ph7.i.i.i187.i
  %indvars.iv.tr.i.i.i191.i = trunc nuw i64 %indvars.iv.i.i.i188.i to i32
  %i.ang = shl nuw i32 %indvars.iv.tr.i.i.i191.i, 5
  br label %bb.dq

bb.dq:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i190.i
  %.0.i3.i.i.i192.i = phi i32 [ %i.anf, %.lr.ph.i.i.i190.i ], [ %i.anr, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.anh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i192.i, i1 true)
  %i.ani = or disjoint i32 %i.anh, %i.ang
  %i.anj = zext i32 %i.ani to i64
  %i.ank = getelementptr inbounds nuw [16 x i8], ptr %i.amy, i64 %i.anj
  %i.anl = getelementptr inbounds nuw i8, ptr %i.ank, i64 8
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !568 ; 3 uses
  %.not.i.i.i.i.i193.i = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i.i.i193.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i: ; preds = %bb.dq
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !8
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  %i.anp = load ptr, ptr %i.ano, align 8
  call void %i.anp(ptr noundef nonnull align 8 dereferenceable(8) %i.anm) #25, !inline_history !570
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_13LazyCallGraph3SCCENS0_15AnalysisManagerIS4_JRS3_EE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i, %bb.dq
  %i.anq = add i32 %.0.i3.i.i.i192.i, -1
  %i.anr = and i32 %i.anq, %.0.i3.i.i.i192.i      ; 2 uses
  %.not11.i.i.i.i194.i = icmp eq i32 %i.anr, 0
  br i1 %.not11.i.i.i.i194.i, label %._crit_edge.i.i.i195.i, label %bb.dq, !llvm.loop !571

._crit_edge.i.i.i195.i:                           ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i187.i
  %indvars.iv.next.i.i.i196.i = add nuw nsw i64 %indvars.iv.i.i.i188.i, 1 ; 2 uses
  %.not.i.i.i.i197.i = icmp eq i64 %indvars.iv.next.i.i.i196.i, %i.and
  br i1 %.not.i.i.i.i197.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i187.i, !llvm.loop !572

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i195.i
  %.pr.i.i198.i = load i32, ptr %i.amv, align 4, !tbaa !563 ; 2 uses
  %i.ans = icmp eq i32 %.pr.i.i198.i, 0
  br i1 %i.ans, label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i, label %bb.dr

bb.dr:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i
  %i.ant = load ptr, ptr %38, align 8, !tbaa !566
  %i.anu = zext i32 %.pr.i.i198.i to i64          ; 2 uses
  %i.anv = shl nuw nsw i64 %i.anu, 4
  %i.anw = add nuw nsw i64 %i.anu, 31
  %i.anx = lshr i64 %i.anw, 3
  %i.any = and i64 %i.anx, 1073741820
  %i.anz = add nuw nsw i64 %i.any, %i.anv
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ant, i64 noundef %i.anz, i64 noundef 8) #25
  br label %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i

_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i: ; preds = %bb.dr, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_13LazyCallGraph3SCCENS_15AnalysisManagerIS8_JRS7_EE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i, %_ZN4llvm8DenseMapIPNS_13LazyCallGraph3SCCENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRS1_EE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  %i.aoa = getelementptr inbounds nuw i8, ptr %37, i64 68
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !573 ; 2 uses
  %i.aoc = icmp eq i32 %i.aob, 0
  br i1 %i.aoc, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i
  %i.aod = getelementptr inbounds nuw i8, ptr %37, i64 48
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !576
  %i.aof = zext i32 %i.aob to i64                 ; 2 uses
  %i.aog = mul nuw nsw i64 %i.aof, 24
  %i.aoh = add nuw nsw i64 %i.aof, 31
  %i.aoi = lshr i64 %i.aoh, 3
  %i.aoj = and i64 %i.aoi, 1073741820
  %i.aok = add nuw nsw i64 %i.aoj, %i.aog
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aoe, i64 noundef %i.aok, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i: ; preds = %bb.ds, %_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EED2Ev.exit.i
  %i.aol = getelementptr inbounds nuw i8, ptr %37, i64 24 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %37, i64 44 ; 2 uses
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !577 ; 2 uses
  %i.aoo = icmp eq i32 %i.aon, 0
  br i1 %i.aoo, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i257.i

.lr.ph7.preheader.i.i257.i:                       ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.aop = load ptr, ptr %i.aol, align 8, !tbaa !580
  %i.aoq = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.aor = load ptr, ptr %i.aoq, align 8, !tbaa !581
  %i.aos = zext i32 %i.aon to i64
  %i.aot = add nuw nsw i64 %i.aos, 31
  %i.aou = lshr i64 %i.aot, 5
  br label %.lr.ph7.i.i258.i

.lr.ph7.i.i258.i:                                 ; preds = %._crit_edge.i.i270.i, %.lr.ph7.preheader.i.i257.i
  %indvars.iv.i.i259.i = phi i64 [ 0, %.lr.ph7.preheader.i.i257.i ], [ %indvars.iv.next.i.i271.i, %._crit_edge.i.i270.i ] ; 3 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i.i259.i
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i260.i = icmp eq i32 %i.aow, 0
  br i1 %.not11.i2.i.i260.i, label %._crit_edge.i.i270.i, label %.lr.ph.i.i261.i

.lr.ph.i.i261.i:                                  ; preds = %.lr.ph7.i.i258.i
  %indvars.iv.tr.i.i262.i = trunc nuw i64 %indvars.iv.i.i259.i to i32
  %i.aox = shl nuw i32 %indvars.iv.tr.i.i262.i, 5
  br label %bb.dt

bb.dt:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i261.i
  %.0.i3.i.i263.i = phi i32 [ %i.aow, %.lr.ph.i.i261.i ], [ %i.apl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.aoy = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i263.i, i1 true)
  %i.aoz = or disjoint i32 %i.aoy, %i.aox
  %i.apa = zext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds nuw [32 x i8], ptr %i.aop, i64 %i.apa
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 8 ; 3 uses
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !529 ; 2 uses
  %.not8.i.i.i.i.i264.i = icmp eq ptr %i.apd, %i.apc
  br i1 %.not8.i.i.i.i.i264.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i265.i

.lr.ph.i.i.i.i.i265.i:                            ; preds = %bb.dt, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i266.i = phi ptr [ %i.ape, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i ], [ %i.apd, %bb.dt ] ; 3 uses
  %i.ape = load ptr, ptr %.09.i.i.i.i.i266.i, align 8, !tbaa !529 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i266.i, i64 24
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !582 ; 3 uses
  %.not.i.i.i.i.i.i.i267.i = icmp eq ptr %i.apg, null
  br i1 %.not.i.i.i.i.i.i.i267.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i265.i
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !8
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 8
  %i.apj = load ptr, ptr %i.api, align 8
  call void %i.apj(ptr noundef nonnull align 8 dereferenceable(8) %i.apg) #25, !inline_history !584
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEEEEclEPS7_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i265.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i266.i, i64 noundef 32) #26
  %.not.i.i.i.i.i268.i = icmp eq ptr %i.ape, %i.apc
  br i1 %.not.i.i.i.i.i268.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i265.i, !llvm.loop !585

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_8FunctionENS0_15AnalysisManagerIS6_JEE11InvalidatorEEESt14default_deleteISA_EEED2Ev.exit.i.i.i.i.i.i, %bb.dt
  %i.apk = add i32 %.0.i3.i.i263.i, -1
  %i.apl = and i32 %i.apk, %.0.i3.i.i263.i        ; 2 uses
  %.not11.i.i.i269.i = icmp eq i32 %i.apl, 0
  br i1 %.not11.i.i.i269.i, label %._crit_edge.i.i270.i, label %bb.dt, !llvm.loop !586

._crit_edge.i.i270.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i258.i
  %indvars.iv.next.i.i271.i = add nuw nsw i64 %indvars.iv.i.i259.i, 1 ; 2 uses
  %.not.i.i.i272.i = icmp eq i64 %indvars.iv.next.i.i271.i, %i.aou
  br i1 %.not.i.i.i272.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i258.i, !llvm.loop !587

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i270.i
  %.pr.i273.i = load i32, ptr %i.aom, align 4, !tbaa !577 ; 2 uses
  %i.apm = icmp eq i32 %.pr.i273.i, 0
  br i1 %i.apm, label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i, label %bb.du

bb.du:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i
  %i.apn = load ptr, ptr %i.aol, align 8, !tbaa !580
  %i.apo = zext i32 %.pr.i273.i to i64            ; 2 uses
  %i.app = shl nuw nsw i64 %i.apo, 5
  %i.apq = add nuw nsw i64 %i.apo, 31
  %i.apr = lshr i64 %i.apq, 3
  %i.aps = and i64 %i.apr, 1073741820
  %i.apt = add nuw nsw i64 %i.aps, %i.app
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.apn, i64 noundef %i.apt, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i: ; preds = %bb.du, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JEE11InvalidatorEEESt14default_deleteISF_EEESaISJ_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SL_EEEES3_SL_SN_SP_E10destroyAllEv.exit.i.i, %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_8FunctionEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JEE11InvalidatorEEESt14default_deleteISE_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SJ_EEED2Ev.exit.i.i
  %i.apu = getelementptr inbounds nuw i8, ptr %37, i64 20 ; 2 uses
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !588 ; 2 uses
  %i.apw = icmp eq i32 %i.apv, 0
  br i1 %i.apw, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i199.i

.lr.ph7.preheader.i.i.i199.i:                     ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  %i.apx = load ptr, ptr %37, align 8, !tbaa !591
  %i.apy = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.apz = load ptr, ptr %i.apy, align 8, !tbaa !592
  %i.aqa = zext i32 %i.apv to i64
  %i.aqb = add nuw nsw i64 %i.aqa, 31
  %i.aqc = lshr i64 %i.aqb, 5
  br label %.lr.ph7.i.i.i200.i

.lr.ph7.i.i.i200.i:                               ; preds = %._crit_edge.i.i.i208.i, %.lr.ph7.preheader.i.i.i199.i
  %indvars.iv.i.i.i201.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i199.i ], [ %indvars.iv.next.i.i.i209.i, %._crit_edge.i.i.i208.i ] ; 3 uses
  %i.aqd = getelementptr inbounds nuw [4 x i8], ptr %i.apz, i64 %indvars.iv.i.i.i201.i
  %i.aqe = load i32, ptr %i.aqd, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i202.i = icmp eq i32 %i.aqe, 0
  br i1 %.not11.i2.i.i.i202.i, label %._crit_edge.i.i.i208.i, label %.lr.ph.i.i.i203.i

.lr.ph.i.i.i203.i:                                ; preds = %.lr.ph7.i.i.i200.i
  %indvars.iv.tr.i.i.i204.i = trunc nuw i64 %indvars.iv.i.i.i201.i to i32
  %i.aqf = shl nuw i32 %indvars.iv.tr.i.i.i204.i, 5
  br label %bb.dv

bb.dv:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i203.i
  %.0.i3.i.i.i205.i = phi i32 [ %i.aqe, %.lr.ph.i.i.i203.i ], [ %i.aqq, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.aqg = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i205.i, i1 true)
  %i.aqh = or disjoint i32 %i.aqg, %i.aqf
  %i.aqi = zext i32 %i.aqh to i64
  %i.aqj = getelementptr inbounds nuw [16 x i8], ptr %i.apx, i64 %i.aqi
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqj, i64 8
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !398 ; 3 uses
  %.not.i.i.i.i.i206.i = icmp eq ptr %i.aql, null
  br i1 %.not.i.i.i.i.i206.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i: ; preds = %bb.dv
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !8
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqm, i64 8
  %i.aqo = load ptr, ptr %i.aqn, align 8
  call void %i.aqo(ptr noundef nonnull align 8 dereferenceable(8) %i.aql) #25, !inline_history !593
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i.i.i, %bb.dv
  %i.aqp = add i32 %.0.i3.i.i.i205.i, -1
  %i.aqq = and i32 %i.aqp, %.0.i3.i.i.i205.i      ; 2 uses
  %.not11.i.i.i.i207.i = icmp eq i32 %i.aqq, 0
  br i1 %.not11.i.i.i.i207.i, label %._crit_edge.i.i.i208.i, label %bb.dv, !llvm.loop !594

._crit_edge.i.i.i208.i:                           ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i200.i
  %indvars.iv.next.i.i.i209.i = add nuw nsw i64 %indvars.iv.i.i.i201.i, 1 ; 2 uses
  %.not.i.i.i.i210.i = icmp eq i64 %indvars.iv.next.i.i.i209.i, %i.aqc
  br i1 %.not.i.i.i.i210.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i200.i, !llvm.loop !595

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i208.i
  %.pr.i.i211.i = load i32, ptr %i.apu, align 4, !tbaa !588 ; 2 uses
  %i.aqr = icmp eq i32 %.pr.i.i211.i, 0
  br i1 %i.aqr, label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i
  %i.aqs = load ptr, ptr %37, align 8, !tbaa !591
  %i.aqt = zext i32 %.pr.i.i211.i to i64          ; 2 uses
  %i.aqu = shl nuw nsw i64 %i.aqt, 4
  %i.aqv = add nuw nsw i64 %i.aqt, 31
  %i.aqw = lshr i64 %i.aqv, 3
  %i.aqx = and i64 %i.aqw, 1073741820
  %i.aqy = add nuw nsw i64 %i.aqx, %i.aqu
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aqs, i64 noundef %i.aqy, i64 noundef 8) #25
  br label %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i

_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i: ; preds = %bb.dw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i.i.i, %_ZN4llvm8DenseMapIPNS_8FunctionENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JEE11InvalidatorEEESt14default_deleteISE_EEESaISI_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SK_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  %i.aqz = getelementptr inbounds nuw i8, ptr %36, i64 68
  %i.ara = load i32, ptr %i.aqz, align 4, !tbaa !596 ; 2 uses
  %i.arb = icmp eq i32 %i.ara, 0
  br i1 %i.arb, label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i.i, label %bb.dx

bb.dx:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i
  %i.arc = getelementptr inbounds nuw i8, ptr %36, i64 48
  %i.ard = load ptr, ptr %i.arc, align 8, !tbaa !599
  %i.are = zext i32 %i.ara to i64                 ; 2 uses
  %i.arf = mul nuw nsw i64 %i.are, 24
  %i.arg = add nuw nsw i64 %i.are, 31
  %i.arh = lshr i64 %i.arg, 3
  %i.ari = and i64 %i.arh, 1073741820
  %i.arj = add nuw nsw i64 %i.ari, %i.arf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ard, i64 noundef %i.arj, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i.i: ; preds = %bb.dx, %_ZN4llvm15AnalysisManagerINS_8FunctionEJEED2Ev.exit.i
  %i.ark = getelementptr inbounds nuw i8, ptr %36, i64 24 ; 2 uses
  %i.arl = getelementptr inbounds nuw i8, ptr %36, i64 44 ; 2 uses
  %i.arm = load i32, ptr %i.arl, align 4, !tbaa !600 ; 2 uses
  %i.arn = icmp eq i32 %i.arm, 0
  br i1 %i.arn, label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i, label %.lr.ph7.preheader.i.i274.i

.lr.ph7.preheader.i.i274.i:                       ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i.i
  %i.aro = load ptr, ptr %i.ark, align 8, !tbaa !603
  %i.arp = getelementptr inbounds nuw i8, ptr %36, i64 32
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !604
  %i.arr = zext i32 %i.arm to i64
  %i.ars = add nuw nsw i64 %i.arr, 31
  %i.art = lshr i64 %i.ars, 5
  br label %.lr.ph7.i.i275.i

.lr.ph7.i.i275.i:                                 ; preds = %._crit_edge.i.i287.i, %.lr.ph7.preheader.i.i274.i
  %indvars.iv.i.i276.i = phi i64 [ 0, %.lr.ph7.preheader.i.i274.i ], [ %indvars.iv.next.i.i288.i, %._crit_edge.i.i287.i ] ; 3 uses
  %i.aru = getelementptr inbounds nuw [4 x i8], ptr %i.arq, i64 %indvars.iv.i.i276.i
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i277.i = icmp eq i32 %i.arv, 0
  br i1 %.not11.i2.i.i277.i, label %._crit_edge.i.i287.i, label %.lr.ph.i.i278.i

.lr.ph.i.i278.i:                                  ; preds = %.lr.ph7.i.i275.i
  %indvars.iv.tr.i.i279.i = trunc nuw i64 %indvars.iv.i.i276.i to i32
  %i.arw = shl nuw i32 %indvars.iv.tr.i.i279.i, 5
  br label %bb.dy

bb.dy:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i278.i
  %.0.i3.i.i280.i = phi i32 [ %i.arv, %.lr.ph.i.i278.i ], [ %i.ask, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.arx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i280.i, i1 true)
  %i.ary = or disjoint i32 %i.arx, %i.arw
  %i.arz = zext i32 %i.ary to i64
  %i.asa = getelementptr inbounds nuw [32 x i8], ptr %i.aro, i64 %i.arz
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 8 ; 3 uses
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !529 ; 2 uses
  %.not8.i.i.i.i.i281.i = icmp eq ptr %i.asc, %i.asb
  br i1 %.not8.i.i.i.i.i281.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i282.i

.lr.ph.i.i.i.i.i282.i:                            ; preds = %bb.dy, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i
  %.09.i.i.i.i.i283.i = phi ptr [ %i.asd, %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i ], [ %i.asc, %bb.dy ] ; 3 uses
  %i.asd = load ptr, ptr %.09.i.i.i.i.i283.i, align 8, !tbaa !529 ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i283.i, i64 24
  %i.asf = load ptr, ptr %i.ase, align 8, !tbaa !605 ; 3 uses
  %.not.i.i.i.i.i.i.i284.i = icmp eq ptr %i.asf, null
  br i1 %.not.i.i.i.i.i.i.i284.i, label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i282.i
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !8
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 8
  %i.asi = load ptr, ptr %i.ash, align 8
  call void %i.asi(ptr noundef nonnull align 8 dereferenceable(8) %i.asf) #25, !inline_history !607
  br label %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i

_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEEEclEPS9_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i282.i
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i283.i, i64 noundef 32) #26
  %.not.i.i.i.i.i285.i = icmp eq ptr %i.asd, %i.asb
  br i1 %.not.i.i.i.i.i285.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %.lr.ph.i.i.i.i.i282.i, !llvm.loop !608

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %_ZNSt4pairIPN4llvm11AnalysisKeyESt10unique_ptrINS0_6detail21AnalysisResultConceptINS0_4LoopENS0_15AnalysisManagerIS6_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISC_EEED2Ev.exit.i.i.i.i.i.i, %bb.dy
  %i.asj = add i32 %.0.i3.i.i280.i, -1
  %i.ask = and i32 %i.asj, %.0.i3.i.i280.i        ; 2 uses
  %.not11.i.i.i286.i = icmp eq i32 %i.ask, 0
  br i1 %.not11.i.i.i286.i, label %._crit_edge.i.i287.i, label %bb.dy, !llvm.loop !609

._crit_edge.i.i287.i:                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i275.i
  %indvars.iv.next.i.i288.i = add nuw nsw i64 %indvars.iv.i.i276.i, 1 ; 2 uses
  %.not.i.i.i289.i = icmp eq i64 %indvars.iv.next.i.i288.i, %i.art
  br i1 %.not.i.i.i289.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i275.i, !llvm.loop !610

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i287.i
  %.pr.i290.i = load i32, ptr %i.arl, align 4, !tbaa !600 ; 2 uses
  %i.asl = icmp eq i32 %.pr.i290.i, 0
  br i1 %i.asl, label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i.i
  %i.asm = load ptr, ptr %i.ark, align 8, !tbaa !603
  %i.asn = zext i32 %.pr.i290.i to i64            ; 2 uses
  %i.aso = shl nuw nsw i64 %i.asn, 5
  %i.asp = add nuw nsw i64 %i.asn, 31
  %i.asq = lshr i64 %i.asp, 3
  %i.asr = and i64 %i.asq, 1073741820
  %i.ass = add nuw nsw i64 %i.asr, %i.aso
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.asm, i64 noundef %i.ass, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i

_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i: ; preds = %bb.dz, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS2_NS_15AnalysisManagerIS2_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISH_EEESaISL_EEENS_12DenseMapInfoIS3_vEENSA_12DenseMapPairIS3_SN_EEEES3_SN_SP_SR_E10destroyAllEv.exit.i.i, %_ZN4llvm8DenseMapISt4pairIPNS_11AnalysisKeyEPNS_4LoopEESt14_List_iteratorIS1_IS3_St10unique_ptrINS_6detail21AnalysisResultConceptIS4_NS_15AnalysisManagerIS4_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEEENS_12DenseMapInfoIS6_vEENS9_12DenseMapPairIS6_SL_EEED2Ev.exit.i.i
  %i.ast = getelementptr inbounds nuw i8, ptr %36, i64 20 ; 2 uses
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !611 ; 2 uses
  %i.asv = icmp eq i32 %i.asu, 0
  br i1 %i.asv, label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i, label %.lr.ph7.preheader.i.i.i212.i

.lr.ph7.preheader.i.i.i212.i:                     ; preds = %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i
  %i.asw = load ptr, ptr %36, align 8, !tbaa !614
  %i.asx = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.asy = load ptr, ptr %i.asx, align 8, !tbaa !615
  %i.asz = zext i32 %i.asu to i64
  %i.ata = add nuw nsw i64 %i.asz, 31
  %i.atb = lshr i64 %i.ata, 5
  br label %.lr.ph7.i.i.i213.i

.lr.ph7.i.i.i213.i:                               ; preds = %._crit_edge.i.i.i221.i, %.lr.ph7.preheader.i.i.i212.i
  %indvars.iv.i.i.i214.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i212.i ], [ %indvars.iv.next.i.i.i222.i, %._crit_edge.i.i.i221.i ] ; 3 uses
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %i.asy, i64 %indvars.iv.i.i.i214.i
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i215.i = icmp eq i32 %i.atd, 0
  br i1 %.not11.i2.i.i.i215.i, label %._crit_edge.i.i.i221.i, label %.lr.ph.i.i.i216.i

.lr.ph.i.i.i216.i:                                ; preds = %.lr.ph7.i.i.i213.i
  %indvars.iv.tr.i.i.i217.i = trunc nuw i64 %indvars.iv.i.i.i214.i to i32
  %i.ate = shl nuw i32 %indvars.iv.tr.i.i.i217.i, 5
  br label %bb.ea

bb.ea:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph.i.i.i216.i
  %.0.i3.i.i.i218.i = phi i32 [ %i.atd, %.lr.ph.i.i.i216.i ], [ %i.atp, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i ] ; 3 uses
  %i.atf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i218.i, i1 true)
  %i.atg = or disjoint i32 %i.atf, %i.ate
  %i.ath = zext i32 %i.atg to i64
  %i.ati = getelementptr inbounds nuw [16 x i8], ptr %i.asw, i64 %i.ath
  %i.atj = getelementptr inbounds nuw i8, ptr %i.ati, i64 8
  %i.atk = load ptr, ptr %i.atj, align 8, !tbaa !616 ; 3 uses
  %.not.i.i.i.i.i219.i = icmp eq ptr %i.atk, null
  br i1 %.not.i.i.i.i.i219.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i: ; preds = %bb.ea
  %i.atl = load ptr, ptr %i.atk, align 8, !tbaa !8
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atl, i64 8
  %i.atn = load ptr, ptr %i.atm, align 8
  call void %i.atn(ptr noundef nonnull align 8 dereferenceable(8) %i.atk) #25, !inline_history !618
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_4LoopENS0_15AnalysisManagerIS3_JRNS0_27LoopStandardAnalysisResultsEEE11InvalidatorEJS6_EEEEclEPS9_.exit.i.i.i.i.i.i, %bb.ea
  %i.ato = add i32 %.0.i3.i.i.i218.i, -1
  %i.atp = and i32 %i.ato, %.0.i3.i.i.i218.i      ; 2 uses
  %.not11.i.i.i.i220.i = icmp eq i32 %i.atp, 0
  br i1 %.not11.i.i.i.i220.i, label %._crit_edge.i.i.i221.i, label %bb.ea, !llvm.loop !619

._crit_edge.i.i.i221.i:                           ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEvENKUljE_clEj.exit.i.i.i.i, %.lr.ph7.i.i.i213.i
  %indvars.iv.next.i.i.i222.i = add nuw nsw i64 %indvars.iv.i.i.i214.i, 1 ; 2 uses
  %.not.i.i.i.i223.i = icmp eq i64 %indvars.iv.next.i.i.i222.i, %i.atb
  br i1 %.not.i.i.i.i223.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i, label %.lr.ph7.i.i.i213.i, !llvm.loop !620

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i: ; preds = %._crit_edge.i.i.i221.i
  %.pr.i.i224.i = load i32, ptr %i.ast, align 4, !tbaa !611 ; 2 uses
  %i.atq = icmp eq i32 %.pr.i.i224.i, 0
  br i1 %i.atq, label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i, label %bb.eb

bb.eb:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i
  %i.atr = load ptr, ptr %36, align 8, !tbaa !614
  %i.ats = zext i32 %.pr.i.i224.i to i64          ; 2 uses
  %i.att = shl nuw nsw i64 %i.ats, 4
  %i.atu = add nuw nsw i64 %i.ats, 31
  %i.atv = lshr i64 %i.atu, 3
  %i.atw = and i64 %i.atv, 1073741820
  %i.atx = add nuw nsw i64 %i.atw, %i.att
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.atr, i64 noundef %i.atx, i64 noundef 8) #25
  br label %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i

_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i: ; preds = %bb.eb, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_4LoopENS_15AnalysisManagerIS7_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEJSA_EEESt14default_deleteISD_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SG_EEEES3_SG_SI_SK_E10destroyAllEv.exit.i.i.i, %_ZN4llvm8DenseMapIPNS_4LoopENSt7__cxx114listISt4pairIPNS_11AnalysisKeyESt10unique_ptrINS_6detail21AnalysisResultConceptIS1_NS_15AnalysisManagerIS1_JRNS_27LoopStandardAnalysisResultsEEE11InvalidatorEEESt14default_deleteISG_EEESaISK_EEENS_12DenseMapInfoIS2_vEENS9_12DenseMapPairIS2_SM_EEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #25
  %i.aty = load i8, ptr %i.ag, align 8, !tbaa !224, !range !21, !noundef !22
  %i.atz = trunc nuw i8 %i.aty to i1
  store i8 0, ptr %i.ag, align 8, !tbaa !224
  br i1 %i.atz, label %bb.ec, label %_ZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEE.exit

bb.ec:                                            ; preds = %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i
  call void @_ZN4llvm10PGOOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(143) dereferenceable(152) %14) #25
  br label %_ZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEE.exit

_ZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEE.exit: ; preds = %_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEED2Ev.exit.i, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  call void @llvm.lifetime.end.p0(ptr nonnull %22)
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  call void @llvm.lifetime.end.p0(ptr nonnull %28)
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %31)
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  call void @llvm.lifetime.end.p0(ptr nonnull %34)
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %57)
  call void @llvm.lifetime.end.p0(ptr nonnull %68)
  call void @llvm.lifetime.end.p0(ptr nonnull %74)
  %i.aua = load i32, ptr %i.mg, align 4, !tbaa !128 ; 2 uses
  %i.aub = icmp eq i32 %i.aua, 0
  br i1 %i.aub, label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit, label %bb.ed

bb.ed:                                            ; preds = %_ZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEE.exit
  %i.auc = load ptr, ptr %76, align 8, !tbaa !121
  %i.aud = zext i32 %i.aua to i64                 ; 2 uses
  %i.aue = shl nuw nsw i64 %i.aud, 4
  %i.auf = add nuw nsw i64 %i.aud, 31
  %i.aug = lshr i64 %i.auf, 3
  %i.auh = and i64 %i.aug, 1073741820
  %i.aui = add nuw nsw i64 %i.auh, %i.aue
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.auc, i64 noundef %i.aui, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit: ; preds = %_ZL14runNewPMPassesRKN4llvm3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKS8_RKNS_8DenseSetINS_9StringRefENS_12DenseMapInfoISD_vEEEE.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #25
  br label %bb.ee

bb.ee:                                            ; preds = %_ZN4llvm6detail12DenseSetImplINS_9StringRefENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEED2Ev.exit, %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit
  %i.auj = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !10
  %.not.i.i14.not = icmp eq ptr %i.auk, null
  br i1 %.not.i.i14.not, label %bb.ef, label %_ZNKSt8functionIFbjRKN4llvm6ModuleEEEclEjS3_.exit

_ZNKSt8functionIFbjRKN4llvm6ModuleEEEclEjS3_.exit: ; preds = %bb.ee
  %i.aul = getelementptr inbounds nuw i8, ptr %0, i64 1376
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %2, ptr %i.a, align 4, !tbaa !129
  %i.aum = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.aun = load ptr, ptr %i.aum, align 8, !tbaa !204
  %i.auo = call noundef zeroext i1 %i.aun(ptr noundef nonnull align 8 dereferenceable(32) %i.aul, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(1288) %3) #25, !inline_history !621
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt8functionIFbjRKN4llvm6ModuleEEEclEjS3_.exit, %bb.ee
  %i.aup = phi i1 [ true, %bb.ee ], [ %i.auo, %_ZNKSt8functionIFbjRKN4llvm6ModuleEEEclEjS3_.exit ]
  %.not.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i16, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.l) #25
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %bb.ef, %bb.eg
  ret i1 %i.aup
}

declare void @_ZN4llvm20embedBitcodeInModuleERNS_6ModuleENS_15MemoryBufferRefEbbRKSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef byval(%"class.llvm::MemoryBufferRef") align 8, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3lto27finalizeOptimizationRemarksENS_20LLVMRemarkFileHandleE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef align 8 dereferenceable(16) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !622
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_ZN4llvm20LLVMRemarkFileHandle9Finalizer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #25
  %i.c = load ptr, ptr %1, align 8, !tbaa !622    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 1, ptr %i.d, align 8, !tbaa !624
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !633  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !517
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !634
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #25
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.b, %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11raw_ostream5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !517
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !634
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4llvm11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3lto7backendERKNS0_6ConfigESt8functionIFNS_8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS7_EEEEjRKNS_5TwineEEEjRNS_6ModuleERNS_18ModuleSummaryIndexENS_8ArrayRefINS_9StringRefEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(1568) %1, ptr nofree noundef align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(1288) %4, ptr noundef nonnull align 8 dereferenceable(616) %5, ptr nofree noundef readonly byval(%"class.llvm::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %7 = alloca %"class.llvm::StdThreadPool", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %class.anon.1071, align 8           ; 9 uses
  %9 = alloca %"class.llvm::Expected", align 8    ; 6 uses
  %10 = alloca %"class.std::unique_ptr.239", align 8 ; 5 uses
  %11 = alloca %"class.std::vector.101", align 8  ; 6 uses
  %12 = alloca %"class.std::function.227", align 8 ; 7 uses
  %13 = alloca %"class.std::function.227", align 8 ; 7 uses
  %i.c = tail call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.30, i64 11, ptr null, i64 0) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  call fastcc void @_ZL19initAndLookupTargetRKN4llvm3lto6ConfigERNS_6ModuleE(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(1568) %1, ptr noundef nonnull align 8 dereferenceable(1288) %4)
end_hunk_1
begin_hunk_2_@_ZL7codegenRKN4llvm3lto6ConfigEPNS_13TargetMachineESt8functionIFNS_8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS9_EEEEjRKNS_5TwineEEEjRNS_6ModuleERKNS_18ModuleSummaryIndexE:bb.a
bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.sroa.068.0 = phi ptr [ null, %bb.ag ], [ %i.fr, %bb.ai ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #25
  %i.gl = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.gm = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 4, ptr %i.gm, align 8, !tbaa !439
  %i.gn = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 1, ptr %i.gn, align 1, !tbaa !436
  store ptr %i.gl, ptr %35, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !129, !noalias !704
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !10, !noalias !704
  %.not.i.i46 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i46, label %bb.ak, label %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit

bb.ak:                                            ; preds = %bb.aj
  call void @_ZSt25__throw_bad_function_callv() #28, !noalias !704
  unreachable

_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit: ; preds = %bb.aj
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !707, !noalias !704
  call void %i.gr(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.1016") align 8 %34, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(34) %35) #25, !inline_history !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #25
  %i.gs = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 8, !noalias !710
  %i.gu = trunc i8 %i.gt to i1
  br i1 %i.gu, label %_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEE9takeErrorEv.exit, label %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge

_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge: ; preds = %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit
  %.pre90 = load ptr, ptr %34, align 8, !tbaa !713
  %i.gv = getelementptr inbounds nuw i8, ptr %.pre90, i64 24
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 1696
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gw, ptr noundef nonnull align 8 dereferenceable(32) %i.gv) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #25
  call void @_ZN4llvm6legacy11PassManagerC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 1400 ; 2 uses
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !352
  call void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216) %38, ptr noundef nonnull align 8 dereferenceable(56) %i.gx, i32 noundef %i.gz) #25
  %i.ha = call noalias noundef nonnull dereferenceable(344) ptr @_Znwm(i64 noundef 344) #29 ; 2 uses
  call void @_ZN4llvm28TargetLibraryInfoWrapperPassC1ERKNS_21TargetLibraryInfoImplE(ptr noundef nonnull align 8 dereferenceable(344) %i.ha, ptr noundef nonnull align 8 dereferenceable(216) %38) #25
  call void @_ZN4llvm6legacy11PassManager3addEPNS_4PassE(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull %i.ha) #25
  %i.hb = call noalias noundef nonnull dereferenceable(24864) ptr @_Znwm(i64 noundef 24864) #29 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 1404
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !715
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 1380
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !716
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 1392
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !717
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 1448
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !32
  store ptr %i.hj, ptr %39, align 8, !tbaa !417
  %i.hk = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !139
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !718
  %i.hn = load i32, ptr %i.gy, align 8, !tbaa !352
  call void @_ZN4llvm25RuntimeLibraryInfoWrapperC1ERKNS_6TripleENS_17ExceptionHandlingENS_8FloatABI7ABITypeENS_4EABIENS_9StringRefENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(24864) %i.hb, ptr noundef nonnull align 8 dereferenceable(56) %i.gx, i32 noundef %i.hd, i32 noundef %i.hf, i32 noundef %i.hh, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %39, i32 noundef %i.hn) #25
  call void @_ZN4llvm6legacy11PassManager3addEPNS_4PassE(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull %i.hb) #25
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !215
  %i.hq = icmp eq ptr %i.ho, %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8
  %i.ht = icmp eq ptr %i.hr, %i.hs
  %or.cond.i = select i1 %i.hq, i1 %i.ht, i1 false
  %i.hu = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8
  %i.hw = icmp eq ptr %i.hu, %i.hv
  %or.cond8.i = select i1 %or.cond.i, i1 %i.hw, i1 false
  br i1 %or.cond8.i, label %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit, label %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit.thread

_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEE9takeErrorEv.exit: ; preds = %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit
  %i.hx = load i64, ptr %34, align 8, !tbaa !343, !noalias !710 ; 2 uses
  store ptr null, ptr %34, align 8, !tbaa !343, !noalias !710
  %.not79 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not79)
  %i.hy = inttoptr i64 %i.hx to ptr
  store ptr %i.hy, ptr %36, align 8, !tbaa !189
  call void @_ZN4llvm18report_fatal_errorENS_5ErrorEb(ptr nofree noundef nonnull align 8 dereferenceable(8) %36, i1 noundef zeroext true) #28
  unreachable

_ZL13isEmptyModuleRKN4llvm6ModuleE.exit:          ; preds = %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge
  %i.hz = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !194
  %i.ib = icmp eq i32 %i.ia, 0
  br i1 %i.ib, label %bb.al, label %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit.thread

_ZL13isEmptyModuleRKN4llvm6ModuleE.exit.thread:   ; preds = %_ZNKSt8functionIFN4llvm8ExpectedISt10unique_ptrINS0_16CachedFileStreamESt14default_deleteIS3_EEEEjRKNS0_5TwineEEEclEjSA_.exit._ZN4llvm5ErrorD2Ev.exit_crit_edge, %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit
  %i.ic = call noundef ptr @_ZN4llvm44createImmutableModuleSummaryIndexWrapperPassEPKNS_18ModuleSummaryIndexE(ptr noundef nonnull %5) #25
  call void @_ZN4llvm6legacy11PassManager3addEPNS_4PassE(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef %i.ic) #25
  br label %bb.al

bb.al:                                            ; preds = %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit.thread, %_ZL13isEmptyModuleRKN4llvm6ModuleE.exit
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !10
  %.not.i.i47.not = icmp eq ptr %i.ie, null
  br i1 %.not.i.i47.not, label %bb.am, label %_ZNKSt8functionIFvRN4llvm6legacy11PassManagerEEEclES3_.exit

_ZNKSt8functionIFvRN4llvm6legacy11PassManagerEEEclES3_.exit: ; preds = %bb.al
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !719
  call void %i.ih(ptr noundef nonnull align 8 dereferenceable(32) %i.if, ptr noundef nonnull align 8 dereferenceable(16) %37) #25, !inline_history !720
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt8functionIFvRN4llvm6legacy11PassManagerEEEclES3_.exit, %bb.al
  %i.ii = load ptr, ptr %34, align 8, !tbaa !713
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !721
  %.not80 = icmp eq ptr %.sroa.068.0, null        ; 3 uses
  br i1 %.not80, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 144
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !633
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.in = phi ptr [ %i.im, %bb.an ], [ null, %bb.am ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !723
  %i.iq = load ptr, ptr %1, align 8, !tbaa !8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 136
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call noundef zeroext i1 %i.is(ptr noundef nonnull align 8 dereferenceable(1728) %1, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(48) %i.ik, ptr noundef %i.in, i32 noundef %i.ip, i1 noundef zeroext true, ptr noundef null) #25
  br i1 %i.it, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm18report_fatal_errorEPKcb(ptr noundef nonnull @.str.66, i1 noundef zeroext true) #28
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.iu = call noundef zeroext i1 @_ZN4llvm6legacy11PassManager3runERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(16) %37, ptr noundef nonnull align 8 dereferenceable(1288) %4) #25 ; 0 uses
  br i1 %.not80, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 32
  store i8 1, ptr %i.iv, align 8, !tbaa !624
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.iw = getelementptr inbounds nuw i8, ptr %38, i64 192
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i.i49 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i.i49, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iy = getelementptr inbounds nuw i8, ptr %38, i64 208
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !408
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.ix to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.ix, i64 noundef %i.jc) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i:  ; preds = %bb.at, %bb.as
  %i.jd = getelementptr inbounds nuw i8, ptr %38, i64 168
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !405 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.je, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i
  %i.jf = getelementptr inbounds nuw i8, ptr %38, i64 184
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !408
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.je to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.je, i64 noundef %i.jj) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i: ; preds = %bb.au, %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit.i
  %i.jk = getelementptr inbounds nuw i8, ptr %38, i64 136 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %38, i64 156 ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !409 ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  br i1 %i.jn, label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !412
  %i.jp = getelementptr inbounds nuw i8, ptr %38, i64 144
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !413
  %i.jr = zext i32 %i.jm to i64
  %i.js = add nuw nsw i64 %i.jr, 31
  %i.jt = lshr i64 %i.js, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i50, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i50 ] ; 3 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv.i.i.i
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i.i = icmp eq i32 %i.jv, 0
  br i1 %.not11.i2.i.i.i, label %._crit_edge.i.i.i50, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph7.i.i.i
  %indvars.iv.tr.i.i.i = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.jw = shl nuw i32 %indvars.iv.tr.i.i.i, 5
  br label %bb.av

bb.av:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph.i.i.i
  %.0.i3.i.i.i = phi i32 [ %i.jv, %.lr.ph.i.i.i ], [ %i.ki, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i ] ; 3 uses
  %i.jx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i.i, i1 true)
  %i.jy = or disjoint i32 %i.jx, %i.jw
  %i.jz = zext i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [40 x i8], ptr %i.jo, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !32 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 24 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.av
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !37
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.kh = add i32 %.0.i3.i.i.i, -1
  %i.ki = and i32 %i.kh, %.0.i3.i.i.i             ; 2 uses
  %.not11.i.i.i.i = icmp eq i32 %i.ki, 0
  br i1 %.not11.i.i.i.i, label %._crit_edge.i.i.i50, label %bb.av, !llvm.loop !414

._crit_edge.i.i.i50:                              ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i.i, %.lr.ph7.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %.not.i.i.i3.i = icmp eq i64 %indvars.iv.next.i.i.i, %i.jt
  br i1 %.not.i.i.i3.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i, label %.lr.ph7.i.i.i, !llvm.loop !415

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i: ; preds = %._crit_edge.i.i.i50
  %.pr.i.i = load i32, ptr %i.jl, align 4, !tbaa !409 ; 2 uses
  %i.kj = icmp eq i32 %.pr.i.i, 0
  br i1 %i.kj, label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i
  %i.kk = load ptr, ptr %i.jk, align 8, !tbaa !412
  %i.kl = zext i32 %.pr.i.i to i64                ; 2 uses
  %i.km = mul nuw nsw i64 %i.kl, 40
  %i.kn = add nuw nsw i64 %i.kl, 31
  %i.ko = lshr i64 %i.kn, 3
  %i.kp = and i64 %i.ko, 1073741820
  %i.kq = add nuw nsw i64 %i.kp, %i.km
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.kk, i64 noundef %i.kq, i64 noundef 8) #25
  br label %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit

_ZN4llvm21TargetLibraryInfoImplD2Ev.exit:         ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #25
  call void @_ZN4llvm6legacy11PassManagerD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %37) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #25
  %i.kr = load ptr, ptr %34, align 8, !tbaa !713  ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %40, ptr noundef nonnull align 8 dereferenceable(56) %i.kr) #25
  %i.ku = load ptr, ptr %40, align 8, !tbaa !189  ; 2 uses
  %.not81 = icmp eq ptr %i.ku, null
  br i1 %.not81, label %_ZN4llvm5ErrorD2Ev.exit51, label %bb.ax

bb.ax:                                            ; preds = %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit
  store ptr %i.ku, ptr %41, align 8, !tbaa !189
  store ptr null, ptr %40, align 8, !tbaa !189
  call void @_ZN4llvm18report_fatal_errorENS_5ErrorEb(ptr nofree noundef nonnull align 8 dereferenceable(8) %41, i1 noundef zeroext true) #28
  unreachable

_ZN4llvm5ErrorD2Ev.exit51:                        ; preds = %_ZN4llvm21TargetLibraryInfoImplD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.kv = load ptr, ptr %34, align 8, !tbaa !151  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.kv, null
  br i1 %.not.i1.i, label %_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEED2Ev.exit, label %_ZNSt10unique_ptrIN4llvm16CachedFileStreamESt14default_deleteIS1_EED2Ev.exit.sink.split.i

_ZNSt10unique_ptrIN4llvm16CachedFileStreamESt14default_deleteIS1_EED2Ev.exit.sink.split.i: ; preds = %_ZN4llvm5ErrorD2Ev.exit51
  %i.kw = load i8, ptr %i.gs, align 8
  %i.kx = trunc i8 %i.kw to i1
  %..i = select i1 %i.kx, i64 8, i64 16
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %..i
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(8) %i.kv) #25, !inline_history !724
  br label %_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEED2Ev.exit

_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEED2Ev.exit: ; preds = %_ZN4llvm5ErrorD2Ev.exit51, %_ZNSt10unique_ptrIN4llvm16CachedFileStreamESt14default_deleteIS1_EED2Ev.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #25
  %i.lb = load ptr, ptr %8, align 8, !tbaa !680   ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.w
  br i1 %i.lc, label %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEED2Ev.exit
  call void @free(ptr noundef %i.lb) #25
  br label %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit

_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit:         ; preds = %_ZN4llvm8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS2_EEED2Ev.exit, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.not80, label %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit54, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 136 ; 2 uses
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !725, !range !21, !noundef !22
  %i.lf = trunc nuw i8 %i.le to i1
  store i8 0, ptr %i.ld, align 8, !tbaa !725
  br i1 %i.lf, label %bb.ba, label %_ZNKSt14default_deleteIN4llvm14ToolOutputFileEEclEPS1_.exit.i53

bb.ba:                                            ; preds = %bb.az
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.068.0, i64 40
  call void @_ZN4llvm14raw_fd_ostreamD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(104) %i.lg) #25
  br label %_ZNKSt14default_deleteIN4llvm14ToolOutputFileEEclEPS1_.exit.i53

_ZNKSt14default_deleteIN4llvm14ToolOutputFileEEclEPS1_.exit.i53: ; preds = %bb.ba, %bb.az
  call void @_ZN4llvm16CleanupInstallerD1Ev(ptr noundef nonnull align 8 dead_on_return(33) dereferenceable(152) %.sroa.068.0) #25
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.068.0, i64 noundef 152) #26
  br label %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit54

_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit54: ; preds = %_ZNKSt14default_deleteIN4llvm14ToolOutputFileEEclEPS1_.exit.i53, %_ZN4llvm11SmallVectorIcLj1024EED2Ev.exit, %_ZNKSt8functionIFbjRKN4llvm6ModuleEEEclEjS3_.exit
  %.not.i55 = icmp eq ptr %i.d, null
  br i1 %.not.i55, label %_ZN4llvm14TimeTraceScopeD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit54
  call void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef nonnull %i.d) #25
  br label %_ZN4llvm14TimeTraceScopeD2Ev.exit

_ZN4llvm14TimeTraceScopeD2Ev.exit:                ; preds = %_ZNSt10unique_ptrIN4llvm14ToolOutputFileESt14default_deleteIS1_EED2Ev.exit54, %bb.bb
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3lto11thinBackendERKNS0_6ConfigEjSt8functionIFNS_8ExpectedISt10unique_ptrINS_16CachedFileStreamESt14default_deleteIS7_EEEEjRKNS_5TwineEEERNS_6ModuleERKNS_18ModuleSummaryIndexERKNS_16FunctionImporter11ImportMapTyERKNS_8DenseMapImPNS_18GlobalValueSummaryENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImSS_EEEEPNS_9MapVectorINS_9StringRefENS_13BitcodeModuleENSQ_IS12_jNST_IS12_vEENSW_IS12_jEEEENS_11SmallVectorISt4pairIS12_S13_ELj0EEELj0EEEbNS_8ArrayRefIS12_EESG_RKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1568) %1, i32 noundef %2, ptr nofree noundef align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(1288) %4, ptr noundef nonnull align 8 dereferenceable(616) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %8, i1 noundef zeroext %9, ptr noundef byval(%"class.llvm::ArrayRef") align 8 %10, ptr nofree noundef align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.llvm::iterator_range.1236", align 8 ; 13 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 2 uses
  %14 = alloca %"class.llvm::Expected", align 8   ; 8 uses
  %15 = alloca %"class.std::unique_ptr.239", align 8 ; 7 uses
  %16 = alloca %"class.llvm::Expected.284", align 8 ; 12 uses
  %17 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %18 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 16 uses
  %19 = alloca %"class.std::function.227", align 8 ; 7 uses
  %20 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %21 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %22 = alloca %class.anon.287, align 8           ; 11 uses
  %23 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %24 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %25 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %26 = alloca %"class.llvm::FunctionImporter", align 8 ; 10 uses
  %27 = alloca %"class.llvm::Expected.338", align 8 ; 6 uses
  %28 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  %29 = alloca %"class.llvm::LLVMRemarkFileHandle", align 8 ; 4 uses
  store i32 %2, ptr %i.e, align 4, !tbaa !129
  store ptr %8, ptr %i.f, align 8, !tbaa !726
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.j = load i64, ptr %i.i, align 8, !tbaa !139
  %i.k = tail call noundef ptr @_ZN4llvm22timeTraceProfilerBeginENS_9StringRefES0_(ptr nonnull @.str.31, i64 12, ptr %i.h, i64 %i.j) #25 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call fastcc void @_ZL19initAndLookupTargetRKN4llvm3lto6ConfigERNS_6ModuleE(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull align 8 dereferenceable(1568) %1, ptr noundef nonnull align 8 dereferenceable(1288) %4)
  %i.l = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8               ; 2 uses
  %i.n = trunc i8 %i.m to i1
  br i1 %i.n, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i, label %bb.b

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  %i.o = load i64, ptr %14, align 8, !tbaa !343, !noalias !728
  %i.p = inttoptr i64 %i.o to ptr
  store ptr null, ptr %14, align 8, !tbaa !343, !noalias !728
  store ptr %i.p, ptr %0, align 8, !tbaa !189, !alias.scope !728
  br label %bb.bl

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.q = load ptr, ptr %14, align 8, !tbaa !635
  call fastcc void @_ZL19createTargetMachineRKN4llvm3lto6ConfigEPKNS_6TargetERNS_6ModuleE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef nonnull align 8 dereferenceable(1568) %1, ptr noundef %i.q, ptr noundef nonnull align 8 dereferenceable(1288) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  %i.r = load ptr, ptr %4, align 8, !tbaa !232, !nonnull !22, !align !331
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 976
  %i.v = load i64, ptr %i.u, align 8, !tbaa !139
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1008
  %i.z = load i64, ptr %i.y, align 8, !tbaa !139
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1056
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  store ptr %i.ab, ptr %17, align 8, !tbaa !417
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !139
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !718
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1032
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !731, !range !21, !noundef !22
  %i.ah = trunc nuw i8 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1040
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !129
  call void @_ZN4llvm3lto28setupLLVMOptimizationRemarksERNS_11LLVMContextENS_9StringRefES3_S3_bSt8optionalImEi(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.284") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr %i.t, i64 %i.v, ptr %i.x, i64 %i.z, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %17, i1 noundef zeroext %i.ah, ptr noundef nonnull byval(%"class.std::optional.65") align 8 %i.ai, i32 noundef %i.aj) #25
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_S4_S6_S8_Lb0EEEbEOT_DpOT0_:bb.a
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aj
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i, ptr %i.al, align 8, !tbaa !1015
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !121, !noalias !1018 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127, !noalias !1018 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128, !noalias !1018 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !133
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !131
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #25
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !129
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !130

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !133
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !131
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !131
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !135, !llvm.loop !1023

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !131
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !132

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !133
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !134

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !129
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !135, !llvm.loop !1023

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !1010
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !128
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !121
  store ptr %i.y, ptr %i.q, align 8, !tbaa !127
  store i32 0, ptr %i.p, align 16, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !151
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1010
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !151
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !151
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !151
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !129 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !129
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !129
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !129
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !129
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !121
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !128  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !121
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !128
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !133
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !131
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1024

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !1011
  %i.ag = shl nuw i32 1, %i.aa
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !129
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !129
  %i.aj = add i32 %.0.i19, -1
  %i.ak = and i32 %i.aj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1025

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !1026

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !128
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.al = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !118
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !118
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !121
  %i.ar = zext i32 %i.al to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #16

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm10PGOOptionsC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_S6_S6_NS0_9PGOActionENS0_11CSPGOActionENS0_11ColdFuncOptEbbb(ptr noundef nonnull align 8 dereferenceable(143), ptr nofree noundef align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(32), ptr nofree noundef align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm10PGOOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(143) dereferenceable(143)) unnamed_addr #14

declare void @_ZN4llvm15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm15AnalysisManagerINS_8FunctionEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm15AnalysisManagerINS_13LazyCallGraph3SCCEJRS1_EEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm15AnalysisManagerINS_6ModuleEJEEC1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

declare void @_ZN4llvm24StandardInstrumentationsC1ERNS_11LLVMContextEbbNS_16PrintPassOptionsE(ptr noundef nonnull align 8 dereferenceable(929), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext, i24) unnamed_addr #4

declare void @_ZN4llvm24StandardInstrumentations17registerCallbacksERNS_28PassInstrumentationCallbacksEPNS_15AnalysisManagerINS_6ModuleEJEEE(ptr noundef nonnull align 8 dereferenceable(929), ptr noundef nonnull align 8 dereferenceable(1784), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm3vfs17getRealFileSystemEv(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilderC1EPNS_13TargetMachineENS_21PipelineTuningOptionsESt8optionalINS_10PGOOptionsEEPNS_28PassInstrumentationCallbacksENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef, ptr noundef byval(%"class.llvm::PipelineTuningOptions") align 8, ptr nofree noundef align 8 dereferenceable(152), ptr noundef, ptr nofree noundef align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm21TargetLibraryInfoImplC1ERKNS_6TripleENS_13VectorLibraryE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #4

declare void @_ZN4llvm21TargetLibraryInfoImpl19disableAllFunctionsEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder15parseAAPipelineERNS_9AAManagerENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(48), ptr, i64) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN4llvm18report_fatal_errorERKNS_5TwineEb(ptr noundef nonnull align 8 dereferenceable(34), i1 noundef zeroext) local_unnamed_addr #9

declare void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr nofree noundef align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder22registerModuleAnalysesERNS_15AnalysisManagerINS_6ModuleEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder21registerCGSCCAnalysesERNS_15AnalysisManagerINS_13LazyCallGraph3SCCEJRS2_EEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder24registerFunctionAnalysesERNS_15AnalysisManagerINS_8FunctionEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder20registerLoopAnalysesERNS_15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder20crossRegisterProxiesERNS_15AnalysisManagerINS_4LoopEJRNS_27LoopStandardAnalysisResultsEEEERNS1_INS_8FunctionEJEEERNS1_INS_13LazyCallGraph3SCCEJRSA_EEERNS1_INS_6ModuleEJEEEPNS1_INS_15MachineFunctionEJEEE(ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder17parsePassPipelineERNS_11PassManagerINS_6ModuleENS_15AnalysisManagerIS2_JEEEJEEENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(2288), ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder27buildThinLTODefaultPipelineENS_17OptimizationLevelEPKNS_18ModuleSummaryIndexE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm11PassBuilder23buildLTODefaultPipelineENS_17OptimizationLevelEPNS_18ModuleSummaryIndexE(ptr dead_on_unwind writable sret(%"class.llvm::PassManager") align 8, ptr noundef nonnull align 8 dereferenceable(2288), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() local_unnamed_addr #4

declare void @_ZN4llvm11PassManagerINS_6ModuleENS_15AnalysisManagerIS1_JEEEJEE3runERS1_RS3_(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm11PassBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(2288) dereferenceable(2288) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = shl nuw nsw i64 %i.e, 5
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.f, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3) #25, !inline_history !1027 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.b, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1028

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i, %bb.a
  %i.k = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i
  tail call void @free(ptr noundef %i.k) #25
  br label %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELb0EE13destroy_rangeEPSD_SF_.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2128 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2136
  %i.q = load i32, ptr %i.p, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i1 = icmp eq i32 %i.q, 0
  br i1 %.not4.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFbNS_9StringRefERNS_11PassManagerINS_15MachineFunctionENS_15AnalysisManagerIS4_JEEEJEEENS_8ArrayRefINS_11PassBuilder15PipelineElementEEEEELb0EE13destroy_rangeEPSE_SG_.exit.i, label %.lr.ph.i.preheader.i2

.lr.ph.i.preheader.i2:                            ; preds = %_ZN4llvm11SmallVectorISt8functionIFS1_IFbRKNS_18TargetRegisterInfoERKNS_19MachineRegisterInfoENS_8RegisterEEENS_9StringRefEEELj2EED2Ev.exit
  %i.r = zext i32 %i.q to i64
  %.idx.i3 = shl nuw nsw i64 %i.r, 5
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i7, %.lr.ph.i.preheader.i2
  %.05.i.i5 = phi ptr [ %i.t, %_ZNSt14_Function_baseD2Ev.exit.i.i7 ], [ %i.s, %.lr.ph.i.preheader.i2 ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.05.i.i5, i64 -32 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %.05.i.i5, i64 -16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i6, label %_ZNSt14_Function_baseD2Ev.exit.i.i7, label %bb.d

end_hunk_3
begin_hunk_4_@_ZN4llvm11PassBuilderD2Ev:bb.a
  br i1 %.not4.i.i238, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.i248, label %.lr.ph.i.preheader.i239

.lr.ph.i.preheader.i239:                          ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_4LoopENS_15AnalysisManagerIS3_JRNS_27LoopStandardAnalysisResultsEEEEJS6_RNS_10LPMUpdaterEEEENS_17OptimizationLevelEEELj2EED2Ev.exit237
  %i.lr = zext i32 %i.lq to i64
  %.idx.i240 = shl nuw nsw i64 %i.lr, 5
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 %.idx.i240
  br label %.lr.ph.i.i241

.lr.ph.i.i241:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i244, %.lr.ph.i.preheader.i239
  %.05.i.i242 = phi ptr [ %i.lt, %_ZNSt14_Function_baseD2Ev.exit.i.i244 ], [ %i.ls, %.lr.ph.i.preheader.i239 ] ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %.05.i.i242, i64 -32 ; 4 uses
  %i.lu = getelementptr inbounds i8, ptr %.05.i.i242, i64 -16
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i243 = icmp eq ptr %i.lv, null
  br i1 %.not.i.i.i243, label %_ZNSt14_Function_baseD2Ev.exit.i.i244, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i.i241
  %i.lw = tail call noundef zeroext i1 %i.lv(ptr noundef nonnull align 8 dereferenceable(32) %i.lt, ptr noundef nonnull align 8 dereferenceable(32) %i.lt, i32 noundef 3) #25, !inline_history !1057 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i244

_ZNSt14_Function_baseD2Ev.exit.i.i244:            ; preds = %bb.az, %.lr.ph.i.i241
  %.not.i.i245 = icmp eq ptr %i.lo, %i.lt
  br i1 %.not.i.i245, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i246, label %.lr.ph.i.i241, !llvm.loop !1058

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i246: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i244
  %.pre.i247 = load ptr, ptr %i.ln, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.i248

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.i248: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i246, %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_4LoopENS_15AnalysisManagerIS3_JRNS_27LoopStandardAnalysisResultsEEEEJS6_RNS_10LPMUpdaterEEEENS_17OptimizationLevelEEELj2EED2Ev.exit237
  %i.lx = phi ptr [ %.pre.i247, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.loopexit.i246 ], [ %i.lo, %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_4LoopENS_15AnalysisManagerIS3_JRNS_27LoopStandardAnalysisResultsEEEEJS6_RNS_10LPMUpdaterEEEENS_17OptimizationLevelEEELj2EED2Ev.exit237 ] ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.lz = icmp eq ptr %i.lx, %i.ly
  br i1 %i.lz, label %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELj2EED2Ev.exit249, label %bb.ba

bb.ba:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.i248
  tail call void @free(ptr noundef %i.lx) #25
  br label %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELj2EED2Ev.exit249

_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELj2EED2Ev.exit249: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELb0EE13destroy_rangeEPSA_SC_.exit.i248, %bb.ba
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !335 ; 4 uses
  %.not.i.i250 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i250, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELj2EED2Ev.exit249
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = atomicrmw sub ptr %i.mc, i32 1 acq_rel, align 4
  %i.me = icmp eq i32 %i.md, 1
  br i1 %i.me, label %bb.bc, label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

bb.bc:                                            ; preds = %bb.bb
  %i.mf = load ptr, ptr %i.mb, align 8, !tbaa !8
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8
  tail call void %i.mh(ptr noundef nonnull align 8 dereferenceable(12) %i.mb) #25, !inline_history !1063
  br label %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRNS_11PassManagerINS_8FunctionENS_15AnalysisManagerIS3_JEEEJEEENS_17OptimizationLevelEEELj2EED2Ev.exit249, %bb.bb, %bb.bc
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.mj = load i8, ptr %i.mi, align 8, !tbaa !224, !range !21, !noundef !22
  %i.mk = trunc nuw i8 %i.mj to i1
  store i8 0, ptr %i.mi, align 8, !tbaa !224
  br i1 %i.mk, label %bb.bd, label %_ZNSt14_Optional_baseIN4llvm10PGOOptionsELb0ELb0EED2Ev.exit

bb.bd:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN4llvm10PGOOptionsD1Ev(ptr noundef nonnull align 8 dead_on_return(143) dereferenceable(152) %i.ml) #25
  br label %_ZNSt14_Optional_baseIN4llvm10PGOOptionsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm10PGOOptionsELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit, %bb.bd
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm24StandardInstrumentationsD2Ev(ptr noundef nonnull align 8 dead_on_return(929) dereferenceable(929) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 744
  tail call void @_ZN4llvm20DroppedVariableStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN4llvm15IRChangedTesterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  tail call void @_ZN4llvm27PrintCrashIRInstrumentationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  tail call void @_ZN4llvm20DotCfgChangeReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.d) #25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 552
  tail call void @_ZN4llvm19InLineChangePrinterD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %i.e) #25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1064
  %i.i = icmp eq i32 %i.h, 0
  %.pre13.i.i = load ptr, ptr %i.f, align 8, !tbaa !1065 ; 4 uses
  br i1 %i.i, label %_ZN4llvm19PseudoProbeVerifierD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1066 ; 2 uses
  %i.l = zext i32 %i.k to i64
  %.idx.i.i = shl nuw nsw i64 %i.l, 3
  %i.m = getelementptr inbounds nuw i8, ptr %.pre13.i.i, i64 %.idx.i.i
  %.not11.i.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i.i, label %_ZN4llvm19PseudoProbeVerifierD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.e
  %.012.i.i = phi ptr [ %i.ab, %bb.e ], [ %.pre13.i.i, %bb.b ] ; 2 uses
  %i.n = load ptr, ptr %.012.i.i, align 8, !tbaa !1067 ; 5 uses
  %.not10.i.i = icmp eq ptr %i.n, null
  br i1 %.not10.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !1069
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !1071 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm14StringMapEntryINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1074
  %i.u = zext i32 %i.q to i64                     ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 24
  %i.w = add nuw nsw i64 %i.u, 31
  %i.x = lshr i64 %i.w, 3
  %i.y = and i64 %i.x, 1073741820
  %i.z = add nuw nsw i64 %i.y, %i.v
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.t, i64 noundef %i.z, i64 noundef 8) #25
  br label %_ZN4llvm14StringMapEntryINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i.i

_ZN4llvm14StringMapEntryINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.aa = add i64 %i.o, 33
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.aa, i64 noundef 8) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryINS_8DenseMapISt4pairImmEfNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_fEEEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit.i.i, %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, %i.m
  br i1 %.not.i.i, label %.loopexit.loopexit.i.i, label %.lr.ph.i.i

.loopexit.loopexit.i.i:                           ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !1065
  br label %_ZN4llvm19PseudoProbeVerifierD2Ev.exit

_ZN4llvm19PseudoProbeVerifierD2Ev.exit:           ; preds = %bb.a, %bb.b, %.loopexit.loopexit.i.i
  %i.ac = phi ptr [ %.pre.i.i, %.loopexit.loopexit.i.i ], [ %.pre13.i.i, %bb.b ], [ %.pre13.i.i, %bb.a ]
  tail call void @free(ptr noundef %i.ac) #25
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @_ZN4llvm16IRChangedPrinterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.ad) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZN4llvm11SmallVectorIPNS_5TimerELj8EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm19PseudoProbeVerifierD2Ev.exit
  tail call void @free(ptr noundef %i.af) #25
  br label %_ZN4llvm11SmallVectorIPNS_5TimerELj8EED2Ev.exit.i

_ZN4llvm11SmallVectorIPNS_5TimerELj8EED2Ev.exit.i: ; preds = %bb.f, %_ZN4llvm19PseudoProbeVerifierD2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZN4llvm17TimePassesHandlerD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_5TimerELj8EED2Ev.exit.i
  tail call void @free(ptr noundef %i.aj) #25
  br label %_ZN4llvm17TimePassesHandlerD2Ev.exit

_ZN4llvm17TimePassesHandlerD2Ev.exit:             ; preds = %_ZN4llvm11SmallVectorIPNS_5TimerELj8EED2Ev.exit.i, %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @_ZN4llvm9StringMapINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %i.am) #25
  tail call void @_ZN4llvm22PrintIRInstrumentationD1Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220) %0) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm28PassInstrumentationCallbacksD2Ev(ptr noundef nonnull align 8 dead_on_return(1784) dereferenceable(1784) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1760 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1075 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1078
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1079
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !129  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.m = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.l, %.lr.ph.i.i ], [ %i.y, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.t, align 8, !tbaa !37
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.x = add i32 %.0.i3.i.i, -1
  %i.y = and i32 %i.x, %.0.i3.i.i                 ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1080

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.j
  br i1 %.not.i.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1081

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !1075 ; 2 uses
  %i.z = icmp eq i32 %.pr.i, 0
  br i1 %i.z, label %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !1078
  %i.ab = zext i32 %.pr.i to i64                  ; 2 uses
  %i.ac = mul nuw nsw i64 %i.ab, 48
  %i.ad = add nuw nsw i64 %i.ab, 31
  %i.ae = lshr i64 %i.ad, 3
  %i.af = and i64 %i.ae, 1073741820
  %i.ag = add nuw nsw i64 %i.af, %i.ac
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.ag, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S8_EEEES2_S8_SA_SD_E10destroyAllEv.exit.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit
  %i.al = zext i32 %i.ak to i64
  %.idx.i = mul nuw nsw i64 %i.al, 40
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx.i
  br label %.lr.ph.i.i1

.lr.ph.i.i1:                                      ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.an, %_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i ], [ %i.am, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.05.i.i, i64 -40 ; 3 uses
  %i.ao = getelementptr inbounds i8, ptr %.05.i.i, i64 -8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1082 ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i2, label %_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i1
  tail call void %i.ap(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.an) #25, !inline_history !1084
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i1
  %.not.i.i = icmp eq ptr %i.ai, %i.an
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, label %.lr.ph.i.i1, !llvm.loop !1085

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJEED2Ev.exit.i.i
  %.pre.i = load ptr, ptr %i.ah, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i, %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit
  %i.aq = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.loopexit.i ], [ %i.ai, %_ZN4llvm8DenseMapINS_9StringRefENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIS1_vEENS_6detail12DenseMapPairIS1_S7_EEED2Ev.exit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.i
  tail call void @free(ptr noundef %i.aq) #25
  br label %_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvvEEELb0EE13destroy_rangeEPS3_S5_.exit.i, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i3 = icmp eq i32 %i.aw, 0
  br i1 %.not4.i.i3, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.i, label %.lr.ph.i.preheader.i4

.lr.ph.i.preheader.i4:                            ; preds = %_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit
  %i.ax = zext i32 %i.aw to i64
  %.idx.i5 = mul nuw nsw i64 %i.ax, 40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i5
  br label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i4
  %.05.i.i7 = phi ptr [ %i.az, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i ], [ %i.ay, %.lr.ph.i.preheader.i4 ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.05.i.i7, i64 -40 ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %.05.i.i7, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1086 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i8, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i6
  tail call void %i.bb(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.az) #25, !inline_history !1088
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i: ; preds = %bb.f, %.lr.ph.i.i6
  %.not.i.i9 = icmp eq ptr %i.au, %i.az
  br i1 %.not.i.i9, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, label %.lr.ph.i.i6, !llvm.loop !1089

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefEEED2Ev.exit.i.i
  %.pre.i10 = load ptr, ptr %i.at, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i, %_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit
  %i.bc = phi ptr [ %.pre.i10, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.loopexit.i ], [ %i.au, %_ZN4llvm11SmallVectorINS_15unique_functionIFvvEEELj4EED2Ev.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.be = icmp eq ptr %i.bc, %i.bd
  br i1 %i.be, label %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.i
  tail call void @free(ptr noundef %i.bc) #25
  br label %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefEEEELb0EE13destroy_rangeEPS4_S6_.exit.i, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i11 = icmp eq i32 %i.bi, 0
  br i1 %.not4.i.i11, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i, label %.lr.ph.i.preheader.i12

.lr.ph.i.preheader.i12:                           ; preds = %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit
  %i.bj = zext i32 %i.bi to i64
  %.idx.i13 = mul nuw nsw i64 %i.bj, 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i13
  br label %.lr.ph.i.i14

.lr.ph.i.i14:                                     ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i, %.lr.ph.i.preheader.i12
  %.05.i.i15 = phi ptr [ %i.bl, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i ], [ %i.bk, %.lr.ph.i.preheader.i12 ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %.05.i.i15, i64 -40 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %.05.i.i15, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1090 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i16, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i14
  tail call void %i.bn(ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %i.bl) #25, !inline_history !1092
  br label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i

_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i: ; preds = %bb.h, %.lr.ph.i.i14
  %.not.i.i17 = icmp eq ptr %i.bg, %i.bl
  br i1 %.not.i.i17, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, label %.lr.ph.i.i14, !llvm.loop !1093

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i: ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i
  %.pre.i18 = load ptr, ptr %i.bf, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i, %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit
  %i.bo = phi ptr [ %.pre.i18, %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i ], [ %i.bg, %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefEEEELj4EED2Ev.exit ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELj4EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i
  tail call void @free(ptr noundef %i.bo) #25
  br label %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i, %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !14 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !194 ; 2 uses
  %.not4.i.i19 = icmp eq i32 %i.bu, 0
  br i1 %.not4.i.i19, label %_ZN4llvm23SmallVectorTemplateBaseINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELb0EE13destroy_rangeEPS5_S7_.exit.i29, label %.lr.ph.i.preheader.i20

.lr.ph.i.preheader.i20:                           ; preds = %_ZN4llvm11SmallVectorINS_15unique_functionIFvNS_9StringRefENS_3AnyEEEELj4EED2Ev.exit
  %i.bv = zext i32 %i.bu to i64
  %.idx.i21 = mul nuw nsw i64 %i.bv, 40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i21
  br label %.lr.ph.i.i22

.lr.ph.i.i22:                                     ; preds = %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i25, %.lr.ph.i.preheader.i20
  %.05.i.i23 = phi ptr [ %i.bx, %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i25 ], [ %i.bw, %.lr.ph.i.preheader.i20 ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.05.i.i23, i64 -40 ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %.05.i.i23, i64 -8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1090 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i24, label %_ZN4llvm6detail18UniqueFunctionBaseIvJNS_9StringRefENS_3AnyEEED2Ev.exit.i.i25, label %bb.j
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPSI_bEOT_DpOT0_:bb.a
.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !396
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !129
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !135, !llvm.loop !1111

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1112
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1113
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit, label %bb.d, !prof !429

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1112
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !592
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !591
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !129
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !129
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1113
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !396
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !396
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !1114
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E22findBucketForInsertionIS3_EEPSI_RKT_SM_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E15LookupBucketForIS3_EEbRKT_RPSI_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !591, !noalias !1116 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !592, !noalias !1116 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !588, !noalias !1116 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !396    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !129
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !130

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !396
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !429

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !135, !llvm.loop !1111

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1112
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.417", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !588
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !591
  store ptr %i.y, ptr %i.q, align 8, !tbaa !592
  store i32 0, ptr %i.p, align 16, !tbaa !1113
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1112   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !654 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !151
  store ptr %i.z, ptr %2, align 16, !tbaa !1112
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !151
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !654
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !129
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !129
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !129
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !129
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !129 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !398 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i: ; preds = %bb.b
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.au) #25, !inline_history !1121
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm6detail19AnalysisPassConceptINS0_8FunctionENS0_15AnalysisManagerIS3_JEE11InvalidatorEJEEEEclEPS7_.exit.i.i.i.i, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !594

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !595

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !588 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !591
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E10destroyAllEv.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !591    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !592
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !588  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !592  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !591
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !588
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !129  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !396  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !129 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !129 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, !llvm.loop !1122

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !396
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !398
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !398
  store ptr null, ptr %i.av, align 8, !tbaa !398
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !129
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1123

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS7_JEE11InvalidatorEJEEESt14default_deleteISB_EENS_12DenseMapInfoIS3_vEENS5_12DenseMapPairIS3_SE_EEEES3_SE_SG_SI_E8moveFromERSJ_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1124

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !588
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1113
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1113
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #25
  store i32 0, ptr %i.d, align 4, !tbaa !588
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerIS6_JEE11InvalidatorEJEEESt14default_deleteISA_EENS_12DenseMapInfoIS2_vEENS4_12DenseMapPairIS2_SD_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_11AnalysisKeyESt10unique_ptrINS_6detail19AnalysisPassConceptINS_8FunctionENS_15AnalysisManagerISA_JEE11InvalidatorEJEEESt14default_deleteISE_EENS_12DenseMapInfoIS6_vEENS8_12DenseMapPairIS6_SH_EEEES6_SH_SJ_SL_E8moveFromERSM_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm21TargetLibraryInfoImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !405  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !408
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !405  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !408
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2

_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2:   ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !409  ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !412
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !413
  %i.v = zext i32 %i.q to i64
  %i.w = add nuw nsw i64 %i.v, 31
  %i.x = lshr i64 %i.w, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !129  ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.aa = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.d

bb.d:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.z, %.lr.ph.i.i ], [ %i.am, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ab = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.ac = or disjoint i32 %i.ab, %i.aa
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.s, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !37
  %i.ak = add i64 %i.aj, 1
  tail call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #26
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.al = add i32 %.0.i3.i.i, -1
  %i.am = and i32 %i.al, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.d, !llvm.loop !414

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.x
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !415

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.p, align 4, !tbaa !409 ; 2 uses
  %i.an = icmp eq i32 %.pr.i, 0
  br i1 %i.an, label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !412
  %i.ap = zext i32 %.pr.i to i64                  ; 2 uses
  %i.aq = mul nuw nsw i64 %i.ap, 40
  %i.ar = add nuw nsw i64 %i.ap, 31
  %i.as = lshr i64 %i.ar, 3
  %i.at = and i64 %i.as, 1073741820
  %i.au = add nuw nsw i64 %i.at, %i.aq
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ao, i64 noundef %i.au, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit

_ZN4llvm8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm7VecDescESaIS1_EED2Ev.exit2, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E10destroyAllEv.exit.i, %bb.e
  ret void
}

declare void @_ZN4llvm21TargetLibraryInfoImplC1EOS0_(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !403, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !403
  br i1 %i.c, label %bb.b, label %_ZN4llvm21TargetLibraryAnalysisD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(224) %i.d) #25
  br label %_ZN4llvm21TargetLibraryAnalysisD2Ev.exit

_ZN4llvm21TargetLibraryAnalysisD2Ev.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !403, !range !21, !noundef !22
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !403
  br i1 %i.c, label %bb.b, label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN4llvm21TargetLibraryInfoImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(224) %i.d) #25, !inline_history !1125
  br label %_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit

_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE3runERS2_RS5_(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.720") align 8 %0, ptr noundef nonnull align 8 dereferenceable(232) %1, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) unnamed_addr #3 comdat align 2 {
_ZNSt10unique_ptrIN4llvm6detail19AnalysisResultModelINS0_8FunctionENS0_21TargetLibraryAnalysisENS0_17TargetLibraryInfoENS0_15AnalysisManagerIS3_JEE11InvalidatorELb1EEESt14default_deleteIS9_EED2Ev.exit:
  %4 = alloca %"class.llvm::TargetLibraryInfo", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::TargetLibraryInfo") align 8 %4, ptr noundef nonnull align 8 dereferenceable(224) %i.a, ptr noundef nonnull align 8 dereferenceable(140) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) #25
  %i.b = call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #29, !noalias !1126 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %4, i64 80, i1 false), !noalias !1126
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EEE, i64 16), ptr %i.b, align 8, !tbaa !8, !noalias !1126
  store ptr %i.b, ptr %0, align 8, !tbaa !1129
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail17AnalysisPassModelINS_8FunctionENS_21TargetLibraryAnalysisENS_15AnalysisManagerIS2_JEE11InvalidatorEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.54, i64 55), i64 21 }
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

declare void @_ZN4llvm21TargetLibraryAnalysis3runERKNS_8FunctionERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::TargetLibraryInfo") align 8, ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(140), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail21AnalysisResultConceptINS_8FunctionENS_15AnalysisManagerIS2_JEE11InvalidatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm6detail19AnalysisResultModelINS_8FunctionENS_21TargetLibraryAnalysisENS_17TargetLibraryInfoENS_15AnalysisManagerIS2_JEE11InvalidatorELb1EE10invalidateERS2_RKNS_17PreservedAnalysesERS7_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPFvRNS_8FunctionERNS_15AnalysisManagerIS1_JEEERNS_9AAResultsEEEaSEOSA_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !14     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIPFvRNS_8FunctionERNS_15AnalysisManagerIS1_JEEERNS_9AAResultsEEE12assignRemoteEOSA_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #25
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %_ZN4llvm15SmallVectorImplIPFvRNS_8FunctionERNS_15AnalysisManagerIS1_JEEERNS_9AAResultsEEE12assignRemoteEOSA_.exit

_ZN4llvm15SmallVectorImplIPFvRNS_8FunctionERNS_15AnalysisManagerIS1_JEEERNS_9AAResultsEEE12assignRemoteEOSA_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !129
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !129
  store ptr %i.c, ptr %1, align 8, !tbaa !14
  store i32 0, ptr %i.k, align 4, !tbaa !195
  store i32 0, ptr %i.j, align 8, !tbaa !194
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !194  ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !194  ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPPFvRN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEERNS0_9AAResultsEESA_ET0_T_SC_SB_.exit
    i32 1, label %bb.h
  ], !prof !1131

bb.g:                                             ; preds = %bb.f
  %.idx = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.s, ptr align 8 %i.b, i64 %.idx, i1 false)
  br label %_ZSt4moveIPPFvRN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEERNS0_9AAResultsEESA_ET0_T_SC_SB_.exit

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !151
  store ptr %i.t, ptr %i.s, align 8, !tbaa !151
  br label %_ZSt4moveIPPFvRN4llvm8FunctionERNS0_15AnalysisManagerIS1_JEEERNS0_9AAResultsEESA_ET0_T_SC_SB_.exit
end_hunk_5
begin_hunk_6_@_ZN4llvm6detail9PassModelINS_6ModuleENS_12VerifierPassENS_15AnalysisManagerIS2_JEEEJEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefESA_EEE:bb.a
_ZN4llvm13PassInfoMixinINS_12VerifierPassEE13printPipelineERNS_11raw_ostreamENS_12function_refIFNS_9StringRefES6_EEE.exit: ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK4llvm6detail9PassModelINS_6ModuleENS_12VerifierPassENS_15AnalysisManagerIS2_JEEEJEE4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr getelementptr inbounds nuw (i8, ptr @.str.59, i64 55), i64 12 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm6detail9PassModelINS_6ModuleENS_12VerifierPassENS_15AnalysisManagerIS2_JEEEJEE10isRequiredEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret i1 true
}

declare void @_ZN4llvm12VerifierPass3runERNS_6ModuleERNS_15AnalysisManagerIS1_JEEE(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal { ptr, i64 } @"_ZN4llvm12function_refIFNS_9StringRefES1_EE11callback_fnIZL14runNewPMPassesRKNS_3lto6ConfigERNS_6ModuleEPNS_13TargetMachineEjbPNS_18ModuleSummaryIndexEPKSD_RKNS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEEE3$_2EES1_lS1_"(i64 noundef %0, ptr %1, i64 %2) #3 align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %.val = load ptr, ptr %i.a, align 8, !tbaa !1138
  %i.b = tail call { ptr, i64 } @_ZN4llvm28PassInstrumentationCallbacks23getPassNameForClassNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1784) %.val, ptr %1, i64 %2) #25 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %.sroa.01.0.copyload.sroa.speculated.i = select i1 %i.e, ptr %1, ptr %i.c
  %.sroa.22.0.copyload.sroa.speculated.i = select i1 %i.e, i64 %2, i64 %i.d
  %.fca.0.insert.i = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.copyload.sroa.speculated.i, 0
  %.fca.1.insert.i = insertvalue { ptr, i64 } %.fca.0.insert.i, i64 %.sroa.22.0.copyload.sroa.speculated.i, 1
  ret { ptr, i64 } %.fca.1.insert.i
}

declare { ptr, i64 } @_ZN4llvm28PassInstrumentationCallbacks23getPassNameForClassNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1784), ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm15IRChangedTesterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4llvm27PrintCrashIRInstrumentationD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4llvm20DotCfgChangeReporterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4llvm19InLineChangePrinterD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4llvm16IRChangedPrinterD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZN4llvm22PrintIRInstrumentationD1Ev(ptr noundef nonnull align 8 dead_on_return(220) dereferenceable(220)) unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20DroppedVariableStatsD2Ev(ptr noundef nonnull align 8 dead_on_return(169) dereferenceable(169) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4llvm20DroppedVariableStatsE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %i.e = zext i32 %i.d to i64
  %.idx.i = mul nuw nsw i64 %i.e, 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.f, %.lr.ph.i.preheader.i ]
  %i.g = getelementptr inbounds i8, ptr %.05.i.i, i64 -24 ; 3 uses
  tail call void @_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.g) #25
  %.not.i.i = icmp eq ptr %i.b, %i.g
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !1140

_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.loopexit.i, %bb.a
  %i.h = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.loopexit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN4llvm11SmallVectorINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELj2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.i
  tail call void @free(ptr noundef %i.h) #25
  br label %_ZN4llvm11SmallVectorINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELb0EE13destroy_rangeEPSL_SN_.exit.i, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1141 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm11SmallVectorINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELj2EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1144
  %i.p = zext i32 %i.l to i64                     ; 2 uses
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = add nuw nsw i64 %i.p, 31
  %i.s = lshr i64 %i.r, 3
  %i.t = and i64 %i.s, 1073741820
  %i.u = add nuw nsw i64 %i.t, %i.q
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.o, i64 noundef %i.u, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEELj2EED2Ev.exit, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !14   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i1 = icmp eq i32 %i.y, 0
  br i1 %.not4.i.i1, label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.i, label %.lr.ph.i.preheader.i2

.lr.ph.i.preheader.i2:                            ; preds = %_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.z = zext i32 %i.y to i64
  %.idx.i3 = mul nuw nsw i64 %i.z, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i3
  br label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i, %.lr.ph.i.preheader.i2
  %.05.i.i5 = phi ptr [ %i.ab, %_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i ], [ %i.aa, %.lr.ph.i.preheader.i2 ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.05.i.i5, i64 -24 ; 4 uses
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %.05.i.i5, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1145 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i4
  %i.af = load ptr, ptr %i.ab, align 8, !tbaa !1148
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 56
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i

_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i: ; preds = %bb.d, %.lr.ph.i.i4
  %.not.i.i6 = icmp eq ptr %i.w, %i.ab
  br i1 %.not.i.i6, label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i, label %.lr.ph.i.i4, !llvm.loop !1149

_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i: ; preds = %_ZN4llvm8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEED2Ev.exit.i.i
  %.pre.i7 = load ptr, ptr %i.v, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i, %_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  %i.am = phi ptr [ %.pre.i7, %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.loopexit.i ], [ %i.w, %_ZN4llvm6detail12DenseSetImplIPKNS_7DIScopeENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZN4llvm11SmallVectorINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELj2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.i
  tail call void @free(ptr noundef %i.am) #25
  br label %_ZN4llvm11SmallVectorINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELj2EED2Ev.exit

_ZN4llvm11SmallVectorINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELj2EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEELb0EE13destroy_rangeEPSC_SE_.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm20DroppedVariableStatsD0Ev(ptr noundef nonnull align 8 dereferenceable(169) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #28
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1150 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1153
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1154
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ac, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 36
  %i.r = load i32, ptr %i.q, align 4, !tbaa !1155 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1158
  %i.v = zext i32 %i.r to i64                     ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 5
  %i.x = add nuw nsw i64 %i.v, 31
  %i.y = lshr i64 %i.x, 3
  %i.z = and i64 %i.y, 1073741820
  %i.aa = add nuw nsw i64 %i.z, %i.w
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.u, i64 noundef %i.aa, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.c, %bb.b
  %i.ab = add i32 %.0.i3.i, -1
  %i.ac = and i32 %i.ab, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !1159

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !1160

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !1150 ; 2 uses
  %i.ad = icmp eq i32 %.pr, 0
  br i1 %i.ad, label %_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEv.exit
  %i.ae = load ptr, ptr %0, align 8, !tbaa !1153
  %i.af = zext i32 %.pr to i64                    ; 2 uses
  %i.ag = mul nuw nsw i64 %i.af, 40
  %i.ah = add nuw nsw i64 %i.af, 31
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = and i64 %i.ai, 1073741820
  %i.ak = add nuw nsw i64 %i.aj, %i.ag
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ae, i64 noundef %i.ak, i64 noundef 8) #25
  br label %_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS0_ISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoIS9_vEENS_6detail12DenseMapPairIS9_SB_EEEENSC_IS1_vEENSF_IS1_SH_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS1_ISt5tupleIJPKNS_7DIScopeES6_PKNS_15DILocalVariableEEEPNS_10DILocationENS_12DenseMapInfoISA_vEENS_6detail12DenseMapPairISA_SC_EEEENSD_IS2_vEENSG_IS2_SI_EEEES2_SI_SJ_SK_E10destroyAllEv.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1145 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7.preheader

.lr.ph7.preheader:                                ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1161
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7

.lr.ph7:                                          ; preds = %.lr.ph7.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !129  ; 2 uses
  %.not11.i2 = icmp eq i32 %i.k, 0
  br i1 %.not11.i2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph7
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.l = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit
  %.0.i3 = phi i32 [ %i.k, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1162 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN4llvm6detail12DenseSetImplISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEENS_8DenseMapIS9_NS0_13DenseSetEmptyENS_12DenseMapInfoIS9_vEENS0_12DenseSetPairIS9_EEEEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1165
  %i.w = zext i32 %i.s to i64                     ; 2 uses
  %i.x = mul nuw nsw i64 %i.w, 24
  %i.y = add nuw nsw i64 %i.w, 31
  %i.z = lshr i64 %i.y, 3
  %i.aa = and i64 %i.z, 1073741820
  %i.ab = add nuw nsw i64 %i.aa, %i.x
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.v, i64 noundef %i.ab, i64 noundef 8) #25
  br label %_ZN4llvm6detail12DenseSetImplISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEENS_8DenseMapIS9_NS0_13DenseSetEmptyENS_12DenseMapInfoIS9_vEENS0_12DenseSetPairIS9_EEEEED2Ev.exit.i.i

_ZN4llvm6detail12DenseSetImplISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEENS_8DenseMapIS9_NS0_13DenseSetEmptyENS_12DenseMapInfoIS9_vEENS0_12DenseSetPairIS9_EEEEED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !1162 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm6detail12DenseSetImplISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEENS_8DenseMapIS9_NS0_13DenseSetEmptyENS_12DenseMapInfoIS9_vEENS0_12DenseSetPairIS9_EEEEED2Ev.exit.i.i
  %i.af = load ptr, ptr %i.q, align 8, !tbaa !1165
  %i.ag = zext i32 %i.ad to i64                   ; 2 uses
  %i.ah = mul nuw nsw i64 %i.ag, 24
  %i.ai = add nuw nsw i64 %i.ag, 31
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 1073741820
  %i.al = add nuw nsw i64 %i.ak, %i.ah
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.af, i64 noundef %i.al, i64 noundef 8) #25
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit: ; preds = %_ZN4llvm6detail12DenseSetImplISt5tupleIJPKNS_7DIScopeES5_PKNS_15DILocalVariableEEENS_8DenseMapIS9_NS0_13DenseSetEmptyENS_12DenseMapInfoIS9_vEENS0_12DenseSetPairIS9_EEEEED2Ev.exit.i.i, %bb.d
  %i.am = add i32 %.0.i3, -1
  %i.an = and i32 %i.am, %.0.i3                   ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1166

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEES4_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit, %.lr.ph7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E10destroyAllEvEUljE_EEvPKjjT_.exit, label %.lr.ph7, !llvm.loop !1167

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_20DroppedVariableStats14DebugVariablesENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S9_EEEES7_S9_SB_SE_E10destroyAllEvEUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm9StringMapINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEENS_15MallocAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(20) dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1064
  %i.c = icmp eq i32 %i.b, 0
  %.pre13 = load ptr, ptr %0, align 8, !tbaa !1065 ; 4 uses
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1066 ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %.pre13, i64 %.idx
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.e
  %.012 = phi ptr [ %i.v, %bb.e ], [ %.pre13, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %.012, align 8, !tbaa !1067 ; 6 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1069
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !194  ; 2 uses
  %.not4.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not4.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.n = zext i32 %i.m to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.p, %_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i ], [ %i.o, %.lr.ph.i.preheader.i.i.i ]
  %i.p = getelementptr inbounds i8, ptr %.05.i.i.i.i, i64 -8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1168 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm5TimerEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm5TimerEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %i.q) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef 176) #26
  br label %_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i

_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm5TimerEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.p
  br i1 %.not.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1170

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm5TimerESt14default_deleteIS1_EED2Ev.exit.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.j, align 8, !tbaa !14
  br label %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i

_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i, %bb.c
  %i.r = phi ptr [ %.pre.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.loopexit.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN4llvm14StringMapEntryINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i
  tail call void @free(ptr noundef %i.r) #25
  br label %_ZN4llvm14StringMapEntryINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit

_ZN4llvm14StringMapEntryINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt10unique_ptrINS_5TimerESt14default_deleteIS2_EELb0EE13destroy_rangeEPS5_S7_.exit.i.i.i, %bb.d
  %i.u = add i64 %i.i, 57
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 noundef %i.u, i64 noundef 8) #25
  br label %bb.e

bb.e:                                             ; preds = %_ZN4llvm14StringMapEntryINS_11SmallVectorISt10unique_ptrINS_5TimerESt14default_deleteIS3_EELj4EEEE7DestroyINS_15MallocAllocatorEEEvRT_.exit, %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.012, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.g
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre = load ptr, ptr %0, align 8, !tbaa !1065
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %bb.a
  %i.w = phi ptr [ %.pre, %.loopexit.loopexit ], [ %.pre13, %bb.b ], [ %.pre13, %bb.a ]
  tail call void @free(ptr noundef %i.w) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4llvm5TimerD1Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176)) unnamed_addr #14

declare void @_ZN4llvm20timeTraceProfilerEndEPNS_22TimeTraceProfilerEntryE(ptr noundef) local_unnamed_addr #4

declare void @_ZN4llvm20LLVMRemarkFileHandle9Finalizer8finalizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN4llvm11raw_ostream14flush_nonemptyEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm14TargetRegistry12lookupTargetERKNS_6TripleERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm6TripleC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

declare void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef nonnull align 8 dereferenceable(34), i32, ptr) unnamed_addr #4

declare void @_ZN4llvm17SubtargetFeaturesC1ENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) unnamed_addr #4

declare void @_ZN4llvm17SubtargetFeatures27getDefaultSubtargetFeaturesERKNS_6TripleE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN4llvm17SubtargetFeatures10AddFeatureENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(24), ptr, i64, i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm6Module13getModuleFlagENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm6Module11getPICLevelEv(ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #4

declare i64 @_ZNK4llvm6Module12getCodeModelEv(ptr noundef nonnull align 8 dereferenceable(1288)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm13TargetOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(440) %0, ptr noundef nonnull align 8 dereferenceable(440) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !674  ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.d, align 8, !tbaa !151
  store <2 x ptr> %i.g, ptr %i.c, align 8, !tbaa !151
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN4llvm12MemoryBufferEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !37
  %.not.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !129
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !129
  br label %_ZNSt10shared_ptrIN4llvm12MemoryBufferEEC2ERKS2_.exit
end_hunk_6
