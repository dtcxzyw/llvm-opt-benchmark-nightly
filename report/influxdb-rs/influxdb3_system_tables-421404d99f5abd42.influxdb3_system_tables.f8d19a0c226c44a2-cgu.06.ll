Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_system_tables-421404d99f5abd42.influxdb3_system_tables.f8d19a0c226c44a2-cgu.06?download=true
inline.NumInlined: 1653
inline.NumDeleted: 754
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvXsV_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
  %.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body24.i.i.i, %.body23.i.i.i ], [ %i.qq, %bb.gr ], [ %i.qm, %bb.gn ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query16ExceptSelectItemEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(88) %i.bb) #32
          to label %.body.i.i.i unwind label %bb.ha, !noalias !3040

bb.gr:                                            ; preds = %bb.gm
  %i.qq = landingpad { ptr, i32 }
          cleanup
  br label %.body20.i.i.i

bb.gs:                                            ; preds = %.noexc19.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !noalias !3054
  %i.qr = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qr, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !3054
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !3049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.gq

bb.gt:                                            ; preds = %bb.gq
  %i.qs = getelementptr inbounds nuw i8, ptr %.val, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3037
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaNmiEuYuYZf_9sqlparser3ast5query14IdentWithAliasENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qs)
          to label %bb.gz unwind label %bb.gx, !noalias !3040

bb.gu:                                            ; preds = %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3058
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.qo)
          to label %.noexc22.i.i.i unwind label %bb.gx, !noalias !3040

.noexc22.i.i.i:                                   ; preds = %bb.gu
  %i.qt = getelementptr inbounds nuw i8, ptr %.val, i64 280
  %i.qu = load i32, ptr %i.qt, align 8, !range !2710, !alias.scope !3060, !noalias !3061, !noundef !8
  %i.qv = getelementptr inbounds nuw i8, ptr %.val, i64 248
  %i.qw = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.qv, i64 32, i1 false), !noalias !3061
  %i.qx = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store i32 %i.qu, ptr %i.qx, align 8, !noalias !3058
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3058
  %i.qy = getelementptr inbounds nuw i8, ptr %.val, i64 288
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qy)
          to label %bb.gy unwind label %bb.gv, !noalias !3061

bb.gv:                                            ; preds = %.noexc22.i.i.i
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaNmiEuYuYZf_9sqlparser3ast5IdentECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(64) %i.aq) #32
          to label %.body23.i.i.i unwind label %bb.gw, !noalias !3061

bb.gw:                                            ; preds = %bb.gv
  %i.ra = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3061
  unreachable

bb.gx:                                            ; preds = %bb.gu, %bb.gt
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %.body23.i.i.i

.body23.i.i.i:                                    ; preds = %bb.gx, %bb.gv
  %eh.lpad-body24.i.i.i = phi { ptr, i32 } [ %i.rb, %bb.gx ], [ %i.qz, %bb.gv ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7fnekraeopg_15datafusion_expr4expr24PlannedReplaceSelectItemEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(48) %i.ba) #32
          to label %.body20.i.i.i unwind label %bb.ha, !noalias !3040

bb.gy:                                            ; preds = %.noexc22.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.val, i64 344
  %i.rd = load i32, ptr %i.rc, align 8, !range !2710, !alias.scope !3060, !noalias !3061, !noundef !8
  %i.re = getelementptr inbounds nuw i8, ptr %.val, i64 312
  %.sroa.0.24..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.24..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.re, i64 32, i1 false), !noalias !3061
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false), !noalias !3058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !3058
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aq, align 8, !noalias !3062
  %.sroa.425.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.0..sroa_idx.i.i.i, i64 56, i1 false), !noalias !3031
  %.sroa.425.64..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.425.i.i.i, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.425.64..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0.i.i.i.i, i64 56, i1 false), !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !3058
  br label %bb.he

bb.gz:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3037
  br label %bb.he

bb.ha:                                            ; preds = %.body23.i.i.i, %.body20.i.i.i, %.body.i.i.i, %bb.ga
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3040
  unreachable

