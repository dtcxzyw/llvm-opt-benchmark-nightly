inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt12hunt_anchorsINtNtB4_5utils12OffsetLookupjEEB6_:bb.a
  br i1 %i.ap, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2659
  %i.aq = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !2659 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %bb.h

.lr.ph153.split:                                  ; preds = %.lr.ph153, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread
  %i.as = phi ptr [ %i.gx, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 3 uses
  %i.at = phi ptr [ %i.gy, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 5 uses
  %i.au = phi i64 [ %i.gz, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ 0, %.lr.ph153 ] ; 3 uses
  %i.av = phi ptr [ %i.ha, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 3 uses
  %.sroa.026.0151 = phi i64 [ %i.aw, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ %2, %.lr.ph153 ] ; 3 uses
  %i.aw = add i64 %.sroa.026.0151, 1              ; 2 uses
  br i1 %.not.i71, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph153.split
  %i.ax = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc72 unwind label %.loopexit.split-lp100.loopexit.split ; 2 uses

.noexc72:                                         ; preds = %bb.d
  %i.ay = extractvalue { i64, i32 } %i.ax, 0      ; 2 uses
  %i.az = icmp eq i64 %i.ay, %5
  br i1 %i.az, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %.noexc72
  %i.ba = extractvalue { i64, i32 } %i.ax, 1      ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 1000000000
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = icmp samesign ugt i32 %i.ba, %6
  br i1 %i.bc, label %.split156.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit: ; preds = %.loopexit99, %.loopexit.split-lp100.loopexit.split, %.loopexit.split-lp100.loopexit.split.us, %.loopexit.split-lp100.loopexit.split-lp, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.p ], [ %lpad.phi, %bb.o ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp106, %.loopexit.split-lp100.loopexit.split-lp ], [ %lpad.loopexit105, %.loopexit.split-lp100.loopexit.split ], [ %lpad.loopexit105.us, %.loopexit.split-lp100.loopexit.split.us ]
  %.val67 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.bd = icmp eq i64 %.val67, 0
  br i1 %i.bd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit
  %.val68 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.be = shl nuw i64 %.val67, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val68, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit

.loopexit99:                                      ; preds = %bb.af, %bb.ak, %bb.ao
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit

.loopexit.split-lp100.loopexit.split:             ; preds = %bb.d
  %lpad.loopexit105 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit

.loopexit.split-lp100.loopexit.split-lp:          ; preds = %.invoke, %.split158.us, %bb.f
  %lpad.loopexit.split-lp106 = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit

bb.f:                                             ; preds = %._crit_edge154, %bb.c
  %.sroa.10.0.ph = phi i64 [ %i.ao, %bb.c ], [ undef, %._crit_edge154 ]
  %.sroa.488.0.ph = phi i64 [ 8, %bb.c ], [ 0, %._crit_edge154 ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.488.0.ph, i64 %.sroa.10.0.ph) #38
          to label %bb.q unwind label %.loopexit.split-lp100.loopexit.split-lp

bb.g:                                             ; preds = %bb.b, %.thread
  %.ph242 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.gy, %bb.b ]
  store i64 0, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store i64 %i.gz, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.aq, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr [8 x i8], ptr %i.gy, i64 %i.gz
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.bn = load ptr, ptr %i.i, align 8, !nonnull !5 ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %.split156.us, %bb.g
  %.val54 = phi ptr [ %.val54211, %.split156.us ], [ %.ph242, %bb.g ]
  %.val65 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.bo = icmp eq i64 %.val65, 0
  br i1 %i.bo, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit73, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val66 = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5
  %i.bp = shl nuw i64 %.val65, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit73

bb.k:                                             ; preds = %bb.r, %bb.h
  %i.bq = phi ptr [ %i.aq, %bb.h ], [ %i.cd, %bb.r ]
  %i.br = phi i64 [ 0, %bb.h ], [ %i.cf, %bb.r ]  ; 3 uses
  %.sroa.023.0 = phi i64 [ %i.bl, %bb.h ], [ %i.by, %bb.r ] ; 3 uses
  %i.bs = icmp ult i64 %.sroa.023.0, %i.bm
  br i1 %i.bs, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.bn, i64 %.sroa.023.0 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load <2 x i64>, ptr %i.bu, align 8
  %i.bw = load i64, ptr %i.bt, align 8, !range !60, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  %i.bz = load i64, ptr %i.a, align 8, !range !22, !alias.scope !2662, !noundef !5
  %i.ca = icmp eq i64 %i.br, %i.bz
  br i1 %i.ca, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %._crit_edge208 unwind label %.loopexit

._crit_edge208:                                   ; preds = %bb.m
  %.pre209 = load ptr, ptr %i.bh, align 8, !alias.scope !2662
  br label %bb.r

bb.n:                                             ; preds = %bb.k
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.023.0, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #38
          to label %bb.q unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val69 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.cb = icmp eq i64 %.val69, 0
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val70 = load ptr, ptr %i.bh, align 8, !nonnull !5, !noundef !5
  %i.cc = shl nuw i64 %.val69, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val70, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit

bb.q:                                             ; preds = %bb.n, %bb.f
  unreachable

bb.r:                                             ; preds = %._crit_edge208, %bb.l
  %i.cd = phi ptr [ %.pre209, %._crit_edge208 ], [ %i.bq, %bb.l ] ; 6 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.br
  store <2 x i64> %i.bv, ptr %i.ce, align 8, !noalias !2662
  %i.cf = add i64 %i.br, 1                        ; 5 uses
  store i64 %i.cf, ptr %i.bi, align 8, !alias.scope !2662
  %i.cg = trunc nuw i64 %i.bw to i1
  br i1 %i.cg, label %bb.k, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = lshr i64 %i.cf, 1                       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  %.not.i75 = icmp eq i64 %i.ch, 0
  br i1 %.not.i75, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cf ; 3 uses
  %i.cj = icmp eq i64 %i.ch, 1
  br i1 %i.cj, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.ch, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i, %.lr.ph.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %i.ct, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i ]
  %i.ck = xor i64 %.sroa.0.016.i, -1
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i ; 2 uses
  %i.cm = getelementptr [16 x i8], ptr %i.ci, i64 %i.ck ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !2665, !noalias !2668
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !2670
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !alias.scope !2668, !noalias !2665
  %i.co = xor i64 %.sroa.0.016.i, -2
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = getelementptr [16 x i8], ptr %i.ci, i64 %i.co ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !2665, !noalias !2668
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !2670
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !alias.scope !2668, !noalias !2665
  %i.ct = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i
  %i.cu = and i64 %i.cf, 2
  %lcmp.mod.not = icmp eq i64 %i.cu, 0
  br i1 %lcmp.mod.not, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.ct, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod395 = trunc i64 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod395)
  %i.cv = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i.epil.init ; 2 uses
  %i.cx = getelementptr [16 x i8], ptr %i.ci, i64 %i.cv ; 2 uses
  %i.cy = load <2 x i64>, ptr %i.cw, align 8, !alias.scope !2665, !noalias !2668
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !alias.scope !2670
  store <2 x i64> %i.cy, ptr %i.cx, align 8, !alias.scope !2668, !noalias !2665
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val63 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.cz = icmp eq i64 %.val63, 0
  br i1 %i.cz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76, label %bb.t

bb.t:                                             ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit
  %i.da = shl nuw i64 %.val63, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit
  %.val61 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.db = icmp eq i64 %.val61, 0
  br i1 %i.db, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit
  %.val62 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.dc = shl nuw i64 %.val61, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %i.dc, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76: ; preds = %bb.t, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val59 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.dd = icmp eq i64 %.val59, 0
  br i1 %i.dd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76
  %i.de = shl nuw i64 %.val59, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gy, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit: ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit
  %.val57 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.df = icmp eq i64 %.val57, 0
  br i1 %i.df, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit78, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit
  %.val58 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.dg = shl nuw i64 %.val57, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.dg, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit78

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val55 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.dh = icmp eq i64 %.val55, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85
  %.val55.sink = phi i64 [ %.val, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85 ], [ %.val55, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77 ]
  %.val56 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.di = shl nuw i64 %.val55.sink, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc72
  %i.dj = icmp sgt i64 %i.ay, %5
  br i1 %i.dj, label %.split156.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.lr.ph153.split, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  %i.dk = sub i64 %.sroa.026.0151, %i.m           ; 3 uses
  %i.dl = icmp ult i64 %i.dk, %i.o
  br i1 %i.dl, label %bb.x, label %.split158.us

