Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/syn-4d4711ba44a7a591.syn.8a15aecd2500a16-cgu.04?download=true
inline.NumInlined: 28
inline.NumDeleted: 1
begin_hunk_0_@_RNvXNtNtCsJWcWohxsl6_3syn8generics7parsingNtB4_8GenericsNtNtB6_5parse5Parse5parse:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %i.w, i64 224 ; 2 uses
  %.sroa.046.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 224
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  %.sroa.046.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.046, i64 248
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %.sroa.6.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 224 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %.sroa.043.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.043, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 424
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aa, i64 296
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 248
  %i.bj = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.bo, %bb.f
  %i.bl = invoke zeroext i1 @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2GtNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.i unwind label %.loopexit

bb.h:                                             ; preds = %.loopexit73, %.thread81, %.loopexit, %.loopexit.split-lp, %bb.bs, %bb.o
  %.pn37 = phi { ptr, i32 } [ %.pn3254, %bb.o ], [ %.pn3471, %bb.bs ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp76.a, %.thread81 ], [ %lpad.loopexit75.a, %.loopexit73 ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsJWcWohxsl6_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.an) #17
          to label %bb.by unwind label %bb.ak

.loopexit:                                        ; preds = %bb.g, %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %.invoke, %.loopexit72, %bb.br, %bb.bu
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.i:                                             ; preds = %bb.g
  br i1 %i.bl, label %.loopexit72, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.ak, ptr align 8 %1, ptr nonnull @_RNvMNtCsJWcWohxsl6_3syn4attrNtB2_9Attribute11parse_outer)
          to label %bb.k unwind label %.loopexit

.loopexit72:                                      ; preds = %bb.i, %bb.bj
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2GtEB8_(ptr nonnull sret([24 x i8]) align 8 %i.i, ptr align 8 %1)
          to label %bb.bu unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.al, ptr nonnull align 8 %i.ak)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.bm = load i64, ptr %i.al, align 8
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.bw, %bb.m
  %i.bo = phi ptr [ %i.c, %bb.m ], [ %i.b, %bb.bw ]
  %i.bp = phi ptr [ @29, %bb.m ], [ @30, %bb.bw ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.bo, ptr nonnull align 8 %i.bp)
          to label %bb.bt unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  invoke void @_RNvMs9_NtCsJWcWohxsl6_3syn5parseNtB5_11ParseBuffer10lookahead1(ptr nonnull sret([56 x i8]) align 8 %i.aj, ptr align 8 %1)
          to label %bb.p unwind label %.loopexit73.thread

.loopexit73.thread:                               ; preds = %bb.n
  %lpad.loopexit7585 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.o:                                             ; preds = %.thread
  br i1 %.sroa.026.253, label %bb.bs, label %bb.h

.loopexit73:                                      ; preds = %bb.bo
  %lpad.loopexit75.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.thread81:                                        ; preds = %bb.bq, %bb.bj
  %lpad.loopexit.split-lp76.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.p:                                             ; preds = %bb.n
  %i.bq = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_8lifetime8LifetimeEB5_(ptr nonnull align 8 %i.aj)
          to label %bb.q unwind label %.thread56.loopexit

.thread56.loopexit:                               ; preds = %.invoke86, %bb.p, %bb.r, %bb.u, %bb.x, %bb.ai, %bb.aj, %bb.bi, %bb.bk, %bb.bn
  %.sroa.026.3.ph.ph = phi i1 [ false, %bb.bn ], [ false, %bb.bk ], [ false, %bb.bi ], [ false, %bb.aj ], [ true, %bb.r ], [ true, %bb.p ], [ false, %.invoke86 ], [ false, %bb.ai ], [ true, %bb.x ], [ true, %bb.u ]
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread56.loopexit.split-lp:                      ; preds = %.invoke87, %bb.bm
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread68:                                        ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.q:                                             ; preds = %bb.p
  br i1 %i.bq, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekNvNtB5_5ident5IdentEB5_(ptr nonnull align 8 %i.aj)
          to label %bb.t unwind label %.thread56.loopexit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics13LifetimeParamEB8_(ptr nonnull sret([96 x i8]) align 8 %i.ae, ptr align 8 %1)
          to label %bb.bc unwind label %bb.bb

