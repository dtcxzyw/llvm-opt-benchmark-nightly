Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/project_model-42cc9cdbe70b8db7.project_model.99d45700f4e170a5-cgu.14?download=true
inline.NumInlined: 1101
inline.NumDeleted: 388
begin_hunk_0_@_RINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCsdcPuHeDsw6v_13project_model9workspaceNtB15_16ProjectWorkspace11load_inline0s_0INtNtCshzWfHUSfYae_4core6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEB17_:bb.a
.noexc42:                                         ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread9lifecycle10ThreadInitECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #26
          to label %.body30.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ar:                                            ; preds = %bb.am
  call void @llvm.trap()
  unreachable

bb.as:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = invoke { i64, ptr } @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cl)
          to label %bb.at unwind label %.body30   ; 2 uses

bb.at:                                            ; preds = %bb.as
  %i.cq = extractvalue { i64, ptr } %i.cp, 0
  %i.cr = extractvalue { i64, ptr } %i.cp, 1      ; 2 uses
  %i.cs = trunc nuw i64 %i.cq to i1
  br i1 %i.cs, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.ct, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cu = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !2981
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.av, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECsdcPuHeDsw6v_13project_model.exit

bb.av:                                            ; preds = %bb.au
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtCshzWfHUSfYae_4core6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEE9drop_slowCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.ad

bb.aw:                                            ; preds = %bb.at
  %i.cw = ptrtoint ptr %i.cr to i64
  %i.cx = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10
  store ptr %i.cx, ptr %0, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bo, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cw, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsdcPuHeDsw6v_13project_model.exit46

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsdcPuHeDsw6v_13project_model.exit46: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECsdcPuHeDsw6v_13project_model.exit, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  call void @llvm.experimental.noalias.scope.decl(metadata !2995)
  %i.cy = load ptr, ptr %i.j, align 8, !alias.scope !2998, !nonnull !10, !noundef !10
  %i.cz = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !2998
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.ax, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsdcPuHeDsw6v_13project_model.exit46

bb.ax:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEEECsdcPuHeDsw6v_13project_model.exit
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #29
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread6thread6ThreadECsdcPuHeDsw6v_13project_model.exit46

.body30.thread:                                   ; preds = %bb.ap, %bb.ak, %.body30, %bb.az
  %eh.lpad-body3158 = phi { ptr, i32 } [ %i.ce, %.body30 ], [ %i.dd, %bb.az ], [ %i.cc, %bb.ak ], [ %i.cn, %bb.ap ] ; 2 uses
  %i.db = atomicrmw sub ptr %i.bo, i64 1 release, align 8, !noalias !2999
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.ay, label %.thread

bb.ay:                                            ; preds = %.body30.thread
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketINtNtCshzWfHUSfYae_4core6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEE9drop_slowCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.h) #29
          to label %.thread unwind label %bb.ba

bb.az:                                            ; preds = %bb.ah
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCsdcPuHeDsw6v_13project_model9workspaceNtB1J_16ProjectWorkspace11load_inline0s_0INtNtB4_6result6ResultNtNtCsgIpRO4v45SJ_7base_db6target10TargetDataNtCsdRkQxkTxnTp_6anyhow5ErrorEEs_0EB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g) #26
          to label %.body30.thread unwind label %bb.ba

bb.ba:                                            ; preds = %bb.bd, %bb.ay, %bb.x, %bb.be, %bb.bb, %bb.az
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bb:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscAsMj0W7j8b_3std6thread9spawnhook15ChildSpawnHooksECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #26
          to label %.thread unwind label %bb.ba

.body35:                                          ; preds = %.thread, %bb.x
  br i1 %.sroa.018.1, label %.body35..body35.thread_crit_edge, label %.thread68

.body35..body35.thread_crit_edge:                 ; preds = %.body35
  %.pre = load ptr, ptr %i.k, align 8, !alias.scope !3004
  br label %.body35.thread

.body35.thread:                                   ; preds = %.body35..body35.thread_crit_edge, %bb.n, %bb.o, %bb.f, %.split.thread
  %i.df = phi ptr [ %5, %.split.thread ], [ %.pre, %.body35..body35.thread_crit_edge ], [ %5, %bb.o ], [ %5, %bb.n ], [ %5, %bb.f ] ; 2 uses
  %.pn2867 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn.pn, %.body35..body35.thread_crit_edge ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.019.165 = phi i1 [ %.sroa.019.0.ph, %.split.thread ], [ false, %.body35..body35.thread_crit_edge ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3004)
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit, label %bb.bc

