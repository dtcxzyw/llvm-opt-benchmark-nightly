Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4anki13import_export7package5media11MediaCopier4copy17hafac7f82e10fcf54E:bb.a
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [104 x i8], align 8               ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 8 uses
  %i.g = alloca [112 x i8], align 8               ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [64 x i8], align 8                ; 9 uses
  %i.j = alloca [104 x i8], align 8               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.k)
  store i64 0, ptr %i.j, align 8, !alias.scope !3948
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3948
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3948
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.l, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 65552
  %i.n = load i8, ptr %i.m, align 8, !range !16, !alias.scope !3949, !noundef !6
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.p = load i64, ptr %1, align 8, !range !9, !alias.scope !3949, !noundef !6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3949
  store i64 2, ptr %1, align 8, !alias.scope !3949
  %.not.i = icmp eq i64 %i.p, 2
  br i1 %.not.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3949
  call void @_ZN4zstd6stream3raw7Encoder15with_dictionary17h4d2073b702ccfdcdE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !noalias !3949
  call void @llvm.experimental.noalias.scope.decl(metadata !3950)
  %i.s = load i64, ptr %i.b, align 8, !range !9, !alias.scope !3950, !noalias !3949, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %i.s, 2
  br i1 %i.t, label %bb.d, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i", !prof !14

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3951
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3950, !noalias !3949, !nonnull !6, !noundef !6
  store ptr %i.v, ptr %i.a, align 8, !noalias !3951
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @563, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #50
          to label %bb.f unwind label %bb.e, !noalias !3951

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %common.resume unwind label %bb.g, !noalias !3951

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !3951
  unreachable

common.resume:                                    ; preds = %.thread, %.thread74, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.e ], [ %.pn73, %.thread ], [ %i.au, %.thread74 ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i": ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !3950, !noalias !3949, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3949
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i", %bb.b
  %.sroa.3.0.i.ph = phi ptr [ %i.r, %bb.b ], [ %i.z, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i" ]
  %.sroa.0.0.i.ph = phi i64 [ %i.p, %bb.b ], [ %i.s, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN4zstd6stream3zio6writer19Writer$LT$W$C$D$GT$17new_with_capacity17h07c63813f3dd95b9E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(296) %3, i64 noundef %.sroa.0.0.i.ph, ptr noundef %.sroa.3.0.i.ph, i64 noundef 32768)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %3, ptr %i.aa, align 8
  store i64 2, ptr %i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.val61 = load ptr, ptr %2, align 8, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val62 = load ptr, ptr %i.ab, align 8, !nonnull !6, !align !10, !noundef !6
  %i.ac = getelementptr inbounds nuw i8, ptr %.val62, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !invariant.load !6, !noalias !3952, !nonnull !6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.ad, %bb.j
  %.sroa.0.0.ph = phi i64 [ %i.ax, %bb.ad ], [ 0, %bb.j ] ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %.outer, %bb.t
  %i.af = invoke { i64, ptr } %i.ad(ptr noundef nonnull align 1 %.val61, ptr noalias noundef nonnull align 1 %i.l, i64 noundef 65536)
          to label %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit" unwind label %.thread78.loopexit.loopexit, !inline_history !3913 ; 2 uses

.thread78.loopexit.loopexit:                      ; preds = %bb.k
  %lpad.loopexit85 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread78.loopexit.loopexit.split-lp:             ; preds = %bb.aa, %bb.y, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread78.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit": ; preds = %bb.k
  %i.ag = extractvalue { i64, ptr } %i.af, 0
  %i.ah = extractvalue { i64, ptr } %i.af, 1      ; 6 uses
  %i.ai = trunc nuw i64 %i.ag to i1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit"
  %i.aj = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.ah)
  %i.ak = icmp eq i8 %i.aj, 35
  br i1 %i.ak, label %bb.s, label %.thread81

bb.m:                                             ; preds = %"_ZN3std2io5impls70_$LT$impl$u20$std..io..Read$u20$for$u20$alloc..boxed..Box$LT$R$GT$$GT$4read17h8bf4a089015cb1dfE.exit"
  %i.al = ptrtoint ptr %i.ah to i64               ; 8 uses
  %i.am = icmp eq ptr %i.ah, null
  br i1 %i.am, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false)
  call void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$6finish17h82d301d09674bd25E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.an = load i64, ptr %i.f, align 8, !range !38, !noundef !6 ; 2 uses
  %.not58 = icmp eq i64 %i.an, -9223372036854775773
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = load i64, ptr %i.ao, align 8            ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  br i1 %.not58, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.455.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.an, ptr %0, align 8
  %.sroa.253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ap, ptr %.sroa.253.0..sroa_idx, align 8
  %.sroa.354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ar, ptr %.sroa.354.0..sroa_idx, align 8
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.as = load i64, ptr %1, align 8, !range !9, !alias.scope !3953, !noundef !6
  %cond.i = icmp eq i64 %i.as, 0
  br i1 %cond.i, label %bb.q, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit"

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  invoke void @"_ZN57_$LT$zstd_safe..CCtx$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b641d318e46a9baE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit" unwind label %.thread74

