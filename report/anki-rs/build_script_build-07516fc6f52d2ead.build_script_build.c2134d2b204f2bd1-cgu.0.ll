Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/build_script_build-07516fc6f52d2ead.build_script_build.c2134d2b204f2bd1-cgu.0?download=true
inline.NumInlined: 82
inline.NumDeleted: 60
begin_hunk_0_@_ZN18build_script_build30generate_prefix_symbols_header17hacec6bc5ca019215E:bb.a
bb.bx:                                            ; preds = %bb.b
  resume { ptr, i32 } %.pn29
}

; Function Attrs: nonlazybind uwtable
define internal fastcc ptr @_ZN18build_script_build31generate_prefix_symbols_headers17h148b819d7e818265E(ptr align 1 %0, i64 %1, ptr align 1 %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !29 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h05caafe9a7954595E"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 1 %2, i64 %3)
  call void @"_ZN78_$LT$alloc..string..String$u20$as$u20$core..ops..arith..Add$LT$$RF$str$GT$$GT$3add17h631aee025f1faf18E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a, ptr nonnull align 1 @356, i64 1)
  %i.c = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.b)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %.invoke, %bb.l, %bb.k, %bb.j, %bb.h, %bb.g, %bb.f, %bb.d, %bb.c, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.b) #18
          to label %bb.p unwind label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 0
  %i.f = extractvalue { ptr, i64 } %i.c, 1
  %i.g = invoke fastcc ptr @_ZN18build_script_build30generate_prefix_symbols_header17hacec6bc5ca019215E(ptr align 1 %0, i64 %1, ptr nonnull align 1 @376, i64 16, i32 35, ptr align 1 null, i64 undef, ptr align 1 %i.e, i64 %i.f)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.h = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.g)
          to label %bb.e unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %.invoke

bb.f:                                             ; preds = %bb.e
  %i.i = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.b       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %i.l = invoke fastcc ptr @_ZN18build_script_build30generate_prefix_symbols_header17hacec6bc5ca019215E(ptr align 1 %0, i64 %1, ptr nonnull align 1 @377, i64 20, i32 35, ptr nonnull align 1 @378, i64 22, ptr align 1 %i.j, i64 %i.k)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.m = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.l)
          to label %bb.i unwind label %bb.b       ; 2 uses

bb.i:                                             ; preds = %bb.h
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i
  %i.n = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.b)
          to label %bb.k unwind label %bb.b       ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.o = extractvalue { ptr, i64 } %i.n, 0
  %i.p = extractvalue { ptr, i64 } %i.n, 1
  %i.q = invoke fastcc ptr @_ZN18build_script_build30generate_prefix_symbols_header17hacec6bc5ca019215E(ptr align 1 %0, i64 %1, ptr nonnull align 1 @379, i64 23, i32 37, ptr nonnull align 1 @380, i64 30, ptr align 1 %i.o, i64 %i.p)
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.r = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.q)
          to label %bb.m unwind label %bb.b       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not9 = icmp eq ptr %i.r, null
  br i1 %.not9, label %bb.n, label %.invoke

.invoke:                                          ; preds = %bb.m, %bb.i, %bb.e
  %i.s = phi ptr [ %i.m, %bb.i ], [ %i.h, %bb.e ], [ %i.r, %bb.m ]
  %i.t = phi ptr [ @382, %bb.i ], [ @383, %bb.e ], [ @381, %bb.m ]
  %i.u = invoke ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6b196f078a559994E"(ptr nonnull %i.s, ptr nonnull align 8 %i.t)
          to label %bb.n unwind label %bb.b

bb.n:                                             ; preds = %bb.m, %.invoke
  %.sroa.0.0 = phi ptr [ %i.u, %.invoke ], [ null, %bb.m ]
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.b)
  ret ptr %.sroa.0.0

