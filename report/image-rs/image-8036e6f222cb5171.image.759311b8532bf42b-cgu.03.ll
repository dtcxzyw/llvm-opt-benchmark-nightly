Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.03?download=true
inline.NumInlined: 1816
inline.NumDeleted: 1049
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_RINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnECsa5QsYiPB8Gl_5image:bb.a
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core5sleep5SleepECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #37
          to label %bb.k unwind label %bb.bl

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.539)
  %.sroa.539.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.539, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.539.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 504
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 389
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %.sroa.0.sroa.9.sroa.5.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(27) %.sroa.539, i64 27, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.539)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 1, ptr %i.g, align 128
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i64 0, ptr %i.ba, align 128
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.au, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 128
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  store ptr %i.au, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 128
  %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 388
  store i8 0, ptr %.sroa.0.sroa.9.sroa.4.0..sroa.0.sroa.9.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bb = load <2 x ptr>, ptr %i.aw, align 8
  store ptr null, ptr %i.aw, align 8
  store <2 x ptr> %i.bb, ptr %.sroa.5.0..sroa_idx, align 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  %i.bc = load <2 x ptr>, ptr %i.ax, align 8
  store ptr null, ptr %i.ax, align 8
  store <2 x ptr> %i.bc, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  %i.bd = load <2 x ptr>, ptr %i.ay, align 8
  store ptr null, ptr %i.ay, align 8
  store <2 x ptr> %i.bd, ptr %.sroa.9.0..sroa_idx, align 64
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 464
  store i64 1, ptr %.sroa.11.0..sroa_idx, align 16
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !233
  %i.be = call noundef align 128 dereferenceable_or_null(640) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 640, i64 noundef range(i64 1, -9223372036854775807) 128) #33, !noalias !233 ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.p, label %bb.u, !prof !18

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 640) #36
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(640) %i.g) #37
          to label %.thread105 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.s:                                             ; preds = %.critedge, %bb.t
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %.critedge ], [ %i.bi, %bb.t ]
  invoke void @_RNvXs3_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_10TerminatorNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit unwind label %bb.bl

bb.t:                                             ; preds = %bb.aj, %bb.z
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(640) %i.be, ptr noundef nonnull align 128 dereferenceable(640) %i.g, i64 640, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %i.be, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.t, ptr %i.p, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bl = load i64, ptr %i.z, align 8, !range !11, !noundef !7
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !7 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 288230376151711744
  call void @llvm.assume(i1 %i.bo)
  %.idx = shl nuw nsw i64 %i.bn, 5
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 3 uses
  %.sroa.093.0.copyload = load i64, ptr %i.v, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.494.0.copyload = load ptr, ptr %.sroa.494.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.595.0.copyload = load i64, ptr %.sroa.595.0..sroa_idx, align 8 ; 2 uses
  %i.bq = icmp ult i64 %.sroa.595.0.copyload, 576460752303423488
  call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %.sroa.494.0.copyload, i64 %.sroa.595.0.copyload ; 3 uses
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.bk, ptr %i.o, align 8
  %.sroa.08.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 11 uses
  %.sroa.08.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.bl, ptr %.sroa.08.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.08.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.bp, ptr %.sroa.08.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.sroa.494.0.copyload, ptr %.sroa.08.sroa.2.0..sroa_idx, align 8
  %.sroa.08.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 11 uses
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store i64 %.sroa.093.0.copyload, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store ptr %i.br, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !234
  %i.bs = icmp eq i64 %i.bn, 0
  br i1 %i.bs, label %.loopexit, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph: ; preds = %bb.u
  %.sroa.522.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  %.sroa.421.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.1298.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph, %.backedge
  %i.ce = phi ptr [ %i.bk, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.ci, %.backedge ] ; 5 uses
  %i.cf = phi ptr [ %.sroa.494.0.copyload, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.cn, %.backedge ] ; 5 uses
  %i.cg = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %.be, %.backedge ] ; 4 uses
  %i.ch = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i.lr.ph ], [ %i.cr, %.backedge ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 13 uses
  %.sroa.5.0..sroa_idx12.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %.sroa.5.0.copyload13.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx12.i.i.i, align 8, !noalias !235 ; 3 uses
  %.not.i.i.i = icmp eq i8 %.sroa.5.0.copyload13.i.i.i, 2
  br i1 %.not.i.i.i, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i
  %.sroa.7.0..sroa_idx14.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 25 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.522.0..sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false), !noalias !236
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.421.0..sroa_idx.i.i.i, align 8, !noalias !236
  %i.cj = icmp eq ptr %i.cf, %i.br
  br i1 %i.cj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.br, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.ch, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.ck = load ptr, ptr %i.c, align 8, !alias.scope !240, !noalias !236, !nonnull !7, !noundef !7
  %i.cl = atomicrmw add ptr %i.ck, i64 -1 release, align 8, !noalias !241
  %i.cm = icmp eq i64 %i.cl, 1
  br i1 %i.cm, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #38
          to label %bb.z unwind label %.body56.thread142.loopexit.split-lp