.split158.us:                                     ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us
  %.us-phi159 = phi i64 [ %umax, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us ], [ %i.aa, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us ], [ %i.dk, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi159, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %.noexc unwind label %.loopexit.split-lp100.loopexit.split-lp

.noexc:                                           ; preds = %.split158.us
  unreachable

.split156.us:                                     ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us, %.split.us
  %.val54211 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us ], [ inttoptr (i64 8 to ptr), %.split.us ], [ %i.at, %.split ], [ %i.at, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ]
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.x:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dk ; 2 uses
  %i.dn = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRjECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dm), !noalias !2671 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  %i.do = lshr i64 %i.dn, 57
  %i.dp = trunc nuw nsw i64 %i.do to i8
  %i.dq = insertelement <16 x i8> poison, i8 %i.dp, i64 0
  %i.dr = shufflevector <16 x i8> %i.dq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i64, ptr %i.dm, align 8, !alias.scope !2676, !noalias !2677
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.x ], [ %i.ei, %bb.aa ]
  %.pn.i.i = phi i64 [ %i.dn, %bb.x ], [ %i.ej, %bb.aa ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.x      ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.ds, align 1, !noalias !2679 ; 2 uses
  %i.dt = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dr
  %i.du = bitcast <16 x i1> %i.dt to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.i31.i.i = phi i16 [ %i.eh, %bb.z ], [ %i.du, %bb.y ] ; 3 uses
  %i.dv = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dw = zext nneg i16 %i.dv to i64
  %i.dx = add i64 %.sroa.01.0.i.i.i, %i.dw
  %i.dy = and i64 %i.dx, %i.x
  %i.dz = sub nsw i64 0, %i.dy
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.dz ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -32
  %.val2.i.i.i = load i64, ptr %i.eb, align 8, !noalias !2685, !noundef !5
  %i.ec = icmp eq i64 %.val.i.i.i.i, %.val2.i.i.i
  br i1 %i.ec, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit, label %bb.z, !prof !169

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.ed = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ee = bitcast <16 x i1> %i.ed to i16
  %i.ef = icmp eq i16 %i.ee, 0
  br i1 %i.ef, label %bb.aa, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, !prof !252

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.eg = add i16 %.sroa.06.0.i31.i.i, -1
  %i.eh = and i16 %i.eg, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.eh, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.ei = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ej = add i64 %.sroa.01.0.i.i.i, %i.ei
  br label %bb.y

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.ea, i64 -16
  %i.el = load ptr, ptr %i.ek, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.em = getelementptr inbounds i8, ptr %i.ea, i64 -8
  %i.en = load i64, ptr %i.em, align 8, !noundef !5 ; 2 uses
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %.idx = shl nuw nsw i64 %i.en, 3
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.ad
  %i.eq = phi ptr [ %i.fh, %bb.ad ], [ %i.as, %.lr.ph150.preheader ] ; 3 uses
  %i.er = phi ptr [ %i.fi, %bb.ad ], [ %i.at, %.lr.ph150.preheader ] ; 2 uses
  %i.es = phi i64 [ %i.fj, %bb.ad ], [ %i.au, %.lr.ph150.preheader ] ; 3 uses
  %i.et = phi ptr [ %i.fk, %bb.ad ], [ %i.av, %.lr.ph150.preheader ] ; 5 uses
  %.sroa.4.0149 = phi ptr [ %i.eu, %bb.ad ], [ %i.ep, %.lr.ph150.preheader ]
  %i.eu = getelementptr inbounds i8, ptr %.sroa.4.0149, i64 -8 ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !5 ; 5 uses
  %i.ew = load i64, ptr %i.f, align 8, !noundef !5 ; 13 uses
  %.not164 = icmp eq i64 %i.ew, 0
  br i1 %.not164, label %.thread252, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap
  %i.ex = icmp ult i64 %i.ew, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp eq i64 %.sroa.07.1, %i.ew          ; 2 uses
  br i1 %i.ey, label %.thread256, label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph150, %bb.ap
  %.sroa.07.0148 = phi i64 [ %.sroa.07.1, %bb.ap ], [ 0, %.lr.ph150 ] ; 3 uses
  %.sroa.030.0147 = phi i64 [ %.sroa.030.1, %bb.ap ], [ %i.ew, %.lr.ph150 ] ; 2 uses
  %i.ez = sub nuw i64 %.sroa.030.0147, %.sroa.07.0148
  %i.fa = lshr i64 %i.ez, 1
  %i.fb = add i64 %i.fa, %.sroa.07.0148           ; 5 uses
  %i.fc = icmp ult i64 %i.fb, %i.ew
  br i1 %i.fc, label %bb.ap, label %.invoke

bb.ab:                                            ; preds = %._crit_edge
  %i.fd = icmp ult i64 %.sroa.07.1, %i.ew
  br i1 %i.fd, label %bb.ac, label %.invoke
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9histogram9diff_implINtNtB4_5utils12OffsetLookupjEBY_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
bb.bb:                                            ; preds = %bb.q
  %i.hf = sub nuw i64 %i.bk, %.sroa.092.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8787)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8790)
  %i.hg = load ptr, ptr %0, align 8, !alias.scope !8793, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8794)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 136 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !alias.scope !8794, !noalias !8797, !noundef !5 ; 3 uses
  %i.hk = load i64, ptr %i.hh, align 8, !range !22, !alias.scope !8794, !noalias !8797, !noundef !5
  %i.hl = icmp eq i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bc, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hh) #34, !noalias !8797
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit83: ; preds = %bb.bb, %bb.bc
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hn = load ptr, ptr %i.hm, align 8, !alias.scope !8794, !noalias !8797, !nonnull !5, !noundef !5
  %i.ho = getelementptr inbounds nuw [40 x i8], ptr %i.hn, i64 %i.hj ; 4 uses
  store i64 2, ptr %i.ho, align 8, !noalias !8799
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  store i64 %.sroa.0.0142, ptr %.sroa.4133.0..sroa_idx, align 8, !noalias !8799
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store i64 %.sroa.092.0, ptr %.sroa.5134.0..sroa_idx, align 8, !noalias !8799
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store i64 %i.hf, ptr %.sroa.6135.0..sroa_idx, align 8, !noalias !8799
  %i.hp = add i64 %i.hj, 1
  store i64 %i.hp, ptr %i.hi, align 8, !alias.scope !8794, !noalias !8797
  br label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !8800)
  call void @llvm.experimental.noalias.scope.decl(metadata !8803)
  %i.hq = load ptr, ptr %0, align 8, !alias.scope !8806, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8807)
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 136 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !8807, !noalias !8810, !noundef !5 ; 3 uses
  %i.hu = load i64, ptr %i.hr, align 8, !range !22, !alias.scope !8807, !noalias !8810, !noundef !5
  %i.hv = icmp eq i64 %i.ht, %i.hu
  br i1 %i.hv, label %bb.be, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit84

bb.be:                                            ; preds = %bb.bd
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hr) #34, !noalias !8810
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit84

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit84: ; preds = %bb.bd, %bb.be
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 128
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !8807, !noalias !8810, !nonnull !5, !noundef !5
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %i.hx, i64 %i.ht ; 4 uses
  store i64 0, ptr %i.hy, align 8, !noalias !8812
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  store i64 %i.bj, ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !8812
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  store i64 %i.bk, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !8812
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  store i64 %.sroa.0.0.i77, ptr %.sroa.6110.0..sroa_idx, align 8, !noalias !8812
  %i.hz = add i64 %i.ht, 1
  store i64 %i.hz, ptr %i.hs, align 8, !alias.scope !8807, !noalias !8810
  br label %bb.bf

bb.bf:                                            ; preds = %bb.ba, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit84, %bb.b, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit85
  ret void

bb.bg:                                            ; preds = %.critedge
  %i.ia = sub i64 %3, %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8816)
  %i.ib = load ptr, ptr %0, align 8, !alias.scope !8819, !nonnull !5, !align !97, !noundef !5 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 120 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8820)
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 136 ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !8820, !noalias !8823, !noundef !5 ; 3 uses
  %i.if = load i64, ptr %i.ic, align 8, !range !22, !alias.scope !8820, !noalias !8823, !noundef !5
  %i.ig = icmp eq i64 %i.ie, %i.if
  br i1 %i.ig, label %bb.bh, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit85

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ic) #34, !noalias !8823
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit85

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit85: ; preds = %bb.bg, %bb.bh
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ib, i64 128
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !8820, !noalias !8823, !nonnull !5, !noundef !5
  %i.ij = getelementptr inbounds nuw [40 x i8], ptr %i.ii, i64 %i.ie ; 4 uses
  store i64 1, ptr %i.ij, align 8, !noalias !8825
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %2, ptr %.sroa.4123.0..sroa_idx, align 8, !noalias !8825
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  store i64 %i.ia, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !8825
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i64 %5, ptr %.sroa.6125.0..sroa_idx, align 8, !noalias !8825
  %i.ik = add i64 %i.ie, 1
  store i64 %i.ik, ptr %i.id, align 8, !alias.scope !8820, !noalias !8823
  br label %bb.bf
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !159, !noalias !8826, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i, !prof !169

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !8835
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !8835
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !8836 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !8836
  store i8 1, ptr %i.e, align 8, !noalias !8836
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre-phi187 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !8835
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi187, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %.not.i40 = icmp eq i32 %7, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader: ; preds = %bb.ag, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph165, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17

.lr.ph165:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  %.not.i = icmp eq i32 %7, -1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %bb.aa, %bb.u
  %lpad.loopexit137 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit137, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #35
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.sroa.0.098162 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.ag ] ; 3 uses
  %.sroa.8.0161 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.ag ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.098162, 1
  %i.ao = add nuw i64 %.sroa.8.0161, 1            ; 2 uses
  %i.ap = and i64 %.sroa.8.0161, 1023
  %i.aq = icmp ne i64 %i.ap, 0
  %or.cond135 = or i1 %.not.i40, %i.aq
  br i1 %or.cond135, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit43.thread, label %bb.u