bb.o:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.p:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN18build_script_build36join_components_with_forward_slashes17habc9dc2c874eba2aE(ptr noalias nonnull align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !30 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  call void @_ZN3std4path4Path10components17h7a18f4a611d5e6edE(ptr nonnull sret([64 x i8]) align 8 %i.a, ptr align 1 %1, i64 %2)
  call void @_ZN4core4iter6traits8iterator8Iterator3map17he97c2898d52f114eE(ptr nonnull sret([64 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17h15b035d806ea1f40E(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8
  %i.f = invoke { ptr, i64 } @_ZN3std3ffi6os_str5OsStr3new17he7d110abb8db68e5E(ptr nonnull align 1 @385, i64 1)
          to label %bb.c unwind label %bb.b       ; 2 uses

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$GT$17h4ae25fddd20a89a4E"(ptr nonnull align 8 %i.c) #18
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 0
  %i.i = extractvalue { ptr, i64 } %i.f, 1
  invoke void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4join17ha16c424a02ece225E"(ptr nonnull sret([24 x i8]) align 8 %0, ptr align 8 %.val, i64 %.val1, ptr align 1 %i.h, i64 %i.i)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @"_ZN4core3ptr71drop_in_place$LT$alloc..vec..Vec$LT$$RF$std..ffi..os_str..OsStr$GT$$GT$17h4ae25fddd20a89a4E"(ptr nonnull align 8 %i.c)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @"_ZN18build_script_build36join_components_with_forward_slashes28_$u7b$$u7b$closure$u7d$$u7d$17hc2bc925a4900507fE"(ptr nofree readnone align 1 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 !guid !31 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.b = call { ptr, i64 } @_ZN3std4path9Component9as_os_str17he757bf4dec81699fE(ptr nonnull align 8 %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN18build_script_build4main17h40c6627e39b960c1E() unnamed_addr #1 personality ptr @rust_eh_personality !guid !60 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [56 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [128 x i8], align 8              ; 19 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [40 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 4 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [24 x i8], align 8               ; 5 uses
  %i.aw = alloca [32 x i8], align 8               ; 9 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 8 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 7 uses
  %i.bc = alloca [16 x i8], align 8               ; 5 uses
  %i.bd = alloca [80 x i8], align 8               ; 13 uses
  %i.be = alloca [24 x i8], align 8               ; 5 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [176 x i8], align 8              ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 5 uses
  %i.bj = alloca [24 x i8], align 8               ; 6 uses
  %i.bk = alloca [24 x i8], align 8               ; 5 uses
  %i.bl = alloca [24 x i8], align 8               ; 5 uses
  %i.bm = alloca [24 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [24 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 5 uses
  %i.bq = alloca [24 x i8], align 8               ; 8 uses
  %i.br = alloca [24 x i8], align 8               ; 5 uses
  %i.bs = alloca [24 x i8], align 8               ; 4 uses
  %i.bt = alloca [16 x i8], align 8               ; 2 uses
  %i.bu = alloca [16 x i8], align 8               ; 2 uses
  %i.bv = alloca [48 x i8], align 8               ; 2 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [16 x i8], align 8               ; 3 uses
  %i.by = alloca [48 x i8], align 8               ; 2 uses
  %i.bz = alloca [8 x i8], align 8                ; 3 uses
  %i.ca = alloca [24 x i8], align 8               ; 3 uses
  %i.cb = alloca [24 x i8], align 8               ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 3 uses
  %i.cd = alloca [24 x i8], align 8               ; 3 uses
  %i.ce = alloca [24 x i8], align 8               ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 3 uses
  %i.cg = alloca [24 x i8], align 8               ; 5 uses
  %i.ch = alloca [24 x i8], align 8               ; 3 uses
  %i.ci = alloca [24 x i8], align 8               ; 5 uses
  %i.cj = alloca [24 x i8], align 8               ; 3 uses
  %i.ck = alloca [24 x i8], align 8               ; 5 uses
  %i.cl = alloca [24 x i8], align 8               ; 3 uses
  %i.cm = alloca [24 x i8], align 8               ; 5 uses
  %i.cn = alloca [96 x i8], align 8               ; 13 uses
  %i.co = alloca [24 x i8], align 8               ; 7 uses
  %i.cp = alloca [24 x i8], align 8               ; 2 uses
  %i.cq = alloca [24 x i8], align 8               ; 2 uses
  %i.cr = alloca [24 x i8], align 8               ; 6 uses
  call void @_ZN18build_script_build3env6var_os17h76edf3db3a37f38cE(ptr nonnull sret([24 x i8]) align 8 %i.cp, ptr nonnull align 1 @386, i64 18)
  call void @"_ZN4core6option15Option$LT$T$GT$6expect17h8dfd118020b12429E"(ptr nonnull sret([24 x i8]) align 8 %i.cq, ptr nonnull align 8 %i.cp, ptr nonnull align 1 @387, i64 39, ptr nonnull align 8 @388)
  call void @"_ZN92_$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$std..ffi..os_str..OsString$GT$$GT$4from17h71fc856c03afa26eE"(ptr nonnull sret([24 x i8]) align 8 %i.cr, ptr nonnull align 8 %i.cq)
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.cl, ptr nonnull align 1 @389, i64 14)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.as, %bb.g, %bb.c
  %.pn11.pn = phi { ptr, i32 } [ %.pn11, %bb.as ], [ %.pn.pn.pn.pn, %bb.g ], [ %i.cs, %bb.c ]
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.cr) #18
          to label %bb.hy unwind label %bb.hx

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.ct = load i64, ptr %i.cl, align 8
  %.not.i31 = icmp eq i64 %i.ct, -9223372036854775808
  br i1 %.not.i31, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @390) #19
          to label %.noexc32 unwind label %bb.c

.noexc32:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.cu = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.cm)
          to label %bb.i unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.m, %bb.h
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.m ], [ %i.cv, %bb.h ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.cm) #18
          to label %bb.b unwind label %bb.hx

bb.h:                                             ; preds = %bb.k, %bb.i, %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.cw = extractvalue { ptr, i64 } %i.cu, 0
  %i.cx = extractvalue { ptr, i64 } %i.cu, 1
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.cj, ptr nonnull align 1 @391, i64 23)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.cy = load i64, ptr %i.cj, align 8
  %.not.i28 = icmp eq i64 %i.cy, -9223372036854775808
  br i1 %.not.i28, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @392) #19
          to label %.noexc29 unwind label %bb.h

