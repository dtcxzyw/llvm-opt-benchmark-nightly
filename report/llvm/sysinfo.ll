Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/sysinfo?download=true
begin_hunk_0_@_ZN9benchmark7CPUInfoC2Ev:bb.a
  %i.tz = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.tz, ptr %3, align 8, !tbaa !35, !noalias !40
  %i.ua = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !40
  store i64 %i.ua, ptr %i.ox, align 8, !tbaa !34, !noalias !40
  br label %bb.cl

._crit_edge.i.i.i.i.i:                            ; preds = %bb.cj
  %cond.i.i.i = icmp eq i64 %i.tv, 1
  br i1 %cond.i.i.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !34
  store i8 %i.ub, ptr %i.ox, align 8, !tbaa !34, !noalias !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

bb.cl:                                            ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.i.i.thread.i.i.i
  %i.uc = phi ptr [ %i.tz, %._crit_edge.i.i.thread.i.i.i ], [ %i.ox, %._crit_edge.i.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uc, ptr align 1 %i.tx, i64 %i.tv, i1 false)
  %.pre.i.i7 = load i64, ptr %i.b, align 8, !tbaa !39, !noalias !40
  %.pre49.i.i = load ptr, ptr %3, align 8, !tbaa !35, !noalias !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i: ; preds = %bb.cl, %bb.ck
  %i.ud = phi ptr [ %.pre49.i.i, %bb.cl ], [ %i.ox, %bb.ck ]
  %i.ue = phi i64 [ %.pre.i.i7, %bb.cl ], [ 1, %bb.ck ] ; 2 uses
  store i64 %i.ue, ptr %i.oy, align 8, !tbaa !31, !noalias !40
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 %i.ue
  store i8 0, ptr %i.uf, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !40
  %i.ug = call fastcc noundef i32 @"_ZZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clES6_"(ptr nofree noundef align 8 dereferenceable(32) %3)
  %i.uh = add nuw nsw i32 %i.ug, %.0.lcssa.i.i.i  ; 2 uses
  %i.ui = load ptr, ptr %3, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.uj = icmp eq ptr %i.ui, %i.ox
  br i1 %i.uj, label %_ZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i
  %i.uk = load i64, ptr %i.ox, align 8, !tbaa !34, !noalias !40
  %i.ul = add i64 %i.uk, 1
  call void @_ZdlPvm(ptr noundef %i.ui, i64 noundef %i.ul) #24
  br label %_ZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i, %._crit_edge.i.i.i
  %.1.i.i.i = phi i32 [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %i.uh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i.i.i ], [ %i.uh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !40
  store i32 %.1.i.i.i, ptr %i.oz, align 8, !tbaa !103, !noalias !40
  %i.um = load ptr, ptr %15, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.un = icmp eq ptr %i.um, %i.or
  br i1 %i.un, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i: ; preds = %_ZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %i.uo = load i64, ptr %i.or, align 8, !tbaa !34, !noalias !40
  %i.up = add i64 %i.uo, 1
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.up) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i: ; preds = %_ZN9benchmark12_GLOBAL__N_120CountSetBitsInCPUMapENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i.i
  %i.uq = load ptr, ptr %i.pa, align 8, !tbaa !104, !alias.scope !40 ; 9 uses
  %i.ur = load ptr, ptr %i.pb, align 8, !tbaa !105, !alias.scope !40
  %.not.i19.i.i = icmp eq ptr %i.uq, %i.ur
  br i1 %.not.i19.i.i, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.uq, i64 16 ; 3 uses
  store ptr %i.us, ptr %i.uq, align 8, !tbaa !29
  %i.ut = load ptr, ptr %6, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.uu = load i64, ptr %i.ny, align 8, !tbaa !31, !noalias !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !40
  store i64 %i.uu, ptr %i.a, align 8, !tbaa !39, !noalias !40
  %i.uv = icmp ugt i64 %i.uu, 15
  br i1 %i.uv, label %bb.cn, label %._crit_edge.i.i.i.i20.i.i

bb.cn:                                            ; preds = %bb.cm
  %i.uw = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.uq, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.uw, ptr %i.uq, align 8, !tbaa !35
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !40
  store i64 %i.ux, ptr %i.us, align 8, !tbaa !34
  br label %._crit_edge.i.i.i.i20.i.i