bb.c:                                             ; preds = %.lr.ph165, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit
  %.sroa.077.0164 = phi i64 [ %4, %.lr.ph165 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %.sroa.879.0163 = phi i64 [ 0, %.lr.ph165 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.077.0164, 1
  %i.as = add nuw i64 %.sroa.879.0163, 1          ; 2 uses
  %i.at = and i64 %.sroa.879.0163, 1023
  %i.au = icmp ne i64 %i.at, 0
  %or.cond = or i1 %.not.i, %i.au
  br i1 %or.cond, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, label %bb.h

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !8839)
  call void @llvm.experimental.noalias.scope.decl(metadata !8842)
  call void @llvm.experimental.noalias.scope.decl(metadata !8845)
  call void @llvm.experimental.noalias.scope.decl(metadata !8848)
  call void @llvm.experimental.noalias.scope.decl(metadata !8851)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !8854, !noundef !5 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17
  call void @llvm.experimental.noalias.scope.decl(metadata !8855)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !8858, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !8858, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !8859
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !8862
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !8858 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !8858, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !8858
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34
  %.sink = phi i64 [ %i.gd, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sink240 = phi i64 [ %i.gg, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink240, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34, %.loopexit136
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit136 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc18 unwind label %.loopexit ; 2 uses

.noexc18:                                         ; preds = %bb.h
  %i.ch = extractvalue { i64, i32 } %i.cg, 0      ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %6
  br i1 %i.ci, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %.noexc18
  %i.cj = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 1000000000
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i32 %i.cj, %7
  br i1 %i.cl, label %.loopexit136, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc18
  %i.cm = icmp sgt i64 %i.ch, %6
  br i1 %i.cm, label %.loopexit136, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.split, %bb.c, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cn = sub i64 %.sroa.077.0164, %i.z           ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.ab
  br i1 %i.co, label %bb.i, label %.invoke

bb.i:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cn
  %.val15 = load i64, ptr %i.cp, align 8, !noundef !5 ; 9 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.val15, 8
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.val15, 16
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.val15, 24
  %.sroa.7.0.extract.shift.i.i = lshr i64 %.val15, 32
  %.sroa.8.0.extract.shift.i.i = lshr i64 %.val15, 40
  %.sroa.9.0.extract.shift.i.i = lshr i64 %.val15, 48
  %.sroa.10.0.extract.shift.i.i = lshr i64 %.val15, 56
  %i.cq = and i64 %.val15, 255
  %i.cr = xor i64 %i.cq, -3750763034362895579
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = and i64 %.sroa.4.0.extract.shift.i.i, 255
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = and i64 %.sroa.5.0.extract.shift.i.i, 255
  %i.cx = xor i64 %i.cv, %i.cw
  %i.cy = mul i64 %i.cx, 1099511628211
  %i.cz = and i64 %.sroa.6.0.extract.shift.i.i, 255
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = mul i64 %i.da, 1099511628211
  %i.dc = and i64 %.sroa.7.0.extract.shift.i.i, 255
  %i.dd = xor i64 %i.db, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = and i64 %.sroa.8.0.extract.shift.i.i, 255
  %i.dg = xor i64 %i.de, %i.df
  %i.dh = mul i64 %i.dg, 1099511628211
  %i.di = and i64 %.sroa.9.0.extract.shift.i.i, 255
  %i.dj = xor i64 %i.dh, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = xor i64 %i.dk, %.sroa.10.0.extract.shift.i.i
  %i.dm = mul i64 %i.dl, 1099511628211            ; 2 uses
  store i64 %i.dm, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8865)
  %i.dn = load i64, ptr %i.ae, align 8, !alias.scope !8865, !noalias !8868, !noundef !5
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8865, !noalias !8868, !noundef !5
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8865, !noalias !8868, !noundef !5
  %i.dp = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !8865 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8870)
  call void @llvm.experimental.noalias.scope.decl(metadata !8873)
  %i.dq = lshr i64 %i.dp, 57
  %i.dr = trunc nuw nsw i64 %i.dq to i8
  %i.ds = load i64, ptr %i.af, align 8, !alias.scope !8876, !noalias !8877, !noundef !5 ; 2 uses
  %i.dt = load ptr, ptr %i.c, align 8, !alias.scope !8876, !noalias !8877, !nonnull !5, !noundef !5 ; 2 uses
  %i.du = insertelement <16 x i8> poison, i8 %i.dr, i64 0
  %i.dv = shufflevector <16 x i8> %i.du, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.j ], [ %i.em, %bb.m ]
  %.pn.i.i = phi i64 [ %i.dp, %bb.j ], [ %i.en, %bb.m ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.ds     ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dw, align 1, !noalias !8880 ; 2 uses
  %i.dx = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dv
  %i.dy = bitcast <16 x i1> %i.dx to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i = phi i16 [ %i.el, %bb.l ], [ %i.dy, %bb.k ] ; 3 uses
  %i.dz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = add i64 %.sroa.01.0.i.i.i, %i.ea
  %i.ec = and i64 %i.eb, %i.ds
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_EB6_:bb.a
  %i.iu = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.iv = bitcast <16 x i1> %i.iu to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.iv, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !377

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ab
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.ab ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.iv, %bb.ab ], [ %i.jm, %.lr.ph.i.i.i ]
  %i.iw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ix = zext nneg i16 %i.iw to i64
  %i.iy = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ix
  %i.iz = and i64 %i.iy, %.val3.i.i               ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.val.i.i66, i64 %i.iz
  %i.jb = load i8, ptr %i.ja, align 1, !noalias !8954, !noundef !5 ; 2 uses
  %i.jc = icmp sgt i8 %i.jb, -1
  br i1 %i.jc, label %bb.ac, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i, !prof !252

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i66, align 16, !noalias !8954
  %i.jd = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.je = bitcast <16 x i1> %i.jd to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.je, 0
  %i.jf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.je, i1 true)
  %i.jg = zext nneg i16 %i.jf to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i68 = getelementptr inbounds nuw i8, ptr %.val.i.i66, i64 %i.jg
  %.pre.i.i69 = load i8, ptr %.phi.trans.insert.i.i68, align 1, !noalias !8954
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.ab ]
  %i.jh = phi i64 [ %i.ji, %.lr.ph.i.i.i ], [ 0, %bb.ab ]
  %i.ji = add i64 %i.jh, 16                       ; 2 uses
  %i.jj = add i64 %i.ji, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.jj, %.val3.i.i    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.val.i.i66, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.jk, align 1, !noalias !8951
  %i.jl = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.jm = bitcast <16 x i1> %i.jl to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.jm, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.ac, %._crit_edge.i.i.i
  %i.jn = phi i8 [ %.pre.i.i69, %bb.ac ], [ %i.jb, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.jg, %bb.ac ], [ %i.iz, %._crit_edge.i.i.i ] ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.val.i.i66, i64 %.sroa.0.0.i5.i.i.i
  %i.jp = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.jq = and i64 %i.jp, %.val3.i.i
  store i8 %i.ht, ptr %i.jo, align 1, !noalias !8954
  %i.jr = getelementptr i8, ptr %.val.i.i66, i64 %i.jq
  %i.js = getelementptr i8, ptr %i.jr, i64 16
  store i8 %i.ht, ptr %i.js, align 1, !noalias !8954
  %i.jt = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.ju = getelementptr inbounds [32 x i8], ptr %.val.i.i66, i64 %i.jt ; 5 uses
  %i.jv = and i8 %i.jn, 1
  %i.jw = zext nneg i8 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %i.ju, i64 -32
  store i64 %i.hq, ptr %i.jx, align 8, !noalias !8955
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ju, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !8955
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ju, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !8955
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ju, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8955
  %i.jy = load <2 x i64>, ptr %i.v, align 8, !alias.scope !8944, !noalias !8947
  %i.jz = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.jw, i64 0
  %i.ka = sub <2 x i64> %i.jy, %i.jz
  store <2 x i64> %i.ka, ptr %i.v, align 8, !alias.scope !8944, !noalias !8947
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i
  %.pn.i = phi ptr [ %i.ju, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i ], [ %i.ig, %bb.ad ] ; 3 uses
  %.sroa.0.0.i67 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8956)
  %i.kb = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.kc = load i64, ptr %i.kb, align 8, !alias.scope !8956, !noundef !5 ; 3 uses
  %i.kd = load i64, ptr %.sroa.0.0.i67, align 8, !range !22, !alias.scope !8956, !noundef !5
  %i.ke = icmp eq i64 %i.kc, %i.kd
  br i1 %i.ke, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i67) #34
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.kf = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.kg = load ptr, ptr %i.kf, align 8, !alias.scope !8956, !nonnull !5, !noundef !5
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.kc
  store i64 %.sroa.0.098162, ptr %i.kh, align 8, !noalias !8956
  %i.ki = add i64 %i.kc, 1
  store i64 %i.ki, ptr %i.kb, align 8, !alias.scope !8956
  %exitcond.not = icmp eq i64 %i.ao, %i.w
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupmEB15_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !159, !noalias !8959, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i, !prof !169

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !8968
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !8968
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !8969 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !8969
  store i8 1, ptr %i.e, align 8, !noalias !8969
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre-phi184 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !8968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi184, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %.not.i40 = icmp eq i32 %7, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader: ; preds = %bb.ag, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph162, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17

.lr.ph162:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  %.not.i = icmp eq i32 %7, -1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %bb.aa, %bb.u
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit134, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp135, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #35
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.ag
  %.sroa.0.095159 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.ag ] ; 3 uses
  %.sroa.8.0158 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.ag ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.095159, 1
  %i.ao = add nuw i64 %.sroa.8.0158, 1            ; 2 uses
  %i.ap = and i64 %.sroa.8.0158, 1023
  %i.aq = icmp ne i64 %i.ap, 0
  %or.cond132 = or i1 %.not.i40, %i.aq
  br i1 %or.cond132, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit43.thread, label %bb.u

bb.c:                                             ; preds = %.lr.ph162, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit
  %.sroa.074.0161 = phi i64 [ %4, %.lr.ph162 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %.sroa.876.0160 = phi i64 [ 0, %.lr.ph162 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.074.0161, 1
  %i.as = add nuw i64 %.sroa.876.0160, 1          ; 2 uses
  %i.at = and i64 %.sroa.876.0160, 1023
  %i.au = icmp ne i64 %i.at, 0
  %or.cond = or i1 %.not.i, %i.au
  br i1 %or.cond, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, label %bb.h

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !8972)
  call void @llvm.experimental.noalias.scope.decl(metadata !8975)
  call void @llvm.experimental.noalias.scope.decl(metadata !8978)
  call void @llvm.experimental.noalias.scope.decl(metadata !8981)
  call void @llvm.experimental.noalias.scope.decl(metadata !8984)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !8987, !noundef !5 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17
  call void @llvm.experimental.noalias.scope.decl(metadata !8988)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !8991, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !8991, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !8992
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !8995
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !8991 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !8991, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !8991
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34
  %.sink = phi i64 [ %i.fu, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sink237 = phi i64 [ %i.fx, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink237, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34, %.loopexit133
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit133 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i34 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit17 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit39.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc18 unwind label %.loopexit ; 2 uses

.noexc18:                                         ; preds = %bb.h
  %i.ch = extractvalue { i64, i32 } %i.cg, 0      ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %6
  br i1 %i.ci, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %.noexc18
  %i.cj = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 1000000000
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i32 %i.cj, %7
  br i1 %i.cl, label %.loopexit133, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc18
  %i.cm = icmp sgt i64 %i.ch, %6
  br i1 %i.cm, label %.loopexit133, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.split, %bb.c, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cn = sub i64 %.sroa.074.0161, %i.z           ; 3 uses
  %i.co = icmp ult i64 %i.cn, %i.ab
  br i1 %i.co, label %bb.i, label %.invoke

bb.i:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cn
  %.val15 = load i32, ptr %i.cp, align 4, !noundef !5 ; 5 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val15, 8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.val15, 16
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.val15, 24
  %.sroa.6.0.extract.trunc.i.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i to i64
  %i.cq = and i32 %.val15, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = xor i64 %i.cr, -3750763034362895579
  %i.ct = mul i64 %i.cs, 1099511628211
  %i.cu = and i32 %.sroa.4.0.extract.shift.i.i, 255
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = xor i64 %i.ct, %i.cv
  %i.cx = mul i64 %i.cw, 1099511628211
  %i.cy = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = xor i64 %i.cx, %i.cz
  %i.db = mul i64 %i.da, 1099511628211
  %i.dc = xor i64 %i.db, %.sroa.6.0.extract.trunc.i.i
  %i.dd = mul i64 %i.dc, 1099511628211            ; 2 uses
  store i64 %i.dd, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !8998)
  %i.de = load i64, ptr %i.ae, align 8, !alias.scope !8998, !noalias !9001, !noundef !5
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !8998, !noalias !9001, !noundef !5
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !8998, !noalias !9001, !noundef !5
  %i.dg = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !8998 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9003)
  call void @llvm.experimental.noalias.scope.decl(metadata !9006)
  %i.dh = lshr i64 %i.dg, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = load i64, ptr %i.af, align 8, !alias.scope !9009, !noalias !9010, !noundef !5 ; 2 uses
  %i.dk = load ptr, ptr %i.c, align 8, !alias.scope !9009, !noalias !9010, !nonnull !5, !noundef !5 ; 2 uses
  %i.dl = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %i.dm = shufflevector <16 x i8> %i.dl, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.j ], [ %i.ed, %bb.m ]
  %.pn.i.i = phi i64 [ %i.dg, %bb.j ], [ %i.ee, %bb.m ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dj     ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dn, align 1, !noalias !9013 ; 2 uses
  %i.do = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dm
  %i.dp = bitcast <16 x i1> %i.do to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dp, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.l
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ec, %bb.l ], [ %i.dp, %bb.k ] ; 3 uses
  %i.dq = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dr = zext nneg i16 %i.dq to i64
  %i.ds = add i64 %.sroa.01.0.i.i.i, %i.dr
  %i.dt = and i64 %i.ds, %i.dj
  %i.du = sub nsw i64 0, %i.dt
  %i.dv = getelementptr inbounds [32 x i8], ptr %i.dk, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dw, align 8, !noalias !9016, !noundef !5
  %i.dx = icmp eq i64 %i.dd, %.val2.i.i.i
  br i1 %i.dx, label %bb.n, label %bb.l, !prof !169

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %i.dy = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dz = bitcast <16 x i1> %i.dy to i16
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %bb.m, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, !prof !252
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupmEB15_EB6_:bb.a
  %i.ic = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.id = bitcast <16 x i1> %i.ic to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.id, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !377

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.ab
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.ab ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.id, %bb.ab ], [ %i.iu, %.lr.ph.i.i.i ]
  %i.ie = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.if = zext nneg i16 %i.ie to i64
  %i.ig = add i64 %.sroa.0.0.lcssa.i.i.i, %i.if
  %i.ih = and i64 %i.ig, %.val3.i.i               ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !noalias !9087, !noundef !5 ; 2 uses
  %i.ik = icmp sgt i8 %i.ij, -1
  br i1 %i.ik, label %bb.ac, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i, !prof !252