.critedge:                                        ; preds = %.body56.thread142.loopexit, %.body56.thread142.loopexit.split-lp, %bb.as, %bb.av, %bb.am, %bb.bk, %.noexc82, %bb.bo
  %.pn48.pn = phi { ptr, i32 } [ %i.dv, %bb.as ], [ %i.ev, %.noexc82 ], [ %i.eb, %bb.av ], [ %i.ev, %bb.bo ], [ %lpad.thr_comm.split-lp, %bb.bk ], [ %i.di, %bb.am ], [ %lpad.loopexit, %.body56.thread142.loopexit ], [ %lpad.loopexit.split-lp, %.body56.thread142.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o) #37
          to label %bb.s unwind label %bb.bl

bb.y:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 11 uses
  %i.co = load ptr, ptr %i.cf, align 8, !noalias !242, !nonnull !7, !noundef !7 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cq = load i8, ptr %i.cp, align 8, !range !14, !noalias !242, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.1298.8..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx14.i.i.i, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  %i.cr = add i64 %i.cg, 1                        ; 6 uses
  store i8 %.sroa.5.0.copyload13.i.i.i, ptr %.sroa.9.8..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.co, ptr %i.m, align 8
  store i8 %i.cq, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs2_CsPkZ9TkQnmq_10rayon_coreNtB5_17ThreadPoolBuilder15get_thread_nameCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cg)
          to label %bb.ab unwind label %bb.bm

.loopexit:                                        ; preds = %.backedge, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i, %bb.u
  %.lcssa185 = phi i64 [ 0, %bb.u ], [ %i.cr, %.backedge ], [ %i.ch, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %.lcssa173 = phi ptr [ %.sroa.494.0.copyload, %bb.u ], [ %i.cn, %.backedge ], [ %i.cf, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.cs = phi ptr [ %i.bk, %bb.u ], [ %i.bp, %.backedge ], [ %i.ci, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i ]
  store ptr %i.cs, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %.lcssa173, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %.lcssa185, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !236
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.aa unwind label %bb.t

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ct = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cu, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81: ; preds = %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCsPkZ9TkQnmq_10rayon_core17ThreadPoolBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(96) %1)
  ret void

bb.ab:                                            ; preds = %bb.y
  %i.cv = load <2 x i64>, ptr %1, align 8
  %i.cw = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  %i.cx = atomicrmw add ptr %i.cw, i64 1 monotonic, align 8
  %i.cy = icmp slt i64 %i.cx, 0
  br i1 %i.cy, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store <2 x i64> %i.cv, ptr %i.l, align 16
  store ptr %i.co, ptr %i.bw, align 8
  store i8 %i.cq, ptr %i.bx, align 16
  store ptr %i.cz, ptr %i.by, align 8
  store i64 %i.cg, ptr %i.bz, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.da = icmp eq i64 %i.cg, 0
  %i.db = load i8, ptr %i.ca, align 8, !range !14
  %i.dc = trunc nuw i8 %i.db to i1
  %or.cond = select i1 %i.da, i1 %i.dc, i1 false
  br i1 %or.cond, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.trap()
  unreachable

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 16 dereferenceable(104) %i.l, i64 104, i1 false)
  %i.dd = invoke noundef ptr @_RNvXs0_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12DefaultSpawnNtB5_11ThreadSpawn5spawn(ptr noalias nofree noundef nonnull %i.cb, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h)
          to label %bb.be unwind label %.body56.thread142.loopexit ; 2 uses

bb.af:                                            ; preds = %bb.ac
  %i.de = invoke noundef ptr @_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellPNtNtCsPkZ9TkQnmq_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @16)
          to label %bb.ag unwind label %bb.bk

.body56.thread142.loopexit:                       ; preds = %bb.ay, %bb.aq, %bb.ai, %bb.ae, %bb.ao, %bb.ba
  %.lcssa382 = phi i64 [ 1, %bb.ay ], [ 1, %bb.aq ], [ 1, %bb.ai ], [ %i.cr, %bb.ae ], [ 1, %bb.ao ], [ 1, %bb.ba ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %.lcssa382, ptr %.sroa.2.0..sroa_idx, align 8
  br label %.critedge

.body56.thread142.loopexit.split-lp:              ; preds = %bb.bc, %bb.x, %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.ag:                                            ; preds = %bb.af
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry13ThreadBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(104) %i.l)
          to label %bb.aj unwind label %.body56.thread142.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.i, ptr noundef nonnull align 16 dereferenceable(104) %i.l, i64 104, i1 false)
  invoke void @_RNvXs6_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12WorkerThreadINtNtCsj6eKBz9Db1c_4core7convert4FromNtB5_13ThreadBuilderE4from(ptr noalias nofree noundef nonnull sret([384 x i8]) align 128 captures(none) dereferenceable(384) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.i)
          to label %bb.ak unwind label %.body56.thread142.loopexit

bb.aj:                                            ; preds = %bb.ah, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3zip3ZipINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIB1C_INtB2s_7StealerB3c_EEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(88) %i.o)
          to label %bb.bg unwind label %bb.t

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #33, !noalias !243
  %i.dg = call noundef align 128 dereferenceable_or_null(384) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef range(i64 1, -9223372036854775807) 128) #33, !noalias !243 ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.al, label %bb.ao, !prof !18

bb.al:                                            ; preds = %bb.ak
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 384) #36
          to label %.noexc69 unwind label %bb.am