.thread74:                                        ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ap, ptr %1, align 8
  store ptr %i.ar, ptr %i.at, align 8
  br label %common.resume

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit": ; preds = %bb.p, %bb.q
  store i64 %i.ap, ptr %1, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ar, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call fastcc void @_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E(ptr noalias noundef align 1 captures(address) dereferenceable(20) %.sroa.421.0..sroa_idx, ptr noalias noundef readonly align 8 captures(address) dereferenceable(104) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.ph, ptr %i.aw, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.af, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

4:                                                ; preds = %bb.s
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.s:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ah, ptr %i.h, align 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.t unwind label %4

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

.thread81:                                        ; preds = %bb.l
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, align 8
  %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx, align 8
  %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775795, ptr %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, align 8
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ah, ptr %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx, align 8
  br label %bb.af

bb.u:                                             ; preds = %bb.m
  %i.ax = add i64 %.sroa.0.0.ph, %i.al
  %i.ay = icmp ult ptr %i.ah, inttoptr (i64 65537 to ptr)
  br i1 %i.ay, label %bb.w, label %bb.v, !prof !18

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.al, i64 noundef 65536, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #50
          to label %bb.ae unwind label %.thread78.loopexit.split-lp

bb.w:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !3954)
  call void @llvm.experimental.noalias.scope.decl(metadata !3955)
  call void @llvm.experimental.noalias.scope.decl(metadata !3956)
  call void @llvm.experimental.noalias.scope.decl(metadata !3957)
  %i.az = load i8, ptr %i.ae, align 8, !alias.scope !3958, !noalias !3959, !noundef !6 ; 3 uses
  %i.ba = zext nneg i8 %i.az to i64               ; 4 uses
  %i.bb = icmp ult i8 %i.az, 64
  call void @llvm.assume(i1 %i.bb)
  %i.bc = sub nuw nsw i64 64, %i.ba               ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %i.al
  br i1 %i.bd, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = icmp eq i8 %i.az, 0
  br i1 %i.be, label %.noexc63, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

.noexc63:                                         ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.x
  %.sroa.7.0.i.i.i = phi i64 [ %i.al, %bb.x ], [ %i.bk, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.l, %bb.x ], [ %i.bl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.bf = lshr i64 %.sroa.7.0.i.i.i, 6            ; 3 uses
  %i.bg = and i64 %.sroa.7.0.i.i.i, -64
  %i.bh = and i64 %.sroa.7.0.i.i.i, 63            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.bg
  %i.bj = icmp eq i64 %i.bf, 0
  br i1 %i.bj, label %.noexc64, label %bb.y

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.x
  %i.bk = sub nuw i64 %i.al, %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 8 %i.l, i64 %i.bc, i1 false), !alias.scope !3960, !noalias !3961
  %i.bn = load i64, ptr %i.j, align 8, !alias.scope !3962, !noalias !3963, !noundef !6
  %i.bo = add i64 %i.bn, 1
  store i64 %i.bo, ptr %i.j, align 8, !alias.scope !3962, !noalias !3963
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.k, i64 noundef range(i64 1, 0) 1)
          to label %.noexc63 unwind label %.thread78.loopexit.loopexit.split-lp

