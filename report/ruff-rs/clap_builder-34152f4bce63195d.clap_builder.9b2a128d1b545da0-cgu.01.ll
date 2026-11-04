Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.01?download=true
inline.NumInlined: 586
inline.NumDeleted: 268
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15match_arg_error:bb.a
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  br i1 %3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 328
  %.val78 = load ptr, ptr %i.at, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.au = getelementptr i8, ptr %i.as, i64 336
  %.val79 = load i64, ptr %i.au, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.idx.i = mul nuw nsw i64 %.val79, 672
  %i.av = getelementptr inbounds nuw i8, ptr %.val78, i64 %.idx.i ; 2 uses
  store ptr %.val78, ptr %i.f, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ax, ptr %i.e, align 8, !noalias !387
  %i.ay = icmp eq i64 %.val79, 0
  br i1 %i.ay, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.az = phi ptr [ %i.bb, %bb.c ], [ %.val78, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !387
  store ptr %i.az, ptr %i.d, align 8, !noalias !387
  %i.ba = call noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d), !noalias !388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !387
  br i1 %i.ba, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 672 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.av
  br i1 %i.bc, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, label %.lr.ph.i.i

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.bd = call fastcc { ptr, i64 } @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.aq, i1 noundef zeroext %2)
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %.not45 = icmp eq ptr %i.be, null
  br i1 %.not45, label %bb.g, label %bb.h

bb.e:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bf = call noundef zeroext i1 @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br i1 %i.bf, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = call noundef zeroext i1 @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread, %bb.e, %bb.d, %bb.f
  %.sroa.02.0 = phi i1 [ %i.bg, %bb.f ], [ false, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15has_positionals.exit.thread ], [ false, %bb.d ], [ true, %bb.e ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 384
  %.val80 = load i64, ptr %i.bj, align 8, !noundef !4 ; 2 uses
  %i.bk = icmp ult i64 %.val80, 11885788707287083
  call void @llvm.assume(i1 %i.bk)
  %.not = icmp eq i64 %.val80, 0
  br i1 %.not, label %bb.aa, label %bb.z

bb.h:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bq = load i64, ptr %i.bp, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.bq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %bb.o

bb.i:                                             ; preds = %bb.o, %bb.w
  %.pn72 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.o ], [ %lpad.thr_comm, %bb.w ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #18
          to label %common.resume unwind label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.m, align 8, !range !3, !noundef !4
  %i.bs = trunc nuw i64 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !range !10, !noundef !4 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.bs, label %bb.k, label %bb.l, !prof !11

bb.k:                                             ; preds = %bb.j
  %i.bw = load i64, ptr %i.bv, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bu, i64 %i.bw) #20
          to label %bb.y unwind label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.by = icmp ule i64 %i.bq, %i.bu
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not71 = icmp eq i64 %i.bq, 0
  br i1 %.not71, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  store i64 %i.bu, ptr %i.ap, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.bx, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.bz = load ptr, ptr %i.bl, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bz)
          to label %bb.p unwind label %bb.w

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %i.bo, i64 %i.bq, i1 false)
  br label %bb.m

bb.o:                                             ; preds = %bb.h, %bb.k, %bb.q
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.p:                                             ; preds = %bb.m
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.ca = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error23unnecessary_double_dashB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.cb = load i64, ptr %i.ao, align 8, !range !7, !alias.scope !389, !noundef !4
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.dq, %bb.cb, %bb.bj, %bb.i, %bb.ad, %bb.as, %.critedge, %.thread6, %bb.dd, %bb.cy, %bb.t
  %common.resume.op = phi { ptr, i32 } [ %i.fp, %bb.cb ], [ %i.cd, %bb.t ], [ %i.gu, %bb.cy ], [ %i.ev, %bb.bj ], [ %.pn72, %bb.i ], [ %.pn68, %bb.ad ], [ %.pn65.pn9, %.thread6 ], [ %.pn57, %bb.as ], [ %.pn61, %.critedge ], [ %.pn48, %bb.dd ], [ %i.hn, %bb.dq ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %bb.s
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %bb.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.v

bb.v:                                             ; preds = %bb.cd, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit118, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit100, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit
  %.sroa.0.0 = phi ptr [ %i.ca, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit ], [ %.sroa.0.1, %bb.cd ], [ %i.es, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit100 ], [ %i.hk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit118 ]
  ret ptr %.sroa.0.0

bb.w:                                             ; preds = %bb.p, %bb.m
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap) #18
          to label %bb.i unwind label %bb.x

bb.x:                                             ; preds = %bb.dt, %bb.ds, %bb.dd, %.thread6, %bb.dc, %bb.db, %bb.da, %bb.cg, %bb.ce, %bb.bo, %bb.bm, %bb.bl, %.critedge, %.body, %bb.aj, %bb.ad, %bb.w, %bb.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.y:                                             ; preds = %bb.df, %bb.cp, %bb.cj, %bb.bq, %bb.ba, %bb.ag, %bb.k
  unreachable

bb.z:                                             ; preds = %bb.g
  %i.cg = getelementptr i8, ptr %i.bi, i64 764
  %i.ch = load <2 x i32>, ptr %i.cg, align 4
  %4 = and <2 x i32> %i.ch, splat (i32 8192)
  %5 = icmp ne <2 x i32> %4, zeroinitializer      ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %.sroa.0.0.i = select i1 %6, i1 true, i1 %7
  %brmerge.demorgan = and i1 %2, %.sroa.0.0.i
  br i1 %brmerge.demorgan, label %bb.ac, label %bb.ab

bb.aa:                                            ; preds = %bb.g, %bb.ay
  %i.ci = phi ptr [ %i.bi, %bb.g ], [ %.pre72, %bb.ay ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !4
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cm = load i64, ptr %i.cl, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.cm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.az unwind label %bb.be

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.cq = load i64, ptr %i.cp, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, i64 noundef %i.cq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.af unwind label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.cu = load i64, ptr %i.ct, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.cu, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.de unwind label %bb.dl

bb.ad:                                            ; preds = %bb.aj, %bb.ae
  %.pn68 = phi { ptr, i32 } [ %i.cv, %bb.ae ], [ %i.de, %bb.aj ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #18
          to label %common.resume unwind label %bb.x

bb.ae:                                            ; preds = %bb.ag, %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ab
  %i.cw = load i64, ptr %i.k, align 8, !range !3, !noundef !4
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !range !10, !noundef !4 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  br i1 %i.cx, label %bb.ag, label %bb.ah, !prof !11

bb.ag:                                            ; preds = %bb.af
  %i.db = load i64, ptr %i.da, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cz, i64 %i.db) #20
          to label %bb.y unwind label %bb.ae

bb.ah:                                            ; preds = %bb.af
  %i.dc = load ptr, ptr %i.da, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dd = icmp ule i64 %i.cq, %i.cz
  call void @llvm.assume(i1 %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not51 = icmp eq i64 %i.cq, 0
  br i1 %.not51, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %i.co, i64 %i.cq, i1 false)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ak
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae) #18
          to label %bb.ad unwind label %bb.x

bb.ak:                                            ; preds = %bb.ah, %bb.ai
  store i64 %i.cz, ptr %i.ae, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.dc, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 %i.cq, ptr %.sroa.625.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.df = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 376
  %.val83 = load ptr, ptr %i.dg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.dh = getelementptr i8, ptr %i.df, i64 384
  %.val84 = load i64, ptr %i.dh, align 8, !noundef !4
  %i.di = getelementptr inbounds nuw [776 x i8], ptr %.val83, i64 %.val84
  store i64 2, ptr %i.ac, align 8, !alias.scope !390
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 2, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !390
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  store ptr %.val83, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !390
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store ptr %i.di, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !390
  invoke void @_RINvNtNtNtCsdjW2DEjcQy2_12clap_builder6parser8features11suggestions12did_you_meanReINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB1s_5slice4iter4IterNtNtNtB8_7builder7command7CommandEINtNtB1o_5chain5ChainINtNtNtB1q_7sources4once4OnceB1h_EINtNtB1o_3map3MapIB2g_TNtNtB2K_3str3StrbEENCNvMs2_B2I_B2G_15get_all_aliases0EENCNvMs5_B2I_B2G_20all_subcommand_names0EEB8_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.cq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ac)
          to label %bb.al unwind label %bb.aj

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsdjW2DEjcQy2_12clap_builder.exit.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.body unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %bb.al
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsdjW2DEjcQy2_12clap_builder.exit.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.am, %bb.ao
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.ao ], [ %i.dj, %bb.am ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #18
          to label %.thread6 unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsdjW2DEjcQy2_12clap_builder.exit.i
  %i.dm = load i64, ptr %i.ad, align 8, !range !7, !alias.scope !391, !noundef !4
  %i.dn = icmp eq i64 %i.dm, -1
  br i1 %i.dn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit91, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i88 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.thread6 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i88: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit91 unwind label %.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.cg
  br i1 %.sroa.04.2, label %.thread6, label %common.resume

.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i93, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i102, %bb.aw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i88, %bb.av
  %lpad.loopexit.split-lp82 = landingpad { ptr, i32 }
          cleanup
  br label %.thread6

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit91: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4 ; 2 uses
  %i.ds = icmp ult i64 %i.dr, 384307168202282326
  call void @llvm.assume(i1 %i.ds)
  %i.dt = icmp eq i64 %i.dr, 0
  %i.du = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  br i1 %i.dt, label %bb.at, label %bb.av

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit91
  %i.dv = getelementptr i8, ptr %i.du, i64 328
  %.val76 = load ptr, ptr %i.dv, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.du, i64 336
  %.val77 = load i64, ptr %i.dw, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.idx.i92 = mul nuw nsw i64 %.val77, 672
  %i.dx = getelementptr inbounds nuw i8, ptr %.val76, i64 %.idx.i92 ; 2 uses
  store ptr %.val76, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dx, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.dz, ptr %i.b, align 8, !noalias !392
  %i.ea = icmp eq i64 %.val77, 0
  br i1 %i.ea, label %.thread22, label %.lr.ph.i.i93

.lr.ph.i.i93:                                     ; preds = %bb.at, %bb.au
  %i.eb = phi ptr [ %i.ed, %bb.au ], [ %.val76, %bb.at ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !392
  store ptr %i.eb, ptr %i.a, align 8, !noalias !392
  %i.ec = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtBW_7Command15get_positionals0INtB7_5FnMutTRRNtNtBY_3arg3ArgEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc95 unwind label %.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %.lr.ph.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !392
  br i1 %i.ec, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %.noexc95
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 672 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.dx
  br i1 %i.ee, label %.thread22.loopexit, label %.lr.ph.i.i93

bb.av:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.cf unwind label %.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread22.loopexit:                               ; preds = %bb.au
  %.pre.pre = load ptr, ptr %i.bh, align 8
  br label %.thread22

.thread22:                                        ; preds = %.thread22.loopexit, %bb.at
  %.pre = phi ptr [ %.pre.pre, %.thread22.loopexit ], [ %i.du, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.aw

bb.aw:                                            ; preds = %.thread22, %bb.ax
  %i.ef = phi ptr [ %.pre, %.thread22 ], [ %i.eg, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.bn unwind label %.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ax:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eg = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  %i.eh = getelementptr i8, ptr %i.eg, i64 764
  %i.ei = load <2 x i32>, ptr %i.eh, align 4
  %8 = and <2 x i32> %i.ei, splat (i32 256)
  %9 = icmp ne <2 x i32> %8, zeroinitializer      ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %.sroa.0.0.i97 = select i1 %10, i1 true, i1 %11
  br i1 %.sroa.0.0.i97, label %bb.aw, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %.pre72 = load ptr, ptr %i.bh, align 8
  br label %bb.aa

.critedge:                                        ; preds = %bb.be, %bb.bm
  %.pn61 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp27, %bb.be ], [ %lpad.thr_comm26, %bb.bm ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.q) #18
          to label %common.resume unwind label %bb.x

bb.az:                                            ; preds = %bb.aa
  %i.ej = load i64, ptr %i.g, align 8, !range !3, !noundef !4
  %i.ek = trunc nuw i64 %i.ej to i1
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.em = load i64, ptr %i.el, align 8, !range !10, !noundef !4 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ek, label %bb.ba, label %bb.bb, !prof !11

bb.ba:                                            ; preds = %bb.az
  %i.eo = load i64, ptr %i.en, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.em, i64 %i.eo) #20
          to label %bb.y unwind label %bb.be

bb.bb:                                            ; preds = %bb.az
  %i.ep = load ptr, ptr %i.en, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eq = icmp ule i64 %i.cm, %i.em
  call void @llvm.assume(i1 %i.eq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not60 = icmp eq i64 %i.cm, 0
  br i1 %.not60, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bd, %bb.bb
  store i64 %i.em, ptr %i.r, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.ep, ptr %.sroa.442.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.cm, ptr %.sroa.643.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 -1, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.er = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.er)
          to label %bb.bf unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 1 %i.ck, i64 %i.cm, i1 false)
  br label %bb.bc

bb.be:                                            ; preds = %bb.aa, %bb.ba, %bb.bg
  %lpad.thr_comm.split-lp27 = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.bf:                                            ; preds = %bb.bc
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  %i.es = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error16unknown_argumentB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ci, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.p, i1 noundef zeroext %.sroa.02.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
          to label %bb.bh unwind label %bb.be

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.et = load i64, ptr %i.q, align 8, !range !7, !alias.scope !393, !noundef !4
  %i.eu = icmp eq i64 %i.et, -1
  br i1 %i.eu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit100, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i99 unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i99: ; preds = %bb.bi
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit100

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit100: ; preds = %bb.bh, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.v

bb.bl:                                            ; preds = %bb.bf, %bb.bc
  %lpad.thr_comm26 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCscdodAO9FK5_5alloc6string6StringIBC_BY_EEEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(48) %i.p) #18
          to label %bb.bm unwind label %bb.x

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r) #18
          to label %.critedge unwind label %bb.x

bb.bn:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !4
  %i.ez = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fa = load i64, ptr %i.ez, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef %i.fa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bp unwind label %bb.bu

bb.bo:                                            ; preds = %bb.bu, %bb.ce
  %.pn65 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp36, %bb.bu ], [ %lpad.thr_comm35, %bb.ce ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.u) #18
          to label %.thread6 unwind label %bb.x

bb.bp:                                            ; preds = %bb.bn
  %i.fb = load i64, ptr %i.h, align 8, !range !3, !noundef !4
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fe = load i64, ptr %i.fd, align 8, !range !10, !noundef !4 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.fc, label %bb.bq, label %bb.br, !prof !11

bb.bq:                                            ; preds = %bb.bp
  %i.fg = load i64, ptr %i.ff, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fe, i64 %i.fg) #20
          to label %bb.y unwind label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.fh = load ptr, ptr %i.ff, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fi = icmp ule i64 %i.fa, %i.fe
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not64 = icmp eq i64 %i.fa, 0
  br i1 %.not64, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.bt, %bb.br
  store i64 %i.fe, ptr %i.v, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.fh, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.fa, ptr %.sroa.638.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.fj = load ptr, ptr %i.bh, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.fj)
          to label %bb.bv unwind label %bb.ce

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr nonnull align 1 %i.ey, i64 %i.fa, i1 false)
  br label %bb.bs

bb.bu:                                            ; preds = %bb.bn, %bb.bq, %bb.bw
  %lpad.thr_comm.split-lp36 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bv:                                            ; preds = %bb.bs
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.bw unwind label %bb.ce