.noexc29:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  %i.cz = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.ck)
          to label %bb.o unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.s, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.da, %bb.n ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.ck) #18
          to label %bb.g unwind label %bb.hx

bb.n:                                             ; preds = %bb.q, %bb.o, %bb.l
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.db = extractvalue { ptr, i64 } %i.cz, 0
  %i.dc = extractvalue { ptr, i64 } %i.cz, 1
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.ch, ptr nonnull align 1 @393, i64 23)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %i.dd = load i64, ptr %i.ch, align 8
  %.not.i25 = icmp eq i64 %i.dd, -9223372036854775808
  br i1 %.not.i25, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @394) #19
          to label %.noexc26 unwind label %bb.n

.noexc26:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  %i.de = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.ci)
          to label %bb.u unwind label %bb.t       ; 2 uses

bb.s:                                             ; preds = %bb.y, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.y ], [ %i.df, %bb.t ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.ci) #18
          to label %bb.m unwind label %bb.hx

bb.t:                                             ; preds = %bb.w, %bb.u, %bb.r
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  %i.dg = extractvalue { ptr, i64 } %i.de, 0
  %i.dh = extractvalue { ptr, i64 } %i.de, 1
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.cf, ptr nonnull align 1 @395, i64 23)
          to label %bb.v unwind label %bb.t

bb.v:                                             ; preds = %bb.u
  %i.di = load i64, ptr %i.cf, align 8
  %.not.i22 = icmp eq i64 %i.di, -9223372036854775808
  br i1 %.not.i22, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @396) #19
          to label %.noexc23 unwind label %bb.t

.noexc23:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cg, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  %i.dj = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.cg)
          to label %bb.aa unwind label %bb.z      ; 2 uses

