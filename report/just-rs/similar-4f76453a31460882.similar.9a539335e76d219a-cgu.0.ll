Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/similar-4f76453a31460882.similar.9a539335e76d219a-cgu.0?download=true
inline.NumInlined: 3444
inline.NumDeleted: 939
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms4hunt12hunt_anchorsINtNtB4_5utils12OffsetLookupjEEB6_:bb.a
  br i1 %i.ah, label %.split156.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us

.split.us:                                        ; preds = %.noexc72.us
  %i.ai = extractvalue { i64, i32 } %i.ae, 1      ; 2 uses
  %i.aj = icmp ult i32 %i.ai, 1000000000
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = icmp samesign ugt i32 %i.ai, %6
  br i1 %i.ak, label %.split156.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us: ; preds = %.split.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us
  %i.al = sub i64 %.sroa.026.0151.us, %i.m
  %i.am = icmp ult i64 %i.al, %i.o
  br i1 %i.am, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread.us, label %.split158.us

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread.us: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  %exitcond205.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond205.not, label %.thread, label %.lr.ph153.split.us.split

.loopexit.split-lp100.loopexit.split.us:          ; preds = %.lr.ph153.split.us.split
  %lpad.loopexit105.us = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit

.thread:                                          ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread.us, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread.us.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.g

._crit_edge154:                                   ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = icmp ult i64 %i.gy, 1152921504606846976
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = shl nuw nsw i64 %i.gy, 4                ; 2 uses
  %.not.i = icmp samesign ugt i64 %i.gy, 576460752303423487
  br i1 %.not.i, label %bb.f, label %bb.b, !prof !2697

bb.b:                                             ; preds = %._crit_edge154
  %i.ap = icmp eq i64 %i.gy, 0
  br i1 %i.ap, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2698
  %i.aq = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !2698 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.f, label %bb.h

.lr.ph153.split:                                  ; preds = %.lr.ph153, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread
  %i.as = phi ptr [ %i.gw, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 3 uses
  %i.at = phi ptr [ %i.gx, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 5 uses
  %i.au = phi i64 [ %i.gy, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ 0, %.lr.ph153 ] ; 3 uses
  %i.av = phi ptr [ %i.gz, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread ], [ inttoptr (i64 8 to ptr), %.lr.ph153 ] ; 3 uses
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
  %.ph241 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.gx, %bb.b ]
  store i64 0, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  store i64 %i.gy, ptr %i.a, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.aq, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.bi, align 8
  %i.bj = getelementptr [8 x i8], ptr %i.gx, i64 %i.gy
  %i.bk = getelementptr i8, ptr %i.bj, i64 -8
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !5
  %i.bm = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.bn = load ptr, ptr %i.i, align 8, !nonnull !5 ; 2 uses
  br label %bb.k

bb.i:                                             ; preds = %.split156.us, %bb.g
  %.val54 = phi ptr [ %.val54211, %.split156.us ], [ %.ph241, %bb.g ]
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
  %i.bw = load i64, ptr %i.bt, align 8, !range !7, !noundef !5
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.by = load i64, ptr %i.bx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  %i.bz = load i64, ptr %i.a, align 8, !range !6, !alias.scope !2699, !noundef !5
  %i.ca = icmp eq i64 %i.br, %i.bz
  br i1 %i.ca, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #34
          to label %._crit_edge208 unwind label %.loopexit

._crit_edge208:                                   ; preds = %bb.m
  %.pre209 = load ptr, ptr %i.bh, align 8, !alias.scope !2699
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
  store <2 x i64> %i.bv, ptr %i.ce, align 8, !noalias !2699
  %i.cf = add i64 %i.br, 1                        ; 4 uses
  store i64 %i.cf, ptr %i.bi, align 8, !alias.scope !2699
  %i.cg = trunc nuw i64 %i.bw to i1
  br i1 %i.cg, label %bb.k, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = lshr i64 %i.cf, 1                       ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2700)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2701)
  %.not.i75 = icmp eq i64 %i.ch, 0
  br i1 %.not.i75, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i: ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cf ; 3 uses
  %i.cj = icmp eq i64 %i.ch, 1
  br i1 %i.cj, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i
  %unroll_iter = and i64 %i.ch, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i.new
  %.sroa.0.016.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i.new ], [ %i.ct, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i ]
  %i.ck = xor i64 %.sroa.0.016.i, -1
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i ; 2 uses
  %i.cm = getelementptr [16 x i8], ptr %i.ci, i64 %i.ck ; 2 uses
  %i.cn = load <2 x i64>, ptr %i.cl, align 8, !alias.scope !2700, !noalias !2701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !2702
  store <2 x i64> %i.cn, ptr %i.cm, align 8, !alias.scope !2701, !noalias !2700
  %i.co = xor i64 %.sroa.0.016.i, -2
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = getelementptr [16 x i8], ptr %i.ci, i64 %i.co ; 2 uses
  %i.cs = load <2 x i64>, ptr %i.cq, align 8, !alias.scope !2700, !noalias !2701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cr, i64 16, i1 false), !alias.scope !2702
  store <2 x i64> %i.cs, ptr %i.cr, align 8, !alias.scope !2701, !noalias !2700
  %i.ct = add nuw nsw i64 %.sroa.0.016.i, 2       ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i
  %7 = trunc i64 %i.ch to i1
  br i1 %7, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader: ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i
  %.sroa.0.016.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.preheader.i ], [ %i.ct, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod394 = trunc i64 %i.ch to i1
  tail call void @llvm.assume(i1 %lcmp.mod394)
  %i.cu = xor i64 %.sroa.0.016.i.epil.init, -1
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.sroa.0.016.i.epil.init ; 2 uses
  %i.cw = getelementptr [16 x i8], ptr %i.ci, i64 %i.cu ; 2 uses
  %i.cx = load <2 x i64>, ptr %i.cv, align 8, !alias.scope !2700, !noalias !2701
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !alias.scope !2702
  store <2 x i64> %i.cx, ptr %i.cw, align 8, !alias.scope !2701, !noalias !2700
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTjjE12split_at_mutCsdftwklc2oBO_7similar.exit11.i.epil.preheader, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit.loopexit.unr-lcssa, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val63 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.cy = icmp eq i64 %.val63, 0
  br i1 %i.cy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76, label %bb.t

bb.t:                                             ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit
  %i.cz = shl nuw i64 %.val63, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTjjEEECsdftwklc2oBO_7similar.exit
  %.val61 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.da = icmp eq i64 %.val61, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit
  %.val62 = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5
  %i.db = shl nuw i64 %.val61, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %i.db, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76: ; preds = %bb.t, %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapTjjEECsdftwklc2oBO_7similar.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val59 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.dc = icmp eq i64 %.val59, 0
  br i1 %i.dc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76
  %i.dd = shl nuw i64 %.val59, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gx, i64 noundef %i.dd, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit: ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit
  %.val57 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.de = icmp eq i64 %.val57, 0
  br i1 %i.de, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit78, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit
  %.val58 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.df = shl nuw i64 %.val57, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit78

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdftwklc2oBO_7similar10algorithms4hunt9CandidateEEB1e_.exit76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.val55 = load i64, ptr %i.d, align 8           ; 2 uses
  %i.dg = icmp eq i64 %.val55, 0
  br i1 %i.dg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85
  %.val55.sink = phi i64 [ %.val, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85 ], [ %.val55, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77 ]
  %.val56 = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.dh = shl nuw i64 %.val55.sink, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %i.dh, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit86.sink.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit77, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsdftwklc2oBO_7similar.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %.noexc72
  %i.di = icmp sgt i64 %i.ay, %5
  br i1 %i.di, label %.split156.us, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread: ; preds = %.lr.ph153.split, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit
  %i.dj = sub i64 %.sroa.026.0151, %i.m           ; 3 uses
  %i.dk = icmp ult i64 %i.dj, %i.o
  br i1 %i.dk, label %bb.x, label %.split158.us

.split158.us:                                     ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us
  %.us-phi159 = phi i64 [ %umax, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us ], [ %i.aa, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.us.us ], [ %i.dj, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.us-phi159, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #37
          to label %.noexc unwind label %.loopexit.split-lp100.loopexit.split-lp

.noexc:                                           ; preds = %.split158.us
  unreachable

.split156.us:                                     ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us, %.split.us
  %.val54211 = phi ptr [ inttoptr (i64 8 to ptr), %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.us ], [ inttoptr (i64 8 to ptr), %.split.us ], [ %i.at, %.split ], [ %i.at, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ]
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.x:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.dj ; 2 uses
  %i.dm = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRjECsdftwklc2oBO_7similar(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl), !noalias !2703 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %i.dn = lshr i64 %i.dm, 57
  %i.do = trunc nuw nsw i64 %i.dn to i8
  %i.dp = insertelement <16 x i8> poison, i8 %i.do, i64 0
  %i.dq = shufflevector <16 x i8> %i.dp, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i = load i64, ptr %i.dl, align 8, !alias.scope !2705, !noalias !2706
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.x ], [ %i.eh, %bb.aa ]
  %.pn.i.i = phi i64 [ %i.dm, %bb.x ], [ %i.ei, %bb.aa ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.x      ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dr, align 1, !noalias !2707 ; 2 uses
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dq
  %i.dt = bitcast <16 x i1> %i.ds to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dt, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.y, %bb.z
  %.sroa.06.0.i31.i.i = phi i16 [ %i.eg, %bb.z ], [ %i.dt, %bb.y ] ; 3 uses
  %i.du = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dv = zext nneg i16 %i.du to i64
  %i.dw = add i64 %.sroa.01.0.i.i.i, %i.dv
  %i.dx = and i64 %i.dw, %i.x
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds [32 x i8], ptr %i.y, i64 %i.dy ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -32
  %.val2.i.i.i = load i64, ptr %i.ea, align 8, !noalias !2708, !noundef !5
  %i.eb = icmp eq i64 %.val.i.i.i.i, %.val2.i.i.i
  br i1 %i.eb, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit, label %bb.z, !prof !11

._crit_edge.i.i:                                  ; preds = %bb.z, %bb.y
  %i.ec = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ed = bitcast <16 x i1> %i.ec to i16
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %bb.aa, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, !prof !13

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.ef = add i16 %.sroa.06.0.i31.i.i, -1
  %i.eg = and i16 %i.ef, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.eg, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.aa:                                            ; preds = %._crit_edge.i.i
  %i.eh = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ei = add i64 %.sroa.01.0.i.i.i, %i.eh
  br label %bb.y

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit: ; preds = %.lr.ph.i.i
  %i.ej = getelementptr inbounds i8, ptr %i.dz, i64 -16
  %i.ek = load ptr, ptr %i.ej, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %i.dz, i64 -8
  %i.em = load i64, ptr %i.el, align 8, !noundef !5 ; 2 uses
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit.thread, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMapjINtNtCs4wP2HXfJTCR_5alloc3vec3VecjENtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE3getjECsdftwklc2oBO_7similar.exit
  %.idx = shl nuw nsw i64 %i.em, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 %.idx
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %.lr.ph150.preheader, %bb.ad
  %i.ep = phi ptr [ %i.fg, %bb.ad ], [ %i.as, %.lr.ph150.preheader ] ; 3 uses
  %i.eq = phi ptr [ %i.fh, %bb.ad ], [ %i.at, %.lr.ph150.preheader ] ; 2 uses
  %i.er = phi i64 [ %i.fi, %bb.ad ], [ %i.au, %.lr.ph150.preheader ] ; 3 uses
  %i.es = phi ptr [ %i.fj, %bb.ad ], [ %i.av, %.lr.ph150.preheader ] ; 5 uses
  %.sroa.4.0149 = phi ptr [ %i.et, %bb.ad ], [ %i.eo, %.lr.ph150.preheader ]
  %i.et = getelementptr inbounds i8, ptr %.sroa.4.0149, i64 -8 ; 3 uses
  %i.eu = load i64, ptr %i.et, align 8, !noundef !5 ; 5 uses
  %i.ev = load i64, ptr %i.f, align 8, !noundef !5 ; 13 uses
  %.not164 = icmp eq i64 %i.ev, 0
  br i1 %.not164, label %.thread251, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ap
  %i.ew = icmp ult i64 %i.ev, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i64 %.sroa.07.1, %i.ev          ; 2 uses
  br i1 %i.ex, label %.thread255, label %bb.ab

.lr.ph:                                           ; preds = %.lr.ph150, %bb.ap
  %.sroa.07.0148 = phi i64 [ %.sroa.07.1, %bb.ap ], [ 0, %.lr.ph150 ] ; 3 uses
  %.sroa.030.0147 = phi i64 [ %.sroa.030.1, %bb.ap ], [ %i.ev, %.lr.ph150 ] ; 2 uses
  %i.ey = sub nuw i64 %.sroa.030.0147, %.sroa.07.0148
  %i.ez = lshr i64 %i.ey, 1
  %i.fa = add i64 %i.ez, %.sroa.07.0148           ; 5 uses
  %i.fb = icmp ult i64 %i.fa, %i.ev
  br i1 %i.fb, label %bb.ap, label %.invoke

bb.ab:                                            ; preds = %._crit_edge
  %i.fc = icmp ult i64 %.sroa.07.1, %i.ev
  br i1 %i.fc, label %bb.ac, label %.invoke

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.sroa.07.1
  %i.fe = load i64, ptr %i.fd, align 8, !noundef !5
  %i.ff = icmp ult i64 %i.eu, %i.fe
  br i1 %i.ff, label %bb.ae, label %bb.ad

end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers13diff_deadlineINtNtB4_5utils12OffsetLookupjEBZ_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2m_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2968)
  %i.at = getelementptr inbounds nuw i8, ptr %.val6, i64 136 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2968, !noalias !2969, !noundef !5 ; 4 uses
  %i.av = load i64, ptr %i.as, align 8, !range !6, !alias.scope !2968, !noalias !2969, !noundef !5
  %i.aw = icmp eq i64 %i.au, %i.av
  br i1 %i.aw, label %bb.k, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #34, !noalias !2969
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i: ; preds = %bb.k, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %.val6, i64 128 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !2968, !noalias !2969, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %i.au ; 4 uses
  store i64 1, ptr %i.az, align 8, !noalias !2970
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2970
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %.sroa.04.0.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2970
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store i64 %5, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2970
  %i.ba = add i64 %i.au, 1                        ; 3 uses
  store i64 %i.ba, ptr %i.at, align 8, !alias.scope !2968, !noalias !2969
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  %i.bb = load i64, ptr %i.as, align 8, !range !6, !alias.scope !2971, !noalias !2972, !noundef !5
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.l, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.as) #34, !noalias !2972
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutBJ_.exit.i, %bb.l
  %i.bd = load ptr, ptr %i.ax, align 8, !alias.scope !2971, !noalias !2972, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw [40 x i8], ptr %i.bd, i64 %i.ba ; 4 uses
  store i64 2, ptr %i.be, align 8, !noalias !2973
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 %2, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !2973
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %5, ptr %.sroa.56.0..sroa_idx.i, align 8, !noalias !2973
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store i64 %.sroa.011.0.i, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !2973
  %i.bf = add i64 %i.au, 2
  store i64 %i.bf, ptr %i.at, align 8, !alias.scope !2971, !noalias !2972
  br label %bb.aa

bb.m:                                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.thread.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit24.i, %bb.i, %bb.c, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, %.split.i
  %.sroa.0.0.i7 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0.i = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.bg = add i64 %.sroa.05.0.i, %.sroa.0.0.i7    ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %.sroa.011.0.i8 = sub nuw i64 %i.bg, %i.bh
  %i.bi = add nuw i64 %.sroa.011.0.i8, 1          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2975)
  %i.bj = shl i64 %i.bi, 1                        ; 6 uses
  %i.bk = shl i64 %i.bi, 4                        ; 6 uses
  %i.bl = icmp ugt i64 %i.bj, 2305843009213693951
  %.not.i5.i.i.i = icmp ugt i64 %i.bk, 9223372036854775800
  %or.cond.i.i.i.i = or i1 %i.bl, %.not.i5.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.p, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bk, 0
  br i1 %i.bm, label %.thread.i9, label %bb.o

.thread.i9:                                       ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bi, ptr %i.bn, align 8, !alias.scope !2975, !noalias !2974
  store i64 0, ptr %i.b, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.4.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.5.0..sroa_idx.i38.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i38.i, align 8, !alias.scope !2975, !noalias !2974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2974
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2976
  %i.bo = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2976 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.o ], [ 0, %bb.m ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.bk) #38, !noalias !2977
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.bi, ptr %i.bq, align 8, !alias.scope !2975, !noalias !2974
  store i64 %i.bj, ptr %i.b, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.bo, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2975, !noalias !2974
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2975, !noalias !2974
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2974
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !2979
  %i.br = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.bk, i64 noundef range(i64 1, 9) 8) #36, !noalias !2979 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bk) #38
          to label %.noexc.i unwind label %bb.t, !noalias !2974

.noexc.i:                                         ; preds = %bb.r
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i: ; preds = %bb.w, %bb.v, %bb.t
  %.sroa.4.0..sroa_idx.i39.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i, %bb.t ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.v ], [ %.sroa.4.0..sroa_idx.i40.i, %bb.w ]
  %.pn.i = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.bx, %bb.v ], [ %i.bx, %bb.w ]
  %.val22.i = load i64, ptr %i.b, align 8, !noalias !2974 ; 2 uses
  %i.bt = icmp eq i64 %.val22.i, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  %.val23.i = load ptr, ptr %.sroa.4.0..sroa_idx.i39.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.bu = shl nuw i64 %.val22.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.u:                                             ; preds = %bb.q, %.thread.i9
  %.sroa.4.0..sroa_idx.i40.i = phi ptr [ %.sroa.4.0..sroa_idx.i37.i, %.thread.i9 ], [ %.sroa.4.0..sroa_idx.i.i, %bb.q ] ; 3 uses
  %.sroa.4.0.i.i26.i = phi i64 [ 0, %.thread.i9 ], [ %i.bj, %bb.q ]
  %.sroa.10.0.i.i27.i = phi ptr [ inttoptr (i64 8 to ptr), %.thread.i9 ], [ %i.br, %bb.q ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bi, ptr %i.bw, align 8, !alias.scope !2978, !noalias !2974
  store i64 %.sroa.4.0.i.i26.i, ptr %i.a, align 8, !alias.scope !2978, !noalias !2974
  %.sroa.4.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i27.i, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !alias.scope !2978, !noalias !2974
  %.sroa.5.0..sroa_idx.i29.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.bj, ptr %.sroa.5.0..sroa_idx.i29.i, align 8, !alias.scope !2978, !noalias !2974
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupjEBS_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2f_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20.i = load i64, ptr %i.a, align 8, !noalias !2974 ; 2 uses
  %i.by = icmp eq i64 %.val20.i, 0
  br i1 %i.by, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val21.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.bz = shl nuw i64 %.val20.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i

bb.x:                                             ; preds = %bb.u
  %.val18.i = load i64, ptr %i.a, align 8, !noalias !2974 ; 2 uses
  %i.ca = icmp eq i64 %.val18.i, 0
  br i1 %i.ca, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val19.i = load ptr, ptr %.sroa.4.0..sroa_idx.i28.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.cb = shl nuw i64 %.val18.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19.i, i64 noundef %i.cb, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2974
  %.val.i = load i64, ptr %i.b, align 8, !noalias !2974 ; 2 uses
  %i.cc = icmp eq i64 %.val.i, 0
  br i1 %i.cc, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, label %bb.z

bb.z:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i
  %.val17.i = load ptr, ptr %.sroa.4.0..sroa_idx.i40.i, align 8, !noalias !2974, !nonnull !5, !noundef !5
  %i.cd = shl nuw i64 %.val.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef %i.cd, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit.i: ; preds = %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32.i
  resume { ptr, i32 } %.pn.i

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2974
  br label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupjEB1j_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2H_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupjEB14_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2s_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupjEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %11 = trunc i64 %i.e to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 16 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = add i64 %i.p, 1                          ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 16 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.q
  store i64 0, ptr %i.w, align 8
  %i.x = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %.sroa.047.0 = sub nuw i64 %i.x, %i.y           ; 3 uses
  %i.z = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not128.not = icmp ugt i64 %i.j, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not129.not = icmp samesign ugt i64 %i.s, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !11

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ab = add i64 %i.g, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5 ; 2 uses
  %i.ao = add i64 %i.p, -1
  %i.ap = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.aq = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.ar, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 9 uses
  %i.ar = add nuw nsw i64 %.sroa.048.0267, 1
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.at = extractvalue { i64, i32 } %i.as, 0      ; 2 uses
  %i.au = icmp eq i64 %i.at, %9
  br i1 %i.au, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.av = extractvalue { i64, i32 } %i.as, 1      ; 2 uses
  %i.aw = icmp ult i32 %i.av, 1000000000
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp samesign ugt i32 %i.av, %10
  br i1 %i.ax, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.ay = icmp sgt i64 %i.at, %9
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.az = sub nsw i64 0, %.sroa.048.0267          ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.bg
  %.sroa.7.0251 = phi i64 [ %i.be, %bb.bg ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.bg ], [ 0, %.lr.ph252.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %i.bg = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %i.az
  %or.cond190.a = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond190.a, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bh = icmp eq i64 %i.bc, %i.az
  br i1 %i.bh, label %._crit_edge312.a, label %bb.am

._crit_edge312.a:                                 ; preds = %bb.k
  %.pre317.a = add i64 %i.h, %i.bc
  br label %bb.an

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ah
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ah ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bm, %bb.ah ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bi = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1       ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bi, 0       ; 10 uses
  %i.bl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bk, i64 -1) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bl, 1
  %i.bo = or i1 %i.bj, %i.bn
  %.not3.i145.not = icmp slt i64 %i.bk, %i.az
  %or.cond192 = select i1 %i.bj, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bp = icmp eq i64 %i.bk, %i.az
  br i1 %i.bp, label %._crit_edge314, label %bb.m

._crit_edge314:                                   ; preds = %bb.l
  %.pre = add i64 %i.q, %i.bk
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ah, %.lr.ph265
  %exitcond311.not = icmp eq i64 %.sroa.048.0267, %.sroa.047.0
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bk, %.sroa.048.0267
  %.pre315 = add i64 %i.ao, %i.bk                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.o

bb.n:                                             ; preds = %._crit_edge314, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314 ], [ %i.bt, %bb.r ] ; 3 uses
  %i.bq = icmp ult i64 %.pre-phi, %i.s
  br i1 %i.bq, label %bb.w, label %bb.x

._crit_edge313:                                   ; preds = %bb.m, %bb.r
  %i.br = icmp ult i64 %.pre315, %i.s
  br i1 %i.br, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bs = icmp ult i64 %.pre315, %i.s
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add i64 %i.q, %i.bk                     ; 4 uses
  %i.bu = icmp ult i64 %i.bt, %i.s
  br i1 %i.bu, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre315
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bt
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5
  %i.bz = icmp ult i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.n, label %._crit_edge313

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge313
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre315
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5
  %i.cc = add i64 %i.cb, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ch, %bb.w ], [ %i.cc, %bb.t ] ; 5 uses
  %i.cd = sub i64 %.sroa.014.0, %i.bk             ; 4 uses
  %i.ce = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cf = icmp ult i64 %i.cd, %.sroa.037.0
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %i.cd, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.cv, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.ci = add i64 %i.bk, %i.p                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.s
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.ck = sub i64 %i.ap, %.sroa.014.0             ; 2 uses
  %i.cl = sub i64 %i.aq, %i.cd                    ; 2 uses
  %i.cm = sub i64 %i.ck, %2
  %i.cn = sub i64 %i.cl, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cm) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.z
  %invariant.op258 = sub i64 %i.cl, %i.ad
  %invariant.op260 = sub i64 %i.ck, %i.aj
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph255, %bb.ad
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cu, %bb.ad ] ; 3 uses
  %i.co = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.co    ; 3 uses
  %i.cp = icmp ult i64 %.reass259, %i.af
  br i1 %i.cp, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !2988
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a: ; preds = %bb.aa
  %.reass261 = add i64 %invariant.op260, %i.co    ; 3 uses
  %i.cq = icmp ult i64 %.reass261, %i.al
  br i1 %i.cq, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !2989
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.reass259
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.reass261
  %.val = load i64, ptr %i.cr, align 8, !noundef !5
  %.val140.a = load i64, ptr %i.cs, align 8, !noundef !5
  %i.ct = icmp eq i64 %.val, %.val140.a
  br i1 %i.ct, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.ad:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cu = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cu, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.aa

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ad, %bb.z
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.z ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.cv = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cw = add i64 %.sroa.0.0.i136.lcssa, %i.cd
  br label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ci
  store i64 %.sroa.014.1, ptr %i.cx, align 8
  br i1 %11, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = sub i64 %i.bk, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.aj, %bb.ae
  %.not.i144 = icmp slt i64 %i.bm, %i.az
  %or.cond191 = select i1 %i.bo, i1 true, i1 %.not.i144
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ai:                                            ; preds = %bb.ag
  %i.cz = sub i64 %i.g, %i.cy                     ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.j
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cz
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5
  %i.dd = add i64 %i.dc, %.sroa.014.1
  %.not132 = icmp ult i64 %i.dd, %.sroa.025.0
  br i1 %.not132, label %bb.ah, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.de = sub i64 %i.ap, %.sroa.014.1
  %i.df = sub i64 %i.aq, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.am:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0267
  %.pre319 = add i64 %i.ab, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ao

bb.an:                                            ; preds = %._crit_edge312.a, %bb.ar
  %.pre-phi318 = phi i64 [ %.pre317.a, %._crit_edge312.a ], [ %i.dj, %bb.ar ] ; 3 uses
  %i.dg = icmp ult i64 %.pre-phi318, %i.j
  br i1 %i.dg, label %bb.aw, label %bb.ax

._crit_edge:                                      ; preds = %bb.am, %bb.ar
  %i.dh = icmp ult i64 %.pre319, %i.j
  br i1 %i.dh, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.di = icmp ult i64 %.pre319, %i.j
  br i1 %i.di, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dj = add i64 %i.h, %i.bc                     ; 4 uses
  %i.dk = icmp ult i64 %i.dj, %i.j
  br i1 %i.dk, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre319
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dj
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5
  %i.dp = icmp ult i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.an, label %._crit_edge

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.at:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre319
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !5
  %i.ds = add i64 %i.dr, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dy, %bb.aw ], [ %i.ds, %bb.at ] ; 6 uses
  %i.dt = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.du = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.du, i1 false
  %i.dv = icmp ult i64 %i.dt, %i.d
  %i.dw = and i1 %i.c, %.sroa.051.0
  %or.cond188.a = select i1 %i.dw, i1 %i.dv, i1 false
  br i1 %or.cond188.a, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi318
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5
  br label %bb.av

bb.ax:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.el, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.dz = add i64 %i.bc, %i.g                     ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.j
  br i1 %i.ea, label %bb.be, label %bb.bf

bb.az:                                            ; preds = %bb.av
  %i.eb = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.ec = add i64 %i.dt, %5                       ; 2 uses
  %i.ed = sub i64 %3, %i.eb
  %i.ee = sub i64 %6, %i.ec
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ed) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %invariant.op = sub i64 %i.ec, %i.ad            ; 2 uses
  %invariant.op247 = sub i64 %i.eb, %i.aj         ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bd
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.bd ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.ef = icmp ult i64 %.reass, %i.af
  br i1 %i.ef, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !2990
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ba
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.eg = icmp ult i64 %.reass248, %i.al
  br i1 %i.eg, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !2991
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.reass
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.reass248
  %.val141.a = load i64, ptr %i.eh, align 8, !noundef !5
  %.val142 = load i64, ptr %i.ei, align 8, !noundef !5
  %i.ej = icmp eq i64 %.val141.a, %.val142
  br i1 %i.ej, label %bb.bd, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit

bb.bd:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.ek = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit, label %bb.ba

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupjEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bd, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %..i150, %bb.bd ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupjEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.el = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.be:                                            ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dz
  store i64 %.sroa.04.1, ptr %i.em, align 8
  br i1 %11, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bj, %bb.be
  %.not.i143 = icmp slt i64 %i.be, %i.az
  %or.cond189 = select i1 %i.bg, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.bg
  br label %.lr.ph265

bb.bh:                                            ; preds = %bb.be
  %i.en = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.en, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.eo = sub i64 %i.p, %i.en                     ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.s
  br i1 %i.ep, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5
  %i.es = add i64 %i.er, %.sroa.04.1
  %.not135 = icmp ult i64 %i.es, %.sroa.025.0
  br i1 %.not135, label %bb.bg, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.et = add i64 %.sroa.04.0, %2
  %i.eu = add i64 %i.dt, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bl, %bb.al
  %.sink401 = phi i64 [ %i.de, %bb.al ], [ %i.et, %bb.bl ]
  %.sink399 = phi i64 [ %i.df, %bb.al ], [ %i.eu, %bb.bl ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink401, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink399, ptr %i.ew, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB4_5utils12OffsetLookupmEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %11 = trunc i64 %i.e to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 16 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = add i64 %i.p, 1                          ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 16 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.q
  store i64 0, ptr %i.w, align 8
  %i.x = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %.sroa.047.0 = sub nuw i64 %i.x, %i.y           ; 3 uses
  %i.z = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not128.not = icmp ugt i64 %i.j, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not129.not = icmp samesign ugt i64 %i.s, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph268, label %bb.h, !prof !11

.lr.ph268:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ab = add i64 %i.g, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ad = load i64, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.af = load i64, ptr %i.ae, align 8            ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5 ; 2 uses
  %i.ao = add i64 %i.p, -1
  %i.ap = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.aq = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph268, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread
  %.sroa.048.0267 = phi i64 [ 0, %.lr.ph268 ], [ %i.ar, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ] ; 9 uses
  %i.ar = add nuw nsw i64 %.sroa.048.0267, 1
  br i1 %.not.i, label %.lr.ph252.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.at = extractvalue { i64, i32 } %i.as, 0      ; 2 uses
  %i.au = icmp eq i64 %i.at, %9
  br i1 %i.au, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.av = extractvalue { i64, i32 } %i.as, 1      ; 2 uses
  %i.aw = icmp ult i32 %i.av, 1000000000
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp samesign ugt i32 %i.av, %10
  br i1 %i.ax, label %.split._crit_edge, label %.lr.ph252.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.ay = icmp sgt i64 %i.at, %9
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph252.preheader

.lr.ph252.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.az = sub nsw i64 0, %.sroa.048.0267          ; 6 uses
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.lr.ph252.preheader, %bb.bg
  %.sroa.7.0251 = phi i64 [ %i.be, %bb.bg ], [ %.sroa.048.0267, %.lr.ph252.preheader ]
  %not..sroa.11164.0250 = phi i64 [ 1, %bb.bg ], [ 0, %.lr.ph252.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0251, i64 %not..sroa.11164.0250) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %i.bg = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %i.az
  %or.cond190.a = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond190.a, label %.lr.ph265.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph252
  %i.bh = icmp eq i64 %i.bc, %i.az
  br i1 %i.bh, label %._crit_edge312.a, label %bb.am

._crit_edge312.a:                                 ; preds = %bb.k
  %.pre317.a = add i64 %i.h, %i.bc
  br label %bb.an

.lr.ph265:                                        ; preds = %.lr.ph265.preheader, %bb.ah
  %not..sroa.14173.0264 = phi i64 [ 1, %bb.ah ], [ 0, %.lr.ph265.preheader ]
  %.sroa.7172.0263 = phi i64 [ %i.bm, %bb.ah ], [ %.sroa.048.0267, %.lr.ph265.preheader ]
  %i.bi = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7172.0263, i64 %not..sroa.14173.0264) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1       ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bi, 0       ; 10 uses
  %i.bl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bk, i64 -1) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bl, 1
  %i.bo = or i1 %i.bj, %i.bn
  %.not3.i145.not = icmp slt i64 %i.bk, %i.az
  %or.cond192 = select i1 %i.bj, i1 true, i1 %.not3.i145.not
  br i1 %or.cond192, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph265
  %i.bp = icmp eq i64 %i.bk, %i.az
  br i1 %i.bp, label %._crit_edge314, label %bb.m

._crit_edge314:                                   ; preds = %bb.l
  %.pre = add i64 %i.q, %i.bk
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread: ; preds = %bb.ah, %.lr.ph265
  %exitcond311.not = icmp eq i64 %.sroa.048.0267, %.sroa.047.0
  br i1 %exitcond311.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bk, %.sroa.048.0267
  %.pre315 = add i64 %i.ao, %i.bk                 ; 6 uses
  br i1 %.not130, label %._crit_edge313, label %bb.o

bb.n:                                             ; preds = %._crit_edge314, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge314 ], [ %i.bt, %bb.r ] ; 3 uses
  %i.bq = icmp ult i64 %.pre-phi, %i.s
  br i1 %i.bq, label %bb.w, label %bb.x

._crit_edge313:                                   ; preds = %bb.m, %bb.r
  %i.br = icmp ult i64 %.pre315, %i.s
  br i1 %i.br, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bs = icmp ult i64 %.pre315, %i.s
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add i64 %i.q, %i.bk                     ; 4 uses
  %i.bu = icmp ult i64 %i.bt, %i.s
  br i1 %i.bu, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre315
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bt
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5
  %i.bz = icmp ult i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.n, label %._crit_edge313

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge313
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre315
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5
  %i.cc = add i64 %i.cb, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge313
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre315, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ch, %bb.w ], [ %i.cc, %bb.t ] ; 5 uses
  %i.cd = sub i64 %.sroa.014.0, %i.bk             ; 4 uses
  %i.ce = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cf = icmp ult i64 %i.cd, %.sroa.037.0
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.cw, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %i.cd, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.cv, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.ci = add i64 %i.bk, %i.p                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.s
  br i1 %i.cj, label %bb.ae, label %bb.af

bb.z:                                             ; preds = %bb.v
  %i.ck = sub i64 %i.ap, %.sroa.014.0             ; 2 uses
  %i.cl = sub i64 %i.aq, %i.cd                    ; 2 uses
  %i.cm = sub i64 %i.ck, %2
  %i.cn = sub i64 %i.cl, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cm) ; 3 uses
  %.not270 = icmp eq i64 %..i, 0
  br i1 %.not270, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.z
  %invariant.op258 = sub i64 %i.cl, %i.ad
  %invariant.op260 = sub i64 %i.ck, %i.aj
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph255, %bb.ad
  %.sroa.0.0.i136254 = phi i64 [ 0, %.lr.ph255 ], [ %i.cu, %bb.ad ] ; 3 uses
  %i.co = xor i64 %.sroa.0.0.i136254, -1          ; 2 uses
  %.reass259 = add i64 %invariant.op258, %i.co    ; 3 uses
  %i.cp = icmp ult i64 %.reass259, %i.af
  br i1 %i.cp, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass259, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !3000
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a: ; preds = %bb.aa
  %.reass261 = add i64 %invariant.op260, %i.co    ; 3 uses
  %i.cq = icmp ult i64 %.reass261, %i.al
  br i1 %i.cq, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.reass261, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !3001
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.a
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.reass259
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.reass261
  %.val = load i32, ptr %i.cr, align 4, !noundef !5
  %.val140.a = load i32, ptr %i.cs, align 4, !noundef !5
  %i.ct = icmp eq i32 %.val, %.val140.a
  br i1 %i.ct, label %bb.ad, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.ad:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit
  %i.cu = add nuw i64 %.sroa.0.0.i136254, 1       ; 2 uses
  %exitcond310.not = icmp eq i64 %i.cu, %..i
  br i1 %exitcond310.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.aa

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit, %bb.ad, %bb.z
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.z ], [ %..i, %bb.ad ], [ %.sroa.0.0.i136254, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit ] ; 2 uses
  %i.cv = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.cw = add i64 %.sroa.0.0.i136.lcssa, %i.cd
  br label %bb.y

bb.ae:                                            ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ci
  store i64 %.sroa.014.1, ptr %i.cx, align 8
  br i1 %11, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.cy = sub i64 %i.bk, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.cy, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0267
  br i1 %.not131, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.aj, %bb.ae
  %.not.i144 = icmp slt i64 %i.bm, %i.az
  %or.cond191 = select i1 %i.bo, i1 true, i1 %.not.i144
  br i1 %or.cond191, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, label %.lr.ph265

bb.ai:                                            ; preds = %bb.ag
  %i.cz = sub i64 %i.g, %i.cy                     ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.j
  br i1 %i.da, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.cz
  %i.dc = load i64, ptr %i.db, align 8, !noundef !5
  %i.dd = add i64 %i.dc, %.sroa.014.1
  %.not132 = icmp ult i64 %i.dd, %.sroa.025.0
  br i1 %.not132, label %bb.ah, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.cz, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.de = sub i64 %i.ap, %.sroa.014.1
  %i.df = sub i64 %i.aq, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.am:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0267
  %.pre319 = add i64 %i.ab, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ao

bb.an:                                            ; preds = %._crit_edge312.a, %bb.ar
  %.pre-phi318 = phi i64 [ %.pre317.a, %._crit_edge312.a ], [ %i.dj, %bb.ar ] ; 3 uses
  %i.dg = icmp ult i64 %.pre-phi318, %i.j
  br i1 %i.dg, label %bb.aw, label %bb.ax

._crit_edge:                                      ; preds = %bb.am, %bb.ar
  %i.dh = icmp ult i64 %.pre319, %i.j
  br i1 %i.dh, label %bb.at, label %bb.au

bb.ao:                                            ; preds = %bb.am
  %i.di = icmp ult i64 %.pre319, %i.j
  br i1 %i.di, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.dj = add i64 %i.h, %i.bc                     ; 4 uses
  %i.dk = icmp ult i64 %i.dj, %i.j
  br i1 %i.dk, label %bb.ar, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre319
  %i.dm = load i64, ptr %i.dl, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dj
  %i.do = load i64, ptr %i.dn, align 8, !noundef !5
  %i.dp = icmp ult i64 %i.dm, %i.do
  br i1 %i.dp, label %bb.an, label %._crit_edge

bb.as:                                            ; preds = %bb.ap
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dj, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.at:                                            ; preds = %._crit_edge
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre319
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !5
  %i.ds = add i64 %i.dr, 1
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre319, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.at
  %.sroa.04.0 = phi i64 [ %i.dy, %bb.aw ], [ %i.ds, %bb.at ] ; 6 uses
  %i.dt = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.du = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.du, i1 false
  %i.dv = icmp ult i64 %i.dt, %i.d
  %i.dw = and i1 %i.c, %.sroa.051.0
  %or.cond188.a = select i1 %i.dw, i1 %i.dv, i1 false
  br i1 %or.cond188.a, label %bb.az, label %bb.ay