bb.hb:                                            ; preds = %bb.ft
  %i.rg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ga
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.rg, %bb.hb ], [ %.pn.pn.pn.i.i.i, %bb.ga ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.pm, i64 noundef 352, i64 noundef 8) #30
  br label %.body

bb.hd:                                            ; preds = %bb.fs
  %i.rh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.hc, %bb.hd
  %eh.lpad-body = phi { ptr, i32 } [ %i.rh, %bb.hd ], [ %eh.lpad-body.i, %bb.hc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslWccy9wMl4f_17datafusion_common15table_reference14TableReferenceEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(56) %i.ci) #32
          to label %common.resume unwind label %bb.fm

bb.he:                                            ; preds = %bb.gz, %bb.gy, %bb.gq
  %.sroa.5.sroa.4.0.i.i.i = phi i32 [ undef, %bb.gq ], [ undef, %bb.gz ], [ %i.rd, %bb.gy ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.qp, %bb.gq ], [ -1, %bb.gz ], [ %.sroa.0.0.copyload.i.i.i, %bb.gy ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !3039
  %.sroa.0.160..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.160..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false), !noalias !3039
  %.sroa.0.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false), !noalias !3039
  %.sroa.0.112..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.112..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.ba, i64 48, i1 false), !noalias !3039
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3037
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !3037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.pm, ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0.i.i, i64 224, i1 false), !noalias !3031
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 224
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !3031
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.8.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.425.i.i.i, i64 112, i1 false), !noalias !3031
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.pm, i64 344
  store i32 %.sroa.5.sroa.4.0.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !3031
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.425.i.i.i)
  %i.ri = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ri, ptr noundef nonnull align 8 dereferenceable(56) %i.ci, i64 56, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.pm, ptr %i.rj, align 16
  store i64 31, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.fj

bb.hf:                                            ; preds = %bb.fg
  store ptr %i.ow, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  invoke fastcc void @_RNvXs7_NtCslWccy9wMl4f_17datafusion_common6columnNtB5_6ColumnNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(104) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %1)
          to label %bb.hj unwind label %bb.hh

bb.hg:                                            ; preds = %bb.fg
  tail call void @llvm.trap()
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.rk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rl = atomicrmw sub ptr %i.ow, i64 1 release, align 8, !noalias !3063
  %i.rm = icmp eq i64 %i.rl, 1
  br i1 %i.rm, label %bb.hi, label %common.resume

bb.hi:                                            ; preds = %bb.hh
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsj9JzdWj4GcM_12arrow_schema5field5FieldE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cg)
          to label %common.resume unwind label %bb.fm

