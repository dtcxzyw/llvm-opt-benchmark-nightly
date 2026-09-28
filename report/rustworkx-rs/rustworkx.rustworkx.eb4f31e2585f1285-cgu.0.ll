Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67644
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout19graph_spring_layout:bb.a
  %i.au = mul i64 %i.am, 6364136223846793005
  %i.av = add i64 %i.au, -6812164046247290893     ; 4 uses
  %i.aw = lshr i64 %i.av, 45
  %i.ax = lshr i64 %i.av, 27
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i64 %i.av, 59
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = tail call noundef i32 @llvm.fshr.i32(i32 %i.az, i32 %i.az, i32 range(i32 0, 32) %i.bb)
  %i.bd = mul i64 %i.av, 6364136223846793005
  %i.be = add i64 %i.bd, -6812164046247290893     ; 4 uses
  %i.bf = lshr i64 %i.be, 45
  %i.bg = lshr i64 %i.be, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = lshr i64 %i.be, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = tail call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 range(i32 0, 32) %i.bk)
  %i.bm = mul i64 %i.be, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !136912
  store i32 %i.ab, ptr %i.i, align 4, !noalias !136912
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !136912
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !136912
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !136911

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !136912
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !136911
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !136911

.thread.i:                                        ; preds = %bb.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i, %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ 0, %bb.ev ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ %.sroa.061.3.ph.i, %bb.ev ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.agl, %bb.ew ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body391.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body391.i, %.body390.i ], [ %.pn182.ph.i, %bb.ev ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %i.cn = icmp eq ptr %10, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !136911, !noundef !67
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %10)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ej

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %10) #59, !noalias !136911
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
  %.sroa.063.1.i = phi i8 [ 1, %bb.d ], [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.l ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136913)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136914)
  %i.cr = load i32, ptr %i.m, align 16, !range !76, !alias.scope !136914, !noalias !136915, !noundef !67
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.l, label %bb.m, !prof !71

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !136916
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !range !180, !alias.scope !136914, !noalias !136915, !noundef !67
  store i32 %i.cu, ptr %i.j, align 4, !noalias !136916
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1088) #60
          to label %.noexc.i unwind label %bb.j, !noalias !136911

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cw = load i128, ptr %i.cv, align 16, !alias.scope !136914, !noalias !136915, !noundef !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cy = load i128, ptr %i.cx, align 16, !alias.scope !136914, !noalias !136915, !noundef !67
  store i128 %i.cw, ptr %i.n, align 16, !alias.scope !136913, !noalias !136917
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i128 %i.cy, ptr %i.cz, align 16, !alias.scope !136913, !noalias !136917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !136911
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.537.sroa.0.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !136906, !noalias !136910
  %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.537.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !136906, !noalias !136910
  br i1 %.not175.i, label %bb.o, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.n
  %i.da = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc229.i unwind label %bb.j, !noalias !136911 ; 0 uses

