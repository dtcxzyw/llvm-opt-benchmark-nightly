Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/jobserver-f27371c78abc2143.jobserver.bbcef5fd7be64a66-cgu.1?download=true
inline.NumInlined: 158
inline.NumDeleted: 11
begin_hunk_0_@_ZN9jobserver3imp6Client3new17h52b75e4a9a960851E:bb.a

bb.q:                                             ; preds = %bb.p
  %i.at = invoke ptr @_ZN3std2io5error5Error13last_os_error17hf00fb4982a518b2bE()
          to label %.noexc18 unwind label %.loopexit.split-lp

.noexc18:                                         ; preds = %bb.q
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !22
  br label %_ZN9jobserver3imp3cvt17hdd1e7b2e06074ee1E.exit.i15

bb.r:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.ar, ptr %i.av, align 4, !alias.scope !22
  br label %_ZN9jobserver3imp3cvt17hdd1e7b2e06074ee1E.exit.i15

_ZN9jobserver3imp3cvt17hdd1e7b2e06074ee1E.exit.i15: ; preds = %bb.r, %.noexc18
  %storemerge.i.i16 = phi i32 [ 0, %bb.r ], [ 1, %.noexc18 ]
  store i32 %storemerge.i.i16, ptr %i.a, align 8, !alias.scope !22
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd29248c8d8d5f24aE"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %_ZN9jobserver3imp3cvt17hdd1e7b2e06074ee1E.exit.i15
  %i.aw = load i32, ptr %i.b, align 8
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h6b196f078a559994E"(ptr %i.az, ptr nonnull align 8 @9)
          to label %bb.t unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.noexc19, %bb.s
  %.sroa.0.0.i17 = phi ptr [ null, %.noexc19 ], [ %i.ba, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bb = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %.sroa.0.0.i17)
          to label %bb.u unwind label %.loopexit.split-lp ; 2 uses

bb.u:                                             ; preds = %bb.t
  %.not11 = icmp eq ptr %i.bb, null
  br i1 %.not11, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  br label %"_ZN4core3ptr43drop_in_place$LT$jobserver..imp..Client$GT$17h09ed3cb346137009E.exit"

"_ZN4core3ptr43drop_in_place$LT$jobserver..imp..Client$GT$17h09ed3cb346137009E.exit": ; preds = %bb.aa, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit3.i", %bb.v, %bb.f
  ret void

bb.w:                                             ; preds = %.invoke
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.bc)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i" unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.y)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit2.i" unwind label %bb.ab

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i": ; preds = %bb.w
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.y)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit3.i" unwind label %bb.z

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit2.i": ; preds = %bb.z, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.bg, %bb.z ], [ %i.bd, %bb.x ] ; 2 uses
  %i.be = load ptr, ptr %i.j, align 8
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %common.resume, label %bb.y

bb.y:                                             ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit2.i"
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.j)
          to label %common.resume unwind label %bb.ab

bb.z:                                             ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i"
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit2.i"

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit3.i": ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i"
  %i.bh = load ptr, ptr %i.j, align 8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %"_ZN4core3ptr43drop_in_place$LT$jobserver..imp..Client$GT$17h09ed3cb346137009E.exit", label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit3.i"
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.j)
  br label %"_ZN4core3ptr43drop_in_place$LT$jobserver..imp..Client$GT$17h09ed3cb346137009E.exit"

bb.ab:                                            ; preds = %bb.y, %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

bb.ac:                                            ; preds = %.lr.ph
  %i.bk = invoke { ptr, i64 } @"_ZN4core5array85_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$5index17ha598ed6216be6f27E"(ptr nonnull align 1 @21, i64 %i.aq, ptr nonnull align 8 @22)
          to label %bb.ad unwind label %.loopexit ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  %i.bn = invoke ptr @_ZN3std2io5Write9write_all17hd36d4b919f9fbf07E(ptr nonnull align 8 %i.g, ptr align 1 %i.bl, i64 %i.bm)
          to label %bb.ae unwind label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.bo = invoke ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h27415ef205c99614E"(ptr %i.bn)
          to label %bb.af unwind label %.loopexit ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not12 = icmp eq ptr %i.bo, null
  br i1 %.not12, label %bb.o, label %.invoke