bb.y:                                             ; preds = %bb.ae, %bb.z
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.ae ], [ %i.dk, %bb.z ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.cg) #18
          to label %bb.s unwind label %bb.hx

bb.z:                                             ; preds = %bb.ac, %bb.aa, %bb.x
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.x
  %i.dl = extractvalue { ptr, i64 } %i.dj, 0
  %i.dm = extractvalue { ptr, i64 } %i.dj, 1
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.cd, ptr nonnull align 1 @397, i64 21)
          to label %bb.ab unwind label %bb.z

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load i64, ptr %i.cd, align 8
  %.not.i19 = icmp eq i64 %i.dn, -9223372036854775808
  br i1 %.not.i19, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @398) #19
          to label %.noexc20 unwind label %bb.z

.noexc20:                                         ; preds = %bb.ac
  unreachable

end_hunk_0
begin_hunk_1_@_ZN18build_script_build4main17h40c6627e39b960c1E:bb.a
bb.be:                                            ; preds = %bb.bd
  %i.el = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8as_deref17h0459a780622aacfcE"(ptr nonnull align 8 %i.bw)
          to label %bb.bg unwind label %bb.bf     ; 2 uses

bb.bf:                                            ; preds = %bb.hp, %bb.gh, %bb.fv, %"_ZN4core6option15Option$LT$T$GT$6unwrap17h489e89d5d1b7c758E.exit.i", %bb.bl, %bb.bk, %bb.gg, %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.bj, %bb.bi, %bb.bh, %bb.be
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i38, %bb.bm, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %.pn10.pn.pn.pn.i, %bb.bm ], [ %i.em, %bb.bf ], [ %eh.lpad-body.i, %.body.i38 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.co) #18
          to label %bb.hr unwind label %bb.hx

bb.bg:                                            ; preds = %bb.be
  %i.en = extractvalue { ptr, i64 } %i.el, 0      ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.el, 1
  store ptr %i.en, ptr %i.bx, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.eo, ptr %i.ep, align 8
  %.not = icmp eq ptr %i.en, null
  br i1 %.not, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eq = invoke zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc9389f6b078fb6dfE"(ptr nonnull align 8 %i.bx, ptr nonnull align 8 @404)
          to label %bb.gb unwind label %bb.bf

bb.bi:                                            ; preds = %bb.bg
  %i.er = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.cr)
          to label %bb.bj unwind label %bb.bf     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.es = invoke { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h4f670dd23f6ce642E"(ptr nonnull align 8 %i.co)
          to label %bb.bk unwind label %bb.bf     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.et = extractvalue { ptr, i64 } %i.er, 1      ; 5 uses
  %i.eu = extractvalue { ptr, i64 } %i.er, 0      ; 5 uses
  %i.ev = extractvalue { ptr, i64 } %i.es, 0      ; 3 uses
  %i.ew = extractvalue { ptr, i64 } %i.es, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs)
  invoke void @_ZN18build_script_build3env6var_os17h76edf3db3a37f38cE(ptr nonnull sret([24 x i8]) align 8 %i.br, ptr nonnull align 1 @304, i64 7)
          to label %.noexc34 unwind label %bb.bf

.noexc34:                                         ; preds = %bb.bk
  %i.ex = load i64, ptr %i.br, align 8
  %.not.i27.i = icmp eq i64 %i.ex, -9223372036854775808
  br i1 %.not.i27.i, label %bb.bl, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17h489e89d5d1b7c758E.exit.i"

bb.bl:                                            ; preds = %.noexc34
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @305) #19
          to label %.noexc35 unwind label %bb.bf

.noexc35:                                         ; preds = %bb.bl
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17h489e89d5d1b7c758E.exit.i": ; preds = %.noexc34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false)
  invoke void @"_ZN92_$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$std..ffi..os_str..OsString$GT$$GT$4from17h71fc856c03afa26eE"(ptr nonnull sret([24 x i8]) align 8 %i.bq, ptr nonnull align 8 %i.bs)
          to label %.noexc36 unwind label %bb.bf

