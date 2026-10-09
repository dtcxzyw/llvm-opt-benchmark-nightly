Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/ravif-31101fabb862b9ee.ravif.1b84f06497a4cc39-cgu.09?download=true
inline.NumInlined: 917
inline.NumDeleted: 544
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_framehECs2mu2Cb9JdUH_5ravif:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.526.0..sroa_idx.2.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.ag, i64 80, i1 false), !noalias !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.q, ptr noundef nonnull align 8 dereferenceable(288) %i.k, i64 288, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !95
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 560
  %i.al = load i32, ptr %i.ak, align 8, !range !5, !noundef !4
  %i.am = icmp ne i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = add i64 %i.ao, 7
  %i.aq = lshr i64 %i.ap, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !101
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit
  %i.ar = load i64, ptr %i.i, align 8, !range !6, !noalias !101, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !7, !noalias !101, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i, !prof !8

bb.e:                                             ; preds = %.noexc35
  %i.aw = load i64, ptr %i.av, align 8, !noalias !101
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #25
          to label %.noexc36 unwind label %bb.l

.noexc36:                                         ; preds = %bb.e
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %.noexc35
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !101, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !101
  store i64 %i.au, ptr %i.j, align 8, !alias.scope !100, !noalias !99
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !100, !noalias !99
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 28224, ptr %i.az, align 8, !alias.scope !100, !noalias !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !102
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.g, !noalias !99

.noexc.i:                                         ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.ba = load i64, ptr %i.h, align 8, !range !6, !noalias !102, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !102, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.f, label %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, !prof !8

bb.f:                                             ; preds = %.noexc.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !102
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc1.i unwind label %bb.g, !noalias !99

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body unwind label %bb.h, !noalias !99

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !99
  unreachable

_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit: ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !102, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.bd, ptr %i.bj, align 8, !alias.scope !99
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !99
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 28224, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !99
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 621
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.03.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.03.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.n

.body:                                            ; preds = %bb.l, %bb.g, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cn, %bb.l ], [ %i.bg, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val9.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body
  %.val8.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %.val9.i.i.i, i64 noundef 64) #27, !noalias !107
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i: ; preds = %bb.i, %.body
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.val9.i.1.i.i = load i64, ptr %i.cj, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i64 %.val9.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val8.i.1.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.1.i.i, i64 noundef %.val9.i.1.i.i, i64 noundef 64) #27, !noalias !107
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %.val9.i.2.i.i = load i64, ptr %i.cl, align 8, !alias.scope !106, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i64 %.val9.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.val8.i.2.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !106, !nonnull !4, !noundef !4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.2.i.i, i64 noundef %.val9.i.2.i.i, i64 noundef 64) #27, !noalias !107
  br label %common.resume

bb.l:                                             ; preds = %bb.e, %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit, %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit84:                                      ; preds = %..loopexit81_crit_edge.us, %bb.n
  %i.co = icmp samesign ult i64 %.sroa.019.0188, 2
  %i.cp = select i1 %i.am, i1 %i.co, i1 false
  br i1 %i.cp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit84
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
          to label %bb.au unwind label %bb.l