bb.ag:                                            ; preds = %bb.h
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9jobserver3imp6Client4open17h33e1bf365b901085E(ptr sret([40 x i8]) align 8 %0, ptr align 1 %1, i64 %2, i1 zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [4 x i8], align 4                 ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [4 x i8], align 4                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 15 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 8 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 4 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 4 uses
  %i.an = alloca [32 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 4 uses
  %i.ap = alloca [32 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 8 uses
  %i.ar = alloca [64 x i8], align 8               ; 11 uses
  %i.as = alloca [16 x i8], align 8               ; 20 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 4 uses
  %i.av = alloca [32 x i8], align 8               ; 6 uses
  %i.aw = alloca [4 x i8], align 4                ; 6 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 6 uses
  %i.ba = alloca [4 x i8], align 4                ; 6 uses
  %i.bb = alloca [80 x i8], align 8               ; 5 uses
  %i.bc = alloca [16 x i8], align 4               ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 4 uses
  %i.be = alloca [16 x i8], align 4               ; 4 uses
  %i.bf = alloca [16 x i8], align 8               ; 4 uses
  %i.bg = alloca [16 x i8], align 8               ; 6 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [4 x i8], align 4                ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 4 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 6 uses
  %i.bo = alloca [4 x i8], align 4                ; 7 uses
  %i.bp = alloca [32 x i8], align 8               ; 4 uses
  %i.bq = alloca [32 x i8], align 8               ; 4 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  %i.bs = alloca [16 x i8], align 8               ; 5 uses
  %i.bt = alloca [80 x i8], align 8               ; 5 uses
  %i.bu = alloca [16 x i8], align 8               ; 2 uses
  %i.bv = alloca [16 x i8], align 8               ; 2 uses
  %i.bw = alloca [48 x i8], align 8               ; 2 uses
  %i.bx = alloca [24 x i8], align 8               ; 2 uses
  %i.by = alloca [32 x i8], align 8               ; 2 uses
  %i.bz = alloca [40 x i8], align 8               ; 27 uses
  %i.ca = alloca [40 x i8], align 8               ; 5 uses
  %i.cb = alloca [32 x i8], align 8               ; 2 uses
  %i.cc = alloca [40 x i8], align 8               ; 11 uses
  %i.cd = alloca [40 x i8], align 8               ; 5 uses
  %i.ce = alloca [16 x i8], align 8               ; 3 uses
  store ptr %1, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 %2, ptr %i.cf, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !25)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt)
  call void @"_ZN4core3str21_$LT$impl$u20$str$GT$6splitn17hdbd5308a7926a5f9E"(ptr nonnull sret([80 x i8]) align 8 %i.bt, ptr align 1 %1, i64 %2, i64 2, i32 58), !noalias !25
  %i.cg = call { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42e43466b75e7aa1E"(ptr nonnull align 8 %i.bt), !noalias !25 ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i"

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @37) #18, !noalias !25
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i": ; preds = %bb.a
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1
  store ptr %i.ch, ptr %i.bs, align 8, !noalias !25
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !noalias !25
  %i.ck = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2ne17hce44b916eabbd359E"(ptr nonnull align 8 %i.bs, ptr nonnull align 8 @39), !noalias !25
  br i1 %i.ck, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i"
  %i.cl = call { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42e43466b75e7aa1E"(ptr nonnull align 8 %i.bt), !noalias !25 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  call void @"_ZN4core6option15Option$LT$T$GT$10ok_or_else17h472f0fb43c467f4eE"(ptr nonnull sret([32 x i8]) align 8 %i.bq, ptr align 1 %i.cm, i64 %i.cn), !noalias !25
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h9249c09eeae334d6E"(ptr nonnull sret([32 x i8]) align 8 %i.br, ptr nonnull align 8 %i.bq), !noalias !25
  %i.co = load i64, ptr %i.br, align 8, !noalias !25
  %.not.i = icmp eq i64 %i.co, -9223372036854775800
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i"
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i8 2, ptr %.sroa.1.0..sroa_idx.i, align 8, !alias.scope !25
  store i64 0, ptr %i.cc, align 8, !alias.scope !25
  br label %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %i.br, i64 32, i1 false), !noalias !25
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.cc, ptr nonnull align 8 %i.bp, ptr nonnull align 8 @43)
  br label %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit

bb.f:                                             ; preds = %bb.c
  %i.cp = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !25 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !25 ; 3 uses
  %i.ct = call { ptr, i64 } @_ZN3std4path4Path3new17h2183c902db25f3ecE(ptr align 1 %i.cq, i64 %i.cs), !noalias !25 ; 2 uses
  %i.cu = extractvalue { ptr, i64 } %i.ct, 0      ; 3 uses
  %i.cv = extractvalue { ptr, i64 } %i.ct, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !25
  call void @_ZN3std2fs11OpenOptions3new17h9501ea011dc5861fE(ptr nonnull sret([16 x i8]) align 4 %i.be), !noalias !28
  %i.cw = call align 4 ptr @_ZN3std2fs11OpenOptions4read17h05248fa0e87f13fdE(ptr nonnull align 4 %i.be, i1 zeroext true), !noalias !28
  %i.cx = call align 4 ptr @_ZN3std2fs11OpenOptions5write17h604b0345b6d66579E(ptr align 4 %i.cw, i1 zeroext true), !noalias !28
  call void @_ZN3std2fs11OpenOptions4open17h62e384e500e91bf4E(ptr nonnull sret([16 x i8]) align 8 %i.bf, ptr align 4 %i.cx, ptr align 1 %i.cu, i64 %i.cv), !noalias !28
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h9f351210c79b2e9cE"(ptr nonnull sret([32 x i8]) align 8 %i.bm, ptr nonnull align 8 %i.bf, ptr align 1 %i.cq, i64 %i.cs), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !25
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd489aba1303d0dfeE"(ptr nonnull sret([32 x i8]) align 8 %i.bn, ptr nonnull align 8 %i.bm), !noalias !25
  %i.cy = load i64, ptr %i.bn, align 8, !noalias !25
  %.not14.i = icmp eq i64 %i.cy, -9223372036854775800
  br i1 %.not14.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false), !noalias !25
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.cc, ptr nonnull align 8 %i.bl, ptr nonnull align 8 @42)
  br label %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit

bb.h:                                             ; preds = %bb.f
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !noalias !25
  store i32 %i.da, ptr %i.bo, align 4, !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !25
  invoke void @_ZN3std2fs11OpenOptions3new17h9501ea011dc5861fE(ptr nonnull sret([16 x i8]) align 4 %i.bc)
          to label %.noexc.i unwind label %bb.i, !noalias !25

.noexc.i:                                         ; preds = %bb.h
  %i.db = invoke align 4 ptr @_ZN3std2fs11OpenOptions4read17h05248fa0e87f13fdE(ptr nonnull align 4 %i.bc, i1 zeroext true)
          to label %.noexc20.i unwind label %bb.i, !noalias !25