bb.bw:                                            ; preds = %bb.bv
  %i.fk = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error23unrecognized_subcommandB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ef, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.bx unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fl = load i64, ptr %i.u, align 8, !range !7, !alias.scope !394, !noundef !4
  %i.fm = icmp eq i64 %i.fl, -1
  br i1 %i.fm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit107, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i102 unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.thread6 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i102: ; preds = %bb.by
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit107 unwind label %.body89.thread18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsdjW2DEjcQy2_12clap_builder.exit107: ; preds = %bb.bx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i102
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.ef = alloca [24 x i8], align 8               ; 4 uses
  %i.eg = alloca [16 x i8], align 8               ; 12 uses
  %i.eh = alloca [8 x i8], align 8                ; 11 uses
  %i.ei = alloca [32 x i8], align 16              ; 24 uses
  %i.ej = alloca [24 x i8], align 8               ; 39 uses
  %i.ek = alloca [8 x i8], align 8                ; 13 uses
  %i.el = alloca [32 x i8], align 8               ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !813)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ek)
  store i64 %3, ptr %i.ek, align 8, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ej), !noalias !815
  store i64 -1, ptr %i.ej, align 8, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei), !noalias !815
  store i64 0, ptr %i.ei, align 16, !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eh), !noalias !815
  store i64 1, ptr %i.eh, align 8, !noalias !815
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.en = load ptr, ptr %i.em, align 8, !alias.scope !812, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 352
  %.val.i = load ptr, ptr %i.eo, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ep = getelementptr i8, ptr %i.en, i64 360
  %.val247.i = load i64, ptr %i.ep, align 8, !noundef !4 ; 2 uses
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %.val.i, i64 %.val247.i
  %i.er = invoke noundef range(i64 0, 576460752303423488) i64 @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENCNvMs4_B1p_NtB1p_7MKeyMap4keys0ENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB6_8map_foldRNtB1p_7KeyTypejjNCINvNvXs1_NtB8_6filterINtB40_6FilterppEB2D_5count8to_usizeB3y_NCNvMs_NtNtB1r_6parser6parserNtB4X_6Parser5parse0E0NCINvXsK_NtB2H_5accumjNtB5O_3Sum3sumIBO_BN_B3P_EE0E0EB1r_(ptr noundef nonnull %.val.i, ptr noundef nonnull %i.eq, i64 noundef 0)
          to label %bb.b unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939 ; 4 uses

.critedge240.i:                                   ; preds = %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, %.invoke2036, %.invoke, %bb.tb, %bb.sy, %bb.rb, %bb.rc, %bb.pl, %bb.or, %bb.mk, %bb.lu, %bb.lt, %bb.ls, %.body.i, %bb.gs, %bb.gr, %bb.gq, %bb.be, %bb.cc, %bb.tn, %.body27, %.thread500, %.critedge245.i, %bb.lr, %bb.lq, %bb.lp, %bb.lo, %bb.gp, %bb.go, %bb.gn, %bb.gm, %.body213, %.body327
  %.pn232.i = phi { ptr, i32 } [ %i.pu, %bb.cc ], [ %.pn193.i, %bb.gn ], [ %.pn226.i, %.critedge245.i ], [ %.pn222.i, %.thread500 ], [ %.pn206.i.ph, %bb.tn ], [ %i.asm, %bb.tb ], [ %eh.lpad-body28, %.body27 ], [ %eh.lpad-body328, %.body327 ], [ %.pn193.i, %bb.gq ], [ %i.aor, %bb.rc ], [ %.pn193.i, %.body213 ], [ %.pn182.pn.i, %bb.lu ], [ %.pn193.i, %bb.gm ], [ %.pn.pn.i, %bb.be ], [ %.pn182.pn.i, %bb.lt ], [ %i.aep, %bb.mk ], [ %.pn193.i, %bb.gr ], [ %i.ake, %bb.or ], [ %.pn193.i, %bb.go ], [ %.pn193.i, %.invoke2036 ], [ %.pn193.i, %bb.gp ], [ %.pn182.pn.i, %bb.lo ], [ %i.alr, %bb.pl ], [ %.pn182.pn.i, %bb.lp ], [ %.pn.i189, %.body.i ], [ %.pn182.pn.i, %bb.ls ], [ %i.aor, %bb.rb ], [ %.pn182.pn.i, %bb.lq ], [ %.pn182.pn.i, %.invoke ], [ %.pn182.pn.i, %bb.lr ], [ %.pn193.i, %bb.gs ], [ %i.ask, %bb.sy ], [ %lpad.loopexit.split-lp3941, %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939 ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_(ptr noalias noundef align 8 dereferenceable(32) %i.ei) #18, !inline_history !449
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ej) #18
          to label %common.resume2039 unwind label %bb.ef, !inline_history !449

bb.b:                                             ; preds = %bb.a
  %i.es = icmp samesign ule i64 %i.er, %.val247.i
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr i8, ptr %i.en, i64 328
  %.val248.i = load ptr, ptr %i.et, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.en, i64 336
  %.val249.i = load i64, ptr %i.eu, align 8, !noundef !4 ; 2 uses
  %.idx3865 = mul nuw nsw i64 %.val249.i, 672
  %i.ev = getelementptr inbounds nuw i8, ptr %.val248.i, i64 %.idx3865
  %.not3.not.not.i.not.not.not.not.not.not3855.not = icmp eq i64 %.val249.i, 0
  br i1 %.not3.not.not.i.not.not.not.not.not.not3855.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph3858

.lr.ph3858:                                       ; preds = %.lr.ph3858, %bb.b
  %i.ew = phi ptr [ %i.ez, %.lr.ph3858 ], [ %.val248.i, %bb.b ] ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 664
  %.val.i336 = load i32, ptr %i.ex, align 8, !noalias !816, !noundef !4
  %i.ey = and i32 %.val.i336, 256
  %.not.i337 = icmp ne i32 %i.ey, 0               ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 672 ; 2 uses
  %.not3.not.not.i.not.not.not.not.not.not.not = icmp eq ptr %i.ez, %i.ev
  %or.cond4623 = select i1 %.not.i337, i1 true, i1 %.not3.not.not.i.not.not.not.not.not.not.not
  br i1 %or.cond4623, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit, label %.lr.ph3858

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit: ; preds = %.lr.ph3858, %bb.b
  %.not3.not.not.i.not.not.not.not.not.not.lcssa = phi i1 [ false, %bb.b ], [ %.not.i337, %.lr.ph3858 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.val251.i1083 = load i64, ptr %i.fb, align 8, !alias.scope !814, !noundef !4
  %i.fc = icmp ult i64 %3, %.val251.i1083
  br i1 %i.fc, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ei, i64 8 ; 24 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %.sroa.018.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.018.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.419.0..sroa_idx.i276 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.520.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.fj = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.449.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.650.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.42.0..sroa_idx.i.i281 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i92.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i282 = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 8 ; 2 uses
  %.sroa.428.sroa.4.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %.sroa.428.sroa.5.0..sroa.428.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ei, i64 24 ; 12 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 10 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.dn, i64 32 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 4 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.go = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.gp = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i190 = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.at, i64 40 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.at, i64 48 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.sroa.444.sroa.4.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %.sroa.444.sroa.5.0..sroa.444.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %.sroa.467.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %.sroa.4137.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.5138.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %.sroa.4357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %.sroa.5358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.hh = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  br label %bb.c

.thread:                                          ; preds = %.backedge, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit
  %.sroa.0.0376.lcssa = phi i8 [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %.sroa.0.0376.be, %.backedge ]
  %.lcssa925 = phi i64 [ 0, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %.be, %.backedge ]
  %.lcssa873 = phi i64 [ %3, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6parser6parserNtB2v_6Parser5parses_0EBW_.exit ], [ %i.afj, %.backedge ]
  %i.hm = call i64 @llvm.uadd.sat.i64(i64 %.lcssa873, i64 1)
  store i64 %i.hm, ptr %i.ek, align 8, !alias.scope !817
  br label %bb.kp

bb.c:                                             ; preds = %.lr.ph, %.backedge
  %i.hn = phi i64 [ %3, %.lr.ph ], [ %i.afj, %.backedge ] ; 2 uses
  %i.ho = phi i64 [ 1, %.lr.ph ], [ %.be633, %.backedge ] ; 13 uses
  %.sroa.013.0.i1086 = phi i8 [ 0, %.lr.ph ], [ %.sroa.013.0.i.be, %.backedge ] ; 2 uses
  %i.hp = phi i64 [ 0, %.lr.ph ], [ %.be, %.backedge ] ; 13 uses
  %.sroa.0.03761084 = phi i8 [ 0, %.lr.ph ], [ %.sroa.0.0376.be, %.backedge ] ; 12 uses
  %.val250.i1087 = load ptr, ptr %i.fa, align 8, !alias.scope !814, !nonnull !4, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.hq = getelementptr inbounds nuw [24 x i8], ptr %.val250.i1087, i64 %i.hn ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !817, !nonnull !4, !noundef !4 ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !noalias !817, !noundef !4 ; 16 uses
  %i.hv = add nuw i64 %i.hn, 1
  store i64 %i.hv, ptr %i.ek, align 8, !alias.scope !817
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eg), !noalias !815
  store ptr %i.hs, ptr %i.eg, align 8, !noalias !815
  store i64 %i.hu, ptr %i.fd, align 8, !noalias !815
  %i.hw = trunc nuw i8 %.sroa.013.0.i1086 to i1   ; 5 uses
  br i1 %i.hw, label %.thread409, label %bb.d

.thread409:                                       ; preds = %bb.ma, %bb.ej, %bb.c
  %.sroa.0.2 = phi i8 [ %.sroa.0.03761084, %bb.c ], [ %.sroa.0.1, %bb.ej ], [ %.sroa.0.03761084, %bb.ma ] ; 2 uses
  %i.hx = add i64 %i.ho, 1                        ; 2 uses
  %i.hy = icmp eq i64 %i.hx, %i.er                ; 2 uses
  %.pre1546 = load ptr, ptr %i.em, align 8, !alias.scope !812 ; 13 uses
  br i1 %i.hy, label %bb.nd, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.hz = load ptr, ptr %i.em, align 8, !alias.scope !812, !nonnull !4, !align !15, !noundef !4 ; 22 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 764    ; 4 uses
  %i.ib = getelementptr i8, ptr %i.hz, i64 768
  %i.ic = load <2 x i32>, ptr %i.ia, align 4
  %4 = and <2 x i32> %i.ic, splat (i32 16384)
  %5 = icmp ne <2 x i32> %4, zeroinitializer      ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %.sroa.0.0.i332 = select i1 %6, i1 true, i1 %7
  %i.id = icmp eq i64 %i.hp, 0
  %or.cond237.i = select i1 %.sroa.0.0.i332, i1 true, i1 %i.id
  br i1 %or.cond237.i, label %bb.g, label %bb.f

default.unreachable3020:                          ; preds = %bb.gw, %bb.ae, %bb.ac
  unreachable

bb.e:                                             ; preds = %bb.jv, %bb.cy
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.ie = icmp eq i64 %i.hu, 2
  br i1 %i.ie, label %bb.aa, label %bb.ab

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef), !noalias !815
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eg)
          to label %bb.h unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.h:                                             ; preds = %bb.g
  %i.if = trunc nuw i8 %.sroa.0.03761084 to i1
  %i.ig = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ef, i1 noundef zeroext %i.if)
          to label %bb.i unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ih = extractvalue { ptr, i64 } %i.ig, 0      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ef), !noalias !815
  %.not176.i = icmp eq ptr %i.ih, null
  br i1 %.not176.i, label %bb.f, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ii = extractvalue { ptr, i64 } %i.ig, 1      ; 7 uses
  %i.ij = icmp eq i64 %i.ii, 4
  br i1 %i.ij, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ik = load i32, ptr %i.ih, align 1
  %i.il = icmp ne i32 %i.ik, 1886152040
  %i.im = zext i1 %i.il to i32
  %i.in = icmp eq i32 %i.im, 0
  br i1 %i.in, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !815
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bv, i64 noundef %i.ii, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.p unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.m:                                             ; preds = %bb.k
  %i.io = load <2 x i32>, ptr %i.ia, align 4
  %8 = and <2 x i32> %i.io, splat (i32 1048576)
  %9 = icmp ne <2 x i32> %8, zeroinitializer      ; 2 uses
  %10 = extractelement <2 x i1> %9, i64 0
  %11 = extractelement <2 x i1> %9, i64 1
  %.sroa.0.0.i331 = select i1 %10, i1 true, i1 %11
  br i1 %.sroa.0.0.i331, label %bb.l, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ip = invoke { ptr, ptr } @_RNvMCsgQD0exT44A_8clap_lexNtB2_7RawArgs9remaining(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ek)
          to label %bb.o unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.iq = extractvalue { ptr, ptr } %i.ip, 0
  %i.ir = extractvalue { ptr, ptr } %i.ip, 1
  %i.is = invoke fastcc noundef nonnull align 8 ptr @_RINvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB5_6Parser21parse_help_subcommandINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENCNvMCsgQD0exT44A_8clap_lexNtB3r_7RawArgs9remaining0EEB9_(ptr nonnull %i.hz, ptr noundef nonnull %i.iq, ptr noundef %i.ir)
          to label %.loopexit632 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.p:                                             ; preds = %bb.l
  %i.it = load i64, ptr %i.bv, align 8, !range !3, !noalias !815, !noundef !4
  %i.iu = trunc nuw i64 %i.it to i1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.iw = load i64, ptr %i.iv, align 8, !range !10, !noalias !815, !noundef !4 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.bv, i64 16 ; 2 uses
  br i1 %i.iu, label %bb.q, label %bb.r, !prof !11

bb.q:                                             ; preds = %bb.p
  %i.iy = load i64, ptr %i.ix, align 8, !noalias !815
  br label %.invoke2037

.invoke2037:                                      ; preds = %bb.cr, %bb.cn, %bb.ci, %bb.ry, %bb.ph, %bb.mg, %bb.q
  %i.iz = phi i64 [ %i.iw, %bb.q ], [ %i.aeh, %bb.mg ], [ %i.alj, %bb.ph ], [ %i.ard, %bb.ry ], [ %i.pz, %bb.ci ], [ %i.qi, %bb.cn ], [ %i.qo, %bb.cr ]
  %i.ja = phi i64 [ %i.iy, %bb.q ], [ %i.aei, %bb.mg ], [ %i.alk, %bb.ph ], [ %i.arf, %bb.ry ], [ %i.qb, %bb.ci ], [ %i.qj, %bb.cn ], [ %i.qp, %bb.cr ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.iz, i64 %i.ja) #20
          to label %.cont unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

.cont:                                            ; preds = %.invoke2037
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.jb = load ptr, ptr %i.ix, align 8, !noalias !815, !nonnull !4, !noundef !4 ; 3 uses
  %i.jc = icmp ule i64 %i.ii, %i.iw
  call void @llvm.assume(i1 %i.jc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !815
  %.not201.i = icmp eq i64 %i.ii, 0
  br i1 %.not201.i, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.w, %bb.r
  %i.jd = load i64, ptr %i.ej, align 8, !range !7, !alias.scope !818, !noundef !4
  %i.je = icmp eq i64 %i.jd, -1
  br i1 %i.je, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i326 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %.body327 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i326: ; preds = %bb.t
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ej)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330 unwind label %bb.x

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jb, ptr nonnull align 1 %i.ih, i64 %i.ii, i1 false)
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i326
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %.body327

.body327:                                         ; preds = %bb.u, %bb.x
  %eh.lpad-body328 = phi { ptr, i32 } [ %i.jh, %bb.x ], [ %i.jf, %bb.u ]
  store i64 %i.iw, ptr %i.ej, align 8, !noalias !815
  %.sroa.5127.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.jb, ptr %.sroa.5127.0..sroa_idx.i, align 8, !noalias !815
  %.sroa.6130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %i.ii, ptr %.sroa.6130.0..sroa_idx.i, align 8, !noalias !815
  br label %.critedge240.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330: ; preds = %bb.s, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit.i326
  store i64 %i.iw, ptr %i.ej, align 8, !noalias !815
  %.sroa.5127.0..sroa_idx128.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store ptr %i.jb, ptr %.sroa.5127.0..sroa_idx128.i, align 8, !noalias !815
  %.sroa.6130.0..sroa_idx131.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store i64 %i.ii, ptr %.sroa.6130.0..sroa_idx131.i, align 8, !noalias !815
  br label %bb.y

bb.y:                                             ; preds = %bb.ko, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit271, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330
  %.sroa.0.4 = phi i8 [ %.sroa.0.8431, %bb.ko ], [ %.sroa.0.9387, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit271 ], [ %.sroa.0.03761084, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330 ]
  %.sroa.046.0.i = phi i1 [ %i.abb, %bb.ko ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit271 ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECsdjW2DEjcQy2_12clap_builder.exit330 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg), !noalias !815
  br label %bb.kp

bb.z:                                             ; preds = %.loopexit569, %bb.qp, %bb.qc, %bb.oi, %bb.kd, %bb.do, %bb.dj
  unreachable