bb.t:                                             ; preds = %bb.r
  br i1 %i.br, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = invoke zeroext i1 @_RINvMNtCsJWcWohxsl6_3syn9lookaheadNtB3_10Lookahead14peekINvNtB5_5token5ConstNtB3_11TokenMarkerEEB5_(ptr nonnull align 8 %i.aj)
          to label %bb.w unwind label %.thread56.loopexit

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics9TypeParamEB8_(ptr nonnull sret([320 x i8]) align 8 %i.z, ptr align 8 %1)
          to label %bb.av unwind label %bb.au

bb.w:                                             ; preds = %bb.u
  br i1 %i.bs, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = invoke zeroext i1 @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token10UnderscoreNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.z unwind label %.thread56.loopexit

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_8generics10ConstParamEB8_(ptr nonnull sret([456 x i8]) align 8 %i.u, ptr align 8 %1)
          to label %bb.ao unwind label %bb.an

bb.z:                                             ; preds = %bb.x
  br i1 %i.bt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.aj, i64 56, i1 false)
  invoke void @_RNvMNtCsJWcWohxsl6_3syn9lookaheadNtB2_10Lookahead15error(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.br unwind label %.thread68

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4callNtCs6lkCCFP1haM_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.p, ptr align 8 %1, ptr nonnull @_RNvXNtCsJWcWohxsl6_3syn3extNtCs6lkCCFP1haM_11proc_macro25IdentNtB2_8IdentExt9parse_any)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %bb.ab
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.s) #17
          to label %.thread unwind label %bb.ak

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCs6lkCCFP1haM_11proc_macro25IdentNtNtCsJWcWohxsl6_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load i64, ptr %i.q, align 8
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.h, ptr nonnull align 8 @24)
          to label %.invoke87 unwind label %bb.am

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics14TypeParamBoundNtNtB4_5token4PlusE3newB4_(ptr nonnull sret([32 x i8]) align 8 %i.o)
          to label %bb.ai unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.r) #17
          to label %bb.al unwind label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.04.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  store i64 -1, ptr %i.av, align 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  store i32 0, ptr %.sroa.65.0..sroa_idx, align 8
  store i64 18, ptr %i.t, align 8
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE10push_valueB4_(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.t)
          to label %bb.aj unwind label %.thread56.loopexit

bb.aj:                                            ; preds = %.invoke86, %bb.ai
  %i.by = invoke zeroext i1 @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2GtNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.bh unwind label %.thread56.loopexit

bb.ak:                                            ; preds = %bb.bs, %.thread, %bb.bp, %bb.bg, %bb.bb, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.as, %bb.an, %bb.al, %bb.ah, %bb.ac, %bb.h
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.al:                                            ; preds = %bb.am, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.am ], [ %i.bx, %bb.ah ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.s) #17
          to label %.thread unwind label %bb.ak

bb.am:                                            ; preds = %bb.af
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.invoke87:                                        ; preds = %bb.be, %bb.ax, %bb.aq, %bb.af
  %i.cb = phi ptr [ %i.ac, %bb.ax ], [ %i.s, %bb.af ], [ %i.x, %bb.aq ], [ %i.ah, %bb.be ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.cb)
          to label %bb.bq unwind label %.thread56.loopexit.split-lp

bb.an:                                            ; preds = %bb.ao, %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.x) #17
          to label %.thread unwind label %bb.ak

bb.ao:                                            ; preds = %bb.y
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([456 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u)
          to label %bb.ap unwind label %bb.an

bb.ap:                                            ; preds = %bb.ao
  %i.cd = load i64, ptr %i.v, align 8
  %i.ce = icmp eq i64 %i.cd, -1
  br i1 %i.ce, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.g, ptr nonnull align 8 @25)
          to label %.invoke87 unwind label %bb.at

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(456) %i.w, ptr noundef nonnull align 8 dereferenceable(456) %i.v, i64 456, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.0.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.02.sroa.0, ptr noundef nonnull align 8 dereferenceable(224) %i.v, i64 224, i1 false)
  %i.cg = load i64, ptr %i.ax, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.02.sroa.0.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.bg, i64 168, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.y, ptr noundef nonnull align 8 dereferenceable(416) %.sroa.02.sroa.0, i64 416, i1 false)
  store i64 %i.cg, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %i.ch = load <2 x i32>, ptr %i.aw, align 8
  store <2 x i32> %i.ch, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE10push_valueB4_(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.y)
          to label %.invoke86 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ay) #17
          to label %.thread unwind label %bb.ak