.noexc20.i:                                       ; preds = %.noexc.i
  %i.dc = invoke align 4 ptr @_ZN3std2fs11OpenOptions5write17h604b0345b6d66579E(ptr align 4 %i.db, i1 zeroext true)
          to label %.noexc21.i unwind label %bb.i, !noalias !25

.noexc21.i:                                       ; preds = %.noexc20.i
  invoke void @_ZN3std2fs11OpenOptions4open17h62e384e500e91bf4E(ptr nonnull sret([16 x i8]) align 8 %i.bd, ptr align 4 %i.dc, ptr align 1 %i.cu, i64 %i.cv)
          to label %.noexc22.i unwind label %bb.i, !noalias !25

.noexc22.i:                                       ; preds = %.noexc21.i
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h9f351210c79b2e9cE"(ptr nonnull sret([32 x i8]) align 8 %i.bi, ptr nonnull align 8 %i.bd, ptr align 1 %i.cq, i64 %i.cs)
          to label %bb.j unwind label %bb.i, !noalias !25

bb.i:                                             ; preds = %bb.j, %.noexc22.i, %.noexc21.i, %.noexc20.i, %.noexc.i, %bb.h
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.bo)
          to label %common.resume unwind label %bb.s, !noalias !25

bb.j:                                             ; preds = %.noexc22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !25
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd489aba1303d0dfeE"(ptr nonnull sret([32 x i8]) align 8 %i.bj, ptr nonnull align 8 %i.bi)
          to label %bb.k unwind label %bb.i, !noalias !25

bb.k:                                             ; preds = %bb.j
  %i.de = load i64, ptr %i.bj, align 8, !noalias !25
  %.not15.i = icmp eq i64 %i.de, -9223372036854775800
  br i1 %.not15.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false), !noalias !25
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.cc, ptr nonnull align 8 %i.bh, ptr nonnull align 8 @41)
          to label %bb.u unwind label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !noalias !25 ; 2 uses
  store i32 %i.dg, ptr %i.bk, align 4, !noalias !25
  %i.dh = invoke { ptr, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17had6be8d201309f56E"(ptr align 1 %i.cu, i64 %i.cv, ptr nonnull align 8 @40)
          to label %bb.o unwind label %bb.n, !noalias !25 ; 2 uses

"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i": ; preds = %bb.q, %bb.p, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.di, %bb.n ], [ %i.dn, %bb.q ], [ %i.dn, %bb.p ]
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.bk)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i" unwind label %bb.s, !noalias !25

bb.n:                                             ; preds = %bb.m
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i"

bb.o:                                             ; preds = %bb.m
  %i.dj = extractvalue { ptr, i64 } %i.dh, 0      ; 2 uses
  %i.dk = extractvalue { ptr, i64 } %i.dh, 1
  store ptr %i.dj, ptr %i.bg, align 8, !noalias !25
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 %i.dk, ptr %i.dl, align 8, !noalias !25
  %i.dm = invoke i8 @_ZN4core4sync6atomic10AtomicBool3new17h923c4ff3718b70a2E(i1 zeroext false)
          to label %bb.r unwind label %bb.p, !noalias !25

bb.p:                                             ; preds = %bb.o
  %i.dn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.do = icmp eq ptr %i.dj, null
  br i1 %i.do, label %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.bg)
          to label %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i" unwind label %bb.s, !noalias !25

bb.r:                                             ; preds = %bb.o
  %i.dp = load i32, ptr %i.bo, align 4, !noalias !25
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i64 16, i1 false)
  %.sroa.29.0.insert.ext.i = zext i8 %i.dm to i16
  %.sroa.29.0.insert.shift.i = shl nuw i16 %.sroa.29.0.insert.ext.i, 8
  %.sroa.08.0.insert.insert.i = or disjoint i16 %.sroa.29.0.insert.shift.i, 1
  %.sroa.24.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %i.dp, ptr %.sroa.24.0..sroa_idx.i.a, align 8, !alias.scope !25
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 28
  store i32 %i.dg, ptr %.sroa.35.0..sroa_idx.i, align 4, !alias.scope !25
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i16 %.sroa.08.0.insert.insert.i, ptr %.sroa.46.0..sroa_idx.i, align 8, !alias.scope !25
  store i64 0, ptr %i.cc, align 8, !alias.scope !25
  br label %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit

bb.s:                                             ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i", %bb.q, %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i", %bb.i
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i": ; preds = %bb.t, %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i"
  %.pn17.i = phi { ptr, i32 } [ %i.ds, %bb.t ], [ %.pn.i, %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i" ]
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.bo)
          to label %common.resume unwind label %bb.s

bb.t:                                             ; preds = %bb.l
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i"

bb.u:                                             ; preds = %bb.l
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.bo)
  br label %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit

common.resume:                                    ; preds = %bb.bv, %bb.bx, %bb.bz, %bb.cb, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i", %bb.cx, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i", %bb.da, %.thread.i, %bb.dv, %bb.i, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i"
  %common.resume.op = phi { ptr, i32 } [ %.pn17.i, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit26.i" ], [ %i.dd, %bb.i ], [ %.pn75.i, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i" ], [ %i.fq, %bb.cb ], [ %.pn73.i, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i" ], [ %.pn73.i, %bb.cx ], [ %.pn75.i, %bb.da ], [ %.pn79134.i, %bb.dv ], [ %.pn79134.i, %.thread.i ], [ %i.fy, %bb.bv ], [ %i.fy, %bb.bx ], [ %i.fq, %bb.bz ]
  resume { ptr, i32 } %common.resume.op

_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit: ; preds = %bb.d, %bb.e, %bb.g, %bb.r, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hcf50cb579bc4896eE"(ptr nonnull sret([40 x i8]) align 8 %i.cd, ptr nonnull align 8 %i.cc)
  %i.dt = load i64, ptr %i.cd, align 8
  %i.du = trunc nuw i64 %i.dt to i1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  br i1 %i.du, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cb, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false)
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h0beb5e65fcf1104bE"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 8 %i.cb, ptr nonnull align 8 @30)
  br label %bb.dw