bb.aa:                                            ; preds = %bb.f
  %i.ji = load i16, ptr %i.hs, align 1
  %i.jj = icmp ne i16 %i.ji, 11565
  %i.jk = zext i1 %i.jj to i32
  %i.jl = icmp eq i32 %i.jk, 0
  br i1 %i.jl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ee), !noalias !815
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7to_long(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eg)
          to label %bb.ad unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.ac:                                            ; preds = %bb.aa
  switch i64 %i.hp, label %default.unreachable3020 [
    i64 1, label %bb.lx
    i64 2, label %bb.ly
    i64 0, label %bb.mw
  ]

bb.ad:                                            ; preds = %bb.ab
  %i.jm = load i64, ptr %i.ee, align 8, !range !5, !noalias !815, !noundef !4 ; 2 uses
  %.not177.i = icmp eq i64 %i.jm, 2
  br i1 %.not177.i, label %bb.cv, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !815 ; 15 uses
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !815 ; 18 uses
  %i.jn = load ptr, ptr %i.fe, align 8, !noalias !815, !noundef !4 ; 4 uses
  %i.jo = load i64, ptr %i.ff, align 8, !noalias !815 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !815
  call void @llvm.experimental.noalias.scope.decl(metadata !819)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.ho, ptr %i.q, align 8, !noalias !821
  switch i64 %i.hp, label %default.unreachable3020 [
    i64 1, label %bb.af
    i64 2, label %bb.ag
    i64 0, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.jp = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7CommandINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc297 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc297:                                        ; preds = %bb.af
  %i.jq = getelementptr i8, ptr %i.jp, i64 664
  %.val82.i = load i32, ptr %i.jq, align 8, !noalias !822, !noundef !4
  %i.jr = and i32 %.val82.i, 32
  %.not124.i = icmp eq i32 %i.jr, 0
  br i1 %.not124.i, label %bb.ah, label %.thread385

bb.ag:                                            ; preds = %bb.ae
  %i.js = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7CommandINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.hz, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11)
          to label %.noexc298 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc298:                                        ; preds = %bb.ag
  %i.jt = getelementptr i8, ptr %i.js, i64 664
  %.val81.i = load i32, ptr %i.jt, align 8, !noalias !822, !noundef !4
  %i.ju = and i32 %.val81.i, 32
  %.not123.i = icmp eq i32 %i.ju, 0
  br i1 %.not123.i, label %bb.ah, label %.thread385

bb.ah:                                            ; preds = %.noexc298, %.noexc297, %bb.ae
  %i.jv = trunc nuw i64 %i.jm to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br i1 %i.jv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !821
  invoke void @_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc299 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc299:                                        ; preds = %bb.ai
  %i.jw = load i64, ptr %i.p, align 8, !range !7, !noalias !821, !noundef !4 ; 2 uses
  %.not78.i295 = icmp eq i64 %i.jw, -1
  %i.jx = load ptr, ptr %i.fz, align 8, !noalias !821 ; 2 uses
  %i.jy = load i64, ptr %i.ga, align 8, !noalias !821 ; 6 uses
  br i1 %.not78.i295, label %bb.cq, label %bb.cu

bb.aj:                                            ; preds = %bb.ah
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hz, i64 320 ; 2 uses
  %i.ka = invoke noundef align 8 ptr @_RINvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB6_7MKeyMap3geteEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc300 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939 ; 2 uses

.noexc300:                                        ; preds = %bb.aj
  %.not.i272 = icmp eq ptr %i.ka, null
  br i1 %.not.i272, label %bb.ak, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i

bb.ak:                                            ; preds = %.noexc300
  %i.kb = load <2 x i32>, ptr %i.ia, align 4, !noalias !822
  %12 = and <2 x i32> %i.kb, splat (i32 128)
  %13 = icmp ne <2 x i32> %12, zeroinitializer    ; 2 uses
  %14 = extractelement <2 x i1> %13, i64 0
  %15 = extractelement <2 x i1> %13, i64 1
  %.sroa.0.0.i.i286 = select i1 %14, i1 true, i1 %15
  br i1 %.sroa.0.0.i.i286, label %bb.al, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, %.loopexit.i, %.noexc300
  %.sroa.9.0.i = phi ptr [ %i.ka, %.noexc300 ], [ %i.kk, %.loopexit.i ], [ %i.kk, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i ] ; 9 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.i) ]
  %i.kc = getelementptr i8, ptr %.sroa.9.0.i, i64 40
  %.val85.i = load i64, ptr %i.kc, align 8, !noalias !822
  %i.kd = getelementptr i8, ptr %.sroa.9.0.i, i64 56
  %.val86.i = load i64, ptr %i.kd, align 8, !noalias !822
  %i.ke = trunc nuw i64 %.val85.i to i1
  %i.kf = icmp eq i64 %.val86.i, 0
  %.sroa.02.0.i.not.i273 = select i1 %i.ke, i1 %i.kf, i1 false
  br i1 %.sroa.02.0.i.not.i273, label %bb.bb, label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.kg = getelementptr i8, ptr %i.hz, i64 328
  %.val.i291 = load ptr, ptr %i.kg, align 8, !noalias !822, !nonnull !4, !noundef !4 ; 2 uses
  %i.kh = getelementptr i8, ptr %i.hz, i64 336
  %.val80.i = load i64, ptr %i.kh, align 8, !noalias !822, !noundef !4 ; 2 uses
  %.idx.i292 = mul nuw nsw i64 %.val80.i, 672
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i291, i64 %.idx.i292 ; 3 uses
  %i.kj = icmp eq i64 %.val80.i, 0
  br i1 %i.kj, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %.lr.ph.i.i293

.lr.ph.i.i293:                                    ; preds = %bb.al, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i
  %i.kk = phi ptr [ %i.kl, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i ], [ %.val.i291, %bb.al ] ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 672 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !823)
  call void @llvm.experimental.noalias.scope.decl(metadata !824)
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 80
  %i.kn = load i64, ptr %i.km, align 8, !range !5, !alias.scope !825, !noalias !826, !noundef !4
  %cond.i.i.i.i = icmp eq i64 %i.kn, 2
  br i1 %cond.i.i.i.i, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %.noexc303, %.lr.ph.i.i293
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 424
  %i.kp = load ptr, ptr %i.ko, align 8, !alias.scope !825, !noalias !826, !nonnull !4, !noundef !4 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 432
  %i.kr = load i64, ptr %i.kq, align 8, !alias.scope !825, !noalias !826, !noundef !4 ; 3 uses
  %.idx.i.i.i.i294 = shl nuw nsw i64 %i.kr, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.idx.i.i.i.i294
  %i.kt = icmp eq i64 %i.kr, 0
  br i1 %i.kt, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i: ; preds = %bb.am
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kv = load ptr, ptr %i.ku, align 8, !alias.scope !827, !noalias !828, !nonnull !4, !noundef !4
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %i.kx = load i64, ptr %i.kw, align 8, !alias.scope !827, !noalias !828, !noundef !4
  %i.ky = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.kv, i64 noundef %i.kx, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc301 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc301:                                        ; preds = %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i
  br i1 %i.ky, label %.loopexit.i, label %bb.an

bb.an:                                            ; preds = %.noexc301
  %i.kz = icmp eq i64 %i.kr, 1
  br i1 %i.kz, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i: ; preds = %bb.an
  %i.la = getelementptr inbounds nuw i8, ptr %i.kp, i64 32
  br label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i

bb.ao:                                            ; preds = %.noexc302
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ld, i64 32 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, %i.ks
  br i1 %i.lc, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i, !llvm.loop !481

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i: ; preds = %bb.ao, %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i
  %i.ld = phi ptr [ %i.lb, %bb.ao ], [ %i.la, %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i ] ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !830, !noalias !828, !nonnull !4, !noundef !4
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lh = load i64, ptr %i.lg, align 8, !alias.scope !830, !noalias !828, !noundef !4
  %i.li = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lf, i64 noundef %i.lh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc302 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc302:                                        ; preds = %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i
  br i1 %i.li, label %.loopexit.i, label %bb.ao

bb.ap:                                            ; preds = %.lr.ph.i.i293
  %.sroa.53.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 96
  %.sroa.53.0.i.i.i.i = load i64, ptr %.sroa.53.0.in.i.i.i.i, align 8, !alias.scope !825, !noalias !826, !noundef !4
  %.sroa.02.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kk, i64 88
  %.sroa.02.0.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i, align 8, !alias.scope !825, !noalias !826, !nonnull !4, !noundef !4
  %i.lj = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i.i.i, i64 noundef %.sroa.53.0.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc303 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc303:                                        ; preds = %bb.ap
  br i1 %i.lj, label %.loopexit.i, label %bb.am

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.am
  %i.lk = icmp eq ptr %i.kl, %i.ki
  br i1 %i.lk, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %.lr.ph.i.i293

.loopexit.i:                                      ; preds = %.noexc303, %.noexc301, %.noexc302
  %i.ll = icmp eq ptr %i.kl, %i.ki
  br i1 %i.ll, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.i, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i
  %i.lm = phi ptr [ %i.ln, %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i ], [ %i.kl, %.loopexit.i ] ; 6 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 672 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !832)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lm, i64 80
  %i.lp = load i64, ptr %i.lo, align 8, !range !5, !alias.scope !833, !noalias !834, !noundef !4
  %cond.i.i.i.i.i.i = icmp eq i64 %i.lp, 2
  br i1 %cond.i.i.i.i.i.i, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %.noexc306, %.lr.ph.i.i.i.i
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 424
  %i.lr = load ptr, ptr %i.lq, align 8, !alias.scope !833, !noalias !834, !nonnull !4, !noundef !4 ; 4 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 432
  %i.lt = load i64, ptr %i.ls, align 8, !alias.scope !833, !noalias !834, !noundef !4 ; 3 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.lt, 5
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lr, i64 %.idx.i.i.i.i.i.i
  %i.lv = icmp eq i64 %i.lt, 0
  br i1 %i.lv, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i.i.i

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i.i.i: ; preds = %bb.aq
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !alias.scope !835, !noalias !836, !nonnull !4, !noundef !4
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lz = load i64, ptr %i.ly, align 8, !alias.scope !835, !noalias !836, !noundef !4
  %i.ma = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lx, i64 noundef %i.lz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc304 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc304:                                        ; preds = %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.lr.ph.i.i.i.i.i.i.i
  br i1 %i.ma, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %bb.ar

bb.ar:                                            ; preds = %.noexc304
  %i.mb = icmp eq i64 %i.lt, 1
  br i1 %i.mb, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i.i.i

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i.i.i: ; preds = %bb.ar
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lr, i64 32
  br label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i.i.i

bb.as:                                            ; preds = %.noexc305
  %i.md = getelementptr inbounds nuw i8, ptr %i.mf, i64 32 ; 2 uses
  %i.me = icmp eq ptr %i.md, %i.lu
  br i1 %i.me, label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i, label %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i.i.i, !llvm.loop !481

_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i.i.i: ; preds = %bb.as, %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i.i.i
  %i.mf = phi ptr [ %i.md, %bb.as ], [ %i.mc, %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !837, !noalias !836, !nonnull !4, !noundef !4
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mj = load i64, ptr %i.mi, align 8, !alias.scope !837, !noalias !836, !noundef !4
  %i.mk = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mh, i64 noundef %i.mj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc305 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc305:                                        ; preds = %_RNCNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB8_6Parser14parse_long_arg00Bc_.exit.i.i.i.i.i.i.i
  br i1 %i.mk, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %bb.as

bb.at:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.53.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 96
  %.sroa.53.0.i.i.i.i.i.i = load i64, ptr %.sroa.53.0.in.i.i.i.i.i.i, align 8, !alias.scope !833, !noalias !834, !noundef !4
  %.sroa.02.0.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.lm, i64 88
  %.sroa.02.0.i.i.i.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i.i.i.i, align 8, !alias.scope !833, !noalias !834, !nonnull !4, !noundef !4
  %i.ml = invoke noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.02.0.i.i.i.i.i.i, i64 noundef %.sroa.53.0.i.i.i.i.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc306 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc306:                                        ; preds = %bb.at
  br i1 %i.ml, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i, label %bb.aq

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.mm = icmp eq ptr %i.ln, %i.ki
  br i1 %i.mm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.i, label %.lr.ph.i.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i: ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtBV_6Parser14parse_long_arg0INtB7_5FnMutTRNtNtNtBZ_7builder3arg3ArgEE8call_mutBZ_.exit.i.i, %.noexc306, %.noexc304, %.noexc305, %bb.al, %bb.ak
  %i.mn = load i32, ptr %i.ia, align 4, !noalias !838, !noundef !4
  %i.mo = and i32 %i.mn, 256
  %i.mp = icmp eq i32 %i.mo, 0
  br i1 %i.mp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i
  %i.mq = load i32, ptr %i.ib, align 8, !noalias !838, !noundef !4
  %i.mr = and i32 %i.mq, 256
  %.not.i90.i = icmp eq i32 %i.mr, 0
  br i1 %.not.i90.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit29.i.i, label %bb.av

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit29.i.i: ; preds = %.noexc310, %.noexc311, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit.i.i, %bb.au
  %i.ms = invoke { ptr, i64 } @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command16find_long_subcmd(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.hz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %.noexc307 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939 ; 3 uses

.noexc307:                                        ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapReQNCNvMs_NtNtBW_6parser6parserNtB2L_6Parser29possible_long_flag_subcommand0EBW_.exit29.i.i
  %i.mt = extractvalue { ptr, i64 } %i.ms, 0
  %.not9.i.i = icmp eq ptr %i.mt, null
  %i.mu = extractvalue { ptr, i64 } %i.ms, 1
  %spec.select.i.i289 = select i1 %.not9.i.i, i64 undef, i64 %i.mu
  %i.mv = insertvalue { ptr, i64 } %i.ms, i64 %spec.select.i.i289, 1
  br label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser29possible_long_flag_subcommand.exit.i

bb.av:                                            ; preds = %bb.au, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionTReRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEE6filterNCNvMs_NtNtBS_6parser6parserNtB1Q_6Parser14parse_long_args_0EBS_.exit.thread.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.hz, i64 376
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !838, !nonnull !4, !noundef !4 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.hz, i64 384
  %i.mz = load i64, ptr %i.my, align 8, !noalias !838, !noundef !4 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.mz, 776
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx.i.i ; 4 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.afj = load i64, ptr %i.ek, align 8, !alias.scope !920, !noundef !4 ; 3 uses
  %i.afk = icmp ult i64 %i.afj, %.val251.i
  br i1 %i.afk, label %bb.c, label %.thread

bb.mw:                                            ; preds = %bb.ac, %bb.lz, %bb.ma
  %i.afl = getelementptr inbounds nuw i8, ptr %i.hz, i64 320
  %i.afm = invoke noundef align 8 ptr @_RINvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.afl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eh)
          to label %bb.mx unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 4 uses

bb.mx:                                            ; preds = %bb.mw
  %.not195.i = icmp eq ptr %i.afm, null
  br i1 %.not195.i, label %bb.nc, label %bb.my

bb.my:                                            ; preds = %bb.mx
  call void @llvm.experimental.noalias.scope.decl(metadata !921)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !921
  call void @llvm.experimental.noalias.scope.decl(metadata !922)
  call void @llvm.experimental.noalias.scope.decl(metadata !923)
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 152
  %i.afo = load i64, ptr %i.afn, align 8, !range !5, !alias.scope !924, !noundef !4
  %cond.i.i = icmp ne i64 %i.afo, 2
  %.sroa.54.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.afm, i64 168
  %.sroa.54.0.i.i = load i64, ptr %.sroa.54.0.in.i.i, align 8, !alias.scope !924
  %i.afp = icmp eq i64 %.sroa.54.0.i.i, 2
  %or.cond.i.i119 = select i1 %cond.i.i, i1 %i.afp, i1 false
  br i1 %or.cond.i.i119, label %bb.mz, label %.thread464

bb.mz:                                            ; preds = %bb.my
  %.sroa.03.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.afm, i64 160
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8, !alias.scope !924, !nonnull !4, !noundef !4
  %i.afq = load i16, ptr %i.hs, align 1
  %i.afr = load i16, ptr %.sroa.03.0.i.i, align 1
  %i.afs = icmp ne i16 %i.afq, %i.afr
  %i.aft = zext i1 %i.afs to i32
  %i.afu = icmp eq i32 %i.aft, 0
  br i1 %i.afu, label %bb.na, label %.thread464

bb.na:                                            ; preds = %bb.mz
  store i64 -9223372036854775806, ptr %i.bg, align 8, !alias.scope !922, !noalias !921
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bg)
          to label %bb.nb unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.thread464:                                       ; preds = %bb.my, %bb.mz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !921
  br label %bb.nc

