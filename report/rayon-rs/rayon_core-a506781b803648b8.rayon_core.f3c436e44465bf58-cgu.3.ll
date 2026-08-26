Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.3?download=true
begin_hunk_0_@_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB14_12DefaultSpawnNtB14_11ThreadSpawn5spawn0uEB16_:bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cb, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @0, ptr %i.cl, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !190
  %i.cm = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 24, i64 noundef 8) #21, !noalias !190 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.an, label %bb.ar, !prof !48

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25
          to label %.noexc41 unwind label %bb.ao

.noexc41:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle10ThreadInitECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body29.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aq:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cq = invoke { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cm)
          to label %bb.as unwind label %.body29   ; 2 uses

bb.as:                                            ; preds = %bb.ar
  %i.cr = extractvalue { i64, ptr } %i.cq, 0
  %i.cs = extractvalue { i64, ptr } %i.cq, 1      ; 2 uses
  %i.ct = trunc nuw i64 %i.cr to i1
  br i1 %i.ct, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cs, ptr %i.cu, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !193)
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.cv = load ptr, ptr %i.h, align 8, !alias.scope !199, !nonnull !8, !noundef !8
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !199
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit

bb.au:                                            ; preds = %bb.at
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.ac

bb.av:                                            ; preds = %bb.as
  %i.cy = ptrtoint ptr %i.cs to i64
  %i.cz = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8
  %i.da = load ptr, ptr %i.h, align 8, !nonnull !8, !noundef !8
  store ptr %i.cz, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit45

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit45: ; preds = %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !200)
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.db = load ptr, ptr %i.j, align 8, !alias.scope !212, !nonnull !8, !noundef !8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 release, align 8, !noalias !212
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit45

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit45 unwind label %bb.r

.body29.thread:                                   ; preds = %bb.ao, %bb.aj, %.body29, %bb.ay
  %eh.lpad-body3058 = phi { ptr, i32 } [ %i.cf, %.body29 ], [ %i.dh, %bb.ay ], [ %i.cd, %bb.aj ], [ %i.co, %bb.ao ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.de = load ptr, ptr %i.h, align 8, !alias.scope !219, !nonnull !8, !noundef !8
  %i.df = atomicrmw sub ptr %i.de, i64 1 release, align 8, !noalias !219
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %.body29.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #23
          to label %.thread unwind label %bb.az

bb.ay:                                            ; preds = %bb.ag
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1I_12DefaultSpawnNtB1I_11ThreadSpawn5spawn0uEs_0EB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.g) #24
          to label %.body29.thread unwind label %bb.az

bb.az:                                            ; preds = %bb.be, %bb.ax, %bb.w, %bb.bg, %.body34.thread, %bb.ba, %bb.ay
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ba:                                            ; preds = %bb.aa
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15ChildSpawnHooksECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #24
          to label %.thread unwind label %bb.az

bb.bb:                                            ; preds = %.body34.thread, %.body34
  %.pn2769 = phi { ptr, i32 } [ %.pn2770, %.body34.thread ], [ %.pn27, %.body34 ]
  %.sroa.018.067 = phi i1 [ %.sroa.018.068, %.body34.thread ], [ %.sroa.018.0, %.body34 ]
  %.sroa.017.065 = phi i8 [ %.sroa.017.066, %.body34.thread ], [ %.sroa.017.0, %.body34 ]
  %i.dj = trunc nuw i8 %.sroa.017.065 to i1
  br i1 %i.dj, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit

.body34.thread:                                   ; preds = %bb.n, %bb.f, %.body34
  %.pn2770 = phi { ptr, i32 } [ %.pn27, %.body34 ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.068 = phi i1 [ %.sroa.018.0, %.body34 ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.066 = phi i8 [ %.sroa.017.0, %.body34 ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtBJ_12DefaultSpawnNtBJ_11ThreadSpawn5spawn0EBL_(ptr noalias nofree noundef align 8 dereferenceable(104) %6) #24
          to label %bb.bb unwind label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.bd, %bb.bc, %bb.be, %bb.bb
  br i1 %.sroa.018.067, label %bb.bg, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.dk = load ptr, ptr %i.k, align 8, !alias.scope !220, !noundef !8 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dm = atomicrmw sub ptr %i.dk, i64 1 release, align 8, !noalias !223
  %i.dn = icmp eq i64 %i.dm, 1
  br i1 %i.dn, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit

bb.be:                                            ; preds = %bb.bd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.az

bb.bf:                                            ; preds = %bb.bg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit
  resume { ptr, i32 } %.pn2769

bb.bg:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #24
          to label %bb.bf unwind label %bb.az
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2y_8adapters3map8map_foldBX_NtNtB1P_8registry10ThreadInfouNvMs5_B47_B45_3newNCINvNvB2s_8for_each4callB45_NCINvMsk_B8_INtB8_3VecB45_E14extend_trustedINtB3y_3MapBI_B4z_EE0E0E0EB1P_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not8 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not8, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !228, !noalias !235, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted9 = load i64, ptr %i.g, align 8, !alias.scope !228, !noalias !235
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i64 [ %.promoted9, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load i8, ptr %i.k, align 8, !range !46, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.h ; 5 uses
  store ptr %i.j, ptr %i.n, align 8, !noalias !228
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.l, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !228
  %i.o = getelementptr i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.o, i8 0, i64 14, i1 false), !noalias !238
  %i.p = getelementptr i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %i.p, i8 0, i64 10, i1 false), !noalias !238
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 44
  store i32 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !228
  %i.q = add i64 %i.h, 1                          ; 2 uses
  %.not.not = icmp eq ptr %i.m, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !228, !noalias !235
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !8, !align !141, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.w, align 8, !noundef !8
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !141, !noundef !8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.x, align 8, !noundef !8
  store i64 %.val5, ptr %.val, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1b_12DefaultSpawnNtB1b_11ThreadSpawn5spawn0uEs_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_once6vtableB1d_(ptr noundef %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [136 x i8], align 8               ; 6 uses
  %.sroa.535.i = alloca [120 x i8], align 8       ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.535.i)
  %.sroa.036.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !241 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !241 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.535.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx.i, i64 88, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.sroa.535.104..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.535.i, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.535.104..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244
  store ptr %.sroa.036.0.copyload.i, ptr %i.c, align 8, !noalias !241
  %.sroa.7.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.7.0..sroa_idx21.i, align 8, !noalias !241
  %.sroa.9.0..sroa_idx24.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9.0..sroa_idx24.i, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.535.i, i64 120, i1 false), !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB23_12DefaultSpawnNtB23_11ThreadSpawn5spawn0uEs_000uEB25_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB2i_12DefaultSpawnNtB2i_11ThreadSpawn5spawn0uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_.exit.i.i unwind label %bb.b, !noalias !247

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtBJ_12DefaultSpawnNtBJ_11ThreadSpawn5spawn0EBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c) #24
          to label %.body14.i unwind label %bb.c, !noalias !244

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !244
  unreachable

_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB2i_12DefaultSpawnNtB2i_11ThreadSpawn5spawn0uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !247
  store ptr %.sroa.036.0.copyload.i, ptr %i.a, align 8, !noalias !241
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.438.0..sroa_idx.i, align 8, !noalias !241
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.539.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.3.0..sroa_idx.i, i64 88, i1 false)
  invoke void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1f_12DefaultSpawnNtB1f_11ThreadSpawn5spawn0uEB1h_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
          to label %bb.f unwind label %bb.d, !noalias !241

bb.d:                                             ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB2i_12DefaultSpawnNtB2i_11ThreadSpawn5spawn0uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_.exit.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  br label %.body14.i

.body14.i:                                        ; preds = %bb.d, %bb.b
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.f, %bb.b ]
  %i.i = extractvalue { ptr, i32 } %eh.lpad-body15.i, 0
  %i.j = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.i)
          to label %bb.g unwind label %bb.e, !noalias !241 ; 2 uses

bb.e:                                             ; preds = %.body14.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #22, !noalias !241
  unreachable

bb.f:                                             ; preds = %_RNvXsl_NtNtCs3oUPovFnLWP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB2i_12DefaultSpawnNtB2i_11ThreadSpawn5spawn0uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244
  br label %bb.h