bb.aw:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi318
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !5
  br label %bb.av

bb.ax:                                            ; preds = %bb.an
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi318, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.ay:                                            ; preds = %bb.av, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.el, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit ], [ %.sroa.04.0, %bb.av ] ; 2 uses
  %i.dz = add i64 %i.bc, %i.g                     ; 3 uses
  %i.ea = icmp ult i64 %i.dz, %i.j
  br i1 %i.ea, label %bb.be, label %bb.bf

bb.az:                                            ; preds = %bb.av
  %i.eb = add i64 %.sroa.04.0, %2                 ; 2 uses
  %i.ec = add i64 %i.dt, %5                       ; 2 uses
  %i.ed = sub i64 %3, %i.eb
  %i.ee = sub i64 %6, %i.ec
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ed) ; 3 uses
  %.not269 = icmp eq i64 %..i150, 0
  br i1 %.not269, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.az
  %invariant.op = sub i64 %i.ec, %i.ad            ; 2 uses
  %invariant.op247 = sub i64 %i.eb, %i.aj         ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph, %bb.bd
  %.sroa.0.0.i245 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %bb.bd ] ; 4 uses
  %.reass = add nuw i64 %.sroa.0.0.i245, %invariant.op ; 2 uses
  %i.ef = icmp ult i64 %.reass, %i.af
  br i1 %i.ef, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %umax = tail call i64 @llvm.umax.i64(i64 %i.af, i64 %invariant.op)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !3002
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139: ; preds = %bb.ba
  %.reass248 = add nuw i64 %.sroa.0.0.i245, %invariant.op247 ; 2 uses
  %i.eg = icmp ult i64 %.reass248, %i.al
  br i1 %i.eg, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, label %bb.bc

bb.bc:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %umax309 = tail call i64 @llvm.umax.i64(i64 %i.al, i64 %invariant.op247)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax309, i64 noundef %i.al, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !3003
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.reass
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.reass248
  %.val141.a = load i32, ptr %i.eh, align 4, !noundef !5
  %.val142 = load i32, ptr %i.ei, align 4, !noundef !5
  %i.ej = icmp eq i32 %.val141.a, %.val142
  br i1 %i.ej, label %bb.bd, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit

bb.bd:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138
  %i.ek = add nuw i64 %.sroa.0.0.i245, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %..i150
  br i1 %exitcond.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit, label %bb.ba

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB4_5utils12OffsetLookupmEB16_EB6_.exit: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138, %bb.bd, %bb.az
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.az ], [ %..i150, %bb.bd ], [ %.sroa.0.0.i245, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138 ]
  %i.el = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.ay

bb.be:                                            ; preds = %bb.ay
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.dz
  store i64 %.sroa.04.1, ptr %i.em, align 8
  br i1 %11, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.ay
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dz, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bg:                                            ; preds = %bb.bh, %bb.bj, %bb.be
  %.not.i143 = icmp slt i64 %i.be, %i.az
  %or.cond189 = select i1 %i.bg, i1 true, i1 %.not.i143
  br i1 %or.cond189, label %.lr.ph265.preheader, label %.lr.ph252

.lr.ph265.preheader:                              ; preds = %.lr.ph252, %bb.bg
  br label %.lr.ph265

bb.bh:                                            ; preds = %bb.be
  %i.en = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.en, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0267
  br i1 %.not134.not, label %bb.bi, label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.eo = sub i64 %i.p, %i.en                     ; 3 uses
  %i.ep = icmp ult i64 %i.eo, %i.s
  br i1 %i.ep, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.eo
  %i.er = load i64, ptr %i.eq, align 8, !noundef !5
  %i.es = add i64 %i.er, %.sroa.04.1
  %.not135 = icmp ult i64 %i.es, %.sroa.025.0
  br i1 %.not135, label %bb.bg, label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eo, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.et = add i64 %.sroa.04.0, %2
  %i.eu = add i64 %i.dt, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.bl, %bb.al
  %.sink401 = phi i64 [ %i.de, %bb.al ], [ %i.et, %bb.bl ]
  %.sink399 = phi i64 [ %i.df, %bb.al ], [ %i.eu, %bb.bl ]
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink401, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink399, ptr %i.ew, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit149.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %7, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ult i64 %2, %3
  %i.b = sub nuw i64 %3, %2
  %.sroa.025.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2) ; 6 uses
  %i.c = icmp ult i64 %5, %6
  %i.d = sub nuw i64 %6, %5
  %.sroa.037.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5) ; 4 uses
  %i.e = sub i64 %.sroa.025.0, %.sroa.037.0       ; 3 uses
  %11 = trunc i64 %i.e to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = add i64 %i.g, 1                          ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 16 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.h
  store i64 0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 4 uses
  %i.q = add i64 %i.p, 1                          ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 16 uses
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.q
  store i64 0, ptr %i.w, align 8
  %i.x = add i64 %.sroa.037.0, %.sroa.025.0       ; 2 uses
  %i.y = lshr i64 %i.x, 1
  %.sroa.047.0 = sub nuw i64 %i.x, %i.y           ; 3 uses
  %i.z = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.z)
  %.not128.not = icmp ugt i64 %i.j, %.sroa.047.0
  br i1 %.not128.not, label %bb.g, label %bb.f, !prof !11

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.q, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.aa = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aa)
  %.not129.not = icmp samesign ugt i64 %i.s, %.sroa.047.0
  br i1 %.not129.not, label %.lr.ph311, label %bb.h, !prof !11

.lr.ph311:                                        ; preds = %bb.g
  %.not.i = icmp eq i32 %10, -1
  %i.ab = add i64 %i.g, -1
  %i.ac = load i64, ptr %4, align 8, !range !7
  %i.ad = trunc nuw i64 %i.ac to i1               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.af = load i64, ptr %i.ae, align 8            ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !5 ; 6 uses
  %i.ai = load i64, ptr %1, align 8, !range !7
  %.fr312 = freeze i64 %i.ai
  %i.aj = trunc i64 %.fr312 to i1                 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load i64, ptr %i.ak, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5 ; 8 uses
  %i.ao = add i64 %i.p, -1
  %i.ap = add i64 %.sroa.025.0, %2                ; 2 uses
  %i.aq = add i64 %.sroa.037.0, %5                ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37
  unreachable

bb.i:                                             ; preds = %.lr.ph311, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread
  %.sroa.048.0310 = phi i64 [ 0, %.lr.ph311 ], [ %i.ar, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread ] ; 9 uses
  %i.ar = add nuw nsw i64 %.sroa.048.0310, 1
  br i1 %.not.i, label %.lr.ph273.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.at = extractvalue { i64, i32 } %i.as, 0      ; 2 uses
  %i.au = icmp eq i64 %i.at, %9
  br i1 %i.au, label %.split, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit

.split:                                           ; preds = %bb.j
  %i.av = extractvalue { i64, i32 } %i.as, 1      ; 2 uses
  %i.aw = icmp ult i32 %i.av, 1000000000
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp samesign ugt i32 %i.av, %10
  br i1 %i.ax, label %.split._crit_edge, label %.lr.ph273.preheader

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit: ; preds = %bb.j
  %i.ay = icmp sgt i64 %i.at, %9
  br i1 %i.ay, label %.split._crit_edge, label %.lr.ph273.preheader

.lr.ph273.preheader:                              ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %.split, %bb.i
  %i.az = sub nsw i64 0, %.sroa.048.0310          ; 6 uses
  br label %.lr.ph273

.lr.ph273:                                        ; preds = %.lr.ph273.preheader, %bb.bm
  %.sroa.7.0272 = phi i64 [ %i.be, %bb.bm ], [ %.sroa.048.0310, %.lr.ph273.preheader ]
  %not..sroa.11177.0271 = phi i64 [ 1, %bb.bm ], [ 0, %.lr.ph273.preheader ]
  %i.ba = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0272, i64 %not..sroa.11177.0271) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 0       ; 10 uses
  %i.bd = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bc, i64 -1) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 0       ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.bd, 1
  %i.bg = or i1 %i.bb, %i.bf
  %.not3.i.not = icmp slt i64 %i.bc, %i.az
  %or.cond205.a = select i1 %i.bb, i1 true, i1 %.not3.i.not
  br i1 %or.cond205.a, label %.lr.ph308.preheader, label %bb.k

bb.k:                                             ; preds = %.lr.ph273
  %i.bh = icmp eq i64 %i.bc, %i.az
  br i1 %i.bh, label %._crit_edge380.a, label %bb.ap

._crit_edge380.a:                                 ; preds = %bb.k
  %.pre385.a = add i64 %i.h, %i.bc
  br label %bb.aq

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %bb.ak
  %not..sroa.14186.0307 = phi i64 [ 1, %bb.ak ], [ 0, %.lr.ph308.preheader ]
  %.sroa.7185.0306 = phi i64 [ %i.bm, %bb.ak ], [ %.sroa.048.0310, %.lr.ph308.preheader ]
  %i.bi = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7185.0306, i64 %not..sroa.14186.0307) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 1       ; 2 uses
  %i.bk = extractvalue { i64, i1 } %i.bi, 0       ; 10 uses
  %i.bl = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bk, i64 -1) ; 2 uses
  %i.bm = extractvalue { i64, i1 } %i.bl, 0       ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bl, 1
  %i.bo = or i1 %i.bj, %i.bn
  %.not3.i139.not = icmp slt i64 %i.bk, %i.az
  %or.cond207 = select i1 %i.bj, i1 true, i1 %.not3.i139.not
  br i1 %or.cond207, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph308
  %i.bp = icmp eq i64 %i.bk, %i.az
  br i1 %i.bp, label %._crit_edge382, label %bb.m

._crit_edge382:                                   ; preds = %bb.l
  %.pre = add i64 %i.q, %i.bk
  br label %bb.n

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread: ; preds = %bb.ak, %.lr.ph308
  %exitcond379.not = icmp eq i64 %.sroa.048.0310, %.sroa.047.0
  br i1 %exitcond379.not, label %.split._crit_edge, label %bb.i

bb.m:                                             ; preds = %bb.l
  %.not130 = icmp eq i64 %i.bk, %.sroa.048.0310
  %.pre383 = add i64 %i.ao, %i.bk                 ; 6 uses
  br i1 %.not130, label %._crit_edge381, label %bb.o

bb.n:                                             ; preds = %._crit_edge382, %bb.r
  %.pre-phi = phi i64 [ %.pre, %._crit_edge382 ], [ %i.bt, %bb.r ] ; 3 uses
  %i.bq = icmp ult i64 %.pre-phi, %i.s
  br i1 %i.bq, label %bb.w, label %bb.x

._crit_edge381:                                   ; preds = %bb.m, %bb.r
  %i.br = icmp ult i64 %.pre383, %i.s
  br i1 %i.br, label %bb.t, label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.bs = icmp ult i64 %.pre383, %i.s
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = add i64 %i.q, %i.bk                     ; 4 uses
  %i.bu = icmp ult i64 %i.bt, %i.s
  br i1 %i.bu, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.o
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre383
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !5
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.bt
  %i.by = load i64, ptr %i.bx, align 8, !noundef !5
  %i.bz = icmp ult i64 %i.bw, %i.by
  br i1 %i.bz, label %bb.n, label %._crit_edge381

bb.s:                                             ; preds = %bb.p
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.bt, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37
  unreachable

bb.t:                                             ; preds = %._crit_edge381
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre383
  %i.cb = load i64, ptr %i.ca, align 8, !noundef !5
  %i.cc = add i64 %i.cb, 1
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge381
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre383, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37
  unreachable

bb.v:                                             ; preds = %bb.w, %bb.t
  %.sroa.014.0 = phi i64 [ %i.ch, %bb.w ], [ %i.cc, %bb.t ] ; 5 uses
  %i.cd = sub i64 %.sroa.014.0, %i.bk             ; 4 uses
  %i.ce = icmp ult i64 %.sroa.014.0, %.sroa.025.0
  %i.cf = icmp ult i64 %i.cd, %.sroa.037.0
  %or.cond = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond, label %bb.z, label %bb.y

bb.w:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.pre-phi
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !5
  br label %bb.v

bb.x:                                             ; preds = %bb.n
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37
  unreachable

bb.y:                                             ; preds = %bb.v, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.020.0 = phi i64 [ %i.ee, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %i.cd, %bb.v ]
  %.sroa.014.1 = phi i64 [ %i.ed, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.014.0, %bb.v ] ; 3 uses
  %i.ci = add i64 %i.bk, %i.p                     ; 3 uses
  %i.cj = icmp ult i64 %i.ci, %i.s
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.z:                                             ; preds = %bb.v
  %i.ck = sub i64 %i.ap, %.sroa.014.0             ; 4 uses
  %i.cl = sub i64 %i.aq, %i.cd                    ; 4 uses
  %i.cm = sub i64 %i.ck, %2
  %i.cn = sub i64 %i.cl, %5
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.cn, i64 %i.cm) ; 7 uses
  %.not314 = icmp eq i64 %..i, 0
  br i1 %.not314, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276

.lr.ph276:                                        ; preds = %bb.z
  br i1 %i.ad, label %.lr.ph276.split.us, label %.lr.ph276.split

.lr.ph276.split.us:                               ; preds = %.lr.ph276, %bb.ae
  %.sroa.0.0.i136275.us = phi i64 [ %i.dd, %bb.ae ], [ 0, %.lr.ph276 ] ; 4 uses
  %i.co = xor i64 %.sroa.0.0.i136275.us, -1       ; 2 uses
  %i.cp = add i64 %i.cl, %i.co                    ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %i.af
  br i1 %i.cq, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us: ; preds = %.lr.ph276.split.us
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 8
  %i.ct = getelementptr i8, ptr %i.cr, i64 16
  %.sroa.0.1.i.i.us = load ptr, ptr %i.cs, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us = load i64, ptr %i.ct, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.cu = add i64 %i.ck, %i.co                    ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %i.al               ; 2 uses
  br i1 %i.aj, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.cv, label %bb.ab, label %.split283.us

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

bb.ac:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us
  br i1 %i.cv, label %bb.ad, label %.split283.us

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.cu ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us: ; preds = %bb.ad, %bb.ab
  %.sroa.5.1.i.in.i144.us = phi ptr [ %i.da, %bb.ad ], [ %i.cx, %bb.ab ]
  %.sroa.0.1.i.in.i145.us = phi ptr [ %i.cz, %bb.ad ], [ %i.cw, %bb.ab ]
  %.sroa.5.1.i.i147.us = load i64, ptr %.sroa.5.1.i.in.i144.us, align 8, !noalias !3031, !noundef !5
  %i.db = icmp eq i64 %.sroa.5.1.i.i.us, %.sroa.5.1.i.i147.us
  br i1 %i.db, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us
  %.sroa.0.1.i.i146.us = load ptr, ptr %.sroa.0.1.i.in.i145.us, align 8, !noalias !3031, !nonnull !5, !noundef !5
  %bcmp.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i146.us, i64 %.sroa.5.1.i.i.us), !alias.scope !3032
  %i.dc = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.dc, label %bb.ae, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ae:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us
  %i.dd = add nuw i64 %.sroa.0.0.i136275.us, 1    ; 2 uses
  %exitcond378.not = icmp eq i64 %i.dd, %..i
  br i1 %exitcond378.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.us

.lr.ph276.split:                                  ; preds = %.lr.ph276
  br i1 %i.aj, label %.lr.ph276.split.split.us, label %.lr.ph276.split.split

.lr.ph276.split.split.us:                         ; preds = %.lr.ph276.split, %bb.af
  %.sroa.0.0.i136275.us287 = phi i64 [ %i.dq, %bb.af ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.de = xor i64 %.sroa.0.0.i136275.us287, -1    ; 2 uses
  %i.df = add i64 %i.cl, %i.de                    ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.af
  br i1 %i.dg, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288: ; preds = %.lr.ph276.split.split.us
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.0.1.i.i.us289 = load ptr, ptr %i.dh, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.us290 = load i64, ptr %i.di, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.dj = add i64 %i.ck, %i.de                    ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.al
  br i1 %i.dk, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291, label %.split283.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.dj ; 2 uses
  %i.dm = getelementptr i8, ptr %i.dl, i64 16
  %.sroa.5.1.i.i147.us294 = load i64, ptr %i.dm, align 8, !noalias !3031, !noundef !5
  %i.dn = icmp eq i64 %.sroa.5.1.i.i.us290, %.sroa.5.1.i.i147.us294
  br i1 %i.dn, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291
  %i.do = getelementptr i8, ptr %i.dl, i64 8
  %.sroa.0.1.i.i146.us296 = load ptr, ptr %i.do, align 8, !noalias !3031, !nonnull !5, !noundef !5
  %bcmp.i.us297 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.us289, ptr nonnull readonly %.sroa.0.1.i.i146.us296, i64 %.sroa.5.1.i.i.us290), !alias.scope !3032
  %i.dp = icmp eq i32 %bcmp.i.us297, 0
  br i1 %i.dp, label %bb.af, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.af:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295
  %i.dq = add nuw i64 %.sroa.0.0.i136275.us287, 1 ; 2 uses
  %exitcond377.not = icmp eq i64 %i.dq, %..i
  br i1 %exitcond377.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.split.us

.lr.ph276.split.split:                            ; preds = %.lr.ph276.split, %bb.ag
  %.sroa.0.0.i136275 = phi i64 [ %i.ec, %bb.ag ], [ 0, %.lr.ph276.split ] ; 4 uses
  %i.dr = xor i64 %.sroa.0.0.i136275, -1          ; 2 uses
  %i.ds = add i64 %i.cl, %i.dr                    ; 2 uses
  %i.dt = icmp ult i64 %i.ds, %i.af
  br i1 %i.dt, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, label %.split281.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit: ; preds = %.lr.ph276.split.split
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.ds ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %.sroa.0.1.i.i = load ptr, ptr %i.du, align 8, !noalias !3030, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i = load i64, ptr %i.dv, align 8, !noalias !3030, !noundef !5 ; 2 uses
  %i.dw = add i64 %i.ck, %i.dr                    ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %i.al
  br i1 %i.dx, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148, label %.split283.us

.split281.us:                                     ; preds = %.lr.ph276.split.split, %.lr.ph276.split.split.us, %.lr.ph276.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !3033
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.dw ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %.sroa.5.1.i.i147 = load i64, ptr %i.dz, align 8, !noalias !3031, !noundef !5
  %i.ea = icmp eq i64 %.sroa.5.1.i.i, %.sroa.5.1.i.i147
  br i1 %i.ea, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

.split283.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.us288, %bb.aa, %bb.ac
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !3034
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148
  %.sroa.0.1.i.i146 = load ptr, ptr %i.dy, align 8, !noalias !3031, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i, ptr nonnull readonly %.sroa.0.1.i.i146, i64 %.sroa.5.1.i.i), !alias.scope !3032
  %i.eb = icmp eq i32 %bcmp.i, 0
  br i1 %i.eb, label %bb.ag, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.ag:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit
  %i.ec = add nuw i64 %.sroa.0.0.i136275, 1       ; 2 uses
  %exitcond376.not = icmp eq i64 %i.ec, %..i
  br i1 %exitcond376.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph276.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit, %bb.ag, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295, %bb.af, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us, %bb.ae, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us, %bb.z
  %.sroa.0.0.i136.lcssa = phi i64 [ 0, %bb.z ], [ %.sroa.0.0.i136275.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us ], [ %.sroa.0.0.i136275.us287, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148.us291 ], [ %..i, %bb.ae ], [ %.sroa.0.0.i136275.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us ], [ %.sroa.0.0.i136275.us287, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.us295 ], [ %..i, %bb.af ], [ %.sroa.0.0.i136275, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit148 ], [ %..i, %bb.ag ], [ %.sroa.0.0.i136275, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit ] ; 2 uses
  %i.ed = add i64 %.sroa.0.0.i136.lcssa, %.sroa.014.0
  %i.ee = add i64 %.sroa.0.0.i136.lcssa, %i.cd
  br label %bb.y

bb.ah:                                            ; preds = %bb.y
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.ci
  store i64 %.sroa.014.1, ptr %i.ef, align 8
  br i1 %11, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.y
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ci, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.eg = sub i64 %i.bk, %i.e                     ; 2 uses
  %.sroa.024.0 = tail call i64 @llvm.abs.i64(i64 %i.eg, i1 false)
  %.not131 = icmp sgt i64 %.sroa.024.0, %.sroa.048.0310
  br i1 %.not131, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.am, %bb.ah
  %.not.i138 = icmp slt i64 %i.bm, %i.az
  %or.cond206 = select i1 %i.bo, i1 true, i1 %.not.i138
  br i1 %or.cond206, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, label %.lr.ph308

bb.al:                                            ; preds = %bb.aj
  %i.eh = sub i64 %i.g, %i.eg                     ; 3 uses
  %i.ei = icmp ult i64 %i.eh, %i.j
  br i1 %i.ei, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.eh
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !5
  %i.el = add i64 %i.ek, %.sroa.014.1
  %.not132 = icmp ult i64 %i.el, %.sroa.025.0
  br i1 %.not132, label %bb.ak, label %bb.ao

bb.an:                                            ; preds = %bb.al
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.eh, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.em = sub i64 %i.ap, %.sroa.014.1
  %i.en = sub i64 %i.aq, %.sroa.020.0
  br label %.split._crit_edge.sink.split

bb.ap:                                            ; preds = %bb.k
  %.not133 = icmp eq i64 %i.bc, %.sroa.048.0310
  %.pre387 = add i64 %i.ab, %i.bc                 ; 6 uses
  br i1 %.not133, label %._crit_edge, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge380.a, %bb.au
  %.pre-phi386 = phi i64 [ %.pre385.a, %._crit_edge380.a ], [ %i.er, %bb.au ] ; 3 uses
  %i.eo = icmp ult i64 %.pre-phi386, %i.j
  br i1 %i.eo, label %bb.az, label %bb.ba

._crit_edge:                                      ; preds = %bb.ap, %bb.au
  %i.ep = icmp ult i64 %.pre387, %i.j
  br i1 %i.ep, label %bb.aw, label %bb.ax

bb.ar:                                            ; preds = %bb.ap
  %i.eq = icmp ult i64 %.pre387, %i.j
  br i1 %i.eq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.er = add i64 %i.h, %i.bc                     ; 4 uses
  %i.es = icmp ult i64 %i.er, %i.j
  br i1 %i.es, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.ar
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre387, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37
  unreachable

bb.au:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre387
  %i.eu = load i64, ptr %i.et, align 8, !noundef !5
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.er
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !5
  %i.ex = icmp ult i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.aq, label %._crit_edge

bb.av:                                            ; preds = %bb.as
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.er, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37
  unreachable

bb.aw:                                            ; preds = %._crit_edge
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre387
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !5
  %i.fa = add i64 %i.ez, 1
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre387, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37
  unreachable

bb.ay:                                            ; preds = %bb.az, %bb.aw
  %.sroa.04.0 = phi i64 [ %i.fg, %bb.az ], [ %i.fa, %bb.aw ] ; 6 uses
  %i.fb = sub i64 %.sroa.04.0, %i.bc              ; 3 uses
  %i.fc = icmp ult i64 %.sroa.04.0, %i.b
  %.sroa.051.0 = select i1 %i.a, i1 %i.fc, i1 false
  %i.fd = icmp ult i64 %i.fb, %i.d
  %i.fe = and i1 %i.c, %.sroa.051.0
  %or.cond203.a = select i1 %i.fe, i1 %i.fd, i1 false
  br i1 %or.cond203.a, label %bb.bc, label %bb.bb

bb.az:                                            ; preds = %bb.aq
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.pre-phi386
  %i.fg = load i64, ptr %i.ff, align 8, !noundef !5
  br label %bb.ay

bb.ba:                                            ; preds = %bb.aq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi386, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37
  unreachable

bb.bb:                                            ; preds = %bb.ay, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit
  %.sroa.04.1 = phi i64 [ %i.gu, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit ], [ %.sroa.04.0, %bb.ay ] ; 2 uses
  %i.fh = add i64 %i.bc, %i.g                     ; 3 uses
  %i.fi = icmp ult i64 %i.fh, %i.j
  br i1 %i.fi, label %bb.bk, label %bb.bl

bb.bc:                                            ; preds = %bb.ay
  %i.fj = add i64 %.sroa.04.0, %2                 ; 5 uses
  %i.fk = add i64 %i.fb, %5                       ; 4 uses
  %i.fl = sub i64 %3, %i.fj
  %i.fm = sub i64 %6, %i.fk
  %..i150 = tail call noundef i64 @llvm.umin.i64(i64 %i.fm, i64 %i.fl) ; 7 uses
  %.not313 = icmp eq i64 %..i150, 0
  br i1 %.not313, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bc
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.bh
  %.sroa.0.0.i244.us = phi i64 [ %i.gb, %bb.bh ], [ 0, %.lr.ph ] ; 5 uses
  %i.fn = add nuw i64 %.sroa.0.0.i244.us, %i.fk   ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.af
  br i1 %i.fo, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us: ; preds = %.lr.ph.split.us
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.fn ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 8
  %i.fr = getelementptr i8, ptr %i.fp, i64 16
  %.sroa.0.1.i.i153.us = load ptr, ptr %i.fq, align 8, !noalias !3035, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154.us = load i64, ptr %i.fr, align 8, !noalias !3035, !noundef !5 ; 2 uses
  %i.fs = add i64 %.sroa.0.0.i244.us, %i.fj       ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %i.al               ; 2 uses
  br i1 %i.aj, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us
  br i1 %i.ft, label %bb.be, label %.split250.us

bb.be:                                            ; preds = %bb.bd
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us

bb.bf:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us
  br i1 %i.ft, label %bb.bg, label %.split250.us

bb.bg:                                            ; preds = %bb.bf
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.an, i64 %i.fs ; 2 uses
  %i.fx = getelementptr i8, ptr %i.fw, i64 8
  %i.fy = getelementptr i8, ptr %i.fw, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us: ; preds = %bb.bg, %bb.be
  %.sroa.5.1.i.in.i156.us = phi ptr [ %i.fy, %bb.bg ], [ %i.fv, %bb.be ]
  %.sroa.0.1.i.in.i157.us = phi ptr [ %i.fx, %bb.bg ], [ %i.fu, %bb.be ]
  %.sroa.5.1.i.i159.us = load i64, ptr %.sroa.5.1.i.in.i156.us, align 8, !noalias !3036, !noundef !5
  %i.fz = icmp eq i64 %.sroa.5.1.i.i154.us, %.sroa.5.1.i.i159.us
  br i1 %i.fz, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us
  %.sroa.0.1.i.i158.us = load ptr, ptr %.sroa.0.1.i.in.i157.us, align 8, !noalias !3036, !nonnull !5, !noundef !5
  %bcmp.i162.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153.us, ptr nonnull readonly %.sroa.0.1.i.i158.us, i64 %.sroa.5.1.i.i154.us), !alias.scope !3037
  %i.ga = icmp eq i32 %bcmp.i162.us, 0
  br i1 %i.ga, label %bb.bh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bh:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us
  %i.gb = add nuw i64 %.sroa.0.0.i244.us, 1       ; 2 uses
  %exitcond375.not = icmp eq i64 %i.gb, %..i150
  br i1 %exitcond375.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.gc = tail call i64 @llvm.usub.sat.i64(i64 %i.al, i64 %i.fj) ; 2 uses
  br i1 %i.aj, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %invariant.gep = getelementptr [16 x i8], ptr %i.an, i64 %i.fj
  br label %.lr.ph.split.split

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %invariant.gep498 = getelementptr [24 x i8], ptr %i.an, i64 %i.fj
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.bi
  %.sroa.0.0.i244.us253 = phi i64 [ %i.gl, %bb.bi ], [ 0, %.lr.ph.split.split.us.preheader ] ; 6 uses
  %i.gd = add nuw i64 %.sroa.0.0.i244.us253, %i.fk ; 2 uses
  %i.ge = icmp ult i64 %i.gd, %i.af
  br i1 %i.ge, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254: ; preds = %.lr.ph.split.split.us
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.gd ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %.sroa.0.1.i.i153.us255 = load ptr, ptr %i.gf, align 8, !noalias !3035, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154.us256 = load i64, ptr %i.gg, align 8, !noalias !3035, !noundef !5 ; 2 uses
  %exitcond373.not = icmp eq i64 %.sroa.0.0.i244.us253, %i.gc
  br i1 %exitcond373.not, label %.split250.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254
  %gep499 = getelementptr [24 x i8], ptr %invariant.gep498, i64 %.sroa.0.0.i244.us253 ; 2 uses
  %i.gh = getelementptr i8, ptr %gep499, i64 16
  %.sroa.5.1.i.i159.us260 = load i64, ptr %i.gh, align 8, !noalias !3036, !noundef !5
  %i.gi = icmp eq i64 %.sroa.5.1.i.i154.us256, %.sroa.5.1.i.i159.us260
  br i1 %i.gi, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257
  %i.gj = getelementptr i8, ptr %gep499, i64 8
  %.sroa.0.1.i.i158.us262 = load ptr, ptr %i.gj, align 8, !noalias !3036, !nonnull !5, !noundef !5
  %bcmp.i162.us263 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153.us255, ptr nonnull readonly %.sroa.0.1.i.i158.us262, i64 %.sroa.5.1.i.i154.us256), !alias.scope !3037
  %i.gk = icmp eq i32 %bcmp.i162.us263, 0
  br i1 %i.gk, label %bb.bi, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bi:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261
  %i.gl = add nuw i64 %.sroa.0.0.i244.us253, 1    ; 2 uses
  %exitcond374.not = icmp eq i64 %i.gl, %..i150
  br i1 %exitcond374.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.split.us

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.bj
  %.sroa.0.0.i244 = phi i64 [ %i.gt, %bb.bj ], [ 0, %.lr.ph.split.split.preheader ] ; 6 uses
  %i.gm = add nuw i64 %.sroa.0.0.i244, %i.fk      ; 2 uses
  %i.gn = icmp ult i64 %i.gm, %i.af
  br i1 %i.gn, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155, label %.split248.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155: ; preds = %.lr.ph.split.split
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.gm ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %.sroa.0.1.i.i153 = load ptr, ptr %i.go, align 8, !noalias !3035, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i154 = load i64, ptr %i.gp, align 8, !noalias !3035, !noundef !5 ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.0.0.i244, %i.gc
  br i1 %exitcond.not, label %.split250.us, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160

.split248.us:                                     ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !3038
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155
  %gep = getelementptr [16 x i8], ptr %invariant.gep, i64 %.sroa.0.0.i244 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %.sroa.5.1.i.i159 = load i64, ptr %i.gq, align 8, !noalias !3036, !noundef !5
  %i.gr = icmp eq i64 %.sroa.5.1.i.i154, %.sroa.5.1.i.i159
  br i1 %i.gr, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

.split250.us:                                     ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit155.us254, %bb.bd, %bb.bf
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !3039
  unreachable

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160
  %.sroa.0.1.i.i158 = load ptr, ptr %gep, align 8, !noalias !3036, !nonnull !5, !noundef !5
  %bcmp.i162 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i153, ptr nonnull readonly %.sroa.0.1.i.i158, i64 %.sroa.5.1.i.i154), !alias.scope !3037
  %i.gs = icmp eq i32 %bcmp.i162, 0
  br i1 %i.gs, label %bb.bj, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit

bb.bj:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163
  %i.gt = add nuw i64 %.sroa.0.0.i244, 1          ; 2 uses
  %exitcond371.not = icmp eq i64 %i.gt, %..i150
  br i1 %exitcond371.not, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit, label %.lr.ph.split.split

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtB6_4text12TextDiffSideeEB16_EB6_.exit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163, %bb.bj, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261, %bb.bi, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us, %bb.bh, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us, %bb.bc
  %.sroa.0.0.i.lcssa = phi i64 [ 0, %bb.bc ], [ %.sroa.0.0.i244.us, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us ], [ %.sroa.0.0.i244.us253, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160.us257 ], [ %..i150, %bb.bh ], [ %.sroa.0.0.i244.us, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us ], [ %.sroa.0.0.i244.us253, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163.us261 ], [ %..i150, %bb.bi ], [ %.sroa.0.0.i244, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit160 ], [ %..i150, %bb.bj ], [ %.sroa.0.0.i244, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit163 ]
  %i.gu = add i64 %.sroa.0.0.i.lcssa, %.sroa.04.0
  br label %bb.bb

bb.bk:                                            ; preds = %bb.bb
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.fh
  store i64 %.sroa.04.1, ptr %i.gv, align 8
  br i1 %11, label %bb.bn, label %bb.bm

bb.bl:                                            ; preds = %bb.bb
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.fh, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37
  unreachable

bb.bm:                                            ; preds = %bb.bn, %bb.bp, %bb.bk
  %.not.i137 = icmp slt i64 %i.be, %i.az
  %or.cond204 = select i1 %i.bg, i1 true, i1 %.not.i137
  br i1 %or.cond204, label %.lr.ph308.preheader, label %.lr.ph273

.lr.ph308.preheader:                              ; preds = %.lr.ph273, %bb.bm
  br label %.lr.ph308

bb.bn:                                            ; preds = %bb.bk
  %i.gw = sub i64 %i.bc, %i.e                     ; 2 uses
  %.sroa.010.0 = tail call i64 @llvm.abs.i64(i64 %i.gw, i1 false)
  %.not134.not = icmp slt i64 %.sroa.010.0, %.sroa.048.0310
  br i1 %.not134.not, label %bb.bo, label %bb.bm

bb.bo:                                            ; preds = %bb.bn
  %i.gx = sub i64 %i.p, %i.gw                     ; 3 uses
  %i.gy = icmp ult i64 %i.gx, %i.s
  br i1 %i.gy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.gx
  %i.ha = load i64, ptr %i.gz, align 8, !noundef !5
  %i.hb = add i64 %i.ha, %.sroa.04.1
  %.not135 = icmp ult i64 %i.hb, %.sroa.025.0
  br i1 %.not135, label %bb.bm, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.gx, i64 noundef %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.hc = add i64 %.sroa.04.0, %2
  %i.hd = add i64 %i.fb, %5
  br label %.split._crit_edge.sink.split

.split._crit_edge.sink.split:                     ; preds = %bb.br, %bb.ao
  %.sink502 = phi i64 [ %i.em, %bb.ao ], [ %i.hc, %bb.br ]
  %.sink500 = phi i64 [ %i.en, %bb.ao ], [ %i.hd, %bb.br ]
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink502, ptr %i.he, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink500, ptr %i.hf, align 8
  br label %.split._crit_edge

.split._crit_edge:                                ; preds = %.split, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread, %.split._crit_edge.sink.split
  %.sink = phi i64 [ 1, %.split._crit_edge.sink.split ], [ 0, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit143.thread ], [ 0, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit ], [ 0, %.split ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB14_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactB14_B14_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.0.0 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %.sroa.05.0 = tail call i64 @llvm.usub.sat.i64(i64 %6, i64 %5)
  %i.c = add i64 %.sroa.05.0, %.sroa.0.0          ; 2 uses
  %i.d = lshr i64 %i.c, 1
  %.sroa.011.0 = sub nuw i64 %i.c, %i.d
  %i.e = add nuw i64 %.sroa.011.0, 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3052)
  %i.f = shl i64 %i.e, 1                          ; 6 uses
  %i.g = shl i64 %i.e, 4                          ; 6 uses
  %i.h = icmp ugt i64 %i.f, 2305843009213693951
  %.not.i5.i.i = icmp ugt i64 %i.g, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.h, %.not.i5.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.j, align 8, !alias.scope !3052
  store i64 0, ptr %i.b, align 8, !alias.scope !3052
  %.sroa.4.0..sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i37, align 8, !alias.scope !3052
  %.sroa.5.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i38, align 8, !alias.scope !3052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3053
  %i.k = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #36, !noalias !3053 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.g) #38, !noalias !3054
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.e, ptr %i.m, align 8, !alias.scope !3052
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !3052
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3052
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !3056
  %i.n = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.g, i64 noundef range(i64 1, 9) 8) #36, !noalias !3056 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.g) #38
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32: ; preds = %bb.k, %bb.j, %bb.h
  %.sroa.4.0..sroa_idx.i39 = phi ptr [ %.sroa.4.0..sroa_idx.i, %bb.h ], [ %.sroa.4.0..sroa_idx.i40, %bb.j ], [ %.sroa.4.0..sroa_idx.i40, %bb.k ]
  %.pn = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.t, %bb.j ], [ %i.t, %bb.k ]
  %.val22 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.p = icmp eq i64 %.val22, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32
  %.val23 = load ptr, ptr %.sroa.4.0..sroa_idx.i39, align 8, !nonnull !5, !noundef !5
  %i.q = shl nuw i64 %.val22, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32

bb.i:                                             ; preds = %bb.e, %.thread
  %.sroa.4.0..sroa_idx.i40 = phi ptr [ %.sroa.4.0..sroa_idx.i37, %.thread ], [ %.sroa.4.0..sroa_idx.i, %bb.e ] ; 3 uses
  %.sroa.4.0.i.i26 = phi i64 [ 0, %.thread ], [ %i.f, %bb.e ]
  %.sroa.10.0.i.i27 = phi ptr [ inttoptr (i64 8 to ptr), %.thread ], [ %i.n, %bb.e ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.e, ptr %i.s, align 8, !alias.scope !3055
  store i64 %.sroa.4.0.i.i26, ptr %i.a, align 8, !alias.scope !3055
  %.sroa.4.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i27, ptr %.sroa.4.0..sroa_idx.i28, align 8, !alias.scope !3055
  %.sroa.5.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx.i29, align 8, !alias.scope !3055
  invoke fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtB4_5utils12OffsetLookupmEBS_INtNtB4_4hook12NoFinishHookQQINtNtB4_7compact7CompactBS_BS_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef align 8 dereferenceable(32) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, i64 %7, i32 noundef %8)
          to label %bb.l unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val20 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.u = icmp eq i64 %.val20, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val21 = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !nonnull !5, !noundef !5
  %i.v = shl nuw i64 %.val20, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32

