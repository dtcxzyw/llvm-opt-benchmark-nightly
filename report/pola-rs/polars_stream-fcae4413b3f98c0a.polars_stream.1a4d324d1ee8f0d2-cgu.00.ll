Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_stream-fcae4413b3f98c0a.polars_stream.1a4d324d1ee8f0d2-cgu.00?download=true
inline.NumInlined: 20395
inline.NumDeleted: 5965
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB17_14DynamicGroupByNtB19_11ComputeNode5spawns0_0NCNCINvMs7_B7_NtB7_9TaskScope10spawn_taskB10_E00NtB7_12TaskMetadataEINtB5_8RunnableB3D_E3runB1b_:bb.a
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258091
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel6SenderTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB2G_xEB3i_EEEB1Y_(ptr noalias noundef align 8 dereferenceable(48) %i.tt) #33
          to label %.body99.i.i.i.i unwind label %bb.dr, !dbg !258091, !noalias !257569

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit105.i.i.i.i: ; preds = %bb.fu, %bb.ft
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258091 ; 5 uses
  invoke void @_RNvXs3_NtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channelINtB5_6SenderTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB28_xEB2K_EENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropB1q_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.tu)
          to label %bb.ga unwind label %bb.fy, !dbg !258131, !noalias !257569

bb.fy:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit105.i.i.i.i
  %i.tv = landingpad { ptr, i32 }
          cleanup
          catch ptr null                          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257680), !dbg !258131
  call void @llvm.experimental.noalias.scope.decl(metadata !257681), !dbg !258132
  %i.tw = load ptr, ptr %i.tu, align 8, !dbg !258133, !alias.scope !257682, !noalias !257568, !nonnull !5424, !noundef !5424
  %i.tx = atomicrmw add ptr %i.tw, i64 -1 release, align 8, !dbg !258134, !noalias !257683
  %i.ty = icmp eq i64 %i.tx, 1, !dbg !258135
  br i1 %i.ty, label %bb.fz, label %.body99.i.i.i.i, !dbg !258135

bb.fz:                                            ; preds = %bb.fy
  fence acquire, !dbg !258136
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel16DistributorInnerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB7_3vec3VecAmj2_EIB2R_xEB3c_EEE9drop_slowB29_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.tu) #32
          to label %.body99.i.i.i.i unwind label %bb.gc, !dbg !258137, !noalias !257569

bb.ga:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream4pipe12PortReceiverEBK_.exit105.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !257684), !dbg !258131
  call void @llvm.experimental.noalias.scope.decl(metadata !257685), !dbg !258138
  %i.tz = load ptr, ptr %i.tu, align 8, !dbg !258139, !alias.scope !257686, !noalias !257568, !nonnull !5424, !noundef !5424
  %i.ua = atomicrmw add ptr %i.tz, i64 -1 release, align 8, !dbg !258140, !noalias !257687
  %i.ub = icmp eq i64 %i.ua, 1, !dbg !258141
  br i1 %i.ub, label %bb.gb, label %.thread107, !dbg !258141

bb.gb:                                            ; preds = %bb.ga
  fence acquire, !dbg !258142
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel16DistributorInnerTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtB7_3vec3VecAmj2_EIB2R_xEB3c_EEE9drop_slowB29_(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.tu) #32
          to label %.thread107 unwind label %bb.fp, !dbg !258143, !noalias !257569

bb.gc:                                            ; preds = %bb.fz
  %i.uc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !258131, !noalias !257569
  unreachable, !dbg !258131

bb.gd:                                            ; preds = %bb.ge, %bb.ao
  store i8 0, ptr %i.ii, align 4, !dbg !257843, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !257843, !noalias !257568
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 205, !dbg !257843 ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !dbg !257843, !range !5427, !noalias !257568, !noundef !5424
  %i.uf = trunc nuw i8 %i.ue to i1, !dbg !257843
  br i1 %i.uf, label %bb.gg, label %bb.gf, !dbg !257843

bb.ge:                                            ; preds = %bb.ao
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.k) #33
          to label %bb.gd unwind label %bb.dr, !dbg !257843, !noalias !257569