bb.w:                                             ; preds = %_ZN9jobserver3imp6Client9from_fifo17hc0adcf6951f9579eE.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %.sroa.2.0.copyload = load i8, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %.not = icmp eq i8 %.sroa.2.0.copyload, 2
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 33
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dw, ptr noundef nonnull align 8 dereferenceable(24) %i.dv, i64 24, i1 false)
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.36.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.3.0..sroa_idx, i64 7, i1 false)
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.2.0.copyload, ptr %.sroa.25.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.dw

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !31)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @"_ZN4core3str21_$LT$impl$u20$str$GT$6splitn17hdbd5308a7926a5f9E"(ptr nonnull sret([80 x i8]) align 8 %i.bb, ptr align 1 %1, i64 %2, i64 2, i32 44), !noalias !31
  %i.dx = call { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42e43466b75e7aa1E"(ptr nonnull align 8 %i.bb), !noalias !31 ; 2 uses
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0      ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.dy, null
  br i1 %.not.i.i19, label %bb.z, label %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i20"

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr nonnull align 8 @45) #18, !noalias !31
  unreachable

"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i20": ; preds = %bb.y
  %i.dz = call { ptr, i64 } @"_ZN91_$LT$core..str..iter..SplitN$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h42e43466b75e7aa1E"(ptr nonnull align 8 %i.bb), !noalias !31 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %i.eb = extractvalue { ptr, i64 } %i.dz, 1
  %.not.i21 = icmp eq ptr %i.ea, null
  br i1 %.not.i21, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i20"
  %i.ec = extractvalue { ptr, i64 } %i.dx, 1
  %i.ed = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h81ccfa3fd837436dE"(ptr nonnull align 1 %i.dy, i64 %i.ec), !noalias !31
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h6e5a2f316b0b807dE"(ptr nonnull sret([32 x i8]) align 8 %i.ay, i64 %i.ed), !noalias !31
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hacea4fc3ceff707fE"(ptr nonnull sret([32 x i8]) align 8 %i.az, ptr nonnull align 8 %i.ay), !noalias !31
  %i.ee = load i64, ptr %i.az, align 8, !noalias !31
  %.not62.i.a = icmp eq i64 %i.ee, -9223372036854775800
  br i1 %.not62.i.a, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$6unwrap17hfa30c54a9934bbc3E.exit.i20"
  %.sroa.1.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i8 2, ptr %.sroa.1.0..sroa_idx.i24, align 8, !alias.scope !31
  store i64 0, ptr %i.bz, align 8, !alias.scope !31
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false), !noalias !31
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.ax, ptr nonnull align 8 @55)
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.ad:                                            ; preds = %bb.aa
  %i.ef = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.eg = load i32, ptr %i.ef, align 8, !noalias !31
  store i32 %i.eg, ptr %i.ba, align 4, !noalias !31
  %i.eh = call i64 @"_ZN4core3str21_$LT$impl$u20$str$GT$5parse17h81ccfa3fd837436dE"(ptr nonnull align 1 %i.ea, i64 %i.eb), !noalias !31
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17h4c5f511fe51cd91dE"(ptr nonnull sret([32 x i8]) align 8 %i.au, i64 %i.eh), !noalias !31
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hacea4fc3ceff707fE"(ptr nonnull sret([32 x i8]) align 8 %i.av, ptr nonnull align 8 %i.au), !noalias !31
  %i.ei = load i64, ptr %i.av, align 8, !noalias !31
  %.not63.i = icmp eq i64 %i.ei, -9223372036854775800
  br i1 %.not63.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull align 8 dereferenceable(32) %i.av, i64 32, i1 false), !noalias !31
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.at, ptr nonnull align 8 @54)
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.af:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ek = load i32, ptr %i.ej, align 8, !noalias !31 ; 4 uses
  store i32 %i.ek, ptr %i.aw, align 4, !noalias !31
  %i.el = load i32, ptr %i.ba, align 4, !noalias !31 ; 4 uses
  %i.em = icmp slt i32 %i.el, 0
  br i1 %i.em, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = icmp slt i32 %i.ek, 0
  br i1 %i.en, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 -9223372036854775803, ptr %i.eo, align 8, !alias.scope !31
  %.sroa.212.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.el, ptr %.sroa.212.0..sroa_idx.i, align 8, !alias.scope !31
  store i64 1, ptr %i.bz, align 8, !alias.scope !31
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %i.el, ptr %i.ep, align 8, !noalias !31
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %i.ek, ptr %i.eq, align 4, !noalias !31
end_hunk_0
begin_hunk_1_@_ZN9jobserver3imp6Client4open17h33e1bf365b901085E:bb.a
  invoke fastcc void @_ZN9jobserver3imp8fd_check17hc36aaed08b76d617E(ptr noalias align 8 %i.aq, i32 %i.el, i1 zeroext %3)
          to label %bb.al unwind label %bb.ak, !noalias !31