.noexc69:                                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry12WorkerThreadECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 128 dereferenceable(384) %i.j) #37
          to label %.critedge unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(384) %i.dg, ptr noundef nonnull align 128 dereferenceable(384) %i.j, i64 384, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs8_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_12WorkerThread11set_current(ptr noundef nonnull %i.dg)
          to label %bb.ap unwind label %.body56.thread142.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.dk = load ptr, ptr %i.t, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 520
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !7
  %.not47 = icmp eq i64 %i.dm, 0
  br i1 %.not47, label %bb.bc, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 512
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 4 %i.dp)
          to label %.noexc71 unwind label %.body56.thread142.loopexit

.noexc71:                                         ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.dq = load i64, ptr %i.b, align 8, !range !19, !alias.scope !244, !noundef !7
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %bb.ar, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i, !prof !18

bb.ar:                                            ; preds = %.noexc71
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  %i.ds = load ptr, ptr %i.cc, align 8, !alias.scope !244, !nonnull !7, !align !20, !noundef !7
  %i.dt = load i8, ptr %i.cd, align 8, !range !14, !alias.scope !244, !noundef !7
  store ptr %i.ds, ptr %i.a, align 8, !noalias !244
  %i.du = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.dt, ptr %i.du, align 8, !noalias !244
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #36
          to label %bb.at unwind label %bb.as, !noalias !244

bb.as:                                            ; preds = %bb.ar
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #37
          to label %.critedge unwind label %bb.au, !noalias !244

bb.at:                                            ; preds = %bb.ar
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39, !noalias !244
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i: ; preds = %.noexc71
  %i.dx = load ptr, ptr %i.cc, align 8, !alias.scope !244, !nonnull !7, !align !20, !noundef !7 ; 5 uses
  %i.dy = load i8, ptr %i.cd, align 8, !range !14, !alias.scope !244, !noundef !7 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 5
  store i8 1, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 32
  invoke void @_RNvMNtNtNtCsaKJjC64KgbL_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4 %i.ea)
          to label %bb.aw unwind label %bb.av

bb.av:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECsa5QsYiPB8Gl_5image(ptr nonnull %i.dx, i8 %i.dy) #37
          to label %.critedge unwind label %bb.bb

bb.aw:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCsa5QsYiPB8Gl_5image.exit.i
  %i.ec = trunc nuw i8 %i.dy to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  br i1 %i.ec, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ee = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ef = and i64 %i.ee, 9223372036854775807
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.ay, !prof !10

bb.ay:                                            ; preds = %bb.ax
  %i.eh = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #38
          to label %.noexc75 unwind label %.body56.thread142.loopexit

.noexc75:                                         ; preds = %bb.ay
  br i1 %i.eh, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.az

bb.az:                                            ; preds = %.noexc75
  store atomic i8 1, ptr %i.ed monotonic, align 4
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.az, %.noexc75, %bb.ax, %bb.aw
  %i.ei = atomicrmw xchg ptr %i.dx, i32 0 release, align 4
  %i.ej = icmp eq i32 %i.ei, 2
  br i1 %i.ej, label %bb.ba, label %.backedge, !prof !18

bb.ba:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.dx)
          to label %.backedge unwind label %.body56.thread142.loopexit

bb.bb:                                            ; preds = %bb.av
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bc:                                            ; preds = %bb.ap
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #36
          to label %bb.bd unwind label %.body56.thread142.loopexit.split-lp

bb.bd:                                            ; preds = %bb.bc
  unreachable

.backedge:                                        ; preds = %bb.ba, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.be
  %.be = phi i64 [ %i.cr, %bb.be ], [ 1, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i ], [ 1, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !245
  %i.el = icmp eq ptr %i.ci, %i.bp
  br i1 %i.el, label %.loopexit, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCsa5QsYiPB8Gl_5image.exit.i.i.i

bb.be:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not46 = icmp eq ptr %i.dd, null
  br i1 %.not46, label %.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cr, ptr %.sroa.2.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dd, ptr %i.em, align 8
  br label %bb.aj

bb.bg:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke void @_RNvXs3_NtCsPkZ9TkQnmq_10rayon_core8registryNtB5_10TerminatorNtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78 unwind label %bb.bi

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.s, %bb.bi
  %.pn48.pn.pn.pn = phi { ptr, i32 } [ %i.eq, %bb.bi ], [ %.pn48.pn.pn, %bb.s ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.en = load ptr, ptr %i.t, align 8, !alias.scope !248, !nonnull !7, !noundef !7
  %i.eo = atomicrmw add ptr %i.en, i64 -1 release, align 8, !noalias !248
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bh, label %.body58

bb.bh:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
          to label %.body58 unwind label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.er = load ptr, ptr %i.t, align 8, !alias.scope !251, !nonnull !7, !noundef !7
  %i.es = atomicrmw add ptr %i.er, i64 -1 release, align 8, !noalias !251
  %i.et = icmp eq i64 %i.es, 1
  br i1 %i.et, label %bb.bj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81

bb.bj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry10TerminatorECsa5QsYiPB8Gl_5image.exit78
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #38
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCsPkZ9TkQnmq_10rayon_core8registry8RegistryEECsa5QsYiPB8Gl_5image.exit81 unwind label %bb.i

bb.bk:                                            ; preds = %bb.af
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsPkZ9TkQnmq_10rayon_core8registry13ThreadBuilderECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(104) %i.l) #37
          to label %.critedge unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bo, %bb.bn, %bb.bh, %bb.s, %.thread150, %bb.bq, %bb.bp, %.thread105, %bb.bk, %.critedge, %bb.n, %bb.k, %.body58
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.bm:                                            ; preds = %bb.y
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ci, ptr %.sroa.08.sroa.0.sroa.2.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.08.sroa.3.0..sroa_idx, align 8
  store i64 %i.cr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.ew = atomicrmw add ptr %i.co, i64 -1 release, align 8, !noalias !252
  %i.ex = icmp eq i64 %i.ew, 1
  br i1 %i.ex, label %bb.bn, label %.noexc82

bb.bn:                                            ; preds = %bb.bm
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m) #38
          to label %.noexc82 unwind label %bb.bl