._crit_edge.i.i.i.i20.i.i:                        ; preds = %bb.cn, %bb.cm
  %i.uy = phi ptr [ %i.uw, %bb.cn ], [ %i.us, %bb.cm ] ; 2 uses
  switch i64 %i.uu, label %bb.cp [
    i64 1, label %bb.co
    i64 0, label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i
  ]

bb.co:                                            ; preds = %._crit_edge.i.i.i.i20.i.i
  %i.uz = load i8, ptr %i.ut, align 1, !tbaa !34
  store i8 %i.uz, ptr %i.uy, align 1, !tbaa !34
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i

bb.cp:                                            ; preds = %._crit_edge.i.i.i.i20.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uy, ptr align 1 %i.ut, i64 %i.uu, i1 false)
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i

_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i: ; preds = %bb.cp, %bb.co, %._crit_edge.i.i.i.i20.i.i
  %i.va = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !40 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uq, i64 8
  store i64 %i.va, ptr %i.vb, align 8, !tbaa !31
  %i.vc = load ptr, ptr %i.uq, align 8, !tbaa !35
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.va
  store i8 0, ptr %i.vd, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !40
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ve, ptr noundef nonnull align 8 dereferenceable(12) %i.of, i64 12, i1 false)
  %i.vf = load ptr, ptr %i.pa, align 8, !tbaa !104, !alias.scope !40
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 48
  store ptr %i.vg, ptr %i.pa, align 8, !tbaa !104, !alias.scope !40
  br label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i.i
  call void @_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.nr, ptr %i.uq, ptr noundef nonnull align 8 dereferenceable(44) %6)
  br label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i

_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i: ; preds = %bb.cq, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit.i.i.i
  %i.vh = load ptr, ptr %13, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.vi = icmp eq ptr %i.vh, %i.oo
  br i1 %i.vi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i: ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i
  %i.vj = load i64, ptr %i.oo, align 8, !tbaa !34, !noalias !40
  %i.vk = add i64 %i.vj, 1
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i: ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE9push_backERKS2_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !40
  %i.vl = load ptr, ptr %10, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, %i.ob
  br i1 %i.vm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i
  %i.vn = load i64, ptr %i.ob, align 8, !tbaa !34, !noalias !40
  %i.vo = add i64 %i.vn, 1
  call void @_ZdlPvm(ptr noundef %i.vl, i64 noundef %i.vo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !40
  br label %bb.cr

bb.cr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  store ptr %i.nq, ptr %8, align 8, !tbaa !45, !noalias !40
  %i.vp = load i64, ptr %i.oh, align 8
  %i.vq = getelementptr inbounds i8, ptr %8, i64 %i.vp
  store ptr %i.np, ptr %i.vq, align 8, !tbaa !45, !noalias !40
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt13basic_filebufIcSt11char_traitsIcEE, i64 16), ptr %i.pc, align 8, !tbaa !45, !noalias !40
  %i.vr = call noundef ptr @_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(240) %i.pc) #20 ; 0 uses
  call void @_ZNSt12__basic_fileIcED1Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.oa) #20
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.pc, align 8, !tbaa !45, !noalias !40
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pd) #20
  store ptr %i.no, ptr %8, align 8, !tbaa !45, !noalias !40
  %i.vs = load i64, ptr %i.ok, align 8
  %i.vt = getelementptr inbounds i8, ptr %8, i64 %i.vs
  store ptr %i.nn, ptr %i.vt, align 8, !tbaa !45, !noalias !40
  store i64 0, ptr %i.pe, align 8, !tbaa !87, !noalias !40
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.pf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !40
  %i.vu = load ptr, ptr %7, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.vv = icmp eq ptr %i.vu, %i.pg
  br i1 %i.vv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i: ; preds = %bb.cr
  %i.vw = load i64, ptr %i.pg, align 8, !tbaa !34, !noalias !40
  %i.vx = add i64 %i.vw, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !40
  %i.vy = load ptr, ptr %6, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.nx
  br i1 %i.vz, label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i
  %i.wa = load i64, ptr %i.nx, align 8, !tbaa !34, !noalias !40
  %i.wb = add i64 %i.wa, 1
  call void @_ZdlPvm(ptr noundef %i.vy, i64 noundef %i.wb) #24
  br label %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i

_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i:     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i30.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !40
  br i1 %i.pn, label %bb.bf, label %bb.cs

