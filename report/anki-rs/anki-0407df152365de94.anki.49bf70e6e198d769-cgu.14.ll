Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4anki7backend6github19get_platform_suffix17he07cee229b8eb0a1E:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki7backend6github21release_is_downloaded17ha73ae2f6cd590d6fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [176 x i8], align 8               ; 8 uses
  %i.f = alloca [104 x i8], align 8               ; 4 uses
  %i.g = alloca [32 x i8], align 1                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [104 x i8], align 8               ; 11 uses
  %i.k = alloca [56 x i8], align 8                ; 7 uses
  %i.l = alloca [4 x i8], align 4                 ; 8 uses
  %i.m = alloca [65536 x i8], align 1             ; 9 uses
  %i.n = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_ZN4anki7updates12release_path17he1380cd28bb58765E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.p = load i64, ptr %i.n, align 8, !range !48, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.p, -9223372036854775773
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.330.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.330.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.627.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.229.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  store i64 %i.p, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4298
  invoke void @_ZN3std3sys2fs8metadata17h22c701e78402fee2E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.s, i64 noundef %i.u)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.v = load i64, ptr %i.d, align 8, !range !22, !noalias !4298, !noundef !10
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %.thread, label %bb.f

.thread:                                          ; preds = %.noexc
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !4298, !nonnull !10, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.y, ptr %i.z, align 8, !alias.scope !4297, !noalias !4299
  store i64 2, ptr %i.e, align 8, !alias.scope !4297, !noalias !4299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4298
  br label %bb.g

bb.d:                                             ; preds = %.thread98, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.thread98 ], [ %i.aa, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #33
          to label %common.resume unwind label %bb.z

bb.e:                                             ; preds = %.noexc.i, %bb.i, %bb.g, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %i.d, i64 176, i1 false), !noalias !4299
  %.pr = load i64, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4298
  %.not.i = icmp eq i64 %.pr, 2
  br i1 %.not.i, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.thread, %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ab)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ac, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(65536) %i.m, i8 0, i64 65536, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4302
  store i32 0, ptr %i.b, align 4, !noalias !4302
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 438, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !noalias !4302
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %.sroa.5.0..sroa_idx.i.i, i8 0, i64 6, i1 false), !noalias !4302
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !4302
  %.val.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !4300, !noalias !4303, !nonnull !10, !noundef !10 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !4300, !noalias !4303, !noundef !10 ; 2 uses
  invoke void @_ZN3std2fs11OpenOptions5_open17h95d1fb01334d5ef6E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i)
          to label %.noexc77 unwind label %bb.e

.noexc77:                                         ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4302
  call void @llvm.experimental.noalias.scope.decl(metadata !4304)
  %i.ad = load i32, ptr %i.c, align 8, !range !11, !alias.scope !4304, !noalias !4305, !noundef !10
  %i.ae = trunc nuw i32 %i.ad to i1
  br i1 %i.ae, label %.noexc.i, label %.thread92

.noexc.i:                                         ; preds = %.noexc77
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !4304, !noalias !4305, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4306
  store i64 -9223372036854775806, ptr %i.a, align 8, !noalias !4307
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.val.i.i.i.i, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !4307
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.val1.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4307
  invoke void @"_ZN118_$LT$anki_io..error..FileIoSnafu$LT$__T0$C$__T1$GT$$u20$as$u20$snafu..IntoError$LT$anki_io..error..FileIoError$GT$$GT$10into_error17habff2f37c0227be7E"(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @829)
          to label %bb.m unwind label %bb.e

.thread92:                                        ; preds = %.noexc77
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !range !55, !alias.scope !4304, !noalias !4305, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4301
  br label %._crit_edge

bb.j:                                             ; preds = %bb.x, %bb.h
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.am, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.cc, %bb.am ], [ %i.aj, %bb.k ], [ %.pn.pn.pn, %bb.d ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit": ; preds = %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.y

bb.m:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4306
  %.pr91 = load i64, ptr %i.k, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4301
  %.not65 = icmp eq i64 %.pr91, -9223372036854775808
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8 ; 2 uses
  br i1 %.not65, label %._crit_edge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.643.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.636.0..sroa_idx, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.pr91, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.pre, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.al

._crit_edge:                                      ; preds = %bb.m, %.thread92
  %i.al = phi i32 [ %i.ai, %.thread92 ], [ %.pre, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i32 %i.al, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) @588, i64 32, i1 false)
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 5 uses
  store i64 0, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4308
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 63 ; 4 uses
  store i8 0, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !4308
  br label %.backedge