bb.l:                                             ; preds = %bb.i
  %.val18 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.w = icmp eq i64 %.val18, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val19 = load ptr, ptr %.sroa.4.0..sroa_idx.i28, align 8, !nonnull !5, !noundef !5
  %i.x = shl nuw i64 %.val18, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.x, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.y = icmp eq i64 %.val, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33
  %.val17 = load ptr, ptr %.sroa.4.0..sroa_idx.i40, align 8, !nonnull !5, !noundef !5
  %i.z = shl nuw i64 %.val, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.z, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit34: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit33, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit: ; preds = %bb.g, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsdftwklc2oBO_7similar10algorithms5myers1VEBH_.exit32
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.aip = mul i64 %i.yh, %i.xz                   ; 2 uses
  %i.aiq = mul i64 %.sroa.0102.0693.i307, %i.xz   ; 2 uses
  %i.air = add i64 %i.yh, %.sroa.0.0              ; 3 uses
  %i.ais = icmp ult i64 %i.air, %.val61
  %i.ait = getelementptr inbounds nuw [16 x i8], ptr %.val60, i64 %i.air ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 8
  %.fr.i313 = freeze i1 %i.ais
  br i1 %.fr.i313, label %.lr.ph.split.us.i322, label %.lr.ph.split.i314

.lr.ph.split.us.i322:                             ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit256.thread.i312, %bb.gb
  %.sroa.0105.0658.us.i323 = phi i64 [ %i.aiv, %bb.gb ], [ %.sroa.088.0.i158, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit256.thread.i312 ] ; 3 uses
  %i.aiv = add i64 %.sroa.0105.0658.us.i323, -1   ; 6 uses
  %i.aiw = and i64 %i.aiv, 1023
  %i.aix = icmp ne i64 %i.aiw, 0
  %brmerge48.us.i324 = or i1 %.not.i98, %i.aix
  br i1 %brmerge48.us.i324, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329, label %bb.fs

bb.fs:                                            ; preds = %.lr.ph.split.us.i322
  %i.aiy = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc315.us.i327 unwind label %.loopexit.split-lp.loopexit.split.us.i325 ; 2 uses

.noexc315.us.i327:                                ; preds = %bb.fs
  %i.aiz = extractvalue { i64, i32 } %i.aiy, 0    ; 2 uses
  %i.aja = icmp eq i64 %i.aiz, %9
  br i1 %i.aja, label %.split42.us.i338, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.us.i328

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.us.i328: ; preds = %.noexc315.us.i327
  %i.ajb = icmp sgt i64 %i.aiz, %9
  br i1 %i.ajb, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329

.split42.us.i338:                                 ; preds = %.noexc315.us.i327
  %i.ajc = extractvalue { i64, i32 } %i.aiy, 1    ; 2 uses
  %i.ajd = icmp ult i32 %i.ajc, 1000000000
  tail call void @llvm.assume(i1 %i.ajd)
  %i.aje = icmp samesign ugt i32 %i.ajc, %10
  br i1 %i.aje, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329: ; preds = %.split42.us.i338, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.us.i328, %.lr.ph.split.us.i322
  %i.ajf = add i64 %i.aiv, %.sroa.0426.0          ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.ajg = icmp ult i64 %i.ajf, %.val63
  br i1 %i.ajg, label %bb.ft, label %.invoke1759.i213

bb.ft:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.us.i329
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  %i.ajh = getelementptr inbounds nuw [16 x i8], ptr %.val62, i64 %i.ajf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6385)
  %i.aji = load ptr, ptr %i.ajh, align 8, !alias.scope !6384, !noalias !6386, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajk = load i64, ptr %i.ajj, align 8, !alias.scope !6384, !noalias !6386, !noundef !5
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aji, i64 24
  %i.ajm = load i64, ptr %i.ajl, align 8, !alias.scope !6387, !noalias !6388, !noundef !5
  %i.ajn = sub i64 %i.ajk, %i.ajm                 ; 3 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %i.ajp = load i64, ptr %i.ajo, align 8, !alias.scope !6387, !noalias !6388, !noundef !5 ; 2 uses
  %i.ajq = icmp ult i64 %i.ajn, %i.ajp
  br i1 %i.ajq, label %.noexc.us.i330, label %.invoke1759.i213

.noexc.us.i330:                                   ; preds = %bb.ft
  %i.ajr = load ptr, ptr %i.ait, align 8, !alias.scope !6385, !noalias !6389, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.ajs = load i64, ptr %i.aiu, align 8, !alias.scope !6385, !noalias !6389, !noundef !5
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajr, i64 24
  %i.aju = load i64, ptr %i.ajt, align 8, !alias.scope !6390, !noalias !6391, !noundef !5
  %i.ajv = sub i64 %i.ajs, %i.aju                 ; 3 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajr, i64 16
  %i.ajx = load i64, ptr %i.ajw, align 8, !alias.scope !6390, !noalias !6391, !noundef !5 ; 2 uses
  %i.ajy = icmp ult i64 %i.ajv, %i.ajx
  br i1 %i.ajy, label %bb.fu, label %.invoke1759.i213

bb.fu:                                            ; preds = %.noexc.us.i330
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.aji, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8, !alias.scope !6387, !noalias !6388, !nonnull !5, !noundef !5
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.aka, i64 %i.ajn
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajr, i64 8
  %i.akd = load ptr, ptr %i.akc, align 8, !alias.scope !6390, !noalias !6391, !nonnull !5, !noundef !5
  %i.ake = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.ajv
  %.val231.us.i331 = load i32, ptr %i.akb, align 4, !noundef !5
  %.val232.us.i332 = load i32, ptr %i.ake, align 4, !noundef !5
  %i.akf = icmp eq i32 %.val231.us.i331, %.val232.us.i332
  br i1 %i.akf, label %bb.fy, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.akg = add i64 %i.aiv, %i.aiq                 ; 3 uses
  %i.akh = icmp ult i64 %i.akg, %i.yb
  br i1 %i.akh, label %bb.fw, label %.invoke1757.i

bb.fw:                                            ; preds = %bb.fv
  %i.aki = add i64 %.sroa.0105.0658.us.i323, %i.aip ; 3 uses
  %i.akj = icmp ult i64 %i.aki, %i.yb
  br i1 %i.akj, label %bb.fx, label %.split680.us.invoke.i222

bb.fx:                                            ; preds = %bb.fw
  %i.akk = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akg
  %i.akl = load i8, ptr %i.akk, align 1, !noundef !5
  %i.akm = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.aki
  %i.akn = load i8, ptr %i.akm, align 1, !noundef !5
  %..i.us.i333 = tail call noundef i8 @llvm.umax.i8(i8 %i.akn, i8 %i.akl)
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fu
  %i.ako = add i64 %.sroa.0105.0658.us.i323, %i.aiq ; 3 uses
  %i.akp = icmp ult i64 %i.ako, %i.yb
  br i1 %i.akp, label %bb.fz, label %.invoke1757.i

bb.fz:                                            ; preds = %bb.fy
  %i.akq = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ako
  %i.akr = load i8, ptr %i.akq, align 1, !noundef !5
  %i.aks = add i8 %i.akr, 1
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.sroa.04.0.us.i334 = phi i8 [ %i.aks, %bb.fz ], [ %..i.us.i333, %bb.fx ]
  %i.akt = add i64 %i.aiv, %i.aip                 ; 3 uses
  %i.aku = icmp ult i64 %i.akt, %i.yb
  br i1 %i.aku, label %bb.gb, label %.split680.us.invoke.i222

bb.gb:                                            ; preds = %bb.ga
  %i.akv = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.akt
  store i8 %.sroa.04.0.us.i334, ptr %i.akv, align 1
  %.not168.us.i335 = icmp eq i64 %i.aiv, 0
  br i1 %.not168.us.i335, label %..loopexit66_crit_edge.split.us.i336, label %.lr.ph.split.us.i322

.loopexit.split-lp.loopexit.split.us.i325:        ; preds = %bb.fs
  %lpad.loopexit67.us.i326 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i169

..loopexit66_crit_edge.split.us.i336:             ; preds = %bb.gb
  %.not.i337 = icmp eq i64 %i.yh, 0
  br i1 %.not.i337, label %.lr.ph718.i198, label %.lr.ph694.split.i306

.lr.ph.split.i314:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit256.thread.i312
  %i.akw = add i64 %.sroa.088.0.i158, -1          ; 2 uses
  %i.akx = and i64 %i.akw, 1023
  %i.aky = icmp ne i64 %i.akx, 0
  %brmerge48.i315 = or i1 %.not.i98, %i.aky
  br i1 %brmerge48.i315, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.split.i314
  %i.akz = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc315.i318 unwind label %.loopexit.split-lp.loopexit.split.i316 ; 2 uses

.noexc315.i318:                                   ; preds = %bb.gc
  %i.ala = extractvalue { i64, i32 } %i.akz, 0    ; 2 uses
  %i.alb = icmp eq i64 %i.ala, %9
  br i1 %i.alb, label %.split42.i321, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319

.split42.i321:                                    ; preds = %.noexc315.i318
  %i.alc = extractvalue { i64, i32 } %i.akz, 1    ; 2 uses
  %i.ald = icmp ult i32 %i.alc, 1000000000
  tail call void @llvm.assume(i1 %i.ald)
  %i.ale = icmp samesign ugt i32 %i.alc, %10
  br i1 %i.ale, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319: ; preds = %.noexc315.i318
  %i.alf = icmp sgt i64 %i.ala, %9
  br i1 %i.alf, label %.loopexit62.i303, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.i319, %.split42.i321, %.lr.ph.split.i314
  %i.alg = add i64 %i.akw, %.sroa.0426.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.alh = icmp ult i64 %i.alg, %.val63
  br i1 %i.alh, label %bb.gd, label %.invoke1759.i213

bb.gd:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit316.thread.i320
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1759.i213

.split680.us.invoke.i222:                         ; preds = %bb.ga, %bb.fw, %bb.ek, %bb.ei, %bb.fh, %bb.ff, %bb.es, %bb.eu, %bb.fp
  %i.ali = phi i64 [ %i.aat, %bb.ei ], [ %i.afz, %bb.fh ], [ %i.aie, %bb.fp ], [ %i.adg, %bb.es ], [ %i.yb, %bb.eu ], [ %i.afr, %bb.ff ], [ %i.abg, %bb.ek ], [ %i.aki, %bb.fw ], [ %i.akt, %bb.ga ]
  %i.alj = phi ptr [ @77, %bb.ei ], [ @89, %bb.fh ], [ @93, %bb.fp ], [ @82, %bb.es ], [ @84, %bb.eu ], [ @87, %bb.ff ], [ @79, %bb.ek ], [ @97, %bb.fw ], [ @99, %bb.ga ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ali, i64 noundef %i.yb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alj) #38
          to label %.split680.us.cont.i225 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i223

.split680.us.cont.i225:                           ; preds = %.split680.us.invoke.i222
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread506: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit289.i234, %.split34.i254, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit273.i, %.split32.i275, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit309.i294, %.split36.i302, %.loopexit62.i303
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i195, %bb.ea, %bb.eb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yg) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yg, i64 noundef %i.yb, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i155, %.loopexit62.i303, %.split.i341, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit62.i, %.split.i, %.split495, %bb.bb, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit145, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit258.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread506
  %.val68 = load ptr, ptr %i.ce, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.cf, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cc, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cd, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6393)
  %i.alk = sub nuw i64 %i.ca, %.sroa.0.0          ; 3 uses
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.ca, i64 %.sroa.0.0) ; 6 uses
  %i.all = sub nuw i64 %i.cb, %.sroa.0426.0       ; 2 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cb, i64 %.sroa.0426.0) ; 4 uses
  %i.alm = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %11 = trunc i64 %i.alm to i1                    ; 2 uses
  %i.aln = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.alo = load i64, ptr %i.aln, align 8, !alias.scope !6392, !noalias !6394, !noundef !5 ; 4 uses
  %i.alp = add i64 %i.alo, 1                      ; 5 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.alr = load i64, ptr %i.alq, align 8, !alias.scope !6392, !noalias !6394, !noundef !5 ; 16 uses
  %i.als = icmp ult i64 %i.alp, %i.alr
  br i1 %i.als, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.alt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.alu = load ptr, ptr %i.alt, align 8, !alias.scope !6392, !noalias !6394, !nonnull !5, !noundef !5 ; 7 uses
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.alp
  store i64 0, ptr %i.alv, align 8, !noalias !6395
  %i.alw = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.alx = load i64, ptr %i.alw, align 8, !alias.scope !6393, !noalias !6396, !noundef !5 ; 4 uses
  %i.aly = add i64 %i.alx, 1                      ; 5 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ama = load i64, ptr %i.alz, align 8, !alias.scope !6393, !noalias !6396, !noundef !5 ; 16 uses
  %i.amb = icmp ult i64 %i.aly, %i.ama
  br i1 %i.amb, label %bb.gg, label %bb.gh

bb.gf:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.alp, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !6395
  unreachable

bb.gg:                                            ; preds = %bb.ge
  %i.amc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8, !alias.scope !6393, !noalias !6396, !nonnull !5, !noundef !5 ; 7 uses
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.aly
  store i64 0, ptr %i.ame, align 8, !noalias !6395
  %i.amf = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.amg = lshr i64 %i.amf, 1
  %.sroa.047.0.i = sub nuw i64 %i.amf, %i.amg     ; 3 uses
  %i.amh = icmp ult i64 %i.alr, 1152921504606846976
  tail call void @llvm.assume(i1 %i.amh)
  %.not128.not.i = icmp ugt i64 %i.alr, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.gj, label %bb.gi, !prof !11

bb.gh:                                            ; preds = %bb.ge
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aly, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !6395
  unreachable

bb.gi:                                            ; preds = %bb.gg
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !6395
  unreachable

bb.gj:                                            ; preds = %bb.gg
  %i.ami = icmp ult i64 %i.ama, 1152921504606846976
  tail call void @llvm.assume(i1 %i.ami)
  %.not129.not.i = icmp samesign ugt i64 %i.ama, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph134.i, label %bb.gk, !prof !11

.lr.ph134.i:                                      ; preds = %bb.gj
  %i.amj = add i64 %i.alo, -1
  %i.amk = add i64 %i.alx, -1
  %i.aml = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.amm = add i64 %.sroa.037.0.i, %.sroa.0426.0  ; 2 uses
  br label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !6395
  unreachable

bb.gl:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, %.lr.ph134.i
  %.sroa.048.0133.i = phi i64 [ 0, %.lr.ph134.i ], [ %i.amn, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i ] ; 11 uses
  %i.amn = add nuw nsw i64 %.sroa.048.0133.i, 1
  br i1 %.not.i98, label %.lr.ph122.preheader.i, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.amo = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !6395 ; 2 uses
  %i.amp = extractvalue { i64, i32 } %i.amo, 0    ; 2 uses
  %i.amq = icmp eq i64 %i.amp, %9
  br i1 %i.amq, label %.split.i356, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344

.split.i356:                                      ; preds = %bb.gm
  %i.amr = extractvalue { i64, i32 } %i.amo, 1    ; 2 uses
  %i.ams = icmp ult i32 %i.amr, 1000000000
  tail call void @llvm.assume(i1 %i.ams)
  %i.amt = icmp samesign ugt i32 %i.amr, %10
  br i1 %i.amt, label %bb.ir, label %.lr.ph122.preheader.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344: ; preds = %bb.gm
  %i.amu = icmp sgt i64 %i.amp, %9
  br i1 %i.amu, label %bb.ir, label %.lr.ph122.preheader.i

.lr.ph122.preheader.i:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344, %.split.i356, %bb.gl
  %i.amv = sub nsw i64 0, %.sroa.048.0133.i       ; 6 uses
  %.pre221.i.a = sub i64 %i.alp, %.sroa.048.0133.i
  br label %.lr.ph122.i

.lr.ph122.i:                                      ; preds = %bb.il, %.lr.ph122.preheader.i
  %.sroa.7.0121.i = phi i64 [ %i.ana, %bb.il ], [ %.sroa.048.0133.i, %.lr.ph122.preheader.i ]
  %not..sroa.1118.0120.i = phi i64 [ 1, %bb.il ], [ 0, %.lr.ph122.preheader.i ]
  %i.amw = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0121.i, i64 %not..sroa.1118.0120.i) ; 2 uses
  %i.amx = extractvalue { i64, i1 } %i.amw, 1     ; 2 uses
  %i.amy = extractvalue { i64, i1 } %i.amw, 0     ; 9 uses
  %i.amz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.amy, i64 -1) ; 2 uses
  %i.ana = extractvalue { i64, i1 } %i.amz, 0     ; 2 uses
  %i.anb = extractvalue { i64, i1 } %i.amz, 1
  %i.anc = or i1 %i.amx, %i.anb
  %.not3.i.not.i = icmp slt i64 %i.amy, %i.amv
  %or.cond44.i = select i1 %i.amx, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond44.i, label %.lr.ph131.preheader.i, label %bb.gn

bb.gn:                                            ; preds = %.lr.ph122.i
  %i.and = icmp eq i64 %i.amy, %i.amv
  br i1 %i.and, label %._crit_edge216.i, label %bb.hq

.lr.ph131.preheader.i:                            ; preds = %bb.il, %.lr.ph122.i
  %.pre.i349 = sub i64 %i.aly, %.sroa.048.0133.i
  br label %.lr.ph131.i

.lr.ph131.i:                                      ; preds = %bb.hl, %.lr.ph131.preheader.i
  %not..sroa.1427.0130.i = phi i64 [ 1, %bb.hl ], [ 0, %.lr.ph131.preheader.i ]
  %.sroa.726.0129.i = phi i64 [ %i.ani, %bb.hl ], [ %.sroa.048.0133.i, %.lr.ph131.preheader.i ]
  %i.ane = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0129.i, i64 %not..sroa.1427.0130.i) ; 2 uses
  %i.anf = extractvalue { i64, i1 } %i.ane, 1     ; 2 uses
  %i.ang = extractvalue { i64, i1 } %i.ane, 0     ; 9 uses
  %i.anh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ang, i64 -1) ; 2 uses
  %i.ani = extractvalue { i64, i1 } %i.anh, 0     ; 2 uses
  %i.anj = extractvalue { i64, i1 } %i.anh, 1
  %i.ank = or i1 %i.anf, %i.anj
  %.not3.i153.not.i = icmp slt i64 %i.ang, %i.amv
  %or.cond46.i = select i1 %i.anf, i1 true, i1 %.not3.i153.not.i
  br i1 %or.cond46.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %bb.go

bb.go:                                            ; preds = %.lr.ph131.i
  %i.anl = icmp eq i64 %i.ang, %i.amv
  br i1 %i.anl, label %._crit_edge218.i, label %bb.gp

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i: ; preds = %bb.hl, %.lr.ph131.i
  %exitcond215.not.i = icmp eq i64 %.sroa.048.0133.i, %.sroa.047.0.i
  br i1 %exitcond215.not.i, label %bb.ir, label %bb.gl

bb.gp:                                            ; preds = %bb.go
  %.not130.i = icmp eq i64 %i.ang, %.sroa.048.0133.i
  %.pre219.i = add i64 %i.amk, %i.ang             ; 6 uses
  br i1 %.not130.i, label %._crit_edge217.i, label %bb.gq

._crit_edge218.i:                                 ; preds = %bb.go, %bb.gt
  %.pre-phi.i = phi i64 [ %i.anp, %bb.gt ], [ %.pre.i349, %bb.go ] ; 3 uses
  %i.anm = icmp ult i64 %.pre-phi.i, %i.ama
  br i1 %i.anm, label %bb.gy, label %bb.gz

._crit_edge217.i:                                 ; preds = %bb.gt, %bb.gp
  %i.ann = icmp ult i64 %.pre219.i, %i.ama
  br i1 %i.ann, label %bb.gv, label %bb.gw

bb.gq:                                            ; preds = %bb.gp
  %i.ano = icmp ult i64 %.pre219.i, %i.ama
  br i1 %i.ano, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.anp = add i64 %i.ang, %i.aly                 ; 4 uses
  %i.anq = icmp ult i64 %i.anp, %i.ama
  br i1 %i.anq, label %bb.gt, label %bb.gu

bb.gs:                                            ; preds = %bb.gq
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !6395
  unreachable

bb.gt:                                            ; preds = %bb.gr
  %i.anr = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre219.i
  %i.ans = load i64, ptr %i.anr, align 8, !noalias !6395, !noundef !5
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.anp
  %i.anu = load i64, ptr %i.ant, align 8, !noalias !6395, !noundef !5
  %i.anv = icmp ult i64 %i.ans, %i.anu
  br i1 %i.anv, label %._crit_edge218.i, label %._crit_edge217.i

bb.gu:                                            ; preds = %bb.gr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.anp, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !6395
  unreachable

bb.gv:                                            ; preds = %._crit_edge217.i
  %i.anw = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre219.i
  %i.anx = load i64, ptr %i.anw, align 8, !noalias !6395, !noundef !5
  %i.any = add i64 %i.anx, 1
  br label %bb.gx

bb.gw:                                            ; preds = %._crit_edge217.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre219.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !6395
  unreachable

bb.gx:                                            ; preds = %bb.gy, %bb.gv
  %.sroa.014.0.i = phi i64 [ %i.aod, %bb.gy ], [ %i.any, %bb.gv ] ; 5 uses
  %i.anz = sub i64 %.sroa.014.0.i, %i.ang         ; 4 uses
  %i.aoa = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.aob = icmp ult i64 %i.anz, %.sroa.037.0.i
  %or.cond.i347 = select i1 %i.aoa, i1 %i.aob, i1 false
  br i1 %or.cond.i347, label %bb.hb, label %bb.ha

bb.gy:                                            ; preds = %._crit_edge218.i
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %.pre-phi.i
  %i.aod = load i64, ptr %i.aoc, align 8, !noalias !6395, !noundef !5
  br label %bb.gx

bb.gz:                                            ; preds = %._crit_edge218.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !6395
  unreachable

bb.ha:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.gx
  %.sroa.020.0.i = phi i64 [ %i.aps, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %i.anz, %bb.gx ]
  %.sroa.014.1.i = phi i64 [ %i.apr, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.gx ] ; 3 uses
  %i.aoe = add i64 %i.ang, %i.alx                 ; 3 uses
  %i.aof = icmp ult i64 %i.aoe, %i.ama
  br i1 %i.aof, label %bb.hi, label %bb.hj

bb.hb:                                            ; preds = %bb.gx
  %i.aog = sub i64 %i.aml, %.sroa.014.0.i         ; 2 uses
  %i.aoh = sub i64 %i.amm, %i.anz                 ; 2 uses
  %i.aoi = sub i64 %i.aog, %.sroa.0.0
  %i.aoj = sub i64 %i.aoh, %.sroa.0426.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aoj, i64 %i.aoi) ; 3 uses
  %.not137.i = icmp eq i64 %..i.i, 0
  br i1 %.not137.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph125.i

.lr.ph125.i:                                      ; preds = %bb.hb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hh, %.lr.ph125.i
  %.sroa.0.0.i136124.i = phi i64 [ 0, %.lr.ph125.i ], [ %i.apq, %bb.hh ] ; 3 uses
  %i.aok = xor i64 %.sroa.0.0.i136124.i, -1       ; 2 uses
  %i.aol = add i64 %i.aoh, %i.aok                 ; 3 uses
  %i.aom = icmp ult i64 %i.aol, %.val71
  br i1 %i.aom, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aol, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !6397
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.hc
  %i.aon = add i64 %i.aog, %i.aok                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.aoo = icmp ult i64 %i.aon, %.val69
  br i1 %i.aoo, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i, label %bb.he

bb.he:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aon, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !6398
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.aop = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aol ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6400)
  %i.aoq = load ptr, ptr %i.aop, align 8, !alias.scope !6399, !noalias !6401, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aop, i64 8
  %i.aos = load i64, ptr %i.aor, align 8, !alias.scope !6399, !noalias !6401, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6402)
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24
  %i.aou = load i64, ptr %i.aot, align 8, !alias.scope !6402, !noalias !6403, !noundef !5
  %i.aov = sub i64 %i.aos, %i.aou                 ; 3 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aoq, i64 16
  %i.aox = load i64, ptr %i.aow, align 8, !alias.scope !6402, !noalias !6403, !noundef !5 ; 2 uses
  %i.aoy = icmp ult i64 %i.aov, %i.aox
  br i1 %i.aoy, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i, label %bb.hf

bb.hf:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aov, i64 noundef %i.aox, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6404
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit158.i
  %i.aoz = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aon ; 2 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoq, i64 8
  %i.apb = load ptr, ptr %i.apa, align 8, !alias.scope !6402, !noalias !6403, !nonnull !5, !noundef !5
  %i.apc = load ptr, ptr %i.aoz, align 8, !alias.scope !6400, !noalias !6405, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aoz, i64 8
  %i.ape = load i64, ptr %i.apd, align 8, !alias.scope !6400, !noalias !6405, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6406)
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apc, i64 24
  %i.apg = load i64, ptr %i.apf, align 8, !alias.scope !6406, !noalias !6407, !noundef !5
  %i.aph = sub i64 %i.ape, %i.apg                 ; 3 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.apc, i64 16
  %i.apj = load i64, ptr %i.api, align 8, !alias.scope !6406, !noalias !6407, !noundef !5 ; 2 uses
  %i.apk = icmp ult i64 %i.aph, %i.apj
  br i1 %i.apk, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, label %bb.hg

bb.hg:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aph, i64 noundef %i.apj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6408
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit139.i
  %i.apl = getelementptr inbounds nuw [4 x i8], ptr %i.apb, i64 %i.aov
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  %i.apn = load ptr, ptr %i.apm, align 8, !alias.scope !6406, !noalias !6407, !nonnull !5, !noundef !5
  %i.apo = getelementptr inbounds nuw [4 x i8], ptr %i.apn, i64 %i.aph
  %.val141.i.a = load i32, ptr %i.apl, align 4, !noalias !6395, !noundef !5
  %.val142.i = load i32, ptr %i.apo, align 4, !noalias !6395, !noundef !5
  %i.app = icmp eq i32 %.val141.i.a, %.val142.i
  br i1 %i.app, label %bb.hh, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i

bb.hh:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i
  %i.apq = add nuw i64 %.sroa.0.0.i136124.i, 1    ; 2 uses
  %exitcond214.not.i = icmp eq i64 %i.apq, %..i.i
  br i1 %exitcond214.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.hc

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.hh, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i, %bb.hb
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.hb ], [ %.sroa.0.0.i136124.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit138.i ], [ %..i.i, %bb.hh ] ; 2 uses
  %i.apr = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.aps = add i64 %.sroa.0.0.i136.lcssa.i, %i.anz
  br label %bb.ha

bb.hi:                                            ; preds = %bb.ha
  %i.apt = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.aoe
  store i64 %.sroa.014.1.i, ptr %i.apt, align 8, !noalias !6395
  br i1 %11, label %bb.hl, label %bb.hk

bb.hj:                                            ; preds = %bb.ha
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aoe, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37, !noalias !6395
  unreachable

bb.hk:                                            ; preds = %bb.hi
  %i.apu = sub i64 %i.ang, %i.alm                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.apu, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0133.i
  br i1 %.not131.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %bb.hn, %bb.hk, %bb.hi
  %.not.i152.i = icmp slt i64 %i.ani, %i.amv
  %or.cond45.i = select i1 %i.ank, i1 true, i1 %.not.i152.i
  br i1 %or.cond45.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i, label %.lr.ph131.i

bb.hm:                                            ; preds = %bb.hk
  %i.apv = sub i64 %i.alo, %i.apu                 ; 3 uses
  %i.apw = icmp ult i64 %i.apv, %i.alr
  br i1 %i.apw, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.apv
  %i.apy = load i64, ptr %i.apx, align 8, !noalias !6395, !noundef !5
  %i.apz = add i64 %i.apy, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.apz, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.hl, label %bb.hp

bb.ho:                                            ; preds = %bb.hm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.apv, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37, !noalias !6395
  unreachable

bb.hp:                                            ; preds = %bb.hn
  %i.aqa = sub i64 %i.aml, %.sroa.014.1.i
  %i.aqb = sub i64 %i.amm, %.sroa.020.0.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit

bb.hq:                                            ; preds = %bb.gn
  %.not133.i = icmp eq i64 %i.amy, %.sroa.048.0133.i
  %.pre223.i = add i64 %i.amj, %i.amy             ; 6 uses
  br i1 %.not133.i, label %._crit_edge.i345, label %bb.hr

._crit_edge216.i:                                 ; preds = %bb.gn, %bb.hu
  %.pre-phi222.i = phi i64 [ %i.aqf, %bb.hu ], [ %.pre221.i.a, %bb.gn ] ; 3 uses
  %i.aqc = icmp ult i64 %.pre-phi222.i, %i.alr
  br i1 %i.aqc, label %bb.hz, label %bb.ia

._crit_edge.i345:                                 ; preds = %bb.hu, %bb.hq
  %i.aqd = icmp ult i64 %.pre223.i, %i.alr
  br i1 %i.aqd, label %bb.hw, label %bb.hx

bb.hr:                                            ; preds = %bb.hq
  %i.aqe = icmp ult i64 %.pre223.i, %i.alr
  br i1 %i.aqe, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.aqf = add i64 %i.amy, %i.alp                 ; 4 uses
  %i.aqg = icmp ult i64 %i.aqf, %i.alr
  br i1 %i.aqg, label %bb.hu, label %bb.hv

bb.ht:                                            ; preds = %bb.hr
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37, !noalias !6395
  unreachable

bb.hu:                                            ; preds = %bb.hs
  %i.aqh = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %.pre223.i
  %i.aqi = load i64, ptr %i.aqh, align 8, !noalias !6395, !noundef !5
  %i.aqj = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.aqf
  %i.aqk = load i64, ptr %i.aqj, align 8, !noalias !6395, !noundef !5
  %i.aql = icmp ult i64 %i.aqi, %i.aqk
  br i1 %i.aql, label %._crit_edge216.i, label %._crit_edge.i345

bb.hv:                                            ; preds = %bb.hs
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aqf, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !6395
  unreachable

bb.hw:                                            ; preds = %._crit_edge.i345
  %i.aqm = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %.pre223.i
  %i.aqn = load i64, ptr %i.aqm, align 8, !noalias !6395, !noundef !5
  %i.aqo = add i64 %i.aqn, 1
  br label %bb.hy

bb.hx:                                            ; preds = %._crit_edge.i345
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre223.i, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37, !noalias !6395
  unreachable

bb.hy:                                            ; preds = %bb.hz, %bb.hw
  %.sroa.04.0.i346 = phi i64 [ %i.aqt, %bb.hz ], [ %i.aqo, %bb.hw ] ; 6 uses
  %i.aqp = sub i64 %.sroa.04.0.i346, %i.amy       ; 3 uses
  %i.aqq = icmp ult i64 %.sroa.04.0.i346, %i.alk
  %i.aqr = icmp ult i64 %i.aqp, %i.all
  %or.cond42.i = select i1 %i.aqq, i1 %i.aqr, i1 false
  br i1 %or.cond42.i, label %bb.ic, label %bb.ib

bb.hz:                                            ; preds = %._crit_edge216.i
  %i.aqs = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %.pre-phi222.i
  %i.aqt = load i64, ptr %i.aqs, align 8, !noalias !6395, !noundef !5
  br label %bb.hy

bb.ia:                                            ; preds = %._crit_edge216.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi222.i, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37, !noalias !6395
  unreachable

bb.ib:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, %bb.hy
  %.sroa.04.1.i = phi i64 [ %i.ase, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i346, %bb.hy ] ; 2 uses
  %i.aqu = add i64 %i.amy, %i.alo                 ; 3 uses
  %i.aqv = icmp ult i64 %i.aqu, %i.alr
  br i1 %i.aqv, label %bb.ij, label %bb.ik

bb.ic:                                            ; preds = %bb.hy
  %i.aqw = add i64 %.sroa.04.0.i346, %.sroa.0.0   ; 4 uses
  %i.aqx = add i64 %i.aqp, %.sroa.0426.0          ; 3 uses
  %i.aqy = sub i64 %i.ca, %i.aqw
  %i.aqz = sub i64 %i.cb, %i.aqx
  %..i159.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aqz, i64 %i.aqy) ; 3 uses
  %.not136.i = icmp eq i64 %..i159.i, 0
  br i1 %.not136.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %.lr.ph.i350

.lr.ph.i350:                                      ; preds = %bb.ic
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax212.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.aqw) ; 2 uses
  %i.ara = sub i64 %umax212.i, %i.aqw
  %invariant.gep.i351 = getelementptr [16 x i8], ptr %.val68, i64 %i.aqw
  br label %bb.id

bb.id:                                            ; preds = %bb.ii, %.lr.ph.i350
  %.sroa.0.0.i117.i = phi i64 [ 0, %.lr.ph.i350 ], [ %i.asd, %bb.ii ] ; 5 uses
  %i.arb = add nuw i64 %.sroa.0.0.i117.i, %i.aqx  ; 2 uses
  %i.arc = icmp ult i64 %i.arb, %.val71
  br i1 %i.arc, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i.a, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %umax.i352 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.aqx)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i352, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !6409
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i.a: ; preds = %bb.id
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i353 = icmp eq i64 %.sroa.0.0.i117.i, %i.ara
  br i1 %exitcond.not.i353, label %bb.if, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i

bb.if:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax212.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !6410
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i.a
  %i.ard = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.arb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6412)
  %i.are = load ptr, ptr %i.ard, align 8, !alias.scope !6411, !noalias !6413, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ard, i64 8
  %i.arg = load i64, ptr %i.arf, align 8, !alias.scope !6411, !noalias !6413, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6414)
  %i.arh = getelementptr inbounds nuw i8, ptr %i.are, i64 24
  %i.ari = load i64, ptr %i.arh, align 8, !alias.scope !6414, !noalias !6415, !noundef !5
  %i.arj = sub i64 %i.arg, %i.ari                 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.are, i64 16
  %i.arl = load i64, ptr %i.ark, align 8, !alias.scope !6414, !noalias !6415, !noundef !5 ; 2 uses
  %i.arm = icmp ult i64 %i.arj, %i.arl
  br i1 %i.arm, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i, label %bb.ig

bb.ig:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arj, i64 noundef %i.arl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6416
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBI_12OffsetLookupmEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit161.i
  %gep.i354 = getelementptr [16 x i8], ptr %invariant.gep.i351, i64 %.sroa.0.0.i117.i ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.are, i64 8
  %i.aro = load ptr, ptr %i.arn, align 8, !alias.scope !6414, !noalias !6415, !nonnull !5, !noundef !5
  %i.arp = load ptr, ptr %gep.i354, align 8, !alias.scope !6412, !noalias !6417, !nonnull !5, !align !9, !noundef !5 ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %gep.i354, i64 8
  %i.arr = load i64, ptr %i.arq, align 8, !alias.scope !6412, !noalias !6417, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6418)
  %i.ars = getelementptr inbounds nuw i8, ptr %i.arp, i64 24
  %i.art = load i64, ptr %i.ars, align 8, !alias.scope !6418, !noalias !6419, !noundef !5
  %i.aru = sub i64 %i.arr, %i.art                 ; 3 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arp, i64 16
  %i.arw = load i64, ptr %i.arv, align 8, !alias.scope !6418, !noalias !6419, !noundef !5 ; 2 uses
  %i.arx = icmp ult i64 %i.aru, %i.arw
  br i1 %i.arx, label %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, label %bb.ih

bb.ih:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aru, i64 noundef %i.arw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !6420
  unreachable

_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i: ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit137.i
  %i.ary = getelementptr inbounds nuw [4 x i8], ptr %i.aro, i64 %i.arj
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !alias.scope !6418, !noalias !6419, !nonnull !5, !noundef !5
  %i.asb = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.aru
  %.val.i355 = load i32, ptr %i.ary, align 4, !noalias !6395, !noundef !5
  %.val140.i = load i32, ptr %i.asb, align 4, !noalias !6395, !noundef !5
  %i.asc = icmp eq i32 %.val.i355, %.val140.i
  br i1 %i.asc, label %bb.ii, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i

bb.ii:                                            ; preds = %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i
  %i.asd = add nuw i64 %.sroa.0.0.i117.i, 1       ; 2 uses
  %exitcond213.not.i = icmp eq i64 %i.asd, %..i159.i
  br i1 %exitcond213.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i, label %bb.id

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1G_12OffsetLookupmEEEB16_EB6_.exit.i: ; preds = %bb.ii, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i, %bb.ic
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.ic ], [ %.sroa.0.0.i117.i, %_RNvXs3_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB9_.exit.i ], [ %..i159.i, %bb.ii ]
  %i.ase = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i346
  br label %bb.ib

bb.ij:                                            ; preds = %bb.ib
  %i.asf = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %i.aqu
  store i64 %.sroa.04.1.i, ptr %i.asf, align 8, !noalias !6395
  br i1 %11, label %bb.im, label %bb.il

bb.ik:                                            ; preds = %bb.ib
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aqu, i64 noundef %i.alr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37, !noalias !6395
  unreachable

bb.il:                                            ; preds = %bb.io, %bb.im, %bb.ij
  %.not.i151.i = icmp slt i64 %i.ana, %i.amv
  %or.cond43.i = select i1 %i.anc, i1 true, i1 %.not.i151.i
  br i1 %or.cond43.i, label %.lr.ph131.preheader.i, label %.lr.ph122.i

bb.im:                                            ; preds = %bb.ij
  %i.asg = sub i64 %i.amy, %i.alm                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.asg, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0133.i
  br i1 %.not134.not.i, label %bb.in, label %bb.il

bb.in:                                            ; preds = %bb.im
  %i.ash = sub i64 %i.alx, %i.asg                 ; 3 uses
  %i.asi = icmp ult i64 %i.ash, %i.ama
  br i1 %i.asi, label %bb.io, label %bb.ip

bb.io:                                            ; preds = %bb.in
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.amd, i64 %i.ash
  %i.ask = load i64, ptr %i.asj, align 8, !noalias !6395, !noundef !5
  %i.asl = add i64 %i.ask, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.asl, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.il, label %bb.iq

bb.ip:                                            ; preds = %bb.in
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ash, i64 noundef %i.ama, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37, !noalias !6395
  unreachable