bb.cs:                                            ; preds = %_ZN9benchmark7CPUInfo9CacheInfoD2Ev.exit.i.i
  %i.wc = load ptr, ptr %5, align 8, !tbaa !35, !noalias !40 ; 2 uses
  %i.wd = icmp eq ptr %i.wc, %i.ns
  br i1 %i.wd, label %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i: ; preds = %bb.cs
  %i.we = load i64, ptr %i.ns, align 8, !tbaa !34, !noalias !40
  %i.wf = add i64 %i.we, 1
  call void @_ZdlPvm(ptr noundef %i.wc, i64 noundef %i.wf) #24
  br label %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit

_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20, !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !90
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.wh = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21, !noalias !106 ; 6 uses
  store ptr %i.wh, ptr %i.wg, align 8, !tbaa !109, !alias.scope !106
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 24 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.wi, ptr %i.wj, align 8, !tbaa !110, !alias.scope !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.wh, i8 0, i64 24, i1 false), !tbaa !111, !noalias !106
  store ptr %i.wi, ptr %29, align 8, !tbaa !112, !alias.scope !106
  %i.wk = call i32 @getloadavg(ptr noundef nonnull %i.wh, i32 noundef 3) #20, !noalias !106 ; 4 uses
  %i.wl = icmp slt i32 %i.wk, 1
  br i1 %i.wl, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit
  store ptr %i.wh, ptr %29, align 8, !tbaa !112, !alias.scope !106
  br label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit

bb.cu:                                            ; preds = %_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv.exit
  %i.wm = zext nneg i32 %i.wk to i64              ; 2 uses
  %i.wn = icmp samesign ugt i32 %i.wk, 3
  br i1 %i.wn, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.wo = add nsw i64 %i.wm, -3
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.wg, i64 noundef %i.wo)
  br label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit

bb.cw:                                            ; preds = %bb.cu
  %.not.i8 = icmp eq i32 %i.wk, 3
  br i1 %.not.i8, label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %.idx.i = shl nuw nsw i64 %i.wm, 3
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wh, i64 %.idx.i
  store ptr %i.wp, ptr %29, align 8, !tbaa !112, !alias.scope !106
  br label %_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit

_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv.exit:   ; preds = %bb.ct, %bb.cv, %bb.cw, %bb.cx
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN9benchmark10SystemInfo3GetEv() local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark10SystemInfo3GetEvE4info acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark10SystemInfo3GetEvE4info) #20
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #21 ; 2 uses
  tail call void @_ZN9benchmark10SystemInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(36) %i.d) #20
  store ptr %i.d, ptr @_ZZN9benchmark10SystemInfo3GetEvE4info, align 8, !tbaa !113
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark10SystemInfo3GetEvE4info) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN9benchmark10SystemInfo3GetEvE4info, align 8, !tbaa !113
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9benchmark10SystemInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca [64 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20, !noalias !115
  %i.c = call i32 @gethostname(ptr noundef nonnull %i.b, i64 noundef 64) #20, !noalias !115
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !29, !alias.scope !115
  br i1 %.not.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #20, !noalias !115 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !115
  store i64 %i.e, ptr %i.a, align 8, !tbaa !39, !noalias !115
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !35, !alias.scope !115
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !115
  store i64 %i.h, ptr %i.d, align 8, !tbaa !34, !alias.scope !115
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %i.g, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.g
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.j = load i8, ptr %i.b, align 16, !tbaa !34, !noalias !115
  store i8 %i.j, ptr %i.i, align 1, !tbaa !34
  br label %bb.g

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 16 %i.b, i64 %i.e, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !31, !alias.scope !115
  store i8 0, ptr %i.d, align 8, !tbaa !34, !alias.scope !115
  br label %_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !39, !noalias !115 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !31, !alias.scope !115
  %i.n = load ptr, ptr %0, align 8, !tbaa !35, !alias.scope !115
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !115
  br label %_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev.exit

_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20, !noalias !115
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = call i32 @personality(i64 noundef 4294967295) #20
  %i.r = and i32 %i.q, 262144
  %.not.i1 = icmp eq i32 %i.r, 0
  %i.s = select i1 %.not.i1, i32 1, i32 2
  store i32 %i.s, ptr %i.p, align 8, !tbaa !118
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress noreturn nounwind uwtable
define internal fastcc void @_ZN9benchmark12_GLOBAL__N_116PrintErrorAndDieIJRA50_KcPcEEEvDpOT_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  tail call fastcc void @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA50_KcJPcEEEvRSoOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr) #20, !inline_history !121 ; 0 uses
  tail call void @exit(i32 noundef 1) #27
  unreachable
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN9benchmark12_GLOBAL__N_18PrintImpIRA50_KcJPcEEEvRSoOT_DpOT0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 49) #20 ; 0 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !13    ; 3 uses
  %.not.i.i = icmp eq ptr %.val, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !45
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 8, !tbaa !70
  %i.i = or i32 %i.h, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.f, i32 noundef %i.i) #20
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val) #20
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %.val, i64 noundef %i.j) #20 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1, !tbaa !34
  %i.l = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !45
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !122
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.r = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.a, i64 noundef 1) #20 ; 0 uses
  br label %_ZN9benchmark12_GLOBAL__N_18PrintImpIPcJEEEvRSoOT_DpOT0_.exit

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext 10) #20 ; 0 uses
  br label %_ZN9benchmark12_GLOBAL__N_18PrintImpIPcJEEEvRSoOT_DpOT0_.exit