bb.nb:                                            ; preds = %bb.na
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !921
  %i.afv = add i64 %i.ho, 1                       ; 2 uses
  store i64 %i.afv, ptr %i.eh, align 8, !noalias !815
  br label %bb.nc

bb.nc:                                            ; preds = %.thread464, %bb.nb, %bb.mx
  %i.afw = phi i64 [ %i.afv, %bb.nb ], [ %i.ho, %bb.mx ], [ %i.ho, %.thread464 ]
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14start_trailing(ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %.backedge unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.nd:                                            ; preds = %.thread409
  %i.afx = getelementptr i8, ptr %.pre1546, i64 328
  %.val274.i = load ptr, ptr %i.afx, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.afy = getelementptr i8, ptr %.pre1546, i64 336
  %.val275.i = load i64, ptr %i.afy, align 8, !noundef !4 ; 6 uses
  %.idx = mul nuw nsw i64 %.val275.i, 672
  %i.afz = getelementptr inbounds nuw i8, ptr %.val274.i, i64 %.idx
  %.not15.i = icmp eq i64 %.val275.i, 0
  br i1 %.not15.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.nd, %.backedge.i
  %i.aga = phi ptr [ %i.agb, %.backedge.i ], [ %.val274.i, %bb.nd ] ; 9 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 672 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.aga, i64 80
  %i.agd = load i64, ptr %i.agc, align 8, !range !5, !alias.scope !925, !noalias !926, !noundef !4
  %.not.i.i.i114 = icmp eq i64 %i.agd, 2
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 656
  %i.agf = load i32, ptr %i.age, align 8, !range !6, !alias.scope !925, !noalias !926
  %.not1.i.i.i115 = icmp eq i32 %i.agf, -1
  %or.cond.i.i116 = select i1 %.not.i.i.i114, i1 %.not1.i.i.i115, i1 false
  br i1 %or.cond.i.i116, label %bb.ne, label %.backedge.i

bb.ne:                                            ; preds = %.lr.ph.i113
  %i.agg = getelementptr inbounds nuw i8, ptr %i.aga, i64 40
  %.sroa.04.0.copyload.i.i.i.i = load i64, ptr %i.agg, align 8, !alias.scope !927, !noalias !926
  %i.agh = trunc nuw i64 %.sroa.04.0.copyload.i.i.i.i to i1
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 56
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !927, !noalias !926
  %.sroa.45.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aga, i64 48
  %.sroa.45.0.copyload.i.i.i.i = load i64, ptr %.sroa.45.0..sroa_idx.i.i.i.i, align 8, !alias.scope !927, !noalias !926 ; 2 uses
  %i.agi = icmp ne i64 %.sroa.45.0.copyload.i.i.i.i, %.sroa.5.0.copyload.i.i.i.i
  %i.agj = icmp ugt i64 %.sroa.45.0.copyload.i.i.i.i, 1
  %i.agk = or i1 %i.agi, %i.agj
  %brmerge.i.i.i.i = select i1 %i.agh, i1 %i.agk, i1 false
  %i.agl = getelementptr inbounds nuw i8, ptr %i.aga, i64 668
  %i.agm = load i8, ptr %i.agl, align 4, !range !20, !alias.scope !927, !noalias !926
  %i.agn = icmp eq i8 %i.agm, 1
  %or.cond.i.i.i.i = select i1 %brmerge.i.i.i.i, i1 true, i1 %i.agn
  br i1 %or.cond.i.i.i.i, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.ne
  %i.ago = getelementptr inbounds nuw i8, ptr %i.aga, i64 64
  %i.agp = load i64, ptr %i.ago, align 8, !range !3, !alias.scope !927, !noalias !926, !noundef !4
  %i.agq = trunc nuw i64 %i.agp to i1
  %i.agr = getelementptr inbounds nuw i8, ptr %i.aga, i64 72
  %i.ags = load i64, ptr %i.agr, align 8, !alias.scope !927, !noalias !926
  %.sroa.01.0.i.i.i.i117 = select i1 %i.agq, i64 %i.ags, i64 0
  %.not.i118 = icmp eq i64 %i.er, %.sroa.01.0.i.i.i.i117
  br i1 %.not.i118, label %.backedge.i, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.split.i
  %xtraiter = and i64 %.val275.i, 1
  %i.agt = icmp eq i64 %.val275.i, 1
  br i1 %i.agt, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %.val275.i, -2
  br label %.preheader

.backedge.i:                                      ; preds = %.split.i, %bb.ne, %.lr.ph.i113
  %.not16.i = icmp eq ptr %i.agb, %i.afz
  br i1 %.not16.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %.lr.ph.i113

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.sroa.04.0.i = phi i64 [ 0, %.preheader.preheader.new ], [ %i.ahf, %.preheader ] ; 3 uses
  %.sroa.02.0.i = phi ptr [ null, %.preheader.preheader.new ], [ %spec.select.i.i.1, %.preheader ]
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.agu = getelementptr inbounds nuw [672 x i8], ptr %.val274.i, i64 %.sroa.04.0.i ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 80
  %i.agw = load i64, ptr %i.agv, align 8, !range !5, !alias.scope !928, !noundef !4
  %.not.i.i.i107 = icmp eq i64 %i.agw, 2
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 656
  %i.agy = load i32, ptr %i.agx, align 8, !range !6, !alias.scope !928
  %.not1.i.i.i108 = icmp eq i32 %i.agy, -1
  %or.cond.i.i109 = select i1 %.not.i.i.i107, i1 %.not1.i.i.i108, i1 false
  %spec.select.i.i = select i1 %or.cond.i.i109, ptr %i.agu, ptr %.sroa.02.0.i
  %i.agz = getelementptr inbounds nuw [672 x i8], ptr %.val274.i, i64 %.sroa.04.0.i ; 3 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 672
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agz, i64 752
  %i.ahc = load i64, ptr %i.ahb, align 8, !range !5, !alias.scope !928, !noundef !4
  %.not.i.i.i107.1 = icmp eq i64 %i.ahc, 2
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agz, i64 1328
  %i.ahe = load i32, ptr %i.ahd, align 8, !range !6, !alias.scope !928
  %.not1.i.i.i108.1 = icmp eq i32 %i.ahe, -1
  %or.cond.i.i109.1 = select i1 %.not.i.i.i107.1, i1 %.not1.i.i.i108.1, i1 false
  %spec.select.i.i.1 = select i1 %or.cond.i.i109.1, ptr %i.aha, ptr %spec.select.i.i ; 3 uses
  %i.ahf = add nuw i64 %.sroa.04.0.i, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, label %.preheader

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa: ; preds = %.preheader
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.preheader
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.ahf, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi ptr [ null, %.preheader.preheader ], [ %spec.select.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ]
  %lcmp.mod4283 = trunc i64 %.val275.i to i1
  call void @llvm.assume(i1 %lcmp.mod4283)
  %i.ahg = getelementptr inbounds nuw [672 x i8], ptr %.val274.i, i64 %.sroa.04.0.i.epil.init ; 3 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahg, i64 80
  %i.ahi = load i64, ptr %i.ahh, align 8, !range !5, !alias.scope !928, !noundef !4
  %.not.i.i.i107.epil = icmp eq i64 %i.ahi, 2
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 656
  %i.ahk = load i32, ptr %i.ahj, align 8, !range !6, !alias.scope !928
  %.not1.i.i.i108.epil = icmp eq i32 %i.ahk, -1
  %or.cond.i.i109.epil = select i1 %.not.i.i.i107.epil, i1 %.not1.i.i.i108.epil, i1 false
  %spec.select.i.i.epil = select i1 %or.cond.i.i109.epil, ptr %i.ahg, ptr %.sroa.02.0.i.epil.init
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa, %.preheader.epil.preheader
  %spec.select.i.i.lcssa = phi ptr [ %spec.select.i.i.1, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.unr-lcssa ], [ %spec.select.i.i.epil, %.preheader.epil.preheader ] ; 2 uses
  %.not208.i = icmp eq ptr %spec.select.i.i.lcssa, null
  br i1 %.not208.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread, label %bb.nf

bb.nf:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit
  %i.ahl = getelementptr i8, ptr %spec.select.i.i.lcssa, i64 664
  %.val280.i = load i32, ptr %i.ahl, align 8, !noundef !4
  %i.ahm = and i32 %.val280.i, 256
  %.not.i106 = icmp ne i32 %i.ahm, 0
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread: ; preds = %.backedge.i, %.thread409, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit, %bb.nf, %bb.nd
  %.sroa.055.0.i = phi i1 [ true, %.thread409 ], [ %.not.i106, %bb.nf ], [ true, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit ], [ true, %bb.nd ], [ true, %.backedge.i ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %.pre1546, i64 320 ; 2 uses
  %i.aho = invoke noundef align 8 ptr @_RINvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ahn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eh)
          to label %bb.ng unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 2 uses

bb.ng:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_6option6OptionRBQ_ENCINvNtNtB1L_8adapters6filter11filter_foldB2L_B2p_NCNvMs2_NtBU_7commandNtB3M_7Command15get_positionals0INvNvB1F_4last4someB2L_EE0EBW_.exit.thread
  %.not209.i = icmp eq ptr %i.aho, null
  br i1 %.not209.i, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.ahp = getelementptr i8, ptr %i.aho, i64 152
  %.val281.i = load i64, ptr %i.ahp, align 8, !range !5, !noundef !4
  %.not.i105 = icmp ne i64 %.val281.i, 2
  br label %bb.ni

bb.ni:                                            ; preds = %bb.ng, %bb.nh
  %.sroa.060.0.i = phi i1 [ false, %bb.ng ], [ %.not.i105, %bb.nh ] ; 2 uses
  %i.ahq = getelementptr i8, ptr %.pre1546, i64 764
  %i.ahr = load <2 x i32>, ptr %i.ahq, align 4
  %16 = and <2 x i32> %i.ahr, splat (i32 16)
  %17 = icmp ne <2 x i32> %16, zeroinitializer    ; 2 uses
  %18 = extractelement <2 x i1> %17, i64 0
  %19 = extractelement <2 x i1> %17, i64 1
  %.sroa.0.0.i104 = select i1 %18, i1 true, i1 %19 ; 2 uses
  %brmerge.not.i = and i1 %i.hy, %.sroa.0.0.i104
  br i1 %brmerge.not.i, label %bb.nk, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %brmerge243.i = or i1 %.sroa.055.0.i, %.sroa.060.0.i
  br i1 %brmerge243.i, label %bb.nl, label %bb.nm

bb.nk:                                            ; preds = %bb.ni
  %or.cond.not.i = and i1 %.sroa.055.0.i, %i.hw
  %brmerge.i = or i1 %or.cond.not.i, %.sroa.060.0.i
  br i1 %brmerge.i, label %bb.nl, label %bb.nm

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  br i1 %i.hw, label %bb.nx, label %bb.ny

bb.nm:                                            ; preds = %bb.nk, %bb.nj
  %i.ahs = invoke { ptr, i64 } @_RNvMCsgQD0exT44A_8clap_lexNtB2_7RawArgs4peek(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.nn unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 2 uses

bb.nn:                                            ; preds = %bb.nm
  %i.aht = extractvalue { ptr, i64 } %i.ahs, 0    ; 2 uses
  %.not.i = icmp eq ptr %i.aht, null
  br i1 %.not.i, label %bb.nw, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.ahu = extractvalue { ptr, i64 } %i.ahs, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !815
  store ptr %i.aht, ptr %i.cy, align 8, !noalias !815
  store i64 %i.ahu, ptr %i.hh, align 8, !noalias !815
  %i.ahv = getelementptr i8, ptr %.pre1546, i64 328
  %.val270.i = load ptr, ptr %i.ahv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ahw = getelementptr i8, ptr %.pre1546, i64 336
  %.val271.i = load i64, ptr %i.ahw, align 8, !noundef !4 ; 2 uses
  %.idx559 = mul nuw nsw i64 %.val271.i, 672
  %i.ahx = getelementptr inbounds nuw i8, ptr %.val270.i, i64 %.idx559
  %i.ahy = icmp eq i64 %.val271.i, 0
  br i1 %i.ahy, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.no, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i
  %i.ahz = phi ptr [ %i.aia, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i ], [ %.val270.i, %bb.no ] ; 7 uses
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahz, i64 672 ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahz, i64 80
  %i.aic = load i64, ptr %i.aib, align 8, !range !5, !alias.scope !929, !noalias !930, !noundef !4
  %.not.i.i.i102 = icmp eq i64 %i.aic, 2
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahz, i64 656
  %i.aie = load i32, ptr %i.aid, align 8, !range !6, !alias.scope !929, !noalias !930
  %.not1.i.i.i = icmp eq i32 %i.aie, -1
  %or.cond.i.i = select i1 %.not.i.i.i102, i1 %.not1.i.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.np, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

bb.np:                                            ; preds = %.lr.ph.i
  %i.aif = getelementptr inbounds nuw i8, ptr %i.ahz, i64 64
  %i.aig = load i64, ptr %i.aif, align 8, !range !3, !alias.scope !931, !noalias !930, !noundef !4
  %i.aih = trunc nuw i64 %i.aig to i1
  br i1 %i.aih, label %_RNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i: ; preds = %bb.np
  %i.aii = getelementptr inbounds nuw i8, ptr %i.ahz, i64 72
  %i.aij = load i64, ptr %i.aii, align 8, !alias.scope !931, !noalias !930
  %.fr.i.i.i = freeze i64 %i.aij
  %i.aik = icmp eq i64 %.fr.i.i.i, %i.ho
  br i1 %i.aik, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i: ; preds = %_RNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i, %bb.np, %.lr.ph.i
  %i.ail = icmp eq ptr %i.aia, %i.ahx
  br i1 %i.ail, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit: ; preds = %_RNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB6_6Parser5parses5_0Ba_.exit.i.i.i
  %i.aim = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7CommandINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %.pre1546, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.ahz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %.noexc97 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc97:                                         ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_NCNvMs_NtNtBP_6parser6parserNtB5k_6Parser5parses5_0E0E0B3c_EBP_.exit
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 664
  %i.aio = load i32, ptr %i.ain, align 8, !noalias !932, !noundef !4
  %i.aip = and i32 %i.aio, 32
  %i.aiq = icmp eq i32 %i.aip, 0
  br i1 %i.aiq, label %bb.nq, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

bb.nq:                                            ; preds = %.noexc97
  %i.air = invoke noundef nonnull align 8 ptr @_RNvXs7_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7CommandINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexRNtNtNtB9_4util2id2IdE5index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %.pre1546, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %i.ahz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %.noexc98 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc98:                                         ; preds = %bb.nq
  %i.ais = getelementptr inbounds nuw i8, ptr %i.air, i64 664
  %i.ait = load i32, ptr %i.ais, align 8, !noalias !932, !noundef !4
  %i.aiu = and i32 %i.ait, 64
  %i.aiv = icmp eq i32 %i.aiu, 0
  br i1 %i.aiv, label %bb.ns, label %bb.nr

bb.nr:                                            ; preds = %.noexc98
  %i.aiw = invoke noundef zeroext i1 @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg18is_negative_number(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy)
          to label %.noexc99 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc99:                                         ; preds = %bb.nr
  br i1 %i.aiw, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread, label %bb.ns

bb.ns:                                            ; preds = %.noexc99, %.noexc98
  %i.aix = invoke noundef zeroext i1 @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7is_long(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy)
          to label %.noexc100 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

.noexc100:                                        ; preds = %bb.ns
  br i1 %i.aix, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473, label %bb.nt

bb.nt:                                            ; preds = %.noexc100
  %i.aiy = invoke noundef zeroext i1 @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg8is_short(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy)
          to label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCNvMs_NtNtB1c_6parser6parserNtB4y_6Parser5parses5_0E0E0B1c_.exit.i, %.noexc100, %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit, %bb.no
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !815
  br label %bb.nw

_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit: ; preds = %bb.nt
  br i1 %i.aiy, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473, label %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread

_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread: ; preds = %.noexc97, %.noexc99, %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !815
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg8to_value(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cy)
          to label %bb.nu unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.nu:                                            ; preds = %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread
  %i.aiz = trunc nuw i8 %.sroa.0.2 to i1
  %i.aja = invoke fastcc { ptr, i64 } @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser19possible_subcommand(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.cx, i1 noundef zeroext %i.aiz)
          to label %bb.nv unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.nv:                                            ; preds = %bb.nu
  %i.ajb = extractvalue { ptr, i64 } %i.aja, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cx), !noalias !815
  %.not212.i = icmp eq ptr %i.ajb, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !815
  br i1 %.not212.i, label %bb.ny, label %bb.nw

bb.nw:                                            ; preds = %bb.nv, %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser10is_new_arg.exit.thread473, %bb.nn
  br label %bb.ny

bb.nx:                                            ; preds = %bb.nl
  %brmerge8.i = or i1 %.not3.not.not.i.not.not.not.not.not.not.lcssa, %.sroa.0.0.i104
  %spec.select.i = select i1 %brmerge8.i, i64 %i.er, i64 %i.ho
  br label %bb.ny

bb.ny:                                            ; preds = %bb.nl, %bb.nv, %bb.nw, %bb.nx
  %.sroa.054.0.i = phi i64 [ %i.ho, %bb.nl ], [ %i.ho, %bb.nv ], [ %i.hx, %bb.nw ], [ %spec.select.i, %bb.nx ] ; 5 uses
  store i64 %.sroa.054.0.i, ptr %i.eh, align 8, !noalias !815
  %i.ajc = invoke noundef align 8 ptr @_RINvMs4_NtCsdjW2DEjcQy2_12clap_builder7mkeymapNtB6_7MKeyMap3getjEB8_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ahn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.eh)
          to label %bb.nz unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 18 uses