bb.gf:                                            ; preds = %bb.gg, %bb.gd
  store i8 0, ptr %i.ud, align 1, !dbg !257843, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !257843, !noalias !257568
  %i.ug = getelementptr inbounds nuw i8, ptr %0, i64 206, !dbg !257843 ; 2 uses
  %i.uh = load i8, ptr %i.ug, align 2, !dbg !257843, !range !5427, !noalias !257568, !noundef !5424
  %i.ui = trunc nuw i8 %i.uh to i1, !dbg !257843
  br i1 %i.ui, label %bb.gi, label %bb.gh, !dbg !257843

bb.gg:                                            ; preds = %bb.gd
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.l) #33
          to label %bb.gf unwind label %bb.dr, !dbg !257843, !noalias !257569

bb.gh:                                            ; preds = %bb.gi, %bb.gf
  store i8 0, ptr %i.ug, align 2, !dbg !257843, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !257843, !noalias !257568
  br label %bb.eo, !dbg !257843

bb.gi:                                            ; preds = %bb.gf
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(24) %i.m) #33
          to label %bb.gh unwind label %bb.dr, !dbg !257843, !noalias !257569

bb.gj:                                            ; preds = %bb.eo
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 16 dereferenceable(160) %i.x) #33
          to label %bb.ew unwind label %bb.dr, !dbg !257848, !noalias !257569

bb.gk:                                            ; preds = %.body75.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs1LHh8CLbVkQ_11polars_core5frame9dataframe9DataFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aq) #33
          to label %.body71.i.i.i.i unwind label %bb.dr, !dbg !257849, !noalias !257569

bb.gl:                                            ; preds = %bb.gm, %.body71.i.i.i.i
  store i8 0, ptr %i.mp, align 1, !dbg !257850, !noalias !257568
  %i.uj = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !257850
  %i.uk = load i8, ptr %i.uj, align 8, !dbg !257850, !range !5427, !noalias !257568, !noundef !5424
  %i.ul = trunc nuw i8 %i.uk to i1, !dbg !257850
  br i1 %i.ul, label %bb.gn, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit112.i.i.i.i, !dbg !257850

bb.gm:                                            ; preds = %.body71.i.i.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !257850
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCsidoPH4Qgqxm_12polars_async10primitives10wait_group9WaitTokenEECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(8) %i.um) #33
          to label %bb.gl unwind label %bb.dr, !dbg !257850, !noalias !257569

bb.gn:                                            ; preds = %bb.gl
  %i.un = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !257850 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257688), !dbg !257850
  call void @llvm.experimental.noalias.scope.decl(metadata !257689), !dbg !258144
  call void @llvm.experimental.noalias.scope.decl(metadata !257690), !dbg !258145
  %i.uo = load ptr, ptr %i.un, align 8, !dbg !258146, !alias.scope !257691, !noalias !257568, !nonnull !5424, !noundef !5424
  %i.up = atomicrmw add ptr %i.uo, i64 -1 release, align 8, !dbg !258147, !noalias !257692
  %i.uq = icmp eq i64 %i.up, 1, !dbg !258148
  br i1 %i.uq, label %bb.go, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit112.i.i.i.i, !dbg !258148

bb.go:                                            ; preds = %bb.gn
  fence acquire, !dbg !258149
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtCs2mZqlW55729_12polars_utils12relaxed_cell11RelaxedCellbEE9drop_slowCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.un) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit112.i.i.i.i unwind label %bb.dr, !dbg !258150, !noalias !257569

bb.gp:                                            ; preds = %bb.gq, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit112.i.i.i.i
  store i8 0, ptr %i.jb, align 1, !dbg !257850, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !257850, !noalias !257568
  br label %bb.bl, !dbg !257862

bb.gq:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2g09Ig8GZd6_13polars_stream6morsel11SourceTokenEBK_.exit112.i.i.i.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCskAlUH1kY1DR_10polars_ooc11spill_frame10SpillFrameECs2g09Ig8GZd6_13polars_stream(ptr noalias noundef align 8 dereferenceable(16) %i.aa) #33
          to label %bb.gp unwind label %bb.dr, !dbg !257850, !noalias !257569

bb.gr:                                            ; preds = %bb.fw
  %i.ur = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !258091
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async10primitives19distributor_channel6SenderTNtNtCs2g09Ig8GZd6_13polars_stream6morsel6MorselINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EIB2G_xEB3i_EEEB1Y_(ptr noalias noundef align 8 dereferenceable(48) %i.ur) #33
          to label %.body99.i.i.i.i unwind label %bb.dr, !dbg !258091, !noalias !257569