.noexc229.i:                                      ; preds = %bb.o
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136918
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc229.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !136911

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.p, %.noexc229.i, %bb.n
  %.sroa.9.sroa.6.0.i = phi i64 [ %.sroa.537.sroa.4.sroa.4.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.537.sroa.0.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 4 uses
  %.sroa.0418.0.i = phi ptr [ %i.p, %bb.n ], [ @111, %bb.p ], [ @111, %.noexc229.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val199.i = load ptr, ptr %i.dd, align 8, !alias.scope !136905, !noalias !136919, !nonnull !67, !noundef !67 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val200.i = load i64, ptr %i.de, align 8, !alias.scope !136905, !noalias !136919, !noundef !67 ; 6 uses
  %.idx = shl nuw nsw i64 %.val200.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr %.val199.i, i64 %.idx ; 12 uses
  %.not.i.i605 = icmp eq i64 %.val200.i, 0
  br i1 %.not.i.i605, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.val199.i, %i.dh
  br i1 %.not.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %bb.q
  %i.dg = phi ptr [ %i.dh, %bb.q ], [ %i.df, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !136920, !noundef !67
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.not.i.i.i, label %bb.q, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.val199.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 4
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !136921
  %i.dp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !136921 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.do) #61
          to label %.noexc231.i unwind label %bb.ew, !noalias !136911

.noexc231.i:                                      ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_NtB9_10UndirectedENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ds = load i128, ptr %i.dr, align 16, !noalias !136922, !noundef !67 ; 2 uses
  %.promoted.i = load i128, ptr %i.n, align 16, !noalias !136922
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i128 [ %.promoted.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %18, %bb.s ]
  %i.du = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.s ] ; 3 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = mul i128 %i.dt, 47026247687942121848144207491837523525
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.du
  %i.dx = add i128 %i.dw, %i.ds                   ; 4 uses
  %i.dy = lshr i128 %i.dx, 122
  %i.dz = trunc nuw nsw i128 %i.dy to i64
  %i.ea = lshr i128 %i.dx, 64
  %i.eb = xor i128 %i.ea, %i.dx
  %i.ec = trunc i128 %i.eb to i64                 ; 2 uses
  %i.ed = call noundef i64 @llvm.fshr.i64(i64 %i.ec, i64 %i.ec, i64 %i.dz)
  %17 = mul i128 %i.dx, 47026247687942121848144207491837523525
  %18 = add i128 %17, %i.ds                       ; 5 uses
  %i.ee = lshr i128 %18, 122
  %i.ef = trunc nuw nsw i128 %i.ee to i64
  %i.eg = lshr i128 %18, 64
  %i.eh = xor i128 %i.eg, %18
  %i.ei = trunc i128 %i.eh to i64                 ; 2 uses
  %i.ej = call noundef i64 @llvm.fshr.i64(i64 %i.ei, i64 %i.ei, i64 %i.ef)
  %i.ek = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %i.el = insertelement <2 x i64> %i.ek, i64 %i.ej, i64 1
  %i.em = lshr <2 x i64> %i.el, splat (i64 12)
  %i.en = or disjoint <2 x i64> %i.em, splat (i64 4607182418800017408)
  %i.eo = bitcast <2 x i64> %i.en to <2 x double>
  %i.ep = fadd nnan <2 x double> %i.eo, splat (double -1.000000e+00)
  store <2 x double> %i.ep, ptr %16, align 8, !noalias !136923
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i, label %bb.s

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i: ; preds = %bb.s
  store i128 %18, ptr %i.n, align 16, !noalias !136922
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i: ; preds = %bb.q, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i
  %i.eq = phi ptr [ %i.dp, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ inttoptr (i64 8 to ptr), %bb.q ] ; 26 uses
  %.sroa.49.0.i.i940.i = phi i64 [ %i.dn, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ 0, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.q ] ; 34 uses
  %.val24.i.i.i.i = load <16 x i8>, ptr %.sroa.0418.0.i, align 16, !noalias !136924
  %i.er = icmp eq i64 %.sroa.7.0.i, 0             ; 3 uses
  br i1 %i.er, label %bb.u, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i
  %i.es = mul i64 %.sroa.7.0.i, 24                ; 2 uses
  %i.et = add i64 %i.es, 24
  %i.eu = icmp ult i64 %i.et, -15
  call void @llvm.assume(i1 %i.eu)
  %i.ev = and i64 %i.es, -16                      ; 2 uses
  %i.ew = add i64 %i.ev, 32                       ; 2 uses
  %i.ex = add i64 %.sroa.7.0.i, 17
  %i.ey = add i64 %i.ex, %i.ew                    ; 3 uses
  %i.ez = icmp uge i64 %i.ey, %i.ew
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp ult i64 %i.ey, 9223372036854775793
  call void @llvm.assume(i1 %i.fa)
  %i.fb = sub i64 -32, %i.ev
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0418.0.i, i64 %i.fb
  br label %bb.u

bb.t:                                             ; preds = %bb.z, %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.u:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i
  %.sroa.513.0.i.i.i = phi ptr [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.fc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sroa.412.0.i.i.i = phi i64 [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.ey, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i = phi i64 [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph10UndirectedEs_0EE9from_iterB2N_.exit.i ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.9.sroa.6.0.i, 0
  br i1 %i.fe, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ff = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.fg = bitcast <16 x i1> %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0418.0.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.es, %.lr.ph.preheader.i
  %.sroa.11.0720.i = phi ptr [ %.sroa.11.1.i, %bb.es ], [ %.sroa.0418.0.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.15.0719.i = phi ptr [ %.sroa.15.1.i, %bb.es ], [ %i.fh, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.19.0718.i = phi i16 [ %i.agg, %bb.es ], [ %i.fg, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.23.0717.i = phi i64 [ %i.age, %bb.es ], [ %.sroa.9.sroa.6.0.i, %.lr.ph.preheader.i ]
  %.not10.i.i = icmp eq i16 %.sroa.19.0718.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %i.fi = phi ptr [ %i.fm, %.lr.ph.i.i ], [ %.sroa.15.0719.i, %.lr.ph.i ] ; 2 uses
  %i.fj = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %.sroa.11.0720.i, %.lr.ph.i ]
  %.val68.i.i = load <16 x i8>, ptr %i.fi, align 16, !noalias !136925
  %i.fk = icmp sgt <16 x i8> %.val68.i.i, splat (i8 -1)
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -384 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.fk to i16     ; 2 uses
  %.not.i237.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i237.i, label %.lr.ph.i.i, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.es, %bb.u
  %i.fn = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond582.i = or i1 %i.er, %i.fn
  br i1 %or.cond582.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !136926
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.w:                                             ; preds = %bb.et
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond583.i = or i1 %i.er, %i.fp
  br i1 %or.cond583.i, label %bb.ev, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !136927
  br label %bb.ev

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0719.i, %.lr.ph.i ], [ %i.fm, %.lr.ph.i.i ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0720.i, %.lr.ph.i ], [ %i.fl, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.19.0718.i, %.lr.ph.i ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr inbounds [24 x i8], ptr %.sroa.11.1.i, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -24
  %.sroa.0151.0.copyload.i = load i64, ptr %i.fu, align 8, !noalias !136911 ; 3 uses
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ft, i64 -16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5152.0..sroa_idx.i, i64 16, i1 false), !noalias !136911
  %i.fv = icmp ult i64 %.sroa.0151.0.copyload.i, %.sroa.49.0.i.i940.i
  br i1 %i.fv, label %bb.es, label %bb.et

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.v, %._crit_edge.i
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.544.sroa.0.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !alias.scope !136907, !noalias !136909
  %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.544.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !136907, !noalias !136909
  %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.544.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !136907, !noalias !136909
  %.not177.i = icmp eq ptr %i.o, null
  br i1 %.not177.i, label %bb.y, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.fw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc241.i unwind label %bb.t, !noalias !136911 ; 2 uses

.noexc241.i:                                      ; preds = %bb.y
  %i.fx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136928
  %i.fy = icmp eq i8 %i.fx, 2
  br i1 %i.fy, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.z, !prof !77

bb.z:                                             ; preds = %.noexc241.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.t, !noalias !136911

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.z, %.noexc241.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.12458.sroa.8.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.5.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.fw, %.noexc241.i ], [ %i.fw, %bb.z ] ; 2 uses
  %.sroa.12458.sroa.7.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.4.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ]
  %.sroa.9.0.i = phi i64 [ %.sroa.544.sroa.0.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ] ; 25 uses
  %.sroa.0451.0.i = phi ptr [ %i.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ @111, %.noexc241.i ], [ @111, %bb.z ] ; 9 uses
  %.fr219.i.i = freeze i64 %.sroa.12458.sroa.7.0.i ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !136905, !noalias !136919, !noundef !67
  %i.gb = uitofp i64 %i.ga to double
  %i.gc = call double @llvm.sqrt.f64(double %i.gb)
  %i.gd = fdiv double 1.000000e+00, %i.gc
  %i.ge = trunc nuw i64 %4 to i1
  %.sroa.046.0.i = select i1 %i.ge, double %5, double %i.gd ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !136911
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gg = load i64, ptr %i.gf, align 8, !alias.scope !136905, !noalias !136919, !noundef !67
  %i.gh = shl i64 %i.gg, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !136929)
  %i.gi = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc243.i unwind label %bb.ab, !noalias !136911

.noexc243.i:                                      ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !136930
  %i.gk = icmp eq i8 %i.gj, 2
  br i1 %i.gk, label %.noexc244.i, label %bb.aa, !prof !77

bb.aa:                                            ; preds = %.noexc243.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc244.i unwind label %bb.ab, !noalias !136911

.noexc244.i:                                      ; preds = %bb.aa, %.noexc243.i
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.l, i64 noundef 24, i64 noundef %i.gh) #64
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc244.i, %bb.aa, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ac:                                            ; preds = %.noexc244.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store i64 %i.gi, ptr %i.gm, align 8, !alias.scope !136931, !noalias !136911
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !alias.scope !136905, !noalias !136919, !nonnull !67, !noundef !67 ; 10 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !136905, !noalias !136919, !noundef !67 ; 9 uses
  %i.gr = getelementptr inbounds nuw [24 x i8], ptr %i.go, i64 %i.gq
  %.not.i249.i = icmp eq ptr %10, null            ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge742, %bb.ac
  %i.gu = phi ptr [ %i.go, %bb.ac ], [ %i.gw, %.backedge742 ] ; 4 uses
  %i.gv = icmp eq ptr %i.gu, %i.gr
  br i1 %i.gv, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gx = load ptr, ptr %i.gu, align 8, !alias.scope !136932, !noalias !136933, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i, label %.backedge742, label %bb.af

.backedge742:                                     ; preds = %bb.ae, %bb.el
  br label %bb.ad

.thread569.i:                                     ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread946.i, %bb.el, %bb.ag
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.af:                                            ; preds = %bb.ae
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !136932, !noalias !136933 ; 2 uses
  %.sroa.7472.12.extract.shift.i = lshr i64 %.sroa.02.0.copyload.i.i.i, 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout21digraph_spring_layout:bb.a
  %i.au = mul i64 %i.am, 6364136223846793005
  %i.av = add i64 %i.au, -6812164046247290893     ; 4 uses
  %i.aw = lshr i64 %i.av, 45
  %i.ax = lshr i64 %i.av, 27
  %i.ay = xor i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = lshr i64 %i.av, 59
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = tail call noundef i32 @llvm.fshr.i32(i32 %i.az, i32 %i.az, i32 range(i32 0, 32) %i.bb)
  %i.bd = mul i64 %i.av, 6364136223846793005
  %i.be = add i64 %i.bd, -6812164046247290893     ; 4 uses
  %i.bf = lshr i64 %i.be, 45
  %i.bg = lshr i64 %i.be, 27
  %i.bh = xor i64 %i.bf, %i.bg
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %i.bj = lshr i64 %i.be, 59
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  %i.bl = tail call noundef i32 @llvm.fshr.i32(i32 %i.bi, i32 %i.bi, i32 range(i32 0, 32) %i.bk)
  %i.bm = mul i64 %i.be, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = tail call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = tail call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 3 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = tail call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !137517
  store i32 %i.ab, ptr %i.i, align 4, !noalias !137517
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 %i.at, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 %i.bc, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 %i.bl, ptr %.sroa.8.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 %i.bu, ptr %.sroa.9.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i32 %i.cd, ptr %.sroa.10.0..sroa_idx.i.i, align 4, !noalias !137517
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  store i32 %i.cm, ptr %.sroa.11.0..sroa_idx.i.i, align 4, !noalias !137517
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.i)
          to label %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !137516

_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !137517
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !137516
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.m)
          to label %bb.k unwind label %bb.j, !noalias !137516