bb.ac:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i63, align 16, !noalias !9087
  %i.il = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.im = bitcast <16 x i1> %i.il to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.im, 0
  %i.in = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.im, i1 true)
  %i.io = zext nneg i16 %i.in to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i65 = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 %i.io
  %.pre.i.i66 = load i8, ptr %.phi.trans.insert.i.i65, align 1, !noalias !9087
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.ab, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.ab ]
  %i.ip = phi i64 [ %i.iq, %.lr.ph.i.i.i ], [ 0, %bb.ab ]
  %i.iq = add i64 %i.ip, 16                       ; 2 uses
  %i.ir = add i64 %i.iq, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.ir, %.val3.i.i    ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.is, align 1, !noalias !9084
  %i.it = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.iu = bitcast <16 x i1> %i.it to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.iu, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !379

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i: ; preds = %bb.ac, %._crit_edge.i.i.i
  %i.iv = phi i8 [ %.pre.i.i66, %bb.ac ], [ %i.ij, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.io, %bb.ac ], [ %i.ih, %._crit_edge.i.i.i ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.val.i.i63, i64 %.sroa.0.0.i5.i.i.i
  %i.ix = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.iy = and i64 %i.ix, %.val3.i.i
  store i8 %i.hb, ptr %i.iw, align 1, !noalias !9087
  %i.iz = getelementptr i8, ptr %.val.i.i63, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 16
  store i8 %i.hb, ptr %i.ja, align 1, !noalias !9087
  %i.jb = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.jc = getelementptr inbounds [32 x i8], ptr %.val.i.i63, i64 %i.jb ; 5 uses
  %i.jd = and i8 %i.iv, 1
  %i.je = zext nneg i8 %i.jd to i64
  %i.jf = getelementptr inbounds i8, ptr %i.jc, i64 -32
  store i64 %i.gy, ptr %i.jf, align 8, !noalias !9088
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.jc, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !9088
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.jc, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !9088
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.jc, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !9088
  %i.jg = load <2 x i64>, ptr %i.v, align 8, !alias.scope !9077, !noalias !9080
  %i.jh = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.je, i64 0
  %i.ji = sub <2 x i64> %i.jg, %i.jh
  store <2 x i64> %i.ji, ptr %i.v, align 8, !alias.scope !9077, !noalias !9080
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i
  %.pn.i = phi ptr [ %i.jc, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCsdftwklc2oBO_7similar.exit.i ], [ %i.ho, %bb.ad ] ; 3 uses
  %.sroa.0.0.i64 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9089)
  %i.jj = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !9089, !noundef !5 ; 3 uses
  %i.jl = load i64, ptr %.sroa.0.0.i64, align 8, !range !22, !alias.scope !9089, !noundef !5
  %i.jm = icmp eq i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i64) #34
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.jn = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !9089, !nonnull !5, !noundef !5
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jo, i64 %i.jk
  store i64 %.sroa.0.095159, ptr %i.jp, align 8, !noalias !9089
  %i.jq = add i64 %i.jk, 1
  store i64 %i.jq, ptr %i.jj, align 8, !alias.scope !9089
  %exitcond.not = icmp eq i64 %i.ao, %i.w
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !159, !noalias !9092, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i, !prof !169

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !9101
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !9101
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !9102 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !9102
  store i8 1, ptr %i.e, align 8, !noalias !9102
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i
  %.pre-phi186 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCsdftwklc2oBO_7similar.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECsdftwklc2oBO_7similar.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !9101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi186, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %.not.i43 = icmp eq i32 %7, -1
  %i.o = load i64, ptr %0, align 8, !range !60
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader: ; preds = %bb.aq, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsdftwklc2oBO_7similar.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph167, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12

.lr.ph167:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  %.not.i = icmp eq i32 %7, -1
  %i.y = load i64, ptr %3, align 8, !range !60
  %i.z = trunc nuw i64 %i.y to i1                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !5 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load i64, ptr %0, align 8, !range !60
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !5 ; 2 uses
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit146:                                     ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ap, %bb.ak, %bb.aa
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit146
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit146 ], [ %lpad.loopexit149, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #35
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.aq
  %.sroa.0.0103164 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.aq ] ; 5 uses
  %.sroa.8.0163 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.aq ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.0103164, 1
  %i.ao = add nuw i64 %.sroa.8.0163, 1            ; 2 uses
  %i.ap = and i64 %.sroa.8.0163, 1023
  %i.aq = icmp ne i64 %i.ap, 0
  %or.cond141 = or i1 %.not.i43, %i.aq
  br i1 %or.cond141, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit46.thread, label %bb.aa

bb.c:                                             ; preds = %.lr.ph167, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit
  %.sroa.082.0166 = phi i64 [ %4, %.lr.ph167 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 6 uses
  %.sroa.884.0165 = phi i64 [ 0, %.lr.ph167 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.082.0166, 1
  %i.as = add nuw i64 %.sroa.884.0165, 1          ; 2 uses
  %i.at = and i64 %.sroa.884.0165, 1023
  %i.au = icmp ne i64 %i.at, 0
  %or.cond = or i1 %.not.i, %i.au
  br i1 %or.cond, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, label %bb.h

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !9105)
  call void @llvm.experimental.noalias.scope.decl(metadata !9108)
  call void @llvm.experimental.noalias.scope.decl(metadata !9111)
  call void @llvm.experimental.noalias.scope.decl(metadata !9114)
  call void @llvm.experimental.noalias.scope.decl(metadata !9117)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !9120, !noundef !5 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !9121)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !9124, !noundef !5 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !9124, !nonnull !5, !noundef !5 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !9125
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !9128
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !9124 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !9124, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !9124
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37
  %.sink = phi i64 [ %i.ht, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sink228 = phi i64 [ %i.hw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink228, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !5
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37, %.loopexit147
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit147 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit.i.i.i.i.i37 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECsdftwklc2oBO_7similar.exit42.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc unwind label %.loopexit146 ; 2 uses

.noexc:                                           ; preds = %bb.h
  %i.ch = extractvalue { i64, i32 } %i.cg, 0      ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %6
  br i1 %i.ci, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %.noexc
  %i.cj = extractvalue { i64, i32 } %i.cg, 1      ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 1000000000
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i32 %i.cj, %7
  br i1 %i.cl, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc
  %i.cm = icmp sgt i64 %i.ch, %6
  br i1 %i.cm, label %.loopexit147, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.split, %bb.c, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cn = icmp ult i64 %.sroa.082.0166, %i.ab     ; 4 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  br i1 %i.cn, label %bb.l, label %.invoke

bb.j:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  br i1 %i.cn, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.cq = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.082.0166 ; 2 uses
  %i.cr = getelementptr i8, ptr %i.cq, i64 8
  %i.cs = getelementptr i8, ptr %i.cq, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.5.1.i.in.i = phi ptr [ %i.cs, %bb.l ], [ %i.cp, %bb.k ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.cr, %bb.l ], [ %i.co, %bb.k ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !9131, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !9131, !noundef !5 ; 4 uses
  %i.ct = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.ct, label %.loopexit145, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %xtraiter267 = and i64 %.sroa.5.1.i.i, 7        ; 3 uses
  %i.cu = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.cu, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter274 = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.ef, %.lr.ph.i.i ] ; 9 uses
  %i.cv = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ej, %.lr.ph.i.i ]
  %niter275 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter275.next.7, %.lr.ph.i.i ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cx = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !9137, !noalias !9144, !noundef !5
  %i.ec = zext i8 %i.eb to i64
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_:bb.a
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9420, !noalias !9423, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9420, !noalias !9423, !noundef !5
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9420, !noalias !9423, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9420, !noalias !9423, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9426
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9427, !noalias !9432, !nonnull !5, !align !97, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9427, !noalias !9432, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9434, !noalias !9423
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9435, !noalias !9436
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9435, !noalias !9436
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9437), !noalias !9423
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9438), !noalias !9423
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9427, !noalias !9432, !nonnull !5, !align !97, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9427, !noalias !9432, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9434, !noalias !9423
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9435, !noalias !9436
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9435, !noalias !9436
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9427, !noalias !9432, !nonnull !5, !align !97, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9427, !noalias !9432, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9434, !noalias !9423
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9435, !noalias !9436
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9435, !noalias !9436
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.159 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.159
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9439
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9439
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9443)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9445
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9443, !noalias !9446, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9440, !noalias !9449, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9445, !noalias !9450
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cc
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9440, !noalias !9451, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9443, !noalias !9454, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9445, !noalias !9455
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9445, !noalias !9456
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1d_12OffsetLookupmEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i
  %i.ef = shl nuw nsw i64 %i.ca, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB19_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB10_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eh = icmp ugt i64 %i.br, 1
  br i1 %i.eh, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ei = add i64 %.sroa.02.1.lcssa, 1
  %i.ej = lshr i64 %.sroa.018.0, 1
  %i.ek = add nuw i64 %i.ej, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.el = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.el, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = or i64 %1, 1
  %i.en = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = xor i32 %i.ep, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9439
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_4
begin_hunk_5_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_:bb.a
  br i1 %i.c, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not5.i91 = icmp ugt i64 %.sroa.01.0, 2
  %.not5.i96 = icmp ugt i64 %.sroa.01.0, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.aa, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.aa ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.ek, %bb.aa ] ; 7 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.ei, %bb.aa ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph61, label %._crit_edge

.lr.ph61:                                         ; preds = %bb.g
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 2 uses
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 9 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %i.o, i64 24
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9461, !noalias !9464, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9461, !noalias !9464, !noundef !5
  %i.s = icmp ult i64 %.val10.i, %.val11.i        ; 2 uses
  %.not68 = icmp eq i64 %i.n, 2                   ; 2 uses
  br i1 %i.s, label %.preheader, label %.preheader46

.preheader46:                                     ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, label %.lr.ph

.preheader:                                       ; preds = %bb.k
  br i1 %.not68, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, label %.lr.ph55

.lr.ph:                                           ; preds = %.preheader46, %bb.l
  %.val9.i = phi i64 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader46 ]
  %.sroa.01.0.i.i51 = phi i64 [ %i.w, %bb.l ], [ 2, %.preheader46 ] ; 3 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.0.i.i51
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9461, !noalias !9464, !noundef !5 ; 2 uses
  %i.v = icmp ult i64 %.val8.i, %.val9.i
  br i1 %i.v, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.w = add nuw i64 %.sroa.01.0.i.i51, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph

.lr.ph55:                                         ; preds = %.preheader, %bb.m
  %.val7.i = phi i64 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader ]
  %.sroa.01.1.i.i54 = phi i64 [ %i.aa, %bb.m ], [ 2, %.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.01.1.i.i54
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9461, !noalias !9464, !noundef !5 ; 2 uses
  %i.z = icmp ult i64 %.val.i, %.val7.i
  br i1 %i.z, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i

bb.m:                                             ; preds = %.lr.ph55
  %i.aa = add nuw i64 %.sroa.01.1.i.i54, 1        ; 2 uses
  %exitcond75.not = icmp eq i64 %i.aa, %i.n
  br i1 %exitcond75.not, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i, label %.lr.ph55

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i: ; preds = %bb.l, %.lr.ph, %bb.m, %.lr.ph55
  %.sroa.0.0.i.i = phi i64 [ %.sroa.01.1.i.i54, %.lr.ph55 ], [ %i.n, %bb.m ], [ %.sroa.01.0.i.i51, %.lr.ph ], [ %i.n, %bb.l ] ; 6 uses
  %i.ab = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.ab)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94: ; preds = %.preheader
  br i1 %.not5.i96, label %bb.i, label %.lr.ph.preheader.i.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread: ; preds = %.preheader46
  br i1 %.not5.i91, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i
  br i1 %i.s, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

bb.o:                                             ; preds = %bb.i
  %..i36 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i36, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.p:                                             ; preds = %bb.i
  %..i35 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9467
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9468, !noalias !9473, !nonnull !5, !align !97, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9468, !noalias !9473, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9475, !noalias !9464
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9476, !noalias !9477
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9476, !noalias !9477
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9478), !noalias !9464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9479), !noalias !9464
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %xtraiter = and i64 %i.ap, 1
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i, %.lr.ph.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9468, !noalias !9473, !nonnull !5, !align !97, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9468, !noalias !9473, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9475, !noalias !9464
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9476, !noalias !9477
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9476, !noalias !9477
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9468, !noalias !9473, !nonnull !5, !align !97, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9468, !noalias !9473, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9475, !noalias !9464
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9476, !noalias !9477
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9476, !noalias !9477
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit
  %.sroa.0.0.i32 = phi i64 [ %i.an, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

bb.r:                                             ; preds = %.lr.ph61, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit
  %.sroa.02.160 = phi i64 [ %.sroa.02.0, %.lr.ph61 ], [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.023.159 = phi i64 [ %.sroa.023.0, %.lr.ph61 ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 4 uses
  %i.br = add i64 %.sroa.02.160, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit, %bb.r, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.159, %bb.r ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.160, %bb.r ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.aa, label %bb.ab

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 8 uses
  %i.bz = lshr i64 %.sroa.023.159, 1              ; 6 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 4 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 6 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.159 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.159
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

bb.v:                                             ; preds = %bb.w, %bb.t
  br i1 %i.ce, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9484)
  %i.cu = icmp eq i64 %i.by, 0
  %i.cv = icmp eq i64 %i.bz, 0
  %or.cond.i = or i1 %i.cv, %i.cu
  br i1 %or.cond.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 range(i64 0, -9223372036854775808) %i.by) ; 2 uses
  %i.cw = icmp samesign ult i64 %3, %..i.i
  br i1 %i.cw, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  %.not.i33 = icmp samesign ugt i64 %i.by, %i.bz  ; 2 uses
  %spec.select.i = select i1 %.not.i33, ptr %i.cx, ptr %i.cc
  %i.cy = shl nuw nsw i64 %..i.i, 4               ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9486
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 %i.cy ; 3 uses
  br i1 %.not.i33, label %.preheader.i, label %.lr.ph.i.i

.preheader.i:                                     ; preds = %.critedge.i, %.preheader.i
  %i.da = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.critedge.i ] ; 2 uses
  %i.db = phi ptr [ %i.dk, %.preheader.i ], [ %i.cx, %.critedge.i ] ; 2 uses
  %.sroa.0.0.i.i34 = phi ptr [ %i.de, %.preheader.i ], [ %i.m, %.critedge.i ]
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -16 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 -16 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %.sroa.0.0.i.i34, i64 -16 ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 -8
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9484, !noalias !9487, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9481, !noalias !9490, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9486, !noalias !9491
  %i.di = xor i1 %i.dh, true
  %i.dj = zext i1 %i.di to i64
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  %i.dl = zext i1 %i.dh to i64
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.dl ; 3 uses
  %i.dn = icmp eq ptr %i.dk, %i.cc
  %i.do = icmp eq ptr %i.dm, %2
  %or.cond.i.i = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i, label %.preheader.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %.lr.ph.i.i
  %i.dp = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.cc, %.critedge.i ] ; 2 uses
  %.sroa.0.02.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.cx, %.critedge.i ] ; 3 uses
  %i.dq = phi ptr [ %i.dw, %.lr.ph.i.i ], [ %2, %.critedge.i ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.sroa.0.02.i.i, i64 8
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9481, !noalias !9492, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9484, !noalias !9495, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9486, !noalias !9496
  %i.dv = zext i1 %i.du to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.dv ; 3 uses
  %i.dx = zext i1 %i.dt to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i.i, i64 %i.dx ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.ea = icmp ne ptr %i.dw, %i.cz
  %i.eb = icmp ne ptr %i.dy, %i.m
  %or.cond.i20.i = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond.i20.i, label %.lr.ph.i.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i: ; preds = %.lr.ph.i.i, %.preheader.i
  %.sroa.13.1.i = phi ptr [ %i.dk, %.preheader.i ], [ %i.dz, %.lr.ph.i.i ]
  %.sroa.7.0.i = phi ptr [ %i.dm, %.preheader.i ], [ %i.cz, %.lr.ph.i.i ]
  %.sroa.0.1.i = phi ptr [ %2, %.preheader.i ], [ %i.dw, %.lr.ph.i.i ] ; 2 uses
  %i.ec = ptrtoint ptr %.sroa.7.0.i to i64
  %i.ed = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9486, !noalias !9497
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit: ; preds = %bb.y, %bb.z, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1h_4text12TextDiffSideeEEE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_11sort_by_keyjNCINvB1d_6uniqueB27_Es1_0E0EB1h_.exit.i
  %i.ef = shl nuw nsw i64 %i.ca, 1
  %i.eg = or disjoint i64 %i.ef, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1d_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_11sort_by_keyjNCINvB19_6uniqueB23_Es1_0E0EB1d_.exit: ; preds = %bb.u, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit
  %.sroa.0.0.i = phi i64 [ %i.eg, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB14_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_11sort_by_keyjNCINvB10_6uniqueB1U_Es1_0E0EB14_.exit ], [ %i.ci, %bb.u ] ; 2 uses
  %i.eh = icmp ugt i64 %i.br, 1
  br i1 %i.eh, label %bb.r, label %._crit_edge

bb.aa:                                            ; preds = %._crit_edge
  %i.ei = add i64 %.sroa.02.1.lcssa, 1
  %i.ej = lshr i64 %.sroa.018.0, 1
  %i.ek = add nuw i64 %i.ej, %.sroa.09.0
  br label %bb.f

bb.ab:                                            ; preds = %._crit_edge
  %i.el = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.el, 0
  br i1 %.not30, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.em = or i64 %1, 1
  %i.en = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.em, i1 true)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 1
  %i.eq = xor i32 %i.ep, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.eq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9480
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
end_hunk_5
begin_hunk_6_@_RNvMs7_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat:bb.a
  br label %bb.e

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i64 noundef %0, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #37
  unreachable

bb.e:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ae, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i ], [ %i.aq, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i ], [ %i.t, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.as, label %.thread, label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @181) #37
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.at, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.au, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.h, %bb.e
  %.sroa.01.0 = phi i64 [ 2, %bb.g ], [ %., %bb.h ], [ 1, %bb.e ], [ 1, %bb.d ]
  %i.av = add i64 %.sroa.01.0, %0                 ; 8 uses
  %i.aw = icmp ult i64 %i.av, %.8.val
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, label %bb.j

._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge: ; preds = %bb.i
  %.pre = load i8, ptr %.0.val, align 1, !noalias !10033
  br label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !10036, !noundef !5 ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24.thread

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24: ; preds = %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, %bb.j
  %i.bb = phi i8 [ %.pre, %._RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge ], [ %i.az, %bb.j ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av ; 3 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %bb.l, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25

bb.k:                                             ; preds = %.thread, %bb.m
  %.sroa.0.0 = phi i8 [ %i.co, %bb.m ], [ -1, %.thread ]
  ret i8 %.sroa.0.0

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25: ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = and i8 %i.bb, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = add nuw nsw i64 %i.av, 1
  %i.bi = icmp samesign ne i64 %i.bh, %.8.val
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i8, ptr %i.be, align 1, !noalias !10033, !noundef !5
  %i.bk = shl nuw nsw i32 %i.bg, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bo, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i28, label %bb.m

bb.l:                                             ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24
  %i.bp = zext nneg i8 %i.bb to i32
  br label %bb.m

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i28: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.br = add nuw nsw i64 %i.av, 2
  %i.bs = icmp samesign ne i64 %i.br, %.8.val
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %i.bq, align 1, !noalias !10033, !noundef !5
  %i.bu = shl nuw nsw i32 %i.bm, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bg, 12
  %i.bz = or disjoint i32 %i.bx, %i.by
  %i.ca = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.ca, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i29, label %bb.m

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i29: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 3
  %i.cc = add nuw nsw i64 %i.av, 3
  %i.cd = icmp samesign ne i64 %i.cc, %.8.val
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = load i8, ptr %i.cb, align 1, !noalias !10033, !noundef !5
  %i.cf = shl nuw nsw i32 %i.bg, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.bx, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %bb.m

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24.thread: ; preds = %bb.j
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i64 noundef %i.av, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182) #37
  unreachable

bb.m:                                             ; preds = %bb.l, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i29, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i28
  %.sroa.4.0.i26.ph = phi i32 [ %i.bz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i28 ], [ %i.cl, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i29 ], [ %i.bn, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i25 ], [ %i.bp, %bb.l ] ; 2 uses
  %i.cm = icmp samesign ult i32 %.sroa.4.0.i26.ph, 1114112
  tail call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs96hDHc8Uzvz_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, i32 noundef %.sroa.4.0.i26.ph)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = load i8, ptr %i.cn, align 4, !range !10039, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 16, 33) %2, ptr noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val15 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val16 = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.c = add i64 %.val16, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val15, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val15, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val15, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val15, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val15, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, %._crit_edge.loopexit
  %.pre-phi = phi i64 [ %i.x, %._crit_edge.loopexit ], [ 0, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ]
  %i.y = phi i64 [ %.pre, %._crit_edge.loopexit ], [ -1, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19 ] ; 2 uses
  %i.z = icmp ult i64 %i.y, 8
  %.sroa.04.0 = select i1 %i.z, i64 %i.y, i64 %.pre-phi
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = sub i64 %.sroa.04.0, %i.ab
  store i64 %i.ad, ptr %i.ac, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %._crit_edge.i, %bb.l
  %.sroa.0.06 = phi i64 [ %i.ae, %bb.l ], [ 0, %._crit_edge.i ] ; 10 uses
  %i.ae = add nuw i64 %.sroa.0.06, 1
  %i.af = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.06
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %.not = icmp eq i8 %i.ah, -128
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.lr.ph
  %.neg = xor i64 %.sroa.0.06, -1
  %.neg11 = mul i64 %2, %.neg
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %.neg11 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %i.aj = invoke noundef i64 %.40.val(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.0.06)
          to label %bb.f unwind label %bb.e       ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardQNtNtBG_3raw13RawTableInnerNCNvMsa_B1v_B1t_15rehash_in_place0EECsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
          to label %bb.n unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %.val14 = load i64, ptr %i.b, align 8, !noundef !5 ; 6 uses
  %.sroa.0.07.i = and i64 %.val14, %i.aj          ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !10040
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !377