bb.gs:                                            ; preds = %bb.n, %bb.m, %bb.j
  %i.us = landingpad { ptr, i32 }
          catch ptr null, !dbg !258151
  br label %.body, !dbg !258151

.body:                                            ; preds = %.body99.i.i.i.i, %bb.gs
  %eh.lpad-body = phi { ptr, i32 } [ %i.us, %bb.gs ], [ %.pn50.i.i.i.i, %.body99.i.i.i.i ]
  %i.ut = extractvalue { ptr, i32 } %eh.lpad-body, 0, !dbg !258151
  %i.uu = invoke { ptr, ptr } @_RNvNvNtCsh8eZTKRCwoO_3std9panicking12catch_unwind7cleanup(ptr noundef %i.ut)
          to label %.thread94 unwind label %bb.gt, !dbg !258152 ; 2 uses

bb.gt:                                            ; preds = %.body
  %i.uv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking19panic_cannot_unwind() #34, !dbg !258153
  unreachable, !dbg !258153

.thread94:                                        ; preds = %.body
  %i.uw = extractvalue { ptr, ptr } %i.uu, 0, !dbg !258152
  %i.ux = extractvalue { ptr, ptr } %i.uu, 1, !dbg !258152 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ux) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16), !dbg !258154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !258155
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258156
  %i.uy = insertelement <2 x ptr> poison, ptr %i.uw, i64 0
  %i.uz = insertelement <2 x ptr> %i.uy, ptr %i.ux, i64 1
  br label %bb.gv, !dbg !258156

.thread101:                                       ; preds = %bb.bh, %bb.br, %bb.an
  %.sink.i.i.i.i.ph = phi i8 [ 5, %bb.an ], [ 4, %bb.br ], [ 3, %bb.bh ]
  store i8 %.sink.i.i.i.i.ph, ptr %i.ax, align 8, !dbg !258157, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.sroa.12), !dbg !258157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !258157, !noalias !257567
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.4), !dbg !258158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16), !dbg !258154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !258155
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258156
  br label %bb.gw, !dbg !258156

.thread107:                                       ; preds = %bb.gb, %bb.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i.i.i.i.sroa.12, i64 48, i1 false), !dbg !258159
  store i8 1, ptr %i.ax, align 8, !dbg !258157, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.sroa.12), !dbg !258157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !258157, !noalias !257567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.i.sroa.4, i64 48, i1 false), !dbg !258160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.4), !dbg !258158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, i64 48, i1 false), !dbg !258161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16), !dbg !258154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !258155
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258156
  br label %bb.gy, !dbg !258156

bb.gu:                                            ; preds = %bb.fm, %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.14.i.i.i.i.sroa.12, i64 48, i1 false), !dbg !258159
  store i8 1, ptr %i.ax, align 8, !dbg !258157, !noalias !257568
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.sroa.12), !dbg !258157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !258157, !noalias !257567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.8.i.sroa.4, i64 48, i1 false), !dbg !258160
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.sroa.4), !dbg !258158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16, i64 48, i1 false), !dbg !258161
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16), !dbg !258154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !dbg !258155
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258156
  switch i64 %.sroa.0218.3.i.i.i.i, label %bb.gy [
    i64 20, label %bb.gv
    i64 19, label %bb.gw
  ], !dbg !258156

bb.gv:                                            ; preds = %.thread94, %bb.gu
  %i.va = phi <2 x ptr> [ %i.uz, %.thread94 ], [ %i.rx, %bb.gu ] ; 3 uses
  %i.vb = extractelement <2 x ptr> %i.va, i64 0, !dbg !258162 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vb) ]
  %i.vc = extractelement <2 x ptr> %i.va, i64 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vc) ]
  %1 = shufflevector <2 x ptr> %i.va, <2 x ptr> <ptr poison, ptr undef>, <2 x i32> <i32 1, i32 3>, !dbg !258163
  br label %bb.gz, !dbg !258162

bb.gw:                                            ; preds = %.thread101, %bb.gu
  %i.vd = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1, !dbg !258164
  %i.ve = extractvalue { i8, i1 } %i.vd, 1, !dbg !258164
  br i1 %i.ve, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit40, label %bb.gx, !dbg !258165, !prof !5571

