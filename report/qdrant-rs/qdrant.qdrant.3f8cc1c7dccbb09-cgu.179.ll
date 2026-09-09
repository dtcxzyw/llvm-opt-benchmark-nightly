Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.179?download=true
inline.NumInlined: 431
inline.NumDeleted: 193
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvXNtNtCsl8OoimOLbh_6qdrant5tonic15tonic_telemetryINtB4_21TonicTelemetryServiceINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtB6_4auth14AuthMiddlewareNtNtNtCsgOCJwUSa4vG_5tonic7service6router6RoutesEB2v_EEINtCs372LqxyVCI8_13tower_service7ServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtB2B_4body4BodyEE4call0B8_:bb.a
  unreachable

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCskKLDkoKarTP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21
  unreachable

bb.i:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 3 uses
  invoke void @_RNvXs_NtNtCs5TwP8AC98I6_5tower4util6eitherINtB4_20EitherResponseFutureINtNtCskKLDkoKarTP_4core3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB1b_6future6future6Futurep6OutputINtNtB1b_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB1b_6marker4SendEL_EENtNtNtB3W_7service6router12RoutesFutureEB2c_4pollCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %i.v) #17
          to label %bb.ax unwind label %bb.au

bb.k:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.f, align 8, !range !8, !noundef !5
  %i.y = icmp eq i64 %i.x, -1
  br i1 %i.y, label %bb.l, label %bb.m

common.ret:                                       ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit, %bb.l
  %storemerge = phi i8 [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit ], [ 3, %bb.l ]
  store i8 %storemerge, ptr %i.h, align 8
  ret void

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %common.ret

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %i.v)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.o:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  %i.aa = invoke noundef align 8 ptr @_RINvMs0_NtNtCs577yCKf7gy3_4http6header3mapNtB6_9HeaderMap3getReECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 11)
          to label %bb.q unwind label %bb.p       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.q:                                             ; preds = %bb.o
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %.thread.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val.i = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5 ; 11 uses
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val3.i = load i64, ptr %i.ad, align 8, !noundef !5 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.val3.i
  %i.af = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.af, label %.thread.thread94, label %iter.check