._crit_edge.i17:                                  ; preds = %.lr.ph.i18, %bb.f
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.f ], [ %.sroa.0.0.i, %.lr.ph.i18 ]
  %.lcssa.i = phi i16 [ %i.an, %bb.f ], [ %i.be, %.lr.ph.i18 ]
  %i.ao = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = add i64 %.sroa.0.0.lcssa.i, %i.ap
  %i.ar = and i64 %i.aq, %.val14                  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noundef !5
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !252

bb.g:                                             ; preds = %._crit_edge.i17
  %.val2.i.i = load <16 x i8>, ptr %.val, align 16
  %i.av = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.aw = bitcast <16 x i1> %i.av to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.aw, 0
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aw, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i18:                                       ; preds = %bb.f, %.lr.ph.i18
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i18 ], [ %.sroa.0.07.i, %bb.f ]
  %i.az = phi i64 [ %i.ba, %.lr.ph.i18 ], [ 0, %bb.f ]
  %i.ba = add i64 %i.az, 16                       ; 2 uses
  %i.bb = add i64 %i.ba, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.bb, %.val14           ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !10040
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !379

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !169

bb.h:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.neg12 = xor i64 %.sroa.0.0.i5.i, -1
  %.neg13 = mul i64 %2, %.neg12
  %i.bj = getelementptr inbounds i8, ptr %.val, i64 %.neg13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !noundef !5
  %i.bm = lshr i64 %i.aj, 57
  %i.bn = trunc nuw nsw i64 %i.bm to i8           ; 2 uses
  %i.bo = add i64 %.sroa.0.0.i5.i, -16
  %i.bp = and i64 %i.bo, %.val14
  store i8 %i.bn, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bp
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  store i8 %i.bn, ptr %i.bs, align 1
  %i.bt = icmp eq i8 %i.bl, -1
  br i1 %i.bt, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %i.bu = lshr i64 %i.aj, 57
  %i.bv = trunc nuw nsw i64 %i.bu to i8           ; 2 uses
  %i.bw = add i64 %.sroa.0.06, -16
  %i.bx = and i64 %.val14, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.06
  store i8 %i.bv, ptr %i.by, align 1
  %i.bz = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ca = getelementptr i8, ptr %i.bz, i64 %i.bx
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  store i8 %i.bv, ptr %i.cb, align 1
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %.sroa.0.06, -16
  %i.cd = load i64, ptr %i.b, align 8, !noundef !5
  %i.ce = and i64 %i.cd, %i.cc
  %i.cf = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.sroa.0.06
  store i8 -1, ptr %i.cg, align 1
  %i.ch = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 16
  store i8 -1, ptr %i.cj, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  tail call fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
  br label %bb.d

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 0, -1) %1, i64 noundef range(i64 0, -1) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10043)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !10043, !noalias !10046, !noundef !5 ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10043, !noalias !10046, !noundef !5 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %bb.b
  %.sroa.3.0.i.i = phi i64 [ %i.c, %bb.b ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.b ], [ %i.t, %bb.f ] ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 230
  %i.e = load i16, ptr %i.d, align 2, !noalias !10048, !noundef !5 ; 4 uses
  %i.f = zext i16 %i.e to i64                     ; 5 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.h = icmp eq i16 %i.e, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i88, i64 16 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.8.0.i.i.i87, 1
  %i.k = icmp eq ptr %i.i, %i.g
  br i1 %i.k, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i._crit_edge, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %bb.c, %bb.d
  %.sroa.0.03.i.i.i88 = phi ptr [ %i.i, %bb.d ], [ %.sroa.0.0.i.i, %bb.c ] ; 3 uses
  %.sroa.8.0.i.i.i87 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.val7.i.i.i = load i64, ptr %.sroa.0.03.i.i.i88, align 8, !noalias !10048, !noundef !5 ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsdftwklc2oBO_7similar:bb.a
bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i
  %.sroa.09.0.i.i.i = phi i1 [ true, %bb.n ], [ true, %bb.m ], [ false, %bb.i ], [ false, %bb.l ]
  %.sroa.510.0.i.i.i = phi i64 [ 0, %bb.n ], [ %i.al, %bb.m ], [ %.sroa.4.0.i.ph.i.i, %bb.i ], [ %.sroa.4.0.i.ph.i.i, %bb.l ] ; 6 uses
  %.sroa.013.0.i.i.i = phi i64 [ 5, %bb.n ], [ 6, %bb.m ], [ 4, %bb.i ], [ %.sroa.4.0.i.ph.i.i, %bb.l ] ; 5 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10070
  %i.am = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10070 ; 9 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.p, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i, !prof !252

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #38, !noalias !10070
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i: ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  store ptr null, ptr %i.ao, align 8, !noalias !10070
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 230
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10074)
  %i.aq = load i16, ptr %i.x, align 2, !noalias !10077, !noundef !5
  %i.ar = zext i16 %i.aq to i64
  %i.as = xor i64 %.sroa.013.0.i.i.i, -1
  %i.at = add nsw i64 %i.ar, %i.as                ; 5 uses
  %i.au = trunc i64 %i.at to i16
  store i16 %i.au, ptr %i.ap, align 2, !alias.scope !10074, !noalias !10079
  %i.av = icmp ult i64 %i.at, 12
  br i1 %i.av, label %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i, label %bb.q, !prof !10080

bb.q:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.at, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #37
          to label %.noexc.i.i.i.i unwind label %bb.r, !noalias !10070

.noexc.i.i.i.i:                                   ; preds = %bb.q
  unreachable

common.resume.i.i:                                ; preds = %bb.at, %bb.r
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.aw, %bb.r ], [ %.pn.i.i.i.i, %bb.at ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef 232, i64 noundef 8) #36, !noalias !10070
  br label %common.resume.i.i

_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 184 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %.sroa.013.0.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !noalias !10077, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %.sroa.013.0.i.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !10077, !noundef !5 ; 2 uses
  %i.bd = load i64, ptr %i.ba, align 8, !noalias !10077, !noundef !5 ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.013.0.i.i.i, 1   ; 2 uses
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i.i, i64 %i.be
  %i.bg = shl nuw nsw i64 %i.at, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(232) %i.am, ptr nonnull readonly align 8 %i.bf, i64 %i.bg, i1 false), !alias.scope !10081, !noalias !10079
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.be
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 184
  %i.bj = shl nuw nsw i64 %i.at, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bi, ptr nonnull readonly align 4 %i.bh, i64 %i.bj, i1 false), !alias.scope !10085, !noalias !10079
  %i.bk = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.bk, ptr %i.x, align 2, !noalias !10077
  %spec.select41.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.am, ptr %.sroa.0.0.i.i ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i, i64 230 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !10089, !noundef !5 ; 2 uses
  %i.bn = zext i16 %i.bm to i64                   ; 2 uses
  %.not.i14.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.bn
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %spec.select41.i.i.i, i64 %.sroa.510.0.i.i.i ; 5 uses
  br i1 %.not.i14.not.i.i.i, label %bb.s, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar.exit.i15.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar.exit.i15.i.i.i: ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i
  store i64 %1, ptr %i.bo, align 8, !alias.scope !10093, !noalias !10089
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %2, ptr %i.bp, align 8, !alias.scope !10093, !noalias !10089
  br label %bb.t

bb.s:                                             ; preds = %_RINvMsV_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i
  %i.bq = add nuw nsw i64 %.sroa.510.0.i.i.i, 1   ; 2 uses
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %spec.select41.i.i.i, i64 %i.bq
  %i.bs = sub nuw nsw i64 %i.bn, %.sroa.510.0.i.i.i ; 2 uses
  %i.bt = shl nuw nsw i64 %i.bs, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.br, ptr nonnull align 8 %i.bo, i64 %i.bt, i1 false), !alias.scope !10093, !noalias !10089
  store i64 %1, ptr %i.bo, align 8, !alias.scope !10093, !noalias !10089
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %2, ptr %i.bu, align 8, !alias.scope !10093, !noalias !10089
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i, i64 184 ; 2 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.sroa.510.0.i.i.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bq
  %i.by = shl nuw nsw i64 %i.bs, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.bw, i64 %i.by, i1 false), !alias.scope !10096, !noalias !10089
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar.exit.i15.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %spec.select41.i.i.i, i64 184
  %i.ca = add i16 %i.bm, 1
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.sroa.510.0.i.i.i
  store i32 %3, ptr %i.cb, align 4, !alias.scope !10096, !noalias !10089
  store i16 %i.ca, ptr %i.bl, align 2, !noalias !10089
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 176
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !10099, !noundef !5 ; 2 uses
  %.not.i115.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i115.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.k, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertTjjEECsdftwklc2oBO_7similar.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 184
  %i.cf = add nuw nsw i16 %i.e, 1
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %.sroa.4.0.i.ph.i.i
  store i32 %3, ptr %i.cg, align 4, !alias.scope !10067, !noalias !10054
  store i16 %i.cf, ptr %i.x, align 2, !noalias !10054
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit

._crit_edge.i.i:                                  ; preds = %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i, %bb.t
  %.sroa.14.0.lcssa.i.i = phi i32 [ %i.az, %bb.t ], [ %i.gc, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ]
  %.sroa.13.0.lcssa.i.i = phi i64 [ %i.bc, %bb.t ], [ %i.gf, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ]
  %.sroa.11.0.lcssa.i.i = phi i64 [ %i.bd, %bb.t ], [ %i.gg, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ]
  %.sroa.9.0.lcssa.i.i = phi i64 [ 0, %bb.t ], [ %i.cy, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ]
  %.sroa.7.0.lcssa.i.i = phi ptr [ %i.am, %bb.t ], [ %i.fp, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10102)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10105
  %i.ch = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10105 ; 12 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.v, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i, !prof !252

bb.v:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #38
          to label %.noexc.i.i52.i.i unwind label %bb.z, !noalias !10105

.noexc.i.i52.i.i:                                 ; preds = %bb.v
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  store ptr null, ptr %i.cj, align 8, !noalias !10105
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 230 ; 2 uses
  store i16 0, ptr %i.ck, align 2, !noalias !10105
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 232
  store ptr %i.a, ptr %i.cl, align 8, !noalias !10105
  %i.cm = add i64 %i.c, 1                         ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.w, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjjEmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsdftwklc2oBO_7similar.exit.i.i.i, !prof !252

bb.w:                                             ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #38
          to label %bb.x unwind label %bb.y, !noalias !10105

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef 328, i64 noundef 8) #36, !noalias !10105
  br label %.body.i.i.i.i