bb.n:                                             ; preds = %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, %.loopexit84
  %.sroa.019.0188 = phi i64 [ 0, %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit ], [ %i.cq, %.loopexit84 ] ; 6 uses
  %i.cq = add nuw nsw i64 %.sroa.019.0188, 1
  %i.cr = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.019.0188 ; 3 uses
  %i.cs = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.sroa.019.0188 ; 11 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cu = load i64, ptr %i.ct, align 8, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  %i.cx = and i64 %i.cu, 63                       ; 2 uses
  %i.cy = shl nuw i64 1, %i.cx
  %i.cz = lshr i64 %i.cy, 1
  %i.da = add i64 %i.cz, %i.bl
  %i.db = lshr i64 %i.da, %i.cx                   ; 3 uses
  %i.dc = and i64 %i.cw, 63                       ; 5 uses
  %i.dd = shl nuw i64 1, %i.dc
  %i.de = lshr i64 %i.dd, 1
  %i.df = add i64 %i.de, %i.ao
  %i.dg = lshr i64 %i.df, %i.dc                   ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.di, 0
  %i.dj = lshr i64 64, %i.dc
  %i.dk = lshr i64 56, %i.dc
  %i.dl = add i64 %i.di, -1
  %i.dm = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dn = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %i.do = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.cs, i64 0
  %i.dp = getelementptr inbounds nuw i8, <2 x ptr> %i.do, <2 x i64> <i64 16, i64 0>
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cs, i64 16 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.du = getelementptr inbounds nuw i8, ptr %i.cs, i64 88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.dw = add i64 %i.db, 3
  %i.dx = add i64 %i.dg, -1                       ; 2 uses
  %i.dy = add i64 %i.db, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.eb, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.eb = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ec = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ec, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.ed = shl nuw i64 %.sroa.021.0150.us, 6
  %i.ee = add i64 %i.ed, -8
  %i.ef = lshr i64 %i.ee, %i.dc
  %.fr = freeze i64 %i.ef                         ; 6 uses
  %i.eg = sub i64 %i.dg, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.eg, i64 %i.dj)
  %i.eh = sub i64 0, %.fr
  %i.ei = sub i64 %i.dg, %.fr
  %i.ej = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.ej, i64 %i.eh, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.ek = phi i64 [ %i.dg, %bb.o ], [ %i.ei, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dk, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.el = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.em = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.en = icmp sgt i64 %i.em, %i.dg
  %4 = add i64 %.sroa.04.0.us290, %i.el
  %5 = sub i64 %i.dg, %4
  %i.eo = sub i64 %.sroa.010.0.us289, %i.el
  %.sroa.021.0.i.us = select i1 %i.en, i64 %5, i64 %i.eo ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.ep = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.eq = add nuw i64 %i.em, 4                    ; 2 uses
  %i.er = icmp slt i64 %i.ep, %i.eq
  %i.es = add nuw i64 %i.em, 1
  %i.et = add i64 %.sroa.04.0.us290, -2
  %i.eu = add i64 %..i.i.us, %i.el                ; 2 uses
  %i.ev = icmp ult i64 %i.el, %i.eu
  %i.ew = add nuw i64 %i.el, 1
  %i.ex = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.ey, %.backedge.us ] ; 4 uses
  %i.ey = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.ez = mul i64 %i.ea, %.sroa.023.0148.us       ; 12 uses
  %i.fa = icmp eq i64 %.sroa.023.0148.us, %i.dl
  %i.fb = sub i64 %i.db, %i.ez                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fa, i64 %i.fb, i64 %i.ea ; 4 uses
  %i.fc = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cr, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fd = load i8, ptr %i.fc, align 1, !range !9, !noundef !4
  switch i8 %i.fd, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %i.ff = load i8, ptr %i.fe, align 1, !noundef !4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fg, align 1
  %i.fh = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dm, ptr %i.o, align 8
  store i64 %i.ez, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dn, ptr %i.n, align 8
  store i64 %i.ez, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagehECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fb, i64 noundef %i.ek, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dm, ptr %i.m, align 8
  store i64 %i.ez, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.fj = load i64, ptr %i.dq, align 8, !alias.scope !109, !noalias !110, !noundef !4 ; 2 uses
  %i.fk = load ptr, ptr %i.cs, align 8, !alias.scope !109, !noalias !110, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  call void @llvm.experimental.noalias.scope.decl(metadata !112)
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.fl = load i64, ptr %i.dr, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %i.fm = icmp eq i64 %i.fl, 0
  %i.fn = load i64, ptr %i.ds, align 8, !alias.scope !114, !noalias !115
  %i.fo = icmp eq i64 %i.fn, 0
  %or.cond.i.i.us = select i1 %i.fm, i1 true, i1 %i.fo, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fp = load i64, ptr %i.dt, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 3 uses
  %i.fq = sub i64 0, %i.fp
  %.not.i.i.us = icmp slt i64 %i.ez, %i.fq
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fr = load i64, ptr %i.du, align 8, !alias.scope !114, !noalias !115, !noundef !4 ; 2 uses
  %i.fs = sub i64 0, %i.fr
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fs
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.ft = add i64 %.sroa.014.0.us, %i.ez
  %i.fu = add i64 %i.ft, %i.fp
  %.not6.i.i.us = icmp sgt i64 %i.fu, %i.fj
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fv = add i64 %i.fr, %.sroa.04.0.us290        ; 2 uses
  %i.fw = add i64 %i.fv, %.sroa.010.0.us289
  %i.fx = load i64, ptr %i.dv, align 8, !alias.scope !114, !noalias !115, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fw, %i.fx
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.fy = mul i64 %i.fv, %i.fj
  %i.fz = getelementptr i8, ptr %i.fk, i64 %i.fy
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fp
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.ez
  store ptr %i.gb, ptr %i.bt, align 8, !alias.scope !116, !noalias !117
  store ptr %i.dq, ptr %i.l, align 16, !alias.scope !116, !noalias !117
  store i64 %i.ez, ptr %i.bu, align 16, !alias.scope !118, !noalias !119
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 16, !alias.scope !118, !noalias !119
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !118, !noalias !119
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store <2 x ptr> %i.dp, ptr %i.l, align 16, !alias.scope !120, !noalias !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !120, !noalias !121
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterhhECs2mu2Cb9JdUH_5ravif(i8 noundef %i.ff, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanehEINtB2_8AsRegionhE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fc, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gc, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gd = load i64, ptr %i.bv, align 8, !noalias !122, !noundef !4 ; 4 uses
  %i.ge = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gf = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gg = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gh = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gk = trunc nsw i48 %i.gj to i32              ; 3 uses
  %i.gl = icmp eq i64 %i.gd, 12                   ; 3 uses
  %..i49.us = select i1 %i.gl, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !122
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !122
  %i.gm = add nsw i32 %i.gf, %i.ge
  %i.gn = add nsw i32 %i.gm, %i.gg
  %i.go = shl nsw i32 %i.gn, 1
  %i.gp = sub nsw i32 128, %i.go
  store i32 %i.ge, ptr %i.f, align 4, !noalias !122
  store i32 %i.gf, ptr %i.bw, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bx, align 4, !noalias !122
  store i32 %i.gp, ptr %i.by, align 4, !noalias !122
  store i32 %i.gg, ptr %i.bz, align 4, !noalias !122
  store i32 %i.gf, ptr %i.ca, align 4, !noalias !122
  store i32 %i.ge, ptr %i.cb, align 4, !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !122
  %i.gq = add nsw i32 %i.gh, %i.gk
  %i.gr = add nsw i32 %i.gq, %i.gi
  %i.gs = shl nsw i32 %i.gr, 1
  %i.gt = sub nsw i32 128, %i.gs
  store i32 %i.gh, ptr %i.e, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cc, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cd, align 4, !noalias !122
  store i32 %i.gt, ptr %i.ce, align 4, !noalias !122
  store i32 %i.gk, ptr %i.cf, align 4, !noalias !122
  store i32 %i.gi, ptr %i.cg, align 4, !noalias !122
  store i32 %i.gh, ptr %i.ch, align 4, !noalias !122
  %i.gu = add i64 %.sroa.014.0.us, %i.ez          ; 2 uses
  %i.gv = icmp ult i64 %i.ez, %i.gu
  br i1 %i.gv, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.gw = add i64 %i.gd, 8
  %.98.neg91.i.us = select i1 %i.gl, i64 27, i64 29
  %i.gx = add i64 %i.gw, %.98.neg91.i.us
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = and i32 %i.gy, 31
  %notmask.i.us = shl nsw i32 -1, %i.gz
  %i.ha = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.gl, i64 5, i64 3       ; 2 uses
  %i.hb = sub i64 %i.gd, %.98.i.us
  %i.hc = trunc i64 %i.hb to i32
  %i.hd = add i32 %i.hc, 6
  %i.he = and i32 %i.hd, 31
  %i.hf = shl nuw i32 1, %i.he                    ; 2 uses
  %i.hg = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hh = shl nuw nsw i32 1, %i.hg
  %i.hi = lshr exact i32 %i.hh, 1
  %i.hj = sub i32 0, %i.hf
  %i.hk = sub i32 %i.ha, %i.hf
  %i.hl = shl nuw nsw i32 1, %..i49.us
  %i.hm = lshr exact i32 %i.hl, 1
  %i.hn = trunc i64 %i.gd to i32
  %i.ho = and i32 %i.hn, 31
  %notmask93.i.us = shl nsw i32 -1, %i.ho
  %i.hp = xor i32 %notmask93.i.us, -1
  %i.hq = sub i64 3, %i.ez
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.hq, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.ez, %.lr.ph89.i.us ], [ %i.hr, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuthENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filterhE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvMsc_NtCsdEEMmLUVy6d_5rav1e3lrfNtB6_16RestorationState16lrf_filter_frametECs2mu2Cb9JdUH_5ravif:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 688
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 560
  %i.al = load i32, ptr %i.ak, align 8, !range !5, !noundef !4
  %i.am = icmp ne i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 584
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %i.ap = add i64 %i.ao, 7
  %i.aq = lshr i64 %i.ap, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !211
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc35 unwind label %bb.l

.noexc35:                                         ; preds = %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit
  %i.ar = load i64, ptr %i.i, align 8, !range !6, !noalias !211, !noundef !4
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !7, !noalias !211, !noundef !4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.as, label %bb.e, label %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i, !prof !8

bb.e:                                             ; preds = %.noexc35
  %i.aw = load i64, ptr %i.av, align 8, !noalias !211
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #25
          to label %.noexc36 unwind label %bb.l

.noexc36:                                         ; preds = %bb.e
  unreachable

_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i: ; preds = %.noexc35
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !211, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !211
  store i64 %i.au, ptr %i.j, align 8, !alias.scope !210, !noalias !209
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !210, !noalias !209
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 28224, ptr %i.az, align 8, !alias.scope !210, !noalias !209
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !212
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef range(i64 28224, 69697) 28224, i1 noundef zeroext true, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i unwind label %bb.g, !noalias !209

.noexc.i:                                         ; preds = %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.ba = load i64, ptr %i.h, align 8, !range !6, !noalias !212, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !noalias !212, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.f, label %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, !prof !8

bb.f:                                             ; preds = %.noexc.i
  %i.bf = load i64, ptr %i.be, align 8, !noalias !212
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc1.i unwind label %bb.g, !noalias !209

.noexc1.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f, %_RINvXs_NtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2mu2Cb9JdUH_5ravif.exit.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body unwind label %bb.h, !noalias !209

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !209
  unreachable

_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit: ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.be, align 8, !noalias !212, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 %i.bd, ptr %i.bj, align 8, !alias.scope !209
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !209
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i64 28224, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !209
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 576
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aj, i64 621
  %i.bn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aj, i64 496
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.e, i64 20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.03.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.03.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.03.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.03.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.714.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.n

.body:                                            ; preds = %bb.l, %bb.g, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.cq, %bb.l ], [ %i.bg, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !213)
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val9.i.i.i = load i64, ptr %i.ci, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val9.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.body
  %.val8.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cj = shl nuw nsw i64 %.val9.i.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.cj, i64 noundef 64) #27, !noalias !217
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i: ; preds = %bb.i, %.body
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %.val9.i.1.i.i = load i64, ptr %i.ck, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.1.i.i = icmp eq i64 %.val9.i.1.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.1.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %.val8.i.1.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cm = shl nuw nsw i64 %.val9.i.1.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.1.i.i, i64 noundef %i.cm, i64 noundef 64) #27, !noalias !217
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i: ; preds = %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.q, i64 200
  %.val9.i.2.i.i = load i64, ptr %i.cn, align 8, !alias.scope !216, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.2.i.i = icmp eq i64 %.val9.i.2.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.2.i.i, label %common.resume, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEECs2mu2Cb9JdUH_5ravif.exit.i.1.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %.val8.i.2.i.i = load ptr, ptr %i.co, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.cp = shl nuw nsw i64 %.val9.i.2.i.i, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.2.i.i, i64 noundef %i.cp, i64 noundef 64) #27, !noalias !217
  br label %common.resume