bb.bc:                                            ; preds = %.body35.thread
  %i.dh = atomicrmw sub ptr %i.df, i64 1 release, align 8, !noalias !3007
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataE9drop_slowCs89JjGp7luZU_4stdx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #29
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit unwind label %bb.ba

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.bd, %.body35.thread, %bb.bc
  br i1 %.sroa.019.165, label %bb.be, label %.thread68

.thread68:                                        ; preds = %.body35, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit, %bb.be
  %.pn286671 = phi { ptr, i32 } [ %.pn2867, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit ], [ %.pn2867, %bb.be ], [ %.pn.pn, %.body35 ]
  resume { ptr, i32 } %.pn286671

bb.be:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCscAsMj0W7j8b_3std6thread6scoped9ScopeDataEEECsdcPuHeDsw6v_13project_model.exit
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %.thread68 unwind label %bb.ba
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3012)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !3015

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !447, !alias.scope !3012, !noundef !10 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3012
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !3012
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !3012
  %i.j = load i64, ptr %i.a, align 8, !range !442, !noalias !3012, !noundef !10
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !3016, !noalias !3012, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !3012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #30
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !3012, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3012
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !3012
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !3012
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvXs4_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerpINtB8_24SpecPolymorphicIterCloneKpE10spec_clone14clone_into_newINtNtBe_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB2l_EEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(16) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 8 uses
  %.sroa.510 = alloca [40 x i8], align 8          ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !noundef !10  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = sub nuw i64 %i.e, %i.c
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3zipRSINtNtB8_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1e_EEQSINtNtNtB8_3mem12maybe_uninit11MaybeUninitBP_EECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef %i.g, ptr noalias nofree noundef nonnull align 8 %i.i, i64 noundef %3)
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.j = icmp ult i64 %.sroa.54.0.copyload, %.sroa.7.0.copyload
  br i1 %i.j, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.lr.ph, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.thread

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.lr.ph: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.43.0.copyload) ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.510.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.lr.ph, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit
  %.sroa.54.025 = phi i64 [ %.sroa.54.0.copyload, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.lr.ph ], [ %i.n, %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit ] ; 3 uses
  %i.n = add i64 %.sroa.54.025, 1                 ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.54.025 ; 3 uses
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %.sroa.43.0.copyload, i64 %.sroa.54.025 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !473, !alias.scope !3017, !noalias !3020, !noundef !10
  %.not.i = icmp eq i64 %i.r, -1
  br i1 %.not.i, label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3022
  call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  call void @llvm.experimental.noalias.scope.decl(metadata !3026)
  call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  %i.s = load i64, ptr %i.o, align 8, !alias.scope !3033, !noalias !3034, !noundef !10
  store i64 %i.s, ptr %i.a, align 16, !alias.scope !3035, !noalias !3036
  call void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q), !noalias !3020
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  invoke void @_RNvXs4_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %_RNvYTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB5_ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit.i unwind label %bb.c, !noalias !3020

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a) #26
          to label %bb.e unwind label %bb.d, !noalias !3020

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27, !noalias !3020
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.u

_RNvYTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB5_ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit.i: ; preds = %bb.b
  %4 = load <2 x i64>, ptr %i.a, align 16, !noalias !3017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.510.0..sroa_idx11, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3022
  br label %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit

_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit: ; preds = %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit, %_RNvYTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB5_ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit.i
  %5 = phi <2 x i64> [ %4, %_RNvYTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB5_ENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit.i ], [ <i64 undef, i64 -1>, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit ]
  store <2 x i64> %5, ptr %i.p, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.510, i64 40, i1 false)
  %i.w = load i64, ptr %i.m, align 8, !noundef !10
  %i.x = add i64 %i.w, 1
  store i64 0, ptr %2, align 8
  store i64 %i.x, ptr %i.m, align 8
  %exitcond.not = icmp eq i64 %i.n, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.thread, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtBb_6option6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEB1L_EEEINtBZ_7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitB1m_EEEINtB5_7ZipImplBW_B2z_E4nextCsdcPuHeDsw6v_13project_model.exit.thread: ; preds = %_RNvXs4_NtCshzWfHUSfYae_4core6optionINtB5_6OptionTTjNtCsixqsALXRULh_14cargo_metadata9PackageIdEBN_EENtNtB7_5clone5Clone5cloneCsdcPuHeDsw6v_13project_model.exit, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCsdRkQxkTxnTp_6anyhow7context3extINtNtCsbSS6DM8SDEO_5alloc4sync3ArcNtNtNtCshzWfHUSfYae_4core2io5error5ErrorENtB3_8StdError11ext_contextNtNtBJ_6string6StringECsdcPuHeDsw6v_13project_model(ptr noundef nonnull %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.c, align 8
  %i.d = invoke noundef align 8 ptr @_RNvNtCsdRkQxkTxnTp_6anyhow7nightly21request_ref_backtrace(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @36)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !3015

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.b, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCscAsMj0W7j8b_3std9backtraceNtB5_9Backtrace7capture(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.f = call noundef nonnull ptr @_RINvMNtCsdRkQxkTxnTp_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCsbSS6DM8SDEO_5alloc6string6StringINtNtB19_4sync3ArcNtNtNtCshzWfHUSfYae_4core2io5error5ErrorEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  ret ptr %i.f

bb.g:                                             ; preds = %bb.d, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

.critedge:                                        ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %lpad.thr_comm

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  call void @llvm.experimental.noalias.scope.decl(metadata !3040)
  %i.h = load ptr, ptr %i.c, align 8, !alias.scope !3043, !nonnull !10, !noundef !10
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !3043
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtCshzWfHUSfYae_4core2io5error5ErrorE9drop_slowCsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #29
          to label %.critedge unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs3l_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataENtB9_11Deserialize11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB2X_4read7StrReadEEB1n_(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXNvNtCsdcPuHeDsw6v_13project_model12project_jsons_1__NtB5_15ProjectJsonDataNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeQINtNtCs8yjYO7b73r2_10serde_json2de12DeserializerNtNtB2i_4read7StrReadEEB7_(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0)
  %i.c = load i64, ptr %i.b, align 8, !range !473, !noundef !10
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !297, !noundef !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3044
  %i.g = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #28, !noalias !3044 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE3newBI_.exit, !prof !327

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #30
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #26
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE3newBI_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.g, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE3newBI_.exit, %bb.b
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE3newBI_.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsdcPuHeDsw6v_13project_model12project_json15ProjectJsonDataE3newBI_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs3l_NtNtCsjQbM3MYDIrM_10serde_core2de5implsINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionENtB9_11Deserialize11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = alloca [328 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvXNvNtCsixqsALXRULh_14cargo_metadata10diagnostics3_1__NtB5_28DiagnosticSpanMacroExpansionNtNtCsjQbM3MYDIrM_10serde_core2de11Deserialize11deserializeINtNtNtNtCsaUNMb2qFvZy_5serde7private2de7content19ContentDeserializerNtNtCs8yjYO7b73r2_10serde_json5error5ErrorEECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0)
  %i.c = load i64, ptr %i.b, align 8, !range !473, !noundef !10
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !297, !noundef !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.a, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !3047
  %i.g = call noundef align 8 dereferenceable_or_null(328) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef 8) #28, !noalias !3047 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionE3newCsdcPuHeDsw6v_13project_model.exit, !prof !327

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #30
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionECsdcPuHeDsw6v_13project_model(ptr noalias nofree noundef nonnull align 8 dereferenceable(328) %i.a) #26
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionE3newCsdcPuHeDsw6v_13project_model.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.g, ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionE3newCsdcPuHeDsw6v_13project_model.exit, %bb.b
  %.sroa.3.0 = phi ptr [ %i.f, %bb.b ], [ %i.g, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionE3newCsdcPuHeDsw6v_13project_model.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxNtNtCsixqsALXRULh_14cargo_metadata10diagnostic28DiagnosticSpanMacroExpansionE3newCsdcPuHeDsw6v_13project_model.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.k = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCsdcPuHeDsw6v_13project_model9workspaceNtB1c_16ProjectWorkspace10load_cargos_00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomEEs_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuE9call_once6vtableB1e_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
end_hunk_0