.invoke86:                                        ; preds = %bb.bf, %bb.ay, %bb.ar
  %i.cj = phi ptr [ %i.bb, %bb.ay ], [ %i.ay, %bb.ar ], [ %i.ag, %bb.bf ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.cj)
          to label %bb.aj unwind label %.thread56.loopexit

bb.at:                                            ; preds = %bb.aq
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.x) #17
          to label %.thread unwind label %bb.ak

bb.au:                                            ; preds = %bb.av, %bb.v
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ac) #17
          to label %.thread unwind label %bb.ak

bb.av:                                            ; preds = %bb.v
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics9TypeParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([320 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.z)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  %i.cm = load i64, ptr %i.aa, align 8
  %i.cn = icmp eq i64 %i.cm, -2
  br i1 %i.cn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.co = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.f, ptr nonnull align 8 @26)
          to label %.invoke87 unwind label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %i.ab, ptr noundef nonnull align 8 dereferenceable(320) %i.aa, i64 320, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.046.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.046.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.046, ptr noundef nonnull align 8 dereferenceable(224) %i.aa, i64 224, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.ba, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.046, i64 280, i1 false)
  %i.cp = load <2 x i64>, ptr %i.az, align 8
  store <2 x i64> %i.cp, ptr %.sroa.447.0..sroa_idx, align 8
  store i64 18, ptr %i.ad, align 8
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE10push_valueB4_(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ad)
          to label %.invoke86 unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.bb) #17
          to label %.thread unwind label %bb.ak

bb.ba:                                            ; preds = %bb.ax
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ac) #17
          to label %.thread unwind label %bb.ak

bb.bb:                                            ; preds = %bb.bc, %bb.s
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ah) #17
          to label %.thread unwind label %bb.ak

bb.bc:                                            ; preds = %bb.s
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics13LifetimeParamNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([96 x i8]) align 8 %i.af, ptr nonnull align 8 %i.ae)
          to label %bb.bd unwind label %bb.bb

bb.bd:                                            ; preds = %bb.bc
  %i.ct = load i64, ptr %i.af, align 8
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.cv = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @28)
          to label %.invoke87 unwind label %bb.bp

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ag, ptr noundef nonnull align 8 dereferenceable(96) %i.af, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.043, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.445.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false)
  %i.cw = load i64, ptr %i.bc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.043.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.043, i64 56, i1 false)
  store i64 %i.cw, ptr %.sroa.344.0..sroa_idx, align 8
  store i64 17, ptr %i.ai, align 8
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE10push_valueB4_(ptr nonnull align 8 %i.an, ptr nonnull align 8 %i.ai)
          to label %.invoke86 unwind label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ag) #17
          to label %.thread unwind label %bb.ak

bb.bh:                                            ; preds = %bb.aj
  br i1 %i.by, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5CommaEB8_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %1)
          to label %bb.bk unwind label %.thread56.loopexit

bb.bj:                                            ; preds = %bb.bh
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.aj)
          to label %.loopexit72 unwind label %.thread81

bb.bk:                                            ; preds = %bb.bi
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn5token5CommaNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.bl unwind label %.thread56.loopexit

bb.bl:                                            ; preds = %bb.bk
  %i.cy = load i64, ptr %i.l, align 8
  %.not31.a = icmp eq i64 %i.cy, -1
  br i1 %.not31.a, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics8GenericsNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1n_EE13from_residualBO_(ptr sret([88 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @27)
          to label %bb.bq unwind label %.thread56.loopexit.split-lp

bb.bn:                                            ; preds = %bb.bl
  %.sroa.011.0.copyload = load i32, ptr %i.be, align 8
  invoke void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE10push_punctB4_(ptr nonnull align 8 %i.an, i32 %.sroa.011.0.copyload)
          to label %bb.bo unwind label %.thread56.loopexit

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.aj)
          to label %bb.g unwind label %.loopexit73

bb.bp:                                            ; preds = %bb.be
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.ah) #17
          to label %.thread unwind label %bb.ak

bb.bq:                                            ; preds = %.invoke87, %bb.bm
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.aj)
          to label %bb.bt unwind label %.thread81