.thread98:                                        ; preds = %.thread105.loopexit, %.thread105.loopexit.split-lp, %5, %bb.v, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %lpad.thr_comm.split-lp, %bb.o ], [ %6, %5 ], [ %lpad.loopexit, %.thread105.loopexit ], [ %lpad.loopexit.split-lp, %.thread105.loopexit.split-lp ]
  %.val71 = load i32, ptr %i.l, align 4, !range !55, !noundef !10
  %i.an = call noundef i32 @close(i32 noundef %.val71) #26 ; 0 uses
  br label %bb.d

.backedge:                                        ; preds = %.backedge.backedge, %._crit_edge
  %i.ao = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h21832fa6ba471287E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.l, ptr noalias noundef nonnull align 1 %i.m, i64 noundef 65536)
          to label %bb.p unwind label %.thread105.loopexit ; 2 uses

.thread105.loopexit:                              ; preds = %bb.ah, %.backedge, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

.thread105.loopexit.split-lp:                     ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.o:                                             ; preds = %bb.s, %bb.t, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.p:                                             ; preds = %.backedge
  %i.ap = extractvalue { i64, ptr } %i.ao, 0
  %i.aq = extractvalue { i64, ptr } %i.ao, 1      ; 6 uses
  %i.ar = ptrtoint ptr %i.aq to i64               ; 6 uses
  %i.as = trunc nuw i64 %i.ap to i1
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.at = call fastcc noundef i8 @_ZN3std2io5error5Error4kind17hcbc0f56b88398ce5E(ptr %i.aq)
  %i.au = icmp eq i8 %i.at, 35
  br i1 %i.au, label %bb.aa, label %bb.ak

bb.r:                                             ; preds = %bb.p
  %i.av = icmp eq ptr %i.aq, null
  br i1 %i.av, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 104, i1 false)
  invoke fastcc void @_ZN6digest11FixedOutput14finalize_fixed17h89eb66c7624ee15cE(ptr noalias noundef align 1 captures(address) dereferenceable(32) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.f)
          to label %bb.t unwind label %bb.o

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN32_$LT$T$u20$as$u20$hex..ToHex$GT$10encode_hex17h3fad5ed95bcf3ee5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %_ZN3hex6encode17h21d1b33bf773783dE.exit unwind label %bb.o

_ZN3hex6encode17h21d1b33bf773783dE.exit:          ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val73 = load i64, ptr %i.aw, align 8, !noundef !10
  %.not.i80 = icmp eq i64 %.val73, %4
  br i1 %.not.i80, label %bb.u, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit"