.noexc36:                                         ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17h489e89d5d1b7c758E.exit.i"
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.bo, ptr nonnull align 1 @306, i64 21)
          to label %bb.bn unwind label %.split.i

bb.bm:                                            ; preds = %bb.fz, %.split.i, %bb.by
  %.pn10.pn.pn.pn.i = phi { ptr, i32 } [ %.pn10.pn.pn.ph.i, %bb.fz ], [ %lpad.thr_comm.split-lp.i, %.split.i ], [ %.pn8.i, %bb.by ]
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.bq) #18
          to label %.body unwind label %bb.fw

bb.bn:                                            ; preds = %.noexc36
  %i.ey = load i64, ptr %i.bo, align 8
  %.not.i24.i = icmp eq i64 %i.ey, -9223372036854775808
  br i1 %.not.i24.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @307) #19
          to label %.noexc25.i unwind label %.split.i

.noexc25.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.bm, ptr nonnull align 1 @308, i64 19)
          to label %bb.br unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %bb.bp
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %bb.fz

bb.br:                                            ; preds = %bb.bp
  %i.fa = load i64, ptr %i.bm, align 8
  %.not.i21.i = icmp eq i64 %i.fa, -9223372036854775808
  br i1 %.not.i21.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @309) #19
          to label %.noexc22.i unwind label %bb.bq

.noexc22.i:                                       ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i64 24, i1 false)
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.bk, ptr nonnull align 1 @310, i64 20)
          to label %bb.bv unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bw, %bb.bt
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.bv:                                            ; preds = %bb.bt
  %i.fc = load i64, ptr %i.bk, align 8
  %.not.i18.i = icmp eq i64 %i.fc, -9223372036854775808
  br i1 %.not.i18.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @311) #19
          to label %.noexc19.i unwind label %bb.bu

.noexc19.i:                                       ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.bi, ptr nonnull align 1 @312, i64 23)
          to label %bb.bz unwind label %.split.thread.i

bb.by:                                            ; preds = %bb.cc
  br i1 %.sroa.03.2.i, label %bb.fx, label %bb.bm

.split.thread.i:                                  ; preds = %bb.ca, %bb.bx
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.fx

.split.i:                                         ; preds = %bb.fu, %bb.bo, %.noexc36
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bz:                                            ; preds = %bb.bx
  %i.fd = load i64, ptr %i.bi, align 8
  %.not.i15.i = icmp eq i64 %i.fd, -9223372036854775808
  br i1 %.not.i15.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @313) #19
          to label %.noexc16.i unwind label %.split.thread.i

.noexc16.i:                                       ; preds = %bb.ca
  unreachable

bb.cb:                                            ; preds = %bb.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i64 24, i1 false)
  %i.fe = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17ha1000b95e371eda3E"(ptr nonnull align 8 %i.bj, ptr nonnull align 8 @315)
          to label %bb.ce unwind label %bb.cd

bb.cc:                                            ; preds = %.body.i, %bb.cp, %bb.ch, %bb.cd
  %.pn8.i = phi { ptr, i32 } [ %i.ff, %bb.cd ], [ %.pn.i, %.body.i ], [ %i.fn, %bb.cp ], [ %i.fh, %bb.ch ] ; 2 uses
  %.sroa.03.2.i = phi i1 [ %.sroa.03.3.i, %bb.cd ], [ false, %.body.i ], [ true, %bb.cp ], [ true, %bb.ch ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.bj) #18
          to label %bb.by unwind label %bb.fw