.noexc82:                                         ; preds = %bb.bn, %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.ey = load ptr, ptr %i.n, align 8, !alias.scope !256, !nonnull !7, !noundef !7
  %i.ez = atomicrmw add ptr %i.ey, i64 -1 release, align 8, !noalias !256
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %bb.bo, label %.critedge

bb.bo:                                            ; preds = %.noexc82
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtCsl2SIOnVHpm0_15crossbeam_utils12cache_padded11CachePaddedINtNtCseXAJVirNrmf_15crossbeam_deque5deque5InnerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.n) #38
          to label %.critedge unwind label %bb.bl

.thread115:                                       ; preds = %.thread105
  br i1 %.sroa.015.0110, label %bb.bp, label %.thread150

.thread105:                                       ; preds = %bb.q, %bb.k, %.thread123
  %.pn48.pn.pn.pn.pn114 = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.ar, %.thread123 ], [ %i.bg, %bb.q ] ; 2 uses
  %.sroa.015.0110 = phi i1 [ true, %bb.k ], [ true, %.thread123 ], [ false, %bb.q ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.v) #37
          to label %.thread115 unwind label %bb.bl

bb.bp:                                            ; preds = %.thread115
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #37
          to label %.thread150 unwind label %bb.bl

bb.bq:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque7StealerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #37
          to label %.thread150 unwind label %bb.bl