bb.gx:                                            ; preds = %bb.gw
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit40 unwind label %.thread, !dbg !258166

bb.gy:                                            ; preds = %.thread107, %bb.gu
  %.sroa.0218.4.i.i.i.i112 = phi i64 [ 18, %.thread107 ], [ %.sroa.0218.3.i.i.i.i, %bb.gu ]
  %i.vf = phi <2 x ptr> [ undef, %.thread107 ], [ %i.rx, %bb.gu ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13, i64 48, i1 false), !dbg !258167
  %i.vg = inttoptr i64 %.sroa.0218.4.i.i.i.i112 to ptr, !dbg !258168
  br label %bb.gz, !dbg !258169

bb.gz:                                            ; preds = %bb.gy, %bb.gv
  %.sroa.7.0 = phi ptr [ %i.vb, %bb.gv ], [ %i.vg, %bb.gy ], !dbg !258163 ; 2 uses
  %.sroa.09.0 = phi i64 [ 3, %bb.gv ], [ 2, %bb.gy ], !dbg !258163 ; 2 uses
  %i.vh = phi <2 x ptr> [ %1, %bb.gv ], [ %i.vf, %bb.gy ], !dbg !258163 ; 3 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1J_14DynamicGroupByNtB1L_11ComputeNode5spawns0_0EEB1N_(ptr noundef nonnull align 8 %i.aj)
          to label %bb.hd unwind label %bb.hc, !dbg !258170

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit40: ; preds = %bb.gw, %bb.gx
  %i.vi = load ptr, ptr %i.ad, align 8, !dbg !258171, !nonnull !5424, !noundef !5424
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 808, !dbg !257696
  %i.vk = invoke noundef zeroext i1 @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState24reschedule_after_running(ptr noundef nonnull %i.vj)
          to label %bb.ha unwind label %.thread, !dbg !258172

bb.ha:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit40
  br i1 %i.vk, label %_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit, label %.critedge, !dbg !257696

_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit: ; preds = %bb.ha
  %i.vl = load ptr, ptr %i.ad, align 8, !dbg !258173, !nonnull !5424, !noundef !5424 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 760, !dbg !257701
  %i.vn = load ptr, ptr %i.vm, align 8, !dbg !257701, !nonnull !5424, !align !6370, !noundef !5424
  call void @_RNvMs6_NtCsidoPH4Qgqxm_12polars_async8executorNtB5_8Executor13schedule_task(ptr noundef nonnull align 128 %i.vn, ptr noundef nonnull %i.vl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1477), !dbg !258174, !inline_history !4733
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !257731
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !257722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit: ; preds = %bb.hg, %bb.hf, %bb.hb, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit, %_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %bb.hb ], [ false, %_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit ], [ %.sroa.0.1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit ], [ true, %bb.hf ], [ true, %bb.hg ], !dbg !258163
  ret i1 %.sroa.0.0, !dbg !258176

.critedge:                                        ; preds = %bb.ha
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258175
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !257731
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit, !dbg !257722

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit: ; preds = %bb.g, %bb.f, %.critedge
  %.sroa.0.1 = phi i1 [ false, %.critedge ], [ true, %bb.f ], [ true, %bb.g ], !dbg !258177 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257704), !dbg !257722
  call void @llvm.experimental.noalias.scope.decl(metadata !257705), !dbg !258178
  %i.vo = load ptr, ptr %i.ad, align 8, !dbg !258179, !alias.scope !257706, !nonnull !5424, !noundef !5424
  %i.vp = atomicrmw add ptr %i.vo, i64 -1 release, align 8, !dbg !258180, !noalias !257706
  %i.vq = icmp eq i64 %i.vp, 1, !dbg !258181
  br i1 %i.vq, label %bb.hb, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !258181

bb.hb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit
  fence acquire, !dbg !258182
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1F_14DynamicGroupByNtB1H_11ComputeNode5spawns0_0NCNCINvMs7_BL_NtBL_9TaskScope10spawn_taskB1y_E00NtBL_12TaskMetadataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #32, !dbg !258183
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !258183