_ZN9benchmark12_GLOBAL__N_18PrintImpIPcJEEEvRSoOT_DpOT0_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #26
  unreachable

_ZNKSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = icmp ult i64 %i.j, %i.i
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.j, i64 192153584101141162)
  %i.m = select i1 %i.k, i64 192153584101141162, i64 %i.l ; 3 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.n, %i.f
  %.not.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.p = mul nuw nsw i64 %i.m, 48
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #21 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = load ptr, ptr %2, align 8, !tbaa !35     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.v, ptr %i.a, align 8, !tbaa !39
  %i.w = icmp ugt i64 %i.v, 15
  br i1 %i.w, label %bb.c, label %._crit_edge.i.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(44) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.x, ptr %i.r, align 8, !tbaa !35
  %i.y = load i64, ptr %i.a, align 8, !tbaa !39
  store i64 %i.y, ptr %i.s, align 8, !tbaa !34
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %_ZNKSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE12_M_check_lenEmPKc.exit
  %i.z = phi ptr [ %i.x, %bb.c ], [ %i.s, %_ZNKSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  switch i64 %i.v, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.aa = load i8, ptr %i.t, align 1, !tbaa !34
  store i8 %i.aa, ptr %i.z, align 1, !tbaa !34
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.t, i64 %i.v, i1 false)
  br label %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit

_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit:     ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !31
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  store i8 0, ptr %i.ae, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.af, ptr noundef nonnull align 8 dereferenceable(12) %i.ag, i64 12, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.q, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit ] ; 6 uses
  %.0911.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ah, ptr %.012.i.i.i, align 8, !tbaa !29, !alias.scope !176, !noalias !179
  %i.ai = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !179, !noalias !176 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31, !alias.scope !179, !noalias !176 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull align 8 dereferenceable(1) %i.aj, i64 %i.ao, i1 false), !alias.scope !181
  br label %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ai, ptr %.012.i.i.i, align 8, !tbaa !35, !alias.scope !176, !noalias !179
  %i.ap = load i64, ptr %i.aj, align 8, !tbaa !34, !alias.scope !179, !noalias !176
  store i64 %i.ap, ptr %i.ah, align 8, !tbaa !34, !alias.scope !176, !noalias !179
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !31, !alias.scope !179, !noalias !176
  br label %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.f
  %i.aq = phi i64 [ %i.am, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aq, ptr %i.as, align 8, !tbaa !31, !alias.scope !176, !noalias !179
  store ptr %i.aj, ptr %.0911.i.i.i, align 8, !tbaa !35, !alias.scope !179, !noalias !176
  store i64 0, ptr %i.ar, align 8, !tbaa !31, !alias.scope !179, !noalias !176
  store i8 0, ptr %i.aj, align 8, !tbaa !34, !alias.scope !179, !noalias !176
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.at, ptr noundef nonnull align 8 dereferenceable(12) %i.au, i64 12, i1 false), !alias.scope !181
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.av, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !182

