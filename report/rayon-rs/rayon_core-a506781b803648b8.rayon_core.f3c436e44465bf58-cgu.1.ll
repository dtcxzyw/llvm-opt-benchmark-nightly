Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.1?download=true
inline.NumInlined: 242
inline.NumDeleted: 115
begin_hunk_0_@_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_:bb.a
bb.g:                                             ; preds = %bb.bc
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l, i64 noundef %..i)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.l, %bb.j
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.ao, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.n) #21
          to label %.thread96 unwind label %bb.be

bb.j:                                             ; preds = %bb.h
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.ap = invoke noundef nonnull align 8 ptr @_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_()
          to label %bb.m unwind label %bb.l       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.l) #21
          to label %bb.i unwind label %bb.be

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false)
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 1, ptr %i.c, align 128
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 0, ptr %i.av, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr %i.ap, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store ptr %i.ap, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.aw = load <2 x ptr>, ptr %i.ar, align 8
  store ptr null, ptr %i.ar, align 8
  store <2 x ptr> %i.aw, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %i.ax = load <2 x ptr>, ptr %i.as, align 8
  store ptr null, ptr %i.as, align 8
  store <2 x ptr> %i.ax, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  %i.ay = load <2 x ptr>, ptr %i.at, align 8
  store ptr null, ptr %i.at, align 8
  store <2 x ptr> %i.ay, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !76
  %i.az = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 384, 641) 640, i64 noundef 128) #22, !noalias !76 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.n, label %bb.r, !prof !7

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #23
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1i_(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.c) #21
          to label %.thread96 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body61:                                          ; preds = %bb.aj, %bb.x, %bb.q, %.critedge
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.critedge ], [ %i.ck, %bb.x ], [ %i.bd, %bb.q ], [ %i.da, %bb.aj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_(ptr nonnull %i.o) #21
          to label %bb.az unwind label %bb.be

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body61

bb.r:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.az, ptr noundef nonnull align 128 dereferenceable(640) %i.c, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.az, ptr %i.o, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.bg = load i64, ptr %i.v, align 8, !range !6, !noundef !5
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 288230376151711744
  call void @llvm.assume(i1 %i.bj)
  %.idx = shl nuw nsw i64 %i.bi, 5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx
  %.sroa.084.0.copyload = load i64, ptr %i.q, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.485.0.copyload = load ptr, ptr %.sroa.485.0..sroa_idx, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.586.0.copyload = load i64, ptr %.sroa.586.0..sroa_idx, align 8 ; 2 uses
  %i.bl = icmp ult i64 %.sroa.586.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.485.0.copyload, i64 %.sroa.586.0.copyload
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bf, ptr %i.k, align 8
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %i.bf, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.bg, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.bk, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  store ptr %.sroa.485.0.copyload, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 3 uses
  store ptr %.sroa.485.0.copyload, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.084.0.copyload, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  store ptr %i.bm, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !77
  %i.bn = icmp eq i64 %i.bi, 0
  br i1 %i.bn, label %.loopexit, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph: ; preds = %bb.r
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.1289.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 88
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph, %.backedge
  %i.bw = phi ptr [ %i.bf, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i.lr.ph ], [ %i.dn, %.backedge ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store ptr %i.bx, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !82
  %.sroa.5.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %.sroa.5.0.copyload13.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i, align 8, !noalias !83 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i, 2
  br i1 %.not.i.i.i, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false), !noalias !84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !noalias !84
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !84
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.by = load ptr, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8, !alias.scope !86, !nonnull !5, !noundef !5
  %i.bz = load ptr, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8, !alias.scope !86, !nonnull !5, !noundef !5 ; 4 uses
  %i.ca = icmp eq ptr %i.bz, %i.by
  br i1 %i.ca, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.cb = load ptr, ptr %i.b, align 8, !alias.scope !90, !noalias !84, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !91
  %i.cc = icmp eq i64 %2, 1
  br i1 %i.cc, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #25
          to label %.loopexit unwind label %bb.v

.critedge:                                        ; preds = %.body56.thread132.loopexit, %.body56.thread132.loopexit.split-lp, %bb.an, %bb.bd, %.noexc77, %bb.bh, %bb.z, %bb.v
  %.pn48.pn = phi { ptr, i32 } [ %i.co, %bb.z ], [ %i.em, %.noexc77 ], [ %i.cd, %bb.v ], [ %i.em, %bb.bh ], [ %lpad.thr_comm.split-lp, %bb.bd ], [ %i.de, %bb.an ], [ %lpad.loopexit, %.body56.thread132.loopexit ], [ %lpad.loopexit.split-lp, %.body56.thread132.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.k) #21
          to label %.body61 unwind label %bb.be

bb.v:                                             ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.w:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.ce, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8, !alias.scope !86
  %i.cf = load ptr, ptr %i.bz, align 8, !noalias !92, !nonnull !5, !noundef !5 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ch = load i8, ptr %i.cg, align 8, !range !4, !noalias !92, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.bw, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1289.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  %i.ci = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !78, !noundef !5 ; 4 uses
  %i.cj = add i64 %i.ci, 1
  store i64 %i.cj, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !78
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.9.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.cf, ptr %i.i, align 8
  store i8 %i.ch, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.ci)
          to label %bb.aa unwind label %bb.bf

.loopexit:                                        ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i, %.backedge, %bb.r, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !84
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i unwind label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %.body61 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i: ; preds = %.loopexit
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit unwind label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cm = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cn, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76: ; preds = %bb.bc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  ret void

bb.z:                                             ; preds = %bb.ag
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.aa:                                            ; preds = %bb.w
  %i.cp = load <2 x i64>, ptr %1, align 8
  %i.cq = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store <2 x i64> %i.cp, ptr %i.h, align 16
  store ptr %i.cf, ptr %i.br, align 8
  store i8 %i.ch, ptr %i.bs, align 16
  store ptr %i.ct, ptr %i.bt, align 8
  store i64 %i.ci, ptr %i.bu, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cu = icmp eq i64 %i.ci, 0
  %i.cv = load i8, ptr %i.bv, align 8, !range !4
  %i.cw = trunc nuw i8 %i.cv to i1
  %or.cond = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 16 dereferenceable(104) %i.h, i64 104, i1 false)
  %i.cx = invoke noundef ptr @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree nonnull poison, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.d)
          to label %bb.au unwind label %.body56.thread132.loopexit ; 2 uses

bb.ae:                                            ; preds = %bb.ab
  %i.cy = invoke noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.af unwind label %bb.bd

.body56.thread132.loopexit:                       ; preds = %bb.ah, %bb.ad, %bb.ap, %bb.ar
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

.body56.thread132.loopexit.split-lp:              ; preds = %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.af:                                            ; preds = %bb.ae
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h)
          to label %bb.ai unwind label %bb.z

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, ptr noundef nonnull align 16 dereferenceable(104) %i.h, i64 104, i1 false)
  invoke void @_RNvXs6_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.e)
          to label %bb.al unwind label %.body56.thread132.loopexit

bb.ai:                                            ; preds = %bb.ag, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %.body61 unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65: ; preds = %bb.ai
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.08.sroa.2.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69 unwind label %bb.q

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !93
  %i.dc = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 384, 641) 384, i64 noundef 128) #22, !noalias !93 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.am, label %bb.ap, !prof !7

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #23
          to label %.noexc70 unwind label %bb.an

.noexc70:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.am
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEBF_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.f) #21
          to label %.critedge unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.dc, ptr noundef nonnull align 128 dereferenceable(384) %i.f, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.dc, ptr %i.a, align 8
  invoke void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvMs8_B1v_B1t_11set_current0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.aq unwind label %.body56.thread132.loopexit

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dg = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 520
  %i.di = load i64, ptr %i.dh, align 8, !noundef !5
  %.not47 = icmp eq i64 %i.di, 0
  br i1 %.not47, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 512
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !5, !noundef !5
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  invoke fastcc void @_RNvXs4_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef %i.dl)
          to label %.backedge unwind label %.body56.thread132.loopexit

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.at unwind label %.body56.thread132.loopexit.split-lp