bb.y:                                             ; preds = %.noexc63
  %i.bp = load i64, ptr %i.j, align 8, !alias.scope !3964, !noalias !3965, !noundef !6
  %i.bq = add i64 %i.bp, %i.bf
  store i64 %i.bq, ptr %i.j, align 8, !alias.scope !3964, !noalias !3965
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.bf)
          to label %.noexc64 unwind label %.thread78.loopexit.loopexit.split-lp

.noexc64:                                         ; preds = %bb.y, %.noexc63
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.k, ptr nonnull readonly align 1 %i.bi, i64 %i.bh, i1 false), !alias.scope !3966, !noalias !3967
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.br = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 8 %i.l, i64 %i.al, i1 false), !alias.scope !3968, !noalias !3969
  %i.bs = add nuw nsw i64 %i.ba, %i.al
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.noexc64
  %storemerge.in.i.i.i = phi i64 [ %i.bh, %.noexc64 ], [ %i.bs, %bb.z ]
  %storemerge.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i to i8
  store i8 %storemerge.i.i.i, ptr %i.ae, align 8, !alias.scope !3958, !noalias !3959
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$5write17h08b1bcf4a03c1226E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.al)
          to label %bb.ab unwind label %.thread78.loopexit.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.bt = load i64, ptr %i.g, align 8, !range !38, !noundef !6
  %.not59 = icmp eq i64 %i.bt, -9223372036854775773
  br i1 %.not59, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %.outer

bb.ae:                                            ; preds = %bb.v
  unreachable

bb.af:                                            ; preds = %.thread81, %bb.ac
  call fastcc void @"_ZN4core3ptr147drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$zip..write..zip_writer..ZipWriter$LT$std..fs..File$GT$$GT$$GT$17h99b1f272d2373a37E"(ptr noalias noundef align 8 dereferenceable(64) %i.i)
  br label %bb.r

bb.ag:                                            ; preds = %.thread
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

.thread:                                          ; preds = %.thread78.loopexit.split-lp, %.thread78.loopexit.loopexit.split-lp, %.thread78.loopexit.loopexit, %4
  %.pn73 = phi { ptr, i32 } [ %5, %4 ], [ %lpad.loopexit.split-lp, %.thread78.loopexit.split-lp ], [ %lpad.loopexit85, %.thread78.loopexit.loopexit ], [ %lpad.loopexit.split-lp86, %.thread78.loopexit.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$zip..write..zip_writer..ZipWriter$LT$std..fs..File$GT$$GT$$GT$17h99b1f272d2373a37E"(ptr noalias noundef align 8 dereferenceable(64) %i.i) #51
          to label %common.resume unwind label %bb.ag
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki13import_export7package5media14SafeMediaEntry10fetch_file17hd8f539140c26e94cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([240 x i8]) align 8 captures(none) dereferenceable(240) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 1                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [88 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [240 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !6
  %i.k = call { ptr, i64 } @"_ZN4core3fmt3num3imp23_$LT$impl$u20$usize$GT$4_fmt17hb194eaa51e460a8dE"(i64 noundef %i.j, ptr noalias noundef nonnull align 1 %i.b, i64 noundef 20) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.a
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !3996
  %i.p = call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !3996 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m) #50, !noalias !3997
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ], [ %i.p, %bb.b ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !3998
  store i64 %i.m, ptr %i.g, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.420.0..sroa_idx, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.m, ptr %.sroa.521.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @"_ZN3zip4read61_$LT$impl$u20$zip..read..zip_archive..ZipArchive$LT$R$GT$$GT$30by_name_with_optional_password17h9177aafbcdff347cE"(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(16) %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %i.m, ptr noalias noundef readonly align 1 captures(address, read_provenance) null, i64 undef)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.n, %bb.h, %bb.d, %bb.s
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.s ], [ %i.ac, %bb.n ], [ %i.r, %bb.d ], [ %i.x, %bb.h ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #51
          to label %common.resume unwind label %bb.t

bb.d:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h4d11a3cc5f708623E.exit"
  %i.s = load i64, ptr %i.h, align 8, !range !8, !noundef !6
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !3999
  %i.v = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !3999 ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.g, label %bb.m, !prof !24

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 24) #50
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$zip..result..ZipError$GT$17h7a0e26c38a29824cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #51
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 8 dereferenceable(240) %i.h, i64 240, i1 false)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.g, align 8, !alias.scope !4000 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aa, label %common.resume, label %common.resume.sink.split