bb.hc:                                            ; preds = %bb.gz
  %i.vr = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.09.0, ptr %i.aj, align 8, !dbg !258170
  store ptr %.sroa.7.0, ptr %i.aq, align 8, !dbg !258170
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !258170
  %i.vs = extractelement <2 x ptr> %i.vh, i64 0, !dbg !258170
  store ptr %i.vs, ptr %.sroa.913.0..sroa_idx, align 8, !dbg !258170
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !258170
  %i.vt = extractelement <2 x ptr> %i.vh, i64 1, !dbg !258170
  store ptr %i.vt, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !258170
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !258170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6, i64 48, i1 false), !dbg !258170
  br label %bb.hi, !dbg !258175

bb.hd:                                            ; preds = %bb.gz
  store i64 %.sroa.09.0, ptr %i.aj, align 8, !dbg !258170
  store ptr %.sroa.7.0, ptr %i.aq, align 8, !dbg !258170
  %.sroa.913.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !258170
  store <2 x ptr> %i.vh, ptr %.sroa.913.0..sroa_idx14, align 8, !dbg !258170
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !258170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx16.sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.sroa.6, i64 48, i1 false), !dbg !258170
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.6), !dbg !258175
  %i.vu = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1, !dbg !258184
  %i.vv = extractvalue { i8, i1 } %i.vu, 1, !dbg !258184
  br i1 %i.vv, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit43, label %bb.he, !dbg !258185, !prof !5571

bb.he:                                            ; preds = %bb.hd
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit43 unwind label %.thread, !dbg !258186

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit43: ; preds = %bb.hd, %bb.he
  %i.vw = load ptr, ptr %i.ad, align 8, !dbg !258187, !nonnull !5424, !noundef !5424
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 736, !dbg !257710
  invoke void @_RNvMCs5H8kdUbdX50_12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.vx)
          to label %bb.hf unwind label %.thread, !dbg !258188

bb.hf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !257731
  call void @llvm.experimental.noalias.scope.decl(metadata !257713), !dbg !257722
  call void @llvm.experimental.noalias.scope.decl(metadata !257714), !dbg !258189
  %i.vy = load ptr, ptr %i.ad, align 8, !dbg !258190, !alias.scope !257715, !nonnull !5424, !noundef !5424
  %i.vz = atomicrmw add ptr %i.vy, i64 -1 release, align 8, !dbg !258191, !noalias !257715
  %i.wa = icmp eq i64 %i.vz, 1, !dbg !258192
  br i1 %i.wa, label %bb.hg, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !258192

bb.hg:                                            ; preds = %bb.hf
  fence acquire, !dbg !258193
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1F_14DynamicGroupByNtB1H_11ComputeNode5spawns0_0NCNCINvMs7_BL_NtBL_9TaskScope10spawn_taskB1y_E00NtBL_12TaskMetadataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #32, !dbg !258194
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !258194

bb.hh:                                            ; preds = %bb.d
  unreachable

bb.hi:                                            ; preds = %bb.h, %bb.hc
  %.pn.ph = phi { ptr, i32 } [ %i.vr, %bb.hc ], [ %i.ap, %bb.h ] ; 2 uses
  %i.wb = cmpxchg ptr %i.ae, i8 1, i8 0 release monotonic, align 1, !dbg !258195
  %i.wc = extractvalue { i8, i1 } %i.wb, 1, !dbg !258195
  br i1 %i.wc, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit46, label %bb.hj, !dbg !258196, !prof !5571

bb.hj:                                            ; preds = %bb.hi
  invoke void @_RNvMs1_NtCs3mtJKb2XD8V_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.ae, i1 noundef zeroext false)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit46 unwind label %bb.hk, !dbg !258197

bb.hk:                                            ; preds = %bb.hl, %bb.hj
  %i.wd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #34, !dbg !258198
  unreachable, !dbg !258198

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit48: ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit46, %bb.hl
  resume { ptr, i32 } %.pn.pn80, !dbg !258198

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit46: ; preds = %bb.hi, %bb.hj, %.thread
  %.pn.pn80 = phi { ptr, i32 } [ %i.ah, %.thread ], [ %.pn.ph, %bb.hi ], [ %.pn.ph, %bb.hj ]
  call void @llvm.experimental.noalias.scope.decl(metadata !257716), !dbg !257722
  call void @llvm.experimental.noalias.scope.decl(metadata !257717), !dbg !258199
  %i.we = load ptr, ptr %i.ad, align 8, !dbg !258200, !alias.scope !257718, !nonnull !5424, !noundef !5424
  %i.wf = atomicrmw add ptr %i.we, i64 -1 release, align 8, !dbg !258201, !noalias !257718
  %i.wg = icmp eq i64 %i.wf, 1, !dbg !258202
  br i1 %i.wg, label %bb.hl, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit48, !dbg !258202