bb.u:                                             ; preds = %_ZN3hex6encode17h21d1b33bf773783dE.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val72 = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val72, ptr nonnull readonly %3, i64 %4)
  %i.ay = icmp eq i32 %bcmp.i, 0
  %i.az = zext i1 %i.ay to i8
  br label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit": ; preds = %bb.u, %_ZN3hex6encode17h21d1b33bf773783dE.exit
  %.sroa.0.0.i = phi i8 [ %i.az, %bb.u ], [ 0, %_ZN3hex6encode17h21d1b33bf773783dE.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.0.0.i, ptr %i.ba, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.v

bb.v:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit"
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.thread98 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17hc5e9325c5b0eca9eE.exit"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.x unwind label %bb.o

bb.x:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val70 = load i32, ptr %i.l, align 4, !range !55, !noundef !10
  %i.bd = call noundef i32 @close(i32 noundef %.val70) #26 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.j

bb.y:                                             ; preds = %bb.b, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit85", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  ret void

bb.z:                                             ; preds = %bb.d
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

5:                                                ; preds = %bb.aa
  %6 = landingpad { ptr, i32 }
          cleanup
  br label %.thread98

bb.aa:                                            ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.aq, ptr %i.i, align 8
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ab unwind label %5

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge.backedge

bb.ac:                                            ; preds = %bb.r
  %i.bf = icmp ult ptr %i.aq, inttoptr (i64 65537 to ptr)
  br i1 %i.bf, label %bb.ae, label %bb.ad, !prof !54

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef 0, i64 noundef %i.ar, i64 noundef 65536, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @487) #35
          to label %bb.aj unwind label %.thread105.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  call void @llvm.experimental.noalias.scope.decl(metadata !4311)
  call void @llvm.experimental.noalias.scope.decl(metadata !4312)
  call void @llvm.experimental.noalias.scope.decl(metadata !4313)
  %.val.i.i.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !4314, !noalias !4315, !noundef !10 ; 4 uses
  %i.bg = zext nneg i8 %.val.i.i.i to i64         ; 3 uses
  %i.bh = icmp ult i8 %.val.i.i.i, 64
  call void @llvm.assume(i1 %i.bh)
  %i.bi = sub nuw nsw i64 64, %i.bg               ; 4 uses
  %i.bj = icmp samesign ugt i64 %i.bi, %i.ar
  br i1 %i.bj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = icmp eq i8 %.val.i.i.i, 0
  br i1 %i.bk, label %.noexc82, label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bl, ptr nonnull readonly align 1 %i.m, i64 range(i64 0, 65537) %i.ar, i1 false), !alias.scope !4316, !noalias !4313
  %i.bm = trunc nuw nsw i64 %i.ar to i8
  %i.bn = add nuw nsw i8 %.val.i.i.i, %i.bm
  store i8 %i.bn, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !4317, !noalias !4315
  br label %.backedge.backedge

.noexc82:                                         ; preds = %bb.ah, %bb.af
  %.sroa.9.0.i.i.i = phi i64 [ %i.ar, %bb.af ], [ %i.bu, %bb.ah ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.m, %bb.af ], [ %i.bt, %bb.ah ] ; 2 uses
  %i.bo = lshr i64 %.sroa.9.0.i.i.i, 6            ; 3 uses
  %i.bp = and i64 %.sroa.9.0.i.i.i, 131008
  %i.bq = and i64 %.sroa.9.0.i.i.i, 63            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.bp
  %i.bs = icmp eq i64 %i.bo, 0
  br i1 %i.bs, label %.noexc83, label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bi
  %i.bu = sub nuw nsw i64 %i.ar, %i.bi
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.bg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %i.m, i64 %i.bi, i1 false), !alias.scope !4316, !noalias !4313
  %i.bw = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4318, !noalias !4319, !noundef !10
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4318, !noalias !4319
  invoke void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.j, i64 noundef 1)
          to label %.noexc82 unwind label %.thread105.loopexit

bb.ai:                                            ; preds = %.noexc82
  %i.by = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4318, !noalias !4320, !noundef !10
  %i.bz = add i64 %i.by, %i.bo
  store i64 %i.bz, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !4318, !noalias !4320
  invoke void @_ZN4sha26sha25611compress25617h03df460404b700e2E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.am, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.bo)
          to label %.noexc83 unwind label %.thread105.loopexit

.noexc83:                                         ; preds = %bb.ai, %.noexc82
  %i.ca = trunc nuw nsw i64 %i.bq to i8
  store i8 %i.ca, ptr %.sroa.3.0..sroa_idx.i, align 1, !alias.scope !4321, !noalias !4315
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(104) %i.j, ptr nonnull align 1 %i.br, i64 %i.bq, i1 false), !alias.scope !4316, !noalias !4313
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.noexc83, %bb.ag, %bb.ab
  br label %.backedge

bb.aj:                                            ; preds = %bb.ad
  unreachable