bb.l:                                             ; preds = %bb.j
  %.val.i.i = load i64, ptr %i.g, align 8, !alias.scope !4000 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15.sink.split"

common.resume.sink.split:                         ; preds = %bb.k, %bb.q
  %.val2.i.i10.sink = phi i64 [ %.val2.i.i10, %bb.q ], [ %.val2.i.i, %bb.k ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.z, %bb.k ]
  %.val3.i.i11 = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i11, i64 noundef %.val2.i.i10.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.q, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.q ], [ %i.z, %bb.k ], [ %.pn, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15.sink.split": ; preds = %bb.l, %bb.r
  %.val.i.i.sink = phi i64 [ %.val.i.i13, %bb.r ], [ %.val.i.i, %bb.l ]
  %.val1.i.i = load ptr, ptr %.sroa.420.0..sroa_idx, align 8, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !6
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15.sink.split", %bb.l, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.m:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.i, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4001
  store ptr @178, ptr %i.a, align 8, !noalias !4002
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.417.0..sroa_idx, align 8, !noalias !4002
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.518.0..sroa_idx, align 8, !noalias !4002
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !4002
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !4002
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.o unwind label %bb.s

bb.n:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$11with_source17h49e9c9671efe8790E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.e, ptr noundef nonnull align 1 %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @176, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179)
          to label %bb.p unwind label %bb.n

bb.p:                                             ; preds = %bb.o
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.e, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.ad, align 8
  store i64 3, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i10 = load i64, ptr %i.g, align 8, !alias.scope !4003 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i10, 0
  br i1 %i.af, label %common.resume, label %common.resume.sink.split

bb.r:                                             ; preds = %bb.p
  %.val.i.i13 = load i64, ptr %i.g, align 8, !alias.scope !4003 ; 2 uses
  %i.ag = icmp eq i64 %.val.i.i13, 0
  br i1 %i.ag, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit15.sink.split"

bb.s:                                             ; preds = %bb.m
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h07a84dafa2666b59E"(ptr nonnull %i.v, ptr nonnull @176) #51
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable
}

end_hunk_0
begin_hunk_1_@_ZN4anki13import_export7package5media14SafeMediaEntry24copy_and_ensure_sha1_set17h82ddae564779e80cE:bb.a
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.67, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67)
  br i1 %6, label %bb.am, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !4217)
  call void @llvm.experimental.noalias.scope.decl(metadata !4218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4219
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 5 uses
  invoke void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.y)
          to label %.noexc unwind label %.thread125

.noexc:                                           ; preds = %bb.h
  store i64 0, ptr %i.j, align 8, !alias.scope !4220, !noalias !4219
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4220, !noalias !4219
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 -1009589776, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !4220, !noalias !4219
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65536) %i.z, i8 0, i64 65536, i1 false), !alias.scope !4218, !noalias !4221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4219
  call void @llvm.experimental.noalias.scope.decl(metadata !4222)
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 65552
  %i.ab = load i8, ptr %i.aa, align 8, !range !16, !alias.scope !4223, !noalias !4221, !noundef !6
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.i, label %bb.p

bb.i:                                             ; preds = %.noexc
  %i.ad = load i64, ptr %5, align 8, !range !9, !alias.scope !4223, !noalias !4221, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !4223, !noalias !4221
  store i64 2, ptr %5, align 8, !alias.scope !4223, !noalias !4221
  %.not.i.i = icmp eq i64 %i.ad, 2
  br i1 %.not.i.i, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4224
  invoke void @_ZN4zstd6stream3raw7Encoder15with_dictionary17h4d2073b702ccfdcdE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, i32 noundef 0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %.noexc95 unwind label %.thread125

.noexc95:                                         ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !4225)
  %i.ag = load i64, ptr %i.b, align 8, !range !9, !alias.scope !4225, !noalias !4224, !noundef !6 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 2
  br i1 %i.ah, label %bb.k, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i", !prof !14