bb.l:                                             ; preds = %bb.e, %_RINvXsk_NtCsj6eKBz9Db1c_4core5arrayINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetENtB6_14SpecArrayClone5cloneKj3_ECs2mu2Cb9JdUH_5ravif.exit, %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit84:                                      ; preds = %..loopexit81_crit_edge.us, %bb.n
  %i.cr = icmp samesign ult i64 %.sroa.019.0188, 2
  %i.cs = select i1 %i.am, i1 %i.cr, i1 false
  br i1 %i.cs, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.loopexit84
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdEEMmLUVy6d_5rav1e3lrf19IntegralImageBufferECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef align 8 dereferenceable(48) %i.p)
          to label %bb.au unwind label %bb.l

bb.n:                                             ; preds = %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit, %.loopexit84
  %.sroa.019.0188 = phi i64 [ 0, %_RNvMNtCsdEEMmLUVy6d_5rav1e3lrfNtB2_19IntegralImageBuffer6zeroed.exit ], [ %i.ct, %.loopexit84 ] ; 6 uses
  %i.ct = add nuw nsw i64 %.sroa.019.0188, 1
  %i.cu = getelementptr inbounds nuw [104 x i8], ptr %0, i64 %.sroa.019.0188 ; 3 uses
  %i.cv = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.sroa.019.0188 ; 11 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !4
  %i.da = and i64 %i.cx, 63                       ; 2 uses
  %i.db = shl nuw i64 1, %i.da
  %i.dc = lshr i64 %i.db, 1
  %i.dd = add i64 %i.dc, %i.bl
  %i.de = lshr i64 %i.dd, %i.da                   ; 3 uses
  %i.df = and i64 %i.cz, 63                       ; 5 uses
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = lshr i64 %i.dg, 1
  %i.di = add i64 %i.dh, %i.ao
  %i.dj = lshr i64 %i.di, %i.df                   ; 6 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !noundef !4 ; 3 uses
  %.not189 = icmp eq i64 %i.dl, 0
  %i.dm = lshr i64 64, %i.df
  %i.dn = lshr i64 56, %i.df
  %i.do = add i64 %i.dl, -1
  %i.dp = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %.sroa.019.0188 ; 3 uses
  %i.dq = getelementptr inbounds nuw [96 x i8], ptr %2, i64 %.sroa.019.0188 ; 3 uses
  %i.dr = insertelement <2 x ptr> <ptr poison, ptr null>, ptr %i.cv, i64 0
  %i.ds = getelementptr inbounds nuw i8, <2 x ptr> %i.dr, <2 x i64> <i64 16, i64 0>
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.dz = add i64 %i.de, 3
  %i.ea = add i64 %i.dj, -1                       ; 2 uses
  %i.eb = add i64 %i.de, -1                       ; 3 uses
  br i1 %.not189, label %.loopexit84, label %.split.us

.split.us:                                        ; preds = %bb.n
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !4 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %..loopexit81_crit_edge.us, %.split.us
  %.sroa.021.0150.us = phi i64 [ 0, %.split.us ], [ %i.ee, %..loopexit81_crit_edge.us ] ; 5 uses
  %i.ee = add nuw nsw i64 %.sroa.021.0150.us, 1
  %i.ef = icmp eq i64 %.sroa.021.0150.us, 0
  br i1 %i.ef, label %.lr.ph149.us.thread, label %.lr.ph149.us

.lr.ph149.us:                                     ; preds = %bb.o
  %i.eg = shl nuw i64 %.sroa.021.0150.us, 6
  %i.eh = add i64 %i.eg, -8
  %i.ei = lshr i64 %i.eh, %i.df
  %.fr = freeze i64 %i.ei                         ; 6 uses
  %i.ej = sub i64 %i.dj, %.fr
  %..i.us = call noundef i64 @llvm.umin.i64(i64 %i.ej, i64 %i.dm)
  %i.ek = sub i64 0, %.fr
  %i.el = sub i64 %i.dj, %.fr
  %i.em = icmp slt i64 %.fr, 0
  %.sroa.020.0.i.us = call i64 @llvm.smax.i64(i64 range(i64 0, -71) %.fr, i64 0)
  %spec.select = select i1 %i.em, i64 %i.ek, i64 0
  br label %.lr.ph149.us.thread