iter.check:                                       ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.val3.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp ult i64 %.val3.i, 32
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ag = and i64 %.val3.i, 24
  %n.vec = and i64 %.val3.i, -32                  ; 4 uses
  %i.ah = getelementptr i8, ptr %.val.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi132 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %predphi134, %vector.body ]
  %next.gep = getelementptr i8, ptr %.val.i, i64 %index ; 2 uses
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 2 uses
  %wide.load133 = load <16 x i8>, ptr %i.ai, align 1 ; 2 uses
  %i.aj = add <16 x i8> %wide.load, splat (i8 -127)
  %i.ak = icmp ult <16 x i8> %i.aj, splat (i8 -95)
  %i.al = add <16 x i8> %wide.load133, splat (i8 -127)
  %i.am = icmp ult <16 x i8> %i.al, splat (i8 -95)
  %i.an = icmp ne <16 x i8> %wide.load, splat (i8 9)
  %i.ao = icmp ne <16 x i8> %wide.load133, splat (i8 9)
  %i.ap = and <16 x i1> %i.ak, %i.an
  %predphi = or <16 x i1> %vec.phi, %i.ap         ; 2 uses
  %i.aq = and <16 x i1> %i.am, %i.ao
  %predphi134 = or <16 x i1> %vec.phi132, %i.aq   ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !460

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %predphi134, %predphi
  %i.as = bitcast <16 x i1> %bin.rdx to i16
  %i.at = icmp ne i16 %i.as, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.val3.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ag, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !483

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.at, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec135 = and i64 %.val3.i, -8                ; 3 uses
  %i.au = getelementptr i8, ptr %.val.i, i64 %n.vec135
  %i.av = insertelement <8 x i1> <i1 poison, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index136 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi137 = phi <8 x i1> [ %i.av, %vec.epilog.ph ], [ %predphi140, %vec.epilog.vector.body ]
  %next.gep138 = getelementptr i8, ptr %.val.i, i64 %index136
  %wide.load139 = load <8 x i8>, ptr %next.gep138, align 1 ; 2 uses
  %i.aw = add <8 x i8> %wide.load139, splat (i8 -127)
  %i.ax = icmp ult <8 x i8> %i.aw, splat (i8 -95)
  %i.ay = icmp ne <8 x i8> %wide.load139, splat (i8 9)
  %i.az = and <8 x i1> %i.ax, %i.ay
  %predphi140 = or <8 x i1> %vec.phi137, %i.az    ; 2 uses
  %index.next141 = add nuw i64 %index136, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !461

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bb = bitcast <8 x i1> %predphi140 to i8
  %i.bc = icmp ne i8 %i.bb, 0                     ; 2 uses
  %cmp.n142 = icmp eq i64 %.val3.i, %n.vec135
  br i1 %cmp.n142, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.01.02.i.i.i.ph = phi i1 [ false, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.sroa.03.01.i.i.i.ph = phi ptr [ %.val.i, %iter.check ], [ %i.ah, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.t
  %.sroa.01.02.i.i.i = phi i1 [ %.sroa.06.0.i.i.i, %bb.t ], [ %.sroa.01.02.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.03.01.i.i.i = phi ptr [ %i.bd, %bb.t ], [ %.sroa.03.01.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 1 ; 2 uses
  %i.be = load i8, ptr %.sroa.03.01.i.i.i, align 1, !noundef !5 ; 2 uses
  %i.bf = add i8 %i.be, -32
  %or.cond.i.i.i = icmp ult i8 %i.bf, 95
  br i1 %or.cond.i.i.i, label %bb.t, label %bb.s

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.t, %vec.epilog.middle.block, %middle.block
  %.sroa.06.0.i.i.i.lcssa = phi i1 [ %i.bc, %vec.epilog.middle.block ], [ %i.at, %middle.block ], [ %.sroa.06.0.i.i.i, %bb.t ]
  br i1 %.sroa.06.0.i.i.i.lcssa, label %.thread.thread, label %bb.u

bb.s:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = icmp ne i8 %i.be, 9
  %i.bh = or i1 %.sroa.01.02.i.i.i, %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.06.0.i.i.i = phi i1 [ %i.bh, %bb.s ], [ %.sroa.01.02.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.bi = icmp eq ptr %i.bd, %i.ae
  br i1 %i.bi, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !462

bb.u:                                             ; preds = %._crit_edge.loopexit.i.i.i
  %cond = icmp eq i64 %.val3.i, 1
  %i.bj = load i8, ptr %.val.i, align 1, !alias.scope !484 ; 2 uses
  br i1 %cond, label %bb.v, label %thread-pre-split.i.i.i

bb.v:                                             ; preds = %bb.u
  switch i8 %i.bj, label %bb.ac [
    i8 43, label %.thread.thread94
    i8 45, label %.thread.thread94
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.u
  switch i8 %i.bj, label %bb.ac [
    i8 43, label %bb.w
    i8 45, label %bb.x
  ]

bb.w:                                             ; preds = %thread-pre-split.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.bl = add nsw i64 %.val3.i, -1
  br label %bb.ac

bb.x:                                             ; preds = %thread-pre-split.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  %i.bn = add nsw i64 %.val3.i, -1                ; 2 uses
  %i.bo = icmp samesign ult i64 %.val3.i, 9
  br i1 %i.bo, label %.lr.ph143.i.i.i, label %.lr.ph.i.i.i20

.loopexit.i.i.i:                                  ; preds = %bb.aa, %bb.ab, %bb.af, %7, %13, %21, %29, %37, %41, %48, %.preheader.i.i.i
  %.sroa.086.1.i.i.i = phi i32 [ %i.co, %bb.ab ], [ %50, %48 ], [ %i.db, %bb.af ], [ 0, %.preheader.i.i.i ], [ %5, %7 ], [ %15, %13 ], [ %23, %21 ], [ %31, %29 ], [ %39, %37 ], [ %43, %41 ], [ %i.cc, %bb.aa ]
  %.sroa.086.1.i.i.i.fr = freeze i32 %.sroa.086.1.i.i.i
  %i.bp = zext i32 %.sroa.086.1.i.i.i.fr to i64
  %i.bq = shl nuw i64 %i.bp, 32
  br label %.thread

.lr.ph.i.i.i20:                                   ; preds = %bb.x, %bb.aa
  %.sroa.0.1138.i.i.i = phi ptr [ %i.br, %bb.aa ], [ %i.bm, %bb.x ] ; 3 uses
  %.sroa.26.1137.i.i.i = phi i64 [ %i.bs, %bb.aa ], [ %i.bn, %bb.x ]
  %.sroa.086.0136.i.i.i = phi i32 [ %i.cc, %bb.aa ], [ 0, %bb.x ]
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.1138.i.i.i, i64 1
  %i.bs = add nsw i64 %.sroa.26.1137.i.i.i, -1    ; 2 uses
  %i.bt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.0136.i.i.i, i32 10) ; 2 uses
  %i.bu = extractvalue { i32, i1 } %i.bt, 0
  %i.bv = extractvalue { i32, i1 } %i.bt, 1
  br i1 %i.bv, label %.loopexit114.sink.split.i.i.i, label %bb.y, !prof !17

bb.y:                                             ; preds = %.lr.ph.i.i.i20
  %i.bw = load i8, ptr %.sroa.0.1138.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.bx = zext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48                  ; 2 uses
  %i.bz = icmp ult i32 %i.by, 10
  br i1 %i.bz, label %bb.z, label %.thread.thread94

bb.z:                                             ; preds = %bb.y
  %i.ca = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bu, i32 %i.by) ; 2 uses
  %i.cb = extractvalue { i32, i1 } %i.ca, 1
  br i1 %i.cb, label %.thread.thread94, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.cc = extractvalue { i32, i1 } %i.ca, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not104.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i20

.loopexit114.sink.split.i.i.i:                    ; preds = %.lr.ph.i.i.i20, %.preheader115.i.i.i
  %.sroa.0.3147.lcssa.sink.i.i.i = phi ptr [ %.sroa.0.3147.i.i.i, %.preheader115.i.i.i ], [ %.sroa.0.1138.i.i.i, %.lr.ph.i.i.i20 ]
  %.sink190.i.i.i = phi i64 [ 513, %.preheader115.i.i.i ], [ 769, %.lr.ph.i.i.i20 ]
  %i.cd = load i8, ptr %.sroa.0.3147.lcssa.sink.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.ce = add i8 %i.cd, -48
  %i.cf = icmp ult i8 %i.ce, 10
  %i.cg = select i1 %i.cf, i64 %.sink190.i.i.i, i64 257
  br label %.thread

.lr.ph143.i.i.i:                                  ; preds = %bb.x, %bb.ab
  %.sroa.0.2142.i.i.i = phi ptr [ %i.cn, %bb.ab ], [ %i.bm, %bb.x ] ; 2 uses
  %.sroa.26.2141.i.i.i = phi i64 [ %i.cm, %bb.ab ], [ %i.bn, %bb.x ]
  %.sroa.086.2140.i.i.i = phi i32 [ %i.co, %bb.ab ], [ 0, %bb.x ]
  %i.ch = load i8, ptr %.sroa.0.2142.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.ci = zext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48                  ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 10
  br i1 %i.ck, label %bb.ab, label %.thread.thread94

bb.ab:                                            ; preds = %.lr.ph143.i.i.i
  %i.cl = mul i32 %.sroa.086.2140.i.i.i, 10
  %i.cm = add nsw i64 %.sroa.26.2141.i.i.i, -1    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.2142.i.i.i, i64 1
  %i.co = sub i32 %i.cl, %i.cj                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not105.i.i.i, label %.loopexit.i.i.i, label %.lr.ph143.i.i.i

bb.ac:                                            ; preds = %bb.v, %bb.w, %thread-pre-split.i.i.i
  %.sroa.26.0.i.i.i = phi i64 [ %i.bl, %bb.w ], [ %.val3.i, %thread-pre-split.i.i.i ], [ %.val3.i, %bb.v ] ; 9 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.bk, %bb.w ], [ %.val.i, %thread-pre-split.i.i.i ], [ %.val.i, %bb.v ] ; 8 uses
  %i.cp = icmp samesign ult i64 %.sroa.26.0.i.i.i, 8
  br i1 %i.cp, label %.preheader.i.i.i, label %.preheader115.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.ac
  %.not107148.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not107148.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i

.preheader115.i.i.i:                              ; preds = %bb.ac, %bb.af
  %.sroa.0.3147.i.i.i = phi ptr [ %i.cq, %bb.af ], [ %.sroa.0.0.i.i.i, %bb.ac ] ; 3 uses
  %.sroa.26.3146.i.i.i = phi i64 [ %i.cr, %bb.af ], [ %.sroa.26.0.i.i.i, %bb.ac ]
  %.sroa.086.3145.i.i.i = phi i32 [ %i.db, %bb.af ], [ 0, %bb.ac ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.3147.i.i.i, i64 1
  %i.cr = add nsw i64 %.sroa.26.3146.i.i.i, -1    ; 2 uses
  %i.cs = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.086.3145.i.i.i, i32 10) ; 2 uses
  %i.ct = extractvalue { i32, i1 } %i.cs, 0
  %i.cu = extractvalue { i32, i1 } %i.cs, 1
  br i1 %i.cu, label %.loopexit114.sink.split.i.i.i, label %bb.ad, !prof !17

bb.ad:                                            ; preds = %.preheader115.i.i.i
  %i.cv = load i8, ptr %.sroa.0.3147.i.i.i, align 1, !alias.scope !484, !noundef !5
  %i.cw = zext i8 %i.cv to i32
  %i.cx = add nsw i32 %i.cw, -48                  ; 2 uses
  %i.cy = icmp ult i32 %i.cx, 10
  br i1 %i.cy, label %bb.ae, label %.thread.thread94

bb.ae:                                            ; preds = %bb.ad
  %i.cz = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ct, i32 %i.cx) ; 2 uses
  %i.da = extractvalue { i32, i1 } %i.cz, 1
  br i1 %i.da, label %.thread.thread94, label %bb.af, !prof !17

bb.af:                                            ; preds = %bb.ae
  %i.db = extractvalue { i32, i1 } %i.cz, 0       ; 2 uses
  %.not106.i.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not106.i.i.i, label %.loopexit.i.i.i, label %.preheader115.i.i.i

.lr.ph152.i.i.i:                                  ; preds = %.preheader.i.i.i
  %3 = load i8, ptr %.sroa.0.0.i.i.i, align 1, !alias.scope !484, !noundef !5
  %4 = zext i8 %3 to i32
  %5 = add nsw i32 %4, -48                        ; 3 uses
  %6 = icmp ult i32 %5, 10
  br i1 %6, label %7, label %.thread.thread94

7:                                                ; preds = %.lr.ph152.i.i.i
  %.not107.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 1
  br i1 %.not107.i.i.i, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.1

.lr.ph152.i.i.i.1:                                ; preds = %7
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 1
  %9 = load i8, ptr %8, align 1, !alias.scope !484, !noundef !5
  %10 = zext i8 %9 to i32
  %11 = add nsw i32 %10, -48                      ; 2 uses
  %12 = icmp ult i32 %11, 10
  br i1 %12, label %13, label %.thread.thread94

13:                                               ; preds = %.lr.ph152.i.i.i.1
  %14 = mul nuw nsw i32 %5, 10
  %15 = add nuw nsw i32 %11, %14                  ; 2 uses
  %.not107.i.i.i.1 = icmp eq i64 %.sroa.26.0.i.i.i, 2
  br i1 %.not107.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.2

.lr.ph152.i.i.i.2:                                ; preds = %13
  %16 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 2
  %17 = load i8, ptr %16, align 1, !alias.scope !484, !noundef !5
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, -48                      ; 2 uses
  %20 = icmp ult i32 %19, 10
  br i1 %20, label %21, label %.thread.thread94

21:                                               ; preds = %.lr.ph152.i.i.i.2
  %22 = mul nuw nsw i32 %15, 10
  %23 = add nuw nsw i32 %19, %22                  ; 2 uses
  %.not107.i.i.i.2 = icmp eq i64 %.sroa.26.0.i.i.i, 3
  br i1 %.not107.i.i.i.2, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.3

.lr.ph152.i.i.i.3:                                ; preds = %21
  %24 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 3
  %25 = load i8, ptr %24, align 1, !alias.scope !484, !noundef !5
  %26 = zext i8 %25 to i32
  %27 = add nsw i32 %26, -48                      ; 2 uses
  %28 = icmp ult i32 %27, 10
  br i1 %28, label %29, label %.thread.thread94

29:                                               ; preds = %.lr.ph152.i.i.i.3
  %30 = mul nuw nsw i32 %23, 10
  %31 = add nuw nsw i32 %27, %30                  ; 2 uses
  %.not107.i.i.i.3 = icmp eq i64 %.sroa.26.0.i.i.i, 4
  br i1 %.not107.i.i.i.3, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.4

.lr.ph152.i.i.i.4:                                ; preds = %29
  %32 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 4
  %33 = load i8, ptr %32, align 1, !alias.scope !484, !noundef !5
  %34 = zext i8 %33 to i32
  %35 = add nsw i32 %34, -48                      ; 2 uses
  %36 = icmp ult i32 %35, 10
  br i1 %36, label %37, label %.thread.thread94

37:                                               ; preds = %.lr.ph152.i.i.i.4
  %38 = mul i32 %31, 10
  %39 = add i32 %35, %38                          ; 2 uses
  %.not107.i.i.i.4 = icmp eq i64 %.sroa.26.0.i.i.i, 5
  br i1 %.not107.i.i.i.4, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.5

.lr.ph152.i.i.i.5:                                ; preds = %37
  %40 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 5
  %i.dc = load i8, ptr %40, align 1, !alias.scope !484, !noundef !5
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %41, label %.thread.thread94

41:                                               ; preds = %.lr.ph152.i.i.i.5
  %42 = mul i32 %39, 10
  %43 = add i32 %i.de, %42                        ; 2 uses
  %.not107.i.i.i.5 = icmp eq i64 %.sroa.26.0.i.i.i, 6
  br i1 %.not107.i.i.i.5, label %.loopexit.i.i.i, label %.lr.ph152.i.i.i.6

.lr.ph152.i.i.i.6:                                ; preds = %41
  %44 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 6
  %45 = load i8, ptr %44, align 1, !alias.scope !484, !noundef !5
  %46 = zext i8 %45 to i32
  %i.dg = add nsw i32 %46, -48                    ; 2 uses
  %47 = icmp ult i32 %i.dg, 10
  br i1 %47, label %48, label %.thread.thread94

48:                                               ; preds = %.lr.ph152.i.i.i.6
  %49 = mul i32 %43, 10
  %50 = add i32 %i.dg, %49
  br label %.loopexit.i.i.i

.thread.thread:                                   ; preds = %bb.q, %._crit_edge.loopexit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val89 = load i16, ptr %i.dh, align 8
  %i.di = add i16 %.val89, -200
  %spec.select.i.i.i90 = icmp ult i16 %i.di, 100
  %..i.i2191 = select i1 %spec.select.i.i.i90, i32 0, i32 2
  br label %bb.ag

.thread.thread94:                                 ; preds = %bb.y, %bb.z, %.lr.ph143.i.i.i, %bb.ae, %bb.ad, %.lr.ph152.i.i.i, %.lr.ph152.i.i.i.1, %.lr.ph152.i.i.i.2, %.lr.ph152.i.i.i.3, %.lr.ph152.i.i.i.4, %.lr.ph152.i.i.i.5, %.lr.ph152.i.i.i.6, %bb.v, %bb.v, %bb.r
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val99 = load i16, ptr %i.dj, align 8
  %i.dk = add i16 %.val99, -200
  %spec.select.i.i.i100 = icmp ult i16 %i.dk, 100
  %..i.i21101 = select i1 %spec.select.i.i.i100, i32 0, i32 2
  br label %bb.ag

.thread:                                          ; preds = %.loopexit.i.i.i, %.loopexit114.sink.split.i.i.i
  %.sroa.12.0.insert.insert.i.i.i = phi i64 [ %i.cg, %.loopexit114.sink.split.i.i.i ], [ %i.bq, %.loopexit.i.i.i ] ; 2 uses
  %i.dl = trunc i64 %.sroa.12.0.insert.insert.i.i.i to i1
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i, 32
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i64 %.sroa.5.0.extract.shift.i.i to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %.val = load i16, ptr %i.dm, align 8
  %i.dn = add i16 %.val, -200
  %spec.select.i.i.i = icmp ult i16 %i.dn, 100
  %..i.i21 = select i1 %spec.select.i.i.i, i32 0, i32 2
  %spec.select = select i1 %i.dl, i32 %..i.i21, i32 %.sroa.5.0.extract.trunc.i.i
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %.thread.thread94, %.thread.thread
  %i.do = phi i32 [ %..i.i21101, %.thread.thread94 ], [ %spec.select, %.thread ], [ %..i.i2191, %.thread.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %i.dq = invoke noundef align 8 ptr @_RINvMs_NtCs577yCKf7gy3_4http10extensionsNtB5_10Extensions3getNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry14CollectionNameEB15_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dp)
          to label %bb.ai unwind label %bb.ah     ; 2 uses

bb.ah:                                            ; preds = %bb.aj, %bb.ag
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ai:                                            ; preds = %bb.ag
  %.not.i23 = icmp eq ptr %i.dq, null
  br i1 %.not.i23, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) dereferenceable_or_null(24) %i.dq)
          to label %bb.al unwind label %bb.ah