bb.k:                                             ; preds = %.noexc95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4226
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !4225, !noalias !4224, !nonnull !6, !noundef !6
  store ptr %i.aj, ptr %i.a, align 8, !noalias !4226
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @563, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #50
          to label %bb.m unwind label %bb.l, !noalias !4227

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #51
          to label %.thread118 unwind label %bb.n, !noalias !4227

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !4227
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i": ; preds = %.noexc95
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !4225, !noalias !4224, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4224
  br label %bb.o

bb.o:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i", %bb.i
  %.sroa.3.0.i.ph.i = phi ptr [ %i.af, %bb.i ], [ %i.an, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i" ]
  %.sroa.0.0.i.ph.i = phi i64 [ %i.ad, %bb.i ], [ %i.ag, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17hf00f2476e6982599E.exit.i.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4219
  invoke void @"_ZN4zstd6stream3zio6writer19Writer$LT$W$C$D$GT$17new_with_capacity17hb16bd1c33e4b0068E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %.sroa.0.0.i.ph.i, ptr noundef %.sroa.3.0.i.ph.i, i64 noundef 32768)
          to label %.noexc96 unwind label %.thread125

.noexc96:                                         ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !4219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4219
  br label %bb.q

bb.p:                                             ; preds = %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.p, ptr %i.ao, align 8, !noalias !4219
  store i64 2, ptr %i.i, align 8, !noalias !4219
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.noexc96
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.i.backedge, %bb.q
  %i.aq = invoke { i64, ptr } @"_ZN61_$LT$zip..read..ZipFile$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h0dfb823cc3f232e6E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.r, ptr noalias noundef nonnull align 1 %i.z, i64 noundef 65536)
          to label %bb.r unwind label %.thread76.loopexit.loopexit.i, !noalias !4217 ; 2 uses

.thread76.loopexit.loopexit.i:                    ; preds = %.outer.i
  %lpad.loopexit83.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread76.loopexit.loopexit.split-lp.i:           ; preds = %bb.af, %bb.ad, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i"
  %lpad.loopexit.split-lp84.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.thread76.loopexit.split-lp.i:                    ; preds = %bb.aa
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.r:                                             ; preds = %.outer.i
  %i.ar = extractvalue { i64, ptr } %i.aq, 0
  %i.as = extractvalue { i64, ptr } %i.aq, 1      ; 6 uses
  %i.at = trunc nuw i64 %i.ar to i1
  br i1 %i.at, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.au = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.as), !noalias !4217
  %i.av = icmp eq i8 %i.au, 35
  br i1 %i.av, label %bb.x, label %.thread79.i

bb.t:                                             ; preds = %bb.r
  %i.aw = ptrtoint ptr %i.as to i64               ; 7 uses
  %i.ax = icmp eq ptr %i.as, null
  br i1 %i.ax, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.i, i64 64, i1 false), !noalias !4219
  invoke void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$6finish17h08162cc21708d51eE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e)
          to label %.noexc97 unwind label %.thread125

.noexc97:                                         ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4219
  %i.ay = load i64, ptr %i.f, align 8, !range !38, !noalias !4219, !noundef !6 ; 2 uses
  %.not58.i = icmp eq i64 %i.ay, -9223372036854775773
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !4219 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !4219 ; 3 uses
  br i1 %.not58.i, label %bb.v, label %.thread130

.thread130:                                       ; preds = %.noexc97
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.455.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.7.0..sroa_idx.i, i64 88, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4219
  %.sroa.354.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.bc, ptr %.sroa.354.0..sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4219
  br label %bb.ao

bb.v:                                             ; preds = %.noexc97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4219
  %i.bd = load i64, ptr %5, align 8, !range !9, !alias.scope !4229, !noalias !4221, !noundef !6
  %cond.i.i = icmp eq i64 %i.bd, 0
  br i1 %cond.i.i, label %bb.w, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i"

bb.w:                                             ; preds = %bb.v
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  invoke void @"_ZN57_$LT$zstd_safe..CCtx$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b641d318e46a9baE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i" unwind label %.thread72.i, !noalias !4217