bb.iq:                                            ; preds = %bb.io
  %i.asm = add i64 %.sroa.04.0.i346, %.sroa.0.0
  %i.asn = add i64 %i.aqp, %.sroa.0426.0
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1D_12OffsetLookupmEEEB13_EB6_.exit: ; preds = %bb.iq, %bb.hp
  %.sroa.7.0 = phi i64 [ %i.asn, %bb.iq ], [ %i.aqb, %bb.hp ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.asm, %bb.iq ], [ %i.aqa, %bb.hp ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0426.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1s_12OffsetLookupmEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2i_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0, i64 noundef %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0, i64 noundef %i.cb, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503

bb.ir:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i344, %.split.i356, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit157.thread.i
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i357 = load i64, ptr %0, align 8, !alias.scope !6421
  %i.aso = trunc nuw i64 %.sroa.0.0.copyload.i357 to i1
  br i1 %i.aso, label %bb.is, label %bb.it

bb.is:                                            ; preds = %bb.ir
  %.sroa.6.0.copyload.i362 = load i64, ptr %.sroa.6.0..sroa_idx.i133, align 8, !alias.scope !6421
  %i.asp = add i64 %.sroa.6.0.copyload.i362, %i.alk
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit363

bb.it:                                            ; preds = %bb.ir
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6421
  store i64 %.sroa.0426.0, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !6421
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit363

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB7_5utils12OffsetLookupmEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit363: ; preds = %bb.is, %bb.it
  %.sink.i361 = phi i64 [ %i.asp, %bb.is ], [ %i.alk, %bb.it ]
  store i64 1, ptr %0, align 8, !alias.scope !6421
  store i64 %.sink.i361, ptr %.sroa.6.0..sroa_idx.i133, align 8, !alias.scope !6421
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i364 = load i64, ptr %i.cg, align 8, !alias.scope !6422
  %.sroa.52.0.copyload.i366 = load i64, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6422
  %.sroa.6.0.copyload.i368 = load i64, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6422
  %.sroa.7.0.copyload.i370 = load i64, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6422
  %i.asq = trunc nuw i64 %.sroa.01.0.copyload.i364 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i371 = select i1 %i.asq, i64 %.sroa.52.0.copyload.i366, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i372 = select i1 %i.asq, i64 %.sroa.6.0.copyload.i368, i64 %.sroa.0426.0
  %i.asr = select i1 %i.asq, i64 %.sroa.7.0.copyload.i370, i64 0
  %.sroa.5.sroa.6.0.i373 = add i64 %i.asr, %i.all
  store i64 1, ptr %i.cg, align 8, !alias.scope !6422
  store i64 %.sroa.5.sroa.0.0.i371, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6422
  store i64 %.sroa.5.sroa.5.0.i372, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6422
  store i64 %.sroa.5.sroa.6.0.i373, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6422
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503

.thread:                                          ; preds = %bb.av
  %i.ass = sub nuw i64 %i.cb, %.sroa.0426.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB4_5utils12OffsetLookupmEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i374 = load i64, ptr %i.cg, align 8, !alias.scope !6423
  %.sroa.52.0.copyload.i376 = load i64, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6423
  %.sroa.6.0.copyload.i378 = load i64, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6423
  %.sroa.7.0.copyload.i380 = load i64, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6423
  %i.ast = trunc nuw i64 %.sroa.01.0.copyload.i374 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i381 = select i1 %i.ast, i64 %.sroa.52.0.copyload.i376, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i382 = select i1 %i.ast, i64 %.sroa.6.0.copyload.i378, i64 %.sroa.0426.0
  %i.asu = select i1 %i.ast, i64 %.sroa.7.0.copyload.i380, i64 0
  %.sroa.5.sroa.6.0.i383 = add i64 %i.ass, %i.asu
  store i64 1, ptr %i.cg, align 8, !alias.scope !6423
  store i64 %.sroa.5.sroa.0.0.i381, ptr %.sroa.52.0..sroa_idx.i124, align 8, !alias.scope !6423
  store i64 %.sroa.5.sroa.5.0.i382, ptr %.sroa.6.0..sroa_idx.i126, align 8, !alias.scope !6423
  store i64 %.sroa.5.sroa.6.0.i383, ptr %.sroa.7.0..sroa_idx.i128, align 8, !alias.scope !6423
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503

bb.iu:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503
  store i64 0, ptr %0, align 8, !alias.scope !6424
  store i64 0, ptr %i.cg, align 8, !alias.scope !6424
  %.sroa.01.0.copyload.i384 = load i64, ptr %i.ch, align 8, !alias.scope !6425
  %.sroa.52.0.copyload.i386 = load i64, ptr %.sroa.52.0..sroa_idx.i114, align 8, !alias.scope !6425
  %.sroa.6.0.copyload.i388 = load i64, ptr %.sroa.6.0..sroa_idx.i116, align 8, !alias.scope !6425
  %.sroa.7.0.copyload.i390 = load i64, ptr %.sroa.7.0..sroa_idx.i118, align 8, !alias.scope !6425
  %i.asv = trunc nuw i64 %.sroa.01.0.copyload.i384 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i391 = select i1 %i.asv, i64 %.sroa.52.0.copyload.i386, i64 %i.ca
  %.sroa.5.sroa.5.0.i392 = select i1 %i.asv, i64 %.sroa.6.0.copyload.i388, i64 %i.cb
  %i.asw = select i1 %i.asv, i64 %.sroa.7.0.copyload.i390, i64 0
  %.sroa.5.sroa.6.0.i393 = add i64 %i.asw, %.sroa.0.0.i88
  store i64 1, ptr %i.ch, align 8, !alias.scope !6425
  store i64 %.sroa.5.sroa.0.0.i391, ptr %.sroa.52.0..sroa_idx.i114, align 8, !alias.scope !6425
  store i64 %.sroa.5.sroa.5.0.i392, ptr %.sroa.6.0..sroa_idx.i116, align 8, !alias.scope !6425
  store i64 %.sroa.5.sroa.6.0.i393, ptr %.sroa.7.0..sroa_idx.i118, align 8, !alias.scope !6425
  br label %bb.iv

bb.iv:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtB1N_12OffsetLookupmEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2E_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread503, %bb.iu
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %5, i64 noundef %6, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %7, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %8, i64 %9, i32 noundef range(i32 -1, 1000000000) %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6806)
  %i.a = icmp uge i64 %2, %3
  %i.b = icmp uge i64 %5, %6
  %or.cond.i72 = or i1 %i.a, %i.b
  br i1 %or.cond.i72, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i.i = sub nuw i64 %6, %5
  %spec.select.i.i4.i.i.i = sub nuw i64 %3, %2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i.i, i64 %spec.select.i.i.i.i.i) ; 3 uses
  %.not.i73 = icmp eq i64 %..i.i.i.i, 0
  br i1 %.not.i73, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtB2_10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val8.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !6806, !noalias !6807, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val6.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !6805, !noalias !6806 ; 2 uses
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !6805, !noalias !6806, !nonnull !5
  %.val7.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !6806, !noalias !6805, !nonnull !5
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.val6.i.i.i.i.i, i64 %2) ; 2 uses
  %umax20.i = tail call i64 @llvm.umax.i64(i64 %.val8.i.i.i.i.i, i64 %5) ; 2 uses
  %i.g = sub nuw i64 %umax20.i, %5
  %i.h = sub i64 %umax.i, %2
  %invariant.gep.i = getelementptr [16 x i8], ptr %.val7.i.i.i.i.i, i64 %5
  %invariant.gep29.i = getelementptr [16 x i8], ptr %.val.i.i.i.i.i, i64 %2
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i.i.i.i
  %.sroa.01.041.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.i, %bb.p ] ; 7 uses
  %i.i = add nuw i64 %.sroa.01.041.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %.sroa.01.041.i.i.i.i, %i.g
  br i1 %exitcond.not.i, label %bb.d, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax20.i, i64 noundef range(i64 0, 576460752303423488) %.val8.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #37, !noalias !6808
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i: ; preds = %bb.c
  %exitcond21.not.i = icmp eq i64 %.sroa.01.041.i.i.i.i, %i.h
  br i1 %exitcond21.not.i, label %bb.e, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, 576460752303423488) %.val6.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @152) #37, !noalias !6809
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i.i.i.i.i
  %gep.i = getelementptr [16 x i8], ptr %invariant.gep.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  %gep30.i = getelementptr [16 x i8], ptr %invariant.gep29.i, i64 %.sroa.01.041.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6810)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6811)
  %i.j = load ptr, ptr %gep.i, align 8, !alias.scope !6810, !noalias !6812, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %gep.i, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6810, !noalias !6812, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6814), !noalias !6815
  %i.m = load i64, ptr %i.j, align 8, !range !7, !alias.scope !6816, !noalias !6817, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6816, !noalias !6817, !noundef !5
  %i.q = icmp ult i64 %i.l, %i.p                  ; 2 uses
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.i, label %bb.j

bb.g:                                             ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit9.i.i.i.i.i
  br i1 %i.q, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6816, !noalias !6817, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.l ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
end_hunk_2
begin_hunk_3_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_:bb.a
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 8
  %i.apf = load i64, ptr %i.ape, align 8, !alias.scope !7047, !noalias !7049, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7051)
  %i.apg = load i64, ptr %i.apd, align 8, !range !7, !alias.scope !7052, !noalias !7053, !noundef !5
  %i.aph = trunc nuw i64 %i.apg to i1
  %i.api = getelementptr inbounds nuw i8, ptr %i.apd, i64 24
  %i.apj = load i64, ptr %i.api, align 8, !alias.scope !7052, !noalias !7053, !noundef !5
  %i.apk = icmp ult i64 %i.apf, %i.apj            ; 2 uses
  br i1 %i.aph, label %bb.jj, label %bb.jh

bb.jh:                                            ; preds = %bb.jg
  br i1 %i.apk, label %bb.ji, label %.invoke1092.i236

bb.ji:                                            ; preds = %bb.jh
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.apm = load ptr, ptr %i.apl, align 8, !alias.scope !7052, !noalias !7053, !nonnull !5, !noundef !5
  %i.apn = getelementptr inbounds nuw [16 x i8], ptr %i.apm, i64 %i.apf ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 8
  br label %.noexc.us.i380

bb.jj:                                            ; preds = %bb.jg
  br i1 %i.apk, label %bb.jk, label %.invoke1092.i236

bb.jk:                                            ; preds = %bb.jj
  %i.app = getelementptr inbounds nuw i8, ptr %i.apd, i64 16
  %i.apq = load ptr, ptr %i.app, align 8, !alias.scope !7052, !noalias !7053, !nonnull !5, !noundef !5
  %i.apr = getelementptr inbounds nuw [24 x i8], ptr %i.apq, i64 %i.apf ; 2 uses
  %i.aps = getelementptr i8, ptr %i.apr, i64 8
  %i.apt = getelementptr i8, ptr %i.apr, i64 16
  br label %.noexc.us.i380

.noexc.us.i380:                                   ; preds = %bb.jk, %bb.ji
  %.sroa.5.1.i.in.i344.us.i381 = phi ptr [ %i.apt, %bb.jk ], [ %i.apo, %bb.ji ]
  %.sroa.0.1.i.in.i345.us.i382 = phi ptr [ %i.aps, %bb.jk ], [ %i.apn, %bb.ji ]
  %.sroa.0.1.i.i346.us.i383 = load ptr, ptr %.sroa.0.1.i.in.i345.us.i382, align 8, !noalias !7054, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i347.us.i384 = load i64, ptr %.sroa.5.1.i.in.i344.us.i381, align 8, !noalias !7054, !noundef !5 ; 2 uses
  %i.apu = load ptr, ptr %i.aoo, align 8, !alias.scope !7048, !noalias !7055, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.apv = load i64, ptr %i.aop, align 8, !alias.scope !7048, !noalias !7055, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7057)
  %i.apw = load i64, ptr %i.apu, align 8, !range !7, !alias.scope !7058, !noalias !7059, !noundef !5
  %i.apx = trunc nuw i64 %i.apw to i1
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apu, i64 24
  %i.apz = load i64, ptr %i.apy, align 8, !alias.scope !7058, !noalias !7059, !noundef !5
  %i.aqa = icmp ult i64 %i.apv, %i.apz            ; 2 uses
  br i1 %i.apx, label %bb.jn, label %bb.jl

bb.jl:                                            ; preds = %.noexc.us.i380
  br i1 %i.aqa, label %bb.jm, label %.invoke1092.i236

bb.jm:                                            ; preds = %bb.jl
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.aqc = load ptr, ptr %i.aqb, align 8, !alias.scope !7058, !noalias !7059, !nonnull !5, !noundef !5
  %i.aqd = getelementptr inbounds nuw [16 x i8], ptr %i.aqc, i64 %i.apv ; 2 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqd, i64 8
  br label %.noexc181.us.i385

bb.jn:                                            ; preds = %.noexc.us.i380
  br i1 %i.aqa, label %bb.jo, label %.invoke1092.i236

bb.jo:                                            ; preds = %bb.jn
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apu, i64 16
  %i.aqg = load ptr, ptr %i.aqf, align 8, !alias.scope !7058, !noalias !7059, !nonnull !5, !noundef !5
  %i.aqh = getelementptr inbounds nuw [24 x i8], ptr %i.aqg, i64 %i.apv ; 2 uses
  %i.aqi = getelementptr i8, ptr %i.aqh, i64 8
  %i.aqj = getelementptr i8, ptr %i.aqh, i64 16
  br label %.noexc181.us.i385

.noexc181.us.i385:                                ; preds = %bb.jo, %bb.jm
  %.sroa.5.1.i.in.i350.us.i386 = phi ptr [ %i.aqj, %bb.jo ], [ %i.aqe, %bb.jm ]
  %.sroa.0.1.i.in.i351.us.i387 = phi ptr [ %i.aqi, %bb.jo ], [ %i.aqd, %bb.jm ]
  %.sroa.5.1.i.i353.us.i388 = load i64, ptr %.sroa.5.1.i.in.i350.us.i386, align 8, !noalias !7060, !noundef !5
  %i.aqk = icmp eq i64 %.sroa.5.1.i.i347.us.i384, %.sroa.5.1.i.i353.us.i388
  br i1 %i.aqk, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395: ; preds = %.noexc181.us.i385
  %.sroa.0.1.i.i352.us.i396 = load ptr, ptr %.sroa.0.1.i.in.i351.us.i387, align 8, !noalias !7060, !nonnull !5, !noundef !5
  %bcmp.i357.us.i397 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i346.us.i383, ptr nonnull readonly %.sroa.0.1.i.i352.us.i396, i64 %.sroa.5.1.i.i347.us.i384), !alias.scope !7061
  %i.aql = icmp eq i32 %bcmp.i357.us.i397, 0
  br i1 %i.aql, label %bb.jr, label %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389

_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389: ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395, %.noexc181.us.i385
  %i.aqm = add i64 %i.aoq, %i.aol                 ; 3 uses
  %i.aqn = icmp ult i64 %i.aqm, %i.aca
  br i1 %i.aqn, label %bb.jp, label %.invoke1088.i248

bb.jp:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.thread.us.i389
  %i.aqo = add i64 %.sroa.0105.0459.us.i373, %i.aok ; 3 uses
  %i.aqp = icmp ult i64 %i.aqo, %i.aca
  br i1 %i.aqp, label %bb.jq, label %.split477.us.invoke.i250

bb.jq:                                            ; preds = %bb.jp
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqm
  %i.aqr = load i8, ptr %i.aqq, align 1, !noundef !5
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqo
  %i.aqt = load i8, ptr %i.aqs, align 1, !noundef !5
  %..i.us.i390 = tail call noundef i8 @llvm.umax.i8(i8 %i.aqt, i8 %i.aqr)
  br label %bb.jt

bb.jr:                                            ; preds = %_RNvXs0_NtNtCsdftwklc2oBO_7similar10algorithms5utilsINtB5_10UniqueItemINtNtB9_4text12TextDiffSideeEENtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eqB9_.exit.us.i395
  %i.aqu = add i64 %.sroa.0105.0459.us.i373, %i.aol ; 3 uses
  %i.aqv = icmp ult i64 %i.aqu, %i.aca
  br i1 %i.aqv, label %bb.js, label %.invoke1088.i248

bb.js:                                            ; preds = %bb.jr
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqu
  %i.aqx = load i8, ptr %i.aqw, align 1, !noundef !5
  %i.aqy = add i8 %i.aqx, 1
  br label %bb.jt

bb.jt:                                            ; preds = %bb.js, %bb.jq
  %.sroa.04.0.us.i391 = phi i8 [ %i.aqy, %bb.js ], [ %..i.us.i390, %bb.jq ]
  %i.aqz = add i64 %i.aoq, %i.aok                 ; 3 uses
  %i.ara = icmp ult i64 %i.aqz, %i.aca
  br i1 %i.ara, label %bb.ju, label %.split477.us.invoke.i250

bb.ju:                                            ; preds = %bb.jt
  %i.arb = getelementptr inbounds nuw i8, ptr %i.acf, i64 %i.aqz
  store i8 %.sroa.04.0.us.i391, ptr %i.arb, align 1
  %.not168.us.i392 = icmp eq i64 %i.aoq, 0
  br i1 %.not168.us.i392, label %..loopexit77_crit_edge.split.us.i393, label %.lr.ph.split.us.i372

.loopexit.split-lp.loopexit.split.us.i375:        ; preds = %bb.jf
  %lpad.loopexit78.us.i376 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i190

..loopexit77_crit_edge.split.us.i393:             ; preds = %bb.ju
  %.not.i394 = icmp eq i64 %i.acg, 0
  br i1 %.not.i394, label %.lr.ph515.i219, label %.lr.ph491.split.i356

.lr.ph.split.i364:                                ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit227.thread.i362
  %i.arc = add i64 %.sroa.088.0.i179, -1          ; 2 uses
  %i.ard = and i64 %i.arc, 1023
  %i.are = icmp ne i64 %i.ard, 0
  %brmerge59.i365 = or i1 %.not.i106, %i.are
  br i1 %brmerge59.i365, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370, label %bb.jv

bb.jv:                                            ; preds = %.lr.ph.split.i364
  %i.arf = invoke { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now()
          to label %.noexc338.i368 unwind label %.loopexit.split-lp.loopexit.split.i366 ; 2 uses

.noexc338.i368:                                   ; preds = %bb.jv
  %i.arg = extractvalue { i64, i32 } %i.arf, 0    ; 2 uses
  %i.arh = icmp eq i64 %i.arg, %9
  br i1 %i.arh, label %.split46.i371, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369

.split46.i371:                                    ; preds = %.noexc338.i368
  %i.ari = extractvalue { i64, i32 } %i.arf, 1    ; 2 uses
  %i.arj = icmp ult i32 %i.ari, 1000000000
  tail call void @llvm.assume(i1 %i.arj)
  %i.ark = icmp samesign ugt i32 %i.ari, %10
  br i1 %i.ark, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369: ; preds = %.noexc338.i368
  %i.arl = icmp sgt i64 %i.arg, %9
  br i1 %i.arl, label %.loopexit73.i353, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.i369, %.split46.i371, %.lr.ph.split.i364
  %i.arm = add i64 %i.arc, %.sroa.0490.0          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val62) ]
  %i.arn = icmp ult i64 %i.arm, %.val63
  br i1 %i.arn, label %bb.jw, label %.invoke1090.i234

bb.jw:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit339.thread.i370
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val60) ]
  br label %.invoke1090.i234

.split477.us.invoke.i250:                         ; preds = %bb.jt, %bb.jp, %bb.hd, %bb.ha, %bb.im, %bb.ik, %bb.hr, %bb.ht, %bb.jb
  %i.aro = phi i64 [ %i.aff, %bb.ha ], [ %i.alh, %bb.im ], [ %i.anz, %bb.jb ], [ %i.aid, %bb.hr ], [ %i.aca, %bb.ht ], [ %i.akz, %bb.ik ], [ %i.afs, %bb.hd ], [ %i.aqo, %bb.jp ], [ %i.aqz, %bb.jt ]
  %i.arp = phi ptr [ @77, %bb.ha ], [ @89, %bb.im ], [ @93, %bb.jb ], [ @82, %bb.hr ], [ @84, %bb.ht ], [ @87, %bb.ik ], [ @79, %bb.hd ], [ @97, %bb.jp ], [ @99, %bb.jt ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aro, i64 noundef %i.aca, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.arp) #38
          to label %.split477.us.cont.i253 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i251

.split477.us.cont.i253:                           ; preds = %.split477.us.invoke.i250
  unreachable

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit282.i262, %.split36.i287, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit251.i, %.split33.i309, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit317.i331, %.split39.i352, %.loopexit73.i353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit: ; preds = %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit.i216, %bb.gm, %bb.gn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acf) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.acf, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 1) #36
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread: ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161.thread, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i176, %.loopexit73.i353, %.split.i401, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i, %.loopexit73.i, %.split.i, %.split561, %bb.cg, %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit161, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdftwklc2oBO_7similar.exit229.sink.split.i.thread, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread572
  %.val68 = load ptr, ptr %i.da, align 8          ; 4 uses
  %.val69 = load i64, ptr %i.db, align 8          ; 4 uses
  %.val70 = load ptr, ptr %i.cy, align 8          ; 4 uses
  %.val71 = load i64, ptr %i.cz, align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7063)
  %i.arq = sub nuw i64 %i.cw, %.sroa.0.0          ; 3 uses
  %.sroa.025.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cw, i64 %.sroa.0.0) ; 6 uses
  %i.arr = sub nuw i64 %i.cx, %.sroa.0490.0       ; 2 uses
  %.sroa.037.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.cx, i64 %.sroa.0490.0) ; 4 uses
  %i.ars = sub i64 %.sroa.025.0.i, %.sroa.037.0.i ; 3 uses
  %11 = trunc i64 %i.ars to i1                    ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.aru = load i64, ptr %i.art, align 8, !alias.scope !7062, !noalias !7064, !noundef !5 ; 4 uses
  %i.arv = add i64 %i.aru, 1                      ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.arx = load i64, ptr %i.arw, align 8, !alias.scope !7062, !noalias !7064, !noundef !5 ; 16 uses
  %i.ary = icmp ult i64 %i.arv, %i.arx
  br i1 %i.ary, label %bb.jx, label %bb.jy

bb.jx:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  %i.arz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.asa = load ptr, ptr %i.arz, align 8, !alias.scope !7062, !noalias !7064, !nonnull !5, !noundef !5 ; 7 uses
  %i.asb = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.arv
  store i64 0, ptr %i.asb, align 8, !noalias !7065
  %i.asc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.asd = load i64, ptr %i.asc, align 8, !alias.scope !7063, !noalias !7066, !noundef !5 ; 4 uses
  %i.ase = add i64 %i.asd, 1                      ; 5 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.asg = load i64, ptr %i.asf, align 8, !alias.scope !7063, !noalias !7066, !noundef !5 ; 16 uses
  %i.ash = icmp ult i64 %i.ase, %i.asg
  br i1 %i.ash, label %bb.jz, label %bb.ka

bb.jy:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.arv, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #37, !noalias !7065
  unreachable

bb.jz:                                            ; preds = %bb.jx
  %i.asi = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.asj = load ptr, ptr %i.asi, align 8, !alias.scope !7063, !noalias !7066, !nonnull !5, !noundef !5 ; 7 uses
  %i.ask = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.ase
  store i64 0, ptr %i.ask, align 8, !noalias !7065
  %i.asl = add i64 %.sroa.025.0.i, %.sroa.037.0.i ; 2 uses
  %i.asm = lshr i64 %i.asl, 1
  %.sroa.047.0.i = sub nuw i64 %i.asl, %i.asm     ; 3 uses
  %i.asn = icmp ult i64 %i.arx, 1152921504606846976
  tail call void @llvm.assume(i1 %i.asn)
  %.not128.not.i = icmp ugt i64 %i.arx, %.sroa.047.0.i
  br i1 %.not128.not.i, label %bb.kc, label %bb.kb, !prof !11

bb.ka:                                            ; preds = %bb.jx
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ase, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #37, !noalias !7065
  unreachable

bb.kb:                                            ; preds = %bb.jz
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #37, !noalias !7065
  unreachable

bb.kc:                                            ; preds = %bb.jz
  %i.aso = icmp ult i64 %i.asg, 1152921504606846976
  tail call void @llvm.assume(i1 %i.aso)
  %.not129.not.i = icmp samesign ugt i64 %i.asg, %.sroa.047.0.i
  br i1 %.not129.not.i, label %.lr.ph126.i, label %bb.kd, !prof !11

.lr.ph126.i:                                      ; preds = %bb.kc
  %i.asp = add i64 %i.aru, -1
  %i.asq = add i64 %i.asd, -1
  %i.asr = add i64 %.sroa.025.0.i, %.sroa.0.0     ; 2 uses
  %i.ass = add i64 %.sroa.037.0.i, %.sroa.0490.0  ; 2 uses
  br label %bb.ke

bb.kd:                                            ; preds = %bb.kc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #37, !noalias !7065
  unreachable

bb.ke:                                            ; preds = %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, %.lr.ph126.i
  %.sroa.048.0125.i = phi i64 [ 0, %.lr.ph126.i ], [ %i.ast, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i ] ; 11 uses
  %i.ast = add nuw nsw i64 %.sroa.048.0125.i, 1
  br i1 %.not.i106, label %.lr.ph113.preheader.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.asu = tail call { i64, i32 } @_RNvMNtCsaKJjC64KgbL_3std4timeNtB2_7Instant3now(), !noalias !7065 ; 2 uses
  %i.asv = extractvalue { i64, i32 } %i.asu, 0    ; 2 uses
  %i.asw = icmp eq i64 %i.asv, %9
  br i1 %i.asw, label %.split.i420, label %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404

.split.i420:                                      ; preds = %bb.kf
  %i.asx = extractvalue { i64, i32 } %i.asu, 1    ; 2 uses
  %i.asy = icmp ult i32 %i.asx, 1000000000
  tail call void @llvm.assume(i1 %i.asy)
  %i.asz = icmp samesign ugt i32 %i.asx, %10
  br i1 %i.asz, label %bb.na, label %.lr.ph113.preheader.i

_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404: ; preds = %bb.kf
  %i.ata = icmp sgt i64 %i.asv, %9
  br i1 %i.ata, label %bb.na, label %.lr.ph113.preheader.i

.lr.ph113.preheader.i:                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404, %.split.i420, %bb.ke
  %i.atb = sub nsw i64 0, %.sroa.048.0125.i       ; 6 uses
  %.pre192.i = sub i64 %i.arv, %.sroa.048.0125.i
  br label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %bb.mu, %.lr.ph113.preheader.i
  %.sroa.7.0112.i = phi i64 [ %i.atg, %bb.mu ], [ %.sroa.048.0125.i, %.lr.ph113.preheader.i ]
  %not..sroa.1118.0111.i = phi i64 [ 1, %bb.mu ], [ 0, %.lr.ph113.preheader.i ]
  %i.atc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.7.0112.i, i64 %not..sroa.1118.0111.i) ; 2 uses
  %i.atd = extractvalue { i64, i1 } %i.atc, 1     ; 2 uses
  %i.ate = extractvalue { i64, i1 } %i.atc, 0     ; 9 uses
  %i.atf = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ate, i64 -1) ; 2 uses
  %i.atg = extractvalue { i64, i1 } %i.atf, 0     ; 2 uses
  %i.ath = extractvalue { i64, i1 } %i.atf, 1
  %i.ati = or i1 %i.atd, %i.ath
  %.not3.i.not.i = icmp slt i64 %i.ate, %i.atb
  %or.cond46.i = select i1 %i.atd, i1 true, i1 %.not3.i.not.i
  br i1 %or.cond46.i, label %.lr.ph123.preheader.i, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph113.i
  %i.atj = icmp eq i64 %i.ate, %i.atb
  br i1 %i.atj, label %._crit_edge187.i, label %bb.lr

.lr.ph123.preheader.i:                            ; preds = %bb.mu, %.lr.ph113.i
  %.pre.i = sub i64 %i.ase, %.sroa.048.0125.i
  br label %.lr.ph123.i

.lr.ph123.i:                                      ; preds = %bb.lm, %.lr.ph123.preheader.i
  %not..sroa.1427.0122.i = phi i64 [ 1, %bb.lm ], [ 0, %.lr.ph123.preheader.i ]
  %.sroa.726.0121.i = phi i64 [ %i.ato, %bb.lm ], [ %.sroa.048.0125.i, %.lr.ph123.preheader.i ]
  %i.atk = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %.sroa.726.0121.i, i64 %not..sroa.1427.0122.i) ; 2 uses
  %i.atl = extractvalue { i64, i1 } %i.atk, 1     ; 2 uses
  %i.atm = extractvalue { i64, i1 } %i.atk, 0     ; 9 uses
  %i.atn = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.atm, i64 -1) ; 2 uses
  %i.ato = extractvalue { i64, i1 } %i.atn, 0     ; 2 uses
  %i.atp = extractvalue { i64, i1 } %i.atn, 1
  %i.atq = or i1 %i.atl, %i.atp
  %.not3.i146.not.i = icmp slt i64 %i.atm, %i.atb
  %or.cond48.i = select i1 %i.atl, i1 true, i1 %.not3.i146.not.i
  br i1 %or.cond48.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, label %bb.kh

bb.kh:                                            ; preds = %.lr.ph123.i
  %i.atr = icmp eq i64 %i.atm, %i.atb
  br i1 %i.atr, label %._crit_edge189.i, label %bb.ki

_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i: ; preds = %bb.lm, %.lr.ph123.i
  %exitcond186.not.i = icmp eq i64 %.sroa.048.0125.i, %.sroa.047.0.i
  br i1 %exitcond186.not.i, label %bb.na, label %bb.ke

bb.ki:                                            ; preds = %bb.kh
  %.not130.i = icmp eq i64 %i.atm, %.sroa.048.0125.i
  %.pre190.i = add i64 %i.asq, %i.atm             ; 6 uses
  br i1 %.not130.i, label %._crit_edge188.i, label %bb.kj

._crit_edge189.i:                                 ; preds = %bb.kh, %bb.km
  %.pre-phi.i = phi i64 [ %i.atv, %bb.km ], [ %.pre.i, %bb.kh ] ; 3 uses
  %i.ats = icmp ult i64 %.pre-phi.i, %i.asg
  br i1 %i.ats, label %bb.kr, label %bb.ks

._crit_edge188.i:                                 ; preds = %bb.km, %bb.ki
  %i.att = icmp ult i64 %.pre190.i, %i.asg
  br i1 %i.att, label %bb.ko, label %bb.kp

bb.kj:                                            ; preds = %bb.ki
  %i.atu = icmp ult i64 %.pre190.i, %i.asg
  br i1 %i.atu, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  %i.atv = add i64 %i.atm, %i.ase                 ; 4 uses
  %i.atw = icmp ult i64 %i.atv, %i.asg
  br i1 %i.atw, label %bb.km, label %bb.kn

bb.kl:                                            ; preds = %bb.kj
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #37, !noalias !7065
  unreachable

bb.km:                                            ; preds = %bb.kk
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre190.i
  %i.aty = load i64, ptr %i.atx, align 8, !noalias !7065, !noundef !5
  %i.atz = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.atv
  %i.aua = load i64, ptr %i.atz, align 8, !noalias !7065, !noundef !5
  %i.aub = icmp ult i64 %i.aty, %i.aua
  br i1 %i.aub, label %._crit_edge189.i, label %._crit_edge188.i

bb.kn:                                            ; preds = %bb.kk
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.atv, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #37, !noalias !7065
  unreachable

bb.ko:                                            ; preds = %._crit_edge188.i
  %i.auc = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre190.i
  %i.aud = load i64, ptr %i.auc, align 8, !noalias !7065, !noundef !5
  %i.aue = add i64 %i.aud, 1
  br label %bb.kq

bb.kp:                                            ; preds = %._crit_edge188.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre190.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #37, !noalias !7065
  unreachable

bb.kq:                                            ; preds = %bb.kr, %bb.ko
  %.sroa.014.0.i = phi i64 [ %i.auj, %bb.kr ], [ %i.aue, %bb.ko ] ; 5 uses
  %i.auf = sub i64 %.sroa.014.0.i, %i.atm         ; 4 uses
  %i.aug = icmp ult i64 %.sroa.014.0.i, %.sroa.025.0.i
  %i.auh = icmp ult i64 %i.auf, %.sroa.037.0.i
  %or.cond.i407 = select i1 %i.aug, i1 %i.auh, i1 false
  br i1 %or.cond.i407, label %bb.ku, label %bb.kt

bb.kr:                                            ; preds = %._crit_edge189.i
  %i.aui = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %.pre-phi.i
  %i.auj = load i64, ptr %i.aui, align 8, !noalias !7065, !noundef !5
  br label %bb.kq

bb.ks:                                            ; preds = %._crit_edge189.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi.i, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #37, !noalias !7065
  unreachable

bb.kt:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.kq
  %.sroa.020.0.i = phi i64 [ %i.awj, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %i.auf, %bb.kq ]
  %.sroa.014.1.i = phi i64 [ %i.awi, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.014.0.i, %bb.kq ] ; 3 uses
  %i.auk = add i64 %i.atm, %i.asd                 ; 3 uses
  %i.aul = icmp ult i64 %i.auk, %i.asg
  br i1 %i.aul, label %bb.lj, label %bb.lk

bb.ku:                                            ; preds = %bb.kq
  %i.aum = sub i64 %i.asr, %.sroa.014.0.i         ; 2 uses
  %i.aun = sub i64 %i.ass, %i.auf                 ; 2 uses
  %i.auo = sub i64 %i.aum, %.sroa.0.0
  %i.aup = sub i64 %i.aun, %.sroa.0490.0
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.aup, i64 %i.auo) ; 3 uses
  %.not128.i = icmp eq i64 %..i.i, 0
  br i1 %.not128.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph116.i

.lr.ph116.i:                                      ; preds = %bb.ku
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  br label %bb.kv

bb.kv:                                            ; preds = %bb.li, %.lr.ph116.i
  %.sroa.0.0.i136115.i = phi i64 [ 0, %.lr.ph116.i ], [ %i.awh, %bb.li ] ; 4 uses
  %i.auq = xor i64 %.sroa.0.0.i136115.i, -1       ; 2 uses
  %i.aur = add i64 %i.aun, %i.auq                 ; 3 uses
  %i.aus = icmp ult i64 %i.aur, %.val71
  br i1 %i.aus, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aur, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #37, !noalias !7067
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i: ; preds = %bb.kv
  %i.aut = add i64 %i.aum, %i.auq                 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %i.auu = icmp ult i64 %i.aut, %.val69
  br i1 %i.auu, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i, label %bb.kx

bb.kx:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aut, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #37, !noalias !7068
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit.i
  %i.auv = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.aur ; 2 uses
  %i.auw = getelementptr inbounds nuw [16 x i8], ptr %.val68, i64 %i.aut ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7070)
  %i.aux = load ptr, ptr %i.auv, align 8, !alias.scope !7069, !noalias !7071, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  %i.auz = load i64, ptr %i.auy, align 8, !alias.scope !7069, !noalias !7071, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7073), !noalias !7074
  %i.ava = load i64, ptr %i.aux, align 8, !range !7, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.avb = trunc nuw i64 %i.ava to i1
  %i.avc = getelementptr inbounds nuw i8, ptr %i.aux, i64 24
  %i.avd = load i64, ptr %i.avc, align 8, !alias.scope !7075, !noalias !7076, !noundef !5
  %i.ave = icmp ult i64 %i.auz, %i.avd            ; 2 uses
  br i1 %i.avb, label %bb.ky, label %bb.kz

bb.ky:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.ave, label %bb.lb, label %bb.lc

bb.kz:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit151.i
  br i1 %i.ave, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.avf = getelementptr inbounds nuw i8, ptr %i.aux, i64 16
  %i.avg = load ptr, ptr %i.avf, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.avh = getelementptr inbounds nuw [16 x i8], ptr %i.avg, i64 %i.auz ; 2 uses
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lb:                                            ; preds = %bb.ky
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aux, i64 16
  %i.avk = load ptr, ptr %i.avj, align 8, !alias.scope !7075, !noalias !7076, !nonnull !5, !noundef !5
  %i.avl = getelementptr inbounds nuw [24 x i8], ptr %i.avk, i64 %i.auz ; 2 uses
  %i.avm = getelementptr i8, ptr %i.avl, i64 8
  %i.avn = getelementptr i8, ptr %i.avl, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409

bb.lc:                                            ; preds = %bb.kz, %bb.ky
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7077
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409: ; preds = %bb.lb, %bb.la
  %.sroa.5.1.i.in.i.i410 = phi ptr [ %i.avn, %bb.lb ], [ %i.avi, %bb.la ]
  %.sroa.0.1.i.in.i.i411 = phi ptr [ %i.avm, %bb.lb ], [ %i.avh, %bb.la ]
  %.sroa.0.1.i.i.i412 = load ptr, ptr %.sroa.0.1.i.in.i.i411, align 8, !noalias !7078, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i413 = load i64, ptr %.sroa.5.1.i.in.i.i410, align 8, !noalias !7078, !noundef !5 ; 2 uses
  %i.avo = load ptr, ptr %i.auw, align 8, !alias.scope !7070, !noalias !7079, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %i.auw, i64 8
  %i.avq = load i64, ptr %i.avp, align 8, !alias.scope !7070, !noalias !7079, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7080)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7081), !noalias !7074
  %i.avr = load i64, ptr %i.avo, align 8, !range !7, !alias.scope !7082, !noalias !7083, !noundef !5
  %i.avs = trunc nuw i64 %i.avr to i1
  %i.avt = getelementptr inbounds nuw i8, ptr %i.avo, i64 24
  %i.avu = load i64, ptr %i.avt, align 8, !alias.scope !7082, !noalias !7083, !noundef !5
  %i.avv = icmp ult i64 %i.avq, %i.avu            ; 2 uses
  br i1 %i.avs, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avv, label %bb.lg, label %bb.lh

bb.le:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i409
  br i1 %i.avv, label %bb.lf, label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  %i.avx = load ptr, ptr %i.avw, align 8, !alias.scope !7082, !noalias !7083, !nonnull !5, !noundef !5
  %i.avy = getelementptr inbounds nuw [16 x i8], ptr %i.avx, i64 %i.avq ; 2 uses
  %i.avz = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lg:                                            ; preds = %bb.ld
  %i.awa = getelementptr inbounds nuw i8, ptr %i.avo, i64 16
  %i.awb = load ptr, ptr %i.awa, align 8, !alias.scope !7082, !noalias !7083, !nonnull !5, !noundef !5
  %i.awc = getelementptr inbounds nuw [24 x i8], ptr %i.awb, i64 %i.avq ; 2 uses
  %i.awd = getelementptr i8, ptr %i.awc, i64 8
  %i.awe = getelementptr i8, ptr %i.awc, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i