.thread.i:                                        ; preds = %bb.ew, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i, %bb.ev, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %.body390.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i, %bb.j
  %.sroa.063.0.i = phi i8 [ %.sroa.063.1.i, %bb.j ], [ 0, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ 0, %bb.ev ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.sroa.061.0.i = phi i8 [ 1, %bb.j ], [ 1, %bb.ew ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ 0, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ 0, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ 0, %.body390.i ], [ %.sroa.061.3.ph.i, %bb.ev ], [ %.sroa.061.3.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %.pn186.i = phi { ptr, i32 } [ %i.cq, %bb.j ], [ %i.agm, %bb.ew ], [ %eh.lpad-body.i291.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit415.i ], [ %eh.lpad-body.i291.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i297.i ], [ %eh.lpad-body.i.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3set7HashSetjEECskcxRuJ53GpR_9rustworkx.exit411.i ], [ %eh.lpad-body.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i ], [ %eh.lpad-body391.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i ], [ %eh.lpad-body391.i, %.body390.i ], [ %.pn182.ph.i, %bb.ev ], [ %.pn182.ph.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i403.i ] ; 3 uses
  %i.cn = icmp eq ptr %11, null
  br i1 %i.cn, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.co = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCsi0YPOvDEjiZ_4pyo38internal5state12ATTACH_COUNT0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i.i.i.i1 = load i64, ptr %i.co, align 8, !noalias !137516, !noundef !67
  %i.cp = icmp sgt i64 %.val.i.i.i.i.i1, 0
  br i1 %i.cp, label %bb.i, label %bb.h, !prof !125

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNvXsB_NtCsi0YPOvDEjiZ_4pyo38instanceINtB7_2PypENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4drop9drop_slow(ptr noundef nonnull %11)
          to label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit unwind label %bb.ej

bb.i:                                             ; preds = %bb.g
  call void @_Py_DecRef(ptr noundef nonnull %11) #59, !noalias !137516
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB12_5types3any5PyAnyEEECskcxRuJ53GpR_9rustworkx.exit

bb.j:                                             ; preds = %bb.p, %bb.o, %bb.l, %bb.f, %bb.e, %bb.d
  %.sroa.063.1.i = phi i8 [ 1, %bb.d ], [ 0, %bb.o ], [ 0, %bb.p ], [ 1, %bb.f ], [ 1, %bb.e ], [ 1, %bb.l ]
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137518)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137519)
  %i.cr = load i32, ptr %i.m, align 16, !range !76, !alias.scope !137519, !noalias !137520, !noundef !67
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %bb.l, label %bb.m, !prof !71

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !137521
  %i.ct = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !range !180, !alias.scope !137519, !noalias !137520, !noundef !67
  store i32 %i.cu, ptr %i.j, align 4, !noalias !137521
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1088) #60
          to label %.noexc.i unwind label %bb.j, !noalias !137516

.noexc.i:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cw = load i128, ptr %i.cv, align 16, !alias.scope !137519, !noalias !137520, !noundef !67
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.cy = load i128, ptr %i.cx, align 16, !alias.scope !137519, !noalias !137520, !noundef !67
  store i128 %i.cw, ptr %i.n, align 16, !alias.scope !137518, !noalias !137522
  %i.cz = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i128 %i.cy, ptr %i.cz, align 16, !alias.scope !137518, !noalias !137522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !137516
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng13seed_from_u64CskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.537.sroa.0.0.copyload.i = load i64, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !137511, !noalias !137515
  %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.537.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.537.sroa.4.sroa.4.0..sroa.537.sroa.4.0..sroa.537.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !137511, !noalias !137515
  br i1 %.not175.i, label %bb.o, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.o:                                             ; preds = %bb.n
  %i.da = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc229.i unwind label %bb.j, !noalias !137516 ; 0 uses

.noexc229.i:                                      ; preds = %bb.o
  %i.db = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137523
  %i.dc = icmp eq i8 %i.db, 2
  br i1 %i.dc, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.p, !prof !77

bb.p:                                             ; preds = %.noexc229.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.j, !noalias !137516

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.p, %.noexc229.i, %bb.n
  %.sroa.9.sroa.6.0.i = phi i64 [ %.sroa.537.sroa.4.sroa.4.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ %.sroa.537.sroa.0.0.copyload.i, %bb.n ], [ 0, %bb.p ], [ 0, %.noexc229.i ] ; 4 uses
  %.sroa.0418.0.i = phi ptr [ %i.p, %bb.n ], [ @111, %bb.p ], [ @111, %.noexc229.i ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val199.i = load ptr, ptr %i.dd, align 8, !alias.scope !137510, !noalias !137524, !nonnull !67, !noundef !67 ; 12 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val200.i = load i64, ptr %i.de, align 8, !alias.scope !137510, !noalias !137524, !noundef !67 ; 6 uses
  %.idx = shl nuw nsw i64 %.val200.i, 4
  %i.df = getelementptr inbounds nuw i8, ptr %.val199.i, i64 %.idx ; 12 uses
  %.not.i.i605 = icmp eq i64 %.val200.i, 0
  br i1 %.not.i.i605, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

bb.q:                                             ; preds = %.lr.ph
  %.not.i.i = icmp eq ptr %.val199.i, %i.dh
  br i1 %.not.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %bb.q
  %i.dg = phi ptr [ %i.dh, %bb.q ], [ %i.df, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ]
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -16 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !137525, !noundef !67
  %.not.i.not.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not.i.not.i.i.i, label %bb.q, label %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i

_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %.lr.ph
  %i.di = ptrtoint ptr %i.dh to i64
  %i.dj = ptrtoint ptr %.val199.i to i64
  %i.dk = sub nuw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.dk, 4
  %i.dm = and i64 %i.dl, 4294967295               ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, 1                ; 2 uses
  %i.do = shl nuw nsw i64 %i.dn, 4                ; 2 uses
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !137526
  %i.dp = call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.do, i64 noundef range(i64 1, -9223372036854775807) 8) #59, !noalias !137526 ; 3 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.r, label %.lr.ph.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.do) #61
          to label %.noexc231.i unwind label %bb.ew, !noalias !137516

.noexc231.i:                                      ; preds = %bb.r
  unreachable

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvXsC_NtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graphINtB5_11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB1k_5types3any5PyAnyEB1f_ENtNtB9_5visit13NodeIndexable10node_boundCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ds = load i128, ptr %i.dr, align 16, !noalias !137527, !noundef !67 ; 2 uses
  %.promoted.i = load i128, ptr %i.n, align 16, !noalias !137527
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i.i.i.i.i.i
  %i.dt = phi i128 [ %.promoted.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %19, %bb.s ]
  %i.du = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dv, %bb.s ] ; 3 uses
  %i.dv = add nuw nsw i64 %i.du, 1
  %i.dw = mul i128 %i.dt, 47026247687942121848144207491837523525
  %17 = getelementptr inbounds nuw [16 x i8], ptr %i.dp, i64 %i.du
  %i.dx = add i128 %i.dw, %i.ds                   ; 4 uses
  %i.dy = lshr i128 %i.dx, 122
  %i.dz = trunc nuw nsw i128 %i.dy to i64
  %i.ea = lshr i128 %i.dx, 64
  %i.eb = xor i128 %i.ea, %i.dx
  %i.ec = trunc i128 %i.eb to i64                 ; 2 uses
  %i.ed = call noundef i64 @llvm.fshr.i64(i64 %i.ec, i64 %i.ec, i64 %i.dz)
  %18 = mul i128 %i.dx, 47026247687942121848144207491837523525
  %19 = add i128 %18, %i.ds                       ; 5 uses
  %i.ee = lshr i128 %19, 122
  %i.ef = trunc nuw nsw i128 %i.ee to i64
  %i.eg = lshr i128 %19, 64
  %i.eh = xor i128 %i.eg, %19
  %i.ei = trunc i128 %i.eh to i64                 ; 2 uses
  %i.ej = call noundef i64 @llvm.fshr.i64(i64 %i.ei, i64 %i.ei, i64 %i.ef)
  %i.ek = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %i.el = insertelement <2 x i64> %i.ek, i64 %i.ej, i64 1
  %i.em = lshr <2 x i64> %i.el, splat (i64 12)
  %i.en = or disjoint <2 x i64> %i.em, splat (i64 4607182418800017408)
  %i.eo = bitcast <2 x i64> %i.en to <2 x double>
  %i.ep = fadd nnan <2 x double> %i.eo, splat (double -1.000000e+00)
  store <2 x double> %i.ep, ptr %17, align 8, !noalias !137528
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.du, %i.dm
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i, label %bb.s

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i: ; preds = %bb.s
  store i128 %19, ptr %i.n, align 16, !noalias !137527
  br label %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i

_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i: ; preds = %bb.q, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i
  %i.eq = phi ptr [ %i.dp, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ inttoptr (i64 8 to ptr), %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ inttoptr (i64 8 to ptr), %bb.q ] ; 26 uses
  %.sroa.49.0.i.i940.i = phi i64 [ %i.dn, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.loopexit.i ], [ 0, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjAdj2_ENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %bb.q ] ; 34 uses
  %.val24.i.i.i.i = load <16 x i8>, ptr %.sroa.0418.0.i, align 16, !noalias !137529
  %i.er = icmp eq i64 %.sroa.7.0.i, 0             ; 3 uses
  br i1 %i.er, label %bb.u, label %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i