bb.at:                                            ; preds = %bb.as
  unreachable

.backedge:                                        ; preds = %bb.ar, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.experimental.noalias.scope.decl(metadata !95)
  call void @llvm.experimental.noalias.scope.decl(metadata !96)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !97
  %i.dm = load ptr, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !98, !nonnull !5, !noundef !5
  %i.dn = load ptr, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !98, !nonnull !5, !noundef !5 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dm
  br i1 %i.do, label %.loopexit, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1N_.exit.i.i.i

bb.au:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not46 = icmp eq ptr %i.cx, null
  br i1 %.not46, label %.backedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  store i64 2, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.dp, align 8
  br label %bb.ai

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1a_INtB20_7StealerB2K_EEEEB2O_.exit.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.dq = load ptr, ptr %i.o, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 464
  %3 = atomicrmw sub ptr %i.dr, i64 1 acq_rel, align 8, !noalias !99
  %i.ds = icmp eq i64 %3, 1
  br i1 %i.ds, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit

bb.aw:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 512
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !99, !nonnull !5, !noundef !5 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 520
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !99, !noundef !5 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.dw, 48
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx.i.i.i
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 472
  br label %bb.ax

bb.ax:                                            ; preds = %.noexc73, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %i.ea, %.noexc73 ] ; 2 uses
  %.sroa.7.09.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.eb, %.noexc73 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 48 ; 2 uses
  %i.eb = add nuw nsw i64 %.sroa.7.09.i.i.i, 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 16
  %i.ed = atomicrmw xchg ptr %i.ec, i64 3 acq_rel, align 8, !noalias !99
  %i.ee = icmp eq i64 %i.ed, 2
  br i1 %i.ee, label %bb.ay, label %.noexc73

.noexc73:                                         ; preds = %bb.ay, %bb.ax
  %i.ef = icmp eq ptr %i.ea, %i.dx
  br i1 %i.ef, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit, label %bb.ax

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.dz, i64 noundef %.sroa.7.09.i.i.i)
          to label %.noexc73 unwind label %bb.bb

bb.az:                                            ; preds = %.body61, %bb.bb
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %.pn48.pn.pn, %.body61 ], [ %i.ei, %bb.bb ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.eg = load ptr, ptr %i.o, align 8, !alias.scope !102, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.eg, i64 1 release, align 8, !noalias !102
  %i.eh = icmp eq i64 %4, 1
  br i1 %i.eh, label %bb.ba, label %bb.b

bb.ba:                                            ; preds = %bb.az
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %bb.b unwind label %bb.be

bb.bb:                                            ; preds = %bb.ay
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit: ; preds = %.noexc73, %bb.aw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEEB3g_.exit69
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.ej = load ptr, ptr %i.o, align 8, !alias.scope !105, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !105
  %i.ek = icmp eq i64 %5, 1
  br i1 %i.ek, label %bb.bc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76

bb.bc:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit76 unwind label %bb.g

bb.bd:                                            ; preds = %bb.ae
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.h) #21
          to label %.critedge unwind label %bb.be

bb.be:                                            ; preds = %bb.bh, %bb.bg, %bb.ba, %.body61, %.thread140, %bb.bj, %bb.bi, %.thread96, %bb.bd, %.critedge, %bb.l, %bb.i, %bb.b
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.bf:                                            ; preds = %bb.w
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %6 = atomicrmw sub ptr %i.cf, i64 1 release, align 8, !noalias !106
  %i.en = icmp eq i64 %6, 1
  br i1 %i.en, label %bb.bg, label %.noexc77

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #25
          to label %.noexc77 unwind label %bb.be

.noexc77:                                         ; preds = %bb.bg, %bb.bf
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.eo = load ptr, ptr %i.j, align 8, !alias.scope !110, !nonnull !5, !noundef !5
  %7 = atomicrmw sub ptr %i.eo, i64 1 release, align 8, !noalias !110
  %i.ep = icmp eq i64 %7, 1
  br i1 %i.ep, label %bb.bh, label %.critedge

bb.bh:                                            ; preds = %.noexc77
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %.critedge unwind label %bb.be

.thread106:                                       ; preds = %.thread96
  br i1 %.sroa.015.0101, label %bb.bi, label %.thread140

.thread96:                                        ; preds = %bb.o, %bb.i, %.thread114
  %.pn48.pn.pn.pn.pn105 = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.am, %.thread114 ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.015.0101 = phi i1 [ true, %bb.i ], [ true, %.thread114 ], [ false, %bb.o ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #21
          to label %.thread106 unwind label %bb.be

bb.bi:                                            ; preds = %.thread106
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #21
          to label %.thread140 unwind label %bb.be

bb.bj:                                            ; preds = %bb.e
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.u) #21
          to label %.thread140 unwind label %bb.be

.thread140:                                       ; preds = %bb.bi, %.thread106, %bb.bj
  %.pn48.pn.pn.pn.pn.pn95143 = phi { ptr, i32 } [ %i.eq, %bb.bj ], [ %.pn48.pn.pn.pn.pn105, %.thread106 ], [ %.pn48.pn.pn.pn.pn105, %bb.bi ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #21
          to label %bb.b unwind label %bb.be

bb.bk:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtBG_6string6StringEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTjEEp6OutputNtNtB7_6string6StringEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !121, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !121
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.g, align 8, !alias.scope !122 ; 4 uses
  %switch.i.i = icmp samesign ult i64 %i.b, 2
  br i1 %switch.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.h = ptrtoint ptr %.val1.i to i64             ; 2 uses
  %i.i = and i64 %i.h, 3
  switch i64 %i.i, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = icmp ult ptr %.val1.i, inttoptr (i64 188978561024 to ptr)
  %i.k = and i64 %i.h, 1095216660480
  %i.l = icmp ne i64 %i.k, 1095216660480
  tail call void @llvm.assume(i1 %i.j)
  tail call void @llvm.assume(i1 %i.l)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.val1.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !alias.scope !123, !noalias !122
  store i8 3, ptr %i.a, align 8, !alias.scope !123, !noalias !122
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !122
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1A_20ThreadPoolBuildErrorEEB1A_(i64 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.0.val.off = add i64 %.0.val, -2
  %switch = icmp ult i64 %.0.val.off, -3
  br i1 %switch, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = ptrtoint ptr %.8.val to i64              ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 1, label %bb.d
  ], !prof !11

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ult ptr %.8.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %.8.val, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !129, !noalias !128
  store i8 3, ptr %i.a, align 8, !alias.scope !129, !noalias !128
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h), !noalias !128
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1Z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB27_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1j_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1j_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1i_(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_.exit.i unwind label %bb.e

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val15 = load ptr, ptr %i.ag, align 8, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val16 = load ptr, ptr %i.ah, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.val15, ptr %.val16) #21
          to label %.body21 unwind label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.k, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val13 = load ptr, ptr %i.ai, align 8, !noundef !5 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val14 = load ptr, ptr %i.aj, align 8          ; 6 uses
  %i.ak = icmp eq ptr %.val13, null
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14) ]
  %i.al = load ptr, ptr %.val14, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.al, null
  br i1 %.not.i.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.al(ptr noundef nonnull %.val13)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.an, i64 noundef range(i64 1, 536870913) %i.aq) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit

bb.r:                                             ; preds = %bb.o
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.at = load i64, ptr %i.as, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.body21, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef range(i64 1, -9223372036854775808) %i.at, i64 noundef range(i64 1, 536870913) %i.aw) #22
  br label %.body21