bb.aj:                                            ; preds = %bb.ag
  %i.er = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i64 -9223372036854775803, ptr %i.er, align 8, !alias.scope !31
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store i32 %i.ek, ptr %.sroa.215.0..sroa_idx.i, align 8, !alias.scope !31
  store i64 1, ptr %i.bz, align 8, !alias.scope !31
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i": ; preds = %bb.cg, %bb.cf, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ak:                                            ; preds = %bb.dm, %bb.cm, %bb.cl, %.noexc95.i, %.noexc94.i.a, %.noexc93.i.a, %.thread180.i, %bb.ai
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.al:                                            ; preds = %bb.ai
  %i.et = load i32, ptr %i.aw, align 4, !noalias !31
  invoke fastcc void @_ZN9jobserver3imp8fd_check17hc36aaed08b76d617E(ptr noalias align 8 %i.ap, i32 %i.et, i1 zeroext %3)
          to label %bb.ao unwind label %bb.am, !noalias !31

bb.am:                                            ; preds = %bb.al
  %i.eu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ev = load i64, ptr %i.aq, align 8, !noalias !31
  %i.ew = icmp eq i64 %i.ev, -9223372036854775800
  br i1 %i.ew, label %.thread.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.aq)
          to label %.thread.i unwind label %bb.by, !noalias !31

bb.ao:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !31
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ex, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !31
  %i.ey = load i64, ptr %i.ar, align 8, !noalias !31
  %cond.i = icmp eq i64 %i.ey, -9223372036854775802
  br i1 %cond.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ez = load i64, ptr %i.ex, align 8, !noalias !31
  %cond82.i = icmp eq i64 %i.ez, -9223372036854775802
  br i1 %cond82.i, label %bb.au, label %bb.at

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !31
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b3ee93612595dfaE"(ptr nonnull sret([32 x i8]) align 8 %i.an, ptr nonnull align 8 %i.ao)
          to label %bb.ar unwind label %bb.dt, !noalias !31

bb.ar:                                            ; preds = %bb.aq
  %i.fa = load i64, ptr %i.an, align 8, !noalias !31
  %.not70.i.a = icmp eq i64 %i.fa, -9223372036854775800
  br i1 %.not70.i.a, label %bb.ck, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.am, ptr nonnull align 8 @46)
          to label %bb.dl unwind label %bb.dt

bb.at:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 32, i1 false), !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !31
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b3ee93612595dfaE"(ptr nonnull sret([32 x i8]) align 8 %i.ag, ptr nonnull align 8 %i.ai)
          to label %bb.ax unwind label %bb.do, !noalias !31

bb.au:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !31
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b3ee93612595dfaE"(ptr nonnull sret([32 x i8]) align 8 %i.ak, ptr nonnull align 8 %i.al)
          to label %bb.av unwind label %bb.dr, !noalias !31

bb.av:                                            ; preds = %bb.au
  %i.fb = load i64, ptr %i.ak, align 8, !noalias !31
  %.not69.i = icmp eq i64 %i.fb, -9223372036854775800
  br i1 %.not69.i, label %bb.ch, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.aj, ptr nonnull align 8 @47)
          to label %bb.di unwind label %bb.dr

bb.ax:                                            ; preds = %bb.at
  %i.fc = load i64, ptr %i.ag, align 8, !noalias !31
  %.not66.not.i = icmp eq i64 %i.fc, -9223372036854775800
  br i1 %.not66.not.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.af, ptr nonnull align 8 @53)
          to label %bb.dg unwind label %bb.do

bb.az:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !31
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h0b3ee93612595dfaE"(ptr nonnull sret([32 x i8]) align 8 %i.ae, ptr nonnull align 8 %i.ad)
          to label %bb.ba unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.ba:                                            ; preds = %bb.az
  %i.fd = load i64, ptr %i.ae, align 8, !noalias !31
  %.not67.i = icmp eq i64 %i.fd, -9223372036854775800
  br i1 %.not67.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.ac, ptr nonnull align 8 @52)
          to label %.thread185.thread.i unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i"

bb.bc:                                            ; preds = %bb.ba
  invoke void @_ZN4core3fmt2rt8Argument11new_display17hea7ea841919da35dE(ptr nonnull sret([16 x i8]) align 8 %i.v, ptr nonnull align 4 %i.ba)
          to label %bb.bd unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !noalias !31
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h65e8f3ba6cf81d34E"(ptr nonnull sret([48 x i8]) align 8 %i.x, ptr nonnull align 8 @49, ptr nonnull align 8 %i.w)
          to label %bb.be unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.be:                                            ; preds = %bb.bd
  invoke void @_ZN5alloc3fmt6format17h1b00fe0ab018bb44E(ptr nonnull sret([24 x i8]) align 8 %i.y, ptr nonnull align 8 %i.x)
          to label %bb.bf unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !31
  invoke void @_ZN3std2fs4File4open17hc1056e68852100a0E(ptr nonnull sret([16 x i8]) align 8 %i.aa, ptr nonnull align 8 %i.z)
          to label %bb.bg unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZN3std2fs11OpenOptions3new17h9501ea011dc5861fE(ptr nonnull sret([16 x i8]) align 4 %i.t)
          to label %bb.bi unwind label %bb.bh, !noalias !31

bb.bh:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bg
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.aa) #19
          to label %.thread.i unwind label %bb.by, !noalias !31

bb.bi:                                            ; preds = %bb.bg
  %i.ff = invoke align 4 ptr @_ZN3std2fs11OpenOptions5write17h604b0345b6d66579E(ptr nonnull align 4 %i.t, i1 zeroext true)
          to label %bb.bj unwind label %bb.bh, !noalias !31