bb.z:                                             ; preds = %bb.v
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.z, %bb.y
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjjEmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.ch, ptr %i.cp, align 8, !noalias !10108
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 228
  store i16 0, ptr %i.cq, align 4, !noalias !10113
  store ptr %i.ch, ptr %0, align 8, !alias.scope !10102, !noalias !10114
  store i64 %i.cm, ptr %i.b, align 8, !alias.scope !10102, !noalias !10114
  %i.cr = icmp eq i64 %.sroa.9.0.lcssa.i.i, %i.c
  br i1 %i.cr, label %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjjEmE12insert_entry0Csdftwklc2oBO_7similar.exit.i.i, label %bb.aa, !prof !169

bb.aa:                                            ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjjEmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsdftwklc2oBO_7similar.exit.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @184, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #37, !noalias !10114
  unreachable

_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjjEmE12insert_entry0Csdftwklc2oBO_7similar.exit.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedTjjEmNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsdftwklc2oBO_7similar.exit.i.i.i
  store i16 1, ptr %i.ck, align 2, !noalias !10114
  store i64 %.sroa.11.0.lcssa.i.i, ptr %i.ch, align 8, !noalias !10114
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i64 %.sroa.13.0.lcssa.i.i, ptr %i.cs, align 8, !noalias !10114
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 184
  store i32 %.sroa.14.0.lcssa.i.i, ptr %i.ct, align 8, !noalias !10114
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 240
  store ptr %.sroa.7.0.lcssa.i.i, ptr %i.cu, align 8, !noalias !10114
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i, i64 176
  store ptr %i.ch, ptr %i.cv, align 8, !noalias !10114
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa.i.i, i64 228
  store i16 1, ptr %i.cw, align 4, !noalias !10114
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit

.lr.ph.i.i:                                       ; preds = %bb.t, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i
  %i.cx = phi ptr [ %i.kq, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %i.cd, %bb.t ] ; 19 uses
  %.sroa.0.0122.i.i = phi ptr [ %i.cx, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %.sroa.0.0.i.i, %bb.t ]
  %.sroa.6.0121.i.i = phi i64 [ %i.cy, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ 0, %bb.t ]
  %.sroa.7.0120.i.i = phi ptr [ %i.fp, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %i.am, %bb.t ] ; 2 uses
  %.sroa.11.0118.i.i = phi i64 [ %i.gg, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %i.bd, %bb.t ] ; 4 uses
  %.sroa.13.0117.i.i = phi i64 [ %i.gf, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %i.bc, %bb.t ] ; 4 uses
  %.sroa.14.0116.i.i = phi i32 [ %i.gc, %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i ], [ %i.az, %bb.t ] ; 4 uses
  %i.cy = add nuw i64 %.sroa.6.0121.i.i, 1        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0122.i.i, i64 228
  %i.da = load i16, ptr %i.cz, align 4, !noalias !10099 ; 4 uses
  %i.db = zext i16 %i.da to i64                   ; 10 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 230 ; 4 uses
  %i.dd = load i16, ptr %i.dc, align 2, !noalias !10115, !noundef !5 ; 5 uses
  %i.de = icmp ult i16 %i.dd, 11
  br i1 %i.de, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i
  %i.df = icmp ult i16 %i.da, 5
  br i1 %i.df, label %bb.ah, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.i.i
  %i.dg = zext nneg i16 %i.dd to i64              ; 4 uses
  %i.dh = add nuw nsw i16 %i.dd, 1
  %i.di = add nuw nsw i64 %i.db, 1                ; 7 uses
  %.not.i.i55.not.i.i = icmp ult i16 %i.da, %i.dd
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.db ; 5 uses
  br i1 %.not.i.i55.not.i.i, label %bb.ad, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i.i.i.i: ; preds = %bb.ac
  store i64 %.sroa.11.0118.i.i, ptr %i.dj, align 8, !alias.scope !10119, !noalias !10122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.sroa.13.0117.i.i, ptr %i.dk, align 8, !alias.scope !10119, !noalias !10122
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 184
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.db
  store i32 %.sroa.14.0116.i.i, ptr %i.dm, align 4, !alias.scope !10125, !noalias !10122
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.di
  %i.do = sub nsw i64 %i.dg, %i.db                ; 3 uses
  %i.dp = shl nuw nsw i64 %i.do, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.dj, i64 %i.dp, i1 false), !alias.scope !10119, !noalias !10122
  store i64 %.sroa.11.0118.i.i, ptr %i.dj, align 8, !alias.scope !10119, !noalias !10122
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i64 %.sroa.13.0117.i.i, ptr %i.dq, align 8, !alias.scope !10119, !noalias !10122
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cx, i64 184 ; 2 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.db ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.di
  %i.du = shl nuw nsw i64 %i.do, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.dt, ptr nonnull align 4 %i.ds, i64 %i.du, i1 false), !alias.scope !10125, !noalias !10122
  store i32 %.sroa.14.0116.i.i, ptr %i.ds, align 4, !alias.scope !10125, !noalias !10122
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cx, i64 232 ; 2 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.di
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.db
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = shl nuw nsw i64 %i.do, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dw, i64 %i.dz, i1 false), !alias.scope !10128, !noalias !10122
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i.i.i.i: ; preds = %bb.ad, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 232 ; 6 uses
  %i.eb = add nuw nsw i64 %i.dg, 2                ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.di
  store ptr %.sroa.7.0120.i.i, ptr %i.ec, align 8, !alias.scope !10128, !noalias !10122
  store i16 %i.dh, ptr %i.dc, align 2, !noalias !10122
  %i.ed = icmp samesign ult i64 %i.di, %i.eb
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.preheader, label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i.i.i.i
  %i.ee = add nuw nsw i64 %i.dg, 1
  %i.ef = sub nsw i64 %i.ee, %i.db
  %i.eg = sub nsw i64 %i.dg, %i.db
  %xtraiter179 = and i64 %i.ef, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.eh, %.lr.ph.i.i.i.i.i.prol ], [ %i.di, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.eh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ei = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !10122, !nonnull !5, !noundef !5 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 176
  store ptr %i.cx, ptr %i.el, align 8, !noalias !10122
  %i.em = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 228
  store i16 %i.em, ptr %i.en, align 4, !noalias !10122
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !10131

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.preheader ], [ %i.eh, %.lr.ph.i.i.i.i.i.prol ]
  %i.eo = icmp ult i64 %i.eg, 3
  br i1 %i.eo, label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.sroa.0.06.i.i.i.i.i
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !10122, !nonnull !5, !noundef !5 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 176
  store ptr %i.cx, ptr %i.es, align 8, !noalias !10122
  %i.et = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 228
  store i16 %i.et, ptr %i.eu, align 4, !noalias !10122
  %i.ev = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ep
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !10122, !nonnull !5, !noundef !5 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 176
  store ptr %i.cx, ptr %i.ey, align 8, !noalias !10122
  %i.ez = trunc nuw nsw i64 %i.ep to i16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 228
  store i16 %i.ez, ptr %i.fa, align 4, !noalias !10122
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.ev
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !10122, !nonnull !5, !noundef !5 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 176
  store ptr %i.cx, ptr %i.fe, align 8, !noalias !10122
  %i.ff = trunc nuw nsw i64 %i.ev to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 228
  store i16 %i.ff, ptr %i.fg, align 4, !noalias !10122
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.fi = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.fb
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !10122, !nonnull !5, !noundef !5 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 176
  store ptr %i.cx, ptr %i.fl, align 8, !noalias !10122
  %i.fm = trunc nuw nsw i64 %i.fb to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 228
  store i16 %i.fm, ptr %i.fn, align 4, !noalias !10122
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fh, %i.eb
  br i1 %exitcond.not.i.i.i.i.i.3, label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit, label %.lr.ph.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ab
  switch i16 %i.da, label %bb.af [
    i16 5, label %bb.ah
    i16 6, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fo = add nsw i64 %i.db, -7
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ab
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.ag ], [ 6, %bb.af ], [ 4, %bb.ab ], [ 5, %bb.ae ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.fo, %bb.af ], [ %i.db, %bb.ab ], [ 5, %bb.ae ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.ag ], [ true, %bb.af ], [ false, %bb.ab ], [ false, %bb.ae ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10132
  %i.fp = tail call noalias noundef align 8 dereferenceable_or_null(328) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 328, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10132 ; 15 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.ai, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i, !prof !252

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 328) #38, !noalias !10132
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i: ; preds = %bb.ah
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 176
  store ptr null, ptr %i.fr, align 8, !noalias !10132
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 230 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10136)
  %i.ft = load i16, ptr %i.dc, align 2, !noalias !10139, !noundef !5
  %i.fu = zext i16 %i.ft to i64
  %i.fv = xor i64 %.sroa.06.0.i.i.i, -1
  %i.fw = add nsw i64 %i.fu, %i.fv                ; 5 uses
  %i.fx = trunc i64 %i.fw to i16
  store i16 %i.fx, ptr %i.fs, align 2, !alias.scope !10136, !noalias !10141
  %i.fy = icmp ult i64 %i.fw, 12
  br i1 %i.fy, label %bb.al, label %bb.aj, !prof !10080

bb.aj:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fw, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @183) #37
          to label %.noexc.i.i53.i.i unwind label %bb.ak, !noalias !10132

.noexc.i.i53.i.i:                                 ; preds = %bb.aj
  unreachable

bb.ak:                                            ; preds = %bb.aj
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.al:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeTjjEmEE13new_uninit_inCsdftwklc2oBO_7similar.exit.i.i.i.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cx, i64 184 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.sroa.06.0.i.i.i
  %i.gc = load i32, ptr %i.gb, align 4, !noalias !10139, !noundef !5 ; 2 uses
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %.sroa.06.0.i.i.i ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !10139, !noundef !5 ; 2 uses
  %i.gg = load i64, ptr %i.gd, align 8, !noalias !10139, !noundef !5 ; 2 uses
  %i.gh = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %i.gh
  %i.gj = shl nuw nsw i64 %i.fw, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(232) %i.fp, ptr nonnull readonly align 8 %i.gi, i64 %i.gj, i1 false), !alias.scope !10142, !noalias !10141
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gh
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fp, i64 184
  %i.gm = shl nuw nsw i64 %i.fw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gl, ptr nonnull readonly align 4 %i.gk, i64 %i.gm, i1 false), !alias.scope !10146, !noalias !10141
  %i.gn = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.gn, ptr %i.dc, align 2, !noalias !10139
  %i.go = load i16, ptr %i.fs, align 2, !noalias !10132, !noundef !5 ; 3 uses
  %i.gp = zext i16 %i.go to i64
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 5 uses
  %i.gr = icmp ult i16 %i.go, 12
  br i1 %i.gr, label %bb.am, label %bb.ao, !prof !10080

bb.am:                                            ; preds = %bb.al
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fp, i64 232 ; 6 uses
  %i.gt = zext i16 %i.dd to i64
  %i.gu = sub nuw nsw i64 %i.gt, %.sroa.06.0.i.i.i
  %i.gv = icmp eq i64 %i.gu, %i.gq
  br i1 %i.gv, label %bb.aq, label %bb.an, !prof !169

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #37
          to label %.noexc7.i.i.i.i unwind label %bb.ap, !noalias !10132