_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.q, %_ZN9benchmark7CPUInfo9CacheInfoC2ERKS1_.exit ], [ %i.aw, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 48 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23
  %.012.i.i.i18 = phi ptr [ %i.bn, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %i.ax, %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 6 uses
  %.0911.i.i.i19 = phi ptr [ %i.bm, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ], [ %1, %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ] ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 3 uses
  store ptr %i.ay, ptr %.012.i.i.i18, align 8, !tbaa !29, !alias.scope !183, !noalias !186
  %i.az = load ptr, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !186, !noalias !183 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !31, !alias.scope !186, !noalias !183 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false), !alias.scope !188
  br label %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i17
  store ptr %i.az, ptr %.012.i.i.i18, align 8, !tbaa !35, !alias.scope !183, !noalias !186
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !34, !alias.scope !186, !noalias !183
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !34, !alias.scope !183, !noalias !186
  %.phi.trans.insert.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %.pre.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i21, align 8, !tbaa !31, !alias.scope !186, !noalias !183
  br label %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23

_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20, %bb.g
  %i.bh = phi i64 [ %i.bd, %bb.g ], [ %.pre.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i20 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8
  store i64 %i.bh, ptr %i.bj, align 8, !tbaa !31, !alias.scope !183, !noalias !186
  store ptr %i.ba, ptr %.0911.i.i.i19, align 8, !tbaa !35, !alias.scope !186, !noalias !183
  store i64 0, ptr %i.bi, align 8, !tbaa !31, !alias.scope !186, !noalias !183
  store i8 0, ptr %i.ba, align 8, !tbaa !34, !alias.scope !186, !noalias !183
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bk, ptr noundef nonnull align 8 dereferenceable(12) %i.bl, i64 12, i1 false), !alias.scope !188
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 48 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 48 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %i.c
  br i1 %.not.i.i.i24, label %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, label %.lr.ph.i.i.i17, !llvm.loop !182

_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26: ; preds = %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23, %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %.0.lcssa.i.i.i25 = phi ptr [ %i.ax, %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit ], [ %i.bn, %_ZSt19__relocate_object_aIN9benchmark7CPUInfo9CacheInfoES2_SaIS2_EEvPT_PT0_RT1_.exit.i.i.i23 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i27 = icmp eq ptr %i.d, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !105
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub i64 %i.bq, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.br) #24
  br label %_ZNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26, %bb.h
  store ptr %i.q, ptr %0, align 8, !tbaa !175
  store ptr %.0.lcssa.i.i.i25, ptr %i.b, align 8, !tbaa !104
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %i.q, i64 %i.m
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind
declare i32 @getloadavg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !109    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !110
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !111
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !111
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !112
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #26
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #21 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !111
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit28, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i25

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i25: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i26 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i26, i1 false), !tbaa !111
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit28

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit28: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i25
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit28
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit28, %bb.f
  %.not.i29 = icmp eq ptr %i.c, null
  br i1 %.not.i29, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = sub i64 %i.j, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ad) #24
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !112
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.af, ptr %i.h, align 8, !tbaa !110
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare i32 @gethostname(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @personality(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_sysinfo.cc() #17 section ".text.startup" {
bb.a:
  %i.a = tail call noundef i32 @_ZN9benchmark8internal17InitializeStreamsEv() #20 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind allocsize(0) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { noreturn nounwind }
attributes #27 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"branch_weights", i32 1, i32 1048575}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN9benchmark7CPUInfoE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!16, !5, i64 0}
!16 = !{!"_ZTSN9benchmark7CPUInfoE", !5, i64 0, !17, i64 4, !18, i64 8, !19, i64 16, !24, i64 40}
!17 = !{!"_ZTSN9benchmark7CPUInfo7ScalingE", !6, i64 0}
!18 = !{!"double", !6, i64 0}
!19 = !{!"_ZTSSt6vectorIN9benchmark7CPUInfo9CacheInfoESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIN9benchmark7CPUInfo9CacheInfoESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p1 _ZTSN9benchmark7CPUInfo9CacheInfoE", !11, i64 0}
!24 = !{!"_ZTSSt6vectorIdSaIdEE", !25, i64 0}
!25 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!28 = !{!"p1 double", !11, i64 0}
!29 = !{!30, !14, i64 0}
!30 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!31 = !{!32, !33, i64 8}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0, !33, i64 8, !6, i64 16}
!33 = !{!"long", !6, i64 0}
!34 = !{!6, !6, i64 0}
!35 = !{!32, !14, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!16, !17, i64 4}
!39 = !{!33, !33, i64 0}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"_ZN9benchmark12_GLOBAL__N_121GetCacheSizesFromKVFSEv: argument 0"}
!42 = distinct !{!42, !"_ZN9benchmark12_GLOBAL__N_121GetCacheSizesFromKVFSEv"}
!43 = distinct !{!43, !44, !"_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv: argument 0"}
!44 = distinct !{!44, !"_ZN9benchmark12_GLOBAL__N_113GetCacheSizesEv"}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !7, i64 0}
!47 = !{!48, !60, i64 240}
!48 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !49, i64 0, !57, i64 216, !6, i64 224, !58, i64 225, !59, i64 232, !60, i64 240, !61, i64 248, !62, i64 256}
!49 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !50, i64 24, !51, i64 28, !51, i64 32, !52, i64 40, !53, i64 48, !6, i64 64, !5, i64 192, !54, i64 200, !55, i64 208}
!50 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!51 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!52 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !11, i64 0}
!53 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !33, i64 8}
!54 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !11, i64 0}
!55 = !{!"_ZTSSt6locale", !56, i64 0}
!56 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!57 = !{!"p1 _ZTSSo", !11, i64 0}
!58 = !{!"bool", !6, i64 0}
!59 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !11, i64 0}
!60 = !{!"p1 _ZTSSt5ctypeIcE", !11, i64 0}
!61 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!62 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !11, i64 0}
!63 = !{!64, !6, i64 56}
!64 = !{!"_ZTSSt5ctypeIcE", !65, i64 0, !66, i64 16, !58, i64 24, !67, i64 32, !67, i64 40, !68, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!65 = !{!"_ZTSNSt6locale5facetE", !5, i64 8}
!66 = !{!"p1 _ZTS15__locale_struct", !11, i64 0}
!67 = !{!"p1 int", !11, i64 0}
!68 = !{!"p1 short", !11, i64 0}
!69 = distinct !{null, null, null, null}
!70 = !{!49, !51, i64 32}
!71 = distinct !{!71, !37}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!74 = distinct !{!74, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!75 = distinct !{null}
!76 = !{!77, !33, i64 0}
!77 = !{!"_ZTSN9benchmark12_GLOBAL__N_119ThreadAffinityGuardE", !33, i64 0, !78, i64 8, !58, i64 136}
!78 = !{!"_ZTS9cpu_set_t", !6, i64 0}
!79 = distinct !{!79, !37}
!80 = !{!77, !58, i64 136}
!81 = !{i64 6372255}
!82 = distinct !{!82, !37}
!83 = distinct !{!83, !37}
!84 = !{i64 5534768}
!85 = !{i8 0, i8 2}
!86 = !{}
!87 = !{!88, !33, i64 8}
!88 = !{!"_ZTSSi", !33, i64 8}
!89 = !{!16, !18, i64 8}
!90 = !{!43}
!91 = !{!41}
!92 = !{!93, !5, i64 36}
!93 = !{!"_ZTSN9benchmark7CPUInfo9CacheInfoE", !32, i64 0, !5, i64 32, !5, i64 36, !5, i64 40}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!96 = distinct !{!96, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!97 = !{!95, !41, !43}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!100 = distinct !{!100, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!101 = !{!99, !41, !43}
!102 = distinct !{!102, !37}
!103 = !{!93, !5, i64 40}
!104 = !{!22, !23, i64 8}
!105 = !{!22, !23, i64 16}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv: argument 0"}
!108 = distinct !{!108, !"_ZN9benchmark12_GLOBAL__N_110GetLoadAvgEv"}
!109 = !{!27, !28, i64 0}
!110 = !{!27, !28, i64 16}
!111 = !{!18, !18, i64 0}
!112 = !{!27, !28, i64 8}
!113 = !{!114, !114, i64 0}
!114 = !{!"p1 _ZTSN9benchmark10SystemInfoE", !11, i64 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev: argument 0"}
!117 = distinct !{!117, !"_ZN9benchmark12_GLOBAL__N_113GetSystemNameB5cxx11Ev"}
!118 = !{!119, !120, i64 32}
!119 = !{!"_ZTSN9benchmark10SystemInfoE", !32, i64 0, !120, i64 32}
!120 = !{!"_ZTSN9benchmark10SystemInfo4ASLRE", !6, i64 0}
!121 = distinct !{null}
!122 = !{!49, !33, i64 16}
!123 = !{!48, !57, i64 216}
end_hunk_1