bb.br:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.da, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.am)
          to label %bb.bt unwind label %.loopexit.split-lp

.thread:                                          ; preds = %.thread56.loopexit, %.thread56.loopexit.split-lp, %bb.ac, %bb.al, %bb.an, %bb.as, %bb.at, %bb.au, %bb.az, %bb.ba, %bb.bb, %bb.bg, %bb.bp
  %.pn3254 = phi { ptr, i32 } [ %i.cz, %bb.bp ], [ %i.bu, %bb.ac ], [ %.pn, %bb.al ], [ %i.cc, %bb.an ], [ %i.ci, %bb.as ], [ %i.ck, %bb.at ], [ %i.cl, %bb.au ], [ %i.cq, %bb.az ], [ %i.cr, %bb.ba ], [ %i.cs, %bb.bb ], [ %i.cx, %bb.bg ], [ %lpad.loopexit78, %.thread56.loopexit ], [ %lpad.loopexit.split-lp79, %.thread56.loopexit.split-lp ] ; 2 uses
  %.sroa.026.253 = phi i1 [ false, %bb.bp ], [ false, %bb.ac ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.as ], [ false, %bb.at ], [ false, %bb.au ], [ false, %bb.az ], [ false, %bb.ba ], [ false, %bb.bb ], [ false, %bb.bg ], [ %.sroa.026.3.ph.ph, %.thread56.loopexit ], [ false, %.thread56.loopexit.split-lp ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn9lookahead10Lookahead1EBF_(ptr nonnull align 8 %i.aj) #17
          to label %bb.o unwind label %bb.ak

bb.bs:                                            ; preds = %.loopexit73.thread, %.thread68, %bb.o
  %.pn3471 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.thread68 ], [ %.pn3254, %bb.o ], [ %lpad.loopexit7585, %.loopexit73.thread ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.am) #17
          to label %bb.h unwind label %bb.ak

bb.bt:                                            ; preds = %.invoke, %bb.bq, %bb.br
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsJWcWohxsl6_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr nonnull align 8 %i.an)
  br label %bb.d

bb.bu:                                            ; preds = %.loopexit72
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn5token2GtNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.bv unwind label %.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  %i.db = load i64, ptr %i.j, align 8
  %.not36 = icmp eq i64 %i.db, -1
  br i1 %.not36, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  br label %.invoke

bb.bx:                                            ; preds = %bb.bv
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.013.0.copyload = load i32, ptr %i.dc, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false)
  %.sroa.011.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.011.sroa.2.0..sroa_idx, align 8
  %.sroa.017.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 1, ptr %.sroa.017.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %.sroa.0.0.copyload, ptr %.sroa.3.0..sroa_idx, align 4
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 %.sroa.013.0.copyload, ptr %.sroa.519.0..sroa_idx, align 4
  br label %bb.d

bb.by:                                            ; preds = %bb.h
  resume { ptr, i32 } %.pn37
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsJWcWohxsl6_3syn8generics8printingNtB4_8GenericsNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 2 uses
  %i.n = alloca [24 x i8], align 8                ; 2 uses
  %i.o = tail call zeroext i1 @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE8is_emptyB4_(ptr align 8 %0)
  br i1 %i.o, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.q = load i32, ptr %i.p, align 8
  %i.r = trunc i32 %i.q to i1
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @_RNvXs7K_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.s, ptr align 8 %1)
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = tail call i32 @_RNvXsaG_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.t, ptr %i.b, align 4
  call void @_RNvXs7K_NtCsJWcWohxsl6_3syn5tokenNtB6_2LtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.b, ptr align 8 %1)
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE5pairsB4_(ptr nonnull sret([24 x i8]) align 8 %i.m, ptr nonnull align 8 %0)
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtCsJWcWohxsl6_3syn10punctuated5PairsNtNtBQ_8generics12GenericParamNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterBQ_(ptr nonnull sret([24 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  br label %.outer3

.outer3:                                          ; preds = %bb.q, %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit
  %.sroa.0.0.ph = phi i1 [ %i.ap, %bb.q ], [ true, %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2LtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit ]
  br label %bb.f

bb.e:                                             ; preds = %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit, %bb.a
  ret void

bb.f:                                             ; preds = %.outer3, %bb.g
  call void @_RNvXs8_NtCsJWcWohxsl6_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr nonnull align 8 %i.l)
  %i.v = load i64, ptr %i.k, align 8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.x = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5valueB7_(ptr nonnull align 8 %i.j)
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp eq i64 %i.z, 17
  br i1 %i.aa, label %bb.q, label %bb.f

bb.h:                                             ; preds = %bb.f
  call void @_RNvMNtCsJWcWohxsl6_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE5pairsB4_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr align 8 %0)
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtCsJWcWohxsl6_3syn10punctuated5PairsNtNtBQ_8generics12GenericParamNtNtBQ_5token5CommaENtB2_12IntoIterator9into_iterBQ_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.outer

.outer:                                           ; preds = %bb.p, %bb.h
  %.sroa.0.1.ph = phi i1 [ true, %bb.p ], [ %.sroa.0.0.ph, %bb.h ]
  br label %bb.i

bb.i:                                             ; preds = %.outer, %bb.j
  call void @_RNvXs8_NtCsJWcWohxsl6_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.f)
  %i.ac = load i64, ptr %i.e, align 8
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  %i.ae = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5valueB7_(ptr nonnull align 8 %i.d)
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, 17
  br i1 %i.ah, label %bb.i, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = trunc i32 %i.aj to i1
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