.body21:                                          ; preds = %bb.s, %bb.r, %.body18
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body18 ], [ %i.ar, %bb.r ], [ %i.ar, %bb.s ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val11 = load ptr, ptr %i.ax, align 8, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val12 = load ptr, ptr %i.ay, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.val11, ptr %.val12) #21
          to label %common.resume unwind label %bb.z

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.q, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function5FnMutTjEEp6OutputNtNtB12_6string6StringEL_EEECskVyUMSjkkSy_10rayon_core.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val9 = load ptr, ptr %i.az, align 8, !noundef !5 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val10 = load ptr, ptr %i.ba, align 8          ; 6 uses
  %i.bb = icmp eq ptr %.val9, null
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit25, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.bc = load ptr, ptr %.val10, align 8, !invariant.load !5 ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i23, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void %i.bc(ptr noundef nonnull %.val9)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit25, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.be, i64 noundef range(i64 1, 536870913) %i.bh) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit25

bb.x:                                             ; preds = %bb.u
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %common.resume, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !range !8, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 536870913) %i.bn) #22
  br label %common.resume

common.resume:                                    ; preds = %.body21, %bb.x, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.x ], [ %i.bi, %bb.y ], [ %.pn2, %.body21 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit25: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit, %bb.v, %bb.w
  ret void

bb.z:                                             ; preds = %.body18, %.body21, %.body
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8            ; 4 uses
  %switch.i = icmp samesign ult i64 %.val, 2
  br i1 %switch.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.c = ptrtoint ptr %.val1 to i64               ; 2 uses
  %i.d = and i64 %i.c, 3
  switch i64 %i.d, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.d
  ], !prof !11

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult ptr %.val1, inttoptr (i64 188978561024 to ptr)
  %i.f = and i64 %i.c, 1095216660480
  %i.g = icmp ne i64 %i.f, 1095216660480
  tail call void @llvm.assume(i1 %i.e)
  tail call void @llvm.assume(i1 %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.val1, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !135
  store i8 3, ptr %i.a, align 8, !alias.scope !135
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core9ErrorKindEBD_.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2d_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2k_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2k_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2d_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10TerminatorEBF_(ptr nofree readonly captures(none) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load ptr, ptr %.0.val, align 8, !noalias !138, !nonnull !5, !noundef !5 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %0 = atomicrmw sub ptr %i.b, i64 1 acq_rel, align 8, !noalias !138
  %i.c = icmp eq i64 %0, 1
  br i1 %i.c, label %bb.b, label %_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.e = load ptr, ptr %i.d, align 8, !noalias !138, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  %i.g = load i64, ptr %i.f, align 8, !noalias !138, !noundef !5 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.g, 48
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx.i.i
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %.sroa.7.09.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.l, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 48 ; 2 uses
  %i.l = add nuw nsw i64 %.sroa.7.09.i.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16
  %i.n = atomicrmw xchg ptr %i.m, i64 3 acq_rel, align 8, !noalias !138
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.p = icmp eq ptr %i.k, %i.h
  br i1 %i.p, label %_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.j, i64 noundef %.sroa.7.09.i.i), !noalias !138
  br label %bb.d

_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit: ; preds = %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEBF_(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvXs7_B1v_B1t_NtNtNtBZ_3ops4drop4Drop4drop0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noundef nonnull align 128 dereferenceable(384) %0)
          to label %_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !174, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !174
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit unwind label %bb.l

_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !178, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !178
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit7

bb.d:                                             ; preds = %_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit7 unwind label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit: ; preds = %bb.b, %bb.c, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.a, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !182, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !182
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit7: ; preds = %_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop.exit, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !186, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !186
  %i.n = icmp eq i64 %4, 1
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit10

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit7
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit10 unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit, %bb.e, %bb.h
  %.pn2 = phi { ptr, i32 } [ %i.o, %bb.h ], [ %.pn, %bb.e ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit ]
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit10: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit7, %bb.g
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit13 unwind label %bb.j

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.j
  %.pn4 = phi { ptr, i32 } [ %i.s, %bb.j ], [ %.pn2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.q = load ptr, ptr %i.p, align 16, !alias.scope !189, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !189
  %i.r = icmp eq i64 %5, 1
  br i1 %i.r, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit unwind label %bb.l

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit10
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit13: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %i.u = load ptr, ptr %i.t, align 16, !alias.scope !192, !nonnull !5, !noundef !5
  %6 = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !192
  %i.v = icmp eq i64 %6, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit15

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit13
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit15

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit15: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit13, %bb.k
  ret void

bb.l:                                             ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.e, %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit, %bb.i
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !227, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !231, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !231
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !235, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !235
  %i.l = icmp eq i64 %2, 1
  br i1 %i.l, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6 unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit: ; preds = %.body, %bb.f, %bb.i
  %.pn = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body, %bb.f ], [ %eh.lpad-body, %.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !239, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !239
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit unwind label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !243, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !243
  %i.s = icmp eq i64 %4, 1
  br i1 %i.s, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9 unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit, %bb.h, %bb.l
  %.pn2 = phi { ptr, i32 } [ %i.w, %bb.l ], [ %.pn, %bb.h ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !246, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !246
  %i.v = icmp eq i64 %5, 1
  br i1 %i.v, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit6, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !249, !nonnull !5, !noundef !5
  %6 = atomicrmw sub ptr %i.y, i64 1 release, align 8, !noalias !249
  %i.z = icmp eq i64 %6, 1
  br i1 %i.z, label %bb.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit11: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit9, %bb.m
  ret void

bb.n:                                             ; preds = %bb.k, %bb.h, %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.k
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread7builder7BuilderECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !252, !noundef !5
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB2_20init_global_registryNtB2_12DefaultSpawnE0EB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 8 uses
  %i.c = alloca [104 x i8], align 8               ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store ptr %i.d, ptr %i.e, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.f = load atomic i32, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET acquire, align 4, !noalias !259
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !259
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !259
  store ptr %i.b, ptr %i.a, align 8, !noalias !259
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 @_RNvNtCskVyUMSjkkSy_10rayon_core8registry16THE_REGISTRY_SET, i1 noundef zeroext false, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
          to label %bb.f unwind label %bb.d, !noalias !259

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.c)
          to label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit unwind label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !range !14, !alias.scope !260, !noalias !259, !noundef !5
  %i.j = icmp eq i64 %i.i, 2
  br i1 %i.j, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %.body unwind label %bb.h, !noalias !259

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !259
  %i.k = load i64, ptr %i.b, align 8, !range !14, !alias.scope !261, !noalias !259, !noundef !5
  %i.l = icmp eq i64 %i.k, 2
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core17ThreadPoolBuilderEBD_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !259
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !259
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  %.val = load i64, ptr %i.d, align 8, !range !10, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load ptr, ptr %i.o, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1A_20ThreadPoolBuildErrorEEB1A_(i64 %.val, ptr %.val1) #21
          to label %bb.k unwind label %bb.j

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB11_20init_global_registryNtB11_12DefaultSpawnE0E0EB13_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB12_20init_global_registryNtB12_12DefaultSpawnE0E0EEB14_.exit4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB13_20init_global_registryNtB13_12DefaultSpawnE0E0E0B15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 4 uses
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  store i64 2, ptr %i.d, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %.not, label %bb.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !272
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8, !noalias !273
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !271
  %i.e = load i64, ptr %i.c, align 8, !range !10, !noalias !272, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !272 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !272
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !272
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  %.val.i = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !range !10, !noalias !272, !noundef !5
  %i.h = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.h, align 8, !noalias !272 ; 4 uses
  %i.i = icmp eq i64 %.val.i, 2
  br i1 %i.i, label %bb.e, label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !275
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.j = ptrtoint ptr %.val8.i to i64             ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.l = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %i.m = and i64 %i.j, 1095216660480
  %i.n = icmp ne i64 %i.m, 1095216660480
  call void @llvm.assume(i1 %i.l)
  call void @llvm.assume(i1 %i.n)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %.val8.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !276, !noalias !275
  store i8 3, ptr %i.a, align 8, !alias.scope !276, !noalias !275
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i unwind label %bb.h, !noalias !272

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !275
  br label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !272
  store ptr %.sroa.6.0.i, ptr %i.h, align 8, !noalias !272
  resume { ptr, i32 } %i.q

_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB4_20init_global_registryNtB4_12DefaultSpawnE0E0B6_.exit: ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
  store i64 %i.e, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !272
  store ptr %.sroa.6.0.i, ptr %i.h, align 8, !noalias !272
  ret void

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB8_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB13_23default_global_registryE0E0B15_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [96 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [96 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 13 uses
  %i.h = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !align !15, !noundef !5 ; 5 uses
  store ptr null, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ab, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !305
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  store i8 0, ptr %i.k, align 8, !noalias !305
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr null, ptr %i.l, align 8, !noalias !305
  store i64 0, ptr %i.f, align 8, !noalias !305
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr null, ptr %i.m, align 8, !noalias !305
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr null, ptr %i.n, align 8, !noalias !305
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  store i8 0, ptr %i.o, align 1, !noalias !305
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !305
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false), !noalias !305
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.d), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !305
  %i.p = load i64, ptr %i.g, align 8, !noalias !303
  %.not.i.i.i = icmp eq i64 %i.p, -1
  br i1 %.not.i.i.i, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i, label %bb.c

_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i: ; preds = %bb.b
  %.sroa.5.0..sroa_idx21.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload22.i = load ptr, ptr %.sroa.5.0..sroa_idx21.i, align 8, !noalias !303
  br label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.q = invoke noundef zeroext i1 @_RNvMs4_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildError14is_unsupported(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !305

bb.d:                                             ; preds = %bb.m, %bb.h, %bb.f, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #21
          to label %common.resume.i unwind label %bb.u, !noalias !305

bb.e:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.f, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.f:                                             ; preds = %bb.e
  %i.s = invoke noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2)
          to label %bb.g unwind label %bb.d, !noalias !305

bb.g:                                             ; preds = %bb.f
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.h:                                             ; preds = %bb.g
  store i64 1, ptr %i.j, align 8, !noalias !305
  store i8 1, ptr %i.k, align 8, !noalias !305
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !305
  invoke void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.f)
          to label %bb.i unwind label %bb.d, !noalias !305

bb.i:                                             ; preds = %bb.h
  %i.u = load i64, ptr %i.e, align 8, !range !10, !noalias !305, !noundef !5 ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.experimental.noalias.scope.decl(metadata !307)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !308, !noalias !305 ; 4 uses
  %switch.i.i.i.i.i.i = icmp samesign ult i64 %i.u, 2
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !309
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i) ]
  %i.x = ptrtoint ptr %.val1.i.i.i.i.i to i64     ; 2 uses
  %i.y = and i64 %i.x, 3
  switch i64 %i.y, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 1, label %bb.m
  ], !prof !11