.thread72.i:                                      ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  store i64 %i.ba, ptr %5, align 8, !alias.scope !4218, !noalias !4221
  store ptr %i.bc, ptr %i.be, align 8, !alias.scope !4218, !noalias !4221
  br label %.thread118

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i": ; preds = %bb.w, %bb.v
  store i64 %i.ba, ptr %5, align 8, !alias.scope !4218, !noalias !4221
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bc, ptr %i.bg, align 8, !alias.scope !4218, !noalias !4221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false), !noalias !4219
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  invoke fastcc void @_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E(ptr noalias noundef align 1 captures(address) dereferenceable(20) %.sroa.421.0..sroa_idx.i, ptr noalias noundef readonly align 8 captures(address) dereferenceable(104) %i.d)
          to label %.thread128 unwind label %.thread125

.thread128:                                       ; preds = %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4219
  br label %bb.ap

7:                                                ; preds = %bb.x
  %8 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4219
  store ptr %i.as, ptr %i.h, align 8, !noalias !4219
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.y unwind label %7, !noalias !4217

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4219
  br label %.outer.i.backedge

.outer.i.backedge:                                ; preds = %bb.y, %bb.ai
  br label %.outer.i

.thread79.i:                                      ; preds = %bb.s
  store i64 -9223372036854775805, ptr %i.n, align 8, !alias.scope !4217, !noalias !4228
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 0, ptr %.sroa.427.0..sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.427.sroa.0.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %.sroa.427.sroa.0.sroa.0.sroa.5.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 -9223372036854775795, ptr %.sroa.427.sroa.0.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  store ptr %i.as, ptr %.sroa.427.sroa.4.0..sroa.427.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !4217, !noalias !4228
  br label %bb.ak

bb.z:                                             ; preds = %bb.t
  %i.bh = icmp ult ptr %i.as, inttoptr (i64 65537 to ptr)
  br i1 %i.bh, label %bb.ab, label %bb.aa, !prof !18

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.aw, i64 noundef 65536, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #50
          to label %bb.aj unwind label %.thread76.loopexit.split-lp.i, !noalias !4217

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  call void @llvm.experimental.noalias.scope.decl(metadata !4231)
  call void @llvm.experimental.noalias.scope.decl(metadata !4232)
  call void @llvm.experimental.noalias.scope.decl(metadata !4233)
  %i.bi = load i8, ptr %i.ap, align 8, !alias.scope !4234, !noalias !4235, !noundef !6 ; 3 uses
  %i.bj = zext nneg i8 %i.bi to i64               ; 4 uses
  %i.bk = icmp ult i8 %i.bi, 64
  call void @llvm.assume(i1 %i.bk)
  %i.bl = sub nuw nsw i64 64, %i.bj               ; 4 uses
  %i.bm = icmp ugt i64 %i.bl, %i.aw
  br i1 %i.bm, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bn = icmp eq i8 %i.bi, 0
  br i1 %i.bn, label %.noexc61.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i"

.noexc61.i:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i", %bb.ac
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.aw, %bb.ac ], [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.z, %bb.ac ], [ %i.bu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i" ] ; 2 uses
  %i.bo = lshr i64 %.sroa.7.0.i.i.i.i, 6          ; 3 uses
  %i.bp = and i64 %.sroa.7.0.i.i.i.i, -64
  %i.bq = and i64 %.sroa.7.0.i.i.i.i, 63          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 %i.bp
  %i.bs = icmp eq i64 %i.bo, 0
  br i1 %i.bs, label %.noexc62.i, label %bb.ad

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i.i": ; preds = %bb.ac
  %i.bt = sub nuw i64 %i.aw, %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bl
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 8 %i.z, i64 %i.bl, i1 false), !alias.scope !4236, !noalias !4237
  %i.bw = load i64, ptr %i.j, align 8, !alias.scope !4238, !noalias !4239, !noundef !6
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.j, align 8, !alias.scope !4238, !noalias !4239
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.y, i64 noundef range(i64 1, 0) 1)
          to label %.noexc61.i unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4217

bb.ad:                                            ; preds = %.noexc61.i
  %i.by = load i64, ptr %i.j, align 8, !alias.scope !4240, !noalias !4241, !noundef !6
  %i.bz = add i64 %i.by, %i.bo
  store i64 %i.bz, ptr %i.j, align 8, !alias.scope !4240, !noalias !4241
  invoke void @_ZN4sha18compress8compress17hfb396b6020054e4eE(ptr noalias noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i.i, i64 noundef range(i64 1, 0) %i.bo)
          to label %.noexc62.i unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4217