bb.ak:                                            ; preds = %bb.ai
  store i64 -1, ptr %i.d, align 8, !alias.scope !485, !noalias !486
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 3 uses
  %.val15 = load ptr, ptr %i.ds, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.val15, i64 16 ; 6 uses
  %i.du = cmpxchg weak ptr %i.dt, i8 0, i8 1 acquire monotonic, align 1
  %i.dv = extractvalue { i8, i1 } %i.du, 1
  br i1 %i.dv, label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, label %bb.am, !prof !11

bb.am:                                            ; preds = %bb.al
  %i.dw = invoke noundef zeroext i1 @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull align 8 %i.dt, i64 undef, i32 noundef -1)
          to label %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i unwind label %.thread38 ; 0 uses

_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i: ; preds = %bb.am, %bb.al
  %i.dx = ptrtoint ptr %i.dt to i64               ; 2 uses
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16acquire_resource(i64 noundef %i.dx)
          to label %bb.an unwind label %.thread38

.thread38:                                        ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i, %bb.am
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #17
          to label %bb.av unwind label %bb.au

bb.an:                                            ; preds = %_RNvXNtCs27TyLBeV75a_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsbO4BqjCww8C_8lock_api5mutex8RawMutex4lock.exit.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.val15, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 689
  store i8 0, ptr %i.ea, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i64 24, i1 false)
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !5
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.ef = load i32, ptr %i.ee, align 8, !range !20, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  invoke void @_RNvMs0_NtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetryNtB5_29TonicWorkerTelemetryCollector12add_response(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.dz, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.ed, i32 noundef %i.ef, i32 noundef %i.do, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_(ptr nonnull %i.dt) #17
          to label %bb.av unwind label %bb.au

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCsawlvgPhpsYW_16parking_lot_core11parking_lot13deadlock_impl16release_resource(i64 noundef %i.dx)
          to label %.noexc26 unwind label %.thread42

.noexc26:                                         ; preds = %bb.ap
  %i.eh = cmpxchg ptr %i.dt, i8 1, i8 0 release monotonic, align 1
  %i.ei = extractvalue { i8, i1 } %i.eh, 1
  br i1 %i.ei, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, label %bb.aq, !prof !11

bb.aq:                                            ; preds = %.noexc26
  invoke void @_RNvMs1_NtCs27TyLBeV75a_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %i.dt, i1 noundef zeroext false)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit unwind label %.thread42