bb.bj:                                            ; preds = %bb.bi
  invoke void @_ZN4core3fmt2rt8Argument11new_display17hea7ea841919da35dE(ptr nonnull sret([16 x i8]) align 8 %i.o, ptr nonnull align 4 %i.aw)
          to label %bb.bk unwind label %bb.bh, !noalias !31

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !31
  invoke void @"_ZN4core3fmt2rt38_$LT$impl$u20$core..fmt..Arguments$GT$6new_v117h65e8f3ba6cf81d34E"(ptr nonnull sret([48 x i8]) align 8 %i.q, ptr nonnull align 8 @49, ptr nonnull align 8 %i.p)
          to label %bb.bl unwind label %bb.bh, !noalias !31

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN5alloc3fmt6format17h1b00fe0ab018bb44E(ptr nonnull sret([24 x i8]) align 8 %i.r, ptr nonnull align 8 %i.q)
          to label %bb.bm unwind label %bb.bh, !noalias !31

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !31
  invoke void @_ZN3std2fs11OpenOptions4open17h4d2f3956d872add1E(ptr nonnull sret([16 x i8]) align 8 %i.u, ptr align 4 %i.ff, ptr nonnull align 8 %i.s)
          to label %bb.bn unwind label %bb.bh, !noalias !31

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !noalias !31
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 12 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !noalias !31
  %i.fh = load i32, ptr %i.ab, align 8, !noalias !31
  %i.fi = trunc i32 %i.fh to i1                   ; 2 uses
  %i.fj = load i32, ptr %i.fg, align 8, !noalias !31
  %i.fk = trunc i32 %i.fj to i1
  %or.cond.i = select i1 %i.fi, i1 true, i1 %i.fk
  br i1 %or.cond.i, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.fi, label %bb.cc, label %bb.cd

bb.bp:                                            ; preds = %bb.bn
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !noalias !31 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.fo = load i32, ptr %i.fn, align 4, !noalias !31 ; 2 uses
  store i32 %i.fm, ptr %i.n, align 4, !noalias !31
  store i32 %i.fo, ptr %i.m, align 4, !noalias !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !noalias !31
  %i.fp = invoke i8 @_ZN4core4sync6atomic10AtomicBool3new17h923c4ff3718b70a2E(i1 zeroext false)
          to label %bb.bs unwind label %bb.bq, !noalias !31

bb.bq:                                            ; preds = %bb.bp
  %i.fq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fr = load ptr, ptr %i.l, align 8, !noalias !31
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i22", label %bb.br

bb.br:                                            ; preds = %bb.bq
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.l)
          to label %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i22" unwind label %bb.by, !noalias !31

bb.bs:                                            ; preds = %bb.bp
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false)
  %.sroa.226.0.insert.ext.i = zext i8 %i.fp to i16
  %.sroa.226.0.insert.shift.i = shl nuw i16 %.sroa.226.0.insert.ext.i, 8
  %.sroa.025.0.insert.insert.i = or disjoint i16 %.sroa.226.0.insert.shift.i, 1
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.fm, ptr %.sroa.221.0..sroa_idx.i, align 8, !alias.scope !31
  %.sroa.322.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 %i.fo, ptr %.sroa.322.0..sroa_idx.i, align 4, !alias.scope !31
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i16 %.sroa.025.0.insert.insert.i, ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !31
  store i64 0, ptr %i.bz, align 8, !alias.scope !31
  %i.fu = load i32, ptr %i.ab, align 8, !noalias !31
  %i.fv = trunc i32 %i.fu to i1
  br i1 %i.fv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.ab)
          to label %bb.bu unwind label %bb.bv, !noalias !31

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.fw = load i32, ptr %i.fg, align 8, !noalias !31
  %i.fx = trunc i32 %i.fw to i1
  br i1 %i.fx, label %bb.bw, label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.bv:                                            ; preds = %bb.bt
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load i32, ptr %i.fg, align 8, !noalias !31
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %common.resume, label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  call void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.fg), !noalias !31
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.bx:                                            ; preds = %bb.bv
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.fg) #19
          to label %common.resume unwind label %bb.by, !noalias !31

bb.by:                                            ; preds = %bb.dv, %bb.du, %bb.ds, %bb.dp, %bb.df, %bb.de, %bb.da, %bb.cx, %bb.cv, %bb.cq, %bb.cb, %bb.ca, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i23", %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i22", %bb.bx, %bb.br, %bb.bh, %bb.an
  %i.gb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #20
  unreachable

"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i22": ; preds = %bb.br, %bb.bq
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.m)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i23" unwind label %bb.by, !noalias !31

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i23": ; preds = %"_ZN4core3ptr54drop_in_place$LT$jobserver..imp..ClientCreationArg$GT$17h370c0a04ddac28f0E.exit.i22"
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.n)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit86.i" unwind label %bb.by, !noalias !31

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit86.i": ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit.i23"
  %i.gc = load i32, ptr %i.ab, align 8, !noalias !31
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.ca, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit86.i"
  %i.ge = load i32, ptr %i.fg, align 8, !noalias !31
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %common.resume, label %bb.cb

bb.ca:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit86.i"
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.ab) #19
          to label %bb.bz unwind label %bb.by, !noalias !31

bb.cb:                                            ; preds = %bb.bz
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.fg) #19
          to label %common.resume unwind label %bb.by, !noalias !31

bb.cc:                                            ; preds = %bb.bo
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.ab)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit88.i" unwind label %bb.ce, !noalias !31

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit88.i": ; preds = %bb.cd, %bb.cc
  %i.gg = load i32, ptr %i.fg, align 8, !noalias !31
  %i.gh = trunc i32 %i.gg to i1
  br i1 %i.gh, label %bb.cf, label %bb.cg

bb.cd:                                            ; preds = %bb.bo
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.gi)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit88.i" unwind label %bb.ce, !noalias !31

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.gj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gk = load i32, ptr %i.fg, align 8, !noalias !31
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %bb.df, label %bb.de