.thread150:                                       ; preds = %bb.bp, %.thread115, %bb.bq
  %.pn48.pn.pn.pn.pn.pn104153 = phi { ptr, i32 } [ %i.ah, %bb.bq ], [ %.pn48.pn.pn.pn.pn114, %.thread115 ], [ %.pn48.pn.pn.pn.pn114, %bb.bp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #37
          to label %.body58 unwind label %bb.bl

bb.br:                                            ; preds = %.body58
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB1p_5error5ErrorEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !7
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit
    i64 -1, label %bb.c
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.c, %bb.b
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdsTQD3x2eOp_3exr5block5chunk15CompressedBlockECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr5error5ErrorECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdsTQD3x2eOp_3exr5block5chunk5ChunkNtNtB13_5error5ErrorEECsa5QsYiPB8Gl_5image.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %0, align 8, !alias.scope !265 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i = load ptr, ptr %i.e, align 8, !alias.scope !266, !nonnull !7, !noundef !7
  %i.f = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !267
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !alias.scope !265 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !266, !nonnull !7, !noundef !7
  %i.i = mul nuw i64 %.val.i, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #33, !noalias !268
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsdsTQD3x2eOp_3exr4meta9attribute4TextEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %i.g) #33
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !11, !invariant.load !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !17, !invariant.load !7
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) %i.m) #33
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit5.i: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !7 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2O_8for_each4callTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3V_7StealerB4F_EENCINvNvNtB2S_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB3S_EIB66_B4Z_EEB3R_E0E0ECsa5QsYiPB8Gl_5image:bb.a
  %i.h = icmp ult i64 %i.d, %i.f
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6a_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !14, !alias.scope !1415, !noalias !1416, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %.sroa.0.08.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1417
  call void @_RNvMs4_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE8new_fifoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !1418
  %i.l = load ptr, ptr %i.b, align 8, !noalias !1419, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !noalias !1418
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.08.us.i, 1              ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !range !14, !noalias !1419, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1417
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1417
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1417
  call void @_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectTINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2T_EE10extend_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1420
  %exitcond11.not.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond11.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6a_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.08.i = phi i64 [ %i.t, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1417
  call void @_RNvMs4_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE8new_lifoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !1418
  %i.q = load ptr, ptr %i.b, align 8, !noalias !1419, !nonnull !7, !noundef !7 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !noalias !1418
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.08.i, 1                 ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !range !14, !noalias !1419, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1420
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1417
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1417
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1417
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1417
  call void @_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectTINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2T_EE10extend_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !1421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1420
  %exitcond.not.i = icmp eq i64 %i.t, %i.f
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6a_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.split.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6a_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3X_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5u_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3X_7StealerB4H_EENCINvNvNtB2U_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB3U_EIB6j_B51_EEB3T_E0E0ECsa5QsYiPB8Gl_5image(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6n_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5H_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5H_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1428
  call void @_RNvMs4_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE8new_fifoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !1429
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1428, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !1429
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5H_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5H_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !range !14, !noalias !1428, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1430
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1428
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1431
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1431
  call void @_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectTINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2T_EE20extend_one_uncheckedCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !1432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1430
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6n_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6n_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend18unchecked_extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5H_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCsPkZ9TkQnmq_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Q_8for_each4callTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3X_7StealerB4H_EENCINvNvNtB2U_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB3U_EIB68_B51_EEB3T_E0E0ECsa5QsYiPB8Gl_5image(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6c_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5w_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5w_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1439
  call void @_RNvMs4_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB5_6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE8new_fifoCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !noalias !1440
  %i.e = load ptr, ptr %i.b, align 8, !noalias !1439, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !1440
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5w_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5w_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.07.i, 1                 ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !range !14, !noalias !1439, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1441
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1439
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1442
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !1442
  call void @_RNvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits7collectTINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2T_EE10extend_oneCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1441
  %exitcond.not.i = icmp eq i64 %i.h, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6c_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit, label %bb.b

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB43_8Registry3newNtB43_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecB26_EIB6c_B3y_EEB25_E0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjTINtNtCseXAJVirNrmf_15crossbeam_deque5deque6WorkerNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2S_8Registry3newNtB2S_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Z_7collect14default_extend8extenderTINtNtCs4wP2HXfJTCR_5alloc3vec3VecBW_EIB5w_B2o_EEBV_E0E0E0Csa5QsYiPB8Gl_5image.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1x_10BmpDecoderINtNtNtBc_2io6cursor6CursorRShEE12read_palette0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callAhj3_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4C_3VecB4o_E14extend_trustedBN_E0E0EB1D_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !align !16, !noundef !7
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = icmp ult i64 %i.b, %i.d
  br i1 %i.g, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB2j_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4H_3VecB25_E14extend_trustedINtB1B_3MapB3_B2b_EE0E0E0EB2p_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !nonnull !7, !align !16, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.ad, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i ] ; 3 uses
  %.sroa.0.020.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.k, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i ] ; 2 uses
  %i.k = add i64 %.sroa.0.020.i, 1                ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !noalias !1452, !noundef !7
  %i.m = mul i64 %i.l, %.sroa.0.020.i             ; 5 uses
  %i.n = load ptr, ptr %i.i, align 8, !noalias !1452, !nonnull !7, !noundef !7 ; 3 uses
  %i.o = load i64, ptr %i.j, align 8, !noalias !1452, !noundef !7 ; 4 uses
  %i.p = icmp ult i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %.invoke

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %i.r = load i8, ptr %i.q, align 1, !noalias !1452, !noundef !7
  %i.s = add nuw i64 %i.m, 1                      ; 3 uses
  %i.t = icmp ult i64 %i.s, %i.o
  br i1 %i.t, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  %i.u = add nuw i64 %i.m, 2                      ; 3 uses
  %i.v = icmp ult i64 %i.u, %i.o
  br i1 %i.v, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.d, %bb.c, %bb.b
  %i.w = phi i64 [ %i.s, %bb.c ], [ %i.m, %bb.b ], [ %i.u, %bb.d ]
  %i.x = phi ptr [ @61, %bb.c ], [ @60, %bb.b ], [ @62, %bb.d ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) #40
          to label %.cont unwind label %bb.e, !noalias !1453

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.s
  %i.z = load i8, ptr %i.y, align 1, !noalias !1452, !noundef !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.u
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !1452, !noundef !7
  %.sroa.3.0.insert.ext.i.i.i = zext i8 %i.r to i24
  %.sroa.3.0.insert.shift.i.i.i = shl nuw i24 %.sroa.3.0.insert.ext.i.i.i, 16
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %i.z to i24
  %.sroa.2.0.insert.shift.i.i.i = shl nuw nsw i24 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.2.0.insert.insert.i.i.i = or disjoint i24 %.sroa.2.0.insert.shift.i.i.i, %.sroa.3.0.insert.shift.i.i.i
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %i.ab to i24
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i24 %.sroa.2.0.insert.insert.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.ac = getelementptr inbounds nuw [3 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  store i24 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ac, align 1, !noalias !1454
  %i.ad = add i64 %.val4.i, 1                     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB2j_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4H_3VecB25_E14extend_trustedINtB1B_3MapB3_B2b_EE0E0E0EB2p_.exit, label %bb.b

bb.e:                                             ; preds = %.invoke
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1453
  resume { ptr, i32 } %i.ae

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB2j_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4H_3VecB25_E14extend_trustedINtB1B_3MapB3_B2b_EE0E0E0EB2p_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ad, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldjAhj3_uNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB19_10BmpDecoderINtNtNtBa_2io6cursor6CursorRShEE12read_palette0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB41_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB11_EE0E0E0B1f_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1453
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCseXAJVirNrmf_15crossbeam_deque5dequeINtB1w_6BufferNtNtCsPkZ9TkQnmq_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3a_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB56_3VecB4d_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !7, !noundef !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val6.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1457
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEs1_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i12.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i12.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs1_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.51.0.copyload, 2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, label %.lr.ph.split.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %i.b = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.53.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.c = phi i64 [ %i.f, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ]
  %i.d = phi ptr [ %i.e, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.0.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = add i64 %i.c, -2                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  %.sroa.02.0.copyload.i.i.us.i = load i16, ptr %i.d, align 1, !alias.scope !1471, !noalias !1472
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.b ; 2 uses
  store i8 1, ptr %i.g, align 8, !noalias !1473
  %.sroa.54.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %.sroa.02.0.copyload.i.i.us.i, ptr %.sroa.54.0..sroa_idx.i.us.i, align 2, !noalias !1473
  %i.h = add i64 %i.b, 1                          ; 2 uses
  %.not.i.us.i = icmp ult i64 %i.f, 2
  br i1 %.not.i.us.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs1_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1470)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #40
          to label %.noexc.i unwind label %bb.b, !noalias !1472

.noexc.i:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1472
  resume { ptr, i32 } %i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs1_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs1_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1472
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEs2_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i12.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i12.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs2_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.51.0.copyload, 2
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, label %.lr.ph.split.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %i.b = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.53.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.c = phi i64 [ %i.f, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ]
  %i.d = phi ptr [ %i.e, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.0.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.f = add i64 %i.c, -2                         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %.sroa.02.0.copyload.i.i.us.i = load i16, ptr %i.d, align 1, !alias.scope !1487, !noalias !1488
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.0.copyload, i64 %i.b ; 2 uses
  store i8 3, ptr %i.g, align 8, !noalias !1489
  %.sroa.54.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %.sroa.02.0.copyload.i.i.us.i, ptr %.sroa.54.0..sroa_idx.i.us.i, align 2, !noalias !1489
  %i.h = add i64 %i.b, 1                          ; 2 uses
  %.not.i.us.i = icmp ult i64 %i.f, 2
  br i1 %.not.i.us.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs2_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @69, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #40
          to label %.noexc.i unwind label %bb.b, !noalias !1488

.noexc.i:                                         ; preds = %.lr.ph.split.i
  unreachable

bb.b:                                             ; preds = %.lr.ph.split.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.sroa.53.0.copyload, ptr %.sroa.02.0.copyload, align 8, !noalias !1488
  resume { ptr, i32 } %i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs2_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i, %bb.a
  %.val8.i = phi i64 [ %.sroa.53.0.copyload, %bb.a ], [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs2_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.copyload) ]
  store i64 %.val8.i, ptr %.sroa.02.0.copyload, align 8, !noalias !1488
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter11ChunksExacthENCNCINvMs0_NtNtCs53gkmrwjETj_4tiff7decoder3ifdNtB1I_5Entry3valINtNtNtBc_2io6cursor6CursorRShEEs3_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB39_8for_each4callNtB1I_5ValueNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4x_3VecB4c_E14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.51.0.copyload = load i64, ptr %.sroa.51.0..sroa_idx, align 8 ; 2 uses
  %.sroa.02.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i12.i = icmp ugt i64 %.sroa.51.0.copyload, %.sroa.4.0.copyload
  br i1 %.not.i12.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBZ_8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_B2h_NtB2h_5Entry3valINtNtNtBa_2io6cursor6CursorB2c_EEs3_00NCINvNvBT_8for_each4callB2f_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4F_3VecB2f_E14extend_trustedINtB1J_3MapB3_B2X_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %.sroa.51.0.copyload, 4
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, label %.lr.ph.split.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i
  %i.b = phi i64 [ %i.h, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.53.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ] ; 2 uses
  %i.c = phi i64 [ %i.f, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i ], [ %.sroa.4.0.copyload, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRShNtNtNtCs53gkmrwjETj_4tiff7decoder3ifd5ValueuNCNCINvMs0_BZ_NtBZ_5Entry3valINtNtNtBa_2io6cursor6CursorBU_EEs3_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBX_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB3O_3VecBX_E14extend_trustedINtB4_3MapINtNtNtBa_5slice4iter11ChunksExacthEB1F_EE0E0E0Csa5QsYiPB8Gl_5image.exit.us.i.preheader ]
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj2_ENCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB1B_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB1F_2io7encoder12ImageEncoder11write_image0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4H_13FlattenCompatppE9iter_fold7flattenB1n_uNCINvNvXsi_B4H_B4U_B3S_4fold7flattenINtNtNtBc_5array4iter8IntoIterhKB1p_EuNCINvNvB3S_8for_each4callhNCINvMsk_B2x_B2u_14extend_trustedINtB4H_7FlatMapBX_B1n_B1t_EE0E0E0E0EB1F_:bb.a
  %.val9.i = load i8, ptr %i.k, align 1, !noalias !1778, !noundef !7 ; 2 uses
  %.sroa.2.0.insert.ext.i.i.i = zext i8 %.val8.i to i16
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i16 %.sroa.2.0.insert.ext.i.i.i, 8
  %.sroa.0.0.insert.ext.i.i.i = zext i8 %.val9.i to i16
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i16 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1778
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !1778
  store i16 %.sroa.0.0.insert.insert.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !1778
  call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1781
  store ptr %.sroa.5.0..sroa_idx.i.i.i, ptr %i.a, align 8, !noalias !1781
  store i64 2, ptr %i.h, align 8, !noalias !1781
  store ptr %2, ptr %i.i, align 8, !noalias !1781
  call void @llvm.experimental.noalias.scope.decl(metadata !1782)
  call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  store i64 1, ptr %i.b, align 8, !alias.scope !1784, !noalias !1778
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %.val9.i)
  store i64 2, ptr %i.b, align 8, !alias.scope !1784, !noalias !1778
  call void @llvm.experimental.noalias.scope.decl(metadata !1785)
  %i.l = load ptr, ptr %i.a, align 8, !alias.scope !1786, !noalias !1781, !nonnull !7, !noundef !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noalias !1787, !noundef !7
  call void @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB1Y_3VechE14extend_trustedINtNtNtB11_8adapters7flatten7FlatMapINtNtNtBb_5slice4iter4IterAhj2_EB3R_NCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB49_10PngEncoderQB2o_ENtNtNtB4d_2io7encoder12ImageEncoder11write_image0EE0E0INtB7_5FnMutTuhEE8call_mutB4d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i, i8 noundef %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1778
  %i.o = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.g
  br i1 %i.p, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit, label %bb.c

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAhj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_BQ_uNCNvXs3_NtNtCsa5QsYiPB8Gl_5image6codecs3pngINtB2w_10PngEncoderQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEENtNtNtB2A_2io7encoder12ImageEncoder11write_image0NCINvNvMsg_NtB1O_7flattenINtB4X_13FlattenCompatppE9iter_fold7flattenBQ_uNCINvNvXsi_B4X_B5b_BW_4fold7flattenINtNtNtBb_5array4iter8IntoIterhKBS_EuNCINvNvBW_8for_each4callhNCINvMsk_B3s_B3p_14extend_trustedINtB4X_7FlatMapBF_BQ_B2o_EE0E0E0E0E0EB2A_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.i, align 2, !noalias !1796, !noundef !7
  %i.j = invoke noundef float @_RNvXs6_NtCsa5QsYiPB8Gl_5image5colorfINtB5_13FromPrimitivetE14from_primitive(i16 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1796

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store float %i.j, ptr %i.k, align 4, !noalias !1797
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1796
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_fuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumatfE0NCINvNvBW_8for_each4callfNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VecfE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1796
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VechE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.i, align 2, !noalias !1806, !noundef !7
  %i.j = invoke noundef i8 @_RNvXs5_NtCsa5QsYiPB8Gl_5image5colorhINtB5_13FromPrimitivetE14from_primitive(i16 noundef %.val15.i)
          to label %bb.d unwind label %bb.e, !noalias !1806

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.j, ptr %i.k, align 1, !noalias !1807
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.h
  br i1 %i.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1806
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_huNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumathE0NCINvNvBW_8for_each4callhNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VechE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1806
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAtj2_ENCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB1C_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4i_3VectE14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 4 uses
  %i.h = lshr i64 %i.g, 2                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 68
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 1           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.a, i64 %i.g
  %i.o = getelementptr i8, ptr %i.n, i64 -2
  %bound0 = icmp ult ptr %i.j, %i.o
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.p = and i64 %i.h, 7                          ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  %i.r = select i1 %i.q, i64 8, i64 %i.p
  %n.vec = sub nsw i64 %i.h, %i.r                 ; 3 uses
  %i.s = add i64 %.sroa.5.0.copyload, %n.vec
  %i.t = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.vec = load <8 x i16>, ptr %i.u, align 2, !alias.scope !1822, !noalias !1823
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec4 = load <8 x i16>, ptr %i.w, align 2, !alias.scope !1822, !noalias !1823
  %strided.vec5 = shufflevector <8 x i16> %wide.vec4, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = getelementptr [2 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store <4 x i16> %strided.vec, ptr %i.x, align 2, !alias.scope !1824, !noalias !1825
  store <4 x i16> %strided.vec5, ptr %i.y, align 2, !alias.scope !1824, !noalias !1825
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1819

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.b
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %vector.body ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %vector.body ] ; 4 uses
  %i.aa = sub nsw i64 %i.h, %.sroa.01.0.i.ph
  %xtraiter = and i64 %i.aa, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.ab = phi i64 [ %i.ae, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.af, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i16, ptr %i.ac, align 2, !noalias !1823, !noundef !7
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store i16 %.val15.i.prol, ptr %i.ad, align 2, !noalias !1826
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  %i.af = add nuw i64 %.sroa.01.0.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1820

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ag = sub i64 %.sroa.01.0.i.ph, %i.h
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i16, ptr %i.aj, align 2, !noalias !1823, !noundef !7
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store i16 %.val15.i, ptr %i.ak, align 2, !noalias !1826
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %.val15.i.1 = load i16, ptr %i.am, align 2, !noalias !1823, !noundef !7
  %i.an = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.ao = getelementptr i8, ptr %i.an, i64 2
  store i16 %.val15.i.1, ptr %i.ao, align 2, !noalias !1826
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.val15.i.2 = load i16, ptr %i.aq, align 2, !noalias !1823, !noundef !7
  %i.ar = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store i16 %.val15.i.2, ptr %i.as, align 2, !noalias !1826
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %.val15.i.3 = load i16, ptr %i.au, align 2, !noalias !1823, !noundef !7
  %i.av = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 6
  store i16 %.val15.i.3, ptr %i.aw, align 2, !noalias !1826
  %i.ax = add i64 %i.ai, 4                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.h
  br i1 %i.az, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit, label %scalar.ph, !llvm.loop !1821

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterAtj2_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB12_8adapters3map8map_foldRBQ_tuNCINvMs2_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB2v_7CicpRgb32subpixel_cast_luma_alpha_to_lumattE0NCINvNvBW_8for_each4calltNCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB4v_3VectE14extend_trustedINtB1M_3MapBF_B2m_EE0E0E0EB2z_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !1823
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENCINvNtB1r_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4y_8for_each4callhNCINvMsk_B3Y_B3V_14extend_trustedBN_E0E0ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = udiv i64 %i.d, 496                       ; 9 uses
  %min.iters.check = icmp ult i64 %i.d, 1984
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.f = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.g = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %0, i64 495
  %bound0 = icmp ult ptr %i.f, %1
  %bound1 = icmp ult ptr %i.i, %i.h
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check5 = icmp ult i64 %i.d, 7936
  br i1 %min.iters.check5, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.e, 12
  %n.vec = and i64 %i.e, 72057594037927920        ; 5 uses
  %i.k = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 18 uses
  %i.m = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.n = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.o = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.p = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.q = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.r = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.s = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.t = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.u = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.v = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.w = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.x = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.y = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.z = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.aa = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ab = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index
  %i.ac = getelementptr i8, ptr %i.m, i64 495
  %i.ad = getelementptr i8, ptr %i.n, i64 991
  %i.ae = getelementptr i8, ptr %i.o, i64 1487
  %i.af = getelementptr i8, ptr %i.p, i64 1983
  %i.ag = getelementptr i8, ptr %i.q, i64 2479
  %i.ah = getelementptr i8, ptr %i.r, i64 2975
  %i.ai = getelementptr i8, ptr %i.s, i64 3471
  %i.aj = getelementptr i8, ptr %i.t, i64 3967
  %i.ak = getelementptr i8, ptr %i.u, i64 4463
  %i.al = getelementptr i8, ptr %i.v, i64 4959
  %i.am = getelementptr i8, ptr %i.w, i64 5455
  %i.an = getelementptr i8, ptr %i.x, i64 5951
  %i.ao = getelementptr i8, ptr %i.y, i64 6447
  %i.ap = getelementptr i8, ptr %i.z, i64 6943
  %i.aq = getelementptr i8, ptr %i.aa, i64 7439
  %i.ar = getelementptr i8, ptr %i.ab, i64 7935
  %i.as = load i8, ptr %i.ac, align 1, !alias.scope !1842, !noalias !1843
  %i.at = load i8, ptr %i.ad, align 1, !alias.scope !1842, !noalias !1843
  %i.au = load i8, ptr %i.ae, align 1, !alias.scope !1842, !noalias !1843
  %i.av = load i8, ptr %i.af, align 1, !alias.scope !1842, !noalias !1843
  %i.aw = load i8, ptr %i.ag, align 1, !alias.scope !1842, !noalias !1843
  %i.ax = load i8, ptr %i.ah, align 1, !alias.scope !1842, !noalias !1843
  %i.ay = load i8, ptr %i.ai, align 1, !alias.scope !1842, !noalias !1843
  %i.az = load i8, ptr %i.aj, align 1, !alias.scope !1842, !noalias !1843
  %i.ba = load i8, ptr %i.ak, align 1, !alias.scope !1842, !noalias !1843
  %i.bb = load i8, ptr %i.al, align 1, !alias.scope !1842, !noalias !1843
  %i.bc = load i8, ptr %i.am, align 1, !alias.scope !1842, !noalias !1843
  %i.bd = load i8, ptr %i.an, align 1, !alias.scope !1842, !noalias !1843
  %i.be = load i8, ptr %i.ao, align 1, !alias.scope !1842, !noalias !1843
  %i.bf = load i8, ptr %i.ap, align 1, !alias.scope !1842, !noalias !1843
  %i.bg = load i8, ptr %i.aq, align 1, !alias.scope !1842, !noalias !1843
  %i.bh = load i8, ptr %i.ar, align 1, !alias.scope !1842, !noalias !1843
  %i.bi = insertelement <16 x i8> poison, i8 %i.as, i64 0
  %i.bj = insertelement <16 x i8> %i.bi, i8 %i.at, i64 1
  %i.bk = insertelement <16 x i8> %i.bj, i8 %i.au, i64 2
  %i.bl = insertelement <16 x i8> %i.bk, i8 %i.av, i64 3
  %i.bm = insertelement <16 x i8> %i.bl, i8 %i.aw, i64 4
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 5
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 6
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 7
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 8
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 9
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 10
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 11
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 12
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 13
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 14
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 15
  %i.by = getelementptr i8, ptr %i.l, i64 %index
  store <16 x i8> %i.bx, ptr %i.by, align 1, !alias.scope !1844, !noalias !1845
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1838

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1N_8adapters3map8map_foldRBQ_huNCINvNtBU_7headers9parse_sosINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEE0NCINvNvB1H_8for_each4callhNCINvMsk_B4Q_B4N_14extend_trustedINtB2x_3MapBF_B37_EE0E0E0ECsa5QsYiPB8Gl_5image.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !34

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec6 = and i64 %i.e, 72057594037927932       ; 4 uses
  %i.ca = add i64 %.sroa.5.0.copyload, %n.vec6    ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index7 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next8, %vec.epilog.vector.body ] ; 6 uses
  %i.cc = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cd = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.ce = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cf = getelementptr inbounds nuw [496 x i8], ptr %0, i64 %index7
  %i.cg = getelementptr i8, ptr %i.cc, i64 495
  %i.ch = getelementptr i8, ptr %i.cd, i64 991
  %i.ci = getelementptr i8, ptr %i.ce, i64 1487
end_hunk_2