default.unreachable:                              ; preds = %bb.x, %bb.r, %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.z = icmp ult ptr %.val1.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.aa = and i64 %i.x, 1095216660480
  %i.ab = icmp ne i64 %i.aa, 1095216660480
  call void @llvm.assume(i1 %i.z)
  call void @llvm.assume(i1 %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ac = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !310, !noalias !309
  store i8 3, ptr %i.c, align 8, !alias.scope !310, !noalias !309
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i unwind label %bb.d, !noalias !305

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !309
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i

bb.n:                                             ; preds = %bb.i
  %.sroa.5.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.0.copyload12.i = load ptr, ptr %.sroa.5.0..sroa_idx11.i, align 8, !noalias !303 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !305
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  %i.ae = load i64, ptr %i.g, align 8, !range !10, !alias.scope !311, !noalias !305, !noundef !5 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !314, !noalias !305, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !315
  %i.ai = icmp eq i64 %2, 1
  br i1 %i.ai, label %bb.p, label %.sink.split.i

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #25, !noalias !305
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val1.i.i3.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !317, !noalias !305 ; 4 uses
  %switch.i.i.i4.i.i.i = icmp samesign ult i64 %i.ae, 2
  br i1 %switch.i.i.i4.i.i.i, label %.sink.split.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i3.i.i.i) ]
  %i.ak = ptrtoint ptr %.val1.i.i3.i.i.i to i64   ; 2 uses
  %i.al = and i64 %i.ak, 3
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i
    i64 1, label %bb.t
  ], !prof !11

bb.s:                                             ; preds = %bb.r
  %i.am = icmp ult ptr %.val1.i.i3.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.ak, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ap = getelementptr i8, ptr %.val1.i.i3.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ap, ptr %i.aq, align 8, !alias.scope !319, !noalias !318
  store i8 3, ptr %i.b, align 8, !alias.scope !319, !noalias !318
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq), !noalias !318
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !318
  br label %.sink.split.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !305
  br label %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i

bb.u:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !305
  unreachable

common.resume.i:                                  ; preds = %bb.aa, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.bb, %bb.aa ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i

_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1z_20ThreadPoolBuildErrorEEB1z_.exit.i.i.i, %bb.g, %bb.e
  %.sroa.0.0.copyload.pr.i = load i64, ptr %i.g, align 8, !noalias !303 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !303 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !304
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.pr.i, -1
  br i1 %.not.i, label %bb.v, label %bb.w

.sink.split.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i, %bb.q, %bb.p, %bb.o, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i
  %.sroa.5.018.ph.i = phi ptr [ %.sroa.5.0.copyload22.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.thread19.i ], [ %.sroa.5.0.copyload12.i, %bb.p ], [ %.sroa.5.0.copyload12.i, %bb.o ], [ %.sroa.5.0.copyload12.i, %bb.q ], [ %.sroa.5.0.copyload12.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i5.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !304
  br label %bb.v

bb.v:                                             ; preds = %.sink.split.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i
  %.sroa.5.018.i = phi ptr [ %.sroa.5.0.copyload.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ], [ %.sroa.5.018.ph.i, %.sink.split.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.018.i) ]
  store ptr %.sroa.5.018.i, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !303
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i
  %.sroa.6.0.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.v ], [ %.sroa.5.0.copyload.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ -1, %bb.v ], [ %.sroa.0.0.copyload.pr.i, %_RNvYNvNtCskVyUMSjkkSy_10rayon_core8registry23default_global_registryINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB6_.exit.i ] ; 2 uses
  %.val.i = load i64, ptr %i.i, align 8, !range !10, !alias.scope !303, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.val8.i = load ptr, ptr %i.as, align 8, !alias.scope !303 ; 4 uses
  %i.at = icmp eq i64 %.val.i, 2
  br i1 %i.at, label %bb.x, label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  %i.au = ptrtoint ptr %.val8.i to i64            ; 2 uses
  %i.av = and i64 %i.au, 3
  switch i64 %i.av, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 3, label %bb.y
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
    i64 1, label %bb.z
  ], !prof !11

bb.y:                                             ; preds = %bb.x
  %i.aw = icmp ult ptr %.val8.i, inttoptr (i64 188978561024 to ptr)
  %i.ax = and i64 %i.au, 1095216660480
  %i.ay = icmp ne i64 %i.ax, 1095216660480
  call void @llvm.assume(i1 %i.aw)
  call void @llvm.assume(i1 %i.ay)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.az = getelementptr i8, ptr %.val8.i, i64 -1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !alias.scope !321, !noalias !320
  store i8 3, ptr %i.a, align 8, !alias.scope !321, !noalias !320
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i unwind label %bb.aa, !noalias !303

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !320
  br label %_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit

bb.aa:                                            ; preds = %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.i, ptr %i.i, align 8, !alias.scope !303
  store ptr %.sroa.6.0.i, ptr %i.as, align 8, !alias.scope !303
  br label %common.resume.i

_RNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB4_23default_global_registryE0B6_.exit: ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i
  store i64 %.sroa.0.0.i, ptr %i.i, align 8, !alias.scope !303
  store ptr %.sroa.6.0.i, ptr %i.as, align 8, !alias.scope !303
  ret void

bb.ab:                                            ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBd_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB18_20init_global_registryNtB18_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1a_(ptr nofree noundef readonly captures(none) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !alias.scope !335, !noalias !336 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.sroa.5.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !335, !noalias !336 ; 5 uses
  store i64 2, ptr %i.d, align 8, !alias.scope !335, !noalias !336
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.i, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.5.0..sroa_idx.i.i, i64 88, i1 false), !noalias !336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !338
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.b, align 8, !noalias !339
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !337
  %i.e = load i64, ptr %i.c, align 8, !range !10, !noalias !338, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.e, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !338 ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr %i.g, ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, align 8, !noalias !338
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0.i.i.i = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !338
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload.i.i) ]
  %.val.i.i.i = load i64, ptr %.sroa.5.sroa.4.0.copyload.i.i, align 8, !range !10, !noalias !338, !noundef !5
  %i.h = getelementptr i8, ptr %.sroa.5.sroa.4.0.copyload.i.i, i64 8 ; 3 uses
  %.val8.i.i.i = load ptr, ptr %i.h, align 8, !noalias !338 ; 4 uses
  %i.i = icmp eq i64 %.val.i.i.i, 2
  br i1 %i.i, label %bb.e, label %_RNvYNCINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtBb_4Once9call_onceNCINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNCINvB16_20init_global_registryNtB16_12DefaultSpawnE0E0E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB18_.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !341
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i.i) ]
  %i.j = ptrtoint ptr %.val8.i.i.i to i64         ; 2 uses
  %i.k = and i64 %i.j, 3
  switch i64 %i.k, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i.i.i.i.i
    i64 1, label %bb.g
  ], !prof !11

default.unreachable:                              ; preds = %bb.e
  unreachable
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry14inject_or_push:bb.a
bb.a:
  %i.a = tail call noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2) ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = icmp eq ptr %i.e, %0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr noundef nonnull align 128 %0)
  tail call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  fence seq_cst
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.j = tail call noundef i64 @_RINvMs_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyEB9_(ptr noundef nonnull align 8 %i.i) ; 2 uses
  %i.k = and i64 %i.j, 65535                      ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split, !prof !13

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i64 %i.j, 16
  %i.n = and i64 %i.m, 65535
  %i.o = icmp eq i64 %i.n, %i.k
  br i1 %i.o, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit, !prof !7

bb.f:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.q = tail call noundef zeroext i1 @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyBZ_(ptr noundef nonnull align 8 %i.p)
  tail call void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushBZ_(ptr noundef nonnull align 8 %i.p, ptr noundef nonnull %1, ptr noundef %2)
  %i.r = load ptr, ptr %i.c, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 472 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 496
  %i.u = tail call noundef i64 @_RINvMs_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyEB9_(ptr noundef nonnull align 8 %i.t) ; 2 uses
  %i.v = and i64 %i.u, 65535                      ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.q, label %bb.h, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split, !prof !13

bb.h:                                             ; preds = %bb.g
  %i.x = lshr i64 %i.u, 16
  %i.y = and i64 %i.x, 65535
  %i.z = icmp eq i64 %i.y, %i.v
  br i1 %i.z, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit, !prof !7

_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split: ; preds = %bb.g, %bb.h, %bb.d, %bb.e
  %.sink = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.s, %bb.h ], [ %i.s, %bb.g ]
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %.sink, i32 noundef 1)
  br label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit

_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit: ; preds = %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject.exit.sink.split, %bb.h, %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry17wait_until_primed(ptr nofree noundef nonnull readonly align 128 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.b = load ptr, ptr %i.a, align 128, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.02 = phi ptr [ %i.g, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.02, i64 24
  tail call void @_RNvMs3_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatch4wait(ptr noundef nonnull align 4 %i.h)
  %i.i = icmp eq ptr %i.g, %i.e
  br i1 %i.i, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 0, 192153584101141163) i64 @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry19current_num_threads() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink4.in = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ]
  %.sink4 = load ptr, ptr %.sink4.in, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %.sink4, i64 520
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp ult i64 %i.f, 192153584101141163
  tail call void @llvm.assume(i1 %i.g)
  ret i64 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry25increment_terminate_count(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.b = atomicrmw add ptr %i.a, i64 1 acq_rel, align 8
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 61 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.a, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry6inject(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr noundef nonnull align 128 %0)
  tail call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 344
  fence seq_cst
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.d = tail call noundef i64 @_RINvMs_NtNtCskVyUMSjkkSy_10rayon_core5sleep8countersNtB5_14AtomicCounters31increment_jobs_event_counter_ifNvMB5_NtB5_16JobsEventCounter9is_sleepyEB9_(ptr noundef nonnull align 8 %i.c) ; 2 uses
  %i.e = and i64 %i.d, 65535                      ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %.sink.split.i, !prof !13

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.b, i32 noundef 1)
  br label %_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.d, 16
  %i.h = and i64 %i.g, 65535
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %.sink.split.i, label %_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit, !prof !7

_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep8new_jobs.exit: ; preds = %bb.a, %.sink.split.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry7current() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  ret ptr %i.h

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336
  %1 = atomicrmw sub ptr %i.a, i64 1 acq_rel, align 8
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.d = load ptr, ptr %i.c, align 128, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.f, 48
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.0.010 = phi ptr [ %i.d, %.lr.ph ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.7.09 = phi i64 [ 0, %.lr.ph ], [ %i.k, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 48 ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.7.09, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.010, i64 16
  %i.m = atomicrmw xchg ptr %i.l, i64 3 acq_rel, align 8
  %i.n = icmp eq i64 %i.m, 2
  br i1 %i.n, label %bb.e, label %bb.d

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.o = icmp eq ptr %i.j, %i.g
  br i1 %i.o, label %.loopexit, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.i, i64 noundef %.sroa.7.09)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11set_current(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  call void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvMs8_B1v_B1t_11set_current0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.c = tail call { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.b) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e)
  %i.f = load i64, ptr %i.a, align 8, !range !14, !noundef !5
  switch i64 %i.f, label %default.unreachable [
    i64 0, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11
    i64 1, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
    i64 2, label %bb.c
  ]

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.h, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.j, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread: ; preds = %bb.a, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %.merged.i8 = phi { ptr, ptr } [ %i.l, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit ], [ %i.c, %bb.a ]
  %.pre-phi7 = phi ptr [ %i.h, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit ], [ %i.d, %bb.a ]
  %i.m = extractvalue { ptr, ptr } %.merged.i8, 1
  tail call void %.pre-phi7(ptr noundef %i.m)
  br label %bb.d

bb.d:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread
  %.not10 = phi i1 [ true, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread11 ], [ false, %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit.thread ]
  ret i1 %.not10
}