bb.cf:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit88.i"
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.fg)
          to label %.thread180.i unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.cg:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit88.i"
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.gm)
          to label %.thread180.i unwind label %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i", !noalias !31

bb.ch:                                            ; preds = %bb.av
  %i.gn = load i64, ptr %i.ar, align 8, !noalias !31
  %i.go = icmp eq i64 %i.gn, -9223372036854775800
  br i1 %i.go, label %.thread180.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ar)
          to label %.thread180.i unwind label %bb.cj, !noalias !31

bb.cj:                                            ; preds = %bb.ci
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread180.i:                                     ; preds = %bb.cl, %bb.ck, %bb.ci, %bb.ch, %bb.cg, %bb.cf
  %i.gq = load i32, ptr %i.ba, align 4, !noalias !31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !31
  store i32 %i.gq, ptr %i.d, align 4, !noalias !34
  %i.gr = invoke i32 @_ZN3std2os2fd5owned10BorrowedFd10borrow_raw17h3b1c79715199a187E(i32 %i.gq, ptr nonnull align 8 @10)
          to label %.noexc93.i.a unwind label %bb.ak, !noalias !31

.noexc93.i.a:                                     ; preds = %.thread180.i
  store i32 %i.gr, ptr %i.a, align 4, !noalias !34
  invoke void @_ZN3std2os2fd5owned10BorrowedFd18try_clone_to_owned17hb1377e609e428889E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 4 %i.a)
          to label %.noexc94.i.a unwind label %bb.ak, !noalias !31

.noexc94.i.a:                                     ; preds = %.noexc93.i.a
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$3map17h8a5ebea7659b003dE"(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
          to label %.noexc95.i unwind label %bb.ak, !noalias !31

.noexc95.i:                                       ; preds = %.noexc94.i.a
  invoke void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hebb05c44ea22a25bE"(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.c, ptr nonnull align 4 %i.d)
          to label %bb.cm unwind label %bb.ak, !noalias !31

bb.ck:                                            ; preds = %bb.ar
  %i.gs = load i64, ptr %i.ex, align 8, !noalias !31
  %i.gt = icmp eq i64 %i.gs, -9223372036854775800
  br i1 %i.gt, label %.thread180.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ex)
          to label %.thread180.i unwind label %bb.ak, !noalias !31

bb.cm:                                            ; preds = %.noexc95.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !31
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd489aba1303d0dfeE"(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
          to label %bb.cn unwind label %bb.ak, !noalias !31

bb.cn:                                            ; preds = %bb.cm
  %i.gu = load i64, ptr %i.j, align 8, !noalias !31
  %.not71.i.a = icmp eq i64 %i.gu, -9223372036854775800
  br i1 %.not71.i.a, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.h, ptr nonnull align 8 @51)
          to label %bb.dc unwind label %bb.db

bb.cp:                                            ; preds = %bb.cn
  %i.gv = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.gw = load i32, ptr %i.gv, align 8, !noalias !31
  store i32 %i.gw, ptr %i.k, align 4, !noalias !31
  %i.gx = load i32, ptr %i.aw, align 4, !noalias !31
  invoke fastcc void @_ZN9jobserver3imp24clone_fd_and_set_cloexec17hfab7c77e2e79f6a7E(ptr noalias align 8 %i.f, i32 %i.gx)
          to label %bb.cr unwind label %bb.cq, !noalias !31

bb.cq:                                            ; preds = %bb.cr, %bb.cp
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.k)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i" unwind label %bb.by, !noalias !31

bb.cr:                                            ; preds = %bb.cp
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hd489aba1303d0dfeE"(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f)
          to label %bb.cs unwind label %bb.cq, !noalias !31

bb.cs:                                            ; preds = %bb.cr
  %i.gz = load i64, ptr %i.g, align 8, !noalias !31
  %.not72.i = icmp eq i64 %i.gz, -9223372036854775800
  br i1 %.not72.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !31
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h3a10f822e55655acE"(ptr nonnull sret([40 x i8]) align 8 %i.bz, ptr nonnull align 8 %i.e, ptr nonnull align 8 @50)
          to label %bb.cw unwind label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !noalias !31
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hc, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.hd = load i32, ptr %i.k, align 4, !noalias !31
  %.sroa.234.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  store i32 %i.hd, ptr %.sroa.234.0..sroa_idx.i, align 8, !alias.scope !31
  %.sroa.335.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 28
  store i32 %i.hb, ptr %.sroa.335.0..sroa_idx.i, align 4, !alias.scope !31
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  store i16 0, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !31
  store i64 0, ptr %i.bz, align 8, !alias.scope !31
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.cv:                                            ; preds = %bb.ct
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.k)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i" unwind label %bb.by

bb.cw:                                            ; preds = %bb.ct
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.k)
          to label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit104.i" unwind label %bb.cy

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i": ; preds = %bb.cy, %bb.cv
  %.pn73.i = phi { ptr, i32 } [ %i.hh, %bb.cy ], [ %i.he, %bb.cv ] ; 2 uses
  %i.hf = load ptr, ptr %i.as, align 8, !noalias !31
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %common.resume, label %bb.cx

bb.cx:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i"
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
          to label %common.resume unwind label %bb.by

bb.cy:                                            ; preds = %bb.cw
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit102.i"

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit104.i": ; preds = %bb.cw
  %i.hi = load ptr, ptr %i.as, align 8, !noalias !31
  %i.hj = icmp eq ptr %i.hi, null
  br i1 %i.hj, label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit, label %bb.cz

bb.cz:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit104.i"
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i": ; preds = %bb.db, %bb.cq
  %.pn75.i = phi { ptr, i32 } [ %i.hm, %bb.db ], [ %i.gy, %bb.cq ] ; 2 uses
  %i.hk = load ptr, ptr %i.as, align 8, !noalias !31
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %common.resume, label %bb.da