bb.lh:                                            ; preds = %bb.le, %bb.ld
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7084
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i: ; preds = %bb.lg, %bb.lf
  %.sroa.5.1.i.in.i152.i = phi ptr [ %i.awe, %bb.lg ], [ %i.avz, %bb.lf ]
  %.sroa.0.1.i.in.i153.i = phi ptr [ %i.awd, %bb.lg ], [ %i.avy, %bb.lf ]
  %.sroa.5.1.i.i155.i = load i64, ptr %.sroa.5.1.i.in.i152.i, align 8, !noalias !7085, !noundef !5
  %i.awf = icmp eq i64 %.sroa.5.1.i.i.i413, %.sroa.5.1.i.i155.i
  br i1 %i.awf, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i
  %.sroa.0.1.i.i154.i = load ptr, ptr %.sroa.0.1.i.in.i153.i, align 8, !noalias !7085, !nonnull !5, !noundef !5
  %bcmp.i.i414 = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i412, ptr nonnull readonly %.sroa.0.1.i.i154.i, i64 %.sroa.5.1.i.i.i413), !alias.scope !7086, !noalias !7087
  %i.awg = icmp eq i32 %bcmp.i.i414, 0
  br i1 %i.awg, label %bb.li, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.li:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i
  %i.awh = add nuw i64 %.sroa.0.0.i136115.i, 1    ; 2 uses
  %exitcond185.not.i = icmp eq i64 %i.awh, %..i.i
  br i1 %exitcond185.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.kv

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_suffix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.li, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i, %bb.ku
  %.sroa.0.0.i136.lcssa.i = phi i64 [ 0, %bb.ku ], [ %.sroa.0.0.i136115.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i ], [ %..i.i, %bb.li ], [ %.sroa.0.0.i136115.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit156.i ] ; 2 uses
  %i.awi = add i64 %.sroa.0.0.i136.lcssa.i, %.sroa.014.0.i
  %i.awj = add i64 %.sroa.0.0.i136.lcssa.i, %i.auf
  br label %bb.kt

bb.lj:                                            ; preds = %bb.kt
  %i.awk = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.auk
  store i64 %.sroa.014.1.i, ptr %i.awk, align 8, !noalias !7065
  br i1 %11, label %bb.lm, label %bb.ll

bb.lk:                                            ; preds = %bb.kt
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.auk, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #37, !noalias !7065
  unreachable

bb.ll:                                            ; preds = %bb.lj
  %i.awl = sub i64 %i.atm, %i.ars                 ; 2 uses
  %.sroa.024.0.i = tail call i64 @llvm.abs.i64(i64 %i.awl, i1 false)
  %.not131.i = icmp sgt i64 %.sroa.024.0.i, %.sroa.048.0125.i
  br i1 %.not131.i, label %bb.lm, label %bb.ln

bb.lm:                                            ; preds = %bb.lo, %bb.ll, %bb.lj
  %.not.i145.i = icmp slt i64 %i.ato, %i.atb
  %or.cond47.i = select i1 %i.atq, i1 true, i1 %.not.i145.i
  br i1 %or.cond47.i, label %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i, label %.lr.ph123.i

bb.ln:                                            ; preds = %bb.ll
  %i.awm = sub i64 %i.aru, %i.awl                 ; 3 uses
  %i.awn = icmp ult i64 %i.awm, %i.arx
  br i1 %i.awn, label %bb.lo, label %bb.lp

bb.lo:                                            ; preds = %bb.ln
  %i.awo = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.awm
  %i.awp = load i64, ptr %i.awo, align 8, !noalias !7065, !noundef !5
  %i.awq = add i64 %i.awp, %.sroa.014.1.i
  %.not132.i = icmp ult i64 %i.awq, %.sroa.025.0.i
  br i1 %.not132.i, label %bb.lm, label %bb.lq

bb.lp:                                            ; preds = %bb.ln
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.awm, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #37, !noalias !7065
  unreachable

bb.lq:                                            ; preds = %bb.lo
  %i.awr = sub i64 %i.asr, %.sroa.014.1.i
  %i.aws = sub i64 %i.ass, %.sroa.020.0.i
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

bb.lr:                                            ; preds = %bb.kg
  %.not133.i = icmp eq i64 %i.ate, %.sroa.048.0125.i
  %.pre194.i = add i64 %i.asp, %i.ate             ; 6 uses
  br i1 %.not133.i, label %._crit_edge.i405, label %bb.ls

._crit_edge187.i:                                 ; preds = %bb.kg, %bb.lv
  %.pre-phi193.i = phi i64 [ %i.aww, %bb.lv ], [ %.pre192.i, %bb.kg ] ; 3 uses
  %i.awt = icmp ult i64 %.pre-phi193.i, %i.arx
  br i1 %i.awt, label %bb.ma, label %bb.mb

._crit_edge.i405:                                 ; preds = %bb.lv, %bb.lr
  %i.awu = icmp ult i64 %.pre194.i, %i.arx
  br i1 %i.awu, label %bb.lx, label %bb.ly

bb.ls:                                            ; preds = %bb.lr
  %i.awv = icmp ult i64 %.pre194.i, %i.arx
  br i1 %i.awv, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.aww = add i64 %i.ate, %i.arv                 ; 4 uses
  %i.awx = icmp ult i64 %i.aww, %i.arx
  br i1 %i.awx, label %bb.lv, label %bb.lw

bb.lu:                                            ; preds = %bb.ls
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre194.i, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #37, !noalias !7065
  unreachable

bb.lv:                                            ; preds = %bb.lt
  %i.awy = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %.pre194.i
  %i.awz = load i64, ptr %i.awy, align 8, !noalias !7065, !noundef !5
  %i.axa = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.aww
  %i.axb = load i64, ptr %i.axa, align 8, !noalias !7065, !noundef !5
  %i.axc = icmp ult i64 %i.awz, %i.axb
  br i1 %i.axc, label %._crit_edge187.i, label %._crit_edge.i405

bb.lw:                                            ; preds = %bb.lt
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.aww, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !7065
  unreachable

bb.lx:                                            ; preds = %._crit_edge.i405
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %.pre194.i
  %i.axe = load i64, ptr %i.axd, align 8, !noalias !7065, !noundef !5
  %i.axf = add i64 %i.axe, 1
  br label %bb.lz

bb.ly:                                            ; preds = %._crit_edge.i405
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre194.i, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #37, !noalias !7065
  unreachable

bb.lz:                                            ; preds = %bb.ma, %bb.lx
  %.sroa.04.0.i406 = phi i64 [ %i.axk, %bb.ma ], [ %i.axf, %bb.lx ] ; 6 uses
  %i.axg = sub i64 %.sroa.04.0.i406, %i.ate       ; 3 uses
  %i.axh = icmp ult i64 %.sroa.04.0.i406, %i.arq
  %i.axi = icmp ult i64 %i.axg, %i.arr
  %or.cond44.i = select i1 %i.axh, i1 %i.axi, i1 false
  br i1 %or.cond44.i, label %bb.md, label %bb.mc

bb.ma:                                            ; preds = %._crit_edge187.i
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %.pre-phi193.i
  %i.axk = load i64, ptr %i.axj, align 8, !noalias !7065, !noundef !5
  br label %bb.lz

bb.mb:                                            ; preds = %._crit_edge187.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.pre-phi193.i, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #37, !noalias !7065
  unreachable

bb.mc:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, %bb.lz
  %.sroa.04.1.i = phi i64 [ %i.azg, %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i ], [ %.sroa.04.0.i406, %bb.lz ] ; 2 uses
  %i.axl = add i64 %i.ate, %i.aru                 ; 3 uses
  %i.axm = icmp ult i64 %i.axl, %i.arx
  br i1 %i.axm, label %bb.ms, label %bb.mt

bb.md:                                            ; preds = %bb.lz
  %i.axn = add i64 %.sroa.04.0.i406, %.sroa.0.0   ; 4 uses
  %i.axo = add i64 %i.axg, %.sroa.0490.0          ; 3 uses
  %i.axp = sub i64 %i.cw, %i.axn
  %i.axq = sub i64 %i.cx, %i.axo
  %..i158.i = tail call noundef i64 @llvm.umin.i64(i64 %i.axq, i64 %i.axp) ; 3 uses
  %.not127.i = icmp eq i64 %..i158.i, 0
  br i1 %.not127.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %.lr.ph.i415

.lr.ph.i415:                                      ; preds = %bb.md
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val70) ]
  %umax183.i = tail call i64 @llvm.umax.i64(i64 %.val69, i64 %i.axn) ; 2 uses
  %i.axr = sub i64 %umax183.i, %i.axn
  %invariant.gep.i416 = getelementptr [16 x i8], ptr %.val68, i64 %i.axn
  br label %bb.me

bb.me:                                            ; preds = %bb.mr, %.lr.ph.i415
  %.sroa.0.0.i107.i = phi i64 [ 0, %.lr.ph.i415 ], [ %i.azf, %bb.mr ] ; 6 uses
  %i.axs = add nuw i64 %.sroa.0.0.i107.i, %i.axo  ; 2 uses
  %i.axt = icmp ult i64 %i.axs, %.val71
  br i1 %i.axt, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i.a, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %umax.i417 = tail call i64 @llvm.umax.i64(i64 %.val71, i64 %i.axo)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax.i417, i64 noundef range(i64 0, 576460752303423488) %.val71, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #37, !noalias !7088
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i.a: ; preds = %bb.me
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val68) ]
  %exitcond.not.i418 = icmp eq i64 %.sroa.0.0.i107.i, %i.axr
  br i1 %exitcond.not.i418, label %bb.mg, label %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i

bb.mg:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %umax183.i, i64 noundef range(i64 0, 576460752303423488) %.val69, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #37, !noalias !7089
  unreachable

_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i: ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit159.i.a
  %i.axu = getelementptr inbounds nuw [16 x i8], ptr %.val70, i64 %i.axs ; 2 uses
  %gep.i419 = getelementptr [16 x i8], ptr %invariant.gep.i416, i64 %.sroa.0.0.i107.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7090)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7091)
  %i.axv = load ptr, ptr %i.axu, align 8, !alias.scope !7090, !noalias !7092, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axx = load i64, ptr %i.axw, align 8, !alias.scope !7090, !noalias !7092, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7093)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7094), !noalias !7095
  %i.axy = load i64, ptr %i.axv, align 8, !range !7, !alias.scope !7096, !noalias !7097, !noundef !5
  %i.axz = trunc nuw i64 %i.axy to i1
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axv, i64 24
  %i.ayb = load i64, ptr %i.aya, align 8, !alias.scope !7096, !noalias !7097, !noundef !5
  %i.ayc = icmp ult i64 %i.axx, %i.ayb            ; 2 uses
  br i1 %i.axz, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  br i1 %i.ayc, label %bb.mk, label %bb.ml

bb.mi:                                            ; preds = %_RNvXsd_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBM_4text12TextDiffSideeEEEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexBM_.exit160.i
  br i1 %i.ayc, label %bb.mj, label %bb.ml

bb.mj:                                            ; preds = %bb.mi
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.aye = load ptr, ptr %i.ayd, align 8, !alias.scope !7096, !noalias !7097, !nonnull !5, !noundef !5
  %i.ayf = getelementptr inbounds nuw [16 x i8], ptr %i.aye, i64 %i.axx ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i

bb.mk:                                            ; preds = %bb.mh
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axv, i64 16
  %i.ayi = load ptr, ptr %i.ayh, align 8, !alias.scope !7096, !noalias !7097, !nonnull !5, !noundef !5
  %i.ayj = getelementptr inbounds nuw [24 x i8], ptr %i.ayi, i64 %i.axx ; 2 uses
  %i.ayk = getelementptr i8, ptr %i.ayj, i64 8
  %i.ayl = getelementptr i8, ptr %i.ayj, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i

bb.ml:                                            ; preds = %bb.mi, %bb.mh
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7098
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i: ; preds = %bb.mk, %bb.mj
  %.sroa.5.1.i.in.i161.i = phi ptr [ %i.ayl, %bb.mk ], [ %i.ayg, %bb.mj ]
  %.sroa.0.1.i.in.i162.i = phi ptr [ %i.ayk, %bb.mk ], [ %i.ayf, %bb.mj ]
  %.sroa.0.1.i.i163.i = load ptr, ptr %.sroa.0.1.i.in.i162.i, align 8, !noalias !7099, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i164.i = load i64, ptr %.sroa.5.1.i.in.i161.i, align 8, !noalias !7099, !noundef !5 ; 2 uses
  %i.aym = load ptr, ptr %gep.i419, align 8, !alias.scope !7091, !noalias !7100, !nonnull !5, !align !9, !noundef !5 ; 4 uses
  %i.ayn = getelementptr inbounds nuw i8, ptr %gep.i419, i64 8
  %i.ayo = load i64, ptr %i.ayn, align 8, !alias.scope !7091, !noalias !7100, !noundef !5 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7102), !noalias !7095
  %i.ayp = load i64, ptr %i.aym, align 8, !range !7, !alias.scope !7103, !noalias !7104, !noundef !5
  %i.ayq = trunc nuw i64 %i.ayp to i1
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.aym, i64 24
  %i.ays = load i64, ptr %i.ayr, align 8, !alias.scope !7103, !noalias !7104, !noundef !5
  %i.ayt = icmp ult i64 %i.ayo, %i.ays            ; 2 uses
  br i1 %i.ayq, label %bb.mm, label %bb.mn

bb.mm:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i
  br i1 %i.ayt, label %bb.mp, label %bb.mq

bb.mn:                                            ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit165.i
  br i1 %i.ayt, label %bb.mo, label %bb.mq

bb.mo:                                            ; preds = %bb.mn
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.aym, i64 16
  %i.ayv = load ptr, ptr %i.ayu, align 8, !alias.scope !7103, !noalias !7104, !nonnull !5, !noundef !5
  %i.ayw = getelementptr inbounds nuw [16 x i8], ptr %i.ayv, i64 %i.ayo ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.ayw, i64 8
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i

bb.mp:                                            ; preds = %bb.mm
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aym, i64 16
  %i.ayz = load ptr, ptr %i.ayy, align 8, !alias.scope !7103, !noalias !7104, !nonnull !5, !noundef !5
  %i.aza = getelementptr inbounds nuw [24 x i8], ptr %i.ayz, i64 %i.ayo ; 2 uses
  %i.azb = getelementptr i8, ptr %i.aza, i64 8
  %i.azc = getelementptr i8, ptr %i.aza, i64 16
  br label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i

bb.mq:                                            ; preds = %bb.mn, %bb.mm
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @203, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @143) #37, !noalias !7105
  unreachable

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i: ; preds = %bb.mp, %bb.mo
  %.sroa.5.1.i.in.i166.i = phi ptr [ %i.azc, %bb.mp ], [ %i.ayx, %bb.mo ]
  %.sroa.0.1.i.in.i167.i = phi ptr [ %i.azb, %bb.mp ], [ %i.ayw, %bb.mo ]
  %.sroa.5.1.i.i169.i = load i64, ptr %.sroa.5.1.i.in.i166.i, align 8, !noalias !7106, !noundef !5
  %i.azd = icmp eq i64 %.sroa.5.1.i.i164.i, %.sroa.5.1.i.i169.i
  br i1 %i.azd, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i
  %.sroa.0.1.i.i168.i = load ptr, ptr %.sroa.0.1.i.in.i167.i, align 8, !noalias !7106, !nonnull !5, !noundef !5
  %bcmp.i172.i = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i163.i, ptr nonnull readonly %.sroa.0.1.i.i168.i, i64 %.sroa.5.1.i.i164.i), !alias.scope !7107, !noalias !7108
  %i.aze = icmp eq i32 %bcmp.i172.i, 0
  br i1 %i.aze, label %bb.mr, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i

bb.mr:                                            ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i
  %i.azf = add nuw i64 %.sroa.0.0.i107.i, 1       ; 2 uses
  %exitcond184.not.i = icmp eq i64 %i.azf, %..i158.i
  br i1 %exitcond184.not.i, label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i, label %bb.me

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers20common_prefix_len_atINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB16_EB6_.exit.i: ; preds = %bb.mr, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i, %bb.md
  %.sroa.0.0.i.lcssa.i = phi i64 [ 0, %bb.md ], [ %.sroa.0.0.i107.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit173.i ], [ %..i158.i, %bb.mr ], [ %.sroa.0.0.i107.i, %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit170.i ]
  %i.azg = add i64 %.sroa.0.0.i.lcssa.i, %.sroa.04.0.i406
  br label %bb.mc

bb.ms:                                            ; preds = %bb.mc
  %i.azh = getelementptr inbounds nuw [8 x i8], ptr %i.asa, i64 %i.axl
  store i64 %.sroa.04.1.i, ptr %i.azh, align 8, !noalias !7065
  br i1 %11, label %bb.mv, label %bb.mu

bb.mt:                                            ; preds = %bb.mc
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.axl, i64 noundef %i.arx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #37, !noalias !7065
  unreachable

bb.mu:                                            ; preds = %bb.mx, %bb.mv, %bb.ms
  %.not.i144.i = icmp slt i64 %i.atg, %i.atb
  %or.cond45.i = select i1 %i.ati, i1 true, i1 %.not.i144.i
  br i1 %or.cond45.i, label %.lr.ph123.preheader.i, label %.lr.ph113.i

bb.mv:                                            ; preds = %bb.ms
  %i.azi = sub i64 %i.ate, %i.ars                 ; 2 uses
  %.sroa.010.0.i = tail call i64 @llvm.abs.i64(i64 %i.azi, i1 false)
  %.not134.not.i = icmp slt i64 %.sroa.010.0.i, %.sroa.048.0125.i
  br i1 %.not134.not.i, label %bb.mw, label %bb.mu

bb.mw:                                            ; preds = %bb.mv
  %i.azj = sub i64 %i.asd, %i.azi                 ; 3 uses
  %i.azk = icmp ult i64 %i.azj, %i.asg
  br i1 %i.azk, label %bb.mx, label %bb.my

bb.mx:                                            ; preds = %bb.mw
  %i.azl = getelementptr inbounds nuw [8 x i8], ptr %i.asj, i64 %i.azj
  %i.azm = load i64, ptr %i.azl, align 8, !noalias !7065, !noundef !5
  %i.azn = add i64 %i.azm, %.sroa.04.1.i
  %.not135.i = icmp ult i64 %i.azn, %.sroa.025.0.i
  br i1 %.not135.i, label %bb.mu, label %bb.mz

bb.my:                                            ; preds = %bb.mw
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.azj, i64 noundef %i.asg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #37, !noalias !7065
  unreachable

bb.mz:                                            ; preds = %bb.mx
  %i.azo = add i64 %.sroa.04.0.i406, %.sroa.0.0
  %i.azp = add i64 %i.axg, %.sroa.0490.0
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit

_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers17find_middle_snakeINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB13_EB6_.exit: ; preds = %bb.mz, %bb.lq
  %.sroa.7.0 = phi i64 [ %i.azp, %bb.mz ], [ %i.aws, %bb.lq ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %i.azo, %bb.mz ], [ %i.awr, %bb.lq ] ; 2 uses
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.0490.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  tail call fastcc void @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers7conquerINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEBS_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB1P_B1P_INtNtB4_7compact7CompactB1P_B1P_IB2o_NtNtB4_7capture7CaptureEEEEEB6_(ptr noalias nofree noundef align 8 dereferenceable(208) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %.sroa.5.0, i64 noundef %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i64 noundef %.sroa.7.0, i64 noundef %i.cx, ptr noalias nofree noundef align 8 dereferenceable(32) %7, ptr noalias nofree noundef align 8 dereferenceable(32) %8, i64 %9, i32 noundef %10)
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

bb.na:                                            ; preds = %_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded.exit.i404, %.split.i420, %_RNvXse_NtNtCsj6eKBz9Db1c_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveiENtNtNtB7_6traits12double_ended19DoubleEndedIterator8nth_backCsdftwklc2oBO_7similar.exit150.thread.i
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.0.0.copyload.i421 = load i64, ptr %0, align 8, !alias.scope !7109
  %i.azq = trunc nuw i64 %.sroa.0.0.copyload.i421 to i1
  br i1 %i.azq, label %bb.nb, label %bb.nc

bb.nb:                                            ; preds = %bb.na
  %.sroa.6.0.copyload.i426 = load i64, ptr %.sroa.6.0..sroa_idx.i149, align 8, !alias.scope !7109
  %i.azr = add i64 %.sroa.6.0.copyload.i426, %i.arq
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427

bb.nc:                                            ; preds = %bb.na
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7109
  store i64 %.sroa.0490.0, ptr %.sroa.7.0..sroa_idx.i150, align 8, !alias.scope !7109
  br label %_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427

_RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB5_7ReplaceINtNtB7_8patience8PatienceINtNtB9_4text12TextDiffSideeEB1t_INtNtB7_7compact7CompactB1t_B1t_IBQ_NtNtB7_7capture7CaptureEEEENtNtB7_4hook8DiffHook6deleteB9_.exit427: ; preds = %bb.nb, %bb.nc
  %.sink.i425 = phi i64 [ %i.azr, %bb.nb ], [ %i.arq, %bb.nc ]
  store i64 1, ptr %0, align 8, !alias.scope !7109
  store i64 %.sink.i425, ptr %.sroa.6.0..sroa_idx.i149, align 8, !alias.scope !7109
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i428 = load i64, ptr %i.dc, align 8, !alias.scope !7110
  %.sroa.52.0.copyload.i430 = load i64, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7110
  %.sroa.6.0.copyload.i432 = load i64, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7110
  %.sroa.7.0.copyload.i434 = load i64, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7110
  %i.azs = trunc nuw i64 %.sroa.01.0.copyload.i428 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i435 = select i1 %i.azs, i64 %.sroa.52.0.copyload.i430, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i436 = select i1 %i.azs, i64 %.sroa.6.0.copyload.i432, i64 %.sroa.0490.0
  %i.azt = select i1 %i.azs, i64 %.sroa.7.0.copyload.i434, i64 0
  %.sroa.5.sroa.6.0.i437 = add i64 %i.azt, %i.arr
  store i64 1, ptr %i.dc, align 8, !alias.scope !7110
  store i64 %.sroa.5.sroa.0.0.i435, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7110
  store i64 %.sroa.5.sroa.5.0.i436, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7110
  store i64 %.sroa.5.sroa.6.0.i437, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7110
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

.thread:                                          ; preds = %bb.ca
  %i.azu = sub nuw i64 %i.cx, %.sroa.0490.0
  tail call fastcc void @_RNvMNtNtCsdftwklc2oBO_7similar10algorithms7replaceINtB2_7ReplaceINtNtB4_8patience8PatienceINtNtB6_4text12TextDiffSideeEB1q_INtNtB4_7compact7CompactB1q_B1q_IBN_NtNtB4_7capture7CaptureEEEE8flush_eqB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %0)
  %.sroa.01.0.copyload.i438 = load i64, ptr %i.dc, align 8, !alias.scope !7111
  %.sroa.52.0.copyload.i440 = load i64, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7111
  %.sroa.6.0.copyload.i442 = load i64, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7111
  %.sroa.7.0.copyload.i444 = load i64, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7111
  %i.azv = trunc nuw i64 %.sroa.01.0.copyload.i438 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i445 = select i1 %i.azv, i64 %.sroa.52.0.copyload.i440, i64 %.sroa.0.0
  %.sroa.5.sroa.5.0.i446 = select i1 %i.azv, i64 %.sroa.6.0.copyload.i442, i64 %.sroa.0490.0
  %i.azw = select i1 %i.azv, i64 %.sroa.7.0.copyload.i444, i64 0
  %.sroa.5.sroa.6.0.i447 = add i64 %i.azu, %i.azw
  store i64 1, ptr %i.dc, align 8, !alias.scope !7111
  store i64 %.sroa.5.sroa.0.0.i445, ptr %.sroa.52.0..sroa_idx.i140, align 8, !alias.scope !7111
  store i64 %.sroa.5.sroa.5.0.i446, ptr %.sroa.6.0..sroa_idx.i142, align 8, !alias.scope !7111
  store i64 %.sroa.5.sroa.6.0.i447, ptr %.sroa.7.0..sroa_idx.i144, align 8, !alias.scope !7111
  br label %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569

bb.nd:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569
  store i64 0, ptr %0, align 8, !alias.scope !7112
  store i64 0, ptr %i.dc, align 8, !alias.scope !7112
  %.sroa.01.0.copyload.i448 = load i64, ptr %i.dd, align 8, !alias.scope !7113
  %.sroa.52.0.copyload.i450 = load i64, ptr %.sroa.52.0..sroa_idx.i130, align 8, !alias.scope !7113
  %.sroa.6.0.copyload.i452 = load i64, ptr %.sroa.6.0..sroa_idx.i132, align 8, !alias.scope !7113
  %.sroa.7.0.copyload.i454 = load i64, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !7113
  %i.azx = trunc nuw i64 %.sroa.01.0.copyload.i448 to i1 ; 3 uses
  %.sroa.5.sroa.0.0.i455 = select i1 %i.azx, i64 %.sroa.52.0.copyload.i450, i64 %i.cw
  %.sroa.5.sroa.5.0.i456 = select i1 %i.azx, i64 %.sroa.6.0.copyload.i452, i64 %i.cx
  %i.azy = select i1 %i.azx, i64 %.sroa.7.0.copyload.i454, i64 0
  %.sroa.5.sroa.6.0.i457 = add i64 %i.azy, %.sroa.0.0.i93
  store i64 1, ptr %i.dd, align 8, !alias.scope !7113
  store i64 %.sroa.5.sroa.0.0.i455, ptr %.sroa.52.0..sroa_idx.i130, align 8, !alias.scope !7113
  store i64 %.sroa.5.sroa.5.0.i456, ptr %.sroa.6.0..sroa_idx.i132, align 8, !alias.scope !7113
  store i64 %.sroa.5.sroa.6.0.i457, ptr %.sroa.7.0..sroa_idx.i134, align 8, !alias.scope !7113
  br label %bb.ne

bb.ne:                                            ; preds = %_RINvNtNtCsdftwklc2oBO_7similar10algorithms5myers27maybe_emit_small_side_exactINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_5utils10UniqueItemINtNtB6_4text12TextDiffSideeEEEB1d_INtNtB4_7replace7ReplaceINtNtB4_8patience8PatienceB2a_B2a_INtNtB4_7compact7CompactB2a_B2a_IB2K_NtNtB4_7capture7CaptureEEEEEB6_.exit.thread569, %bb.nd
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_EB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp uge i64 %1, %2
  %i.b = icmp uge i64 %4, %5
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select.i.i.i.i = sub nuw i64 %5, %4
  %spec.select.i.i4.i.i = sub nuw i64 %2, %1
  %..i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %spec.select.i.i4.i.i, i64 %spec.select.i.i.i.i) ; 9 uses
  %.not = icmp eq i64 %..i.i.i, 0
  br i1 %.not, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.c = load i64, ptr %3, align 8, !range !7, !alias.scope !7138, !noalias !7139, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7138, !noalias !7139, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !5 ; 2 uses
  %i.k = load i64, ptr %0, align 8, !range !7
  %.fr = freeze i64 %i.k
  %i.l = trunc i64 %.fr to i1                     ; 2 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = load ptr, ptr %i.i, align 8, !nonnull !5 ; 4 uses
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.f, i64 %4) ; 4 uses
  %i.p = tail call i64 @llvm.usub.sat.i64(i64 %i.m, i64 %1) ; 4 uses
  br i1 %i.d, label %.lr.ph.split.us.i.i.i.preheader, label %.lr.ph.split.i.i.i.preheader

.lr.ph.split.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i
  %invariant.gep65 = getelementptr [16 x i8], ptr %i.j, i64 %4 ; 2 uses
  br i1 %i.l, label %.lr.ph.split.i.i.i.us.preheader, label %.lr.ph.split.i.i.i.preheader25

.lr.ph.split.i.i.i.preheader25:                   ; preds = %.lr.ph.split.i.i.i.preheader
  %invariant.gep63 = getelementptr [16 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i.us.preheader:                  ; preds = %.lr.ph.split.i.i.i.preheader
  %invariant.gep67 = getelementptr [24 x i8], ptr %i.n, i64 %1
  br label %.lr.ph.split.i.i.i.us

.lr.ph.split.i.i.i.us:                            ; preds = %.lr.ph.split.i.i.i.us.preheader, %bb.c
  %.sroa.01.023.i.i.i.us = phi i64 [ %i.q, %bb.c ], [ 0, %.lr.ph.split.i.i.i.us.preheader ] ; 7 uses
  %i.q = add nuw i64 %.sroa.01.023.i.i.i.us, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7141), !noalias !7142
  %exitcond33.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.o
  br i1 %exitcond33.not, label %.split.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us: ; preds = %.lr.ph.split.i.i.i.us
  %gep66 = getelementptr [16 x i8], ptr %invariant.gep65, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %gep66, i64 8
  %.sroa.0.1.i.i.i.i.i.i.us = load ptr, ptr %gep66, align 8, !noalias !7143, !nonnull !5, !noundef !5
  %.sroa.5.1.i.i.i.i.i.i.us = load i64, ptr %i.r, align 8, !noalias !7143, !noundef !5 ; 2 uses
  %exitcond35.not = icmp eq i64 %.sroa.01.023.i.i.i.us, %i.p
  br i1 %exitcond35.not, label %.split28.us.i.i.i, label %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us

_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit.i.i.i.i.us
  %gep68 = getelementptr [24 x i8], ptr %invariant.gep67, i64 %.sroa.01.023.i.i.i.us ; 2 uses
  %i.s = getelementptr i8, ptr %gep68, i64 16
  %.sroa.5.1.i.i9.i.i.i.i.us = load i64, ptr %i.s, align 8, !noalias !7144, !noundef !5
  %i.t = icmp eq i64 %.sroa.5.1.i.i.i.i.i.i.us, %.sroa.5.1.i.i9.i.i.i.i.us
  br i1 %i.t, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us: ; preds = %_RNvXs0_NtCsdftwklc2oBO_7similar4textINtB5_12TextDiffSideeEINtNtNtCsj6eKBz9Db1c_4core3ops5index5IndexjE5indexB7_.exit10.i.i.i.i.us
  %i.u = getelementptr i8, ptr %gep68, i64 8
  %.sroa.0.1.i.i8.i.i.i.i.us = load ptr, ptr %i.u, align 8, !noalias !7144, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i.us = tail call i32 @bcmp(ptr nonnull readonly %.sroa.0.1.i.i.i.i.i.i.us, ptr nonnull readonly %.sroa.0.1.i.i8.i.i.i.i.us, i64 %.sroa.5.1.i.i.i.i.i.i.us), !alias.scope !7145, !noalias !7146
  %i.v = icmp eq i32 %bcmp.i.i.i.i.i.us, 0
  br i1 %i.v, label %bb.c, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit

bb.c:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.us
  %exitcond.not.i.i.i.us = icmp eq i64 %i.q, %..i.i.i
  br i1 %exitcond.not.i.i.i.us, label %_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_3ops5range5RangejEB1r_ENCINvNtNtCsdftwklc2oBO_7similar10algorithms5utils17common_prefix_lenINtNtB27_4text12TextDiffSideeEB34_E0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B3F_5count0EB27_.exit, label %.lr.ph.split.i.i.i.us

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i.i.i
end_hunk_3
begin_hunk_4_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_:.lr.ph.i
  %i.dc = getelementptr i8, ptr %i.cs, i64 8
  %.sroa.06.0.val.i.2 = load i64, ptr %i.dc, align 8, !alias.scope !9425, !noundef !5
  %i.dd = icmp ult i64 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i21.i.2 = select i1 %i.dd, ptr %i.cq, ptr %i.cs
  %i.de = xor i1 %i.dd, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.2, i64 16, i1 false), !noalias !9426
  %i.df = zext i1 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %i.df ; 3 uses
  %i.dh = zext i1 %i.de to i64
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dk = getelementptr i8, ptr %i.cy, i64 8
  %.sroa.017.0.val.i.2 = load i64, ptr %i.dk, align 8, !alias.scope !9425, !noundef !5
  %i.dl = getelementptr i8, ptr %i.cz, i64 8
  %.sroa.015.0.val.i.2 = load i64, ptr %i.dl, align 8, !alias.scope !9425, !noundef !5
  %i.dm = icmp ult i64 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.dm, ptr %i.cz, ptr %i.cy
  %i.dn = xor i1 %i.dm, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !9427
  %.neg.i.i.2 = sext i1 %i.dn to i64
  %i.do = getelementptr [16 x i8], ptr %i.cy, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.dm to i64
  %i.dp = getelementptr [16 x i8], ptr %i.cz, i64 %.neg13.i.i.2 ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dr = getelementptr i8, ptr %i.dg, i64 8
  %.sroa.011.0.val.i.3 = load i64, ptr %i.dr, align 8, !alias.scope !9425, !noundef !5
  %i.ds = getelementptr i8, ptr %i.di, i64 8
  %.sroa.06.0.val.i.3 = load i64, ptr %i.ds, align 8, !alias.scope !9425, !noundef !5
  %i.dt = icmp ult i64 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.dt, ptr %i.dg, ptr %i.di
  %i.du = xor i1 %i.dt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dj, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !9426
  %i.dv = zext i1 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.dv
  %i.dx = zext i1 %i.du to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dx
  %i.dz = getelementptr i8, ptr %i.do, i64 8
  %.sroa.017.0.val.i.3 = load i64, ptr %i.dz, align 8, !alias.scope !9425, !noundef !5
  %i.ea = getelementptr i8, ptr %i.dp, i64 8
  %.sroa.015.0.val.i.3 = load i64, ptr %i.ea, align 8, !alias.scope !9425, !noundef !5
  %i.eb = icmp ult i64 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.eb, ptr %i.dp, ptr %i.do
  %i.ec = xor i1 %i.eb, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !9427
  %.neg.i.i.3 = sext i1 %i.ec to i64
  %i.ed = getelementptr [16 x i8], ptr %i.do, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.eb to i64
  %i.ee = getelementptr [16 x i8], ptr %i.dp, i64 %.neg13.i.i.3
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = getelementptr i8, ptr %i.ed, i64 16
  %i.eh = icmp ne ptr %i.dy, %i.ef
  %i.ei = icmp ne ptr %i.dw, %i.eg
  %or.cond.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !25
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1n_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCINvB1j_6uniqueB2d_Es1_0E0EB1n_.exit, !prof !25

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37, !noalias !9425
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1n_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCINvB1j_6uniqueB2d_Es1_0E0EB1n_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
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
  %i.j = sub nuw nsw i64 %1, %i.i
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
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9450, !noalias !9451, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9450, !noalias !9451, !noundef !5
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
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9450, !noalias !9451, !noundef !5 ; 2 uses
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
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9450, !noalias !9451, !noundef !5 ; 2 uses
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
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i

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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9432
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i
  %6 = trunc i64 %i.ap to i1
  br i1 %6, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9452, !noalias !9453, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9452, !noalias !9453, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9454, !noalias !9451
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9455, !noalias !9456
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9455, !noalias !9456
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB16_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9457), !noalias !9451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9458), !noalias !9451
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB15_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9452, !noalias !9453, !nonnull !5, !align !9, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9452, !noalias !9453, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9454, !noalias !9451
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9455, !noalias !9456
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9455, !noalias !9456
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9452, !noalias !9453, !nonnull !5, !align !9, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9452, !noalias !9453, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9454, !noalias !9451
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9455, !noalias !9456
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9455, !noalias !9456
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9438
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9438
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9460)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9461
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
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9460, !noalias !9462, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9459, !noalias !9463, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9461, !noalias !9464
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
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9459, !noalias !9465, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9460, !noalias !9466, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9461, !noalias !9467
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9461, !noalias !9468
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
  %7 = trunc i64 %.sroa.023.1.lcssa to i1
  br i1 %7, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = or i64 %1, 1
  %i.em = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.el, i1 true)
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = xor i32 %i.eo, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9438
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
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
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
  %i.j = sub nuw nsw i64 %1, %i.i
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
  %.val10.i = load i64, ptr %i.q, align 8, !alias.scope !9491, !noalias !9492, !noundef !5 ; 3 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val11.i = load i64, ptr %i.r, align 8, !alias.scope !9491, !noalias !9492, !noundef !5
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
  %.val8.i = load i64, ptr %i.u, align 8, !alias.scope !9491, !noalias !9492, !noundef !5 ; 2 uses
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
  %.val.i = load i64, ptr %i.y, align 8, !alias.scope !9491, !noalias !9492, !noundef !5 ; 2 uses
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
  br i1 %.not5.i96, label %bb.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i

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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %..i35, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9473
  %i.ad = shl nuw nsw i64 %..i35, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i
  %6 = trunc i64 %i.ap to i1
  br i1 %6, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod122 = trunc i64 %i.ap to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.af = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ah = getelementptr [16 x i8], ptr %i.aq, i64 %i.af ; 3 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !9493, !noalias !9494, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !9493, !noalias !9494, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !alias.scope !9495, !noalias !9492
  store ptr %i.ai, ptr %i.ah, align 8, !alias.scope !9496, !noalias !9497
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !alias.scope !9496, !noalias !9497
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread, %bb.j, %bb.q, %bb.n
  %.sroa.0.0.i.i4144 = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i9299103, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader ]
  %i.am = shl nuw nsw i64 %.sroa.0.0.i.i4144, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1a_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_11sort_by_keyjNCINvB16_6uniqueB20_Es1_0E0EB1a_.exit