.noexc62.i:                                       ; preds = %bb.ad, %.noexc61.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.y, ptr nonnull readonly align 1 %i.br, i64 %i.bq, i1 false), !alias.scope !4242, !noalias !4243
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %i.ca = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.bj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 8 %i.z, i64 %i.aw, i1 false), !alias.scope !4244, !noalias !4245
  %i.cb = add nuw nsw i64 %i.bj, %i.aw
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.noexc62.i
  %storemerge.in.i.i.i.i = phi i64 [ %i.bq, %.noexc62.i ], [ %i.cb, %bb.ae ]
  %storemerge.i.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i.i to i8
  store i8 %storemerge.i.i.i.i, ptr %i.ap, align 8, !alias.scope !4234, !noalias !4235
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4219
  invoke void @"_ZN4anki13import_export7package6colpkg6export27MaybeEncodedWriter$LT$W$GT$5write17hdc06387d7259577fE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.aw)
          to label %bb.ag unwind label %.thread76.loopexit.loopexit.split-lp.i, !noalias !4217

bb.ag:                                            ; preds = %bb.af
  %i.cc = load i64, ptr %i.g, align 8, !range !38, !noalias !4219, !noundef !6
  %.not59.i = icmp eq i64 %i.cc, -9223372036854775773
  br i1 %.not59.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.n, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false), !noalias !4228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4219
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4219
  br label %.outer.i.backedge

bb.aj:                                            ; preds = %bb.aa
  unreachable

bb.ak:                                            ; preds = %bb.ah, %.thread79.i
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$tempfile..file..NamedTempFile$GT$$GT$17h97acb92641ef5963E"(ptr noalias noundef align 8 dereferenceable(64) %i.i)
          to label %bb.an unwind label %.thread125

bb.al:                                            ; preds = %.thread.i
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !4217
  unreachable

.thread.i:                                        ; preds = %7, %.thread76.loopexit.split-lp.i, %.thread76.loopexit.loopexit.split-lp.i, %.thread76.loopexit.loopexit.i
  %.pn71.i = phi { ptr, i32 } [ %8, %7 ], [ %lpad.loopexit.split-lp.i, %.thread76.loopexit.split-lp.i ], [ %lpad.loopexit83.i, %.thread76.loopexit.loopexit.i ], [ %lpad.loopexit.split-lp84.i, %.thread76.loopexit.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$anki..import_export..package..colpkg..export..MaybeEncodedWriter$LT$tempfile..file..NamedTempFile$GT$$GT$17h97acb92641ef5963E"(ptr noalias noundef align 8 dereferenceable(64) %i.i) #51
          to label %.thread118 unwind label %bb.al, !noalias !4217

bb.am:                                            ; preds = %bb.g
  %i.ce = invoke noundef ptr @_ZN4zstd6stream9functions11copy_decode17h92e039d689277911E(ptr noalias noundef nonnull align 8 dereferenceable(240) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.ar unwind label %.thread125 ; 2 uses

.thread125:                                       ; preds = %bb.am, %bb.h, %bb.j, %bb.o, %bb.u, %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$zstd..stream..raw..Encoder$GT$$GT$17h3150bbfa3f1b5de8E.exit.i", %bb.ak
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread118

bb.an:                                            ; preds = %bb.ak
  %.pr = load i64, ptr %i.n, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4219
  %.not89 = icmp eq i64 %.pr, -9223372036854775773
  br i1 %.not89, label %bb.ap, label %._crit_edge

._crit_edge:                                      ; preds = %bb.an
  %.sroa.576.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.576.0.copyload.pre = load i64, ptr %.sroa.576.0..sroa_idx.phi.trans.insert, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %._crit_edge, %.thread130
  %.sroa.576.0.copyload = phi i64 [ %i.ba, %.thread130 ], [ %.sroa.576.0.copyload.pre, %._crit_edge ]
  %i.cg = phi i64 [ %i.ay, %.thread130 ], [ %.pr, %._crit_edge ]
  %.sroa.677.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.677.0..sroa_idx, i64 20, i1 false)
  %.sroa.778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %.sroa.778.0.copyload = load i32, ptr %.sroa.778.0..sroa_idx, align 4
  %.sroa.879.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.584.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.879.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.382.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, i64 20, i1 false)
  store i64 %i.cg, ptr %0, align 8
  %.sroa.281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.576.0.copyload, ptr %.sroa.281.0..sroa_idx, align 8
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.778.0.copyload, ptr %.sroa.483.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820)
  br label %.critedge