bb.hl:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsdjtJf7E0q1U_8lock_api5mutex10MutexGuardNtNtCs3mtJKb2XD8V_11parking_lot9raw_mutex8RawMutexINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task8TaskDataNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB3h_14DynamicGroupByNtB3j_11ComputeNode5spawns0_0EEEB3l_.exit46
  fence acquire, !dbg !258203
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1F_14DynamicGroupByNtB1H_11ComputeNode5spawns0_0NCNCINvMs7_BL_NtBL_9TaskScope10spawn_taskB1y_E00NtBL_12TaskMetadataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit48 unwind label %bb.hk, !dbg !258204
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB17_14DynamicGroupByNtB19_11ComputeNode5spawns0_0NCNCINvMs7_B7_NtB7_9TaskScope10spawn_taskB10_E00NtB7_12TaskMetadataEINtB5_8RunnableB3D_E8metadataB1b_(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #8 !dbg !258205 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752, !dbg !258206
  ret ptr %i.a, !dbg !258207
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsidoPH4Qgqxm_12polars_async8executor4taskINtB5_4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB17_14DynamicGroupByNtB19_11ComputeNode5spawns0_0NCNCINvMs7_B7_NtB7_9TaskScope10spawn_taskB10_E00NtB7_12TaskMetadataEINtB5_8RunnableB3D_E8scheduleB1b_(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !258208 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 808, !dbg !258245
  %i.c = invoke noundef zeroext i1 @_RNvMNtNtCsidoPH4Qgqxm_12polars_async8executor4taskNtB2_9TaskState4wake(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.b, !dbg !258246

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258236), !dbg !258247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258237), !dbg !258248
  %i.e = load ptr, ptr %i.a, align 8, !dbg !258249, !alias.scope !258238, !nonnull !5424, !noundef !5424
  %i.f = atomicrmw add ptr %i.e, i64 -1 release, align 8, !dbg !258250, !noalias !258238
  %i.g = icmp eq i64 %i.f, 1, !dbg !258251
  br i1 %i.g, label %bb.c, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit, !dbg !258251

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !258252
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1F_14DynamicGroupByNtB1H_11ComputeNode5spawns0_0NCNCINvMs7_BL_NtBL_9TaskScope10spawn_taskB1y_E00NtBL_12TaskMetadataEE9drop_slowB1J_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #32
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit unwind label %bb.i, !dbg !258253

bb.d:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.e, label %_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit, !dbg !258245

bb.e:                                             ; preds = %bb.d
  %i.h = atomicrmw add ptr %0, i64 1 monotonic, align 8, !dbg !258254
  %i.i = icmp slt i64 %i.h, 0, !dbg !258255
  br i1 %i.i, label %bb.h, label %bb.g, !dbg !258255

_RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit: ; preds = %._RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit_crit_edge, %bb.d
  %i.j = phi ptr [ %.pre, %._RNCNCINvMs7_NtCsidoPH4Qgqxm_12polars_async8executorNtBa_9TaskScope10spawn_taskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB1l_14DynamicGroupByNtB1n_11ComputeNode5spawns0_0E00B1p_.exit_crit_edge ], [ %0, %bb.d ], !dbg !258256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258242), !dbg !258247
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258243), !dbg !258257
  %i.k = atomicrmw add ptr %i.j, i64 -1 release, align 8, !dbg !258258, !noalias !258244
  %i.l = icmp eq i64 %i.k, 1, !dbg !258259
  br i1 %i.l, label %bb.f, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc4sync3ArcINtNtNtCsidoPH4Qgqxm_12polars_async8executor4task4TaskNCNvXs_NtNtCs2g09Ig8GZd6_13polars_stream5nodes16dynamic_group_byNtB2d_14DynamicGroupByNtB2f_11ComputeNode5spawns0_0NCNCINvMs7_B1j_NtB1j_9TaskScope10spawn_taskB26_E00NtB1j_12TaskMetadataEEEB2h_.exit2, !dbg !258259
end_hunk_0