.lr.ph149.us.thread:                              ; preds = %.lr.ph149.us, %bb.o
  %.sroa.020.0.i.us291 = phi i64 [ 0, %bb.o ], [ %.sroa.020.0.i.us, %.lr.ph149.us ]
  %i.en = phi i64 [ %i.dj, %bb.o ], [ %i.el, %.lr.ph149.us ]
  %.sroa.04.0.us290 = phi i64 [ 0, %bb.o ], [ %.fr, %.lr.ph149.us ] ; 12 uses
  %.sroa.010.0.us289 = phi i64 [ %i.dn, %bb.o ], [ %..i.us, %.lr.ph149.us ] ; 5 uses
  %i.eo = phi i64 [ 0, %bb.o ], [ %spec.select, %.lr.ph149.us ] ; 6 uses
  %i.ep = add nuw i64 %.sroa.04.0.us290, %.sroa.010.0.us289 ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, %i.dj
  %4 = add i64 %.sroa.04.0.us290, %i.eo
  %5 = sub i64 %i.dj, %4
  %i.er = sub i64 %.sroa.010.0.us289, %i.eo
  %.sroa.021.0.i.us = select i1 %i.eq, i64 %5, i64 %i.er ; 2 uses
  %..i.i.us = call i64 @llvm.smax.i64(i64 %.sroa.021.0.i.us, i64 0) ; 2 uses
  %i.es = add i64 %.sroa.04.0.us290, -3           ; 2 uses
  %i.et = add nuw i64 %i.ep, 4                    ; 2 uses
  %i.eu = icmp slt i64 %i.es, %i.et
  %i.ev = add nuw i64 %i.ep, 1
  %i.ew = add i64 %.sroa.04.0.us290, -2
  %i.ex = add i64 %..i.i.us, %i.eo                ; 2 uses
  %i.ey = icmp ult i64 %i.eo, %i.ex
  %i.ez = add nuw i64 %i.eo, 1
  %i.fa = icmp slt i64 %.sroa.021.0.i.us, 1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph149.us.thread, %.backedge.us
  %.sroa.023.0148.us = phi i64 [ 0, %.lr.ph149.us.thread ], [ %i.fb, %.backedge.us ] ; 4 uses
  %i.fb = add nuw i64 %.sroa.023.0148.us, 1       ; 2 uses
  %i.fc = mul i64 %i.ed, %.sroa.023.0148.us       ; 12 uses
  %i.fd = icmp eq i64 %.sroa.023.0148.us, %i.do
  %i.fe = sub i64 %i.de, %i.fc                    ; 2 uses
  %.sroa.014.0.us = select i1 %i.fd, i64 %i.fe, i64 %i.ed ; 4 uses
  %i.ff = invoke noundef nonnull ptr @_RNvMsb_NtCsdEEMmLUVy6d_5rav1e3lrfNtB5_16RestorationPlane26restoration_unit_by_stripe(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cu, i64 noundef %.sroa.021.0150.us, i64 noundef %.sroa.023.0148.us)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ; 4 uses

bb.q:                                             ; preds = %bb.p
  %i.fg = load i8, ptr %i.ff, align 1, !range !9, !noundef !4
  switch i8 %i.fg, label %default.unreachable [
    i8 0, label %.backedge.us
    i8 1, label %bb.z
    i8 2, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %.sroa.017.0.copyload.us = load i16, ptr %i.fj, align 1
  %i.fk = load i8, ptr %i.bm, align 1, !range !10, !noundef !4
  %i.fl = trunc nuw i8 %i.fk to i1
  br i1 %i.fl, label %bb.s, label %.backedge.us

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr %i.dp, ptr %i.o, align 8
  store i64 %i.fc, ptr %i.bn, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.dq, ptr %i.n, align 8
  store i64 %i.fc, ptr %i.bp, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bq, align 8
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20setup_integral_imagetECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.p, i64 noundef 392, i64 noundef %i.fe, i64 noundef %i.en, i64 noundef %.sroa.014.0.us, i64 noundef %.sroa.010.0.us289, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.dp, ptr %i.m, align 8
  store i64 %i.fc, ptr %i.br, align 8
  store i64 %.sroa.04.0.us290, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  %i.fm = load i64, ptr %i.dt, align 8, !alias.scope !219, !noalias !220, !noundef !4 ; 2 uses
  %i.fn = load ptr, ptr %i.cv, align 8, !alias.scope !219, !noalias !220, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  call void @llvm.experimental.noalias.scope.decl(metadata !222)
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.fo = load i64, ptr %i.du, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = load i64, ptr %i.dv, align 8, !alias.scope !224, !noalias !225
  %i.fr = icmp eq i64 %i.fq, 0
  %or.cond.i.i.us = select i1 %i.fp, i1 true, i1 %i.fr, !prof !11
  br i1 %or.cond.i.i.us, label %.noexc.us, label %bb.t, !prof !11

bb.t:                                             ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  %i.fs = load i64, ptr %i.dw, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 3 uses
  %i.ft = sub i64 0, %i.fs
  %.not.i.i.us = icmp slt i64 %i.fc, %i.ft
  br i1 %.not.i.i.us, label %.split152.us.invoke, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.fu = load i64, ptr %i.dx, align 8, !alias.scope !224, !noalias !225, !noundef !4 ; 2 uses
  %i.fv = sub i64 0, %i.fu
  %.not5.i.i.us = icmp slt i64 %.sroa.04.0.us290, %i.fv
  br i1 %.not5.i.i.us, label %.split152.us.invoke, label %bb.v, !prof !8

bb.v:                                             ; preds = %bb.u
  %i.fw = add i64 %.sroa.014.0.us, %i.fc
  %i.fx = add i64 %i.fw, %i.fs
  %.not6.i.i.us = icmp sgt i64 %i.fx, %i.fm
  br i1 %.not6.i.i.us, label %.split152.us.invoke, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.fy = add i64 %i.fu, %.sroa.04.0.us290        ; 2 uses
  %i.fz = add i64 %i.fy, %.sroa.010.0.us289
  %i.ga = load i64, ptr %i.dy, align 8, !alias.scope !224, !noalias !225, !noundef !4
  %.not7.i.i.us = icmp sgt i64 %i.fz, %i.ga
  br i1 %.not7.i.i.us, label %.split152.us.invoke, label %bb.x, !prof !8

bb.x:                                             ; preds = %bb.w
  %i.gb = mul i64 %i.fy, %i.fm
  %i.gc = getelementptr [2 x i8], ptr %i.fn, i64 %i.gb
  %i.gd = getelementptr [2 x i8], ptr %i.gc, i64 %i.fs
  %i.ge = getelementptr [2 x i8], ptr %i.gd, i64 %i.fc
  store ptr %i.ge, ptr %i.bt, align 8, !alias.scope !226, !noalias !227
  store ptr %i.dt, ptr %i.l, align 16, !alias.scope !226, !noalias !227
  store i64 %i.fc, ptr %i.bu, align 16, !alias.scope !228, !noalias !229
  store i64 %.sroa.04.0.us290, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  store i64 %.sroa.014.0.us, ptr %.sroa.13.0..sroa_idx, align 16, !alias.scope !228, !noalias !229
  store i64 %.sroa.010.0.us289, ptr %.sroa.18.0..sroa_idx, align 8, !alias.scope !228, !noalias !229
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

.noexc.us:                                        ; preds = %_RNvMs_NtNtCsdEEMmLUVy6d_5rav1e6tiling12plane_regionNtB4_4Area7to_rect.exit.i.us
  store <2 x ptr> %i.ds, ptr %i.l, align 16, !alias.scope !230, !noalias !231
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.bu, i8 0, i64 32, i1 false), !alias.scope !230, !noalias !231
  br label %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us