_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i: ; preds = %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i
  %i.es = mul i64 %.sroa.7.0.i, 24                ; 2 uses
  %i.et = add i64 %i.es, 24
  %i.eu = icmp ult i64 %i.et, -15
  call void @llvm.assume(i1 %i.eu)
  %i.ev = and i64 %i.es, -16                      ; 2 uses
  %i.ew = add i64 %i.ev, 32                       ; 2 uses
  %i.ex = add i64 %.sroa.7.0.i, 17
  %i.ey = add i64 %i.ex, %i.ew                    ; 3 uses
  %i.ez = icmp uge i64 %i.ey, %i.ew
  call void @llvm.assume(i1 %i.ez)
  %i.fa = icmp ult i64 %i.ey, 9223372036854775793
  call void @llvm.assume(i1 %i.fa)
  %i.fb = sub i64 -32, %i.ev
  %i.fc = getelementptr inbounds i8, ptr %.sroa.0418.0.i, i64 %i.fb
  br label %bb.u

bb.t:                                             ; preds = %bb.z, %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.u:                                             ; preds = %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i
  %.sroa.513.0.i.i.i = phi ptr [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.fc, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sroa.412.0.i.i.i = phi i64 [ undef, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ %i.ey, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 4 uses
  %.sink.i.i.i.i = phi i64 [ 0, %_RNvXNtNtCs87CvPiUlf0m_5alloc3vec14spec_from_iterINtB4_3VecAdj2_EINtB2_12SpecFromIterBU_INtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtNtB1w_3ops5range5RangejENCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6spring13spring_layoutNtCs68Jln09rRqb_8petgraph8DirectedEs_0EE9from_iterB2N_.exit.i ], [ 16, %_RNvMs1_NtCs3sCKvcUjPpt_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i ] ; 2 uses
  %i.fe = icmp eq i64 %.sroa.9.sroa.6.0.i, 0
  br i1 %i.fe, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.u
  %i.ff = icmp sgt <16 x i8> %.val24.i.i.i.i, splat (i8 -1)
  %i.fg = bitcast <16 x i1> %i.ff to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0418.0.i, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.es, %.lr.ph.preheader.i
  %.sroa.11.0720.i = phi ptr [ %.sroa.11.1.i, %bb.es ], [ %.sroa.0418.0.i, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.15.0719.i = phi ptr [ %.sroa.15.1.i, %bb.es ], [ %i.fh, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.19.0718.i = phi i16 [ %i.agh, %bb.es ], [ %i.fg, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.23.0717.i = phi i64 [ %i.agf, %bb.es ], [ %.sroa.9.sroa.6.0.i, %.lr.ph.preheader.i ]
  %.not10.i.i = icmp eq i16 %.sroa.19.0718.i, 0
  br i1 %.not10.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %i.fi = phi ptr [ %i.fm, %.lr.ph.i.i ], [ %.sroa.15.0719.i, %.lr.ph.i ] ; 2 uses
  %i.fj = phi ptr [ %i.fl, %.lr.ph.i.i ], [ %.sroa.11.0720.i, %.lr.ph.i ]
  %.val68.i.i = load <16 x i8>, ptr %i.fi, align 16, !noalias !137530
  %i.fk = icmp sgt <16 x i8> %.val68.i.i, splat (i8 -1)
  %i.fl = getelementptr inbounds i8, ptr %i.fj, i64 -384 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.fk to i16     ; 2 uses
  %.not.i237.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i237.i, label %.lr.ph.i.i, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.es, %bb.u
  %i.fn = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond582.i = or i1 %i.er, %i.fn
  br i1 %or.cond582.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !137531
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i

bb.w:                                             ; preds = %bb.et
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = icmp eq i64 %.sroa.412.0.i.i.i, 0
  %or.cond583.i = or i1 %i.er, %i.fp
  br i1 %or.cond583.i, label %bb.ev, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.513.0.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.513.0.i.i.i, i64 noundef %.sroa.412.0.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sink.i.i.i.i) #59, !noalias !137532
  br label %bb.ev

.loopexit.i:                                      ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.15.1.i = phi ptr [ %.sroa.15.0719.i, %.lr.ph.i ], [ %i.fm, %.lr.ph.i.i ]
  %.sroa.11.1.i = phi ptr [ %.sroa.11.0720.i, %.lr.ph.i ], [ %i.fl, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.19.0718.i, %.lr.ph.i ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.fq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.fr = zext nneg i16 %i.fq to i64
  %i.fs = sub nsw i64 0, %i.fr
  %i.ft = getelementptr inbounds [24 x i8], ptr %.sroa.11.1.i, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 -24
  %.sroa.0151.0.copyload.i = load i64, ptr %i.fu, align 8, !noalias !137516 ; 3 uses
  %.sroa.5152.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ft, i64 -16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.641.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5152.0..sroa_idx.i, i64 16, i1 false), !noalias !137516
  %i.fv = icmp ult i64 %.sroa.0151.0.copyload.i, %.sroa.49.0.i.i940.i
  br i1 %i.fv, label %bb.es, label %bb.et

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.v, %._crit_edge.i
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.544.sroa.0.0.copyload.i = load i64, ptr %.sroa.544.0..sroa_idx.i, align 8, !alias.scope !137512, !noalias !137514
  %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.544.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.4.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !137512, !noalias !137514
  %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.544.sroa.4.sroa.5.0.copyload.i = load i64, ptr %.sroa.544.sroa.4.sroa.5.0..sroa.544.sroa.4.0..sroa.544.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !137512, !noalias !137514
  %.not177.i = icmp eq ptr %i.o, null
  br i1 %.not177.i, label %bb.y, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i

bb.y:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %i.fw = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc241.i unwind label %bb.t, !noalias !137516 ; 2 uses

.noexc241.i:                                      ; preds = %bb.y
  %i.fx = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137533
  %i.fy = icmp eq i8 %i.fx, 2
  br i1 %i.fy, label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i, label %bb.z, !prof !77

bb.z:                                             ; preds = %.noexc241.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i unwind label %bb.t, !noalias !137516

_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i: ; preds = %bb.z, %.noexc241.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i
  %.sroa.12458.sroa.8.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.5.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ %i.fw, %.noexc241.i ], [ %i.fw, %bb.z ] ; 2 uses
  %.sroa.12458.sroa.7.0.i = phi i64 [ %.sroa.544.sroa.4.sroa.4.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ]
  %.sroa.9.0.i = phi i64 [ %.sroa.544.sroa.0.0.copyload.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ 0, %.noexc241.i ], [ 0, %bb.z ] ; 25 uses
  %.sroa.0451.0.i = phi ptr [ %i.o, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs3sCKvcUjPpt_9hashbrown3map8IntoIterjAdj2_EECskcxRuJ53GpR_9rustworkx.exit.i ], [ @111, %.noexc241.i ], [ @111, %bb.z ] ; 9 uses
  %.fr219.i.i = freeze i64 %.sroa.12458.sroa.7.0.i ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !137510, !noalias !137524, !noundef !67
  %i.gb = uitofp i64 %i.ga to double
  %i.gc = call double @llvm.sqrt.f64(double %i.gb)
  %i.gd = fdiv double 1.000000e+00, %i.gc
  %i.ge = trunc nuw i64 %4 to i1
  %.sroa.046.0.i = select i1 %i.ge, double %5, double %i.gd ; 4 uses
  %i.gf = trunc nuw i64 %9 to i1
  %.sroa.052.0.i = select i1 %i.gf, double %10, double f0x3EB0C6F7A0B5ED8D ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !137516
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.gh = load i64, ptr %i.gg, align 8, !alias.scope !137510, !noalias !137524, !noundef !67
  %i.gi = shl i64 %i.gh, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !137534)
  %i.gj = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc243.i unwind label %bb.ab, !noalias !137516

.noexc243.i:                                      ; preds = %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gk = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !137535
  %i.gl = icmp eq i8 %i.gk, 2
  br i1 %i.gl, label %.noexc244.i, label %bb.aa, !prof !77

bb.aa:                                            ; preds = %.noexc243.i
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %.noexc244.i unwind label %bb.ab, !noalias !137516

.noexc244.i:                                      ; preds = %bb.aa, %.noexc243.i
  invoke fastcc void @_RINvMsa_NtCs3sCKvcUjPpt_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCsj3dKapNfnVO_14allocator_api26stable5alloc6global6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %i.l, i64 noundef 24, i64 noundef %i.gi) #64
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc244.i, %bb.aa, %_RNvXs7_NtCs3sCKvcUjPpt_9hashbrown3mapINtB5_7HashMapjuENtNtCslwFuT2d6ECx_4core7default7Default7defaultCskcxRuJ53GpR_9rustworkx.exit.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.ac:                                            ; preds = %.noexc244.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  store i64 %i.gj, ptr %i.gn, align 8, !alias.scope !137536, !noalias !137516
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !137510, !noalias !137524, !nonnull !67, !noundef !67 ; 10 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !137510, !noalias !137524, !noundef !67 ; 9 uses
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gp, i64 %i.gr
  %.not.i249.i = icmp eq ptr %11, null            ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %bb.ad

bb.ad:                                            ; preds = %.backedge742, %bb.ac
  %i.gv = phi ptr [ %i.gp, %bb.ac ], [ %i.gx, %.backedge742 ] ; 4 uses
  %i.gw = icmp eq ptr %i.gv, %i.gs
  br i1 %i.gw, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gy = load ptr, ptr %i.gv, align 8, !alias.scope !137537, !noalias !137538, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i, label %.backedge742, label %bb.af

.backedge742:                                     ; preds = %bb.ae, %bb.el
  br label %bb.ad

.thread569.i:                                     ; preds = %_RINvCskcxRuJ53GpR_9rustworkx15weight_callabledEB2_.exit.thread946.i, %bb.el, %bb.ag
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.af:                                            ; preds = %bb.ae
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
end_hunk_1
begin_hunk_2_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout32___pyfunction_graph_random_layout:bb.a
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2736, i64 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %bb.m unwind label %.body.thread121

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !138896
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.533.0..sroa_idx, i64 48, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store <2 x i64> %i.bj, ptr %i.bi, align 8
  br label %bb.z

bb.n:                                             ; preds = %.noexc53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !138895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bk = getelementptr i8, ptr %i.ae, i64 24
  %.val41145 = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.ae, i64 32
  %.val42146 = load i64, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !138898
  %i.bm = mul i64 %.sroa.5.8.copyload1.i.i50, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 4 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  %i.cn = mul i64 %i.cf, 6364136223846793005
  %i.co = add i64 %i.cn, -6812164046247290893     ; 4 uses
  %i.cp = lshr i64 %i.co, 45
  %i.cq = lshr i64 %i.co, 27
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %i.ct = lshr i64 %i.co, 59
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = call noundef i32 @llvm.fshr.i32(i32 %i.cs, i32 %i.cs, i32 range(i32 0, 32) %i.cu)
  %i.cw = mul i64 %i.co, 6364136223846793005
  %i.cx = add i64 %i.cw, -6812164046247290893     ; 4 uses
  %i.cy = lshr i64 %i.cx, 45
  %i.cz = lshr i64 %i.cx, 27
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i64 %i.cx, 59
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = call noundef i32 @llvm.fshr.i32(i32 %i.db, i32 %i.db, i32 range(i32 0, 32) %i.dd)
  %i.df = mul i64 %i.cx, 6364136223846793005
  %i.dg = add i64 %i.df, -6812164046247290893     ; 4 uses
  %i.dh = lshr i64 %i.dg, 45
  %i.di = lshr i64 %i.dg, 27
  %i.dj = xor i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = lshr i64 %i.dg, 59
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = call noundef i32 @llvm.fshr.i32(i32 %i.dk, i32 %i.dk, i32 range(i32 0, 32) %i.dm)
  %i.do = mul i64 %i.dg, 6364136223846793005
  %i.dp = add i64 %i.do, -6812164046247290893     ; 4 uses
  %i.dq = lshr i64 %i.dp, 45
  %i.dr = lshr i64 %i.dp, 27
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = lshr i64 %i.dp, 59
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = call noundef i32 @llvm.fshr.i32(i32 %i.dt, i32 %i.dt, i32 range(i32 0, 32) %i.dv)
  %i.dx = mul i64 %i.dp, 6364136223846793005
  %i.dy = add i64 %i.dx, -6812164046247290893     ; 3 uses
  %i.dz = lshr i64 %i.dy, 45
  %i.ea = lshr i64 %i.dy, 27
  %i.eb = xor i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  %i.ed = lshr i64 %i.dy, 59
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = call noundef i32 @llvm.fshr.i32(i32 %i.ec, i32 %i.ec, i32 range(i32 0, 32) %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !138899
  store i32 %i.bu, ptr %i.f, align 4, !noalias !138899
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cd, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.cm, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.cv, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.de, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.dn, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.dw, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !138899
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.ef, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !138899
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f)
          to label %.noexc55 unwind label %.body.thread121

.noexc55:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !138899
  br label %bb.p

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.eg = getelementptr i8, ptr %i.ae, i64 24
  %.val41 = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %i.ae, i64 32
  %.val42 = load i64, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !138898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !138898
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.h)
          to label %.noexc56 unwind label %.body.thread121