bb.ap:                                            ; preds = %.thread128, %bb.an
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.567.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.820, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.820)
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i8 1, ptr %i.ch, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_ZN3std4path4Path4join17h8c81efceb1fc5784E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
          to label %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit unwind label %bb.at

bb.ar:                                            ; preds = %bb.am
  %.not90 = icmp eq ptr %i.ce, null
  br i1 %.not90, label %bb.aq, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.448.sroa.0.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.0.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.448.sroa.0.sroa.0.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775795, ptr %.sroa.448.sroa.0.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ce, ptr %.sroa.448.sroa.4.0..sroa.448.0..sroa_idx.sroa_idx, align 8
  br label %.critedge

bb.at:                                            ; preds = %bb.aq
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE"(ptr noalias noundef align 8 dereferenceable(32) %i.l) #51
          to label %.body113 unwind label %bb.bh

_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit: ; preds = %bb.aq
  %i.cj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !6, !noundef !6
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noundef !6
  invoke void @_ZN7anki_io13atomic_rename17ha25d6f3c54704e8cE(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ck, i64 noundef %i.cm, i1 noundef zeroext false)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #51
          to label %.body113 unwind label %bb.bh

bb.av:                                            ; preds = %_ZN4anki13import_export7package5media14SafeMediaEntry9file_path17h4e13abe73741a3c1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.co = load i64, ptr %i.m, align 8, !range !7, !noundef !6
  %.not91 = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not91, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.486.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store i64 -9223372036854775805, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.az unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4246 ; 2 uses
  %i.cq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cq, label %.body113, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.val3.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !4247, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4248
  br label %.body113

bb.az:                                            ; preds = %bb.aw
  %.val.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4246 ; 2 uses
  %i.cr = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.cr, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %.val1.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !4247, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4249
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"

bb.bb:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i104 = load i64, ptr %i.k, align 8, !alias.scope !4250 ; 2 uses
  %i.ct = icmp eq i64 %.val2.i.i.i.i104, 0
  br i1 %i.ct, label %.body113, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val3.i.i.i.i105 = load ptr, ptr %i.cj, align 8, !alias.scope !4251, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i105, i64 noundef %.val2.i.i.i.i104, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4252
  br label %.body113

bb.be:                                            ; preds = %bb.bb
  %.val.i.i.i.i107 = load i64, ptr %i.k, align 8, !alias.scope !4250 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i.i107, 0
  br i1 %i.cu, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112", label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val1.i.i.i.i108 = load ptr, ptr %i.cj, align 8, !alias.scope !4251, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i108, i64 noundef %.val.i.i.i.i107, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !4253
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112": ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.r)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.b, %bb.bi, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit112"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  ret void

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bi

bb.bh:                                            ; preds = %.thread118, %bb.au, %bb.at, %.body113
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.bi:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$tempfile..file..NamedTempFile$GT$17hac837e4b7f5181dbE.exit", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @"_ZN4core3ptr60drop_in_place$LT$zip..read..ZipFile$LT$std..fs..File$GT$$GT$17h7fc96db745c6aa7fE"(ptr noalias noundef align 8 dereferenceable(240) %i.r)
  br label %bb.bg

.critedge:                                        ; preds = %bb.as, %bb.ao
  invoke void @"_ZN66_$LT$tempfile..file..TempPath$u20$as$u20$core..ops..drop..Drop$GT$4drop17h07d53728ee77f0b0E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %bb.bk unwind label %bb.bj

bb.bj:                                            ; preds = %.critedge
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val3.i.i = load i64, ptr %i.cx, align 8, !alias.scope !4254, !noundef !6 ; 2 uses
end_hunk_1