_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us: ; preds = %.noexc.us, %bb.x
  invoke void @_RINvNtCsdEEMmLUVy6d_5rav1e3lrf21sgrproj_stripe_filterttECs2mu2Cb9JdUH_5ravif(i8 noundef %i.fi, i16 noundef %.sroa.017.0.copyload.us, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, i64 noundef 392, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

bb.y:                                             ; preds = %_RNvXNtNtCsdEEMmLUVy6d_5rav1e5frame5planeINtNtCsko5zPvjVG7R_7v_frame5plane5PlanetEINtB2_8AsRegiontE10region_mutCs2mu2Cb9JdUH_5ravif.exit.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge.us

bb.z:                                             ; preds = %bb.q
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %.sroa.028.0.copyload.us = load i48, ptr %i.gf, align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.0.0.extract.trunc.i.us = trunc i48 %.sroa.028.0.copyload.us to i8
  %.sroa.2.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 8
  %.sroa.2.0.extract.trunc.i.us = trunc i48 %.sroa.2.0.extract.shift.i.us to i8
  %.sroa.3.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 16
  %.sroa.3.0.extract.trunc.i.us = trunc i48 %.sroa.3.0.extract.shift.i.us to i8
  %.sroa.4.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 24
  %.sroa.4.0.extract.trunc.i.us = trunc i48 %.sroa.4.0.extract.shift.i.us to i8
  %.sroa.5.0.extract.shift.i.us = lshr i48 %.sroa.028.0.copyload.us, 32
  %.sroa.5.0.extract.trunc.i.us = trunc i48 %.sroa.5.0.extract.shift.i.us to i8
  %i.gg = load i64, ptr %i.bv, align 8, !noalias !232, !noundef !4 ; 4 uses
  %i.gh = sext i8 %.sroa.0.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gi = sext i8 %.sroa.2.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gj = sext i8 %.sroa.3.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gk = sext i8 %.sroa.4.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gl = sext i8 %.sroa.5.0.extract.trunc.i.us to i32 ; 3 uses
  %i.gm = ashr i48 %.sroa.028.0.copyload.us, 40
  %i.gn = trunc nsw i48 %i.gm to i32              ; 3 uses
  %i.go = icmp eq i64 %i.gg, 12                   ; 3 uses
  %..i49.us = select i1 %i.go, i32 9, i32 11      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(284) %i.g, i8 0, i64 284, i1 false), !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !232
  %i.gp = add nsw i32 %i.gi, %i.gh
  %i.gq = add nsw i32 %i.gp, %i.gj
  %i.gr = shl nsw i32 %i.gq, 1
  %i.gs = sub nsw i32 128, %i.gr
  store i32 %i.gh, ptr %i.f, align 4, !noalias !232
  store i32 %i.gi, ptr %i.bw, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bx, align 4, !noalias !232
  store i32 %i.gs, ptr %i.by, align 4, !noalias !232
  store i32 %i.gj, ptr %i.bz, align 4, !noalias !232
  store i32 %i.gi, ptr %i.ca, align 4, !noalias !232
  store i32 %i.gh, ptr %i.cb, align 4, !noalias !232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !232
  %i.gt = add nsw i32 %i.gk, %i.gn
  %i.gu = add nsw i32 %i.gt, %i.gl
  %i.gv = shl nsw i32 %i.gu, 1
  %i.gw = sub nsw i32 128, %i.gv
  store i32 %i.gk, ptr %i.e, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cc, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cd, align 4, !noalias !232
  store i32 %i.gw, ptr %i.ce, align 4, !noalias !232
  store i32 %i.gn, ptr %i.cf, align 4, !noalias !232
  store i32 %i.gl, ptr %i.cg, align 4, !noalias !232
  store i32 %i.gk, ptr %i.ch, align 4, !noalias !232
  %i.gx = add i64 %.sroa.014.0.us, %i.fc          ; 2 uses
  %i.gy = icmp ult i64 %i.fc, %i.gx
  br i1 %i.gy, label %.lr.ph89.i.us, label %_RINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertECs2mu2Cb9JdUH_5ravif.exit.us

.lr.ph89.i.us:                                    ; preds = %bb.z
  %i.gz = add i64 %i.gg, 8
  %.98.neg91.i.us = select i1 %i.go, i64 27, i64 29
  %i.ha = add i64 %i.gz, %.98.neg91.i.us
  %i.hb = trunc i64 %i.ha to i32
  %i.hc = and i32 %i.hb, 31
  %notmask.i.us = shl nsw i32 -1, %i.hc
  %i.hd = xor i32 %notmask.i.us, -1
  %.98.i.us = select i1 %i.go, i64 5, i64 3       ; 2 uses
  %i.he = sub i64 %i.gg, %.98.i.us
  %i.hf = trunc i64 %i.he to i32
  %i.hg = add i32 %i.hf, 6
  %i.hh = and i32 %i.hg, 31
  %i.hi = shl nuw i32 1, %i.hh                    ; 2 uses
  %i.hj = trunc nuw nsw i64 %.98.i.us to i32      ; 2 uses
  %i.hk = shl nuw nsw i32 1, %i.hj
  %i.hl = lshr exact i32 %i.hk, 1
  %i.hm = sub i32 0, %i.hi
  %i.hn = sub i32 %i.hd, %i.hi
  %i.ho = shl nuw nsw i32 1, %..i49.us
  %i.hp = lshr exact i32 %i.ho, 1
  %i.hq = trunc i64 %i.gg to i32
  %i.hr = and i32 %i.hq, 31
  %notmask93.i.us = shl nsw i32 -1, %i.hr
  %i.hs = xor i32 %notmask93.i.us, -1
  %i.ht = sub i64 3, %i.fc
  br label %bb.aa