.noexc56:                                         ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !138900)
  call void @llvm.experimental.noalias.scope.decl(metadata !138901)
  %i.ei = load i32, ptr %i.h, align 16, !range !76, !alias.scope !138901, !noalias !138902, !noundef !67
  %i.ej = trunc nuw i32 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !71

bb.o:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !138903
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !range !180, !alias.scope !138901, !noalias !138902, !noundef !67
  store i32 %i.el, ptr %i.g, align 4, !noalias !138903
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1086) #60
          to label %.noexc57 unwind label %.body.thread121

.noexc57:                                         ; preds = %bb.o
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc56
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.en = load i128, ptr %i.em, align 16, !alias.scope !138901, !noalias !138902, !noundef !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ep = load i128, ptr %i.eo, align 16, !alias.scope !138901, !noalias !138902, !noundef !67
  store i128 %i.en, ptr %i.i, align 16, !alias.scope !138900, !noalias !138904
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i128 %i.ep, ptr %i.eq, align 16, !alias.scope !138900, !noalias !138904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !138898
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %.noexc55
  %.val42140 = phi i64 [ %.val42, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val42146, %.noexc55 ]
  %.val41138 = phi ptr [ %.val41, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val41145, %.noexc55 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val41138) ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.val41138, i64 %.val42140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !138905
  %i.es = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc58 unwind label %.body.thread121

.noexc58:                                         ; preds = %bb.p
  %i.et = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !138905
  %i.eu = icmp eq i8 %i.et, 2
  br i1 %i.eu, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc58
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i unwind label %.body.thread121

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i: ; preds = %bb.q, %.noexc58
  store i64 0, ptr %i.e, align 8, !alias.scope !138906, !noalias !138905
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !138906, !noalias !138905
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !138906, !noalias !138905
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !138905
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.es, ptr %i.ev, align 8, !alias.scope !138906, !noalias !138905
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !138905