; Function Attrs: cold nonlazybind uwtable
define void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread15wait_until_cold(ptr noundef nonnull align 128 %0, ptr noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = load atomic i64, ptr %1 acquire, align 8
  %i.e = icmp eq i64 %i.d, 3
  br i1 %i.e, label %.loopexit20, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %.noexc14, %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.preheader.i
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.e, %bb.n, %bb.o, %bb.b
  %lpad.loopexit21 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit17, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit21, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit unwind label %bb.r

bb.b:                                             ; preds = %.lr.ph30, %bb.g
  %i.n = invoke { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %.noexc, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit

.noexc10:                                         ; preds = %.preheader.i
  %i.p = load i64, ptr %i.b, align 8, !range !14, !noundef !5
  switch i64 %i.p, label %default.unreachable [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable:                              ; preds = %.noexc10
  unreachable

bb.c:                                             ; preds = %.noexc10
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5
  %i.r = load ptr, ptr %i.i, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.noexc10, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.r, %bb.c ], [ undef, %.noexc10 ]
  %.sroa.0.0.i = phi ptr [ %i.q, %bb.c ], [ null, %.noexc10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.s = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.t = insertvalue { ptr, ptr } %i.s, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.loopexit20:                                      ; preds = %bb.g, %bb.a, %bb.q
  ret void

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %.loopexit.i, %.noexc
  %.merged.i = phi { ptr, ptr } [ %i.n, %.noexc ], [ %i.t, %.loopexit.i ] ; 2 uses
  %i.u = extractvalue { ptr, ptr } %.merged.i, 0  ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.v = extractvalue { ptr, ptr } %.merged.i, 1
  invoke void %i.u(ptr noundef %i.v)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.f:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5
  %i.x = load i64, ptr %i.k, align 128, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 496
  %i.z = atomicrmw add ptr %i.y, i64 65536 seq_cst, align 8 ; 0 uses
  store i64 %i.x, ptr %i.c, align 8
  store i32 0, ptr %i.l, align 8
  store i64 -1, ptr %i.m, align 8
  %i.aa = load atomic i64, ptr %1 acquire, align 8
  %i.ab = icmp eq i64 %i.aa, 3
  br i1 %i.ab, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %bb.e, %bb.p
  %i.ac = load atomic i64, ptr %1 acquire, align 8
  %i.ad = icmp eq i64 %i.ac, 3
  br i1 %i.ad, label %.loopexit20, label %bb.b

.lr.ph:                                           ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.ae = invoke fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %.lr.ph
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %.not9 = icmp eq ptr %i.af, null
  %i.ag = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 3 uses
  br i1 %.not9, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 472 ; 2 uses
  %i.ai = load i32, ptr %i.l, align 8, !alias.scope !364, !noundef !5 ; 3 uses
  %i.aj = icmp ult i32 %i.ai, 32
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp eq i32 %i.ai, 32
  br i1 %i.ak, label %bb.l, label %bb.m, !prof !7

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %bb.k
  %i.al = add nuw nsw i32 %i.ai, 1
  store i32 %i.al, ptr %i.l, align 8, !alias.scope !364
  br label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = invoke noundef i64 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep15announce_sleepy(ptr noundef nonnull align 8 %i.ah)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.l
  store i64 %i.am, ptr %i.m, align 8, !alias.scope !364
  store i32 33, ptr %i.l, align 8, !alias.scope !364
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit

bb.m:                                             ; preds = %bb.j
  invoke void @_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep5sleepNCNvMs8_NtB5_8registryNtB10_12WorkerThread15wait_until_cold0EB5_(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 128 %0)
          to label %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit unwind label %.loopexit

_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit: ; preds = %bb.m, %.noexc14, %.noexc13
  %i.an = load atomic i64, ptr %1 acquire, align 8
  %i.ao = icmp eq i64 %i.an, 3
  br i1 %i.ao, label %._crit_edge, label %.lr.ph

bb.n:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 496
  %2 = atomicrmw sub ptr %i.ap, i64 65536 seq_cst, align 8
  %i.aq = and i64 %2, 65535
  %..i12 = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 2)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 472
  %i.as = trunc nuw nsw i64 %..i12 to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.ar, i32 noundef %i.as)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.o:                                             ; preds = %bb.n
  %i.at = extractvalue { ptr, ptr } %i.ae, 1
  invoke void %i.af(ptr noundef %i.at)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.f, %_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep13no_work_foundNCNvMs8_NtB5_8registryNtB19_12WorkerThread15wait_until_cold0EB5_.exit
  %i.au = load ptr, ptr %i.j, align 16, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 496
  %3 = atomicrmw sub ptr %i.av, i64 65536 seq_cst, align 8
  %i.aw = and i64 %3, 65535
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.aw, i64 2)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 472
  %i.ay = trunc nuw nsw i64 %..i to i32
  invoke void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep16wake_any_threads(ptr noundef nonnull align 8 %i.ax, i32 noundef %i.ay)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit20