bb.hj:                                            ; preds = %bb.hf
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.ow, ptr %i.rn, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.cf, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.fj
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 48) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !3068
  %i.n = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !3068 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !3068
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !3068
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3076)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !3083, !noalias !3084, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !3085
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3083, !noalias !3084, !noundef !8 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !3086
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.at, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1R_EEENCNvMse_B1y_B1v_15clone_from_impl0EECslmsipRFvlgQ_23influxdb3_system_tables(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #32
          to label %.body unwind label %bb.m, !noalias !3083

bb.j:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !3089
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -768 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [48 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3085
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -48
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %.noexc.i.i unwind label %bb.i, !noalias !3085

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i unwind label %bb.k, !noalias !3085

bb.k:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #32
          to label %.body.i.i unwind label %bb.l, !noalias !3085

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3085
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 48                ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [48 x i8], ptr %.sroa.0.0, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !3085
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3085
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3085
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringB1i_EEECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(32) %i.b) #32
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringB3_ENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringBP_EE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit
  store i64 %i.x, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3084, !noalias !3083
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3083, !noalias !3084, !noundef !8
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3084, !noalias !3083
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.p:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !8 ; 6 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %i.d, 1                          ; 2 uses
  %i.g = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 144) ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.i = extractvalue { i64, i1 } %i.g, 0         ; 3 uses
  %i.j = add i64 %i.d, 17                         ; 2 uses
  %i.k = add i64 %i.j, %i.i                       ; 5 uses
  %i.l = icmp ult i64 %i.k, %i.i
  %i.m = icmp ugt i64 %i.k, 9223372036854775792
  %or.cond.i.i = or i1 %i.l, %i.m
  br i1 %or.cond.i.i, label %bb.e, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i, !prof !17

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i: ; preds = %bb.d
  %2 = icmp eq i64 %i.k, 0
  br i1 %2, label %bb.h, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !3092
  %i.n = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !3092 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !3092
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i
  %i.q = tail call { i64, i64 } @_RNvMNtCsgQfI1edjipl_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.k), !noalias !3092
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn.i = phi { i64, i64 } [ %i.q, %bb.f ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.7.0.ph.i = extractvalue { i64, i64 } %.pn.i, 0 ; 2 uses
  %.sroa.12.0.ph.i = extractvalue { i64, i64 } %.pn.i, 1
  %.pre = add i64 %.sroa.7.0.ph.i, 17
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit

bb.h:                                             ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i, %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i
  %.sroa.0.0.i.i9.i.i = phi ptr [ %i.n, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i9.i.i, i64 %i.i
  %i.s = icmp ult i64 %i.d, 8
  %i.t = lshr i64 %i.f, 3
  %i.u = mul nuw nsw i64 %i.t, 7
  %.sroa.07.0.i.i = select i1 %i.s, i64 %i.d, i64 %i.u
  br label %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit

_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %bb.g, %bb.h
  %.pre-phi = phi i64 [ %.pre, %bb.g ], [ %i.j, %bb.h ]
  %.sroa.7.0 = phi i64 [ %.sroa.12.0.ph.i, %bb.g ], [ %.sroa.07.0.i.i, %bb.h ]
  %.sroa.5.0 = phi i64 [ %.sroa.7.0.ph.i, %bb.g ], [ %i.d, %bb.h ]
  %.sroa.0.0 = phi ptr [ null, %bb.g ], [ %i.r, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.0, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 0, ptr %.sroa.9.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3105)
  %i.v = load ptr, ptr %1, align 8, !alias.scope !3107, !noalias !3108, !nonnull !8, !noundef !8 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0, ptr nonnull align 1 %i.v, i64 %.pre-phi, i1 false), !noalias !3109
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !3107, !noalias !3108, !noundef !8 ; 3 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit
  %.val3.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !3110
  %i.z = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ad = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.i:                                             ; preds = %.loopexit.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.at, %bb.k ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown10scopeguard10ScopeGuardTjQINtNtBG_3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEENCNvMse_B1y_B1v_15clone_from_impl0EECslmsipRFvlgQ_23influxdb3_system_tables(i64 %.sroa.012.028.i.i, ptr nonnull align 8 dereferenceable(32) %i.b) #32
          to label %.body unwind label %bb.m, !noalias !3107

bb.j:                                             ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i, %.lr.ph.i.i
  %.sroa.012.028.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.bb, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ]
  %.sroa.013.027.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %.sroa.013.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.6.026.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.814.025.i.i = phi i16 [ %i.aa, %.lr.ph.i.i ], [ %i.an, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ] ; 2 uses
  %.sroa.1015.024.i.i = phi i64 [ %i.x, %.lr.ph.i.i ], [ %i.aq, %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i ]
  %.not12.i.i.i = icmp eq i16 %.sroa.814.025.i.i, 0
  br i1 %.not12.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j, %.lr.ph.i.i.i
  %i.af = phi ptr [ %i.aj, %.lr.ph.i.i.i ], [ %.sroa.6.026.i.i, %bb.j ] ; 2 uses
  %i.ag = phi ptr [ %i.ai, %.lr.ph.i.i.i ], [ %.sroa.013.027.i.i, %bb.j ]
  %.val10.i.i.i = load <16 x i8>, ptr %i.af, align 16, !noalias !3113
  %i.ah = icmp sgt <16 x i8> %.val10.i.i.i, splat (i8 -1)
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -2304 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.ah to i16   ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.j
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.026.i.i, %bb.j ], [ %i.aj, %.lr.ph.i.i.i ]
  %.sroa.013.1.i.i = phi ptr [ %.sroa.013.027.i.i, %bb.j ], [ %i.ai, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.814.025.i.i, %bb.j ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.ak = add i16 %.lcssa.i.i.i, -1
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.am = zext nneg i16 %i.al to i64
  %i.an = and i16 %i.ak, %.lcssa.i.i.i
  %i.ao = sub nsw i64 0, %i.am
  %i.ap = getelementptr inbounds [144 x i8], ptr %.sroa.013.1.i.i, i64 %i.ao ; 3 uses
  %i.aq = add i64 %.sroa.1015.024.i.i, -1         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3109
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -144
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 16 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ar)
          to label %.noexc.i.i unwind label %bb.i, !noalias !3109