bb.g:                                             ; preds = %.body14.i
  %i.l = extractvalue { ptr, ptr } %i.j, 0
  %i.m = extractvalue { ptr, ptr } %i.j, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = phi ptr [ %i.m, %bb.g ], [ undef, %bb.f ] ; 2 uses
  %i.o = phi ptr [ %i.l, %bb.g ], [ null, %bb.f ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !241, !nonnull !8, !noundef !8 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.s = load i64, ptr %i.r, align 8, !range !7, !alias.scope !250, !noalias !241, !noundef !8
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !250, !noalias !241, !noundef !8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %.val1.i.i = load ptr, ptr %i.v, align 8, !alias.scope !250, !noalias !241 ; 6 uses
  %i.w = icmp eq ptr %.val.i.i, null
  br i1 %i.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.x = load ptr, ptr %.val1.i.i, align 8, !invariant.load !8, !noalias !253 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.x(ptr noundef nonnull %.val.i.i)
          to label %bb.l unwind label %bb.n, !noalias !253

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !9, !invariant.load !8, !noalias !253 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !10, !invariant.load !8, !noalias !253
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #21, !noalias !253
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i

bb.n:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !9, !invariant.load !8, !noalias !253 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !10, !invariant.load !8, !noalias !253
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #21, !noalias !253
  br label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.m, %bb.l, %bb.i, %bb.h
  store i64 1, ptr %i.r, align 8, !noalias !241
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !241
  %.sroa.6.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %i.n, ptr %.sroa.6.0..sroa_idx5.i, align 8, !noalias !241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !241
  store ptr %i.q, ptr %i.d, align 8, !noalias !241
  %i.aj = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !254
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uEs_0B18_.exit

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #23, !noalias !241
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uEs_0B18_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core.exit13.i: ; preds = %bb.r, %bb.q
  resume { ptr, i32 } %i.ad

bb.q:                                             ; preds = %bb.o, %bb.n
  store i64 1, ptr %i.r, align 8, !noalias !241
  store ptr %i.o, ptr %i.u, align 8, !noalias !241
  store ptr %i.n, ptr %i.v, align 8, !noalias !241
  %i.al = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !259
  %i.am = icmp eq i64 %i.al, 1
end_hunk_0
begin_hunk_1_@_RNvMs3_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatch4wait:bb.a
  %i.j = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23, !noalias !279
  %i.k = xor i1 %i.j, true
  %i.l = zext i1 %i.k to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load atomic i8, ptr %i.m monotonic, align 4, !noalias !279
  %.not.i.i = icmp ne i8 %i.n, 0
  call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i1 noundef zeroext %.not.i.i, i8 noundef %.sroa.01.0.i.i, ptr noundef nonnull align 4 %0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  %i.o = load i64, ptr %i.d, align 8, !range !7, !alias.scope !282, !noalias !285, !noundef !8
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %bb.e, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1, !prof !48

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !287
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !282, !noalias !285, !nonnull !8, !align !45, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load i8, ptr %i.s, align 8, !range !46, !alias.scope !282, !noalias !285, !noundef !8
  store ptr %i.r, ptr %i.a, align 8, !noalias !287
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.t, ptr %i.u, align 8, !noalias !287
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
          to label %bb.g unwind label %bb.f, !noalias !282

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #24
          to label %common.resume unwind label %bb.h, !noalias !282

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !282
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.f ], [ %i.an, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !282, !noalias !285, !nonnull !8, !align !45, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !46, !alias.scope !282, !noalias !285, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.ac = load i8, ptr %i.ab, align 1, !range !46, !noundef !8
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %.sroa.0.08 = phi ptr [ %i.y, %.lr.ph ], [ %i.ap, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  %.sroa.7.07 = phi i8 [ %i.aa, %.lr.ph ], [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ah = trunc nuw i8 %.sroa.7.07 to i1
  call void @_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB3_7Condvar4waitbECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 4 %i.ae, ptr noundef nonnull align 4 %.sroa.0.08, i1 noundef zeroext %i.ah)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ai = load i64, ptr %i.c, align 8, !range !7, !alias.scope !288, !noalias !291, !noundef !8
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.j, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, !prof !48

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !293
  %i.ak = load ptr, ptr %i.af, align 8, !alias.scope !288, !noalias !291, !nonnull !8, !align !45, !noundef !8
  %i.al = load i8, ptr %i.ag, align 8, !range !46, !alias.scope !288, !noalias !291, !noundef !8
  store ptr %i.ak, ptr %i.b, align 8, !noalias !293
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.al, ptr %i.am, align 8, !noalias !293
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #25
          to label %bb.l unwind label %bb.k, !noalias !288

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #24
          to label %common.resume unwind label %bb.m, !noalias !288

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22, !noalias !288
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.i
  %i.ap = load ptr, ptr %i.af, align 8, !alias.scope !288, !noalias !291, !nonnull !8, !align !45, !noundef !8 ; 3 uses
  %i.aq = load i8, ptr %i.ag, align 8, !range !46, !alias.scope !288, !noalias !291, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.as = load i8, ptr %i.ar, align 1, !range !46, !noundef !8
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1
  %.sroa.7.0.lcssa = phi i8 [ %i.aa, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1 ], [ %i.aq, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ]
  %.sroa.0.0.lcssa = phi ptr [ %i.y, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit1 ], [ %i.ap, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa, i64 4
  %i.av = trunc nuw i8 %.sroa.7.0.lcssa to i1
  br i1 %i.av, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.aw = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ax = and i64 %i.aw, 9223372036854775807
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.o, !prof !47

bb.o:                                             ; preds = %bb.n
  %i.az = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  br i1 %i.az, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.au monotonic, align 1
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.p, %bb.o, %bb.n, %._crit_edge
  %i.ba = atomicrmw xchg ptr %.sroa.0.0.lcssa, i32 0 release, align 4
  %i.bb = icmp eq i32 %i.ba, 2
  br i1 %i.bb, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !48

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.sroa.0.0.lcssa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.q
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b, !prof !47

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.d, !prof !47

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #23
  %i.g = xor i1 %i.f, true
  %i.h = zext i1 %i.g to i8
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i = phi i8 [ %i.h, %bb.d ], [ 0, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load atomic i8, ptr %i.i monotonic, align 4
  %.not.i = icmp ne i8 %i.j, 0
  tail call void @_RINvNtNtCsaL1QbXo9JQH_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardbENCNvMs9_B10_BX_3new0ECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 4 %1)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly align 128 captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !294)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !noalias !294, !nonnull !8, !noundef !8
  %i.c = atomicrmw add ptr %i.b, i64 1 monotonic, align 8, !noalias !294
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.a, align 16, !noalias !294, !nonnull !8, !noundef !8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.g = load i64, ptr %i.f, align 128, !noalias !294, !noundef !8
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch10with_count.exit: ; preds = %bb.a, %bb.c
  %.sroa.03.0.i = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ]
  %.sroa.7.0.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ]
  store i64 1, ptr %0, align 8, !alias.scope !294
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0.i, ptr %i.h, align 8, !alias.scope !294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !294
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !294
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch4wait(ptr noundef nonnull align 8 %0, ptr noundef align 128 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs3_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatch4wait(ptr noundef nonnull align 4 %i.d)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = icmp eq i64 %i.e, 3
  br i1 %i.f, label %bb.g, label %bb.f, !prof !47

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %1, ptr noundef nonnull align 8 %i.d)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !range !7, !noundef !8 ; 2 uses
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 5 uses
  %i.g = icmp ne ptr %i.f, null
  %.sroa.0.0 = select i1 %i.d, i1 %i.g, i1 false
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !306 ; 6 uses
  %i.j = icmp eq ptr %i.f, null
  br i1 %i.j, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %i.k = load ptr, ptr %.val1.i.i.i.i.i, align 8, !invariant.load !8, !noalias !306 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.k(ptr noundef nonnull %i.f)
          to label %bb.e unwind label %bb.g, !noalias !306

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !8, !noalias !306 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !10, !invariant.load !8, !noalias !306
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #21, !noalias !306
  br label %.thread

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !8, !noalias !306 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.body.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !10, !invariant.load !8, !noalias !306
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #21, !noalias !306
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.h, %bb.g
  store i64 0, ptr %i.b, align 8, !alias.scope !307
  %i.w = extractvalue { ptr, i32 } %i.q, 0
  %i.x = invoke { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef %i.w)
          to label %bb.j unwind label %bb.i       ; 2 uses

bb.i:                                             ; preds = %.body.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #22
  unreachable

.thread:                                          ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  store i64 0, ptr %i.b, align 8, !alias.scope !307
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit

bb.j:                                             ; preds = %.body.i.i.i.i
  %i.z = extractvalue { ptr, ptr } %i.x, 0        ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.x, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = invoke noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 125 to ptr))
          to label %bb.m unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.j, %.thread
  %i.ac = load ptr, ptr %0, align 8, !noundef !8  ; 2 uses
  %.not4 = icmp eq ptr %i.ac, null
  br i1 %.not4, label %bb.s, label %bb.r

bb.l:                                             ; preds = %bb.m, %bb.n, %bb.k
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.z, ptr nonnull %i.aa) #24
          to label %bb.q unwind label %bb.p

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core(ptr %i.ab)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.q:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.ad

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  tail call void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.af, i1 noundef zeroext %.sroa.0.0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_8CountersNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %0, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @12, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 8)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.split
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #24
          to label %common.resume unwind label %bb.j

bb.b:                                             ; preds = %.split
  %i.h = invoke noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 4, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14)
          to label %bb.c unwind label %bb.a
end_hunk_1