bb.nz:                                            ; preds = %bb.ny
  %.not213.i = icmp eq ptr %i.ajc, null
  br i1 %.not213.i, label %bb.oa, label %bb.oc

bb.oa:                                            ; preds = %bb.nz
  %i.ajd = getelementptr i8, ptr %.pre1546, i64 764
  %i.aje = load i32, ptr %i.ajd, align 4, !alias.scope !933, !noundef !4
  %i.ajf = and i32 %i.aje, 1024
  %i.ajg = icmp eq i32 %i.ajf, 0
  br i1 %i.ajg, label %bb.ob, label %bb.pt

bb.ob:                                            ; preds = %bb.oa
  %i.ajh = getelementptr i8, ptr %.pre1546, i64 768
  %i.aji = load i32, ptr %i.ajh, align 8, !alias.scope !933, !noundef !4
  %i.ajj = and i32 %i.aji, 1024
  %.not.i94 = icmp eq i32 %i.ajj, 0
  br i1 %.not.i94, label %bb.pu, label %bb.pt

bb.oc:                                            ; preds = %bb.nz
  %i.ajk = getelementptr i8, ptr %i.ajc, i64 664
  %.val286.i = load i32, ptr %i.ajk, align 8, !noundef !4 ; 2 uses
  %i.ajl = and i32 %.val286.i, 256
  %.not560 = icmp eq i32 %i.ajl, 0
  %or.cond5.i = or i1 %.not560, %i.hw
  br i1 %or.cond5.i, label %bb.ov, label %bb.od

bb.od:                                            ; preds = %bb.oc
  %i.ajm = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15resolve_pending(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(128) %1)
          to label %bb.oe unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449 ; 2 uses

bb.oe:                                            ; preds = %bb.od
  %i.ajn = icmp eq ptr %i.ajm, null
  br i1 %i.ajn, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit91, label %bb.of

bb.of:                                            ; preds = %bb.oe
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEBF_(ptr nonnull %i.ajm)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit91 unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit91: ; preds = %bb.oe, %bb.of
  %i.ajo = load ptr, ptr %i.em, align 8, !alias.scope !812, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !815
  invoke void @_RNvMs1_CsgQD0exT44A_8clap_lexNtB5_9ParsedArg7display(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.eg)
          to label %bb.og unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.og:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit91
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !noalias !815, !nonnull !4
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.ajs = load i64, ptr %i.ajr, align 8, !noalias !815 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !815
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bt, i64 noundef %i.ajs, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.oh unwind label %bb.om, !inline_history !449

.critedge245.i:                                   ; preds = %bb.om, %bb.ou
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs4NRVxsYgnAr_4core3any3AnyNtNtBK_6marker4SendNtB1d_4SyncEL_E9drop_slowCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %.thread496 unwind label %bb.ef

bb.qv:                                            ; preds = %bb.qm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !815
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co)
          to label %bb.qw unwind label %bb.qh, !inline_history !449

bb.qw:                                            ; preds = %bb.rl, %bb.rf, %bb.qv
  %.sroa.0.5.i = phi ptr [ %i.apb, %bb.rl ], [ null, %bb.rf ], [ %i.anx, %bb.qv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !815
  call void @llvm.experimental.noalias.scope.decl(metadata !954)
  call void @llvm.experimental.noalias.scope.decl(metadata !955)
  %i.aoi = load i64, ptr %i.cp, align 8, !range !17, !alias.scope !956, !noundef !4
  %switch.i.i = icmp samesign ult i64 %i.aoi, 4
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %bb.qx

bb.qx:                                            ; preds = %bb.qw
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %.val.i.i43 = load ptr, ptr %i.aoj, align 8, !alias.scope !956 ; 5 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.val1.i.i44 = load ptr, ptr %i.aok, align 8, !alias.scope !956, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.aol = load ptr, ptr %.val1.i.i44, align 8, !invariant.load !4, !noalias !956 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aol, null
  br i1 %.not.i.i.i, label %bb.qz, label %bb.qy

bb.qy:                                            ; preds = %bb.qx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43) ]
  invoke void %i.aol(ptr noundef nonnull %.val.i.i43)
          to label %bb.qz unwind label %bb.rb, !noalias !956

bb.qz:                                            ; preds = %bb.qy, %bb.qx
  %i.aom = getelementptr inbounds nuw i8, ptr %.val1.i.i44, i64 8
  %i.aon = load i64, ptr %i.aom, align 8, !range !12, !invariant.load !4, !noalias !956 ; 2 uses
  %i.aoo = icmp eq i64 %i.aon, 0
  br i1 %i.aoo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEBH_.exit, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.aop = getelementptr inbounds nuw i8, ptr %.val1.i.i44, i64 16
  %i.aoq = load i64, ptr %i.aop, align 8, !range !13, !invariant.load !4, !noalias !956
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i43) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i43, i64 noundef range(i64 1, 0) %i.aon, i64 noundef range(i64 1, 536870913) %i.aoq) #17, !noalias !956
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEBH_.exit

bb.rb:                                            ; preds = %bb.qy
  %i.aor = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %.val1.i.i44, i64 8
  %i.aot = load i64, ptr %i.aos, align 8, !range !12, !invariant.load !4, !noalias !956 ; 2 uses
  %i.aou = icmp eq i64 %i.aot, 0
  br i1 %i.aou, label %.critedge240.i, label %bb.rc

bb.rc:                                            ; preds = %bb.rb
  %i.aov = getelementptr inbounds nuw i8, ptr %.val1.i.i44, i64 16
  %i.aow = load i64, ptr %i.aov, align 8, !range !13, !invariant.load !4, !noalias !956
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i43, i64 noundef range(i64 1, 0) %i.aot, i64 noundef range(i64 1, 536870913) %i.aow) #17, !noalias !956
  br label %.critedge240.i

bb.rd:                                            ; preds = %._crit_edge
  %i.aox = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ce) #18
          to label %.thread500 unwind label %bb.ef, !inline_history !449

bb.re:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !815
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false), !noalias !815
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aoy, ptr noundef nonnull align 8 dereferenceable(56) %i.cd, i64 56, i1 false), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !815
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher10subcommand(ptr noalias noundef nonnull align 8 dereferenceable(128) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.cf)
          to label %bb.rf unwind label %bb.qh, !inline_history !449

bb.rf:                                            ; preds = %bb.re
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !815
  br label %bb.qw

.thread496:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.qu, %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn219.i499 = phi { ptr, i32 } [ %lpad.loopexit.split-lp3872, %.loopexit.split-lp563.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp3872, %bb.qu ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcher10ArgMatcherEBH_(ptr noalias noundef align 8 dereferenceable(128) %i.ck) #18
          to label %bb.rg unwind label %bb.ef, !inline_history !449

bb.rg:                                            ; preds = %.thread496, %bb.qf
  %.pn219.pn.i.ph = phi { ptr, i32 } [ %i.anh, %bb.qf ], [ %.pn219.i499, %.thread496 ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.co) #18
          to label %.thread500 unwind label %bb.ef, !inline_history !449

bb.rh:                                            ; preds = %bb.pz
  %i.aoz = icmp eq ptr %i.amu, null
  br i1 %i.aoz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit, label %bb.ri

bb.ri:                                            ; preds = %bb.rh
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEBF_(ptr nonnull %i.amu)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit unwind label %bb.qh

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit: ; preds = %bb.rh, %bb.ri
  %i.apa = load ptr, ptr %i.em, align 8, !alias.scope !812, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !815
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !815
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.apa)
          to label %bb.rj unwind label %bb.qh, !inline_history !449

bb.rj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEEB12_.exit
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.rk unwind label %bb.qh, !inline_history !449

bb.rk:                                            ; preds = %bb.rj
  %i.apb = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12invalid_utf8B4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.apa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.cm)
          to label %bb.rl unwind label %bb.qh, !inline_history !449

bb.rl:                                            ; preds = %bb.rk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl), !noalias !815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !815
  br label %bb.qw

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEBH_.exit: ; preds = %bb.ra, %bb.qz, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !815
  br label %.loopexit632

bb.rm:                                            ; preds = %bb.ti, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit21, %.loopexit632
  %i.apc = phi i64 [ %i.hp, %.loopexit632 ], [ %i.acc, %bb.ti ], [ %i.acc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit21 ]
  %.sroa.0.6.i = phi ptr [ %.sroa.0.3.i, %.loopexit632 ], [ %i.asu, %bb.ti ], [ %i.arp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit21 ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !815
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  switch i64 %i.apc, label %bb.rn [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit41
    i64 1, label %bb.ro
  ]

bb.rn:                                            ; preds = %bb.rm
  %i.apd = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ape = load i64, ptr %i.apd, align 8, !range !3, !alias.scope !958, !noundef !4
  %i.apf = icmp eq i64 %i.ape, 0
  %i.apg = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val1.i.i.i.i39 = load i64, ptr %i.apg, align 8, !alias.scope !957 ; 2 uses
  %i.aph = icmp eq i64 %.val1.i.i.i.i39, 0
  %or.cond6.i40 = select i1 %i.apf, i1 true, i1 %i.aph
  br i1 %or.cond6.i40, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit41, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i36

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i36: ; preds = %bb.ro, %bb.rn
  %.val1.i.i.i1.sink.i37 = phi i64 [ %.val1.i.i.i1.i34, %bb.ro ], [ %.val1.i.i.i.i39, %bb.rn ]
  %i.api = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.val.i.i.i2.i38 = load ptr, ptr %i.api, align 16, !alias.scope !957, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i2.i38, i64 noundef range(i64 1, 0) %.val1.i.i.i1.sink.i37, i64 noundef 1) #17, !noalias !957
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit41

bb.ro:                                            ; preds = %bb.rm
  %i.apj = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.apk = load i64, ptr %i.apj, align 8, !range !3, !alias.scope !959, !noundef !4
  %i.apl = icmp eq i64 %i.apk, 0
  %i.apm = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val1.i.i.i1.i34 = load i64, ptr %i.apm, align 8, !alias.scope !957 ; 2 uses
  %i.apn = icmp eq i64 %.val1.i.i.i1.i34, 0
  %or.cond.i35 = select i1 %i.apl, i1 true, i1 %i.apn
  br i1 %or.cond.i35, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit41, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i36

bb.rp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder.exit, %bb.kp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh), !noalias !815
  call void @llvm.experimental.noalias.scope.decl(metadata !960)
  switch i64 %i.acc, label %bb.rq [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit
    i64 1, label %bb.rr
  ]

bb.rq:                                            ; preds = %bb.rp
  %i.apo = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.app = load i64, ptr %i.apo, align 8, !range !3, !alias.scope !961, !noundef !4
  %i.apq = icmp eq i64 %i.app, 0
  %i.apr = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.apr, align 8, !alias.scope !960 ; 2 uses
  %i.aps = icmp eq i64 %.val1.i.i.i.i, 0
  %or.cond6.i = select i1 %i.apq, i1 true, i1 %i.aps
  br i1 %or.cond6.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i: ; preds = %bb.rr, %bb.rq
  %.val1.i.i.i1.sink.i = phi i64 [ %.val1.i.i.i1.i, %bb.rr ], [ %.val1.i.i.i.i, %bb.rq ]
  %i.apt = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.val.i.i.i2.i = load ptr, ptr %i.apt, align 16, !alias.scope !960, !nonnull !4, !noundef !4
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i2.i, i64 noundef range(i64 1, 0) %.val1.i.i.i1.sink.i, i64 noundef 1) #17, !noalias !960
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit

bb.rr:                                            ; preds = %bb.rp
  %i.apu = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.apv = load i64, ptr %i.apu, align 8, !range !3, !alias.scope !962, !noundef !4
  %i.apw = icmp eq i64 %i.apv, 0
  %i.apx = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %.val1.i.i.i1.i = load i64, ptr %i.apx, align 8, !alias.scope !960 ; 2 uses
  %i.apy = icmp eq i64 %.val1.i.i.i1.i, 0
  %or.cond.i32 = select i1 %i.apw, i1 true, i1 %i.apy
  br i1 %or.cond.i32, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser6parser10ParseStateEBH_.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEBH_.exit.sink.split.i

bb.rs:                                            ; preds = %bb.kp
  %i.apz = load ptr, ptr %i.em, align 8, !alias.scope !812, !nonnull !4, !align !15, !noundef !4 ; 8 uses
  %i.aqa = getelementptr i8, ptr %i.apz, i64 764  ; 2 uses
  %i.aqb = getelementptr i8, ptr %i.apz, i64 768
  %i.aqc = load <2 x i32>, ptr %i.aqa, align 4
  %20 = and <2 x i32> %i.aqc, splat (i32 8192)
  %21 = icmp ne <2 x i32> %20, zeroinitializer    ; 2 uses
  %22 = extractelement <2 x i1> %21, i64 0
  %23 = extractelement <2 x i1> %21, i64 1
  %.sroa.0.0.i33 = select i1 %22, i1 true, i1 %23
  %i.aqd = trunc nuw i8 %.sroa.0.5 to i1
  %or.cond7.i = select i1 %.sroa.0.0.i33, i1 %i.aqd, i1 false
  br i1 %or.cond7.i, label %bb.rw, label %bb.rt

bb.rt:                                            ; preds = %bb.rs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !815
  %i.aqe = getelementptr i8, ptr %i.apz, i64 376
  %.val296.i = load ptr, ptr %i.aqe, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aqf = getelementptr i8, ptr %i.apz, i64 384
  %.val297.i = load i64, ptr %i.aqf, align 8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.val.i.i29 = load ptr, ptr %i.aqg, align 8, !alias.scope !963, !nonnull !4, !noundef !4 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.val1.i.i30 = load i64, ptr %i.aqh, align 8, !alias.scope !963, !noundef !4 ; 5 uses
  %.idx.i = mul nuw nsw i64 %.val297.i, 776
  %i.aqi = getelementptr inbounds nuw i8, ptr %.val296.i, i64 %.idx.i
  %i.aqj = icmp eq i64 %.val297.i, 0
  br i1 %i.aqj, label %.loopexit569, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.rt, %_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i
  %i.aqk = phi ptr [ %i.aql, %_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i ], [ %.val296.i, %bb.rt ] ; 6 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 776 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !964)
  %.sroa.3.0.in.i.i.i.i = getelementptr i8, ptr %i.aqk, i64 16
  %.sroa.3.0.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i, align 8, !alias.scope !964, !noalias !965, !noundef !4 ; 2 uses
  %i.aqm = icmp eq i64 %.val1.i.i30, %.sroa.3.0.i.i.i.i
  br i1 %i.aqm, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.lr.ph.i.i
  %.sroa.01.0.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %.sroa.01.0.i.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i.i, align 8, !alias.scope !964, !noalias !965, !nonnull !4, !noundef !4 ; 2 uses
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i29, ptr nonnull %.sroa.01.0.i.i.i.i, i64 %.val1.i.i30), !noalias !966
  %i.aqn = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aqn, label %.loopexit567, label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %.lr.ph.i.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqk, i64 256
  %i.aqp = load ptr, ptr %i.aqo, align 8, !alias.scope !964, !noalias !965, !nonnull !4, !noundef !4 ; 2 uses
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqk, i64 264
  %i.aqr = load i64, ptr %i.aqq, align 8, !alias.scope !964, !noalias !965, !noundef !4 ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aqr, 5
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %.idx.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.aqr, 0
  br i1 %.not.i.i.i.i.i, label %_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.rv, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i
  %i.aqt = phi ptr [ %i.aqu, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i ], [ %i.aqp, %bb.rv ] ; 3 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 32 ; 2 uses
  %i.aqv = getelementptr i8, ptr %i.aqt, i64 16
  %.val7.i.i.i.i.i = load i64, ptr %i.aqv, align 8, !noalias !967, !noundef !4
  %i.aqw = icmp eq i64 %.val1.i.i30, %.val7.i.i.i.i.i
  br i1 %i.aqw, label %.split.i.i.i.i.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %i.aqx = getelementptr i8, ptr %i.aqt, i64 8
  %.val6.i.i.i.i.i = load ptr, ptr %i.aqx, align 8, !noalias !967, !nonnull !4, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i29, ptr nonnull readonly %.val6.i.i.i.i.i, i64 %.val1.i.i30), !noalias !968
  %i.aqy = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.aqy, label %.loopexit567.loopexit, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.not16.i.i.i.i.i = icmp eq ptr %i.aqu, %i.aqs
  br i1 %.not16.i.i.i.i.i, label %_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i, label %.lr.ph.i.i.i.i.i

