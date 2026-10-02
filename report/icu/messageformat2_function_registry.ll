Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/messageformat2_function_registry?download=true
inline.NumInlined: 774
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK6icu_788message217StandardFunctions8DateTime6formatEONS0_20FormattedPlaceholderEONS0_15FunctionOptionsER10UErrorCode:bb.a
  %27 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %28 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %29 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %30 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %31 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %32 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %33 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %34 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %35 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %36 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %37 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %38 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %39 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %40 = alloca %"struct.icu_78::message2::DateInfo", align 8 ; 11 uses
  %41 = alloca %"class.icu_78::message2::FormattedPlaceholder", align 8 ; 6 uses
  %42 = alloca %"class.icu_78::message2::Formattable", align 8 ; 12 uses
  %43 = alloca %"class.icu_78::message2::FormattedValue", align 8 ; 7 uses
  %i.a = load i32, ptr %4, align 4, !tbaa !20
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.c, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.g, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.i, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.k, align 8, !tbaa !100
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.o, align 8, !tbaa !101
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 27, ptr %i.p, align 8, !tbaa !102
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.q, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.r, align 8, !tbaa !42
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.s, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i32 1, ptr %i.t, align 8, !tbaa !112
  br label %_ZN6icu_7812LocalPointerINS_10DateFormatEED2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.v = load i32, ptr %i.u, align 8, !tbaa !112
  %spec.select.i = icmp ugt i32 %i.v, 1
  br i1 %spec.select.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 65822, ptr %4, align 4, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message220FormattedPlaceholderE, i64 16), ptr %0, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %i.y, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double 0.000000e+00, ptr %i.z, align 8, !tbaa !46
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.aa, align 8, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ab, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.ac, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message214FormattedValueE, i64 16), ptr %i.ad, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 0, ptr %i.ae, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.af, align 8, !tbaa !28
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i16 2, ptr %i.ag, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6icu_786number15FormattedNumberE, i64 16), ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.ai, align 8, !tbaa !101
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i32 27, ptr %i.aj, align 8, !tbaa !102
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message215FunctionOptionsE, i64 16), ptr %i.ak, align 8, !tbaa !28
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.al, align 8, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr null, ptr %i.am, align 8, !tbaa !43
  %i.an = tail call noundef nonnull align 8 dereferenceable(396) ptr @_ZN6icu_788message220FormattedPlaceholderaSEOS1_(ptr noundef nonnull align 8 dereferenceable(396) %0, ptr noundef nonnull align 8 dereferenceable(396) %2) #18 ; 0 uses
  br label %_ZN6icu_7812LocalPointerINS_10DateFormatEED2Ev.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_788message211FormattableE, i64 16), ptr %5, align 8, !tbaa !28
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 0.000000e+00, ptr %i.ao, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 120
  store i8 0, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 128
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.aq, align 8, !tbaa !28
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 136
  store i16 2, ptr %i.ar, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull @.str.16)
          to label %bb.f unwind label %.thread404

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull @.str.17)
          to label %bb.g unwind label %bb.af

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  invoke void @_ZN6icu_7813UnicodeStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull @.str.18)
          to label %bb.h unwind label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !33 ; 4 uses
  %i.au = and i16 %i.at, 17
  %.not.i.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.i, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = and i16 %i.at, 2
  %.not2.i.i = icmp eq i16 %i.av, 0
  br i1 %.not2.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.0.i.i = phi ptr [ %i.ay, %bb.k ], [ %i.aw, %bb.j ], [ null, %bb.h ]
  %i.az = icmp slt i16 %i.at, 0
  %i.ba = ashr i16 %i.at, 5
  %i.bb = sext i16 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = select i1 %i.az, i32 %i.bd, i32 %i.bb
  %i.bf = sext i32 %i.be to i64
  %i.bg = invoke noundef signext i8 @_ZNK6icu_788message215FunctionOptions17getFunctionOptionESt17basic_string_viewIDsSt11char_traitsIDsEERNS0_11FormattableE(ptr noundef nonnull align 8 dereferenceable(20) %3, i64 %i.bf, ptr %.0.i.i, ptr noundef nonnull align 8 dereferenceable(192) %5)
          to label %bb.m unwind label %bb.ah      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.bh = icmp ne i8 %i.bg, 0                     ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 8, !tbaa !33 ; 4 uses
  %i.bk = and i16 %i.bj, 17
  %.not.i.i274 = icmp eq i16 %i.bk, 0
  br i1 %.not.i.i274, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = and i16 %i.bj, 2
  %.not2.i.i278 = icmp eq i16 %i.bl, 0
  br i1 %.not2.i.i278, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = getelementptr inbounds nuw i8, ptr %7, i64 10
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !33
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m
  %.0.i.i275 = phi ptr [ %i.bo, %bb.p ], [ %i.bm, %bb.o ], [ null, %bb.m ]
  %i.bp = icmp slt i16 %i.bj, 0
  %i.bq = ashr i16 %i.bj, 5
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = select i1 %i.bp, i32 %i.bt, i32 %i.br
  %i.bv = sext i32 %i.bu to i64
  %i.bw = invoke noundef signext i8 @_ZNK6icu_788message215FunctionOptions17getFunctionOptionESt17basic_string_viewIDsSt11char_traitsIDsEERNS0_11FormattableE(ptr noundef nonnull align 8 dereferenceable(20) %3, i64 %i.bv, ptr %.0.i.i275, ptr noundef nonnull align 8 dereferenceable(192) %5)
          to label %bb.r unwind label %bb.ai      ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !130
  switch i32 %i.by, label %.thread382 [
    i32 2, label %bb.s
    i32 0, label %bb.ao
  ]