bb.r:                                             ; preds = %.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core6unwind12AbortIfPanicEBF_.exit: ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread16has_injected_job(ptr noundef nonnull align 128 captures(address, read_provenance) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = tail call noundef zeroext i1 @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB10_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = tail call noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr noundef nonnull align 128 %i.e)
  %i.g = xor i1 %i.f, true
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ %i.g, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9find_work(ptr noundef nonnull align 128 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 10 uses
  %i.d = alloca [1 x i8], align 1                 ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = tail call { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr noundef nonnull align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %.preheader.i, label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
  %i.j = load i64, ptr %i.e, align 8, !range !14, !noundef !5
  switch i64 %i.j, label %.unreachabledefault [
    i64 0, label %.loopexit.i
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

.unreachabledefault:                              ; preds = %bb.b
  unreachable

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !noundef !5
  br label %.loopexit.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.b

.loopexit.i:                                      ; preds = %bb.b, %bb.c
  %.sroa.5.0.i = phi ptr [ %i.n, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.l, %bb.c ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.o = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.5.0.i, 1
  br label %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit

_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit: ; preds = %bb.a, %.loopexit.i
  %.merged.i = phi { ptr, ptr } [ %i.g, %bb.a ], [ %i.p, %.loopexit.i ] ; 2 uses
  %i.q = extractvalue { ptr, ptr } %.merged.i, 0
  %.not.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i1, label %bb.e, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

bb.e:                                             ; preds = %_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread14take_local_job.exit
  %i.r = getelementptr i8, ptr %0, i64 272        ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !nonnull !5, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 520
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 4 uses
  %i.v = icmp ult i64 %i.u, 2
  br i1 %i.v, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 512
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.415.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.516.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = insertelement <2 x ptr> poison, ptr %i.z, i64 0
  %i.ab = insertelement <2 x ptr> %i.aa, ptr %i.x, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 0, ptr %i.d, align 1
  %i.ac = load i64, ptr %i.y, align 8, !noundef !5 ; 2 uses
  %i.ad = lshr i64 %i.ac, 12
  %i.ae = xor i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = shl i64 %i.ae, 25
  %i.ag = xor i64 %i.af, %i.ae                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 27
  %i.ai = xor i64 %i.ah, %i.ag                    ; 2 uses
  store i64 %i.ai, ptr %i.y, align 8
  %i.aj = mul i64 %i.ai, 2685821657736338717
  %i.ak = urem i64 %i.aj, %i.u                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8
  store i64 %i.ak, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8
  store ptr %0, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store <2 x ptr> %i.ab, ptr %i.b, align 16
  store i64 %i.u, ptr %.sroa.415.0..sroa_idx.i.i.i, align 16
  store ptr %i.d, ptr %.sroa.516.0..sroa_idx.i.i.i, align 8
  %i.al = call { ptr, ptr } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldjuINtNtB15_12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB3t_8registryNtB4d_12WorkerThread5steal0NCINvNvB1x_8find_map5checkjB3p_NCB47_s_0E0E0B2P_EB3t_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b) ; 2 uses
  %i.am = extractvalue { ptr, ptr } %i.al, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i = icmp eq ptr %i.am, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i.i, label %bb.g, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = load i8, ptr %i.d, align 1, !range !4, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.ao, label %bb.f, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19: ; preds = %bb.g
  %.val.i.pre = load ptr, ptr %i.r, align 16
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_works_0EBM_.exit

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread: ; preds = %bb.e, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19
  %.val.i = phi ptr [ %i.s, %bb.e ], [ %.val.i.pre, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread19 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 128
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7or_elseNCNvMs8_NtBM_8registryNtB1E_12WorkerThread9find_work0EBM_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 128 %i.ap)
  %i.aq = load i64, ptr %i.a, align 8, !range !14, !noundef !5
  switch i64 %i.aq, label %default.unreachable [
    i64 0, label %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !5, !noundef !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !noundef !5
  br label %_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

_RNCNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_12WorkerThread9find_works_0B9_.exit.i: ; preds = %bb.h, %bb.i
  %.sroa.3.0.i.i.i = phi ptr [ %i.au, %bb.i ], [ undef, %bb.h ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.as, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_2
begin_hunk_3_@_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry:bb.a
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit: ; preds = %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit, %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
  %.sroa.5.09 = phi ptr [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %bb.j ], [ @_RNvNtCskVyUMSjkkSy_10rayon_core8registry12THE_REGISTRY, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %.sroa.5.0.copyload, %_RINvNtCskVyUMSjkkSy_10rayon_core8registry19set_global_registryNvB2_23default_global_registryEB4_.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.09) ]
  ret ptr %.sroa.5.09

bb.j:                                             ; preds = %bb.e
  %switch.i.i = icmp samesign ult i64 %.sroa.0.0.copyload, 2
  br i1 %switch.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !375
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.o = ptrtoint ptr %.sroa.5.0.copyload to i64  ; 2 uses
  %i.p = and i64 %i.o, 3
  switch i64 %i.p, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 3, label %bb.l
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i
    i64 1, label %bb.m
  ], !prof !11

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.q = icmp ult ptr %.sroa.5.0.copyload, inttoptr (i64 188978561024 to ptr)
  %i.r = and i64 %i.o, 1095216660480
  %i.s = icmp ne i64 %i.r, 1095216660480
  call void @llvm.assume(i1 %i.q)
  call void @llvm.assume(i1 %i.s)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %.sroa.5.0.copyload, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !alias.scope !376, !noalias !375
  store i8 3, ptr %i.a, align 8, !alias.scope !376, !noalias !375
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.u), !noalias !375
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !375
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultRINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryENtB1k_20ThreadPoolBuildErrorE6expectB1k_.exit
}

; Function Attrs: nonlazybind uwtable
define noundef ptr @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree nonnull readnone captures(none) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 2 uses
  %.sroa.13 = alloca [7 x i8], align 1            ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 0, ptr %i.g, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 -1, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i8 0, ptr %.sroa.1251.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.n, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.e unwind label %bb.u

bb.c:                                             ; preds = %bb.a, %bb.j
  %.sroa.1251.0 = phi i8 [ 0, %bb.a ], [ %.sroa.1251.0.copyload53, %bb.j ]
  %.sroa.9.0 = phi i64 [ -1, %bb.a ], [ %.sroa.9.0.copyload44, %bb.j ]
  %.sroa.8.0 = phi i64 [ undef, %bb.a ], [ %.sroa.8.0.copyload40, %bb.j ]
  %.sroa.0.061 = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.copyload37, %bb.j ]
  %i.o = load i64, ptr %1, align 8, !range !16, !noundef !5
  %i.p = trunc nuw i64 %i.o to i1                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %.sroa.8.1 = select i1 %i.p, i64 %i.r, i64 %.sroa.8.0
  %.sroa.0.1 = select i1 %i.p, i64 1, i64 %.sroa.0.061
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.0.1, ptr %i.c, align 8
  %.sroa.8.0..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.8.1, ptr %.sroa.8.0..sroa_idx41, align 8
  %.sroa.9.0..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx45, align 8
  %.sroa.12.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  %.sroa.1251.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i8 %.sroa.1251.0, ptr %.sroa.1251.0..sroa_idx54, align 8
  %.sroa.13.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx59, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false)
  call void @_RINvMNtNtCsaL1QbXo9JQH_3std6thread7builderNtB3_7Builder15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1g_12DefaultSpawnNtB1g_11ThreadSpawn5spawn0uEB1i_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  br i1 %i.t, label %bb.k, label %bb.l

bb.d:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.a, align 8, !range !16, !noundef !5
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !405, !noundef !5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.aa, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.z, i64 %i.ab) #23
          to label %bb.t unwind label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = icmp ule i64 %i.n, %i.z
  tail call void @llvm.assume(i1 %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not35 = icmp eq i64 %i.n, 0
  br i1 %.not35, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 %i.z, ptr %i.f, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ac, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.n, ptr %.sroa.628.0..sroa_idx, align 8
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread7builderNtB2_7Builder4name(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %bb.j unwind label %bb.d

bb.i:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.0.0.copyload37 = load i64, ptr %i.h, align 8
  %.sroa.8.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0.copyload40 = load i64, ptr %.sroa.8.0..sroa_idx39, align 8
  %.sroa.9.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.9.0.copyload44 = load i64, ptr %.sroa.9.0..sroa_idx43, align 8
  %.sroa.12.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx48, i64 16, i1 false)
  %.sroa.1251.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.1251.0.copyload53 = load i8, ptr %.sroa.1251.0..sroa_idx52, align 8
  %.sroa.13.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.h, i64 41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.13.0..sroa_idx58, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core.exit

bb.l:                                             ; preds = %bb.c
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.531.0.copyload = load i64, ptr %.sroa.531.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.s, ptr %i.e, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  store ptr %i.v, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 %.sroa.531.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  invoke void @_RNvXs1_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6ThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.520.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !406)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.af = load ptr, ptr %i.e, align 8, !alias.scope !410, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.af, i64 1 release, align 8, !noalias !411
  %i.ag = icmp eq i64 %2, 1
  br i1 %i.ag, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  call void @llvm.experimental.noalias.scope.decl(metadata !413)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.ah = load ptr, ptr %i.e, align 8, !alias.scope !416, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !417
  %i.ai = icmp eq i64 %3, 1
  br i1 %i.ai, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i unwind label %bb.q

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.q, %bb.n, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.ae, %bb.n ], [ %i.ae, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.aj = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !420, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !421
  %i.ak = icmp eq i64 %4, 1
  br i1 %i.ak, label %bb.p, label %.body.thread

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.419.0..sroa_idx) #25
          to label %.body.thread unwind label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i: ; preds = %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6thread4unix6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %i.am = load ptr, ptr %.sroa.419.0..sroa_idx, align 8, !alias.scope !424, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !425
  %i.an = icmp eq i64 %5, 1
  br i1 %i.an, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core.exit

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.419.0..sroa_idx) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core.exit