bb.ak:                                            ; preds = %bb.q
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.445.sroa.0.sroa.0.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.445.sroa.0.sroa.0.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx, align 8
  %.sroa.445.sroa.0.sroa.0.sroa.5.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.445.sroa.0.sroa.0.sroa.5.0..sroa.445.0..sroa_idx.sroa_idx, align 8
  %.sroa.445.sroa.0.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775795, ptr %.sroa.445.sroa.0.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx, align 8
  %.sroa.445.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.aq, ptr %.sroa.445.sroa.4.0..sroa.445.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.val69 = load i32, ptr %i.l, align 4, !range !55, !noundef !10
  %i.cb = call noundef i32 @close(i32 noundef %.val69) #26 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit85" unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hf2e5936d18c30d6eE.exit85": ; preds = %bb.al
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  br label %bb.y
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4axum5serve17handle_connection28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hcc4032164c13cff5E"(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [608 x i8], align 8               ; 4 uses
  %i.d = alloca [320 x i8], align 8               ; 5 uses
  %i.e = alloca [224 x i8], align 8               ; 4 uses
  %i.f = alloca [608 x i8], align 8               ; 4 uses
  %.sroa.037.i.i.i.i.i = alloca [648 x i8], align 8 ; 5 uses
  %i.g = alloca [40 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [608 x i8], align 8               ; 29 uses
  %i.j = alloca [608 x i8], align 8               ; 4 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [256 x i8], align 8               ; 5 uses
  %i.m = alloca [40 x i8], align 8                ; 8 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [128 x i8], align 8               ; 11 uses
  %i.p = alloca [128 x i8], align 8               ; 12 uses
  %i.q = alloca [96 x i8], align 8                ; 7 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.6.i.i.i.i.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 15 uses
  %i.u = alloca [96 x i8], align 8                ; 8 uses
  %i.v = alloca [112 x i8], align 8               ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 6 uses
  %i.x = alloca [112 x i8], align 8               ; 8 uses
  %i.y = alloca [256 x i8], align 8               ; 5 uses
  %i.z = alloca [256 x i8], align 8               ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [40 x i8], align 8               ; 5 uses
  %i.ac = alloca [72 x i8], align 8               ; 5 uses
  %i.ad = alloca [32 x i8], align 8               ; 5 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [224 x i8], align 8              ; 8 uses
  %i.ag = alloca [240 x i8], align 8              ; 11 uses
  %i.ah = alloca [40 x i8], align 8               ; 5 uses
  %i.ai = alloca [96 x i8], align 8               ; 7 uses
  %i.aj = alloca [40 x i8], align 8               ; 5 uses
  %i.ak = alloca [96 x i8], align 8               ; 6 uses
  %i.al = alloca [96 x i8], align 8               ; 6 uses
  %i.am = alloca [32 x i8], align 8               ; 8 uses
  %i.an = alloca [40 x i8], align 8               ; 5 uses
  %i.ao = alloca [32 x i8], align 8               ; 6 uses
  %i.ap = alloca [96 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 5 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [40 x i8], align 8               ; 5 uses
  %i.at = alloca [40 x i8], align 8               ; 33 uses
  %i.au = alloca [8 x i8], align 8                ; 9 uses
  %i.av = alloca [712 x i8], align 8              ; 16 uses
  %i.aw = alloca [32 x i8], align 8               ; 7 uses
  %i.ax = alloca [64 x i8], align 8               ; 4 uses
  %i.ay = alloca [48 x i8], align 8               ; 6 uses
  %i.az = alloca [8 x i8], align 8                ; 4 uses
  %i.ba = alloca [144 x i8], align 8              ; 6 uses
  %i.bb = alloca [32 x i8], align 8               ; 9 uses
  %i.bc = alloca [64 x i8], align 8               ; 6 uses
  %i.bd = alloca [8 x i8], align 8                ; 4 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 4 uses
  %.sroa.473.i.i.i.i = alloca [56 x i8], align 8  ; 5 uses
  %i.bi = alloca [24 x i8], align 8               ; 8 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [8 x i8], align 8                ; 4 uses
  %i.bl = alloca [8 x i8], align 8                ; 4 uses
  %.sroa.057.i.i.i.i = alloca [648 x i8], align 8 ; 7 uses
  %i.bm = alloca [40 x i8], align 8               ; 4 uses
  %i.bn = alloca [64 x i8], align 8               ; 4 uses
  %i.bo = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.12.i.i.i.i = alloca [56 x i8], align 8   ; 6 uses
  %i.bp = alloca [64 x i8], align 8               ; 8 uses
  %i.bq = alloca [24 x i8], align 8               ; 4 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [48 x i8], align 8               ; 8 uses
  %i.bt = alloca [48 x i8], align 8               ; 9 uses
  %i.bu = alloca [40 x i8], align 8               ; 8 uses
end_hunk_0