bb.m:                                             ; preds = %bb.k
  %i.am = call i32 @_RNvXsav_NtCsJWcWohxsl6_3syn5tokenNtB6_2GtNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.am, ptr %i.a, align 4
  br label %_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit

_RNvXNtCsJWcWohxsl6_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token2GtENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB4_.exit: ; preds = %bb.l, %bb.m
  %.sink = phi ptr [ %i.al, %bb.l ], [ %i.a, %bb.m ]
  call void @_RNvXs7y_NtCsJWcWohxsl6_3syn5tokenNtB6_2GtNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %.sink, ptr align 8 %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.n:                                             ; preds = %bb.j
  br i1 %.sroa.0.1.ph, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call i32 @_RNvXs9T_NtCsJWcWohxsl6_3syn5tokenNtB6_5CommaNtNtCs3oUPovFnLWP_4core7default7Default7default()
  store i32 %i.an, ptr %i.c, align 4
  call void @_RNvXs6U_NtCsJWcWohxsl6_3syn5tokenNtB6_5CommaNtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokens(ptr nonnull align 4 %i.c, ptr align 8 %1)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  call void @_RNvXs_NtNtCsJWcWohxsl6_3syn10punctuated8printingINtB6_4PairRNtNtB8_8generics12GenericParamRNtNtB8_5token5CommaENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB8_(ptr nonnull align 8 %i.d, ptr align 8 %1)
  br label %.outer

bb.q:                                             ; preds = %bb.g
  call void @_RNvXs_NtNtCsJWcWohxsl6_3syn10punctuated8printingINtB6_4PairRNtNtB8_8generics12GenericParamRNtNtB8_5token5CommaENtNtCscHOZfnuBWzf_5quote9to_tokens8ToTokens9to_tokensB8_(ptr nonnull align 8 %i.j, ptr align 8 %1)
  %i.ao = call align 8 ptr @_RNvMsF_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4PairRNtNtB7_8generics12GenericParamRNtNtB7_5token5CommaE5punctB7_(ptr nonnull align 8 %i.j)
  store ptr %i.ao, ptr %i.i, align 8
  %i.ap = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionRRNtNtCsJWcWohxsl6_3syn5token5CommaE7is_someBN_(ptr nonnull align 8 %i.i) #16
  br label %.outer3
}

; Function Attrs: nonlazybind uwtable
define align 8 ptr @_RNvXs0_NtCsJWcWohxsl6_3syn8genericsNtB5_9LifetimesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %i.a = tail call align 8 ptr @_RNvXsp_NtCsJWcWohxsl6_3syn10punctuatedINtB5_4IterNtNtB7_8generics12GenericParamENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB7_(ptr align 8 %0)
  %i.b = tail call align 8 ptr @_RNvXsJ_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsJWcWohxsl6_3syn8generics12GenericParamENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr align 8 %i.a) #16 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %tailrecurse
  %i.d = tail call align 8 ptr @_RNvXsK_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRNtNtCsJWcWohxsl6_3syn8generics13LifetimeParamEINtNtNtB7_3ops9try_trait12FromResidualIBy_zEE13from_residualBP_() #16
  br label %bb.e