bb.cd:                                            ; preds = %bb.ft, %bb.cq, %bb.cn, %bb.ck, %bb.ci, %bb.cf, %bb.ce, %bb.cb
  %.sroa.03.3.i = phi i1 [ false, %bb.ft ], [ true, %bb.cq ], [ true, %bb.cn ], [ true, %bb.ck ], [ true, %bb.ci ], [ true, %bb.cf ], [ true, %bb.ce ], [ true, %bb.cb ]
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cb
  invoke void @_ZN3std4path4Path4join17h8019228f0bbba227E(ptr nonnull sret([24 x i8]) align 8 %i.bg, ptr align 1 %i.eu, i64 %i.et, ptr nonnull align 1 @316, i64 4)
          to label %bb.cf unwind label %bb.cd

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZN3std2fs8metadata17ha93a501b4dd51fdcE(ptr nonnull sret([176 x i8]) align 8 %i.bh, ptr nonnull align 8 %i.bg)
          to label %bb.cg unwind label %bb.cd

bb.cg:                                            ; preds = %bb.cf
  %i.fg = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$5is_ok17h3a87d96f146a3fdaE"(ptr nonnull align 8 %i.bh)
          to label %bb.ci unwind label %bb.ch     ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h5540e28c30735b39E"(ptr nonnull align 8 %i.bh) #18
          to label %bb.cc unwind label %bb.fw

bb.ci:                                            ; preds = %bb.cg
  invoke void @"_ZN4core3ptr90drop_in_place$LT$core..result..Result$LT$std..fs..Metadata$C$std..io..error..Error$GT$$GT$17h5540e28c30735b39E"(ptr nonnull align 8 %i.bh)
          to label %bb.cj unwind label %bb.cd

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.fg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN18build_script_build3env3var17hddd7100010e1c1a1E(ptr nonnull sret([24 x i8]) align 8 %i.be, ptr nonnull align 1 @317, i64 5)
          to label %bb.cm unwind label %bb.cd

bb.cl:                                            ; preds = %bb.cq, %bb.cj
  %.sroa.0.0.i = phi i8 [ %i.fo, %bb.cq ], [ 0, %bb.cj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fi, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  store i8 %.sroa.0.0.i, ptr %i.fk, align 8
  %0 = getelementptr inbounds nuw i8, ptr %i.bd, i64 73
  %1 = zext i1 %i.fg to i8
  store i8 %1, ptr %0, align 1
  br i1 %i.fe, label %bb.cr, label %bb.cs

bb.cm:                                            ; preds = %bb.ck
  %i.fl = load i64, ptr %i.be, align 8
  %.not.i.i = icmp eq i64 %i.fl, -9223372036854775808
  br i1 %.not.i.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @318) #19
          to label %.noexc.i unwind label %bb.cd

.noexc.i:                                         ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %bb.cm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  %i.fm = invoke zeroext i1 @"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2ne17h1fa5d4e48f1698e5E"(ptr nonnull align 8 %i.bf, ptr nonnull align 8 @320)
          to label %bb.cq unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.bf) #18
          to label %bb.cc unwind label %bb.fw

bb.cq:                                            ; preds = %bb.co
  %i.fo = zext i1 %i.fm to i8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he0a3f1a64169923cE"(ptr nonnull align 8 %i.bf)
          to label %bb.cl unwind label %bb.cd

bb.cr:                                            ; preds = %bb.cl
  %i.fp = invoke { ptr, ptr } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hed21d26abbe60671E"(ptr nonnull align 8 @343, i64 10)
          to label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd65eeacd4ec4b61dE.exit.i" unwind label %bb.ct ; 2 uses

bb.cs:                                            ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd65eeacd4ec4b61dE.exit.i", %bb.cl
  %.sroa.01.0.i = phi ptr [ null, %bb.cl ], [ %i.fu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd65eeacd4ec4b61dE.exit.i" ] ; 4 uses
  br i1 %i.fg, label %bb.cv, label %bb.cu

.body.i:                                          ; preds = %.body51.i, %.thread.i.i, %bb.da, %bb.ct
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body52.i, %.body51.i ], [ %i.fq, %bb.ct ], [ %i.gb, %bb.da ], [ %.pn.pn.pn.i.i, %.thread.i.i ]
  invoke void @"_ZN4core3ptr47drop_in_place$LT$build_script_build..Target$GT$17h4951664366a485bcE"(ptr nonnull align 8 %i.bd) #18
          to label %bb.cc unwind label %bb.fw