.noexc.i.i.i:                                     ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i = load i128, ptr %i.i, align 16, !noalias !138898
  %i.ex = load i128, ptr %i.ew, align 16, !noalias !138898 ; 2 uses
  %i.ey = trunc i64 %.sroa.080.0.copyload to i1
  %i.ez = insertelement <2 x i1> poison, i1 %i.ey, i64 0
  %i.fa = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fb = select <2 x i1> %i.fa, <2 x double> %i.ba, <2 x double> splat (double -0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %.noexc3.i.i.i, %.noexc.i.i.i
  %i.fc = phi i128 [ %6, %.noexc3.i.i.i ], [ %.promoted.i.i, %.noexc.i.i.i ]
  %i.fd = phi i64 [ %i.fj, %.noexc3.i.i.i ], [ 0, %.noexc.i.i.i ]
  %i.fe = phi ptr [ %i.fi, %.noexc3.i.i.i ], [ %.val41138, %.noexc.i.i.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ff = phi i64 [ %i.fj, %bb.t ], [ %i.fd, %bb.r ] ; 2 uses
  %i.fg = phi ptr [ %i.fi, %bb.t ], [ %i.fe, %bb.r ] ; 3 uses
  %i.fh = icmp eq ptr %i.fg, %i.er
  br i1 %i.fh, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fj = add i64 %i.ff, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !noalias !138907, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_10UndirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_10UndirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !138908
  %i.fk = mul i128 %i.fc, 47026247687942121848144207491837523525
  %.sink2.i.i.i.i.i.i.i.i.i = and i64 %i.ff, 4294967295 ; 2 uses
  store i64 %.sink2.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !138908
  %i.fl = add i128 %i.fk, %i.ex                   ; 4 uses
  %i.fm = lshr i128 %i.fl, 122
  %i.fn = trunc nuw nsw i128 %i.fm to i64
  %i.fo = lshr i128 %i.fl, 64
  %i.fp = xor i128 %i.fo, %i.fl
  %i.fq = trunc i128 %i.fp to i64                 ; 2 uses
  %i.fr = call noundef i64 @llvm.fshr.i64(i64 %i.fq, i64 %i.fq, i64 %i.fn)
  %5 = mul i128 %i.fl, 47026247687942121848144207491837523525
  %6 = add i128 %5, %i.ex                         ; 4 uses
  %i.fs = lshr i128 %6, 122
  %i.ft = trunc nuw nsw i128 %i.fs to i64
  %i.fu = lshr i128 %6, 64
  %i.fv = xor i128 %i.fu, %6
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = call noundef i64 @llvm.fshr.i64(i64 %i.fw, i64 %i.fw, i64 %i.ft)
  %i.fy = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %i.fz = insertelement <2 x i64> %i.fy, i64 %i.fx, i64 1
  %i.ga = lshr <2 x i64> %i.fz, splat (i64 11)
  %i.gb = uitofp nneg <2 x i64> %i.ga to <2 x double>
  %i.gc = fmul nnan <2 x double> %i.gb, splat (double f0x3CA0000000000000)
  %i.gd = fadd <2 x double> %i.fb, %i.gc
  store <2 x double> %i.gd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !138908
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !138909
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %.sink2.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc3.i.i.i unwind label %.loopexit.i.i.i, !noalias !138905

.noexc3.i.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_10UndirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !138909
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !138908
  br label %bb.r

.loopexit.i.i.i:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_10UndirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4f_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3k_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7b_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i.i.i:                         ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !138905
  br label %.body.thread

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !138905
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !138898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !138910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !138911
  %i.ge = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs7e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_12Pos2DMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !138912
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i, !prof !77

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i: ; preds = %bb.v
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i60 unwind label %bb.x, !noalias !138911

.noexc.i.i.i60:                                   ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !range !68, !noalias !138911
  %i.gg = trunc nuw i64 %.pre.i.i.i.i to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.gg, label %bb.w, label %.noexc._crit_edge.i.i.i, !prof !85

.noexc._crit_edge.i.i.i:                          ; preds = %.noexc.i.i.i60
  %.pre.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !138911
  br label %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i

bb.w:                                             ; preds = %.noexc.i.i.i60
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.gh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @895, i64 noundef 12) #61
          to label %.noexc2.i.i.i unwind label %bb.x, !noalias !138911

.noexc2.i.i.i:                                    ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q) #63, !noalias !138913
  br label %.body.thread

_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %.noexc._crit_edge.i.i.i, %bb.v
  %i.gi = phi ptr [ %.pre.i.i.i, %.noexc._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs7e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_12Pos2DMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.v ]
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !138911, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !138911
  invoke fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.q, ptr noundef %i.gj)
          to label %.noexc63 unwind label %.body.thread121

.noexc63:                                         ; preds = %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i
  %i.gk = load i64, ptr %i.b, align 8, !range !68, !noalias !138910, !noundef !67
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.496.8.copyload97 = load ptr, ptr %i.gm, align 8, !noalias !138914
  br i1 %i.gl, label %bb.y, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64

bb.y:                                             ; preds = %.noexc63
  %.sroa.8.8..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx98, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64: ; preds = %.noexc63, %bb.y
  %.sink = phi i64 [ 1, %bb.y ], [ 0, %.noexc63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !138910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.496.8.copyload97, ptr %i.gn, align 8
  store i64 %.sink, ptr %0, align 8
  %i.go = atomicrmw sub ptr %i.ag, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65: ; preds = %bb.b, %.noexc43, %bb.z, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.z:                                             ; preds = %bb.m, %bb.i
  store i64 1, ptr %0, align 8
  %i.gp = atomicrmw sub ptr %i.ag, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit65
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout32___pyfunction_graph_spiral_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.8.i.i = alloca [70 x i8], align 2        ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.9.i.i = alloca [16 x i8], align 8        ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = alloca [64 x i8], align 8                ; 2 uses
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.519 = alloca [64 x i8], align 8          ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @3019, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef 5)
  %i.w = load i64, ptr %i.u, align 8, !range !68, !noundef !67
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit96

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !138981
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull %i.aa), !inline_history !53
  %i.ab = load ptr, ptr %i.i, align 8, !noalias !138981, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !138981, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !138981
  br i1 %.not.i.i.i, label %.noexc65, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad), !inline_history !53
  br label %.noexc64

.noexc65:                                         ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 104 ; 4 uses
  %i.ag = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.af), !inline_history !53
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ah), !inline_history !53
  br label %.noexc64

.noexc64:                                         ; preds = %bb.c, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k), !inline_history !53
  %.sroa.038.0.copyload = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.038.0.copyload, ptr %i.aj, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit96

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx5graph7PyGraphEEEB1T_.exit: ; preds = %bb.w, %bb.x, %bb.g, %bb.h, %bb.k, %bb.l, %bb.p, %bb.q, %bb.t, %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ak = atomicrmw sub ptr %i.af, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.e:                                             ; preds = %.noexc65
end_hunk_2
begin_hunk_3_@_RNvNtCskcxRuJ53GpR_9rustworkx6layout34___pyfunction_digraph_random_layout:bb.a
  invoke void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2736, i64 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %bb.m unwind label %.body.thread121

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !139360
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.536.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.533.0..sroa_idx, i64 48, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = load <2 x i64>, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store <2 x i64> %i.bj, ptr %i.bi, align 8
  br label %bb.z