bb.q:                                             ; preds = %bb.n
  %i.ao = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9498), !noalias !9492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9499), !noalias !9492
  %.not.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE7reverseBB_.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94, %bb.q
  %i.ap = phi i64 [ %i.ao, %bb.q ], [ 1, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 4 uses
  %.sroa.0.0.i.i9299103 = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB19_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_11sort_by_keyjNCINvB15_6uniqueB1Z_Es1_0E0EB19_.exit.i.thread94 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.0.i.i9299103 ; 3 uses
  %i.ar = icmp eq i64 %i.ap, 1
  br i1 %i.ar, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ap, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit11.i.i ]
  %i.as = xor i64 %.sroa.0.016.i.i, -1
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 3 uses
  %i.au = getelementptr [16 x i8], ptr %i.aq, i64 %i.as ; 3 uses
  %i.av = load ptr, ptr %i.at, align 8, !alias.scope !9493, !noalias !9494, !nonnull !5, !align !9, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !9493, !noalias !9494, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !alias.scope !9495, !noalias !9492
  store ptr %i.av, ptr %i.au, align 8, !alias.scope !9496, !noalias !9497
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !alias.scope !9496, !noalias !9497
  %i.az = xor i64 %.sroa.0.016.i.i, -2
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %.sroa.0.016.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.bc = getelementptr [16 x i8], ptr %i.aq, i64 %i.az ; 3 uses
  %i.bd = load ptr, ptr %i.bb, align 8, !alias.scope !9493, !noalias !9494, !nonnull !5, !align !9, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !9493, !noalias !9494, !noundef !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false), !alias.scope !9495, !noalias !9492
  store ptr %i.bd, ptr %i.bc, align 8, !alias.scope !9496, !noalias !9497
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.bf, ptr %i.bg, align 8, !alias.scope !9496, !noalias !9497
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9479
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9479
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9501)
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select.i, i64 %i.cy, i1 false), !alias.scope !9502
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
  %.val.i.i = load i64, ptr %i.df, align 8, !alias.scope !9501, !noalias !9503, !noundef !5
  %i.dg = getelementptr i8, ptr %i.db, i64 -8
  %.val12.i.i = load i64, ptr %i.dg, align 8, !alias.scope !9500, !noalias !9504, !noundef !5
  %i.dh = icmp ult i64 %.val.i.i, %.val12.i.i     ; 3 uses
  %..i17.i = select i1 %i.dh, ptr %i.dc, ptr %i.dd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull align 8 dereferenceable(16) %..i17.i, i64 16, i1 false), !alias.scope !9502, !noalias !9505
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
  %.sroa.0.0.val.i.i = load i64, ptr %i.dr, align 8, !alias.scope !9500, !noalias !9506, !noundef !5
  %i.ds = getelementptr i8, ptr %i.dq, i64 8
  %.val.i19.i = load i64, ptr %i.ds, align 8, !alias.scope !9501, !noalias !9507, !noundef !5
  %i.dt = icmp ult i64 %.sroa.0.0.val.i.i, %.val.i19.i ; 3 uses
  %i.du = xor i1 %i.dt, true
  %.sroa.05.0.i.i = select i1 %i.dt, ptr %.sroa.0.02.i.i, ptr %i.dq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i.i, i64 16, i1 false), !alias.scope !9502, !noalias !9508
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1.i, ptr align 8 %.sroa.0.1.i, i64 %i.ee, i1 false), !alias.scope !9502, !noalias !9509
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
  %7 = trunc i64 %.sroa.023.1.lcssa to i1
  br i1 %7, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = or i64 %1, 1
  %i.em = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.el, i1 true)
  %i.en = trunc nuw nsw i64 %i.em to i32
  %i.eo = shl nuw nsw i32 %i.en, 1
  %i.ep = xor i32 %i.eo, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ep, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #34, !inline_history !9479
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
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kq, %.outer ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.kb, %.outer ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ew, %.outer ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph127, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph124, i64 8
  %i.g = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit
  %i.h = icmp eq i32 %i.ew, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit ], [ %0, %bb.a ], [ %i.kq, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit ], [ %1, %bb.a ], [ %i.kb, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9564)
  call void @llvm.experimental.noalias.scope.decl(metadata !9565)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1c_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1c_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 24
  %.val8.i.i = load i64, ptr %i.s, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val9.i.i = load i64, ptr %i.t, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.u = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 56
  %.val6.i.i = load i64, ptr %i.v, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 40
  %.val7.i.i = load i64, ptr %i.w, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.x = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.u, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i = load i64, ptr %i.ah, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i = load i64, ptr %i.ai, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.aj = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i = load i64, ptr %i.al, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.am = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.an = select i1 %i.aj, ptr %i.ae, ptr %i.z, !unpredictable !5
  %i.ao = select i1 %i.am, ptr %i.ac, ptr %i.ag, !unpredictable !5
  %i.ap = select i1 %i.am, ptr %i.ae, ptr %i.ac, !unpredictable !5
  %i.aq = select i1 %i.aj, ptr %i.z, ptr %i.ap, !unpredictable !5 ; 3 uses
  %i.ar = select i1 %i.aj, ptr %i.ac, ptr %i.ae, !unpredictable !5
  %i.as = select i1 %i.am, ptr %i.ag, ptr %i.ar, !unpredictable !5 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val.i.i = load i64, ptr %i.at, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i.i = load i64, ptr %i.au, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.av = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aw = select i1 %i.av, ptr %i.as, ptr %i.aq, !unpredictable !5
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9566
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9566
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9566
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9566
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9564, !noalias !9565, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9566
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9566
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9566
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9566
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9566
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9566
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.co = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.cp, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i, %bb.j
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cr = getelementptr [16 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cs = icmp samesign ult i64 %.sroa.0.0.i, %i.co
  br i1 %i.cs, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !9566
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val9.i40.1.i = load i64, ptr %i.cv, align 8, !alias.scope !9565, !noalias !9564, !noundef !5 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cw, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.cx = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cx, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cy = load ptr, ptr %i.cu, align 8, !alias.scope !9565, !noalias !9564, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.cz = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cz, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.da = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cr
  br i1 %i.da, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cu, %bb.k ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.db, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.dc = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.dc, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cu, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cr, %bb.k ], [ %i.cr, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cy, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9565, !noalias !9567
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9565, !noalias !9567
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.dd = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dd, %i.co
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %.loopexit.i
  %i.de = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.cr, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.di = getelementptr i8, ptr %i.dz, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dy, i64 16
  %7 = trunc i64 %.sroa.16.0.lcssa to i1
  br i1 %7, label %bb.m, label %bb.n

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.dh, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dg, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.dm, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dn = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.do = xor i1 %i.dn, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9566, !noalias !9569
  %i.dp = zext i1 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dp ; 4 uses
  %i.dr = zext i1 %i.do to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dr ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.du, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dv = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dv, align 8, !alias.scope !9568, !noalias !9564, !noundef !5
  %i.dw = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dx = xor i1 %i.dw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9566, !noalias !9570
  %.neg.i.i.i = sext i1 %i.dx to i64
  %i.dy = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dw to i64
  %i.dz = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.eb = icmp ult ptr %i.ds, %i.di               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.eb, ptr %i.ds, ptr %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9566
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = xor i1 %i.eb, true
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ef
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dq, %._crit_edge.i.i ], [ %i.eg, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ed, %bb.m ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i, %i.di
  %i.ei = icmp ne ptr %.sroa.011.1.i.i, %i.dj
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !25
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ek, i1 false), !alias.scope !9566, !noalias !9571
  resume { ptr, i32 } %i.ej

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ev, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !alias.scope !9566
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %.val9.i40.i = load i64, ptr %i.en, align 8, !alias.scope !9565, !noalias !9564, !noundef !5 ; 3 uses
  %i.eo = getelementptr i8, ptr %i.em, i64 -8
  %.val10.i.i = load i64, ptr %i.eo, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.ep = icmp ult i64 %.val9.i40.i, %.val10.i.i
  br i1 %i.ep, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.eq = load ptr, ptr %i.em, align 8, !alias.scope !9565, !noalias !9564, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.i299 = getelementptr inbounds i8, ptr %i.em, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.er = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.er, label %._crit_edge304, label %.lr.ph303

bb.r:                                             ; preds = %.lr.ph303
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i301, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i301, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i, i64 16, i1 false), !alias.scope !9565, !noalias !9564
  %i.es = icmp eq ptr %.sroa.0.0.i41.i, %2
  br i1 %i.es, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i301 = phi ptr [ %.sroa.0.0.i41.i, %bb.r ], [ %.sroa.0.0.i41.i299, %bb.q ] ; 5 uses
  %.sroa.5.0.i.i300 = phi ptr [ %.sroa.0.0.i41.i301, %bb.r ], [ %i.em, %bb.q ] ; 2 uses
  %i.et = getelementptr i8, ptr %.sroa.5.0.i.i300, i64 -24
  %.val8.i42.i = load i64, ptr %i.et, align 8, !alias.scope !9565, !noalias !9564, !noundef !5
  %i.eu = icmp ult i64 %.val9.i40.i, %.val8.i42.i
  br i1 %i.eu, label %bb.r, label %._crit_edge304

._crit_edge304:                                   ; preds = %bb.r, %.lr.ph303, %bb.q
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.em, %bb.q ], [ %.sroa.0.0.i41.i301, %bb.r ], [ %.sroa.5.0.i.i300, %.lr.ph303 ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i301, %.lr.ph303 ]
  store ptr %i.eq, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !9565, !noalias !9567
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !9565, !noalias !9567
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1b_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.ev = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ev, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBZ_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ew, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ew = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ex = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ex, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ex, 112
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.fa = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.fa, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.fb = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB17_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.ey, ptr noundef readonly %i.ez, i64 noundef %i.ex)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ey, i64 8
  %.val7.i = load i64, ptr %i.fc, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.fd = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ez, i64 8
  %.val5.i = load i64, ptr %i.fe, align 8, !alias.scope !9572, !noundef !5 ; 2 uses
  %i.ff = icmp ult i64 %.val6.i, %.val5.i
  %i.fg = xor i1 %i.fd, %i.ff
  %i.fh = icmp ult i64 %.val7.i, %.val5.i
  %i.fi = xor i1 %i.fd, %i.fh
  %..i.i = select i1 %i.fi, ptr %i.ez, ptr %i.ey
  %.sroa.0.0.i.i = select i1 %i.fg, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB12_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.fb, %bb.s ]
  %i.fj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fk = sub nuw i64 %i.fj, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fk, 4        ; 3 uses
  %i.fl = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.fk ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 5 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8
  store i64 %i.fp, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.fq = icmp ult i64 %.sroa.028.0.val, %i.fp
  br i1 %i.fq, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9573)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.fr, %bb.w ], [ %i.hj, %bb.z ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.hl, %bb.z ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.z ] ; 3 uses
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fs ; 2 uses
  %i.fu = icmp ult ptr %.sroa.9.0.i, %i.ft
  br i1 %i.fu, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gw, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.y ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gv, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.y ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gs, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.y ] ; 4 uses
  %i.fv = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fv, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %.val22.i = load i64, ptr %i.fo, align 8, !alias.scope !9574, !noalias !9573, !noundef !5 ; 4 uses
  %i.fw = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fw, ptr %2, ptr %i.fx
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9575, !noalias !9576
  %i.fz = zext i1 %i.fw to i64
  %i.ga = add i64 %.sroa.27.130.i, %i.fz          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.gc = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.gc, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gd = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !alias.scope !9575, !noalias !9577
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %i.ga, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.gj = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.gj, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gk = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.gk, ptr %2, ptr %i.gl
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !alias.scope !9575, !noalias !9578
  %i.gn = zext i1 %i.gk to i64
  %i.go = add i64 %i.gh, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gq = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gq, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.gr = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !9575, !noalias !9579
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %i.go, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.ft
  br i1 %i.gx, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gs, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gv, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gw, %.lr.ph.i40 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gy
  br i1 %i.gz, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hd, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hg, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hh, %.lr.ph38.i ] ; 2 uses
  %i.ha = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.ha, label %bb.aa, label %bb.z

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.hd, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.hb = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val.i = load i64, ptr %i.hb, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %.val14.i = load i64, ptr %i.fo, align 8, !alias.scope !9574, !noalias !9573, !noundef !5
  %i.hc = icmp ult i64 %.val.i, %.val14.i         ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.hc, ptr %2, ptr %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !9575, !noalias !9580
  %i.hf = zext i1 %i.hc to i64
  %i.hg = add i64 %.sroa.27.235.i, %i.hf          ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.hi = icmp ult ptr %i.hh, %i.gy
  br i1 %i.hi, label %.lr.ph38.i, label %._crit_edge39.i

bb.z:                                             ; preds = %._crit_edge39.i
  %i.hj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !9575, !noalias !9581
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.hm = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.hm, i1 false), !alias.scope !9575
  %i.hn = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.aa
  %i.ho = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %i.hp = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.hn, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.ht, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ab ]
  %i.hq = xor i64 %.sroa.07.043.i, -1
  %i.hr = getelementptr [16 x i8], ptr %i.fr, i64 %i.hq
  %i.hs = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !alias.scope !9575
  %i.ht = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hu = xor i64 %.sroa.07.043.i, -2
  %i.hv = getelementptr [16 x i8], ptr %i.fr, i64 %i.hu
  %i.hw = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !alias.scope !9575
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %8 = trunc i64 %i.hn to i1
  br i1 %8, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.ht, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i64 %i.hn to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %i.hy = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.hz = getelementptr [16 x i8], ptr %i.fr, i64 %i.hy
  %i.ia = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !alias.scope !9575
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.aa
  %i.ib = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ib, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0120293
  br i1 %.not.i41, label %bb.ad, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit, !prof !13

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #37, !noalias !9582
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtBx_12OffsetLookupmEE12split_at_mutBB_.exit: ; preds = %bb.ac
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph127) ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB18_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.ic, i64 noundef %i.hn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ew, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.id = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.id, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !9583)
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not84, label %bb.af, label %bb.ae, !prof !25

bb.ae:                                            ; preds = %.thread
  %i.ie = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.43.0.i44 = phi ptr [ %i.ie, %bb.ae ], [ %i.jw, %bb.ah ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.ae ], [ %i.jy, %bb.ah ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph127, %bb.ae ], [ %i.jz, %bb.ah ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.ae ], [ %.sroa.16.0120293, %bb.ah ] ; 3 uses
  %i.if = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.if ; 2 uses
  %i.ih = icmp ult ptr %.sroa.9.0.i46, %i.ig
  br i1 %i.ih, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ag, %.lr.ph.i67
  %.sroa.9.131.i68 = phi ptr [ %i.jj, %.lr.ph.i67 ], [ %.sroa.9.0.i46, %bb.ag ] ; 9 uses
  %.sroa.27.130.i69 = phi i64 [ %i.ji, %.lr.ph.i67 ], [ %.sroa.27.0.i45, %bb.ag ] ; 2 uses
  %.sroa.43.129.i70 = phi ptr [ %i.jf, %.lr.ph.i67 ], [ %.sroa.43.0.i44, %bb.ag ] ; 4 uses
  %i.ii = getelementptr i8, ptr %.sroa.9.131.i68, i64 8
  %.val21.i71 = load i64, ptr %i.ii, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %.val22.i72 = load i64, ptr %i.fo, align 8, !alias.scope !9584, !noalias !9583, !noundef !5 ; 4 uses
  %i.ij = icmp uge i64 %.val22.i72, %.val21.i71   ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -16
  %.sroa.01.0.i.i73 = select i1 %i.ij, ptr %2, ptr %i.ik
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i68, i64 16, i1 false), !alias.scope !9585, !noalias !9586
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.27.130.i69, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 16
  %i.ip = getelementptr i8, ptr %.sroa.9.131.i68, i64 24
  %.val19.i74 = load i64, ptr %i.ip, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %i.iq = icmp uge i64 %.val22.i72, %.val19.i74   ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -32
  %.sroa.01.0.i23.i75 = select i1 %i.iq, ptr %2, ptr %i.ir
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i75, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !alias.scope !9585, !noalias !9587
  %i.it = zext i1 %i.iq to i64
  %i.iu = add i64 %i.in, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 32
  %i.iw = getelementptr i8, ptr %.sroa.9.131.i68, i64 40
  %.val17.i76 = load i64, ptr %i.iw, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %i.ix = icmp uge i64 %.val22.i72, %.val17.i76   ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -48
  %.sroa.01.0.i24.i77 = select i1 %i.ix, ptr %2, ptr %i.iy
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i77, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.iv, i64 16, i1 false), !alias.scope !9585, !noalias !9588
  %i.ja = zext i1 %i.ix to i64
  %i.jb = add i64 %i.iu, %i.ja                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 48
  %i.jd = getelementptr i8, ptr %.sroa.9.131.i68, i64 56
  %.val15.i78 = load i64, ptr %i.jd, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %i.je = icmp uge i64 %.val22.i72, %.val15.i78   ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i79 = select i1 %i.je, ptr %2, ptr %i.jf
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i79, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !alias.scope !9585, !noalias !9589
  %i.jh = zext i1 %i.je to i64
  %i.ji = add i64 %i.jb, %i.jh                    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 64 ; 3 uses
  %i.jk = icmp ult ptr %i.jj, %i.ig
  br i1 %i.jk, label %.lr.ph.i67, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i67, %bb.ag
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ag ], [ %i.jf, %.lr.ph.i67 ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ag ], [ %i.ji, %.lr.ph.i67 ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ag ], [ %i.jj, %.lr.ph.i67 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i47 ; 2 uses
  %i.jm = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.jl
  br i1 %i.jm, label %.lr.ph38.i60, label %._crit_edge39.i52

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.jq, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.jt, %.lr.ph38.i60 ] ; 10 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.ju, %.lr.ph38.i60 ] ; 2 uses
  %i.jn = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0120293
  br i1 %i.jn, label %bb.ai, label %bb.ah

.lr.ph38.i60:                                     ; preds = %._crit_edge.i48, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.ju, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.jt, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.jq, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ]
  %i.jo = getelementptr i8, ptr %.sroa.9.236.i61, i64 8
  %.val.i64 = load i64, ptr %i.jo, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %.val14.i65 = load i64, ptr %i.fo, align 8, !alias.scope !9584, !noalias !9583, !noundef !5
  %i.jp = icmp uge i64 %.val14.i65, %.val.i64     ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i66 = select i1 %i.jp, ptr %2, ptr %i.jq
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i66, i64 %.sroa.27.235.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i61, i64 16, i1 false), !alias.scope !9585, !noalias !9590
  %i.js = zext i1 %i.jp to i64
  %i.jt = add i64 %.sroa.27.235.i62, %i.js        ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 16 ; 3 uses
  %i.jv = icmp ult ptr %i.ju, %i.jl
  br i1 %i.jv, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.ah:                                            ; preds = %._crit_edge39.i52
  %i.jw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -16
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i55, i64 16, i1 false), !alias.scope !9585, !noalias !9591
  %i.jy = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 16
  br label %bb.ag

bb.ai:                                            ; preds = %._crit_edge39.i52
  %i.ka = shl nuw nsw i64 %.sroa.27.2.lcssa.i54, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.ka, i1 false), !alias.scope !9585
  %i.kb = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54 ; 6 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ai
  %i.kc = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  %.neg400 = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.kd = icmp eq i64 %.sroa.16.0120293, %.neg400
  br i1 %i.kd, label %.epil.preheader388, label %.lr.ph45.i57.new

.lr.ph45.i57.new:                                 ; preds = %.lr.ph45.i57
  %unroll_iter398 = and i64 %i.kb, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph45.i57.new
  %.sroa.07.043.i58 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %i.kh, %bb.aj ] ; 5 uses
  %niter399 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %niter399.next.1, %bb.aj ]
  %i.ke = xor i64 %.sroa.07.043.i58, -1
  %i.kf = getelementptr [16 x i8], ptr %i.ie, i64 %i.ke
  %i.kg = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 16, i1 false), !alias.scope !9585
  %i.kh = add nuw i64 %.sroa.07.043.i58, 2        ; 2 uses
  %i.ki = xor i64 %.sroa.07.043.i58, -2
  %i.kj = getelementptr [16 x i8], ptr %i.ie, i64 %i.ki
  %i.kk = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  %i.kl = getelementptr i8, ptr %i.kk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i64 16, i1 false), !alias.scope !9585
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, label %bb.aj

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa: ; preds = %bb.aj
  %9 = trunc i64 %i.kb to i1
  br i1 %9, label %.epil.preheader388, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit

.epil.preheader388:                               ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.lr.ph45.i57
  %.sroa.07.043.i58.epil.init = phi i64 [ 0, %.lr.ph45.i57 ], [ %i.kh, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod397 = trunc i64 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.km = xor i64 %.sroa.07.043.i58.epil.init, -1
  %i.kn = getelementptr [16 x i8], ptr %i.ie, i64 %i.km
  %i.ko = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false), !alias.scope !9585
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.epil.preheader388
  %i.kp = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0120293
  br i1 %i.kp, label %bb.ak, label %.outer, !prof !13

.outer._crit_edge.thread:                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1v_12OffsetLookupmEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kr = icmp ult i64 %i.kb, 33
  br i1 %i.kr, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtB1g_12OffsetLookupmEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0120293, i64 noundef %.sroa.16.0120293, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #37
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(16) %5, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %6) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer
  %.sroa.0.0.ph127 = phi ptr [ %0, %.lr.ph.lr.ph ], [ %i.kq, %.outer ] ; 22 uses
  %.sroa.16.0.ph126 = phi i64 [ %1, %.lr.ph.lr.ph ], [ %i.kb, %.outer ] ; 2 uses
  %.sroa.025.0.ph125 = phi i32 [ %4, %.lr.ph.lr.ph ], [ %i.ew, %.outer ] ; 2 uses
  %.sroa.028.0.ph124 = phi ptr [ %5, %.lr.ph.lr.ph ], [ null, %.outer ] ; 2 uses
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph127, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph127 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph124, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph124, i64 8
  %i.g = icmp eq i32 %.sroa.025.0.ph125, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph295

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit
  %i.h = icmp eq i32 %i.ew, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph295

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit, %bb.a
  %.sroa.0.0.ph.lcssa118 = phi ptr [ %.sroa.0.0.ph127, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit ], [ %0, %bb.a ], [ %i.kq, %.outer ] ; 18 uses
  %.sroa.16.0.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit ], [ %1, %bb.a ], [ %i.kb, %.outer ] ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9646)
  call void @llvm.experimental.noalias.scope.decl(metadata !9647)
  %i.i = icmp samesign ult i64 %.sroa.16.0.lcssa, 2
  br i1 %i.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, label %bb.c

bb.c:                                             ; preds = %.outer._crit_edge
  %i.j = add nuw nsw i64 %.sroa.16.0.lcssa, 16
  %i.k = icmp samesign ult i64 %3, %i.j
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i64 %.sroa.16.0.lcssa, 1            ; 12 uses
  %i.m = icmp samesign ugt i64 %.sroa.16.0.lcssa, 15
  br i1 %i.m, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.trap()
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ugt i64 %.sroa.16.0.lcssa, 7
  br i1 %i.n, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.16.0.lcssa ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr noundef nonnull align 8 %2, ptr noundef %i.o)
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1g_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCINvB1c_6uniqueB26_Es1_0E0EB1g_(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 24
  %.val8.i.i = load i64, ptr %i.s, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 8
  %.val9.i.i = load i64, ptr %i.t, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.u = icmp ult i64 %.val8.i.i, %.val9.i.i      ; 2 uses
  %i.v = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 56
  %.val6.i.i = load i64, ptr %i.v, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.0.0.ph.lcssa118, i64 40
  %.val7.i.i = load i64, ptr %i.w, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.x = icmp ult i64 %.val6.i.i, %.val7.i.i      ; 2 uses
  %i.y = zext i1 %i.u to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.y ; 3 uses
  %i.aa = xor i1 %i.u, true
  %i.ab = zext i1 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ab ; 4 uses
  %i.ad = select i1 %i.x, i64 3, i64 2
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.ad ; 4 uses
  %i.af = select i1 %i.x, i64 2, i64 3
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.af ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 8
  %.val4.i.i = load i64, ptr %i.ah, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.ai = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i = load i64, ptr %i.ai, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.aj = icmp ult i64 %.val4.i.i, %.val5.i.i     ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ag, i64 8
  %.val2.i.i = load i64, ptr %i.ak, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.al = getelementptr i8, ptr %i.ac, i64 8
  %.val3.i.i = load i64, ptr %i.al, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.am = icmp ult i64 %.val2.i.i, %.val3.i.i     ; 3 uses
  %i.an = select i1 %i.aj, ptr %i.ae, ptr %i.z, !unpredictable !5
  %i.ao = select i1 %i.am, ptr %i.ac, ptr %i.ag, !unpredictable !5
  %i.ap = select i1 %i.am, ptr %i.ae, ptr %i.ac, !unpredictable !5
  %i.aq = select i1 %i.aj, ptr %i.z, ptr %i.ap, !unpredictable !5 ; 3 uses
  %i.ar = select i1 %i.aj, ptr %i.ac, ptr %i.ae, !unpredictable !5
  %i.as = select i1 %i.am, ptr %i.ag, ptr %i.ar, !unpredictable !5 ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %.val.i.i = load i64, ptr %i.at, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.au = getelementptr i8, ptr %i.aq, i64 8
  %.val1.i.i = load i64, ptr %i.au, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.av = icmp ult i64 %.val.i.i, %.val1.i.i      ; 2 uses
  %i.aw = select i1 %i.av, ptr %i.as, ptr %i.aq, !unpredictable !5
  %i.ax = select i1 %i.av, ptr %i.aq, ptr %i.as, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !9648
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false), !alias.scope !9648
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !alias.scope !9648
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i64 16, i1 false), !alias.scope !9648
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l ; 8 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l ; 4 uses
  %i.bd = getelementptr i8, ptr %i.bb, i64 24
  %.val8.i30.i = load i64, ptr %i.bd, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.be = getelementptr i8, ptr %i.bb, i64 8
  %.val9.i31.i = load i64, ptr %i.be, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bf = icmp ult i64 %.val8.i30.i, %.val9.i31.i ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bb, i64 56
  %.val6.i32.i = load i64, ptr %i.bg, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bh = getelementptr i8, ptr %i.bb, i64 40
  %.val7.i33.i = load i64, ptr %i.bh, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bi = icmp ult i64 %.val6.i32.i, %.val7.i33.i ; 2 uses
  %i.bj = zext i1 %i.bf to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bj ; 3 uses
  %i.bl = xor i1 %i.bf, true
  %i.bm = zext i1 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bm ; 4 uses
  %i.bo = select i1 %i.bi, i64 3, i64 2
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bo ; 4 uses
  %i.bq = select i1 %i.bi, i64 2, i64 3
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %i.bq ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 8
  %.val4.i34.i = load i64, ptr %i.bs, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bt = getelementptr i8, ptr %i.bk, i64 8
  %.val5.i35.i = load i64, ptr %i.bt, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bu = icmp ult i64 %.val4.i34.i, %.val5.i35.i ; 3 uses
  %i.bv = getelementptr i8, ptr %i.br, i64 8
  %.val2.i36.i = load i64, ptr %i.bv, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bw = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i37.i = load i64, ptr %i.bw, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.bx = icmp ult i64 %.val2.i36.i, %.val3.i37.i ; 3 uses
  %i.by = select i1 %i.bu, ptr %i.bp, ptr %i.bk, !unpredictable !5
  %i.bz = select i1 %i.bx, ptr %i.bn, ptr %i.br, !unpredictable !5
  %i.ca = select i1 %i.bx, ptr %i.bp, ptr %i.bn, !unpredictable !5
  %i.cb = select i1 %i.bu, ptr %i.bk, ptr %i.ca, !unpredictable !5 ; 3 uses
  %i.cc = select i1 %i.bu, ptr %i.bn, ptr %i.bp, !unpredictable !5
  %i.cd = select i1 %i.bx, ptr %i.br, ptr %i.cc, !unpredictable !5 ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %.val.i38.i = load i64, ptr %i.ce, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.cf = getelementptr i8, ptr %i.cb, i64 8
  %.val1.i39.i = load i64, ptr %i.cf, align 8, !alias.scope !9646, !noalias !9647, !noundef !5
  %i.cg = icmp ult i64 %.val.i38.i, %.val1.i39.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb, !unpredictable !5
  %i.ci = select i1 %i.cg, ptr %i.cb, ptr %i.cd, !unpredictable !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.by, i64 16, i1 false), !alias.scope !9648
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !alias.scope !9648
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i64 16, i1 false), !alias.scope !9648
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !alias.scope !9648
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.ph.lcssa118, i64 16, i1 false), !alias.scope !9648
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cn = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i64 16, i1 false), !alias.scope !9648
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.0.i = phi i64 [ 8, %bb.g ], [ 4, %bb.h ], [ 1, %bb.i ] ; 4 uses
  %i.co = sub nuw nsw i64 %.sroa.16.0.lcssa, %i.l ; 2 uses
  %i.cp = icmp samesign ult i64 %.sroa.0.0.i, %i.l
  br i1 %i.cp, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i, %bb.j
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.l
  %i.cr = getelementptr [16 x i8], ptr %2, i64 %i.l ; 6 uses
  %i.cs = icmp samesign ult i64 %.sroa.0.0.i, %i.co
  br i1 %i.cs, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.dd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.cq, i64 %.sroa.05.08.1.i
  %.idx321 = shl nuw nsw i64 %.sroa.05.08.1.i, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx321 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !alias.scope !9648
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %.val9.i40.1.i = load i64, ptr %i.cv, align 8, !alias.scope !9647, !noalias !9646, !noundef !5 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cu, i64 -8
  %.val10.i.1.i = load i64, ptr %i.cw, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.cx = icmp ult i64 %.val9.i40.1.i, %.val10.i.1.i
  br i1 %i.cx, label %bb.k, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.cy = load ptr, ptr %i.cu, align 8, !alias.scope !9647, !noalias !9646, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.1.i310 = getelementptr inbounds i8, ptr %i.cu, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i310, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.cz = icmp eq i64 %.sroa.05.08.1.i, 1
  br i1 %i.cz, label %._crit_edge315, label %.lr.ph314

bb.l:                                             ; preds = %.lr.ph314
  %.sroa.0.0.i41.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.1.i312, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i312, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.1.i, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.da = icmp eq ptr %.sroa.0.0.i41.1.i, %i.cr
  br i1 %i.da, label %._crit_edge315, label %.lr.ph314

.lr.ph314:                                        ; preds = %bb.k, %bb.l
  %.sroa.0.0.i41.1.i312 = phi ptr [ %.sroa.0.0.i41.1.i, %bb.l ], [ %.sroa.0.0.i41.1.i310, %bb.k ] ; 5 uses
  %.sroa.5.0.i.1.i311 = phi ptr [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %i.cu, %bb.k ] ; 2 uses
  %i.db = getelementptr i8, ptr %.sroa.5.0.i.1.i311, i64 -24
  %.val8.i42.1.i = load i64, ptr %i.db, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.dc = icmp ult i64 %.val9.i40.1.i, %.val8.i42.1.i
  br i1 %i.dc, label %bb.l, label %._crit_edge315

._crit_edge315:                                   ; preds = %bb.l, %.lr.ph314, %bb.k
  %.sroa.5.0.i.1.i.lcssa = phi ptr [ %i.cu, %bb.k ], [ %.sroa.0.0.i41.1.i312, %bb.l ], [ %.sroa.5.0.i.1.i311, %.lr.ph314 ]
  %.sroa.0.0.i41.lcssa.1.i = phi ptr [ %i.cr, %bb.k ], [ %i.cr, %bb.l ], [ %.sroa.0.0.i41.1.i312, %.lr.ph314 ]
  store ptr %i.cy, ptr %.sroa.0.0.i41.lcssa.1.i, align 8, !alias.scope !9647, !noalias !9649
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.i.lcssa, i64 -8
  store i64 %.val9.i40.1.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.1.i, align 8, !alias.scope !9647, !noalias !9649
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i: ; preds = %._crit_edge315, %.lr.ph.1.i
  %i.dd = add nuw nsw i64 %.sroa.05.08.1.i, 1     ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.dd, %i.co
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.1.i, %.loopexit.i
  %i.de = add nsw i64 %.sroa.16.0.lcssa, -1       ; 2 uses
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %i.de
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.de
  %i.dh = getelementptr i8, ptr %i.cr, i64 -16
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.di = getelementptr i8, ptr %i.dz, i64 16     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.dy, i64 16
  %7 = trunc i64 %.sroa.16.0.lcssa to i1
  br i1 %7, label %bb.m, label %bb.n

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.dt, %.lr.ph.i.i ], [ %.sroa.0.0.ph.lcssa118, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.dk, %.lr.ph.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %i.ds, %.lr.ph.i.i ], [ %2, %.loopexit.1.i ] ; 3 uses
  %.sroa.011.07.i.i = phi ptr [ %i.dq, %.lr.ph.i.i ], [ %i.cr, %.loopexit.1.i ] ; 3 uses
  %.sroa.015.06.i.i = phi ptr [ %i.dz, %.lr.ph.i.i ], [ %i.dh, %.loopexit.1.i ] ; 3 uses
  %.sroa.017.05.i.i = phi ptr [ %i.dy, %.lr.ph.i.i ], [ %i.dg, %.loopexit.1.i ] ; 3 uses
  %.sroa.019.04.i.i = phi ptr [ %i.ea, %.lr.ph.i.i ], [ %i.df, %.loopexit.1.i ] ; 2 uses
  %i.dk = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %i.dl = getelementptr i8, ptr %.sroa.011.07.i.i, i64 8
  %.sroa.011.0.val.i.i = load i64, ptr %i.dl, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dm = getelementptr i8, ptr %.sroa.06.08.i.i, i64 8
  %.sroa.06.0.val.i.i = load i64, ptr %i.dm, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dn = icmp ult i64 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.dn, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.do = xor i1 %i.dn, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !9648, !noalias !9651
  %i.dp = zext i1 %i.dn to i64
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.dp ; 4 uses
  %i.dr = zext i1 %i.do to i64
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.dr ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %i.du = getelementptr i8, ptr %.sroa.017.05.i.i, i64 8
  %.sroa.017.0.val.i.i = load i64, ptr %i.du, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dv = getelementptr i8, ptr %.sroa.015.06.i.i, i64 8
  %.sroa.015.0.val.i.i = load i64, ptr %i.dv, align 8, !alias.scope !9650, !noalias !9646, !noundef !5
  %i.dw = icmp ult i64 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.dw, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.dx = xor i1 %i.dw, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !9648, !noalias !9652
  %.neg.i.i.i = sext i1 %i.dx to i64
  %i.dy = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.dw to i64
  %i.dz = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.dk, %i.l
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.eb = icmp ult ptr %i.ds, %i.di               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.eb, ptr %i.ds, ptr %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !9648
  %i.ec = zext i1 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.ec
  %i.ee = xor i1 %i.eb, true
  %i.ef = zext i1 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.ef
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.dq, %._crit_edge.i.i ], [ %i.eg, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.ds, %._crit_edge.i.i ], [ %i.ed, %bb.m ]
  %i.eh = icmp ne ptr %.sroa.06.1.i.i, %i.di
  %i.ei = icmp ne ptr %.sroa.011.1.i.i, %i.dj
  %or.cond.i.i = select i1 %i.eh, i1 true, i1 %i.ei, !prof !25
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit, !prof !25

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #37
          to label %.noexc.i unwind label %bb.p

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ej = landingpad { ptr, i32 }
          cleanup
  %i.ek = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ek, i1 false), !alias.scope !9648, !noalias !9653
  resume { ptr, i32 } %i.ej

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ev, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %i.el, i64 16, i1 false), !alias.scope !9648
  %i.en = getelementptr i8, ptr %i.em, i64 8
  %.val9.i40.i = load i64, ptr %i.en, align 8, !alias.scope !9647, !noalias !9646, !noundef !5 ; 3 uses
  %i.eo = getelementptr i8, ptr %i.em, i64 -8
  %.val10.i.i = load i64, ptr %i.eo, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.ep = icmp ult i64 %.val9.i40.i, %.val10.i.i
  br i1 %i.ep, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.eq = load ptr, ptr %i.em, align 8, !alias.scope !9647, !noalias !9646, !nonnull !5, !align !9, !noundef !5
  %.sroa.0.0.i41.i299 = getelementptr inbounds i8, ptr %i.em, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.er = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.er, label %._crit_edge304, label %.lr.ph303

bb.r:                                             ; preds = %.lr.ph303
  %.sroa.0.0.i41.i = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i301, i64 -16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i301, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i, i64 16, i1 false), !alias.scope !9647, !noalias !9646
  %i.es = icmp eq ptr %.sroa.0.0.i41.i, %2
  br i1 %i.es, label %._crit_edge304, label %.lr.ph303

.lr.ph303:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i301 = phi ptr [ %.sroa.0.0.i41.i, %bb.r ], [ %.sroa.0.0.i41.i299, %bb.q ] ; 5 uses
  %.sroa.5.0.i.i300 = phi ptr [ %.sroa.0.0.i41.i301, %bb.r ], [ %i.em, %bb.q ] ; 2 uses
  %i.et = getelementptr i8, ptr %.sroa.5.0.i.i300, i64 -24
  %.val8.i42.i = load i64, ptr %i.et, align 8, !alias.scope !9647, !noalias !9646, !noundef !5
  %i.eu = icmp ult i64 %.val9.i40.i, %.val8.i42.i
  br i1 %i.eu, label %bb.r, label %._crit_edge304

._crit_edge304:                                   ; preds = %bb.r, %.lr.ph303, %bb.q
  %.sroa.5.0.i.i.lcssa = phi ptr [ %i.em, %bb.q ], [ %.sroa.0.0.i41.i301, %bb.r ], [ %.sroa.5.0.i.i300, %.lr.ph303 ]
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i301, %.lr.ph303 ]
  store ptr %i.eq, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !9647, !noalias !9649
  %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds i8, ptr %.sroa.5.0.i.i.lcssa, i64 -8
  store i64 %.val9.i40.i, ptr %.sroa.4.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !9647, !noalias !9649
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1f_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_11sort_by_keyjNCINvB1b_6uniqueB25_Es1_0E0EB1f_.exit.i: ; preds = %._crit_edge304, %.lr.ph.i
  %i.ev = add nuw nsw i64 %.sroa.05.08.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ev, %i.l
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB13_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_11sort_by_keyjNCINvBZ_6uniqueB1T_Es1_0E0EB13_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ew, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ew = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ex = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ex, 6
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ex, 112
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.fa = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.fa, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.fb = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1b_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_11sort_by_keyjNCINvB17_6uniqueB21_Es1_0E0EB1b_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.ey, ptr noundef readonly %i.ez, i64 noundef %i.ex)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i64, ptr %i.d, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ey, i64 8
  %.val7.i = load i64, ptr %i.fc, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.fd = icmp ult i64 %.val6.i, %.val7.i         ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ez, i64 8
  %.val5.i = load i64, ptr %i.fe, align 8, !alias.scope !9654, !noundef !5 ; 2 uses
  %i.ff = icmp ult i64 %.val6.i, %.val5.i
  %i.fg = xor i1 %i.fd, %i.ff
  %i.fh = icmp ult i64 %.val7.i, %.val5.i
  %i.fi = xor i1 %i.fd, %i.fh
  %..i.i = select i1 %i.fi, ptr %i.ez, ptr %i.ey
  %.sroa.0.0.i.i = select i1 %i.fg, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3INtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB16_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_11sort_by_keyjNCINvB12_6uniqueB1W_Es1_0E0EB16_.exit.i ], [ %i.fb, %bb.s ]
  %i.fj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fk = sub nuw i64 %i.fj, %i.e                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fk, 4        ; 3 uses
  %i.fl = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.fl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.fk ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 5 uses
  %i.fp = load i64, ptr %i.fo, align 8            ; 2 uses
  store ptr %i.fn, ptr %i.a, align 8
  store i64 %i.fp, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i64, ptr %i.f, align 8, !noundef !5
  %i.fq = icmp ult i64 %.sroa.028.0.val, %i.fp
  br i1 %i.fq, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !9655)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !25