bb.ct:                                            ; preds = %.loopexit70.i, %bb.dy, %bb.dh, %.noexc32.i, %.noexc31.i, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd3d73d7bdcee6c7bE.exit.i.i", %bb.cy, %bb.cx, %bb.cv, %bb.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd65eeacd4ec4b61dE.exit.i", %bb.cr
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17hd65eeacd4ec4b61dE.exit.i": ; preds = %bb.cr
  %i.fr = extractvalue { ptr, ptr } %i.fp, 0
  %i.fs = extractvalue { ptr, ptr } %i.fp, 1
  store ptr %i.fr, ptr %i.bc, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.fs, ptr %i.ft, align 8
  %i.fu = invoke align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4find17h28671fb47ffb8849E"(ptr nonnull align 8 %i.bc, ptr nonnull align 8 %i.bd, ptr nonnull align 8 %i.fi)
          to label %bb.cs unwind label %bb.ct

bb.cu:                                            ; preds = %bb.cs
  invoke void @_ZN3std4path4Path4join17h8019228f0bbba227E(ptr nonnull sret([24 x i8]) align 8 %i.bb, ptr align 1 %i.eu, i64 %i.et, ptr nonnull align 1 @344, i64 12)
          to label %bb.cw unwind label %bb.ct

bb.cv:                                            ; preds = %bb.cs
  %i.fv = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.bq)
          to label %bb.cx unwind label %bb.ct     ; 2 uses

bb.cw:                                            ; preds = %bb.dy, %bb.cu
  %i.fw = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.bb)
          to label %bb.dz unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cx:                                            ; preds = %bb.cv
  %i.fx = invoke align 8 ptr @"_ZN91_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hddc1c1a7f7c551efE"(ptr align 8 %.sroa.01.0.i)
          to label %bb.cy unwind label %bb.ct

bb.cy:                                            ; preds = %bb.cx
  %i.fy = extractvalue { ptr, i64 } %i.fv, 1      ; 4 uses
  %i.fz = extractvalue { ptr, i64 } %i.fv, 0      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  %i.ga = invoke fastcc ptr @_ZN18build_script_build31generate_prefix_symbols_headers17h148b819d7e818265E(ptr align 1 %i.fz, i64 %i.fy, ptr align 1 %i.ev, i64 %i.ew)
          to label %.noexc30.i unwind label %bb.ct ; 2 uses

.noexc30.i:                                       ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %.not.i.i.i = icmp eq ptr %i.ga, null
  br i1 %.not.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd3d73d7bdcee6c7bE.exit.i.i", label %bb.cz

bb.cz:                                            ; preds = %.noexc30.i
  store ptr %i.ga, ptr %i.at, align 8
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr nonnull align 1 @470, i64 43, ptr nonnull align 1 %i.at, ptr nonnull align 8 @469, ptr nonnull align 8 @384) #19
          to label %bb.db unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h34f8c2d46c9caad3E"(ptr nonnull align 8 %i.at) #18
          to label %.body.i unwind label %bb.dc

bb.db:                                            ; preds = %bb.cz
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd3d73d7bdcee6c7bE.exit.i.i": ; preds = %.noexc30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !61
  invoke void @_ZN18build_script_build3env6var_os17h76edf3db3a37f38cE(ptr nonnull sret([24 x i8]) align 8 %i.ar, ptr nonnull align 1 @65, i64 15)
          to label %.noexc31.i unwind label %bb.ct, !noalias !62

.noexc31.i:                                       ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hd3d73d7bdcee6c7bE.exit.i.i"
  invoke void @"_ZN4core6option15Option$LT$T$GT$14unwrap_or_else17h6ad7e6084f310153E"(ptr nonnull sret([24 x i8]) align 8 %i.as, ptr nonnull align 8 %i.ar, ptr nonnull align 1 @64, i64 4, ptr nonnull align 8 @9)
          to label %.noexc32.i unwind label %bb.ct, !noalias !62