bb.n:                                             ; preds = %.noexc53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !139359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bk = getelementptr i8, ptr %i.ae, i64 24
  %.val41145 = load ptr, ptr %i.bk, align 8
  %i.bl = getelementptr i8, ptr %i.ae, i64 32
  %.val42146 = load i64, ptr %i.bl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !139362
  %i.bm = mul i64 %.sroa.5.8.copyload1.i.i50, 6364136223846793005
  %i.bn = add i64 %i.bm, -6812164046247290893     ; 4 uses
  %i.bo = lshr i64 %i.bn, 45
  %i.bp = lshr i64 %i.bn, 27
  %i.bq = xor i64 %i.bo, %i.bp
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %i.bs = lshr i64 %i.bn, 59
  %i.bt = trunc nuw nsw i64 %i.bs to i32
  %i.bu = call noundef i32 @llvm.fshr.i32(i32 %i.br, i32 %i.br, i32 range(i32 0, 32) %i.bt)
  %i.bv = mul i64 %i.bn, 6364136223846793005
  %i.bw = add i64 %i.bv, -6812164046247290893     ; 4 uses
  %i.bx = lshr i64 %i.bw, 45
  %i.by = lshr i64 %i.bw, 27
  %i.bz = xor i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %i.cb = lshr i64 %i.bw, 59
  %i.cc = trunc nuw nsw i64 %i.cb to i32
  %i.cd = call noundef i32 @llvm.fshr.i32(i32 %i.ca, i32 %i.ca, i32 range(i32 0, 32) %i.cc)
  %i.ce = mul i64 %i.bw, 6364136223846793005
  %i.cf = add i64 %i.ce, -6812164046247290893     ; 4 uses
  %i.cg = lshr i64 %i.cf, 45
  %i.ch = lshr i64 %i.cf, 27
  %i.ci = xor i64 %i.cg, %i.ch
  %i.cj = trunc i64 %i.ci to i32                  ; 2 uses
  %i.ck = lshr i64 %i.cf, 59
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = call noundef i32 @llvm.fshr.i32(i32 %i.cj, i32 %i.cj, i32 range(i32 0, 32) %i.cl)
  %i.cn = mul i64 %i.cf, 6364136223846793005
  %i.co = add i64 %i.cn, -6812164046247290893     ; 4 uses
  %i.cp = lshr i64 %i.co, 45
  %i.cq = lshr i64 %i.co, 27
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = trunc i64 %i.cr to i32                  ; 2 uses
  %i.ct = lshr i64 %i.co, 59
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = call noundef i32 @llvm.fshr.i32(i32 %i.cs, i32 %i.cs, i32 range(i32 0, 32) %i.cu)
  %i.cw = mul i64 %i.co, 6364136223846793005
  %i.cx = add i64 %i.cw, -6812164046247290893     ; 4 uses
  %i.cy = lshr i64 %i.cx, 45
  %i.cz = lshr i64 %i.cx, 27
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = trunc i64 %i.da to i32                  ; 2 uses
  %i.dc = lshr i64 %i.cx, 59
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = call noundef i32 @llvm.fshr.i32(i32 %i.db, i32 %i.db, i32 range(i32 0, 32) %i.dd)
  %i.df = mul i64 %i.cx, 6364136223846793005
  %i.dg = add i64 %i.df, -6812164046247290893     ; 4 uses
  %i.dh = lshr i64 %i.dg, 45
  %i.di = lshr i64 %i.dg, 27
  %i.dj = xor i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32                  ; 2 uses
  %i.dl = lshr i64 %i.dg, 59
  %i.dm = trunc nuw nsw i64 %i.dl to i32
  %i.dn = call noundef i32 @llvm.fshr.i32(i32 %i.dk, i32 %i.dk, i32 range(i32 0, 32) %i.dm)
  %i.do = mul i64 %i.dg, 6364136223846793005
  %i.dp = add i64 %i.do, -6812164046247290893     ; 4 uses
  %i.dq = lshr i64 %i.dp, 45
  %i.dr = lshr i64 %i.dp, 27
  %i.ds = xor i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = lshr i64 %i.dp, 59
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = call noundef i32 @llvm.fshr.i32(i32 %i.dt, i32 %i.dt, i32 range(i32 0, 32) %i.dv)
  %i.dx = mul i64 %i.dp, 6364136223846793005
  %i.dy = add i64 %i.dx, -6812164046247290893     ; 3 uses
  %i.dz = lshr i64 %i.dy, 45
  %i.ea = lshr i64 %i.dy, 27
  %i.eb = xor i64 %i.dz, %i.ea
  %i.ec = trunc i64 %i.eb to i32                  ; 2 uses
  %i.ed = lshr i64 %i.dy, 59
  %i.ee = trunc nuw nsw i64 %i.ed to i32
  %i.ef = call noundef i32 @llvm.fshr.i32(i32 %i.ec, i32 %i.ec, i32 range(i32 0, 32) %i.ee)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !139363
  store i32 %i.bu, ptr %i.f, align 4, !noalias !139363
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.cd, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.cm, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %i.cv, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.de, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.dn, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.dw, ptr %.sroa.10.0..sroa_idx.i.i.i, align 4, !noalias !139363
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  store i32 %i.ef, ptr %.sroa.11.0..sroa_idx.i.i.i, align 4, !noalias !139363
  invoke void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.f)
          to label %.noexc55 unwind label %.body.thread121

.noexc55:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !139363
  br label %bb.p

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.eg = getelementptr i8, ptr %i.ae, i64 24
  %.val41 = load ptr, ptr %i.eg, align 8
  %i.eh = getelementptr i8, ptr %i.ae, i64 32
  %.val42 = load i64, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !139362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !139362
  invoke fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 16 captures(none) dereferenceable(48) %i.h)
          to label %.noexc56 unwind label %.body.thread121

.noexc56:                                         ; preds = %.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !139364)
  call void @llvm.experimental.noalias.scope.decl(metadata !139365)
  %i.ei = load i32, ptr %i.h, align 16, !range !76, !alias.scope !139365, !noalias !139366, !noundef !67
  %i.ej = trunc nuw i32 %i.ei to i1
  br i1 %i.ej, label %bb.o, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, !prof !71

bb.o:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !139367
  %i.ek = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !range !180, !alias.scope !139365, !noalias !139366, !noundef !67
  store i32 %i.el, ptr %i.g, align 4, !noalias !139367
  invoke void @_RNvNtCslwFuT2d6ECx_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1538, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1553, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1086) #60
          to label %.noexc57 unwind label %.body.thread121

.noexc57:                                         ; preds = %bb.o
  unreachable

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %.noexc56
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.en = load i128, ptr %i.em, align 16, !alias.scope !139365, !noalias !139366, !noundef !67
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.ep = load i128, ptr %i.eo, align 16, !alias.scope !139365, !noalias !139366, !noundef !67
  store i128 %i.en, ptr %i.i, align 16, !alias.scope !139364, !noalias !139368
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i128 %i.ep, ptr %i.eq, align 16, !alias.scope !139364, !noalias !139368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !139362
  br label %bb.p

bb.p:                                             ; preds = %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %.noexc55
  %.val42140 = phi i64 [ %.val42, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val42146, %.noexc55 ]
  %.val41138 = phi ptr [ %.val41, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsVAQhhDbxgK_9getrandom5error5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %.val41145, %.noexc55 ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val41138) ]
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %.val41138, i64 %.val42140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !139369
  %i.es = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %.noexc58 unwind label %.body.thread121

.noexc58:                                         ; preds = %bb.p
  %i.et = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !139369
  %i.eu = icmp eq i8 %i.et, 2
  br i1 %i.eu, label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %.noexc58
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow() #62
          to label %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i unwind label %.body.thread121

_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i: ; preds = %bb.q, %.noexc58
  store i64 0, ptr %i.e, align 8, !alias.scope !139370, !noalias !139369
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139370, !noalias !139369
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !alias.scope !139370, !noalias !139369
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !139369
  %i.ev = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.es, ptr %i.ev, align 8, !alias.scope !139370, !noalias !139369
  invoke fastcc void @_RNvMs_NtCsfztDQZkQYYe_8indexmap5innerINtB4_4CorejAdj2_E7reserveCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef 0)
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !139369

.noexc.i.i.i:                                     ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.promoted.i.i = load i128, ptr %i.i, align 16, !noalias !139362
  %i.ex = load i128, ptr %i.ew, align 16, !noalias !139362 ; 2 uses
  %i.ey = trunc i64 %.sroa.080.0.copyload to i1
  %i.ez = insertelement <2 x i1> poison, i1 %i.ey, i64 0
  %i.fa = shufflevector <2 x i1> %i.ez, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fb = select <2 x i1> %i.fa, <2 x double> %i.ba, <2 x double> splat (double -0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %.noexc3.i.i.i, %.noexc.i.i.i
  %i.fc = phi i128 [ %6, %.noexc3.i.i.i ], [ %.promoted.i.i, %.noexc.i.i.i ]
  %i.fd = phi i64 [ %i.fj, %.noexc3.i.i.i ], [ 0, %.noexc.i.i.i ]
  %i.fe = phi ptr [ %i.fi, %.noexc3.i.i.i ], [ %.val41138, %.noexc.i.i.i ]
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %bb.r
  %i.ff = phi i64 [ %i.fj, %bb.t ], [ %i.fd, %bb.r ] ; 2 uses
  %i.fg = phi ptr [ %i.fi, %bb.t ], [ %i.fe, %bb.r ] ; 3 uses
  %i.fh = icmp eq ptr %i.fg, %i.er
  br i1 %i.fh, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16 ; 2 uses
  %i.fj = add i64 %i.ff, 1                        ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.fg, align 8, !noalias !139371, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_8DirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4c_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3h_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB78_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_8DirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4c_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3h_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB78_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i: ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !139372
  %i.fk = mul i128 %i.fc, 47026247687942121848144207491837523525
  %.sink2.i.i.i.i.i.i.i.i.i = and i64 %i.ff, 4294967295 ; 2 uses
  store i64 %.sink2.i.i.i.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !139372
  %i.fl = add i128 %i.fk, %i.ex                   ; 4 uses
  %i.fm = lshr i128 %i.fl, 122
  %i.fn = trunc nuw nsw i128 %i.fm to i64
  %i.fo = lshr i128 %i.fl, 64
  %i.fp = xor i128 %i.fo, %i.fl
  %i.fq = trunc i128 %i.fp to i64                 ; 2 uses
  %i.fr = call noundef i64 @llvm.fshr.i64(i64 %i.fq, i64 %i.fq, i64 %i.fn)
  %5 = mul i128 %i.fl, 47026247687942121848144207491837523525
  %6 = add i128 %5, %i.ex                         ; 4 uses
  %i.fs = lshr i128 %6, 122
  %i.ft = trunc nuw nsw i128 %i.fs to i64
  %i.fu = lshr i128 %6, 64
  %i.fv = xor i128 %i.fu, %6
  %i.fw = trunc i128 %i.fv to i64                 ; 2 uses
  %i.fx = call noundef i64 @llvm.fshr.i64(i64 %i.fw, i64 %i.fw, i64 %i.ft)
  %i.fy = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %i.fz = insertelement <2 x i64> %i.fy, i64 %i.fx, i64 1
  %i.ga = lshr <2 x i64> %i.fz, splat (i64 11)
  %i.gb = uitofp nneg <2 x i64> %i.ga to <2 x double>
  %i.gc = fmul nnan <2 x double> %i.gb, splat (double f0x3CA0000000000000)
  %i.gd = fadd <2 x double> %i.fb, %i.gc
  store <2 x double> %i.gd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !139372
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !139373
  invoke fastcc void @_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateE11insert_fullCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %.sink2.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i)
          to label %.noexc3.i.i.i unwind label %.loopexit.i.i.i, !noalias !139369