_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldRTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs2_NtB15_7commandNtB2J_7Command15get_all_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1R_NCINvMs5_B2J_B2X_10aliases_toRNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrE0E0E0B17_.exit.backedge.i.i.i.i.i, %bb.rv
  %i.aqz = icmp eq ptr %i.aql, %i.aqi
  br i1 %i.aqz, label %.loopexit569, label %.lr.ph.i.i

bb.rw:                                            ; preds = %bb.rs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !815
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ej)
          to label %bb.te unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

.loopexit569:                                     ; preds = %_RNCINvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB8_7Command15find_subcommandRNtNtCscdodAO9FK5_5alloc6string6StringE0Bc_.exit.i.i, %bb.rt
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 99, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #20
          to label %bb.z unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

.loopexit567.loopexit:                            ; preds = %.split.i.i.i.i.i
  %.phi.trans.insert = getelementptr i8, ptr %i.aqk, i64 8
  %.val298.i.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %.loopexit567

.loopexit567:                                     ; preds = %bb.ru, %.loopexit567.loopexit
  %.sroa.3.0.i.i.i.i2556 = phi i64 [ %.sroa.3.0.i.i.i.i, %.loopexit567.loopexit ], [ %.val1.i.i30, %bb.ru ] ; 6 uses
  %.val298.i = phi ptr [ %.val298.i.pre, %.loopexit567.loopexit ], [ %.sroa.01.0.i.i.i.i, %bb.ru ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !815
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, i64 noundef %.sroa.3.0.i.i.i.i2556, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.rx unwind label %.loopexit.split-lp580.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit3939, !inline_history !449

bb.rx:                                            ; preds = %.loopexit567
  %i.ara = load i64, ptr %i.bo, align 8, !range !3, !noalias !815, !noundef !4
  %i.arb = trunc nuw i64 %i.ara to i1
  %i.arc = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ard = load i64, ptr %i.arc, align 8, !range !10, !noalias !815, !noundef !4 ; 3 uses
  %i.are = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  br i1 %i.arb, label %bb.ry, label %bb.rz, !prof !11

bb.ry:                                            ; preds = %bb.rx
  %i.arf = load i64, ptr %i.are, align 8, !noalias !815
  br label %.invoke2037

bb.rz:                                            ; preds = %bb.rx
  %i.arg = load ptr, ptr %i.are, align 8, !noalias !815, !nonnull !4, !noundef !4 ; 3 uses
  %i.arh = icmp ule i64 %.sroa.3.0.i.i.i.i2556, %i.ard
  call void @llvm.assume(i1 %i.arh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !815
  %.not204.i = icmp eq i64 %.sroa.3.0.i.i.i.i2556, 0
  br i1 %.not204.i, label %bb.sa, label %bb.sv

bb.sa:                                            ; preds = %bb.sv, %bb.rz
  store i64 %i.ard, ptr %i.bw, align 8, !noalias !815
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.arg, ptr %.sroa.4163.0..sroa_idx.i, align 8, !noalias !815
  %.sroa.6164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %.sroa.3.0.i.i.i.i2556, ptr %.sroa.6164.0..sroa_idx.i, align 8, !noalias !815
  %i.ari = load i64, ptr %i.ek, align 8, !noalias !815, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %.val.i22 = load i32, ptr %i.aqa, align 4, !noalias !970, !noundef !4
  %.val11.i = load i32, ptr %i.aqb, align 8, !noalias !970
  %i.arj = trunc i32 %.val.i22 to i1
  %i.ark = trunc i32 %.val11.i to i1
  %.sroa.0.0.i.i = select i1 %i.arj, i1 true, i1 %i.ark
  %i.arl = invoke noundef align 8 ptr @_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command17__build_subcommand(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.apz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.arg, i64 noundef %.sroa.3.0.i.i.i.i2556)
          to label %.noexc unwind label %bb.sw, !inline_history !796 ; 4 uses

.noexc:                                           ; preds = %bb.sa
  %.not.i23 = icmp eq ptr %i.arl, null
  br i1 %.not.i23, label %bb.ta, label %bb.sb

bb.sb:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !970
  %i.arm = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  store i64 0, ptr %i.arm, align 8, !alias.scope !971, !noalias !970
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !971, !noalias !970
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !971, !noalias !970
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !971, !noalias !970
  %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.sroa.5.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !971, !noalias !970
  store i64 2, ptr %i.bn, align 8, !alias.scope !971, !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !970
  %i.arn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.arl, ptr %i.arn, align 16, !alias.scope !972, !noalias !970
  %i.aro = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  store i64 0, ptr %i.bm, align 16, !alias.scope !972, !noalias !970
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aro, i8 0, i64 16, i1 false), !alias.scope !972, !noalias !970
  br i1 %.sroa.046.1.i, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sd, %bb.sb
  %i.arp = invoke noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16get_matches_with(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.ari)
          to label %bb.se unwind label %bb.su, !noalias !973, !inline_history !796 ; 4 uses

bb.sd:                                            ; preds = %bb.sb
  %i.arq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.arr = load <2 x i64>, ptr %0, align 8, !alias.scope !969
  store <2 x i64> %i.arr, ptr %i.bm, align 16, !noalias !970
  %i.ars = load <2 x i64>, ptr %i.arq, align 8, !alias.scope !969
  store <2 x i64> %i.ars, ptr %i.aro, align 8, !noalias !970
  br label %bb.sc

bb.se:                                            ; preds = %bb.sc
  %.not8.i = icmp eq ptr %i.arp, null
  br i1 %.not8.i, label %bb.sj, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  br i1 %.sroa.0.0.i.i, label %bb.sh, label %bb.sg

bb.sg:                                            ; preds = %bb.sh, %bb.sf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !970
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcher10ArgMatcherEBH_(ptr noalias noundef align 8 dereferenceable(128) %i.bn)
          to label %bb.sx unwind label %bb.sw, !inline_history !796

bb.sh:                                            ; preds = %bb.sf
  %i.art = getelementptr inbounds nuw i8, ptr %i.arp, i64 249
  %i.aru = load i8, ptr %i.art, align 1, !range !974, !noalias !973, !noundef !4
  %i.arv = and i8 %i.aru, 29
  %switch.selectcmp.i.i.not = icmp eq i8 %i.arv, 12
  br i1 %switch.selectcmp.i.i.not, label %bb.sg, label %bb.si

bb.si:                                            ; preds = %bb.sh
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorEBF_(ptr nonnull %i.arp)
          to label %bb.sj unwind label %bb.su, !noalias !973, !inline_history !796

bb.sj:                                            ; preds = %bb.si, %bb.se
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !970
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !970
  %i.arw = getelementptr i8, ptr %i.arl, i64 8
  %.val14.i = load ptr, ptr %i.arw, align 8, !noalias !973, !nonnull !4, !noundef !4
  %i.arx = getelementptr i8, ptr %i.arl, i64 16
  %.val15.i = load i64, ptr %i.arx, align 8, !noalias !973, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !970
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh, i64 noundef %.val15.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.sl unwind label %bb.su, !noalias !973, !inline_history !796

bb.sk:                                            ; preds = %bb.su, %bb.sq
  %i.ary = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser5react:bb.a
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !1165, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1165
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef %i.dw, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc159 unwind label %bb.b

.noexc159:                                        ; preds = %bb.as
  %i.dx = load i64, ptr %i.n, align 8, !range !3, !noalias !1165, !noundef !4
  %i.dy = trunc nuw i64 %i.dx to i1
  %i.dz = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !range !10, !noalias !1165, !noundef !4 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.dy, label %bb.at, label %bb.au, !prof !11

bb.at:                                            ; preds = %.noexc159
  %i.ec = load i64, ptr %i.eb, align 8, !noalias !1165
  br label %.invoke

.invoke:                                          ; preds = %bb.bz, %bb.at
  %i.ed = phi i64 [ %i.ea, %bb.at ], [ %i.gp, %bb.bz ]
  %i.ee = phi i64 [ %i.ec, %bb.at ], [ %i.gr, %bb.bz ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ed, i64 %i.ee) #20
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.au:                                            ; preds = %.noexc159
  %i.ef = load ptr, ptr %i.eb, align 8, !noalias !1165, !nonnull !4, !noundef !4 ; 2 uses
  %i.eg = icmp ule i64 %i.dw, %i.ea
  tail call void @llvm.assume(i1 %i.eg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1165
  %.not13.i = icmp eq i64 %i.dw, 0
  br i1 %.not13.i, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.aw, %bb.au
  store i64 %i.ea, ptr %i.s, align 8, !noalias !1165
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1165
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.dw, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1165
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull align 1 %i.du, i64 %i.dw, i1 false), !noalias !1165
  br label %bb.av

bb.ax:                                            ; preds = %bb.av, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1175
  store i64 0, ptr %i.g, align 8, !noalias !1175
  %.sroa.42.0..sroa_idx.i40.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i40.i, align 8, !noalias !1175
  %.sroa.53.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i41.i, align 8, !noalias !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1175
  %i.eh = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 1610612768, ptr %i.eh, align 8, !noalias !1175
  %.sroa.4.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i42.i, align 4, !noalias !1175
  %.sroa.5.0..sroa_idx.i43.i = getelementptr inbounds nuw i8, ptr %i.f, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i43.i, align 2, !noalias !1175
  store ptr %i.g, ptr %i.f, align 8, !noalias !1175
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @28, ptr %i.ei, align 8, !noalias !1175
  %i.ej = invoke noundef zeroext i1 @_RNvXs9_NtNtCsdjW2DEjcQy2_12clap_builder7builder3argNtB5_3ArgNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.az unwind label %bb.ay, !noalias !1176

bb.ay:                                            ; preds = %bb.ba, %bb.ax
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #18
          to label %bb.bg unwind label %bb.bb, !noalias !1176

bb.az:                                            ; preds = %bb.ax
  br i1 %i.ej, label %bb.ba, label %bb.bc, !prof !11

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #20
          to label %.noexc.i44.i unwind label %bb.ay, !noalias !1176

.noexc.i44.i:                                     ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ay
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !1176
  unreachable

bb.bc:                                            ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1165
  %i.em = load ptr, ptr %i.bs, align 8, !noalias !1165, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.em)
          to label %bb.bd unwind label %bb.bf, !noalias !1164

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.be unwind label %bb.bf, !noalias !1164

bb.be:                                            ; preds = %bb.bd
  %i.en = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error15too_many_valuesB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %.noexc161 unwind label %bb.b

.noexc161:                                        ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1165
  br label %bb.bl

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %lpad.thr_comm64.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #18
          to label %bb.bg unwind label %bb.z, !noalias !1164

bb.bg:                                            ; preds = %bb.bf, %bb.ay
  %.pn.ph.i = phi { ptr, i32 } [ %lpad.thr_comm64.i, %bb.bf ], [ %i.ek, %bb.ay ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s) #18
          to label %.thread unwind label %bb.z, !noalias !1164

bb.bh:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1165
  %i.eo = load ptr, ptr %i.bs, align 8, !noalias !1165, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.eo)
          to label %bb.bi unwind label %bb.bk, !noalias !1164

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.bj unwind label %bb.bk, !noalias !1164

bb.bj:                                            ; preds = %bb.bi
  %i.ep = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error14too_few_valuesB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.v, i64 noundef %.sroa.4.0.copyload.i, i64 noundef range(i64 0, 384307168202282326) %i.br, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc162 unwind label %bb.b

.noexc162:                                        ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1165
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi, %bb.bh
  %lpad.thr_comm72.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v) #18
          to label %.thread unwind label %bb.z, !noalias !1164