bb.w:                                             ; preds = %bb.v
  %i.fr = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.z, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.fr, %bb.w ], [ %i.hj, %bb.z ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.z ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.hl, %bb.z ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.z ] ; 3 uses
  %i.fs = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.fs ; 2 uses
  %i.fu = icmp ult ptr %.sroa.9.0.i, %i.ft
  br i1 %i.fu, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gw, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.y ] ; 9 uses
  %.sroa.27.130.i = phi i64 [ %i.gv, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.y ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.gs, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.y ] ; 4 uses
  %i.fv = getelementptr i8, ptr %.sroa.9.131.i, i64 8
  %.val21.i = load i64, ptr %i.fv, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %.val22.i = load i64, ptr %i.fo, align 8, !alias.scope !9656, !noalias !9655, !noundef !5 ; 4 uses
  %i.fw = icmp ult i64 %.val21.i, %.val22.i       ; 2 uses
  %i.fx = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fw, ptr %2, ptr %i.fx
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !9657, !noalias !9658
  %i.fz = zext i1 %i.fw to i64
  %i.ga = add i64 %.sroa.27.130.i, %i.fz          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %i.gc = getelementptr i8, ptr %.sroa.9.131.i, i64 24
  %.val19.i = load i64, ptr %i.gc, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gd = icmp ult i64 %.val19.i, %.val22.i       ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ga
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %i.gb, i64 16, i1 false), !alias.scope !9657, !noalias !9659
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %i.ga, %i.gg                    ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32
  %i.gj = getelementptr i8, ptr %.sroa.9.131.i, i64 40
  %.val17.i = load i64, ptr %i.gj, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gk = icmp ult i64 %.val17.i, %.val22.i       ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.gk, ptr %2, ptr %i.gl
  %i.gm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.gh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !alias.scope !9657, !noalias !9660
  %i.gn = zext i1 %i.gk to i64
  %i.go = add i64 %i.gh, %i.gn                    ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48
  %i.gq = getelementptr i8, ptr %.sroa.9.131.i, i64 56
  %.val15.i = load i64, ptr %i.gq, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.gr = icmp ult i64 %.val15.i, %.val22.i       ; 2 uses
  %i.gs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.gr, ptr %2, ptr %i.gs
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i64 16, i1 false), !alias.scope !9657, !noalias !9661
  %i.gu = zext i1 %i.gr to i64
  %i.gv = add i64 %i.go, %i.gu                    ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.gx = icmp ult ptr %i.gw, %i.ft
  br i1 %i.gx, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.gs, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.gv, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.gw, %.lr.ph.i40 ] ; 3 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gy
  br i1 %i.gz, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.hd, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hg, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.hh, %.lr.ph38.i ] ; 2 uses
  %i.ha = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.ha, label %bb.aa, label %bb.z

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.hh, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hg, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.hd, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %i.hb = getelementptr i8, ptr %.sroa.9.236.i, i64 8
  %.val.i = load i64, ptr %i.hb, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %.val14.i = load i64, ptr %i.fo, align 8, !alias.scope !9656, !noalias !9655, !noundef !5
  %i.hc = icmp ult i64 %.val.i, %.val14.i         ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.hc, ptr %2, ptr %i.hd
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.he, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !9657, !noalias !9662
  %i.hf = zext i1 %i.hc to i64
  %i.hg = add i64 %.sroa.27.235.i, %i.hf          ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.hi = icmp ult ptr %i.hh, %i.gy
  br i1 %i.hi, label %.lr.ph38.i, label %._crit_edge39.i

bb.z:                                             ; preds = %._crit_edge39.i
  %i.hj = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hj, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !9657, !noalias !9663
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.hm = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.hm, i1 false), !alias.scope !9657
  %i.hn = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.aa
  %i.ho = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %i.hp = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.hn, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.ht, %bb.ab ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ab ]
  %i.hq = xor i64 %.sroa.07.043.i, -1
  %i.hr = getelementptr [16 x i8], ptr %i.fr, i64 %i.hq
  %i.hs = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !alias.scope !9657
  %i.ht = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.hu = xor i64 %.sroa.07.043.i, -2
  %i.hv = getelementptr [16 x i8], ptr %i.fr, i64 %i.hu
  %i.hw = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.hv, i64 16, i1 false), !alias.scope !9657
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ab

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %8 = trunc i64 %i.hn to i1
  br i1 %8, label %.epil.preheader, label %.loopexit

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.ht, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod387 = trunc i64 %i.hn to i1
  call void @llvm.assume(i1 %lcmp.mod387)
  %i.hy = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.hz = getelementptr [16 x i8], ptr %i.fr, i64 %i.hy
  %i.ia = getelementptr [16 x i8], ptr %i.ho, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ia, ptr noundef nonnull align 8 dereferenceable(16) %i.hz, i64 16, i1 false), !alias.scope !9657
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.aa
  %i.ib = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.ib, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0120293
  br i1 %.not.i41, label %bb.ad, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit, !prof !13

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @158, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #37, !noalias !9664
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtBB_4text12TextDiffSideeEE12split_at_mutBB_.exit: ; preds = %bb.ac
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph127) ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1c_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_11sort_by_keyjNCINvB18_6uniqueB22_Es1_0E0EB1c_(ptr noalias nofree noundef nonnull align 8 %i.ic, i64 noundef %i.hn, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ew, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.id = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.id, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !9665)
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not84, label %bb.af, label %bb.ae, !prof !25

bb.ae:                                            ; preds = %.thread
  %i.ie = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.ag

bb.af:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ah, %bb.ae
  %.sroa.43.0.i44 = phi ptr [ %i.ie, %bb.ae ], [ %i.jw, %bb.ah ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.ae ], [ %i.jy, %bb.ah ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph127, %bb.ae ], [ %i.jz, %bb.ah ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.ae ], [ %.sroa.16.0120293, %bb.ah ] ; 3 uses
  %i.if = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.ig = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.if ; 2 uses
  %i.ih = icmp ult ptr %.sroa.9.0.i46, %i.ig
  br i1 %i.ih, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ag, %.lr.ph.i67
  %.sroa.9.131.i68 = phi ptr [ %i.jj, %.lr.ph.i67 ], [ %.sroa.9.0.i46, %bb.ag ] ; 9 uses
  %.sroa.27.130.i69 = phi i64 [ %i.ji, %.lr.ph.i67 ], [ %.sroa.27.0.i45, %bb.ag ] ; 2 uses
  %.sroa.43.129.i70 = phi ptr [ %i.jf, %.lr.ph.i67 ], [ %.sroa.43.0.i44, %bb.ag ] ; 4 uses
  %i.ii = getelementptr i8, ptr %.sroa.9.131.i68, i64 8
  %.val21.i71 = load i64, ptr %i.ii, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %.val22.i72 = load i64, ptr %i.fo, align 8, !alias.scope !9666, !noalias !9665, !noundef !5 ; 4 uses
  %i.ij = icmp uge i64 %.val22.i72, %.val21.i71   ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -16
  %.sroa.01.0.i.i73 = select i1 %i.ij, ptr %2, ptr %i.ik
  %i.il = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.il, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i68, i64 16, i1 false), !alias.scope !9667, !noalias !9668
  %i.im = zext i1 %i.ij to i64
  %i.in = add i64 %.sroa.27.130.i69, %i.im        ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 16
  %i.ip = getelementptr i8, ptr %.sroa.9.131.i68, i64 24
  %.val19.i74 = load i64, ptr %i.ip, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %i.iq = icmp uge i64 %.val22.i72, %.val19.i74   ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -32
  %.sroa.01.0.i23.i75 = select i1 %i.iq, ptr %2, ptr %i.ir
  %i.is = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i75, i64 %i.in
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !alias.scope !9667, !noalias !9669
  %i.it = zext i1 %i.iq to i64
  %i.iu = add i64 %i.in, %i.it                    ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 32
  %i.iw = getelementptr i8, ptr %.sroa.9.131.i68, i64 40
  %.val17.i76 = load i64, ptr %i.iw, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %i.ix = icmp uge i64 %.val22.i72, %.val17.i76   ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -48
  %.sroa.01.0.i24.i77 = select i1 %i.ix, ptr %2, ptr %i.iy
  %i.iz = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i77, i64 %i.iu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.iz, ptr noundef nonnull align 8 dereferenceable(16) %i.iv, i64 16, i1 false), !alias.scope !9667, !noalias !9670
  %i.ja = zext i1 %i.ix to i64
  %i.jb = add i64 %i.iu, %i.ja                    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 48
  %i.jd = getelementptr i8, ptr %.sroa.9.131.i68, i64 56
  %.val15.i78 = load i64, ptr %i.jd, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %i.je = icmp uge i64 %.val22.i72, %.val15.i78   ; 2 uses
  %i.jf = getelementptr inbounds i8, ptr %.sroa.43.129.i70, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i79 = select i1 %i.je, ptr %2, ptr %i.jf
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i79, i64 %i.jb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jg, ptr noundef nonnull align 8 dereferenceable(16) %i.jc, i64 16, i1 false), !alias.scope !9667, !noalias !9671
  %i.jh = zext i1 %i.je to i64
  %i.ji = add i64 %i.jb, %i.jh                    ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i68, i64 64 ; 3 uses
  %i.jk = icmp ult ptr %i.jj, %i.ig
  br i1 %i.jk, label %.lr.ph.i67, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %.lr.ph.i67, %bb.ag
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ag ], [ %i.jf, %.lr.ph.i67 ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ag ], [ %i.ji, %.lr.ph.i67 ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ag ], [ %i.jj, %.lr.ph.i67 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i47 ; 2 uses
  %i.jm = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.jl
  br i1 %i.jm, label %.lr.ph38.i60, label %._crit_edge39.i52

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.jq, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.jt, %.lr.ph38.i60 ] ; 10 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.ju, %.lr.ph38.i60 ] ; 2 uses
  %i.jn = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0120293
  br i1 %i.jn, label %bb.ai, label %bb.ah

.lr.ph38.i60:                                     ; preds = %._crit_edge.i48, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.ju, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.jt, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.jq, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ]
  %i.jo = getelementptr i8, ptr %.sroa.9.236.i61, i64 8
  %.val.i64 = load i64, ptr %i.jo, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %.val14.i65 = load i64, ptr %i.fo, align 8, !alias.scope !9666, !noalias !9665, !noundef !5
  %i.jp = icmp uge i64 %.val14.i65, %.val.i64     ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i66 = select i1 %i.jp, ptr %2, ptr %i.jq
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i66, i64 %.sroa.27.235.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i61, i64 16, i1 false), !alias.scope !9667, !noalias !9672
  %i.js = zext i1 %i.jp to i64
  %i.jt = add i64 %.sroa.27.235.i62, %i.js        ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 16 ; 3 uses
  %i.jv = icmp ult ptr %i.ju, %i.jl
  br i1 %i.jv, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.ah:                                            ; preds = %._crit_edge39.i52
  %i.jw = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -16
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i55, i64 16, i1 false), !alias.scope !9667, !noalias !9673
  %i.jy = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 16
  br label %bb.ag

bb.ai:                                            ; preds = %._crit_edge39.i52
  %i.ka = shl nuw nsw i64 %.sroa.27.2.lcssa.i54, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.ka, i1 false), !alias.scope !9667
  %i.kb = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54 ; 6 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ai
  %i.kc = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  %.neg400 = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.kd = icmp eq i64 %.sroa.16.0120293, %.neg400
  br i1 %i.kd, label %.epil.preheader388, label %.lr.ph45.i57.new

.lr.ph45.i57.new:                                 ; preds = %.lr.ph45.i57
  %unroll_iter398 = and i64 %i.kb, -2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph45.i57.new
  %.sroa.07.043.i58 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %i.kh, %bb.aj ] ; 5 uses
  %niter399 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %niter399.next.1, %bb.aj ]
  %i.ke = xor i64 %.sroa.07.043.i58, -1
  %i.kf = getelementptr [16 x i8], ptr %i.ie, i64 %i.ke
  %i.kg = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kg, ptr noundef nonnull align 8 dereferenceable(16) %i.kf, i64 16, i1 false), !alias.scope !9667
  %i.kh = add nuw i64 %.sroa.07.043.i58, 2        ; 2 uses
  %i.ki = xor i64 %.sroa.07.043.i58, -2
  %i.kj = getelementptr [16 x i8], ptr %i.ie, i64 %i.ki
  %i.kk = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58
  %i.kl = getelementptr i8, ptr %i.kk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.kj, i64 16, i1 false), !alias.scope !9667
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, label %bb.aj

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa: ; preds = %bb.aj
  %9 = trunc i64 %i.kb to i1
  br i1 %9, label %.epil.preheader388, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit

.epil.preheader388:                               ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.lr.ph45.i57
  %.sroa.07.043.i58.epil.init = phi i64 [ 0, %.lr.ph45.i57 ], [ %i.kh, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod397 = trunc i64 %i.kb to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.km = xor i64 %.sroa.07.043.i58.epil.init, -1
  %i.kn = getelementptr [16 x i8], ptr %i.ie, i64 %i.km
  %i.ko = getelementptr [16 x i8], ptr %i.kc, i64 %.sroa.07.043.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kn, i64 16, i1 false), !alias.scope !9667
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit.unr-lcssa, %.epil.preheader388
  %i.kp = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0120293
  br i1 %i.kp, label %bb.ak, label %.outer, !prof !13

.outer._crit_edge.thread:                         ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1z_4text12TextDiffSideeEENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_11sort_by_keyjNCINvB1v_6uniqueB2p_Es1_0E0EB1z_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  %i.kq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kr = icmp ult i64 %i.kb, 33
  br i1 %i.kr, label %.outer._crit_edge, label %.lr.ph

bb.ak:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionINtNtNtCsdftwklc2oBO_7similar10algorithms5utils10UniqueItemINtNtB1k_4text12TextDiffSideeEENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_11sort_by_keyjNCINvB1g_6uniqueB2a_Es1_0E0E0EB1k_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0120293, i64 noundef %.sroa.16.0120293, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @142) #37
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsdftwklc2oBO_7similar(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 25) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9676)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !9676, !noundef !5 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9676
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !9676
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsdftwklc2oBO_7similar(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 41) %4), !noalias !9676
  %i.h = load i64, ptr %i.a, align 8, !range !7, !noalias !9676, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !26, !noalias !9676, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !9676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9676
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #38
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !9676, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9676
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !9676
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !9676
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRjECsdftwklc2oBO_7similar(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !9689
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9689
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9689
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9689
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !9689
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !9689
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !9689
  %.val.i = load i64, ptr %0, align 8, !noalias !9690, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9691
  store i64 %.val.i, ptr %i.a, align 8, !noalias !9691
  call fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9691
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !9692
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9692
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9692 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9692
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !9692, !noundef !5
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !9692, !noundef !5
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECsdftwklc2oBO_7similar(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !9705
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !9705
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !9705
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !9705
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !9705
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !9705
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !9705
end_hunk_4
begin_hunk_5_@_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji:bb.a
  %.sroa.6.1 = phi ptr [ %i.x, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.n, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.q, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ag = and i8 %i.h, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.6.2.ph = phi ptr [ %.sroa.6.0, %bb.d ], [ %i.c, %bb.c ]
  %.sroa.4.1.i.ph = phi i32 [ %i.v, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %i.aj = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.ak, 15
  br i1 %.not, label %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit.preheader, label %.loopexit

_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit.preheader: ; preds = %bb.a, %bb.f
  %.sroa.5.0.ph = phi ptr [ %i.a, %bb.a ], [ %.sroa.6.2.ph, %bb.f ]
  br label %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit

_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit: ; preds = %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit.preheader, %bb.k
  %.sroa.5.0 = phi ptr [ %.sroa.5.3.ph, %bb.k ], [ %.sroa.5.0.ph, %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit.preheader ] ; 5 uses
  %i.al = icmp eq ptr %1, %.sroa.5.0
  br i1 %i.al, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit
  %i.am = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -1 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !noalias !10022, !noundef !5 ; 3 uses
  %i.ao = icmp sgt i8 %i.an, -1
  br i1 %i.ao, label %bb.h, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9: ; preds = %bb.g
  %i.ap = icmp ne ptr %1, %i.am
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -2 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !10022, !noundef !5 ; 3 uses
  %i.as = and i8 %i.ar, 31
  %i.at = zext nneg i8 %i.as to i32
  %i.au = icmp slt i8 %i.ar, -64
  br i1 %i.au, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = zext nneg i8 %i.an to i32
  br label %bb.k

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9
  %i.aw = icmp ne ptr %1, %i.aq
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -3 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !10022, !noundef !5 ; 3 uses
  %i.az = and i8 %i.ay, 15
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = icmp slt i8 %i.ay, -64
  br i1 %i.bb, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i15, label %bb.j

bb.i:                                             ; preds = %bb.j, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.j ], [ %i.aq, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9 ]
  %.sroa.010.0.i10 = phi i32 [ %i.bs, %bb.j ], [ %i.at, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i9 ]
  %i.bc = shl nuw nsw i32 %.sroa.010.0.i10, 6
  %i.bd = and i8 %i.an, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  br label %bb.k

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i15: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13
  %i.bg = icmp ne ptr %1, %i.ax
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -4 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !10022, !noundef !5
  %i.bj = and i8 %i.bi, 7
  %i.bk = zext nneg i8 %i.bj to i32
  %i.bl = shl nuw nsw i32 %i.bk, 6
  %i.bm = and i8 %i.ay, 63
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %bb.j

bb.j:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i15, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13
  %.sroa.5.2 = phi ptr [ %i.bh, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i15 ], [ %i.ax, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13 ]
  %.sroa.010.1.i14 = phi i32 [ %i.bo, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i15 ], [ %i.ba, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i13 ]
  %i.bp = shl nuw nsw i32 %.sroa.010.1.i14, 6
  %i.bq = and i8 %i.ar, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %bb.h
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.i ], [ %i.am, %bb.h ]
  %.sroa.4.1.i11.ph = phi i32 [ %i.bf, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %i.bt = icmp samesign ult i32 %.sroa.4.1.i11.ph, 1114112
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i11.ph)
  switch i8 %i.bu, label %.loopexit [
    i8 3, label %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit
    i8 4, label %bb.l
  ]

.loopexit:                                        ; preds = %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit, %bb.k, %bb.f, %bb.l
  %.sink = phi i8 [ 4, %bb.f ], [ 3, %bb.l ], [ 4, %bb.k ], [ 4, %_RINvNtNtCsj6eKBz9Db1c_4core3str11validations23next_code_point_reverseINtNtNtB6_5slice4iter4IterhEECsdftwklc2oBO_7similar.exit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sink, ptr %i.bv, align 2
  ret void

bb.l:                                             ; preds = %bb.k
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  %i.e = load i64, ptr %i.c, align 8
  %.sroa.0.0 = select i1 %i.d, i64 %i.e, i64 0    ; 2 uses
  %i.f = icmp samesign eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.sroa.0.119 = phi i64 [ %i.ar, %bb.f ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.018 = phi ptr [ %.sroa.5.3.ph, %bb.f ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.5.018, i64 -1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !10025, !noundef !5 ; 3 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.b, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i: ; preds = %.lr.ph
  %i.k = icmp ne ptr %1, %i.h
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds i8, ptr %.sroa.5.018, i64 -2 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !noalias !10025, !noundef !5 ; 3 uses
  %i.n = and i8 %i.m, 31
  %i.o = zext nneg i8 %i.n to i32
  %i.p = icmp slt i8 %i.m, -64
  br i1 %i.p, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.i to i32
  br label %bb.e

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %i.r = icmp ne ptr %1, %i.l
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds i8, ptr %.sroa.5.018, i64 -3 ; 3 uses
  %i.t = load i8, ptr %i.s, align 1, !noalias !10025, !noundef !5 ; 3 uses
  %i.u = and i8 %i.t, 15
  %i.v = zext nneg i8 %i.u to i32
  %i.w = icmp slt i8 %i.t, -64
  br i1 %i.w, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, label %bb.d

bb.c:                                             ; preds = %bb.d, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.d ], [ %i.l, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.an, %bb.d ], [ %i.o, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %i.x = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.y = and i8 %i.i, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z
  br label %bb.e

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %i.ab = icmp ne ptr %1, %i.s
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds i8, ptr %.sroa.5.018, i64 -4 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !10025, !noundef !5
  %i.ae = and i8 %i.ad, 7
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 6
  %i.ah = and i8 %i.t, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %.sroa.5.2 = phi ptr [ %i.ac, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.s, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.aj, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.v, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %i.ak = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.al = and i8 %i.m, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  br label %bb.c

bb.e:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %.sroa.4.1.i.ph = phi i32 [ %i.aa, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph)
  %.not = icmp eq i8 %i.ap, 11
  br i1 %.not, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.e, %bb.a
  %.sroa.0.1.lcssa.sink25 = phi i64 [ %.sroa.0.0, %bb.a ], [ %.sroa.0.119, %bb.e ], [ %i.ar, %bb.f ] ; 2 uses
  store i64 1, ptr %i.a, align 8
  store i64 %.sroa.0.1.lcssa.sink25, ptr %i.c, align 8
  %3 = trunc i64 %.sroa.0.1.lcssa.sink25 to i1
  %.sroa.011.0 = select i1 %3, i8 3, i8 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sroa.011.0, ptr %i.aq, align 2
  ret void

bb.f:                                             ; preds = %bb.e
  %i.ar = add i64 %.sroa.0.119, 1                 ; 2 uses
  %i.as = icmp eq ptr %1, %.sroa.5.3.ph
  br i1 %i.as, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor18is_boundary_result(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 78
  %i.c = load i8, ptr %i.b, align 2, !range !27, !noundef !5 ; 2 uses
  %i.d = add nsw i8 %i.c, -2
  %i.e = icmp samesign ugt i8 %i.c, 1
  %narrow = select i1 %i.e, i8 %i.d, i8 5
  switch i8 %narrow, label %bb.d [
    i8 2, label %bb.b
    i8 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.f, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !range !7, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.f, label %bb.g, !prof !11

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.i, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !5
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.k, ptr %i.l, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @176, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsdftwklc2oBO_7similar, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @177, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #37
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.b = load i8, ptr %i.a, align 4, !range !10, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = icmp samesign eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.h = load i64, ptr %i.d, align 8, !range !7, !noundef !5 ; 2 uses
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = load i64, ptr %i.e, align 8              ; 2 uses
  %.sroa.0.0 = select i1 %i.i, i64 %i.j, i64 0
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.a, %bb.j, %bb.k, %bb.b
  %.sroa.014.0.sink = phi i8 [ 4, %bb.b ], [ 4, %bb.j ], [ 4, %bb.a ], [ %spec.select, %bb.k ], [ 4, %bb.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sroa.014.0.sink, ptr %i.k, align 2
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.l = phi i64 [ %i.co, %bb.i ], [ %i.j, %.lr.ph.preheader ] ; 2 uses
  %i.m = phi i64 [ %i.cp, %bb.i ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.0.125 = phi i64 [ %.sroa.0.2, %bb.i ], [ %.sroa.0.0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.5.024 = phi ptr [ %.sroa.5.3.ph, %bb.i ], [ %i.g, %.lr.ph.preheader ] ; 4 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -1 ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !noalias !10030, !noundef !5 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.c, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i: ; preds = %.lr.ph
  %i.q = icmp ne ptr %1, %i.n
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -2 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !10030, !noundef !5 ; 3 uses
  %i.t = and i8 %i.s, 31
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.w = zext nneg i8 %i.o to i32
  br label %bb.f

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %i.x = icmp ne ptr %1, %i.r
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -3 ; 3 uses
  %i.z = load i8, ptr %i.y, align 1, !noalias !10030, !noundef !5 ; 3 uses
  %i.aa = and i8 %i.z, 15
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = icmp slt i8 %i.z, -64
  br i1 %i.ac, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i
  %.sroa.5.1 = phi ptr [ %.sroa.5.2, %bb.e ], [ %i.r, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %.sroa.010.0.i = phi i32 [ %i.at, %bb.e ], [ %i.u, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i ]
  %i.ad = shl nuw nsw i32 %.sroa.010.0.i, 6
  %i.ae = and i8 %i.o, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.f

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %i.ah = icmp ne ptr %1, %i.y
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds i8, ptr %.sroa.5.024, i64 -4 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !10030, !noundef !5
  %i.ak = and i8 %i.aj, 7
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 6
  %i.an = and i8 %i.z, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i
  %.sroa.5.2 = phi ptr [ %i.ai, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.y, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %.sroa.010.1.i = phi i32 [ %i.ap, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i ], [ %i.ab, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i ]
  %i.aq = shl nuw nsw i32 %.sroa.010.1.i, 6
  %i.ar = and i8 %i.s, 63
  %i.as = zext nneg i8 %i.ar to i32
  %i.at = or disjoint i32 %i.aq, %i.as
  br label %bb.d

bb.f:                                             ; preds = %bb.d, %bb.c
  %.sroa.5.3.ph = phi ptr [ %.sroa.5.1, %bb.d ], [ %i.n, %bb.c ] ; 2 uses
  %.sroa.4.1.i.ph = phi i32 [ %i.ag, %bb.d ], [ %i.w, %bb.c ] ; 22 uses
  %i.au = icmp samesign ult i32 %.sroa.4.1.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.au)
  switch i32 %.sroa.4.1.i.ph, label %bb.g [
    i32 2381, label %bb.h
    i32 2509, label %bb.h
    i32 2765, label %bb.h
    i32 2893, label %bb.h
    i32 3149, label %bb.h
    i32 3405, label %bb.h
    i32 4153, label %bb.h
    i32 6098, label %bb.h
    i32 6752, label %bb.h
    i32 6980, label %bb.h
    i32 7083, label %bb.h
    i32 43456, label %bb.h
    i32 43766, label %bb.h
    i32 68159, label %bb.h
    i32 69939, label %bb.h
    i32 70608, label %bb.h
    i32 71998, label %bb.h
    i32 72263, label %bb.h
    i32 72345, label %bb.h
    i32 73538, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.av = icmp samesign ult i32 %.sroa.4.1.i.ph, 43302
  %i.aw = select i1 %i.av, i64 0, i64 188, !unpredictable !5 ; 2 uses
  %i.ax = add nuw nsw i64 %i.aw, 94               ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @174, i64 %i.ax ; 2 uses
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !28, !noalias !10031, !noundef !5
  %i.az = getelementptr i8, ptr %i.ay, i64 4
  %.val13.1.i = load i32, ptr %i.az, align 4, !range !28, !noalias !10031, !noundef !5
  %.not.i17.1.i = icmp samesign ugt i32 %.val12.1.i, %.sroa.4.1.i.ph
  %.not1.i18.1.i = icmp samesign ule i32 %.sroa.4.1.i.ph, %.val13.1.i
  %i.ba = select i1 %.not1.i18.1.i, i1 %.not.i17.1.i, i1 false
  %i.bb = select i1 %i.ba, i64 %i.aw, i64 %i.ax, !unpredictable !5 ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 47               ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr @174, i64 %i.bc ; 2 uses
  %.val12.2.i = load i32, ptr %i.bd, align 4, !range !28, !noalias !10031, !noundef !5
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val13.2.i = load i32, ptr %i.be, align 4, !range !28, !noalias !10031, !noundef !5
  %.not.i17.2.i = icmp samesign ugt i32 %.val12.2.i, %.sroa.4.1.i.ph
end_hunk_5
begin_hunk_6_@_RNvMs7_NtCs96hDHc8Uzvz_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat:bb.a

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.a, %.split.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0 ; 4 uses
  %i.h = icmp samesign eq i64 %0, %.8.val
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.i = load i8, ptr %i.g, align 1, !noalias !10041, !noundef !5 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.thread, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = add nuw nsw i64 %0, 1
  %i.o = icmp samesign ne i64 %i.n, %.8.val
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i8, ptr %i.k, align 1, !noalias !10041, !noundef !5
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = add nuw nsw i64 %0, 2
  %i.x = icmp samesign ne i64 %i.w, %.8.val
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i8, ptr %i.v, align 1, !noalias !10041, !noundef !5
  %i.z = shl nuw nsw i32 %i.s, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.i, -17
  br i1 %i.af, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i, label %bb.e

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit16.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdftwklc2oBO_7similar.exit14.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ah = add nuw nsw i64 %0, 3
  %i.ai = icmp samesign ne i64 %i.ah, %.8.val
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !10041, !noundef !5
  %i.ak = shl nuw nsw i32 %i.m, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
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
  %.pre = load i8, ptr %.0.val, align 1, !noalias !10042
  br label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !10043, !noundef !5 ; 2 uses
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
  %i.bj = load i8, ptr %i.be, align 1, !noalias !10042, !noundef !5
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
  %i.bt = load i8, ptr %i.bq, align 1, !noalias !10042, !noundef !5
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
  %i.ce = load i8, ptr %i.cb, align 1, !noalias !10042, !noundef !5
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
  %i.co = load i8, ptr %i.cn, align 4, !range !29, !noundef !5
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
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %4 = trunc i64 %.sroa.05.0.i.i.i to i1
  br i1 %4, label %.epil.preheader, label %._crit_edge.i

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
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
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
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.al, align 1, !noalias !10046
  %i.am = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.an = bitcast <16 x i1> %i.am to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.an, 0
  br i1 %.not.i9.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !14

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
  br i1 %i.au, label %bb.g, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !13

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
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bc, align 1, !noalias !10046
  %i.bd = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.be, 0
  br i1 %.not.i.i, label %.lr.ph.i18, label %._crit_edge.i17, !prof !15

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.g, %._crit_edge.i17
  %.sroa.0.0.i5.i = phi i64 [ %i.ay, %bb.g ], [ %i.ar, %._crit_edge.i17 ] ; 4 uses
  %i.bf = sub i64 %.sroa.0.06, %.sroa.0.07.i
  %i.bg = sub i64 %.sroa.0.0.i5.i, %.sroa.0.07.i
  %i.bh = xor i64 %i.bg, %i.bf
  %.unshifted = and i64 %i.bh, %.val14
  %i.bi = icmp ult i64 %.unshifted, 16
  br i1 %i.bi, label %bb.i, label %bb.h, !prof !11

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

end_hunk_6
begin_hunk_7_@_RNvNtCsdftwklc2oBO_7similar5udiff12unified_diff:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10341
  store ptr %.sroa.01.177.i.i.i, ptr %i.h, align 8, !noalias !10341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10341
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.177.i.i.i, i64 24
  store ptr %i.bu, ptr %i.g, align 8, !noalias !10341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10341
  store ptr %i.h, ptr %i.f, align 8, !noalias !10341
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCsdftwklc2oBO_7similar, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !10341
  %i.bv = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @237, ptr noundef nonnull @235, ptr noundef nonnull %i.f)
          to label %bb.ab unwind label %bb.z, !noalias !10334

bb.z:                                             ; preds = %bb.af, %bb.ac, %bb.y
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %.val80.i.i.i = load i64, ptr %i.i, align 8, !noalias !10341 ; 2 uses
  %i.bx = icmp eq i64 %.val80.i.i.i, 0
  br i1 %i.bx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val81.i.i.i = load ptr, ptr %.sroa.615.0..sroa_idx.i.i.i, align 8, !noalias !10341, !nonnull !5, !noundef !5
  %i.by = mul nuw i64 %.val80.i.i.i, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val81.i.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10334
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit.i.i.i

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10341
  br i1 %i.bv, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10341
  store ptr %i.g, ptr %i.e, align 8, !noalias !10341
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCsdftwklc2oBO_7similar, ptr %.sroa.438.0..sroa_idx.i.i.i, align 8, !noalias !10341
  %i.bz = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @237, ptr noundef nonnull @236, ptr noundef nonnull %i.e)
          to label %bb.ad unwind label %bb.z, !noalias !10334

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10341
  br i1 %i.bz, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10341
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10341
  store ptr %i.i, ptr %i.d, align 8, !noalias !10341
  store ptr @_RNvXs5_NtCsdftwklc2oBO_7similar5udiffINtB5_15UnifiedDiffHunkeENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtB7_, ptr %.sroa.454.0..sroa_idx.i.i.i, align 8, !noalias !10341
  %i.ca = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) @237, ptr noundef nonnull @204, ptr noundef nonnull %i.d)
          to label %bb.ai unwind label %bb.z, !noalias !10334

bb.ag:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10341
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %bb.ag
  %.val78.i.i.i = load i64, ptr %i.i, align 8, !noalias !10341 ; 2 uses
  %i.cb = icmp eq i64 %.val78.i.i.i, 0
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit
  %.val79.i.i.i = load ptr, ptr %.sroa.615.0..sroa_idx.i.i.i, align 8, !noalias !10341, !nonnull !5, !noundef !5
  %i.cc = mul nuw i64 %.val78.i.i.i, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val79.i.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10334
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i

bb.ai:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10341
  br i1 %i.ca, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.val76.i.i.i = load i64, ptr %i.i, align 8, !noalias !10341 ; 2 uses
  %i.cd = icmp eq i64 %.val76.i.i.i, 0
  br i1 %i.cd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit84.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val77.i.i.i = load ptr, ptr %.sroa.615.0..sroa_idx.i.i.i, align 8, !noalias !10341, !nonnull !5, !noundef !5
  %i.ce = mul nuw i64 %.val76.i.i.i, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val77.i.i.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10334
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit84.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit84.i.i.i: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10341
  %.not19.i.i.i.i = icmp eq ptr %i.bp, %i.bm
  br i1 %.not19.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i: ; preds = %bb.ah, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10341
  %i.cf = ptrtoint ptr %i.bm to i64
  %i.cg = ptrtoint ptr %i.bp to i64
  %i.ch = sub nuw i64 %i.cf, %i.cg
  %i.ci = udiv exact i64 %i.ch, 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10346)
  %i.cj = icmp eq ptr %i.bm, %i.bp
  br i1 %i.cj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i92.i.i.i, label %.lr.ph.i.i.i.i.i87.i.i.i

.lr.ph.i.i.i.i.i87.i.i.i:                         ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i
  %.sroa.0.011.i.i.i.i.i88.i.i.i = phi i64 [ %i.cl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %.sroa.0.011.i.i.i.i.i88.i.i.i ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i88.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i89.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !10346, !noalias !10347 ; 2 uses
  %i.cm = icmp eq i64 %.val8.i.i.i.i.i89.i.i.i, 0
  br i1 %i.cm, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.i.i.i.i87.i.i.i
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  %.val9.i.i.i.i.i90.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !10346, !noalias !10347, !nonnull !5, !noundef !5
  %i.co = mul nuw i64 %.val8.i.i.i.i.i89.i.i.i, 40
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i90.i.i.i, i64 noundef %i.co, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10348
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i: ; preds = %bb.al, %.lr.ph.i.i.i.i.i87.i.i.i
  %i.cp = icmp eq i64 %i.cl, %i.ci
  br i1 %i.cp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i92.i.i.i, label %.lr.ph.i.i.i.i.i87.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i92.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit.i.i.i.i.i91.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit83.i.i.i
  %i.cq = icmp eq i64 %i.bn, 0
  br i1 %i.cq, label %.thread.i, label %.thread4.i, !prof !30

.thread4.i:                                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i92.i.i.i
  %i.cr = mul nuw i64 %i.bn, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.cr, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10334
  br label %.thread.i

bb.am:                                            ; preds = %.thread.i, %_RNvMs3_NtCsdftwklc2oBO_7similar5udiffINtB5_11UnifiedDiffeE10iter_hunksB7_.exit.i.i.i, %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cs, %bb.am ], [ %i.bw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff15UnifiedDiffHunkeEEBG_.exit.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10349)
  %.val.i.i = load i64, ptr %i.k, align 8, !alias.scope !10349, !noalias !10334 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i, 0
  br i1 %i.ct, label %.body, label %bb.an

bb.an:                                            ; preds = %.body.i
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !10349, !noalias !10334, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !10350
  br label %.body

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i.i.i.i
  %i.cu = mul nuw i64 %i.bn, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bi, i64 noundef %i.cu, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10334
  br label %bb.ap

.thread.i:                                        ; preds = %.thread4.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i92.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10341
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @161, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #37
          to label %.noexc7.i unwind label %bb.am, !noalias !10334

.noexc7.i:                                        ; preds = %.thread.i
  unreachable

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1d_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10334
  call void @llvm.experimental.noalias.scope.decl(metadata !10351)
  call void @llvm.experimental.noalias.scope.decl(metadata !10352)
  %i.cv = load i64, ptr %i.r, align 8, !range !17, !alias.scope !10353, !noundef !5 ; 3 uses
  %i.cw = icmp eq i64 %i.cv, -1
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.experimental.noalias.scope.decl(metadata !10354)
  call void @llvm.experimental.noalias.scope.decl(metadata !10355)
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cy = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !10356, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.cv, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !10356
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i: ; preds = %bb.ar, %bb.aq
  %i.cz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10357)
  %.val.i4.i.i.i = load i64, ptr %i.cz, align 8, !alias.scope !10358 ; 2 uses
  %i.da = icmp eq i64 %.val.i4.i.i.i, 0
  br i1 %i.da, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val1.i5.i.i.i = load ptr, ptr %i.db, align 8, !alias.scope !10358, !nonnull !5, !noundef !5
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i, i64 noundef %.val.i4.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #36, !noalias !10358
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar5udiff11UnifiedDiffeEEBG_.exit: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdftwklc2oBO_7similar.exit.i.i.i, %bb.ap
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsdftwklc2oBO_7similar4text8TextDiffeEEBG_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef float @_RNvNtCsdftwklc2oBO_7similar6common10diff_ratio(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #12 personality ptr @rust_eh_personality {
.preheader.preheader:
  switch i64 %1, label %.preheader.preheader.new [
    i64 0, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit
    i64 1, label %.preheader.epil.preheader
  ]

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %1, 288230376151711742
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.j, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.i, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.a = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %.val.i = load i64, ptr %i.a, align 8, !range !4, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val11.i = load i64, ptr %i.b, align 8
  %i.c = icmp eq i64 %.val.i, 0
  %.sroa.0.0.i.i.i = select i1 %i.c, i64 %.val11.i, i64 0
  %i.d = add i64 %.sroa.0.0.i.i.i, %.sroa.02.0.i
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.val.i.1 = load i64, ptr %i.f, align 8, !range !4, !noundef !5
  %i.g = getelementptr i8, ptr %i.e, i64 64
  %.val11.i.1 = load i64, ptr %i.g, align 8
  %i.h = icmp eq i64 %.val.i.1, 0
  %.sroa.0.0.i.i.i.1 = select i1 %i.h, i64 %.val11.i.1, i64 0
  %i.i = add i64 %.sroa.0.0.i.i.i.1, %i.d         ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.04.0.i, 2         ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa: ; preds = %.preheader
  %4 = trunc i64 %1 to i1
  br i1 %4, label %.preheader.epil.preheader, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit

.preheader.epil.preheader:                        ; preds = %.preheader.preheader, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.j, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ]
  %lcmp.mod2 = trunc i64 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2)
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %.val.i.epil = load i64, ptr %i.k, align 8, !range !4, !noundef !5
  %i.l = getelementptr i8, ptr %i.k, i64 24
  %.val11.i.epil = load i64, ptr %i.l, align 8
  %i.m = icmp eq i64 %.val.i.epil, 0
  %.sroa.0.0.i.i.i.epil = select i1 %i.m, i64 %.val11.i.epil, i64 0
  %i.n = add i64 %.sroa.0.0.i.i.i.epil, %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa, %.preheader.epil.preheader
  %.lcssa = phi i64 [ %i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit.unr-lcssa ], [ %i.n, %.preheader.epil.preheader ]
  %i.o = uitofp i64 %.lcssa to float
  %i.p = fmul nnan float %i.o, 2.000000e+00
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit: ; preds = %.preheader.preheader, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit
  %.sroa.0.0.i = phi float [ 0.000000e+00, %.preheader.preheader ], [ %i.p, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1A_8adapters3map8map_foldRBQ_jjNCNvNtBU_6common10diff_ratio0NCINvXsK_NtB1y_5accumjNtB3w_3Sum3sumINtB2k_3MapBF_B2U_EE0E0EBU_.exit.loopexit ]
  %i.q = add i64 %3, %2                           ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  %i.s = uitofp i64 %i.q to float
  %i.t = fdiv float %.sroa.0.0.i, %i.s
  %.sroa.0.0 = select i1 %i.r, float 1.000000e+00, float %i.t
  ret float %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsdftwklc2oBO_7similar6common14group_diff_ops(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 15 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp ult i64 %i.d, 230584300921369396
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  %.val23 = load i64, ptr %1, align 8             ; 2 uses
  %i.i = icmp eq i64 %.val23, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.k = mul nuw i64 %.val23, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !5, !noundef !5 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !range !4, !noundef !5
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = tail call i64 @llvm.usub.sat.i64(i64 %i.u, i64 %2) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.w, align 8
  %i.y = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.z = shufflevector <2 x i64> %i.y, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.aa = add <2 x i64> %i.x, %i.z
  store <2 x i64> %i.aa, ptr %i.w, align 8
  %i.ab = sub nuw i64 %i.u, %i.v
  store i64 %i.ab, ptr %i.t, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ac = getelementptr [40 x i8], ptr %i.q, i64 %i.d ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -40
  %i.ae = load i64, ptr %i.ad, align 8, !range !4, !noundef !5
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr i8, ptr %i.ac, i64 -16    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 %2)
  store i64 %i.ai, ptr %i.ag, align 8
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph: ; preds = %bb.g, %bb.f
  %i.aj = load i64, ptr %1, align 8, !range !6, !noundef !5 ; 4 uses
  %.idx = mul nuw nsw i64 %i.d, 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.al = shl i64 %2, 1
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit

.loopexit:                                        ; preds = %bb.s, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.loopexit.split-lp:                               ; preds = %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body36

.body36:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.x, %bb.y
  %.sroa.012.1.lpad-body = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ true, %.loopexit ], [ false, %.loopexit.split-lp ] ; 2 uses
  %eh.lpad-body37 = phi { ptr, i32 } [ %i.bt, %bb.x ], [ %i.bt, %bb.y ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 4 uses
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit, label %.split

.split:                                           ; preds = %.body36
  %i.an = mul nuw i64 %i.aj, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10377
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br i1 %.sroa.012.1.lpad-body, label %bb.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph, %.backedge
  %i.ao = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.cf, %.backedge ] ; 2 uses
  %i.ap = phi i64 [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %storemerge, %.backedge ] ; 7 uses
  %.sroa.5.076 = phi ptr [ %i.q, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph ], [ %i.aq, %.backedge ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 40 ; 2 uses
  %.sroa.042.0.copyload43 = load i64, ptr %.sroa.5.076, align 8, !noalias !10378 ; 2 uses
  %.sroa.844.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 8
  %.sroa.844.sroa.0.0.copyload = load i64, ptr %.sroa.844.0..sroa.5.8..sroa_idx, align 8, !noalias !10378 ; 3 uses
  %.sroa.844.sroa.6.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 16
  %.sroa.844.sroa.6.0.copyload = load i64, ptr %.sroa.844.sroa.6.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10378 ; 3 uses
  %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5.076, i64 24 ; 2 uses
  %i.ar = load <2 x i64>, ptr %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10378
  %.sroa.844.sroa.7.0.copyload = load i64, ptr %.sroa.844.sroa.7.0..sroa.844.0..sroa.5.8..sroa_idx.sroa_idx, align 8, !noalias !10378 ; 3 uses
  switch i64 %.sroa.042.0.copyload43, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge [
    i64 -1, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
    i64 0, label %bb.q
  ]

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit._crit_edge: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %.pre79 = load i64, ptr %i.b, align 8, !range !6, !alias.scope !10379, !noalias !10380
  br label %bb.r

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread: ; preds = %.backedge, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit
  %i.as = phi i64 [ %i.ap, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit ], [ %storemerge, %.backedge ] ; 2 uses
  %i.at = icmp eq i64 %i.aj, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  %i.au = mul nuw i64 %i.aj, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.au, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10381
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread: ; preds = %bb.n, %bb.o
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit: ; preds = %.body36
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtCsdftwklc2oBO_7similar5types6DiffOpEEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #35
  br i1 %.sroa.012.1.lpad-body, label %bb.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29: ; preds = %bb.h, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread
  switch i64 %i.as, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge [
    i64 0, label %bb.i
    i64 1, label %bb.k
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29
  %.sroa.561.0.copyload.pre = load ptr, ptr %i.l, align 8
  br label %bb.l

bb.i:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val21 = load i64, ptr %i.b, align 8           ; 2 uses
  %i.av = icmp eq i64 %.val21, 0
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val22 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.aw = mul nuw i64 %.val21, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit30

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29
  %i.ax = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !4, !noundef !5
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.i, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge, %bb.k
  %.sroa.561.0.copyload = phi ptr [ %.sroa.561.0.copyload.pre, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit29._crit_edge ], [ %i.ax, %bb.k ] ; 3 uses
  %.sroa.059.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  %i.ba = load i64, ptr %i.o, align 8, !alias.scope !10382, !noalias !10383, !noundef !5 ; 3 uses
  %i.bb = load i64, ptr %i.a, align 8, !range !6, !alias.scope !10382, !noalias !10383, !noundef !5
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.p unwind label %bb.n, !noalias !10383

bb.n:                                             ; preds = %bb.m
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = icmp eq i64 %.sroa.059.0.copyload, 0
  br i1 %i.be, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread, label %bb.o
end_hunk_7
begin_hunk_8_@_RNvNtCsdftwklc2oBO_7similar6common14group_diff_ops:bb.a
  %.pre = load ptr, ptr %i.l, align 8, !alias.scope !10385, !noalias !10386
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge, %bb.t
  %i.bn = phi ptr [ %.pre, %._crit_edge ], [ %i.ao, %bb.t ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [40 x i8], ptr %i.bn, i64 %i.ap ; 4 uses
  store i64 0, ptr %i.bo, align 8, !noalias !10385
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %.sroa.844.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !10385
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store i64 %.sroa.844.sroa.6.0.copyload, ptr %.sroa.549.0..sroa_idx, align 8, !noalias !10385
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %2, ptr %.sroa.650.0..sroa_idx, align 8, !noalias !10385
  %i.bp = add i64 %i.ap, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.m, align 8, !alias.scope !10385, !noalias !10386
  %.sroa.051.0.copyload = load i64, ptr %i.b, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10387)
  %i.bq = load i64, ptr %i.o, align 8, !alias.scope !10387, !noalias !10388, !noundef !5 ; 3 uses
  %i.br = load i64, ptr %i.a, align 8, !range !6, !alias.scope !10387, !noalias !10388, !noundef !5
  %i.bs = icmp eq i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEE8grow_oneB16_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.z unwind label %bb.x, !noalias !10388

bb.x:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bu = icmp eq i64 %.sroa.051.0.copyload, 0
  br i1 %i.bu, label %.body36, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = mul nuw i64 %.sroa.051.0.copyload, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bn, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !10389
  br label %.body36

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.bw = load ptr, ptr %i.n, align 8, !alias.scope !10387, !noalias !10388, !nonnull !5, !noundef !5
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bq ; 3 uses
  store i64 %.sroa.051.0.copyload, ptr %i.bx, align 8, !noalias !10387
  %.sroa.553.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store ptr %i.bn, ptr %.sroa.553.0..sroa_idx54, align 8, !noalias !10387
  %.sroa.656.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i64 %i.bp, ptr %.sroa.656.0..sroa_idx57, align 8, !noalias !10387
  %i.by = add i64 %i.bq, 1
  store i64 %i.by, ptr %i.o, align 8, !alias.scope !10387, !noalias !10388
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36
  %i.bz = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #36 ; 7 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.aa, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !13

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #38
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.aa
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.z
  %i.cb = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.844.sroa.7.0.copyload, i64 %2) ; 3 uses
  %i.cc = add i64 %i.cb, %.sroa.844.sroa.0.0.copyload
  %i.cd = add i64 %i.cb, %.sroa.844.sroa.6.0.copyload
  %i.ce = sub i64 %.sroa.844.sroa.7.0.copyload, %i.cb
  store i64 0, ptr %i.bz, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 %i.cc, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i64 %i.cd, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i64 %i.ce, ptr %.sroa.6.0..sroa_idx, align 8
  store i64 1, ptr %i.b, align 8
  store ptr %i.bz, ptr %i.l, align 8
  br label %.backedge

.backedge:                                        ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, %bb.ab
  %i.cf = phi ptr [ %i.bz, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.ch, %bb.ab ]
  %storemerge = phi i64 [ 1, %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit ], [ %i.cj, %bb.ab ] ; 3 uses
  store i64 %storemerge, ptr %i.m, align 8
  %i.cg = icmp eq ptr %i.aq, %i.ak
  br i1 %i.cg, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB10_.exit

bb.ab:                                            ; preds = %._crit_edge81, %bb.r
  %i.ch = phi ptr [ %.pre82, %._crit_edge81 ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [40 x i8], ptr %i.ch, i64 %i.ap ; 4 uses
  store i64 %.sroa.042.0.copyload43, ptr %i.ci, align 8, !noalias !10379
  %.sroa.6.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.sroa.844.sroa.0.0.copyload, ptr %.sroa.6.0..sroa_idx46, align 8, !noalias !10379
  %.sroa.847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.844.sroa.6.0.copyload, ptr %.sroa.847.0..sroa_idx, align 8, !noalias !10379
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store <2 x i64> %i.ar, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !10379
  %i.cj = add i64 %i.ap, 1
  br label %.backedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40: ; preds = %.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread, %bb.ad, %bb.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit
  %.pn89 = phi { ptr, i32 } [ %i.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit.thread ], [ %eh.lpad-body37, %bb.ad ], [ %eh.lpad-body37, %bb.ac ], [ %eh.lpad-body37, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit ], [ %eh.lpad-body37, %.split ]
  resume { ptr, i32 } %.pn89

bb.ac:                                            ; preds = %.split, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1t_.exit
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.ck = icmp eq i64 %.val, 0
  br i1 %i.ck, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val20 = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.cl = mul nuw i64 %.val, 40
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8) #36
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpEEB1c_.exit40
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef range(i64 16, 33) %2) unnamed_addr #13 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10409)
  %.sroa.0.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !10408, !noalias !10409
  %.sroa.02.0.copyload.i.i = load i64, ptr %1, align 1, !alias.scope !10409, !noalias !10408
  store i64 %.sroa.02.0.copyload.i.i, ptr %0, align 1, !alias.scope !10408, !noalias !10409
  store i64 %.sroa.0.0.copyload.i.i, ptr %1, align 1, !alias.scope !10409, !noalias !10408
  %exitcond.not.i = icmp eq i64 %i.a, 1
  br i1 %exitcond.not.i, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10411)
  %.sroa.0.0.copyload.i.i.1 = load i64, ptr %i.b, align 1, !alias.scope !10410, !noalias !10411
  %.sroa.02.0.copyload.i.i.1 = load i64, ptr %i.c, align 1, !alias.scope !10411, !noalias !10410
  store i64 %.sroa.02.0.copyload.i.i.1, ptr %i.b, align 1, !alias.scope !10410, !noalias !10411
  store i64 %.sroa.0.0.copyload.i.i.1, ptr %i.c, align 1, !alias.scope !10411, !noalias !10410
  %exitcond.not.i.1 = icmp eq i64 %i.a, 2
  br i1 %exitcond.not.i.1, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10413)
  %.sroa.0.0.copyload.i.i.2 = load i64, ptr %i.d, align 1, !alias.scope !10412, !noalias !10413
  %.sroa.02.0.copyload.i.i.2 = load i64, ptr %i.e, align 1, !alias.scope !10413, !noalias !10412
  store i64 %.sroa.02.0.copyload.i.i.2, ptr %i.d, align 1, !alias.scope !10412, !noalias !10413
  store i64 %.sroa.0.0.copyload.i.i.2, ptr %i.e, align 1, !alias.scope !10413, !noalias !10412
  %exitcond.not.i.2 = icmp eq i64 %i.a, 3
  br i1 %exitcond.not.i.2, label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10415)
  %.sroa.0.0.copyload.i.i.3 = load i64, ptr %i.f, align 1, !alias.scope !10414, !noalias !10415
  %.sroa.02.0.copyload.i.i.3 = load i64, ptr %i.g, align 1, !alias.scope !10415, !noalias !10414
  store i64 %.sroa.02.0.copyload.i.i.3, ptr %i.f, align 1, !alias.scope !10414, !noalias !10415
  store i64 %.sroa.0.0.copyload.i.i.3, ptr %i.g, align 1, !alias.scope !10415, !noalias !10414
  br label %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit

_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.h = and i64 %2, 7                            ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit
  %i.i = and i64 %2, 56                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %i.i ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.i ; 4 uses
  %i.l = icmp samesign ult i64 %i.h, 4
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  %.sroa.0.0.copyload.i.i4 = load i32, ptr %i.j, align 1, !alias.scope !10416, !noalias !10417
  %.sroa.02.0.copyload.i.i5 = load i32, ptr %i.k, align 1, !alias.scope !10417, !noalias !10416
  store i32 %.sroa.02.0.copyload.i.i5, ptr %i.j, align 1, !alias.scope !10416, !noalias !10417
  store i32 %.sroa.0.0.copyload.i.i4, ptr %i.k, align 1, !alias.scope !10417, !noalias !10416
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 4, %bb.f ] ; 4 uses
  %i.m = and i64 %2, 2
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.0.i ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  %.sroa.0.0.copyload.i9.i = load i16, ptr %i.o, align 1, !alias.scope !10418, !noalias !10419
  %.sroa.02.0.copyload.i10.i = load i16, ptr %i.p, align 1, !alias.scope !10419, !noalias !10418
  store i16 %.sroa.02.0.copyload.i10.i, ptr %i.o, align 1, !alias.scope !10418, !noalias !10419
  store i16 %.sroa.0.0.copyload.i9.i, ptr %i.p, align 1, !alias.scope !10419, !noalias !10418
  %i.q = or disjoint i64 %.sroa.0.0.i, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %3 = trunc i64 %2 to i1
  br i1 %3, label %bb.j, label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.0.1.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 %.sroa.0.1.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10421)
  %.sroa.0.0.copyload.i11.i = load i8, ptr %i.r, align 1, !alias.scope !10420, !noalias !10421
  %.sroa.02.0.copyload.i12.i = load i8, ptr %i.s, align 1, !alias.scope !10421, !noalias !10420
  store i8 %.sroa.02.0.copyload.i12.i, ptr %i.r, align 1, !alias.scope !10420, !noalias !10421
  store i8 %.sroa.0.0.copyload.i11.i, ptr %i.s, align 1, !alias.scope !10421, !noalias !10420
  br label %_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit

_RNvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes25swap_nonoverlapping_short.exit: ; preds = %bb.j, %bb.i, %_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsdftwklc2oBO_7similar.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @_RNvNtNtCsdftwklc2oBO_7similar10algorithms7compact25normalize_diff_op_cursors(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 230584300921369396) %1) unnamed_addr #14 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %switch.lookup

switch.lookup:                                    ; preds = %bb.a
  %i.a = load i64, ptr %0, align 8, !range !4, !alias.scope !10432, !noalias !10433, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !10432, !noalias !10433, !noundef !5
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %switch.ext
  %.sink3.i.i = load i64, ptr %i.d, align 8, !alias.scope !10434, !noalias !10435, !noundef !5
  %.idx = mul nuw nsw i64 %1, 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  br label %.lr.ph

default.unreachable14:                            ; preds = %.lr.ph
  unreachable

.lr.ph:                                           ; preds = %switch.lookup, %bb.f
  %.sroa.01.113 = phi i64 [ %.sroa.01.2, %bb.f ], [ %i.c, %switch.lookup ] ; 2 uses
  %.sroa.02.112 = phi i64 [ %.sroa.02.2, %bb.f ], [ %.sink3.i.i, %switch.lookup ] ; 2 uses
  %.sroa.03.011 = phi ptr [ %i.f, %bb.f ], [ %0, %switch.lookup ] ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 40 ; 2 uses
  %i.g = load i64, ptr %.sroa.03.011, align 8, !range !4, !noundef !5
  switch i64 %i.g, label %default.unreachable14 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = add i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5
  %i.o = add i64 %i.n, %i.k
  br label %bb.f

bb.c:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  store i64 %.sroa.02.112, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  %i.u = add i64 %i.t, %i.r
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  store i64 %.sroa.01.113, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.x = load i64, ptr %i.w, align 8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !5
  %i.aa = add i64 %i.z, %i.x
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = add i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.03.011, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !5
  %i.ak = add i64 %i.aj, %i.ah
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.02.2 = phi i64 [ %i.o, %bb.b ], [ %.sroa.02.112, %bb.c ], [ %i.aa, %bb.d ], [ %i.ak, %bb.e ]
  %.sroa.01.2 = phi i64 [ %i.l, %bb.b ], [ %i.u, %bb.c ], [ %.sroa.01.113, %bb.d ], [ %i.af, %bb.e ]
  %i.al = icmp eq ptr %i.f, %i.e
  br i1 %i.al, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsdftwklc2oBO_7similar10algorithms7compact27swap_adjacent_insert_delete(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = add nuw nsw i64 %2, 1                    ; 3 uses
  %i.c = icmp ult i64 %2, %1
  br i1 %i.c, label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit, label %bb.b

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2 ; 7 uses
  %i.e = load i64, ptr %i.d, align 8, !range !4, !alias.scope !10456, !noalias !10457, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !10456, !noalias !10457, !noundef !5
  %i.h = icmp samesign ult i64 %i.b, %1
  br i1 %i.h, label %bb.c, label %bb.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %2, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #37
  unreachable

bb.c:                                             ; preds = %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit
  %i.i = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.b ; 14 uses
  %i.j = load i64, ptr %i.i, align 8, !range !4, !alias.scope !10458, !noalias !10459, !noundef !5 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10458, !noalias !10459, !noundef !5 ; 2 uses
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit6.sink.split
    i64 1, label %bb.d
    i64 2, label %switch.lookup
    i64 3, label %bb.d
  ]

default.unreachable:                              ; preds = %switch.lookup, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c, %bb.c
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit6.sink.split

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit6.sink.split: ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ 24, %bb.c ], [ 16, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sink
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !10458, !noalias !10459, !noundef !5
  %i.o = add i64 %i.n, %i.l
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.c, %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit6.sink.split
  %.sink5.i.i4 = phi i64 [ %i.l, %bb.c ], [ %i.o, %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9old_range.exit6.sink.split ]
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1_NtNtCsdftwklc2oBO_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishB9_, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %switch.ext
  %.sink3.i.i = load i64, ptr %i.p, align 8, !alias.scope !10460, !noalias !10461, !noundef !5
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.e:                                             ; preds = %switch.lookup
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.u = add i64 %i.t, %i.r
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range.exit11

bb.f:                                             ; preds = %switch.lookup
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range.exit11

bb.g:                                             ; preds = %switch.lookup
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.ab = add i64 %i.aa, %i.y
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range.exit11

bb.h:                                             ; preds = %switch.lookup
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !10462, !noalias !10463, !noundef !5
  %i.ag = add i64 %i.af, %i.ad
  br label %_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range.exit11

_RNvMs1_NtCsdftwklc2oBO_7similar5typesNtB5_6DiffOp9new_range.exit11: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sink.i.i9 = phi i64 [ %i.ag, %bb.h ], [ %i.ab, %bb.g ], [ %i.w, %bb.f ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_8
begin_hunk_9_@_RNvXs2_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_9GraphemesNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next:bb.a
  %i.iv = icmp slt i8 %i.is, -64
  br i1 %i.iv, label %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i, label %bb.ba

bb.az:                                            ; preds = %bb.ba, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i
  %.sroa.010.0.i.i.i = phi i32 [ %i.jm, %bb.ba ], [ %i.in, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit17.i.i.i ]
  %i.iw = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ix = and i8 %i.ih, 63
  %i.iy = zext nneg i8 %i.ix to i32
  %i.iz = or disjoint i32 %i.iw, %i.iy
  br label %.thread.i.i

_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i
  %i.ja = icmp ne i64 %i.fu, 3
  tail call void @llvm.assume(i1 %i.ja)
  %i.jb = getelementptr inbounds i8, ptr %i.if, i64 -4
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !10795, !noalias !10800, !noundef !5
  %i.jd = and i8 %i.jc, 7
  %i.je = zext nneg i8 %i.jd to i32
  %i.jf = shl nuw nsw i32 %i.je, 6
  %i.jg = and i8 %i.is, 63
  %i.jh = zext nneg i8 %i.jg to i32
  %i.ji = or disjoint i32 %i.jf, %i.jh
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i
  %.sroa.010.1.i.i.i = phi i32 [ %i.ji, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit21.i.i.i ], [ %i.iu, %_RNvXs2K_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsdftwklc2oBO_7similar.exit19.i.i.i ]
  %i.jj = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.jk = and i8 %i.il, 63
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = or disjoint i32 %i.jj, %i.jl
  br label %bb.az

bb.bb:                                            ; preds = %bb.aw, %.split.i54.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @167) #37, !noalias !10797
  unreachable

bb.bc:                                            ; preds = %bb.au
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #37, !noalias !10792
  unreachable

.thread.i.i:                                      ; preds = %bb.az, %bb.ay
  %.sroa.4.1.i.ph.i.i = phi i32 [ %i.ip, %bb.ay ], [ %i.iz, %bb.az ] ; 2 uses
  %i.jn = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i, 1114112
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.4.1.i.ph.i.i), !noalias !10792 ; 2 uses
  store i8 %i.jo, ptr %i.bl, align 1, !alias.scope !10791, !noalias !10792
  %.pre103.i.i = load i8, ptr %i.bk, align 8, !range !10784, !alias.scope !10791, !noalias !10792 ; 2 uses
  %.not46.i.i = icmp eq i8 %.pre103.i.i, -1
  br i1 %.not46.i.i, label %bb.bm, label %.thread.thread.i.i, !prof !10801

.thread.thread.i.i:                               ; preds = %.thread.i.i, %bb.at, %bb.as
  %i.jp = phi i8 [ %i.jo, %.thread.i.i ], [ %i.hy, %bb.at ], [ %.pre102.i.i, %bb.as ] ; 6 uses
  %i.jq = phi i8 [ %.pre103.i.i, %.thread.i.i ], [ %i.gc, %bb.at ], [ %i.gc, %bb.as ] ; 6 uses
  switch i8 %i.jp, label %bb.bd [
    i8 1, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i
    i8 2, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.bd:                                            ; preds = %.thread.thread.i.i
  switch i8 %i.jq, label %bb.be [
    i8 1, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 2, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
    i8 7, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  ]

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.jp, label %bb.bf [
    i8 6, label %bb.bg
    i8 8, label %bb.bh
    i8 14, label %bb.bh
  ]

bb.bf:                                            ; preds = %bb.be
  switch i8 %i.jq, label %bb.bi [
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 13, label %bb.bj
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bg:                                            ; preds = %bb.be
  switch i8 %i.jq, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 6, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 8, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 9, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 5, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bh:                                            ; preds = %bb.be, %bb.be
  switch i8 %i.jq, label %bb.bi [
    i8 13, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 14, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 3, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 12, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
    i8 15, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
  ]

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %i.jr = icmp eq i8 %i.jp, 10
  br i1 %i.jr, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i, label %.thread.i.i.i

bb.bj:                                            ; preds = %bb.bf
  switch i8 %i.jp, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 9, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 13, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i
    i8 10, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  ]

.thread.i.i.i:                                    ; preds = %bb.bi
  switch i8 %i.jq, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i [
    i8 4, label %bb.bk
    i8 5, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
    i8 11, label %bb.bl
  ]

bb.bk:                                            ; preds = %.thread.i.i.i
  %i.js = icmp eq i8 %i.jp, 15
  br i1 %i.js, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bl:                                            ; preds = %.thread.i.i.i
  %i.jt = icmp eq i8 %i.jp, 11
  br i1 %i.jt, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i: ; preds = %.thread.thread.i.i
  %.not101.i.i = icmp eq i8 %i.jq, 7
  br i1 %.not101.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, label %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i

bb.bm:                                            ; preds = %.thread.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #37, !noalias !10792
  unreachable

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bj, %bb.bj, %bb.bh, %bb.bh, %bb.bh, %bb.bh, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bg, %bb.bf, %bb.bf
  store i8 3, ptr %i.bj, align 2, !alias.scope !10791, !noalias !10792
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.i.i, %bb.bl, %bb.bk, %.thread.i.i.i, %bb.bj, %bb.bg, %bb.bd, %bb.bd, %bb.bd, %.thread.thread.i.i, %.thread.thread.i.i
  store i8 4, ptr %i.bj, align 2, !alias.scope !10791, !noalias !10792
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %i.ju = load i8, ptr %i.br, align 4, !range !10, !alias.scope !10791, !noalias !10792, !noundef !5 ; 2 uses
  %i.jv = xor i8 %i.ju, 1
  %..i.i = sub nuw nsw i8 4, %i.ju
  store i8 %..i.i, ptr %i.bj, align 2, !alias.scope !10791, !noalias !10792
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i: ; preds = %.thread.i.i.i, %bb.bg
  %i.jw = icmp eq i64 %i.fu, 0
  br i1 %i.jw, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  br i1 %.not.i38.i, label %bb.bo, label %.split.i58.i.i

.split.i58.i.i:                                   ; preds = %bb.bn
  %i.jx = icmp eq i64 %i.fu, %i.k
  br i1 %i.jx, label %bb.br, label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  %i.jy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.jz = load i8, ptr %i.jy, align 1, !alias.scope !10802, !noalias !10794, !noundef !5
  %i.ka = icmp sgt i8 %i.jz, -65
  br i1 %i.ka, label %bb.br, label %bb.bs

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i: ; preds = %bb.bl
  %i.kb = load i64, ptr %i.bo, align 8, !range !7, !alias.scope !10791, !noalias !10792, !noundef !5
  %i.kc = trunc nuw i64 %i.kb to i1
  br i1 %i.kc, label %bb.bt, label %bb.bu

_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i: ; preds = %bb.bk
  %i.kd = icmp eq i64 %i.fu, 0
  br i1 %i.kd, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  br i1 %.not.i38.i, label %bb.bq, label %.split.i62.i.i

.split.i62.i.i:                                   ; preds = %bb.bp
  %i.ke = icmp eq i64 %i.fu, %i.k
  br i1 %i.ke, label %bb.bz, label %bb.ca

bb.bq:                                            ; preds = %bb.bp
  %i.kf = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !10803, !noalias !10794, !noundef !5
  %i.kh = icmp sgt i8 %i.kg, -65
  br i1 %i.kh, label %bb.bz, label %bb.ca

bb.br:                                            ; preds = %bb.bo, %.split.i58.i.i, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread88.i.i
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor21handle_incb_consonant(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.bs:                                            ; preds = %bb.bo, %.split.i58.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @170) #37, !noalias !10797
  unreachable

bb.bt:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.ki = load i64, ptr %i.bp, align 8, !alias.scope !10791, !noalias !10792, !noundef !5
  %1 = trunc i64 %i.ki to i1                      ; 2 uses
  %2 = xor i1 %1, true
  %.51.i.i = select i1 %1, i8 3, i8 4
  store i8 %.51.i.i, ptr %i.bj, align 2, !alias.scope !10791, !noalias !10792
  %3 = zext i1 %2 to i8
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.bu:                                            ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread90.i.i
  %i.kj = icmp eq i64 %i.fu, 0
  br i1 %i.kj, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  br i1 %.not.i38.i, label %bb.bw, label %.split.i66.i.i

.split.i66.i.i:                                   ; preds = %bb.bv
  %i.kk = icmp eq i64 %i.fu, %i.k
  br i1 %i.kk, label %bb.bx, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.kl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.fu
  %i.km = load i8, ptr %i.kl, align 1, !alias.scope !10804, !noalias !10794, !noundef !5
  %i.kn = icmp sgt i8 %i.km, -65
  br i1 %i.kn, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %.split.i66.i.i, %bb.bu
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.by:                                            ; preds = %bb.bw, %.split.i66.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #37, !noalias !10797
  unreachable

bb.bz:                                            ; preds = %bb.bq, %.split.i62.i.i, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread92.i.i
  tail call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.fu) #40
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i

bb.ca:                                            ; preds = %bb.bq, %.split.i62.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, i64 noundef 0, i64 noundef %i.fu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @172) #37, !noalias !10797
  unreachable

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i: ; preds = %bb.bz, %bb.bx, %bb.br
  call fastcc void @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor18is_boundary_result(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) #40, !noalias !10805
  %.pr.i = load i64, ptr %i.a, align 8, !noalias !10788 ; 2 uses
  %.not29.i = icmp eq i64 %.pr.i, -1
  br i1 %.not29.i, label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.pre135.i = load i8, ptr %i.bq, align 8, !range !10, !noalias !10788
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i

bb.cb:                                            ; preds = %bb.m
  %i.ko = tail call noundef i8 @_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %.sroa.08.0.i), !noalias !10779
  store i8 %i.ko, ptr %i.bk, align 8, !alias.scope !10777, !noalias !10779
  br label %bb.ab

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit: ; preds = %bb.ae, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i
  %.ph = phi i64 [ 3, %bb.ae ], [ %.pr.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.i ]
  %.pre = load i64, ptr %i.bq, align 8, !noalias !10788
  br label %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit, %.loopexit.i, %bb.af
  %i.kp = phi i64 [ %i.ga, %bb.af ], [ 0, %.loopexit.i ], [ %.pre, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit ]
  %i.kq = phi i64 [ 0, %bb.af ], [ 0, %.loopexit.i ], [ %.ph, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10788
  br label %bb.cd

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i: ; preds = %bb.ab, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10788
  br label %.loopexit

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i: ; preds = %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread84.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10788
  br label %bb.cc

_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i: ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i, %bb.bt, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i
  %i.kr = phi i8 [ %.pre135.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit._RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread_crit_edge.i ], [ %3, %bb.bt ], [ %i.jv, %_RNvNtCs96hDHc8Uzvz_20unicode_segmentation8grapheme10check_pair.exit.thread86.i.i ]
  %i.ks = trunc nuw i8 %i.kr to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10788
  br i1 %i.ks, label %.loopexit, label %bb.cc

bb.cc:                                            ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread157.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !10777, !noalias !10779
  br label %bb.k

bb.cd:                                            ; preds = %bb.z, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i, %bb.f
  %.sroa.14.0.ph = phi i64 [ undef, %bb.f ], [ %i.kp, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i ], [ undef, %bb.z ]
  %.sroa.8.0.ph = phi i64 [ 2, %bb.f ], [ %i.kq, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread57.i ], [ 2, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10806
  store i64 %.sroa.8.0.ph, ptr %i.b, align 8, !noalias !10806
  %i.kt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.14.0.ph, ptr %i.kt, align 8, !noalias !10806
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @159, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @206) #37, !noalias !10806
  unreachable

.loopexit:                                        ; preds = %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.i, %_RNvMs4_NtCs96hDHc8Uzvz_20unicode_segmentation8graphemeNtB5_14GraphemeCursor11is_boundary.exit.thread.thread.i
  store i8 0, ptr %i.bi, align 1, !alias.scope !10777, !noalias !10779
  %i.ku = load i64, ptr %i.c, align 8, !alias.scope !10777, !noalias !10779, !noundef !5 ; 6 uses
  %i.kv = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.kw = load i64, ptr %i.j, align 8, !noundef !5 ; 4 uses
  %i.kx = icmp ugt i64 %i.d, %i.ku
  %i.ky = icmp ugt i64 %i.ku, %i.kw
  %or.cond.i = or i1 %i.kx, %i.ky
  br i1 %or.cond.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, label %bb.ce, !prof !30

bb.ce:                                            ; preds = %.loopexit
  %i.kz = icmp eq i64 %i.d, %i.kw
  br i1 %i.kz, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  br i1 %i.o, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.ch, %bb.cf
  %i.la = icmp eq i64 %i.ku, %i.kw
  br i1 %i.la, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit

bb.ch:                                            ; preds = %bb.cf
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.d
  %i.lc = load i8, ptr %i.lb, align 1, !alias.scope !10807, !noundef !5
  %i.ld = icmp sgt i8 %i.lc, -65
  br i1 %i.ld, label %bb.cg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, !prof !31

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.cg
  %i.le = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ku
  %i.lf = load i8, ptr %i.le, align 1, !alias.scope !10807, !noundef !5
  %i.lg = icmp sgt i8 %i.lf, -65
  br i1 %i.lg, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20, !prof !32

bb.ci:                                            ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @207) #37
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread20: ; preds = %bb.ch, %.loopexit, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kv, i64 noundef %i.kw, i64 noundef %i.d, i64 noundef %i.ku, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @208) #37
  unreachable

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %bb.cg, %bb.ce, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  %i.lh = sub nuw i64 %i.ku, %i.d
  %i.li = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.d
  br label %bb.cj

bb.cj:                                            ; preds = %bb.a, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %.sroa.3.0 = phi i64 [ %i.lh, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.li, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread ], [ null, %bb.a ]
  %i.lj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.lk = insertvalue { ptr, i64 } %i.lj, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.lk
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCsdftwklc2oBO_7similar5udiffNtB5_17UnifiedHunkHeaderNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsdftwklc2oBO_7similar5udiff20UnifiedDiffHunkRangeNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCsdftwklc2oBO_7similar5udiff20UnifiedDiffHunkRangeNtB6_7Display3fmtBA_, ptr %.sroa.47.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !9, !noundef !5
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @217, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs2_NtNtCsaKJjC64KgbL_3std4hash6randomNtB5_13DefaultHasherNtNtCsj6eKBz9Db1c_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10819)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10820)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !10819, !noalias !10820, !noundef !5
  %i.c = add i64 %i.b, 8
  store i64 %i.c, ptr %i.a, align 8, !alias.scope !10819, !noalias !10820
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !10819, !noalias !10820, !noundef !5 ; 5 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 8) ; 2 uses
  %i.h = icmp ugt i64 %i.g, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i.i = load i32, ptr %1, align 1, !alias.scope !10821, !noalias !10819
  %i.i = zext i32 %.sroa.014.0.copyload.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i.i
  %.sroa.015.0.copyload.i.i = load i16, ptr %i.l, align 1, !alias.scope !10821, !noalias !10819
  %i.m = zext i16 %.sroa.015.0.copyload.i.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i.i
  %i.q = or disjoint i64 %.sroa.03.0.i.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i.i, %..i.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10821, !noalias !10819, !noundef !5
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i.i
  br label %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i

_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i: ; preds = %bb.g, %bb.f
  %.sroa.0.2.i.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10819, !noalias !10820, !noundef !5
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8, !alias.scope !10819, !noalias !10820
  %i.ae = icmp ugt i64 %i.e, 8
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 5 uses
  %i.af = sub nuw nsw i64 8, %.sroa.0.0.i         ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, 8
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %._crit_edge.i, label %bb.k

bb.i:                                             ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core4hash3sip9u8to64_le.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10819, !noalias !10820, !noundef !5
  %i.al = xor i64 %i.ak, %i.ad                    ; 3 uses
  %i.am = load i64, ptr %0, align 8, !alias.scope !10822, !noalias !10820, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !10822, !noalias !10820, !noundef !5 ; 3 uses
  %i.ap = add i64 %i.ao, %i.am                    ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10822, !noalias !10820, !noundef !5
  %i.as = add i64 %i.ar, %i.al                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.au = xor i64 %i.at, %i.ap                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 16)
  %i.aw = xor i64 %i.as, %i.av                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 32)
  %i.ay = add i64 %i.as, %i.au                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ay, %i.ba
  store i64 %i.bb, ptr %i.an, align 8, !alias.scope !10822, !noalias !10820
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
end_hunk_9