.thread42:                                        ; preds = %bb.ap, %bb.aq
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit: ; preds = %.noexc26, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %i.g, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !487)
  call void @llvm.experimental.noalias.scope.decl(metadata !488)
  %i.ek = load ptr, ptr %i.ds, align 8, !alias.scope !489, !nonnull !5, !noundef !5
  %i.el = atomicrmw sub ptr %i.ek, i64 1 release, align 8, !noalias !489
  %i.em = icmp eq i64 %i.el, 1
  br i1 %i.em, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ds) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit unwind label %bb.at

bb.as:                                            ; preds = %bb.bb, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30, %bb.at
  %.pn13 = phi { ptr, i32 } [ %i.en, %bb.at ], [ %.pn7.pn.pn.pn.pn, %bb.bb ], [ %.pn7.pn.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 ]
  store i8 2, ptr %i.h, align 8
  resume { ptr, i32 } %.pn13

bb.at:                                            ; preds = %bb.ar
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsbO4BqjCww8C_8lock_api5mutex10MutexGuardNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEB2h_.exit, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false)
  br label %common.ret

bb.au:                                            ; preds = %bb.az, %bb.ao, %bb.bb, %bb.ba, %bb.aw, %.thread38, %bb.j
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.av:                                            ; preds = %bb.ao, %.thread42, %bb.ah, %.thread38
  %.pn7.pn = phi { ptr, i32 } [ %i.dy, %.thread38 ], [ %i.ej, %.thread42 ], [ %i.dr, %bb.ah ], [ %i.eg, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.p, %bb.av
  %.pn7.pn.pn = phi { ptr, i32 } [ %.pn7.pn, %bb.av ], [ %i.ab, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(128) %i.g) #17
          to label %bb.ax unwind label %bb.au

bb.ax:                                            ; preds = %bb.j, %bb.n, %bb.aw
  %.pn7.pn.pn.pn = phi { ptr, i32 } [ %.pn7.pn.pn, %bb.aw ], [ %i.z, %bb.n ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.ay:                                            ; preds = %bb.ba, %bb.d
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !490)
  call void @llvm.experimental.noalias.scope.decl(metadata !491)
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !492, !nonnull !5, !noundef !5
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !492
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEE9drop_slowB2g_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ep) #19
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30 unwind label %bb.au