_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit: ; preds = %._RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge, %bb.f, %bb.aa, %bb.ak
  %i.eq = phi i64 [ %.pre, %._RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit_crit_edge ], [ %i.br, %bb.f ], [ %i.br, %bb.aa ], [ %i.br, %bb.ak ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.es = icmp ult i64 %i.eq, 384307168202282326
  tail call void @llvm.assume(i1 %i.es)
  %i.et = icmp eq i64 %i.eq, 0
  br i1 %i.et, label %bb.bm, label %bb.bo

bb.bl:                                            ; preds = %.noexc161, %.noexc156, %.noexc157, %.noexc162
  %.sroa.0.1.i.ph = phi ptr [ %i.ep, %.noexc162 ], [ %i.dg, %.noexc157 ], [ %i.ct, %.noexc156 ], [ %i.en, %.noexc161 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.eu, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.dt

bb.bm:                                            ; preds = %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 552
  %i.ew = load i64, ptr %i.ev, align 8, !noundef !4 ; 3 uses
  %i.ex = icmp ult i64 %i.ew, 384307168202282326
  tail call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ez = getelementptr inbounds nuw i8, ptr %4, i64 544
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.fb = getelementptr inbounds nuw [24 x i8], ptr %i.fa, i64 %i.ew
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrENCNvMs_NtNtB2Z_6parser6parserNtB3U_6Parser5react0EEB2Z_(ptr noalias noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %i.fa, ptr noundef nonnull %i.fb)
          to label %bb.bo unwind label %bb.b

bb.bo:                                            ; preds = %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit, %bb.bm, %bb.bn
  %.sroa.4.0 = phi i64 [ %7, %bb.bm ], [ undef, %bb.bn ], [ %7, %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit ] ; 2 uses
  %.sroa.013.0 = phi i64 [ %6, %bb.bm ], [ 0, %bb.bn ], [ %6, %_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15verify_num_args.exit ]
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 660
  %.val136 = load i32, ptr %i.fc, align 4, !range !6, !noundef !4 ; 9 uses
  %.not96 = icmp eq i32 %.val136, -1
  br i1 %.not96, label %bb.ct, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !nonnull !4, !align !15, !noundef !4
  %i.ff = getelementptr i8, ptr %i.fe, i64 764
  %i.fg = load <2 x i32>, ptr %i.ff, align 4
  %9 = and <2 x i32> %i.fg, splat (i32 64)
  %10 = icmp ne <2 x i32> %9, zeroinitializer     ; 2 uses
  %11 = extractelement <2 x i1> %10, i64 0
  %12 = extractelement <2 x i1> %10, i64 1
  %.sroa.0.0.i = select i1 %11, i1 true, i1 %12
  %i.fh = trunc nuw i64 %.sroa.013.0 to i1        ; 2 uses
  %i.fi = icmp eq i64 %.sroa.4.0, 0
  %i.fj = and i1 %.sroa.0.0.i, %i.fh
  %or.cond124 = select i1 %i.fj, i1 %i.fi, i1 false
  br i1 %or.cond124, label %bb.ct, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store i32 0, ptr %i.bj, align 4
  %i.fk = icmp samesign ult i32 %.val136, 128
  br i1 %i.fk, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fl = icmp samesign ult i32 %.val136, 2048
  %i.fm = trunc i32 %.val136 to i8
  %i.fn = and i8 %i.fm, 63
  %i.fo = or disjoint i8 %i.fn, -128              ; 3 uses
  %i.fp = lshr i32 %.val136, 6
  %i.fq = trunc i32 %i.fp to i8                   ; 2 uses
  %i.fr = and i8 %i.fq, 63
  %i.fs = or disjoint i8 %i.fr, -128              ; 2 uses
  %i.ft = lshr i32 %.val136, 12
  %i.fu = trunc i32 %i.ft to i8                   ; 2 uses
  %i.fv = and i8 %i.fu, 63
  %i.fw = or disjoint i8 %i.fv, -128
  %i.fx = lshr i32 %.val136, 18
  %i.fy = trunc nuw nsw i32 %i.fx to i8
  %i.fz = or disjoint i8 %i.fy, -16
  br i1 %i.fl, label %bb.bt, label %bb.bu

bb.bs:                                            ; preds = %bb.bq
  %i.ga = trunc nuw nsw i32 %.val136 to i8
  store i8 %i.ga, ptr %i.bj, align 4, !alias.scope !1179
  br label %bb.bx

bb.bt:                                            ; preds = %bb.br
  %i.gb = or disjoint i8 %i.fq, -64
  store i8 %i.gb, ptr %i.bj, align 4, !alias.scope !1179
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.fo, ptr %i.gc, align 1, !alias.scope !1179
  br label %bb.bx

bb.bu:                                            ; preds = %bb.br
  %i.gd = icmp samesign ult i32 %.val136, 65536
  br i1 %i.gd, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ge = or disjoint i8 %i.fu, -32
  store i8 %i.ge, ptr %i.bj, align 4, !alias.scope !1179
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.fs, ptr %i.gf, align 1, !alias.scope !1179
  %i.gg = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.fo, ptr %i.gg, align 2, !alias.scope !1179
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  store i8 %i.fz, ptr %i.bj, align 4, !alias.scope !1179
  %i.gh = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.fw, ptr %i.gh, align 1, !alias.scope !1179
  %i.gi = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.fs, ptr %i.gi, align 2, !alias.scope !1179
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.fo, ptr %i.gj, align 1, !alias.scope !1179
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv, %bb.bt, %bb.bs
  %.sroa.0.05.i = phi i64 [ 1, %bb.bs ], [ 2, %bb.bt ], [ 3, %bb.bv ], [ 4, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.gk = load i64, ptr %i.er, align 8, !noundef !4 ; 3 uses
  %i.gl = icmp ult i64 %i.gk, 384307168202282326
  tail call void @llvm.assume(i1 %i.gl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, i64 noundef %i.gk, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %bb.by unwind label %bb.b

bb.by:                                            ; preds = %bb.bx
  %i.gm = load i64, ptr %i.ag, align 8, !range !3, !noundef !4
  %i.gn = trunc nuw i64 %i.gm to i1
  %i.go = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !range !10, !noundef !4 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  br i1 %i.gn, label %bb.bz, label %bb.ca, !prof !11

bb.bz:                                            ; preds = %bb.by
  %i.gr = load i64, ptr %i.gq, align 8
  br label %.invoke

bb.ca:                                            ; preds = %bb.by
  %i.gs = load ptr, ptr %i.gq, align 8, !nonnull !4, !noundef !4
  %i.gt = icmp samesign ule i64 %i.gk, %i.gp
  tail call void @llvm.assume(i1 %i.gt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  store i64 %i.gp, ptr %i.bi, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  store ptr %i.gs, ptr %i.gu, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 3 uses
  store i64 0, ptr %i.gv, align 8
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.gy = load i64, ptr %5, align 8, !range !12, !noundef !4
  %i.gz = load i64, ptr %i.er, align 8, !noundef !4 ; 3 uses
  %i.ha = icmp ult i64 %i.gz, 384307168202282326
  tail call void @llvm.assume(i1 %i.ha)
  %.idx = mul nuw nsw i64 %i.gz, 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  store ptr %i.gx, ptr %i.bh, align 8
  %.sroa.024.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr %i.gx, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8
  %.sroa.024.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.gy, ptr %.sroa.024.sroa.3.0..sroa_idx, align 8
  %.sroa.024.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  store ptr %i.hb, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.hc = icmp eq i64 %i.gz, 0
  br i1 %i.hc, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph: ; preds = %bb.ca
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit
  %i.he = phi ptr [ %i.gx, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i.lr.ph ], [ %i.ic, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.hf, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8, !alias.scope !1182
  %.sroa.0.0.copyload1.i = load i64, ptr %i.he, align 8, !noalias !1183 ; 2 uses
  %.not.i163 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i163, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %bb.cc

.body171:                                         ; preds = %bb.cn, %bb.ch, %bb.cb, %bb.cq
  %.pn = phi { ptr, i32 } [ %i.ih, %bb.cq ], [ %i.hq, %bb.ch ], [ %i.hg, %bb.cb ], [ %i.hz, %bb.cn ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.cr

bb.cb:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body171

bb.cc:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false), !noalias !1180
  %i.hh = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1180, !noundef !4 ; 2 uses
  %i.hi = add i64 %i.hh, 1
  store i64 %i.hi, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  store i64 %.sroa.0.0.copyload1.i, ptr %i.bg, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %i.hj = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.hk = load i64, ptr %i.hd, align 8, !noundef !4
  %i.hl = invoke noundef zeroext i1 @_RNvXNtCsgQD0exT44A_8clap_lex3extNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB2_8OsStrExt8contains(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hj, i64 noundef %i.hk, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.0.05.i)
          to label %bb.ce unwind label %bb.cq

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bh)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167 unwind label %bb.cd

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %.body171, %bb.cd
  %.pn.pn = phi { ptr, i32 } [ %i.hm, %bb.cd ], [ %.pn, %.body171 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bi) #18
          to label %common.resume unwind label %bb.cr

bb.cd:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  br label %bb.ct

bb.ce:                                            ; preds = %bb.cc
  br i1 %i.hl, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %bb.cj, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.bg, i64 24, i1 false)
  %i.hn = load i64, ptr %i.gv, align 8, !alias.scope !1184, !noundef !4 ; 3 uses
  %i.ho = load i64, ptr %i.bi, align 8, !range !12, !alias.scope !1184, !noundef !4
  %i.hp = icmp eq i64 %i.hn, %i.ho
  br i1 %i.hp, label %bb.cg, label %bb.cp

bb.cg:                                            ; preds = %bb.cf
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.cp unwind label %bb.ch, !noalias !1185

bb.ch:                                            ; preds = %bb.cg
  %i.hq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf) #18
          to label %.body171 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cj:                                            ; preds = %bb.ce
  %i.hs = load ptr, ptr %i.fd, align 8, !nonnull !4, !align !15, !noundef !4
  %i.ht = getelementptr i8, ptr %i.hs, i64 764
  %i.hu = load <2 x i32>, ptr %i.ht, align 4
  %13 = and <2 x i32> %i.hu, splat (i32 64)
  %14 = icmp ne <2 x i32> %13, zeroinitializer    ; 2 uses
  %15 = extractelement <2 x i1> %14, i64 0
  %16 = extractelement <2 x i1> %14, i64 1
  %.sroa.0.0.i168 = select i1 %15, i1 true, i1 %16
  %i.hv = icmp eq i64 %.sroa.4.0, %i.hh
  %i.hw = and i1 %.sroa.0.0.i168, %i.fh
  %or.cond126 = select i1 %i.hw, i1 %i.hv, i1 false
  br i1 %or.cond126, label %bb.cf, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.hx = load ptr, ptr %.sroa.9.8..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.hy = load i64, ptr %i.hd, align 8, !noundef !4
  invoke void @_RNvXNtCsgQD0exT44A_8clap_lex3extNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrNtB2_8OsStrExt5split(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.hx, i64 noundef %i.hy, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %.sroa.0.05.i)
          to label %bb.cl unwind label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtCsgQD0exT44A_8clap_lex3ext5SplitNCNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB3b_6Parser5reacts_0EEB3f_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %.body171 unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i: ; preds = %bb.cm
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.cb

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECsdjW2DEjcQy2_12clap_builder.exit.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.ib = load ptr, ptr %.sroa.024.sroa.4.0..sroa_idx, align 8, !alias.scope !1186, !nonnull !4, !noundef !4
  %i.ic = load ptr, ptr %.sroa.024.sroa.2.0..sroa_idx, align 8, !alias.scope !1186, !nonnull !4, !noundef !4 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.ib
  br i1 %i.id, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCsdjW2DEjcQy2_12clap_builder.exit.i

bb.cp:                                            ; preds = %bb.cg, %bb.cf
  %i.ie = load ptr, ptr %i.gu, align 8, !alias.scope !1184, !nonnull !4, !noundef !4
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.if, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  %i.ig = add i64 %i.hn, 1
  store i64 %i.ig, ptr %i.gv, align 8, !alias.scope !1184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder.exit

bb.cq:                                            ; preds = %bb.cc, %bb.ck, %bb.cl
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bg) #18
          to label %.body171 unwind label %bb.cr

bb.cr:                                            ; preds = %.body171, %.thread, %bb.hr, %.thread255, %bb.gr, %bb.gq, %.thread229, %bb.fk, %bb.fj, %bb.dx, %bb.dw, %bb.cq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.cs:                                            ; preds = %bb.hd, %bb.fw, %bb.ep
  unreachable

bb.ct:                                            ; preds = %bb.bo, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit167
  %i.ij = getelementptr inbounds nuw i8, ptr %4, i64 668
  %i.ik = load i8, ptr %i.ij, align 4, !range !20, !alias.scope !1187, !noundef !4
  switch i8 %i.ik, label %default.unreachable305 [
    i8 0, label %bb.db
    i8 1, label %bb.ec
    i8 2, label %bb.cu
    i8 3, label %bb.cv
    i8 4, label %bb.cw
    i8 5, label %bb.cx
    i8 6, label %bb.cy
    i8 7, label %bb.cz
    i8 8, label %bb.da
    i8 -1, label %bb.db
  ]

default.unreachable305:                           ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.il = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.im = icmp ult i64 %i.il, 384307168202282326
  call void @llvm.assume(i1 %i.im)
  %i.in = icmp eq i64 %i.il, 0
  br i1 %i.in, label %bb.ek, label %bb.el

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.io = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.ip = icmp ult i64 %i.io, 384307168202282326
  call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp eq i64 %i.io, 0
  br i1 %i.iq, label %bb.fr, label %bb.fs

bb.cw:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.ir = load i64, ptr %i.er, align 8, !noundef !4 ; 2 uses
  %i.is = icmp ult i64 %i.ir, 384307168202282326
  call void @llvm.assume(i1 %i.is)
  %i.it = icmp eq i64 %i.ir, 0
  br i1 %i.it, label %bb.gx, label %bb.gw

bb.cx:                                            ; preds = %bb.ct
  %i.iu = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.iw, i1 noundef zeroext %i.iu)
          to label %.noexc175 unwind label %bb.b

.noexc175:                                        ; preds = %bb.cx
  %i.ix = load ptr, ptr %i.iv, align 8, !nonnull !4, !align !15, !noundef !4
  %i.iy = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ix, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.hs unwind label %bb.b

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ja, i1 noundef zeroext false)
          to label %.noexc177 unwind label %bb.b

.noexc177:                                        ; preds = %bb.cy
  %i.jb = load ptr, ptr %i.iz, align 8, !nonnull !4, !align !15, !noundef !4
  %i.jc = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.ht unwind label %bb.b

bb.cz:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.je, i1 noundef zeroext true)
          to label %.noexc180 unwind label %bb.b

.noexc180:                                        ; preds = %bb.cz
  %i.jf = load ptr, ptr %i.jd, align 8, !nonnull !4, !align !15, !noundef !4
  %i.jg = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error12display_helpB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.hu unwind label %bb.b

bb.da:                                            ; preds = %bb.ct
  %i.jh = icmp ne i8 %2, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command17write_version_err(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jj, i1 noundef zeroext %i.jh)
          to label %.noexc183 unwind label %bb.b

.noexc183:                                        ; preds = %bb.da
  %i.jk = load ptr, ptr %i.ji, align 8, !nonnull !4, !align !15, !noundef !4
  %i.jl = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error7for_appB4_(i8 noundef 14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jk, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.hv unwind label %bb.b

bb.db:                                            ; preds = %bb.ct, %bb.ct
  br i1 %.not291, label %switch.early.test, label %bb.dd

switch.early.test:                                ; preds = %bb.db
  switch i8 %2, label %bb.dc [
    i8 -1, label %bb.dd
    i8 2, label %bb.dd
  ]

bb.dc:                                            ; preds = %switch.early.test
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !noundef !4
  %i.jo = add i64 %i.jn, 1
  store i64 %i.jo, ptr %i.jm, align 8
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %switch.early.test, %switch.early.test
  %i.jp = invoke noundef zeroext i1 @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias noundef nonnull align 8 dereferenceable(128) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.de unwind label %bb.b

bb.de:                                            ; preds = %bb.dd
  br i1 %i.jp, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.di, %bb.dg, %bb.de
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.dy unwind label %bb.b

bb.dg:                                            ; preds = %bb.de
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !nonnull !4, !align !15, !noundef !4
  %i.js = getelementptr i8, ptr %i.jr, i64 764
  %i.jt = load <2 x i32>, ptr %i.js, align 4
  %17 = and <2 x i32> %i.jt, splat (i32 8)
  %18 = icmp ne <2 x i32> %17, zeroinitializer    ; 2 uses
  %19 = extractelement <2 x i1> %18, i64 0
  %20 = extractelement <2 x i1> %18, i64 1
  %.sroa.0.0.i185 = select i1 %19, i1 true, i1 %20
  br i1 %.sroa.0.0.i185, label %bb.df, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.jv = load ptr, ptr %i.ju, align 8, !nonnull !4, !noundef !4
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.jx = load i64, ptr %i.jw, align 8, !noundef !4
  %i.jy = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jv, i64 noundef %i.jx)
          to label %bb.di unwind label %bb.b

bb.di:                                            ; preds = %bb.dh
  br i1 %i.jy, label %bb.df, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jz = load ptr, ptr %i.jq, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.dk unwind label %bb.b

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.ka = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.dm unwind label %bb.dl     ; 3 uses

bb.dl:                                            ; preds = %bb.dk
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.kc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ka, i64 noundef 24, i64 noundef 8) #17
  br label %bb.dx

bb.do:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ka, ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  store i64 1, ptr %i.bb, align 8
  %i.kd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.ka, ptr %i.kd, align 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 1, ptr %i.ke, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  %i.kf = load ptr, ptr %i.jq, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.kf)
          to label %bb.dq unwind label %bb.dw

bb.dp:                                            ; preds = %bb.dr
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.dq:                                            ; preds = %bb.do
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.az, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.kg = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.jz, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bc, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.az)
          to label %bb.ds unwind label %bb.dp

bb.ds:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kg, ptr %i.kh, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.fq, %bb.ds, %bb.bl, %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit unwind label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.ki = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %common.resume unwind label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %.body, %.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit, %bb.hp, %bb.du
  %common.resume.op = phi { ptr, i32 } [ %i.og, %bb.hp ], [ %i.ki, %bb.du ], [ %.pn120205, %.thread ], [ %.pn120, %.body ], [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEEECsdjW2DEjcQy2_12clap_builder.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %bb.dt
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
  br label %bb.ej

bb.dw:                                            ; preds = %bb.dq, %bb.do
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.bb) #18
          to label %bb.dx unwind label %bb.cr

bb.dx:                                            ; preds = %bb.dw, %bb.dn, %bb.dl
  %.pn118.ph = phi { ptr, i32 } [ %i.kb, %bb.dl ], [ %i.kc, %bb.dn ], [ %lpad.thr_comm, %bb.dw ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc) #18
          to label %.thread unwind label %bb.cr

bb.dy:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.kk = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ax, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.dz unwind label %bb.b      ; 2 uses

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %.not122 = icmp eq ptr %i.kk, null
  br i1 %.not122, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kk, ptr %i.kl, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ej

bb.eb:                                            ; preds = %bb.dz
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ej

bb.ec:                                            ; preds = %bb.ct
  br i1 %.not291, label %switch.early.test133, label %bb.ed

switch.early.test133:                             ; preds = %bb.ec
  switch i8 %2, label %bb.ee [
    i8 -1, label %bb.ed
    i8 2, label %bb.ed
  ]