.noexc7.i.i.i.i:                                  ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.al
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gq, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #38
          to label %bb.as unwind label %bb.ap, !noalias !10132

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.am
  %i.gx = getelementptr i8, ptr %i.cx, i64 240
  %i.gy = getelementptr [8 x i8], ptr %i.gx, i64 %.sroa.06.0.i.i.i
  %i.gz = shl nuw nsw i64 %i.gq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gy, i64 %i.gz, i1 false), !alias.scope !10150, !noalias !10132
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10154)
  %xtraiter = and i64 %i.gq, 3                    ; 3 uses
  %i.ha = icmp ult i16 %i.go, 3
  br i1 %i.ha, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.aq
  %unroll_iter = and i64 %i.gq, 28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %.new
  %.sroa.0.09.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.ht, %bb.ar ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ar ]
  %i.hb = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.0.09.i.i.i.i.i.i
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !10154, !noalias !10157, !nonnull !5, !noundef !5 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 176
  store ptr %i.fp, ptr %i.he, align 8, !noalias !10160
  %i.hf = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i to i16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 228
  store i16 %i.hf, ptr %i.hg, align 4, !noalias !10157
  %i.hh = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 2 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hb
  %i.hj = load ptr, ptr %i.hi, align 8, !alias.scope !10154, !noalias !10157, !nonnull !5, !noundef !5 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 176
  store ptr %i.fp, ptr %i.hk, align 8, !noalias !10160
  %i.hl = trunc nuw nsw i64 %i.hb to i16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 228
  store i16 %i.hl, ptr %i.hm, align 4, !noalias !10157
  %i.hn = or disjoint i64 %.sroa.0.09.i.i.i.i.i.i, 3 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hh
  %i.hp = load ptr, ptr %i.ho, align 8, !alias.scope !10154, !noalias !10157, !nonnull !5, !noundef !5 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 176
  store ptr %i.fp, ptr %i.hq, align 8, !noalias !10160
  %i.hr = trunc nuw nsw i64 %i.hh to i16
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 228
  store i16 %i.hr, ptr %i.hs, align 4, !noalias !10157
  %i.ht = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i, 4 ; 2 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.hn
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !10154, !noalias !10157, !nonnull !5, !noundef !5 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 176
  store ptr %i.fp, ptr %i.hw, align 8, !noalias !10160
  %i.hx = trunc nuw nsw i64 %i.hn to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 228
  store i16 %i.hx, ptr %i.hy, align 4, !noalias !10157
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i.unr-lcssa, label %bb.ar

bb.as:                                            ; preds = %bb.ao
  unreachable

bb.at:                                            ; preds = %bb.ap, %bb.ak
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.gw, %bb.ap ], [ %i.fz, %bb.ak ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef 328, i64 noundef 8) #36, !noalias !10132
  br label %common.resume.i.i

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i.unr-lcssa: ; preds = %bb.ar
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i.unr-lcssa, %bb.aq
  %.sroa.0.09.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.aq ], [ %i.ht, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.epil.preheader
  %.sroa.0.09.i.i.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.hz, %bb.au ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.au ]
  %i.hz = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil, 1
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.sroa.0.09.i.i.i.i.i.i.epil
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !10154, !noalias !10157, !nonnull !5, !noundef !5 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 176
  store ptr %i.fp, ptr %i.ic, align 8, !noalias !10160
  %i.id = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.i.i.epil to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 228
  store i16 %i.id, ptr %i.ie, align 4, !noalias !10157
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i, label %bb.au, !llvm.loop !10161

_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %bb.au, %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i.unr-lcssa
  %spec.select.i54.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.fp, ptr %i.cx ; 12 uses
  %i.if = getelementptr inbounds nuw i8, ptr %spec.select.i54.i.i, i64 230 ; 2 uses
  %i.ig = load i16, ptr %i.if, align 2, !noalias !10162, !noundef !5 ; 2 uses
  %i.ih = zext i16 %i.ig to i64                   ; 5 uses
  %i.ii = add i16 %i.ig, 1
  %i.ij = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i8.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.ih
  %i.ik = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i54.i.i, i64 %.sroa.5.0.i.i.i ; 5 uses
  br i1 %.not.i8.not.i.i.i, label %bb.av, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i9.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i9.i.i.i: ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i
  store i64 %.sroa.11.0118.i.i, ptr %i.ik, align 8, !alias.scope !10165, !noalias !10162
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %.sroa.13.0117.i.i, ptr %i.il, align 8, !alias.scope !10165, !noalias !10162
  %i.im = getelementptr inbounds nuw i8, ptr %spec.select.i54.i.i, i64 184
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %.sroa.5.0.i.i.i
  store i32 %.sroa.14.0116.i.i, ptr %i.in, align 4, !alias.scope !10168, !noalias !10162
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i10.i.i.i

bb.av:                                            ; preds = %_RINvMsW_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i.i
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i54.i.i, i64 %i.ij
  %i.ip = sub nuw nsw i64 %i.ih, %.sroa.5.0.i.i.i ; 3 uses
  %i.iq = shl nuw nsw i64 %i.ip, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.io, ptr nonnull align 8 %i.ik, i64 %i.iq, i1 false), !alias.scope !10165, !noalias !10162
  store i64 %.sroa.11.0118.i.i, ptr %i.ik, align 8, !alias.scope !10165, !noalias !10162
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  store i64 %.sroa.13.0117.i.i, ptr %i.ir, align 8, !alias.scope !10165, !noalias !10162
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i54.i.i, i64 184 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %i.ij
  %i.iv = shl nuw nsw i64 %i.ip, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr nonnull align 4 %i.it, i64 %i.iv, i1 false), !alias.scope !10168, !noalias !10162
  store i32 %.sroa.14.0116.i.i, ptr %i.it, align 4, !alias.scope !10168, !noalias !10162
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i54.i.i, i64 232 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ij
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = shl nuw nsw i64 %i.ip, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr nonnull align 8 %i.ix, i64 %i.ja, i1 false), !alias.scope !10171, !noalias !10162
  br label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i10.i.i.i

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i10.i.i.i: ; preds = %bb.av, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertmECsdftwklc2oBO_7similar.exit.i9.i.i.i
  %i.jb = getelementptr inbounds nuw i8, ptr %spec.select.i54.i.i, i64 232 ; 6 uses
  %i.jc = add nuw nsw i64 %i.ih, 2                ; 2 uses
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.ij
  store ptr %.sroa.7.0120.i.i, ptr %i.jd, align 8, !alias.scope !10171, !noalias !10162
  store i16 %i.ii, ptr %i.if, align 2, !noalias !10162
  %i.je = icmp samesign ult i64 %i.ij, %i.jc
  br i1 %i.je, label %.lr.ph.i.i11.i.i.i.preheader, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i10.i.i.i
  %i.jf = add nuw nsw i64 %i.ih, 1
  %i.jg = sub nsw i64 %i.jf, %.sroa.5.0.i.i.i
  %i.jh = sub nsw i64 %i.ih, %.sroa.5.0.i.i.i
  %xtraiter177 = and i64 %i.jg, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.ji, %.lr.ph.i.i11.i.i.i.prol ], [ %i.ij, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.ji = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.jj = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.jj)
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.jl = load ptr, ptr %i.jk, align 8, !noalias !10162, !nonnull !5, !noundef !5 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 176
  store ptr %spec.select.i54.i.i, ptr %i.jm, align 8, !noalias !10162
  %i.jn = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jl, i64 228
  store i16 %i.jn, ptr %i.jo, align 4, !noalias !10162
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter177
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !10174

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.ij, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.ji, %.lr.ph.i.i11.i.i.i.prol ]
  %i.jp = icmp ult i64 %i.jh, 3
  br i1 %i.jp, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.ki, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.jq = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %.sroa.0.06.i.i12.i.i.i
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !10162, !nonnull !5, !noundef !5 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 176
  store ptr %spec.select.i54.i.i, ptr %i.jt, align 8, !noalias !10162
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 228
  store i16 %i.ju, ptr %i.jv, align 4, !noalias !10162
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jq
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !10162, !nonnull !5, !noundef !5 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 176
  store ptr %spec.select.i54.i.i, ptr %i.jz, align 8, !noalias !10162
  %i.ka = trunc nuw nsw i64 %i.jq to i16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 228
  store i16 %i.ka, ptr %i.kb, align 4, !noalias !10162
  %i.kc = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jw
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !10162, !nonnull !5, !noundef !5 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 176
  store ptr %spec.select.i54.i.i, ptr %i.kf, align 8, !noalias !10162
  %i.kg = trunc nuw nsw i64 %i.jw to i16
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ke, i64 228
  store i16 %i.kg, ptr %i.kh, align 4, !noalias !10162
  %i.ki = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.kj = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kj)
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.kc
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !10162, !nonnull !5, !noundef !5 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 176
  store ptr %spec.select.i54.i.i, ptr %i.km, align 8, !noalias !10162
  %i.kn = trunc nuw nsw i64 %i.kc to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 228
  store i16 %i.kn, ptr %i.ko, align 4, !noalias !10162
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.ki, %i.jc
  br i1 %exitcond.not.i.i13.i.i.i.3, label %_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i, label %.lr.ph.i.i11.i.i.i

_RINvMsM_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTjjEmNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsdftwklc2oBO_7similar.exit.i.i: ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i10.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cx, i64 176
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !10099, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.thread:                                          ; preds = %bb.a
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !10175
  %i.kr = tail call noalias noundef align 8 dereferenceable_or_null(232) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10175 ; 7 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.aw, label %_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB19_4LeafE16push_with_handleCsdftwklc2oBO_7similar.exit.i, !prof !252

bb.aw:                                            ; preds = %.thread
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 232) #38, !noalias !10175
  unreachable

_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB19_4LeafE16push_with_handleCsdftwklc2oBO_7similar.exit.i: ; preds = %.thread
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kr, i64 176
  store ptr null, ptr %i.kt, align 8, !noalias !10175
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 230
  store ptr %i.kr, ptr %0, align 8, !noalias !10175
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.kv, align 8, !noalias !10175
  store i16 1, ptr %i.ku, align 2, !noalias !10176
  store i64 %1, ptr %i.kr, align 8, !noalias !10176
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store i64 %2, ptr %i.kw, align 8, !noalias !10176
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 184
  store i32 %3, ptr %i.kx, align 8, !noalias !10176
  br label %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit

_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.u, %_RNCNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB7_11VacantEntryTjjEmE12insert_entry0Csdftwklc2oBO_7similar.exit.i.i, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node12slice_insertINtNtNtCsj6eKBz9Db1c_4core3ptr8non_null7NonNullINtB2_8LeafNodeTjjEmEEECsdftwklc2oBO_7similar.exit.i.i.i.i, %_RNvMsu_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTjjEmNtB19_4LeafE16push_with_handleCsdftwklc2oBO_7similar.exit.i
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !noalias !10175, !noundef !5
  %i.la = add i64 %i.kz, 1
  store i64 %i.la, ptr %i.ky, align 8, !noalias !10175
  br label %bb.ax

bb.ax:                                            ; preds = %bb.g, %_RNvMs4_NtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map5entryINtB5_11VacantEntryTjjEmE12insert_entryCsdftwklc2oBO_7similar.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjjEmE10dying_nextCsdftwklc2oBO_7similar(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_7