.noexc3.i.i.i:                                    ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_8DirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4c_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3h_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB78_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !139373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !139372
  br label %bb.r

.loopexit.i.i.i:                                  ; preds = %_RNCINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map8map_foldNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexTjAdj2_EuNCINvNtNtCskcxRuJ53GpR_9rustworkx6layout6random13random_layoutNtBY_8DirectedE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1H_NCINvXsb_NtCsfztDQZkQYYe_8indexmap3mapINtB4c_8IndexMapjB1J_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEINtNtB3h_7collect6ExtendB1H_E6extendINtB4_3MapINtNtBW_12stable_graph11NodeIndicesINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB78_5types3any5PyAnyEEB1Q_EE0E0E0B1Z_.exit.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp.i.i.i:                         ; preds = %_RNvXs0_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core7default7Default7default.exit.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjAdj2_NtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.e) #63, !noalias !139369
  br label %.body.thread

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !139369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !139362
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !139374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !139375
  %i.ge = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs7e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_12Pos2DMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 88) acquire, align 8, !noalias !139376
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i, label %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i, !prof !77

_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i: ; preds = %bb.v
  invoke fastcc void @_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE8try_initB1p_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc.i.i.i60 unwind label %bb.x, !noalias !139375

.noexc.i.i.i60:                                   ; preds = %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %.pre.i.i.i.i = load i64, ptr %i.a, align 8, !range !68, !noalias !139375
  %i.gg = trunc nuw i64 %.pre.i.i.i.i to i1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.gg, label %bb.w, label %.noexc._crit_edge.i.i.i, !prof !85

.noexc._crit_edge.i.i.i:                          ; preds = %.noexc.i.i.i60
  %.pre.i.i.i = load ptr, ptr %i.gh, align 8, !noalias !139375
  br label %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i

bb.w:                                             ; preds = %.noexc.i.i.i60
  invoke void @_RNvNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_object23type_object_init_failed(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.gh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @895, i64 noundef 12) #61
          to label %.noexc2.i.i.i unwind label %bb.x, !noalias !139375

.noexc2.i.i.i:                                    ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w, %_RNvMs_NtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE15get_or_try_initB1p_.exit.i.i.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsi0YPOvDEjiZ_4pyo312pyclass_init18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingEEB1B_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(64) %i.q) #63, !noalias !139377
  br label %.body.thread

_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i: ; preds = %.noexc._crit_edge.i.i.i, %bb.v
  %i.gi = phi ptr [ %.pre.i.i.i, %.noexc._crit_edge.i.i.i ], [ getelementptr inbounds nuw (i8, ptr @_RNvNvXs7e_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB8_12Pos2DMappingNtNtNtCsi0YPOvDEjiZ_4pyo35impl_7pyclass11PyClassImpl16lazy_type_object11TYPE_OBJECT, i64 80), %bb.v ]
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !139375, !nonnull !67, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !139375
  invoke fastcc void @_RNvMNtCsi0YPOvDEjiZ_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCskcxRuJ53GpR_9rustworkx9iterators12Pos2DMappingE27create_class_object_of_typeB15_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.q, ptr noundef %i.gj)
          to label %.noexc63 unwind label %.body.thread121

.noexc63:                                         ; preds = %_RNvXs7c_NtCskcxRuJ53GpR_9rustworkx9iteratorsNtB6_12Pos2DMappingNtNtCsi0YPOvDEjiZ_4pyo310conversion12IntoPyObject13into_pyobject.exit.i
  %i.gk = load i64, ptr %i.b, align 8, !range !68, !noalias !139374, !noundef !67
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.496.8.copyload97 = load ptr, ptr %i.gm, align 8, !noalias !139378
  br i1 %i.gl, label %bb.y, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit64

bb.y:                                             ; preds = %.noexc63
  %.sroa.8.8..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4100.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.8..sroa_idx98, i64 56, i1 false)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit64

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit64: ; preds = %.noexc63, %bb.y
  %.sink = phi i64 [ 1, %bb.y ], [ 0, %.noexc63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !139374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.496.8.copyload97, ptr %i.gn, align 8
  store i64 %.sink, ptr %0, align 8
  %i.go = atomicrmw sub ptr %i.ag, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit65

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit65: ; preds = %bb.b, %.noexc43, %bb.z, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.z:                                             ; preds = %bb.m, %bb.i
  store i64 1, ptr %0, align 8
  %i.gp = atomicrmw sub ptr %i.ag, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit65
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvNtCskcxRuJ53GpR_9rustworkx6layout34___pyfunction_digraph_spiral_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %.sroa.8.i.i = alloca [70 x i8], align 2        ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.9.i.i = alloca [16 x i8], align 8        ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 8 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [72 x i8], align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = alloca [64 x i8], align 8                ; 2 uses
  %i.m = alloca [72 x i8], align 8                ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 5 uses
  %i.o = alloca [72 x i8], align 8                ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = alloca [72 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.519 = alloca [64 x i8], align 8          ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [72 x i8], align 8                ; 6 uses
  %i.v = alloca [40 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call fastcc void @_RINvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @3032, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias nofree noundef nonnull align 8 %i.v, i64 noundef 5)
  %i.w = load i64, ptr %i.u, align 8, !range !68, !noundef !67
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.b, label %.noexc

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit96

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.aa = load ptr, ptr %i.v, align 8, !nonnull !67, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !139445
  call fastcc void @_RINvNvMsb_NtCsi0YPOvDEjiZ_4pyo38instanceINtB8_8BorrowedpE4cast5innerNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEB18_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull %i.aa), !inline_history !56
  %i.ab = load ptr, ptr %i.i, align 8, !noalias !139445, !noundef !67 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !139445, !nonnull !67, !noundef !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !139445
  br i1 %.not.i.i.i, label %.noexc65, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvXs1_NtNtCsi0YPOvDEjiZ_4pyo33err10cast_errorNtB7_5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_9CastErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ae, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ad), !inline_history !56
  br label %.noexc64

.noexc65:                                         ; preds = %.noexc
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 152 ; 4 uses
  %i.ag = call noundef zeroext i1 @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker10try_borrow(ptr noundef nonnull align 8 %i.af), !inline_history !56
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @_RNvXsn_NtCsi0YPOvDEjiZ_4pyo36pycellNtNtB7_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_13PyBorrowErrorE4from(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ah), !inline_history !56
  br label %.noexc64

.noexc64:                                         ; preds = %bb.c, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  call void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argument25argument_extraction_error(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k), !inline_history !56
  %.sroa.038.0.copyload = load ptr, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.038.0.copyload, ptr %i.aj, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.441.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.p, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit96

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsi0YPOvDEjiZ_4pyo37pyclass5guard12PyClassGuardNtNtCskcxRuJ53GpR_9rustworkx7digraph9PyDiGraphEEEB1T_.exit: ; preds = %bb.w, %bb.x, %bb.g, %bb.h, %bb.k, %bb.l, %bb.p, %bb.q, %bb.t, %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  %i.ak = atomicrmw sub ptr %i.af, i64 1 release, align 8 ; 0 uses
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.e:                                             ; preds = %.noexc65
end_hunk_3