bb.ed:                                            ; preds = %switch.early.test133, %switch.early.test133, %bb.ec, %bb.ee
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.ef unwind label %bb.b

bb.ee:                                            ; preds = %switch.early.test133
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !noundef !4
  %i.ko = add i64 %i.kn, 1
  store i64 %i.ko, ptr %i.km, align 8
  br label %bb.ed

bb.ef:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.kp = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.aw, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.eg unwind label %bb.b      ; 2 uses

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %.not116 = icmp eq ptr %i.kp, null
  br i1 %.not116, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kp, ptr %i.kq, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ej

bb.ei:                                            ; preds = %bb.eg
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ea, %bb.eh, %bb.eb, %bb.ei, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit189, %bb.fq, %bb.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder.exit
  ret void

bb.ek:                                            ; preds = %bb.cu
  %i.kr = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.em unwind label %bb.b      ; 5 uses

bb.el:                                            ; preds = %bb.cu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.es

bb.em:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.eo unwind label %bb.en

bb.en:                                            ; preds = %bb.ep, %bb.em
  %i.ks = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kr, i64 noundef 24, i64 noundef 8) #17
  br label %.thread

bb.eo:                                            ; preds = %bb.em
  %i.kt = load i64, ptr %i.af, align 8, !range !3, !noundef !4
  %i.ku = trunc nuw i64 %i.kt to i1
  %i.kv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.kw = load i64, ptr %i.kv, align 8, !range !10, !noundef !4 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  br i1 %i.ku, label %bb.ep, label %bb.eq, !prof !11

bb.ep:                                            ; preds = %bb.eo
  %i.ky = load i64, ptr %i.kx, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.kw, i64 %i.ky) #20
          to label %bb.cs unwind label %bb.en

bb.eq:                                            ; preds = %bb.eo
  %i.kz = load ptr, ptr %i.kx, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.la = icmp samesign ugt i64 %i.kw, 3
  call void @llvm.assume(i1 %i.la)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i32 1702195828, ptr %i.kz, align 1
  store i64 %i.kw, ptr %i.kr, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.kz, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store i64 4, ptr %.sroa.573.0..sroa_idx, align 8
  store i64 1, ptr %i.av, align 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.kr, ptr %i.lb, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 1, ptr %i.lc, align 8
  br label %bb.es

bb.er:                                            ; preds = %bb.fl
  %lpad.thr_comm.split-lp236 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.es:                                            ; preds = %bb.el, %bb.eq
  %.sroa.053.4 = phi i8 [ 1, %bb.eq ], [ 0, %bb.el ] ; 5 uses
  %i.ld = invoke noundef zeroext i1 @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias noundef nonnull align 8 dereferenceable(128) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.et unwind label %bb.fe

bb.et:                                            ; preds = %bb.es
  br i1 %i.ld, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.ex, %bb.ev, %bb.et
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.fl unwind label %bb.fe

bb.ev:                                            ; preds = %bb.et
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.lf = load ptr, ptr %i.le, align 8, !nonnull !4, !align !15, !noundef !4
  %i.lg = getelementptr i8, ptr %i.lf, i64 764
  %i.lh = load <2 x i32>, ptr %i.lg, align 4
  %21 = and <2 x i32> %i.lh, splat (i32 8)
  %22 = icmp ne <2 x i32> %21, zeroinitializer    ; 2 uses
  %23 = extractelement <2 x i1> %22, i64 0
  %24 = extractelement <2 x i1> %22, i64 1
  %.sroa.0.0.i186 = select i1 %23, i1 true, i1 %24
  br i1 %.sroa.0.0.i186, label %bb.eu, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.li = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.lj = load ptr, ptr %i.li, align 8, !nonnull !4, !noundef !4
  %i.lk = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.ll = load i64, ptr %i.lk, align 8, !noundef !4
  %i.lm = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.lj, i64 noundef %i.ll)
          to label %bb.ex unwind label %bb.fe

bb.ex:                                            ; preds = %bb.ew
  br i1 %i.lm, label %bb.eu, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.ln = load ptr, ptr %i.le, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.ez unwind label %bb.fe

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.lo = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.fb unwind label %bb.fa     ; 3 uses

bb.fa:                                            ; preds = %bb.ez
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fb:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.fd unwind label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.lq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lo, i64 noundef 24, i64 noundef 8) #17
  br label %bb.fk

bb.fd:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 1, ptr %i.at, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.lo, ptr %i.lr, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 1, ptr %i.ls, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.lt = load ptr, ptr %i.le, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.lt)
          to label %bb.ff unwind label %bb.fj

bb.fe:                                            ; preds = %bb.es, %bb.ew, %bb.ey, %bb.eu, %bb.fg
  %lpad.thr_comm.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.thread229

bb.ff:                                            ; preds = %bb.fd
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.fg unwind label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  %i.lu = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.ln, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.fh unwind label %bb.fe

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lu, ptr %i.lv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.av)
          to label %bb.fi unwind label %bb.b

bb.fi:                                            ; preds = %bb.fn, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.fq

bb.fj:                                            ; preds = %bb.ff, %bb.fd
  %lpad.thr_comm248 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.at) #18
          to label %bb.fk unwind label %bb.cr

bb.fk:                                            ; preds = %bb.fj, %bb.fc, %bb.fa
  %.pn110.ph = phi { ptr, i32 } [ %i.lp, %bb.fa ], [ %i.lq, %bb.fc ], [ %lpad.thr_comm248, %bb.fj ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au) #18
          to label %.thread229 unwind label %bb.cr

bb.fl:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  %i.lw = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ap, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.fm unwind label %bb.er     ; 2 uses

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not114 = icmp eq ptr %i.lw, null
  br i1 %.not114, label %bb.fo, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.lw, ptr %i.lx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.fi

bb.fo:                                            ; preds = %bb.fm
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.hn, %bb.gv, %bb.fo
  %.sroa.053.5 = phi i8 [ %.sroa.053.4, %bb.fo ], [ %.sroa.053.7, %bb.gv ], [ %.sroa.053.8, %bb.hn ]
  %i.ly = trunc nuw i8 %.sroa.053.5 to i1
  br i1 %i.ly, label %bb.ho, label %bb.ej

bb.fq:                                            ; preds = %bb.hm, %bb.gp, %bb.fi
  %.sroa.053.6 = phi i8 [ %.sroa.053.4, %bb.fi ], [ %.sroa.053.7, %bb.gp ], [ %.sroa.053.8, %bb.hm ]
  %i.lz = trunc nuw i8 %.sroa.053.6 to i1
  br i1 %i.lz, label %bb.dt, label %bb.ej

.thread229:                                       ; preds = %bb.fe, %bb.fk
  %.pn112232 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp249, %bb.fe ], [ %.pn110.ph, %bb.fk ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.av) #18
          to label %.body unwind label %bb.cr

bb.fr:                                            ; preds = %bb.cv
  %i.ma = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.ft unwind label %bb.b      ; 5 uses

bb.fs:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.fz

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef 5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fv unwind label %bb.fu

bb.fu:                                            ; preds = %bb.fw, %bb.ft
  %i.mb = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ma, i64 noundef 24, i64 noundef 8) #17
  br label %.thread

bb.fv:                                            ; preds = %bb.ft
  %i.mc = load i64, ptr %i.ae, align 8, !range !3, !noundef !4
  %i.md = trunc nuw i64 %i.mc to i1
  %i.me = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.mf = load i64, ptr %i.me, align 8, !range !10, !noundef !4 ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  br i1 %i.md, label %bb.fw, label %bb.fx, !prof !11

bb.fw:                                            ; preds = %bb.fv
  %i.mh = load i64, ptr %i.mg, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.mf, i64 %i.mh) #20
          to label %bb.cs unwind label %bb.fu

bb.fx:                                            ; preds = %bb.fv
  %i.mi = load ptr, ptr %i.mg, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.mj = icmp samesign ugt i64 %i.mf, 4
  call void @llvm.assume(i1 %i.mj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.mi, ptr noundef nonnull align 1 dereferenceable(5) @27, i64 5, i1 false)
  store i64 %i.mf, ptr %i.ma, align 8
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.mi, ptr %.sroa.481.0..sroa_idx, align 8
  %.sroa.582.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store i64 5, ptr %.sroa.582.0..sroa_idx, align 8
  store i64 1, ptr %i.ao, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.ma, ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i64 1, ptr %i.ml, align 8
  br label %bb.fz

bb.fy:                                            ; preds = %bb.gs
  %lpad.thr_comm.split-lp262 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.fz:                                            ; preds = %bb.fs, %bb.fx
  %.sroa.053.7 = phi i8 [ 1, %bb.fx ], [ 0, %bb.fs ] ; 5 uses
  %i.mm = invoke noundef zeroext i1 @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher6remove(ptr noalias noundef nonnull align 8 dereferenceable(128) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4)
          to label %bb.ga unwind label %bb.gl

bb.ga:                                            ; preds = %bb.fz
  br i1 %i.mm, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ge, %bb.gc, %bb.ga
  invoke fastcc void @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser16start_custom_arg(ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(128) %8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, i8 noundef %3)
          to label %bb.gs unwind label %bb.gl

bb.gc:                                            ; preds = %bb.ga
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.mo = load ptr, ptr %i.mn, align 8, !nonnull !4, !align !15, !noundef !4
  %i.mp = getelementptr i8, ptr %i.mo, i64 764
  %i.mq = load <2 x i32>, ptr %i.mp, align 4
  %25 = and <2 x i32> %i.mq, splat (i32 8)
  %26 = icmp ne <2 x i32> %25, zeroinitializer    ; 2 uses
  %27 = extractelement <2 x i1> %26, i64 0
  %28 = extractelement <2 x i1> %26, i64 1
  %.sroa.0.0.i187 = select i1 %27, i1 true, i1 %28
  br i1 %.sroa.0.0.i187, label %bb.gb, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.mr = getelementptr inbounds nuw i8, ptr %4, i64 256
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !4, !noundef !4
  %i.mt = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.mu = load i64, ptr %i.mt, align 8, !noundef !4
  %i.mv = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ms, i64 noundef %i.mu)
          to label %bb.ge unwind label %bb.gl

bb.ge:                                            ; preds = %bb.gd
  br i1 %i.mv, label %bb.gb, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.mw = load ptr, ptr %i.mn, align 8, !nonnull !4, !align !15, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.gg unwind label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.mx = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.gi unwind label %bb.gh     ; 3 uses

bb.gh:                                            ; preds = %bb.gg
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.gr

bb.gi:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke fastcc void @_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringBD_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.al, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4)
          to label %bb.gk unwind label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mx, i64 noundef 24, i64 noundef 8) #17
  br label %bb.gr

bb.gk:                                            ; preds = %bb.gi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mx, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  store i64 1, ptr %i.am, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.mx, ptr %i.na, align 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 1, ptr %i.nb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  %i.nc = load ptr, ptr %i.mn, align 8, !nonnull !4, !align !15, !noundef !4
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.nc)
          to label %bb.gm unwind label %bb.gq

bb.gl:                                            ; preds = %bb.fz, %bb.gd, %bb.gf, %bb.gb, %bb.gn
  %lpad.thr_comm.split-lp275 = landingpad { ptr, i32 }
          cleanup
  br label %.thread255

bb.gm:                                            ; preds = %bb.gk
  invoke void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
          to label %bb.gn unwind label %bb.gq

bb.gn:                                            ; preds = %bb.gm
  %i.nd = invoke noundef nonnull align 8 ptr @_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error17argument_conflictB4_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %i.mw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ak)
          to label %bb.go unwind label %bb.gl

bb.go:                                            ; preds = %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nd, ptr %i.ne, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ao)
          to label %bb.gp unwind label %bb.b

bb.gp:                                            ; preds = %bb.gu, %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.fq

bb.gq:                                            ; preds = %bb.gm, %bb.gk
  %lpad.thr_comm274 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.am) #18
          to label %bb.gr unwind label %bb.cr

bb.gr:                                            ; preds = %bb.gq, %bb.gj, %bb.gh
  %.pn105.ph = phi { ptr, i32 } [ %i.my, %bb.gh ], [ %i.mz, %bb.gj ], [ %lpad.thr_comm274, %bb.gq ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an) #18
          to label %.thread255 unwind label %bb.cr

bb.gs:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.nf = invoke fastcc noundef align 8 ptr @_RNvMs_NtNtCsdjW2DEjcQy2_12clap_builder6parser6parserNtB4_6Parser15push_arg_values(ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %4, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.ai, i8 noundef %3, ptr noalias noundef align 8 dereferenceable(128) %8)
          to label %bb.gt unwind label %bb.fy     ; 2 uses

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not109 = icmp eq ptr %i.nf, null
  br i1 %.not109, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nf, ptr %i.ng, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.gp

bb.gv:                                            ; preds = %bb.gt
  store i64 -9223372036854775806, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.fp

.thread255:                                       ; preds = %bb.gl, %bb.gr
  %.pn107258 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp275, %bb.gl ], [ %.pn105.ph, %bb.gr ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECsdjW2DEjcQy2_12clap_builder(ptr noalias noundef align 8 dereferenceable(24) %i.ao) #18
          to label %.body unwind label %bb.cr

bb.gw:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.hi

bb.gx:                                            ; preds = %bb.cw
  %i.nh = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ni = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val153 = load ptr, ptr %i.ni, align 8, !nonnull !4, !noundef !4
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val154 = load i64, ptr %i.nj, align 8, !noundef !4
  %i.nk = invoke noundef ptr @_RINvMNtNtNtCsdjW2DEjcQy2_12clap_builder6parser7matches11arg_matchesNtB3_10ArgMatches7get_onehEB9_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.nh, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val153, i64 noundef %.val154)
          to label %bb.gy unwind label %bb.b      ; 2 uses

bb.gy:                                            ; preds = %bb.gx
  %.not102 = icmp eq ptr %i.nk, null
  %. = select i1 %.not102, ptr @4, ptr %i.nk
  %i.nl = load i8, ptr %., align 1, !noundef !4
  %i.nm = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 24)
          to label %bb.gz unwind label %bb.b      ; 5 uses

bb.gz:                                            ; preds = %bb.gy
  %i.nn = call i8 @llvm.uadd.sat.i8(i8 %i.nl, i8 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.no = invoke { ptr, i64 } @_RNvMs0_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3imph4__fmt(i8 noundef %i.nn, ptr noalias noundef nonnull %i.ad, i64 noundef 3)
          to label %bb.hb unwind label %bb.ha     ; 2 uses

bb.ha:                                            ; preds = %bb.hd, %bb.hb, %bb.gz
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nm, i64 noundef 24, i64 noundef 8) #17
  br label %.thread

bb.hb:                                            ; preds = %bb.gz
  %i.nq = extractvalue { ptr, i64 } %i.no, 0
  %i.nr = extractvalue { ptr, i64 } %i.no, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdjW2DEjcQy2_12clap_builder(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef %i.nr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.hc unwind label %bb.ha

bb.hc:                                            ; preds = %bb.hb
  %i.ns = load i64, ptr %i.ac, align 8, !range !3, !noundef !4
  %i.nt = trunc nuw i64 %i.ns to i1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !range !10, !noundef !4 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  br i1 %i.nt, label %bb.hd, label %bb.he, !prof !11

bb.hd:                                            ; preds = %bb.hc
  %i.nx = load i64, ptr %i.nw, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.nv, i64 %i.nx) #20
          to label %bb.cs unwind label %bb.ha

bb.he:                                            ; preds = %bb.hc
  %i.ny = load ptr, ptr %i.nw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.nz = icmp ule i64 %i.nr, %i.nv
  call void @llvm.assume(i1 %i.nz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not103 = icmp eq i64 %i.nr, 0
  br i1 %.not103, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.hg, %bb.he
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.nv, ptr %i.nm, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  store ptr %i.ny, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store i64 %i.nr, ptr %.sroa.591.0..sroa_idx, align 8
  store i64 1, ptr %i.ah, align 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.nm, ptr %i.oa, align 8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i64 1, ptr %i.ob, align 8
  br label %bb.hi

bb.hg:                                            ; preds = %bb.he
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ny, ptr align 1 %i.nq, i64 %i.nr, i1 false)
  br label %bb.hf

bb.hh:                                            ; preds = %bb.hk
  %lpad.thr_comm.split-lp283 = landingpad { ptr, i32 }
          cleanup
end_hunk_4