bb.c:                                             ; preds = %tailrecurse
  %i.e = load i64, ptr %i.b, align 8
  %i.f = icmp eq i64 %i.e, 17
  br i1 %i.f, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ %i.g, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsJWcWohxsl6_3syn8generics7parsingNtB7_13LifetimeParamNtNtB9_5parse5Parse5parse(ptr sret([96 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 2 uses
  %i.j = alloca [40 x i8], align 8                ; 3 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [40 x i8], align 8                ; 2 uses
  %i.o = alloca [40 x i8], align 8                ; 3 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 2 uses
  %i.r = alloca [32 x i8], align 8                ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.02 = alloca [56 x i8], align 8           ; 3 uses
  call void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.q, ptr align 8 %1, ptr nonnull @_RNvMNtCsJWcWohxsl6_3syn4attrNtB2_9Attribute11parse_outer)
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q) #16
  %i.t = load i64, ptr %i.r, align 8
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.u, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@_RNvXs9_NtNtCsJWcWohxsl6_3syn3gen5cloneNtNtB9_8generics14BoundLifetimesNtNtCs3oUPovFnLWP_4core5clone5Clone5clone:bb.a
  store i32 %i.c, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.e, ptr %i.j, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.g, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs9_NtNtCsJWcWohxsl6_3syn8generics7parsingNtB7_10ConstParamNtNtB9_5parse5Parse5parse(ptr sret([456 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 2 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [168 x i8], align 8               ; 2 uses
  %i.i = alloca [168 x i8], align 8               ; 4 uses
  %i.j = alloca [168 x i8], align 8               ; 3 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [224 x i8], align 8               ; 2 uses
  %i.n = alloca [224 x i8], align 8               ; 4 uses
  %i.o = alloca [224 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 2 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 2 uses
  %i.x = alloca [32 x i8], align 8                ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.0.sroa.0 = alloca [416 x i8], align 8    ; 4 uses
  %i.z = alloca [168 x i8], align 8               ; 16 uses
  store i64 -1, ptr %i.z, align 8
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB8_4attr9AttributeEEB8_(ptr nonnull sret([32 x i8]) align 8 %i.w, ptr align 8 %1, ptr nonnull @_RNvMNtCsJWcWohxsl6_3syn4attrNtB2_9Attribute11parse_outer)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
          to label %bb.bb unwind label %bb.au

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeENtNtB1l_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1l_(ptr nonnull sret([32 x i8]) align 8 %i.x, ptr nonnull align 8 %i.w)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.x, align 8
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.a, ptr nonnull align 8 @59)
          to label %bb.bv unwind label %bb.bu

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ConstEB8_(ptr nonnull sret([24 x i8]) align 8 %i.u, ptr align 8 %1)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #17
          to label %bb.bt unwind label %bb.au

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn5token5ConstNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.v, ptr nonnull align 8 %i.u)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.af = load i64, ptr %i.v, align 8
  %.not = icmp eq i64 %i.af, -1
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 @58)
          to label %bb.bp unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtCs6lkCCFP1haM_11proc_macro25IdentEB8_(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr align 8 %1)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #17
          to label %bb.bq unwind label %bb.au

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtCs6lkCCFP1haM_11proc_macro25IdentNtNtCsJWcWohxsl6_3syn5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1n_(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.r)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.aj = load i64, ptr %i.s, align 8
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  br i1 %i.ak, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.c, ptr nonnull align 8 @57)
          to label %bb.bl unwind label %bb.bk

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token5ColonEB8_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr align 8 %1)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.r, %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.t) #17
          to label %bb.bj unwind label %bb.au