bb.aa:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us, %.lr.ph89.i.us
  %indvars.iv.i.us = phi i64 [ %i.ht, %.lr.ph89.i.us ], [ %indvars.iv.next.i.us, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 8 uses
  %.sroa.01.087.i.us = phi i64 [ %i.fc, %.lr.ph89.i.us ], [ %i.hu, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtB7_4take4TakeINtNtB7_3map3MapINtNtCsko5zPvjVG7R_7v_frame5plane11RowsIterMuttENCINvNtCsdEEMmLUVy6d_5rav1e3lrf20wiener_stripe_filtertE0EEEINtB5_7ZipImplBW_B1o_E4nextCs2mu2Cb9JdUH_5ravif.exit.thread.i.us ] ; 4 uses
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead20estimate_intra_coststECs2mu2Cb9JdUH_5ravif:switch.lookup
  %exitcond.not = icmp eq i64 %i.bv, %i.t
  br i1 %exitcond.not, label %..loopexit_crit_edge, label %bb.d

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.y
  resume { ptr, i32 } %lpad.phi

bb.x:                                             ; preds = %bb.c
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body unwind label %bb.z

bb.y:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECs2mu2Cb9JdUH_5ravif.exit unwind label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.x, %bb.aa
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorshECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @_RNvMs4_NtNtCsdEEMmLUVy6d_5rav1e7context10block_unitNtB5_11FrameBlocks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  invoke void @_RINvMNtNtCsdEEMmLUVy6d_5rav1e6tiling5tilerNtB3_10TilingInfo13tile_iter_muthECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(12536) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val3, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.o = mul nuw nsw i64 %.val3, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEEINtB2_12SpecFromIterBU_INtBX_18TileContextIterMuthEE9from_iterCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtCsfCiG4zJPfKh_5rayon3vec8IntoIterINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuthEENtNtB8_4iter16ParallelIterator8for_eachNCINvNtNtBM_3api9lookahead22compute_motion_vectorshE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.r = mul nuw nsw i64 %.val1, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e3api9lookahead22compute_motion_vectorstECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef align 8 dereferenceable(12536) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @_RNvMs4_NtNtCsdEEMmLUVy6d_5rav1e7context10block_unitNtB5_11FrameBlocks3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, i64 noundef %i.f, i64 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 368
  invoke void @_RINvMNtNtCsdEEMmLUVy6d_5rav1e6tiling5tilerNtB3_10TilingInfo13tile_iter_muttECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(12536) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val3 = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %.val3, 0
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.o = mul nuw nsw i64 %.val3, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef range(i64 1, -9223372036854775808) %i.o, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEEINtB2_12SpecFromIterBU_INtBX_18TileContextIterMuttEE9from_iterCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.a)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RINvYINtNtCsfCiG4zJPfKh_5rayon3vec8IntoIterINtNtNtCsdEEMmLUVy6d_5rav1e6tiling5tiler14TileContextMuttEENtNtB8_4iter16ParallelIterator8for_eachNCINvNtNtBM_3api9lookahead22compute_motion_vectorstE0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(816) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %2)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1 = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val1, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.r = mul nuw nsw i64 %.val1, 30
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 2) #27
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit4: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdEEMmLUVy6d_5rav1e7context10block_unit11FrameBlocksECs2mu2Cb9JdUH_5ravif.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 4 %4, i64 noundef range(i64 0, 2305843009213693952) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep27 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load28 = load i8, ptr %switch.gep27, align 1
  %switch.ext29 = zext i8 %switch.load28 to i64
  %i.d = add nuw nsw i64 %switch.ext29, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitlEEINtNtB7_3map3MapINtBZ_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload18 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload19 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i32, ptr %i.r, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.s = mul i32 %.val1.i.i.i.i.peel, %.sroa.01.0.peel
  %isneg.peel = icmp slt i32 %.val1.i.i.i.i.peel, 0
  %i.t = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.u = add i32 %i.t, %i.s
  %i.v = ashr i32 %i.u, %i.i
  store i32 %i.v, ptr %i.q, align 4
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.w = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.x = add i64 %.sroa.0.sroa.6.0.copyload, %i.w ; 3 uses
  %min.iters.check = icmp ult i64 %i.x, 8
  %i.y = sub i64 %.sroa.0.sroa.3.0.copyload19, %.sroa.0.sroa.0.0.copyload18
  %diff.check = icmp ugt i64 %i.y, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.x, -8                       ; 4 uses
  %i.z = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.aa = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert20 = insertelement <4 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat21 = shufflevector <4 x i32> %broadcast.splatinsert20, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert22 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat23 = shufflevector <4 x i32> %broadcast.splatinsert22, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <4 x i32>, ptr %i.ac, align 4, !noalias !1207 ; 2 uses
  %wide.load24 = load <4 x i32>, ptr %i.ad, align 4, !noalias !1207 ; 2 uses
  %i.ae = mul <4 x i32> %wide.load, %broadcast.splat
  %i.af = mul <4 x i32> %wide.load24, %broadcast.splat
  %i.ag = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.ah = icmp slt <4 x i32> %wide.load24, zeroinitializer
  %i.ai = select <4 x i1> %i.ag, <4 x i32> %broadcast.splat21, <4 x i32> zeroinitializer
  %i.aj = select <4 x i1> %i.ah, <4 x i32> %broadcast.splat21, <4 x i32> zeroinitializer
  %i.ak = add <4 x i32> %i.ai, %i.ae
  %i.al = add <4 x i32> %i.aj, %i.af
  %i.am = ashr <4 x i32> %i.ak, %broadcast.splat23
  %i.an = ashr <4 x i32> %i.al, %broadcast.splat23
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %i.am, ptr %i.ab, align 4
  store <4 x i32> %i.an, ptr %i.ao, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1205

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.z, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.aa, %middle.block ] ; 3 uses
  %i.aq = xor i64 %.sroa.8.015.ph, -1
  %i.ar = add i64 %.sroa.0.sroa.6.0.copyload, %i.aq
  %10 = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.as = and i64 %10, 1
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.au = add i64 %.sroa.8.015.ph, 1
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i32, ptr %i.av, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.aw = mul i32 %.val1.i.i.i.i.prol, %.sroa.01.0
  %isneg.prol = icmp slt i32 %.val1.i.i.i.i.prol, 0
  %i.ax = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.ay = add i32 %i.ax, %i.aw
  %i.az = ashr i32 %i.ay, %i.i
  store i32 %i.az, ptr %i.at, align 4
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.au, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.ba = icmp eq i64 %i.ar, %.sroa.0.sroa.5.0.copyload
  br i1 %i.ba, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bi, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i32, ptr %i.bc, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.bd = mul i32 %.val1.i.i.i.i, %.sroa.01.0
  %isneg = icmp slt i32 %.val1.i.i.i.i, 0
  %i.be = select i1 %isneg, i32 %i.j, i32 0
  %i.bf = add i32 %i.be, %i.bd
  %i.bg = ashr i32 %i.bf, %i.i
  store i32 %i.bg, ptr %i.bb, align 4
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bi = add i64 %.sroa.8.015, 2                 ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i32, ptr %i.bj, align 4, !noalias !1207, !noundef !4 ; 2 uses
  %i.bk = mul i32 %.val1.i.i.i.i.1, %.sroa.01.0
  %isneg.1 = icmp slt i32 %.val1.i.i.i.i.1, 0
  %i.bl = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bm = add i32 %i.bl, %i.bk
  %i.bn = ashr i32 %i.bm, %i.i
  store i32 %i.bn, ptr %i.bh, align 4
  %exitcond.not.1 = icmp eq i64 %i.bi, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1206

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitlEEINtNtB6_3map3MapINtB1q_4IterlENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizelE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif(i8 noundef %0, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %1, i64 noundef range(i64 0, 4611686018427387904) %2, i16 noundef %3, ptr noalias nofree noundef nonnull align 2 %4, i64 noundef range(i64 0, 4611686018427387904) %5, i8 noundef range(i8 0, 19) %6, i64 noundef %7, i8 noundef %8, i8 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = zext nneg i8 %6 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %6 to i64
  %switch.gep26 = getelementptr inbounds nuw i8, ptr @switch.table._RINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesECs2mu2Cb9JdUH_5ravif.206, i64 %i.c
  %switch.load27 = load i8, ptr %switch.gep26, align 1
  %switch.ext28 = zext i8 %switch.load27 to i64
  %i.d = add nuw nsw i64 %switch.ext28, %switch.ext ; 2 uses
  %i.e = icmp samesign ugt i64 %i.d, 8
  %i.f = zext i1 %i.e to i32
  %i.g = icmp samesign ugt i64 %i.d, 10
  %i.h = zext i1 %i.g to i32
  %i.i = add nuw nsw i32 %i.f, %i.h               ; 6 uses
  %notmask = shl nsw i32 -1, %i.i
  %i.j = xor i32 %notmask, -1                     ; 5 uses
  %i.k = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4dc_q(i8 noundef %0, i8 noundef %8, i64 noundef %7)
  %i.l = tail call noundef i16 @_RNvNtCsdEEMmLUVy6d_5rav1e8quantize4ac_q(i8 noundef %0, i8 noundef %9, i64 noundef %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %5
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %2
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3mem12maybe_uninit11MaybeUninitsEEINtNtB7_3map3MapINtBZ_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEINtB5_7ZipImplBW_B27_E3newCs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %4, ptr noundef nonnull %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.n)
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 7 uses
  %.sroa.0.sroa.0.0.copyload18 = ptrtoaddr ptr %.sroa.0.sroa.0.0.copyload to i64
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8 ; 7 uses
  %.sroa.0.sroa.3.0.copyload19 = ptrtoaddr ptr %.sroa.0.sroa.3.0.copyload to i64
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 10 uses
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.0.sroa.6.0.copyload = load i64, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp ult i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  br i1 %i.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph: ; preds = %switch.lookup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.sroa.3.0.copyload) ]
  %i.p = sub nuw i64 %.sroa.0.sroa.6.0.copyload, %.sroa.0.sroa.5.0.copyload ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.0.sroa.5.0.copyload
  %.val1.i.i.i.i.peel = load i16, ptr %i.r, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.s = sext i16 %.val1.i.i.i.i.peel to i32
  %.sroa.01.0.peel = zext i16 %i.k to i32
  %i.t = mul nsw i32 %i.s, %.sroa.01.0.peel
  %isneg.peel = icmp slt i16 %.val1.i.i.i.i.peel, 0
  %i.u = select i1 %isneg.peel, i32 %i.j, i32 0
  %i.v = add nsw i32 %i.t, %i.u
  %i.w = ashr i32 %i.v, %i.i
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.q, align 2
  %exitcond.peel.not = icmp eq i64 %i.p, 1
  br i1 %exitcond.peel.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph
  %.sroa.01.0 = zext i16 %i.l to i32              ; 4 uses
  %i.y = xor i64 %.sroa.0.sroa.5.0.copyload, -1
  %i.z = add i64 %.sroa.0.sroa.6.0.copyload, %i.y ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %.sroa.0.sroa.3.0.copyload19, %.sroa.0.sroa.0.0.copyload18
  %diff.check = icmp ugt i64 %i.aa, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.ab = add i64 %.sroa.0.sroa.5.0.copyload, %n.vec
  %i.ac = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %.sroa.01.0, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <8 x i32> poison, i32 %i.j, i64 0
  %broadcast.splat21 = shufflevector <8 x i32> %broadcast.splatinsert20, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert22 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat23 = shufflevector <8 x i32> %broadcast.splatinsert22, <8 x i32> poison, <8 x i32> zeroinitializer
  %invariant.op = add nuw i64 %.sroa.0.sroa.5.0.copyload, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %.reass = add nuw i64 %index, %invariant.op     ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.reass
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.reass
  %wide.load = load <8 x i16>, ptr %i.ae, align 2, !noalias !1217 ; 2 uses
  %i.af = sext <8 x i16> %wide.load to <8 x i32>
  %i.ag = mul nsw <8 x i32> %broadcast.splat, %i.af
  %i.ah = icmp slt <8 x i16> %wide.load, zeroinitializer
  %i.ai = select <8 x i1> %i.ah, <8 x i32> %broadcast.splat21, <8 x i32> zeroinitializer
  %i.aj = add nsw <8 x i32> %i.ag, %i.ai
  %i.ak = ashr <8 x i32> %i.aj, %broadcast.splat23
  %i.al = trunc <8 x i32> %i.ak to <8 x i16>
  store <8 x i16> %i.al, ptr %i.ad, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1215

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next, %middle.block
  %.sroa.56.016.in.ph = phi i64 [ %.sroa.0.sroa.5.0.copyload, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ab, %middle.block ] ; 2 uses
  %.sroa.8.015.ph = phi i64 [ 1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.peel.next ], [ %i.ac, %middle.block ] ; 3 uses
  %i.an = xor i64 %.sroa.8.015.ph, -1
  %i.ao = add i64 %.sroa.0.sroa.6.0.copyload, %i.an
  %10 = sub i64 %.sroa.0.sroa.5.0.copyload, %.sroa.0.sroa.6.0.copyload
  %i.ap = and i64 %10, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ap, 0
  br i1 %lcmp.mod.not.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.prol = add nuw i64 %.sroa.56.016.in.ph, 1 ; 3 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.prol
  %i.ar = add i64 %.sroa.8.015.ph, 1
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.prol
  %.val1.i.i.i.i.prol = load i16, ptr %i.as, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.at = sext i16 %.val1.i.i.i.i.prol to i32
  %i.au = mul nsw i32 %i.at, %.sroa.01.0
  %isneg.prol = icmp slt i16 %.val1.i.i.i.i.prol, 0
  %i.av = select i1 %isneg.prol, i32 %i.j, i32 0
  %i.aw = add nsw i32 %i.au, %i.av
  %i.ax = ashr i32 %i.aw, %i.i
  %i.ay = trunc i32 %i.ax to i16
  store i16 %i.ay, ptr %i.aq, align 2
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader
  %.sroa.56.016.in.unr = phi i64 [ %.sroa.56.016.in.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %.sroa.56.016.prol, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %.sroa.8.015.unr = phi i64 [ %.sroa.8.015.ph, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.preheader ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol ]
  %i.az = icmp eq i64 %i.ao, %.sroa.0.sroa.5.0.copyload
  br i1 %i.az, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit
  %.sroa.56.016.in = phi i64 [ %.sroa.56.016.1, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.56.016.in.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ] ; 2 uses
  %.sroa.8.015 = phi i64 [ %i.bj, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit ], [ %.sroa.8.015.unr, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit ]
  %.sroa.56.016 = add nuw i64 %.sroa.56.016.in, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016
  %.val1.i.i.i.i = load i16, ptr %i.bb, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.bc = sext i16 %.val1.i.i.i.i to i32
  %i.bd = mul nsw i32 %i.bc, %.sroa.01.0
  %isneg = icmp slt i16 %.val1.i.i.i.i, 0
  %i.be = select i1 %isneg, i32 %i.j, i32 0
  %i.bf = add nsw i32 %i.bd, %i.be
  %i.bg = ashr i32 %i.bf, %i.i
  %i.bh = trunc i32 %i.bg to i16
  store i16 %i.bh, ptr %i.ba, align 2
  %.sroa.56.016.1 = add nuw i64 %.sroa.56.016.in, 2 ; 3 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.0.0.copyload, i64 %.sroa.56.016.1
  %i.bj = add i64 %.sroa.8.015, 2                 ; 2 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.sroa.3.0.copyload, i64 %.sroa.56.016.1
  %.val1.i.i.i.i.1 = load i16, ptr %i.bk, align 2, !noalias !1217, !noundef !4 ; 2 uses
  %i.bl = sext i16 %.val1.i.i.i.i.1 to i32
  %i.bm = mul nsw i32 %i.bl, %.sroa.01.0
  %isneg.1 = icmp slt i16 %.val1.i.i.i.i.1, 0
  %i.bn = select i1 %isneg.1, i32 %i.j, i32 0
  %i.bo = add nsw i32 %i.bm, %i.bn
  %i.bp = ashr i32 %i.bo, %i.i
  %i.bq = trunc i32 %i.bp to i16
  store i16 %i.bq, ptr %i.bi, align 2
  %exitcond.not.1 = icmp eq i64 %i.bj, %i.p
  br i1 %exitcond.not.1, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, !llvm.loop !1216

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.thread: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.prol.loopexit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit, %middle.block, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_3zip3ZipINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3mem12maybe_uninit11MaybeUninitsEEINtNtB6_3map3MapINtB1q_4ItersENCINvNtNtCsdEEMmLUVy6d_5rav1e8quantize4rust10dequantizesE0EEENtNtNtB8_6traits8iterator8Iterator4nextCs2mu2Cb9JdUH_5ravif.exit.lr.ph, %switch.lookup
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatahE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = add i64 %i.b, %.sroa.65.0.copyload6      ; 2 uses
  %i.d = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.e = add i64 %i.d, %.sroa.0.0.copyload7
  %i.f = sub i64 %i.e, %i.c
  %diff.check = icmp ugt i64 %i.f, -16
  %i.g = add i64 %i.d, %.sroa.41.0.copyload8
  %i.h = sub i64 %i.g, %i.c
  %diff.check9 = icmp ugt i64 %i.h, -16
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -4                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k
  %wide.load = load <4 x i32>, ptr %i.l, align 4, !noalias !1232
  %wide.load10 = load <4 x i32>, ptr %i.m, align 4, !noalias !1232
  %i.n = zext <4 x i32> %wide.load to <4 x i64>
  %i.o = zext <4 x i32> %wide.load10 to <4 x i64>
  %i.p = mul nuw <4 x i64> %i.o, %i.n
  %i.q = add nuw <4 x i64> %i.p, splat (i64 8192)
  %i.r = lshr <4 x i64> %i.q, splat (i64 14)      ; 2 uses
  %i.s = icmp eq <4 x i64> %i.r, zeroinitializer
  %i.t = tail call <4 x i64> @llvm.umin.v4i64(<4 x i64> %i.r, <4 x i64> splat (i64 268435455))
  %i.u = trunc nuw nsw <4 x i64> %i.t to <4 x i32>
  %i.v = select <4 x i1> %i.s, <4 x i32> splat (i32 1), <4 x i32> %i.u
  %i.w = getelementptr [4 x i8], ptr %i.j, i64 %index
  store <4 x i32> %i.v, ptr %i.w, align 4, !noalias !1233
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !1230

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.i, %middle.block ]
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.y = phi i64 [ %i.am, %scalar.ph ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.0.015.i.i = phi i64 [ %i.z, %scalar.ph ], [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = add nuw i64 %.sroa.0.015.i.i, 1          ; 2 uses
  %i.aa = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.aa
  %.val13.i.i = load i32, ptr %i.ab, align 4, !noalias !1232, !noundef !4
  %.val14.i.i = load i32, ptr %i.ac, align 4, !noalias !1232, !noundef !4
  %i.ad = zext i32 %.val13.i.i to i64
  %i.ae = zext i32 %.val14.i.i to i64
  %i.af = mul nuw i64 %i.ae, %i.ad
  %i.ag = add nuw i64 %i.af, 8192
  %i.ah = lshr i64 %i.ag, 14                      ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 1125899906318337) %i.ah, i64 268435455)
  %i.aj = trunc nuw nsw i64 %..i.i.i.i.i to i32
  %i.ak = select i1 %i.ai, i32 1, i32 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.y
  store i32 %i.ak, ptr %i.al, align 4, !noalias !1233
  %i.am = add i64 %i.y, 1                         ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.z, %i.a
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %scalar.ph, !llvm.loop !1231

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatahE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit: ; preds = %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %i.am, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !1232
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEB1d_ENCNvMs3_NtB1H_7encoderINtB2A_14CodedFrameDatatE29compute_spatiotemporal_scores0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callB1D_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB50_3VecB1D_E14extend_trustedBN_E0E0ECs2mu2Cb9JdUH_5ravif(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 4 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 4 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 3 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCsdEEMmLUVy6d_5rav1e3rdo15DistortionScaleEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_B3c_EB1m_uNCNvMs3_NtB1q_7encoderINtB3z_14CodedFrameDatatE29compute_spatiotemporal_scores0NCINvNvB2a_8for_each4callB1m_NCINvMsk_NtCs4wP2HXfJTCR_5alloc3vecINtB5k_3VecB1m_E14extend_trustedINtB2T_3MapBM_B3r_EE0E0E0ECs2mu2Cb9JdUH_5ravif.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %i.c = add i64 %i.b, %.sroa.65.0.copyload6      ; 2 uses
end_hunk_2