bb.s:                                             ; preds = %bb.p, %bb.n
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i, %bb.r, %bb.k
  %.sroa.0.0 = phi ptr [ %i.v, %bb.k ], [ null, %bb.r ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit3.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %.sroa.0.0

bb.t:                                             ; preds = %bb.f
  unreachable

bb.u:                                             ; preds = %bb.f, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread7builder7BuilderECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #21
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %.body, %bb.u
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

.body.thread:                                     ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i, %bb.p, %.body
  %.pn67 = phi { ptr, i32 } [ %.pn, %.body ], [ %.pn.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %.pn.i.i, %bb.p ]
  resume { ptr, i32 } %.pn67

.body:                                            ; preds = %bb.u, %bb.d
  %.pn = phi { ptr, i32 } [ %lpad.thr_comm, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.d ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry13ThreadBuilderEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %1) #21
          to label %.body.thread unwind label %bb.v
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10TerminatorNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !15, !noundef !5
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  %1 = atomicrmw sub ptr %i.c, i64 1 acq_rel, align 8
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 520
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.h, 48
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 472
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.l, %bb.d ] ; 2 uses
  %.sroa.7.09.i = phi i64 [ 0, %.lr.ph.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 48 ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.7.09.i, 1
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16
  %i.o = atomicrmw xchg ptr %i.n, i64 3 acq_rel, align 8
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.q = icmp eq ptr %i.l, %i.i
  br i1 %i.q, label %_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep26notify_worker_latch_is_set(ptr noundef nonnull align 8 %i.k, i64 noundef %.sroa.7.09.i)
  br label %bb.d

_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry9terminate.exit: ; preds = %bb.d, %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs4_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_9LockLatchNtB5_5Latch3set(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexbE4lockCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.c = load i64, ptr %i.b, align 8, !range !16, !alias.scope !428, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !428
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !428, !nonnull !5, !align !12, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !4, !alias.scope !428, !noundef !5
  store ptr %i.f, ptr %i.a, align 8, !noalias !428
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.h, ptr %i.i, align 8, !noalias !428
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23
          to label %bb.d unwind label %bb.c, !noalias !428

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume unwind label %bb.e, !noalias !428

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24, !noalias !428
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.r, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !428, !nonnull !5, !align !12, !noundef !5 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !4, !alias.scope !428, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  store i8 1, ptr %i.p, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.q)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core(ptr nonnull %i.m, i8 %i.o) #21
          to label %common.resume unwind label %bb.l

bb.g:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskVyUMSjkkSy_10rayon_core.exit
  %i.s = trunc nuw i8 %i.o to i1
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  br i1 %i.s, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.v = and i64 %i.u, 9223372036854775807
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.x = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #25
  br i1 %i.x, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  store atomic i8 1, ptr %i.t monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.y = atomicrmw xchg ptr %i.m, i32 0 release, align 4
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit, !prof !7

bb.k:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardbEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([384 x i8]) align 128 captures(none) dereferenceable(384) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [256 x i8], align 128             ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !4, !noundef !5 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo3new(ptr noalias nofree noundef nonnull sret([256 x i8]) align 128 captures(none) dereferenceable(256) %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %2 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !447
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i, %bb.d
  %i.n = atomicrmw add ptr @_RNvNvMs9_NtCskVyUMSjkkSy_10rayon_core8registryNtB7_14XorShift64Star3new7COUNTER, i64 1 monotonic, align 8 ; 2 uses
  %i.o = xor i64 %i.n, 8387220255154660723        ; 4 uses
  %i.p = add i64 %i.o, 7816392313619706465
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 16)
  %i.r = xor i64 %i.p, %i.q                       ; 3 uses
  %i.s = add i64 %i.r, -2389207006547353658       ; 2 uses
  %i.t = xor i64 %i.s, %i.n
  %i.u = add i64 %i.o, -6481707427168261424       ; 3 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.x = xor i64 %i.u, -2011800112340241627       ; 3 uses
  %i.y = xor i64 %i.w, %i.s
  %i.z = xor i64 %i.y, 576460752303423488         ; 3 uses
  %i.aa = add i64 %i.t, %i.x                      ; 3 uses
  %i.ab = add i64 %i.z, %i.v                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ad = xor i64 %i.aa, %i.ac                    ; 3 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.af = xor i64 %i.ae, %i.ab                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 32)
  %i.ah = add i64 %i.ab, %i.ad                    ; 3 uses
  %i.ai = add i64 %i.af, %i.ag                    ; 2 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 17)
  %i.ak = xor i64 %i.ah, %i.aj                    ; 3 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 21)
  %i.am = xor i64 %i.al, %i.ai                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.ao = xor i64 %i.ai, 576460752303423488
  %i.ap = xor i64 %i.an, 255
  %i.aq = add i64 %i.ao, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.am, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 13)
  %i.at = xor i64 %i.aq, %i.as                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.ax, %i.az                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay                    ; 3 uses
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 32)
  %i.bl = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bm = add i64 %i.bj, %i.bk                    ; 2 uses
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bo = xor i64 %i.bn, %i.bl                    ; 3 uses
  %i.bp = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bq = xor i64 %i.bp, %i.bm                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bs = add i64 %i.bo, %i.bm
  %i.bt = add i64 %i.bq, %i.br                    ; 2 uses
  %i.bu = tail call noundef i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 13)
  %i.bv = xor i64 %i.bu, %i.bs                    ; 3 uses
  %i.bw = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 16)
  %i.bx = xor i64 %i.bw, %i.bt                    ; 2 uses
  %i.by = add i64 %i.bv, %i.bt                    ; 4 uses
  %i.bz = tail call noundef i64 @llvm.fshl.i64(i64 %i.bv, i64 %i.bv, i64 17)
  %i.ca = tail call noundef i64 @llvm.fshl.i64(i64 %i.bx, i64 %i.bx, i64 21)
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.by, i64 %i.by, i64 32)
  %i.cc = xor i64 %i.ca, %i.bz
  %i.cd = xor i64 %i.cc, %i.cb                    ; 2 uses
  %i.ce = icmp eq i64 %i.cd, %i.by
  br i1 %i.ce, label %._crit_edge.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.cf = xor i64 %i.cd, %i.by
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 280
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.f, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 %i.h, ptr %i.ck, align 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(256) %0, ptr noundef nonnull align 128 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %i.m, ptr %i.cl, align 128
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.cf, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.ch, ptr %i.cn, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !range !9, !alias.scope !448, !noundef !5
  %i.cq = icmp eq i64 %i.cp, -1
  br i1 %i.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.k, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %bb.g ], [ %i.j, %bb.k ], [ %i.j, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.co)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskVyUMSjkkSy_10rayon_core.exit.i
  ret void

bb.i:                                             ; preds = %bb.l, %bb.j, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %bb.c, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !449)
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.cu = load ptr, ptr %i.c, align 8, !alias.scope !452, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.cu, i64 1 release, align 8, !noalias !452
  %i.cv = icmp eq i64 %3, 1
  br i1 %i.cv, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #25
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, %bb.j
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs1xwejQucwHj_5alloc6string6StringEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cw) #21
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !455, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.cy, i64 1 release, align 8, !noalias !455
  %i.cz = icmp eq i64 %4, 1
  br i1 %i.cz, label %bb.l, label %common.resume

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cx) #25
          to label %common.resume unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThreadNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 128 dereferenceable(384) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNCNvXs7_B1v_B1t_NtNtNtBZ_3ops4drop4Drop4drop0uEB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @2, ptr noundef nonnull align 128 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtCs1xwejQucwHj_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !16, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskVyUMSjkkSy_10rayon_core8registryNtB4_13ThreadBuilderNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = ptrtoint ptr %i.e to i64
  store i64 %i.f, ptr %i.a, align 8
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 5, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 4, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 10, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  %i.m = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_CskVyUMSjkkSy_10rayon_coreNtB5_20ThreadPoolBuildErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10RegistryIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_INtNtB1f_4cell4CellPNtB8_12WorkerThreadEEEEE9call_onceBa_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep15announce_sleepy(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now() unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB3_5Sleep5sleepNCNvMs8_NtB5_8registryNtB10_12WorkerThread15wait_until_cold0EB5_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24), ptr noundef nonnull align 8, ptr noundef nonnull align 128) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_num_threadsB5_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3q_7StealerB4a_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3n_EIB4P_B4u_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1s_8Registry3newNtB1s_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator5unzipINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1u_3job6JobRefEINtB3s_7StealerB4c_EINtNtCs1xwejQucwHj_5alloc3vec3VecB3p_EIB4R_B4w_EEB1u_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB2_5Sleep3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_CskVyUMSjkkSy_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameB5_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(96), i64 noundef) unnamed_addr #0
end_hunk_3