bb.r:                                             ; preds = %bb.p
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn5token5ColonNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.an = load i64, ptr %i.q, align 8
  %.not4 = icmp eq i64 %i.an, -1
  br i1 %.not4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.d, ptr nonnull align 8 @56)
          to label %bb.bc unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.01.0.copyload = load i32, ptr %i.ao, align 8
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr nonnull sret([224 x i8]) align 8 %i.m, ptr align 8 %1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u, %bb.t
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.t) #17
          to label %bb.bd unwind label %bb.au

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn2ty4TypeNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([224 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m)
          to label %bb.x unwind label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.aq = load i64, ptr %i.n, align 8
  %i.ar = icmp eq i64 %i.aq, -1
  br i1 %i.ar, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.e, ptr nonnull align 8 @55)
          to label %bb.at unwind label %bb.as

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.o, ptr noundef nonnull align 8 dereferenceable(224) %i.n, i64 224, i1 false)
  %i.at = invoke zeroext i1 @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer4peekINvNtB8_5token2EqNtNtB8_9lookahead11TokenMarkerEEB8_(ptr align 8 %1)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.an, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.au, %bb.ab ], [ %i.bc, %bb.an ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.o) #17
          to label %bb.ar unwind label %bb.au

bb.ab:                                            ; preds = %.invoke, %bb.aj, %bb.ai, %bb.af, %bb.ad, %bb.z
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  br i1 %i.at, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvMs9_NtCsJWcWohxsl6_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token2EqEB8_(ptr nonnull sret([24 x i8]) align 8 %i.k, ptr align 8 %1)
          to label %bb.af unwind label %bb.ab

bb.ae:                                            ; preds = %bb.ac, %bb.ao
  %.sroa.02.0 = phi i32 [ %.sroa.0.0.copyload, %bb.ao ], [ undef, %bb.ac ]
  %.sroa.3.0 = phi i32 [ 1, %bb.ao ], [ 0, %bb.ac ]
  %.sroa.0.sroa.0.248..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 248
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0.sroa.0.248..sroa_idx, ptr noundef nonnull align 8 dereferenceable(168) %i.z, i64 168, i1 false)
  %.sroa.0.sroa.0.224..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.0.224..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(224) %i.o, i64 224, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %0, ptr noundef nonnull align 8 dereferenceable(416) %.sroa.0.sroa.0, i64 416, i1 false)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 %.sroa.3.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 420
  store i32 %.sroa.02.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i32 %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 452
  store i32 %.sroa.01.0.copyload, ptr %.sroa.7.0..sroa_idx, align 4
  br label %bb.ap

bb.af:                                            ; preds = %bb.ad
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn5token2EqNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr nonnull align 8 %i.k)
          to label %bb.ag unwind label %bb.ab

bb.ag:                                            ; preds = %bb.af
  %i.av = load i64, ptr %i.l, align 8
  %.not5 = icmp eq i64 %i.av, -1
  br i1 %.not5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %.invoke

bb.ai:                                            ; preds = %bb.ag
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.aw, align 8
  invoke void @_RNvNtNtCsJWcWohxsl6_3syn4path7parsing14const_argument(ptr nonnull sret([168 x i8]) align 8 %i.h, ptr align 8 %1)
          to label %bb.aj unwind label %bb.ab

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn4expr4ExprNtNtBO_5error5ErrorENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr nonnull sret([168 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
          to label %bb.ak unwind label %bb.ab

bb.ak:                                            ; preds = %bb.aj
  %i.ax = load i64, ptr %i.i, align 8
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  br label %.invoke

.invoke:                                          ; preds = %bb.ah, %bb.al
  %i.ba = phi ptr [ %i.g, %bb.al ], [ %i.f, %bb.ah ]
  %i.bb = phi ptr [ @53, %bb.al ], [ @54, %bb.ah ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtCsJWcWohxsl6_3syn8generics10ConstParamNtNtBO_5error5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1q_EE13from_residualBO_(ptr sret([456 x i8]) align 8 %0, ptr nonnull align 8 %i.ba, ptr nonnull align 8 %i.bb)
          to label %bb.aq unwind label %bb.ab

bb.am:                                            ; preds = %bb.ak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.j, ptr noundef nonnull align 8 dereferenceable(168) %i.i, i64 168, i1 false)
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.z, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false)
  br label %bb.aa

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.z, ptr noundef nonnull align 8 dereferenceable(168) %i.j, i64 168, i1 false)
  br label %bb.ae

bb.ap:                                            ; preds = %bb.bv, %bb.bs, %bb.bo, %bb.bi, %bb.ba, %bb.ae
  ret void

bb.aq:                                            ; preds = %.invoke
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsJWcWohxsl6_3syn2ty4TypeEBF_(ptr nonnull align 8 %i.o)
          to label %bb.at unwind label %bb.as