.noexc.i.i:                                       ; preds = %.loopexit.i.i
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -112
  invoke fastcc void @_RNvXsV_NtCs7fnekraeopg_15datafusion_expr4exprNtB5_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.ac, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.as)
          to label %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i unwind label %bb.k, !noalias !3109

bb.k:                                             ; preds = %.noexc.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.a) #32
          to label %.body.i.i unwind label %bb.l, !noalias !3109

bb.l:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3109
  unreachable

_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i: ; preds = %.noexc.i.i
  %i.av = ptrtoint ptr %i.ap to i64
  %i.aw = sub i64 %i.ad, %i.av
  %i.ax = sdiv exact i64 %i.aw, 144               ; 2 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds [144 x i8], ptr %.sroa.0.0, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.ba, ptr noundef nonnull align 16 dereferenceable(144) %i.a, i64 144, i1 false), !noalias !3109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3109
  %i.bb = add nsw i64 %i.ax, 1
  %i.bc = icmp eq i64 %i.aq, 0
  br i1 %i.bc, label %.loopexit, label %bb.j

bb.m:                                             ; preds = %.body.i.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3109
  unreachable

bb.n:                                             ; preds = %.loopexit, %bb.b
  ret void

.body:                                            ; preds = %.body.i.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECslmsipRFvlgQ_23influxdb3_system_tables.exit unwind label %bb.o

.loopexit:                                        ; preds = %_RNvYTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCslmsipRFvlgQ_23influxdb3_system_tables.exit.i.i, %_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEE17new_uninitializedCslmsipRFvlgQ_23influxdb3_system_tables.exit
  store i64 %i.x, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3108, !noalias !3107
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !3107, !noalias !3108, !noundef !8
  store i64 %i.bf, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3108, !noalias !3107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.o:                                             ; preds = %.body
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs7fnekraeopg_15datafusion_expr4expr4ExprEEECslmsipRFvlgQ_23influxdb3_system_tables.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsc_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB5_14PrimitiveArrayNtNtB9_5types10UInt16TypeEINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCs6OdVU8oGBWI_10arrow_data4data9ArrayDataE4fromCslmsipRFvlgQ_23influxdb3_system_tables(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(136) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.j, ptr %i.e, align 8, !noalias !3116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 7, i64 24, i1 false), !noalias !3119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 7, i64 24, i1 false), !noalias !3119
  %i.k = invoke fastcc noundef zeroext i1 @_RNvXs5_NtCsj9JzdWj4GcM_12arrow_schema8datatypeNtB5_8DataTypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.d unwind label %bb.f, !noalias !3122

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE13is_compatibleCslmsipRFvlgQ_23influxdb3_system_tables.exit.i unwind label %bb.e, !noalias !3122

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.l, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.b) #32
          to label %.body unwind label %bb.f, !noalias !3122

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !3122
  unreachable

_RNvMs_NtNtCs6ePPILGZvJ2_11arrow_array5array15primitive_arrayINtB4_14PrimitiveArrayNtNtB8_5types10UInt16TypeE13is_compatibleCslmsipRFvlgQ_23influxdb3_system_tables.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3119
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj9JzdWj4GcM_12arrow_schema8datatype8DataTypeECslmsipRFvlgQ_23influxdb3_system_tables(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %.noexc unwind label %bb.k

end_hunk_0