bb.da:                                            ; preds = %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i"
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
          to label %common.resume unwind label %bb.by

bb.db:                                            ; preds = %bb.co
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit100.i"

bb.dc:                                            ; preds = %bb.co
  %i.hn = load ptr, ptr %i.as, align 8, !noalias !31
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.de:                                            ; preds = %bb.ce
  invoke void @"_ZN4core3ptr86drop_in_place$LT$core..result..Result$LT$std..fs..File$C$std..io..error..Error$GT$$GT$17h40c324663b13faf9E"(ptr nonnull align 8 %i.fg) #19
          to label %.thread.i unwind label %bb.by, !noalias !31

bb.df:                                            ; preds = %bb.ce
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  invoke void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17h60b6c83d84728757E"(ptr nonnull align 4 %i.hp)
          to label %.thread.i unwind label %bb.by, !noalias !31

bb.dg:                                            ; preds = %bb.ay
  %i.hq = load i64, ptr %i.ah, align 8, !noalias !31
  %i.hr = icmp eq i64 %i.hq, -9223372036854775800
  br i1 %i.hr, label %.thread185.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ah)
          to label %.thread185.i unwind label %bb.dq

bb.di:                                            ; preds = %bb.aw
  %i.hs = load i64, ptr %i.ar, align 8, !noalias !31
  %i.ht = icmp eq i64 %i.hs, -9223372036854775800
  br i1 %i.ht, label %.thread185.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ar)
          to label %.thread185.i unwind label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread185.i:                                     ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %i.hv = load ptr, ptr %i.as, align 8, !noalias !31
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit, label %bb.dn

bb.dl:                                            ; preds = %bb.as
  %i.hx = load i64, ptr %i.ex, align 8, !noalias !31
  %i.hy = icmp eq i64 %i.hx, -9223372036854775800
  br i1 %i.hy, label %.thread185.thread.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ex)
          to label %.thread185.thread.i unwind label %bb.ak

.thread185.thread.i:                              ; preds = %bb.dm, %bb.dl, %bb.bb
  %.old.i = load ptr, ptr %i.as, align 8, !noalias !31
  %.old225.i = icmp eq ptr %.old.i, null
  br i1 %.old225.i, label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit, label %bb.dn

bb.dn:                                            ; preds = %.thread185.thread.i, %.thread185.i
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
  br label %_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit

bb.do:                                            ; preds = %bb.ay, %bb.at
  %lpad.thr_comm.split-lp172.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hz = load i64, ptr %i.ah, align 8, !noalias !31
  %i.ia = icmp eq i64 %i.hz, -9223372036854775800
  br i1 %i.ia, label %.thread.i, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ah)
          to label %.thread.i unwind label %bb.by

bb.dq:                                            ; preds = %bb.dh
  %lpad.thr_comm.split-lp202.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.dr:                                            ; preds = %bb.aw, %bb.au
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ib = load i64, ptr %i.ar, align 8, !noalias !31
  %i.ic = icmp eq i64 %i.ib, -9223372036854775800
  br i1 %i.ic, label %.thread.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ar)
          to label %.thread.i unwind label %bb.by

bb.dt:                                            ; preds = %bb.as, %bb.aq
  %lpad.thr_comm201.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load i64, ptr %i.ex, align 8, !noalias !31
  %i.ie = icmp eq i64 %i.id, -9223372036854775800
  br i1 %i.ie, label %.thread.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h397090c21ee143fdE"(ptr nonnull align 8 %i.ex)
          to label %.thread.i unwind label %bb.by

.thread.i:                                        ; preds = %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dk, %bb.df, %bb.de, %bb.cj, %bb.bh, %bb.an, %bb.am, %bb.ak, %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i"
  %.pn79134.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %"_ZN4core3ptr95drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$jobserver..error..FromEnvErrorInner$GT$$GT$17h5ff86ce3b84ef2c0E.exit129.thread235.i" ], [ %i.eu, %bb.am ], [ %i.gp, %bb.cj ], [ %i.eu, %bb.an ], [ %lpad.thr_comm201.i, %bb.du ], [ %lpad.thr_comm201.i, %bb.dt ], [ %i.gj, %bb.df ], [ %i.fe, %bb.bh ], [ %i.gj, %bb.de ], [ %lpad.thr_comm.split-lp172.i, %bb.dp ], [ %lpad.thr_comm.split-lp172.i, %bb.do ], [ %lpad.thr_comm.split-lp.i, %bb.ds ], [ %lpad.thr_comm.split-lp.i, %bb.dr ], [ %i.hu, %bb.dk ], [ %lpad.thr_comm.split-lp202.i, %bb.dq ], [ %i.es, %bb.ak ] ; 2 uses
  %i.if = load ptr, ptr %i.as, align 8, !noalias !31
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %common.resume, label %bb.dv

bb.dv:                                            ; preds = %.thread.i
  invoke void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0cc5774d22a2f6dfE"(ptr nonnull align 8 %i.as)
          to label %common.resume unwind label %bb.by

_ZN9jobserver3imp6Client9from_pipe17h7dce4dded359e1f4E.exit: ; preds = %bb.ab, %bb.ac, %bb.ae, %bb.ah, %bb.aj, %bb.bu, %bb.bw, %bb.cu, %"_ZN4core3ptr34drop_in_place$LT$std..fs..File$GT$17h8e51869870192f3aE.exit104.i", %bb.cz, %bb.dc, %bb.dd, %.thread185.i, %.thread185.thread.i, %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
end_hunk_1