bb.ar:                                            ; preds = %bb.as, %bb.aa
  %.pn7.a = phi { ptr, i32 } [ %i.bd, %bb.as ], [ %.pn, %bb.aa ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.t) #17
          to label %bb.av unwind label %bb.au

bb.as:                                            ; preds = %bb.aq, %bb.y
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.at:                                            ; preds = %bb.y, %bb.aq
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.t)
          to label %bb.ax unwind label %bb.aw

bb.au:                                            ; preds = %bb.bt, %bb.bq, %bb.bm, %bb.bj, %bb.bg, %bb.bd, %bb.ay, %bb.av, %bb.ar, %bb.aa, %bb.v, %bb.q, %bb.l, %bb.g, %bb.b
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.av:                                            ; preds = %bb.aw, %bb.ar
  %.pn9.a = phi { ptr, i32 } [ %i.bf, %bb.aw ], [ %.pn7.a, %bb.ar ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #17
          to label %bb.ay unwind label %bb.au

bb.aw:                                            ; preds = %bb.at
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.ax:                                            ; preds = %bb.at
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y)
          to label %bb.ba unwind label %bb.az

bb.ay:                                            ; preds = %bb.az, %bb.av
  %.pn11.a = phi { ptr, i32 } [ %i.bg, %bb.az ], [ %.pn9.a, %bb.av ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
          to label %bb.bb unwind label %bb.au

bb.az:                                            ; preds = %bb.ax
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ax
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z)
  br label %bb.ap

bb.bb:                                            ; preds = %bb.bt, %bb.bq, %bb.bm, %bb.bg, %bb.ay, %bb.b
  %.pn23.pn = phi { ptr, i32 } [ %.pn23, %bb.bt ], [ %.pn21.a, %bb.bq ], [ %.pn19.a, %bb.bm ], [ %.pn15.a, %bb.bg ], [ %.pn11.a, %bb.ay ], [ %i.aa, %bb.b ]
  resume { ptr, i32 } %.pn23.pn

bb.bc:                                            ; preds = %bb.t
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs6lkCCFP1haM_11proc_macro25IdentEBD_(ptr nonnull align 8 %i.t)
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.be, %bb.v
  %.pn13.a = phi { ptr, i32 } [ %i.bh, %bb.be ], [ %i.ap, %bb.v ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #17
          to label %bb.bg unwind label %bb.au

bb.be:                                            ; preds = %bb.bc
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bc
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bh, %bb.bd
  %.pn15.a = phi { ptr, i32 } [ %i.bi, %bb.bh ], [ %.pn13.a, %bb.bd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
          to label %bb.bb unwind label %bb.au

bb.bh:                                            ; preds = %bb.bf
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z)
  br label %bb.ap

bb.bj:                                            ; preds = %bb.bk, %bb.q
  %.pn17.a = phi { ptr, i32 } [ %i.bj, %bb.bk ], [ %i.am, %bb.q ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y) #17
          to label %bb.bm unwind label %bb.au

bb.bk:                                            ; preds = %bb.o
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.o
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y)
          to label %bb.bo unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bn, %bb.bj
  %.pn19.a = phi { ptr, i32 } [ %i.bk, %bb.bn ], [ %.pn17.a, %bb.bj ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
          to label %bb.bb unwind label %bb.au

bb.bn:                                            ; preds = %bb.bl
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bo:                                            ; preds = %bb.bl
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z)
  br label %bb.ap

bb.bp:                                            ; preds = %bb.j
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsJWcWohxsl6_3syn4attr9AttributeEEB1c_(ptr nonnull align 8 %i.y)
          to label %bb.bs unwind label %bb.br

bb.bq:                                            ; preds = %bb.br, %bb.l
  %.pn21.a = phi { ptr, i32 } [ %i.bl, %bb.br ], [ %i.ai, %bb.l ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
          to label %bb.bb unwind label %bb.au

bb.br:                                            ; preds = %bb.bp
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bs:                                            ; preds = %bb.bp
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z)
  br label %bb.ap

bb.bt:                                            ; preds = %bb.bu, %bb.g
  %.pn23 = phi { ptr, i32 } [ %i.bm, %bb.bu ], [ %i.ae, %bb.g ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsJWcWohxsl6_3syn4expr4ExprEEB11_(ptr nonnull align 8 %i.z) #17
end_hunk_1