bb.s:                                             ; preds = %bb.r
  %44 = icmp eq i8 %i.bw, 0                       ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !42
  %i.cb = icmp eq i32 %i.ca, 0
  %i.cc = or i8 %i.bw, %i.bg
  %or.cond = icmp ne i8 %i.cc, 0
  %or.cond3 = or i1 %or.cond, %i.cb
  br i1 %or.cond3, label %.thread385, label %.thread379

.thread385:                                       ; preds = %bb.s
  %i.cd = load i16, ptr %i.as, align 8, !tbaa !33 ; 4 uses
  %i.ce = and i16 %i.cd, 17
  %.not.i.i280 = icmp eq i16 %i.ce, 0
  br i1 %.not.i.i280, label %bb.t, label %bb.w

bb.t:                                             ; preds = %.thread385
  %i.cf = and i16 %i.cd, 2
  %.not2.i.i284 = icmp eq i16 %i.cf, 0
  br i1 %.not2.i.i284, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 10
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %.thread385
  %.0.i.i281 = phi ptr [ %i.ci, %bb.v ], [ %i.cg, %bb.u ], [ null, %.thread385 ]
  %i.cj = icmp slt i16 %i.cd, 0
  %i.ck = ashr i16 %i.cd, 5
  %i.cl = sext i16 %i.ck to i32
  %i.cm = load i32, ptr %i.bc, align 4
  %i.cn = select i1 %i.cj, i32 %i.cm, i32 %i.cl
  %i.co = sext i32 %i.cn to i64
  invoke void @_ZNK6icu_788message217StandardFunctions8DateTime17getFunctionOptionERKNS0_20FormattedPlaceholderERKNS0_15FunctionOptionsESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(396) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 %i.co, ptr %.0.i.i281)
          to label %bb.x unwind label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.cp = invoke fastcc noundef i32 @_ZN6icu_788message2L13stringToStyleENS_13UnicodeStringER10UErrorCode(ptr noundef align 8 %9, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.y unwind label %bb.ak      ; 2 uses

bb.y:                                             ; preds = %bb.x
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  %i.cq = load i16, ptr %i.bi, align 8, !tbaa !33 ; 4 uses
  %i.cr = and i16 %i.cq, 17
  %.not.i.i286 = icmp eq i16 %i.cr, 0
  br i1 %.not.i.i286, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.cs = and i16 %i.cq, 2
  %.not2.i.i290 = icmp eq i16 %i.cs, 0
  br i1 %.not2.i.i290, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %7, i64 10
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.y
  %.0.i.i287 = phi ptr [ %i.cv, %bb.ab ], [ %i.ct, %bb.aa ], [ null, %bb.y ]
  %i.cw = icmp slt i16 %i.cq, 0
  %i.cx = ashr i16 %i.cq, 5
  %i.cy = sext i16 %i.cx to i32
  %i.cz = load i32, ptr %i.bs, align 4
  %i.da = select i1 %i.cw, i32 %i.cz, i32 %i.cy
  %i.db = sext i32 %i.da to i64
  invoke void @_ZNK6icu_788message217StandardFunctions8DateTime17getFunctionOptionERKNS0_20FormattedPlaceholderERKNS0_15FunctionOptionsESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(396) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 %i.db, ptr %.0.i.i287)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dc = invoke fastcc noundef i32 @_ZN6icu_788message2L13stringToStyleENS_13UnicodeStringER10UErrorCode(ptr noundef align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ae unwind label %bb.al     ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #18
  %or.cond5.not = and i1 %44, %i.bh
  br i1 %or.cond5.not, label %.invoke408, label %bb.am

.thread404:                                       ; preds = %bb.e
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @_ZN6icu_788message211FormattableD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN6icu_7812LocalPointerINS_10DateFormatEED2Ev.exit364

bb.af:                                            ; preds = %bb.f
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.ag:                                            ; preds = %bb.g
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.jq

bb.ah:                                            ; preds = %bb.l
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.ai:                                            ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.aj:                                            ; preds = %.invoke408, %.invoke, %bb.az, %bb.as, %bb.an, %bb.ac, %bb.w
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.ak:                                            ; preds = %bb.x
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #18
  br label %bb.jp

bb.al:                                            ; preds = %bb.ad
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #18
  br label %bb.jp

bb.am:                                            ; preds = %bb.ae
  %or.cond8 = or i1 %i.bh, %44
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !185, !nonnull !83, !align !85 ; 2 uses
  br i1 %or.cond8, label %bb.an, label %.invoke

bb.an:                                            ; preds = %bb.am
  %i.dn = invoke noundef ptr @_ZN6icu_7810DateFormat22createDateTimeInstanceENS0_6EStyleES1_RKNS_6LocaleE(i32 noundef %i.cp, i32 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(40) %i.dm)
          to label %_ZN6icu_7812LocalPointerINS_10DateFormatEE12adoptInsteadEPS1_.exit unwind label %bb.aj

bb.ao:                                            ; preds = %bb.r
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dp = load i16, ptr %i.do, align 8, !tbaa !33 ; 4 uses
  %i.dq = and i16 %i.dp, 17
  %.not.i.i294 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.i294, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dr = and i16 %i.dp, 2
  %.not2.i.i298 = icmp eq i16 %i.dr, 0
  br i1 %.not2.i.i298, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 10
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !33
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %.0.i.i295 = phi ptr [ %i.du, %bb.ar ], [ %i.ds, %bb.aq ], [ null, %bb.ao ]
  %i.dv = icmp slt i16 %i.dp, 0
  %i.dw = ashr i16 %i.dp, 5
  %i.dx = sext i16 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = select i1 %i.dv, i32 %i.dz, i32 %i.dx
  %i.eb = sext i32 %i.ea to i64
  invoke void @_ZNK6icu_788message217StandardFunctions8DateTime17getFunctionOptionERKNS0_20FormattedPlaceholderERKNS0_15FunctionOptionsESt17basic_string_viewIDsSt11char_traitsIDsEE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(396) %2, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 %i.eb, ptr %.0.i.i295)
          to label %bb.at unwind label %bb.aj

bb.at:                                            ; preds = %bb.as
  %i.ec = invoke fastcc noundef i32 @_ZN6icu_788message2L13stringToStyleENS_13UnicodeStringER10UErrorCode(ptr noundef align 8 %11, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #18
  br label %.invoke408

.invoke408:                                       ; preds = %bb.ae, %bb.au
  %i.ed = phi i32 [ %i.ec, %bb.au ], [ %i.cp, %bb.ae ]
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !185, !nonnull !83, !align !85
  %i.eg = invoke noundef ptr @_ZN6icu_7810DateFormat18createDateInstanceENS0_6EStyleERKNS_6LocaleE(i32 noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(40) %i.ef)
          to label %_ZN6icu_7812LocalPointerINS_10DateFormatEE12adoptInsteadEPS1_.exit unwind label %bb.aj

bb.av:                                            ; preds = %bb.at
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #18
  br label %bb.jp

.thread382:                                       ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ej = load i16, ptr %i.ei, align 8, !tbaa !33 ; 4 uses
  %i.ek = and i16 %i.ej, 17
  %.not.i.i301 = icmp eq i16 %i.ek, 0
  br i1 %.not.i.i301, label %bb.aw, label %bb.az

end_hunk_0