bb.ba:                                            ; preds = %bb.d
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs5TwP8AC98I6_5tower4util6either20EitherResponseFutureINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtCs577yCKf7gy3_4http8response8ResponseNtNtCsgOCJwUSa4vG_5tonic4body4BodyEzENtNtB4_6marker4SendEL_EENtNtNtB48_7service6router12RoutesFutureEECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(320) %1) #17
          to label %bb.ay unwind label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30: ; preds = %bb.ay, %bb.az
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 689
  %i.eu = load i8, ptr %i.et, align 1, !range !480, !noundef !5
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.bb, label %bb.as

bb.bb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtCsbO4BqjCww8C_8lock_api5mutex5MutexNtNtCs27TyLBeV75a_11parking_lot9raw_mutex8RawMutexNtNtNtNtCsl8OoimOLbh_6qdrant6common13telemetry_ops18requests_telemetry29TonicWorkerTelemetryCollectorEEEB2J_.exit30
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ew) #17
          to label %bb.as unwind label %bb.au
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs_NtNtCsl8OoimOLbh_6qdrant5tonic7loggingINtB6_17LoggingMiddlewareINtNtB8_15tonic_telemetry21TonicTelemetryServiceINtNtNtCs5TwP8AC98I6_5tower4util6either6EitherINtNtB8_4auth14AuthMiddlewareNtNtNtCsgOCJwUSa4vG_5tonic7service6router6RoutesEB36_EEEINtCs372LqxyVCI8_13tower_service7ServiceINtNtCs577yCKf7gy3_4http7request7RequestNtNtB3c_4body4BodyEE4call0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef align 8 dereferenceable(32) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 2 uses
  %i.c = alloca [40 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [2 x i8], align 2                 ; 5 uses
end_hunk_0