.noexc32.i:                                       ; preds = %.noexc31.i
  invoke void @"_ZN92_$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$std..ffi..os_str..OsString$GT$$GT$4from17h71fc856c03afa26eE"(ptr nonnull sret([24 x i8]) align 8 %i.ba, ptr nonnull align 8 %i.as)
          to label %.noexc33.i unwind label %bb.ct

.noexc33.i:                                       ; preds = %.noexc32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !61
  %i.gd = invoke align 8 ptr @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfb04ee3fc478eb01E"(ptr align 8 %i.fx)
          to label %bb.dd unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.i.i:                                      ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dx, %bb.do
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i, %bb.dx ], [ %.pn.i.i, %bb.do ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.ba) #18
          to label %.body.i unwind label %bb.dw

bb.dd:                                            ; preds = %.noexc33.i
  store ptr %i.gd, ptr %i.az, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.315.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  br label %bb.de

bb.de:                                            ; preds = %.backedge, %bb.dd
  %i.gj = invoke align 8 ptr @"_ZN90_$LT$core..option..IntoIter$LT$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4889ba23ba1cb067E"(ptr nonnull align 8 %i.az)
          to label %bb.df unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

bb.df:                                            ; preds = %bb.de
  %.not.i29.i = icmp eq ptr %i.gj, null
  br i1 %.not.i29.i, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  invoke fastcc void @_ZN18build_script_build16perlasm_src_dsts17hba0bd25589efcb92E(ptr noalias align 8 %i.ay, ptr align 1 %i.fz, i64 %i.fy, ptr nonnull align 8 %i.gj)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.df
  invoke void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h0fb0f18a3f92a4d8E"(ptr nonnull align 8 %i.ba)
          to label %bb.dy unwind label %bb.ct

bb.di:                                            ; preds = %bb.dg
  %i.gk = invoke { ptr, i64 } @"_ZN62_$LT$std..path..PathBuf$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcac873f9157a931cE"(ptr nonnull align 8 %i.ba)
          to label %bb.dj unwind label %bb.dx     ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.critedge.i.i, %bb.ds, %.noexc.i.i, %bb.dl, %bb.dg, %bb.de, %.noexc33.i
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.dj:                                            ; preds = %bb.di
  %.val.i.i = load ptr, ptr %i.ge, align 8
  %.val11.i.i = load i64, ptr %i.gf, align 8
  %i.gl = extractvalue { ptr, i64 } %i.gk, 1
  %i.gm = extractvalue { ptr, i64 } %i.gk, 0
  invoke fastcc void @_ZN18build_script_build7perlasm17hf7bc7b3c141e456fE(ptr align 1 %i.gm, i64 %i.gl, ptr align 8 %.val.i.i, i64 %.val11.i.i, ptr nonnull align 8 %i.gj, ptr align 1 %i.eu, i64 %i.et)
          to label %bb.dk unwind label %bb.dx

bb.dk:                                            ; preds = %bb.dj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.go = invoke zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$8contains17h9f6c807e91a157ccE"(ptr nonnull align 8 @437, i64 2, ptr nonnull align 8 %i.gn)
          to label %_ZN18build_script_build9AsmTarget8use_nasm17ha1e452c2855d90eeE.exit.i.i unwind label %bb.dx

_ZN18build_script_build9AsmTarget8use_nasm17ha1e452c2855d90eeE.exit.i.i: ; preds = %bb.dk
  br i1 %i.go, label %bb.dl, label %.critedge.i.i

bb.dl:                                            ; preds = %_ZN18build_script_build9AsmTarget8use_nasm17ha1e452c2855d90eeE.exit.i.i
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.ay, align 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %i.ge, align 8 ; 3 uses
  %.sroa.3.0.copyload.i.i = load i64, ptr %i.gf, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.gp = getelementptr inbounds nuw [48 x i8], ptr %.sroa.2.0.copyload.i.i, i64 %.sroa.3.0.copyload.i.i
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.ap, align 8, !alias.scope !63, !noalias !64
end_hunk_1
