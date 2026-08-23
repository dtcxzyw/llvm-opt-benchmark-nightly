Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.08?download=true
inline.NumInlined: 151
inline.NumDeleted: 79
begin_hunk_0_@_ZN9configure6python12check_python17hc53eb3a5767daeccE:bb.a
  br label %bb.ap

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %.noexc100
  %i.bd = load ptr, ptr %i.ba, align 8, !noalias !202, !nonnull !4, !noundef !4 ; 2 uses
  %i.be = icmp ugt i64 %i.az, 27
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.bd, ptr noundef nonnull align 1 dereferenceable(28) @69, i64 28, i1 false), !noalias !206
  store i64 %i.az, ptr %i.n, align 8
  %.sroa.036.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bd, ptr %.sroa.036.sroa.4.0..sroa_idx, align 8
  %.sroa.036.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 28, ptr %.sroa.036.sroa.5.0..sroa_idx, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 -9223372036854775808, ptr %.sroa.437.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 11)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.w ], [ %i.bf, %bb.u ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.n) #15
          to label %bb.q unwind label %bb.ar

bb.u:                                             ; preds = %bb.s
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @71, i64 noundef 7)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.m) #15
          to label %bb.t unwind label %bb.ar

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.au, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store ptr @68, ptr %i.bj, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 7, ptr %i.bk, align 8
  store i64 -9223372036854775805, ptr %i.o, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 3, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.434.sroa.4.0..sroa.434.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.au, ptr %.sroa.434.sroa.4.0..sroa.434.0..sroa_idx.sroa_idx, align 8
  %.sroa.434.sroa.5.0..sroa.434.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 3, ptr %.sroa.434.sroa.5.0..sroa.434.0..sroa_idx.sroa_idx, align 8
  %i.bl = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17hcd4c0e31bd8a3415E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @72, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.o) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.not81 = icmp eq ptr %i.bl, null
  br i1 %.not81, label %bb.y, label %bb.an

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #17
  %i.bm = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #17 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.aa, !prof !18

bb.z:                                             ; preds = %bb.y
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 144) #14
  unreachable

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !207
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 35, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc103 unwind label %bb.ad

.noexc103:                                        ; preds = %bb.aa
  %i.bo = load i64, ptr %i.a, align 8, !range !16, !noalias !207, !noundef !4
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !17, !noalias !207, !noundef !4 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.ab, label %bb.ae, !prof !18

bb.ab:                                            ; preds = %.noexc103
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !207
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.br, i64 %i.bt) #14
          to label %.noexc104 unwind label %bb.ad

.noexc104:                                        ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.af, %bb.ad
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %bb.af ], [ %i.bu, %bb.ad ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bm, i64 noundef 144, i64 noundef 8) #17
  br label %bb.ap

bb.ad:                                            ; preds = %bb.ab, %bb.aa
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %.noexc103
  %i.bv = load ptr, ptr %i.bs, align 8, !noalias !207, !nonnull !4, !noundef !4 ; 2 uses
  %i.bw = icmp ugt i64 %i.br, 34
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.bv, ptr noundef nonnull align 1 dereferenceable(35) @73, i64 35, i1 false), !noalias !211
  store i64 %i.br, ptr %i.j, align 8
  %.sroa.039.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.bv, ptr %.sroa.039.sroa.4.0..sroa_idx, align 8
  %.sroa.039.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 35, ptr %.sroa.039.sroa.5.0..sroa_idx, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 -9223372036854775808, ptr %.sroa.440.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 11)
          to label %bb.ah unwind label %bb.ag

bb.af:                                            ; preds = %bb.ai, %bb.ag
  %.pn83 = phi { ptr, i32 } [ %i.by, %bb.ai ], [ %i.bx, %bb.ag ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #15
          to label %bb.ac unwind label %bb.ar

bb.ag:                                            ; preds = %bb.ae
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ah:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @71, i64 noundef 7)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #15
          to label %bb.af unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bz, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ca, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 3, ptr %i.cb, align 8
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.bm, ptr %.sroa.4121.0..sroa_idx, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 3, ptr %.sroa.5122.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h98c6837e4dd74476E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cb)
          to label %bb.ak unwind label %bb.aq

bb.ak:                                            ; preds = %bb.aj
  store i64 -9223372036854775805, ptr %i.f, align 8, !alias.scope !212, !noalias !215
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr @76, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 5, ptr %i.ce, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 1, ptr %i.cf, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cg = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h022b37e710ad082bE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @77, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %bb.al unwind label %bb.aq     ; 2 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.not86 = icmp eq ptr %i.cg, null
  br i1 %.not86, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr @76, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 5, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i8 0, ptr %i.cj, align 8
  %i.ck = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h022b37e710ad082bE(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @78, i64 noundef 8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not90 = icmp eq ptr %i.ck, null
  br i1 %.not90, label %.sink.split, label %1

1:                                                ; preds = %bb.am
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ao, %bb.am, %1
  %.sroa.0.1.ph = phi ptr [ null, %bb.am ], [ %i.cg, %bb.ao ], [ %i.ck, %1 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.x, %bb.l, %bb.f
  %.sroa.0.1 = phi ptr [ %i.bl, %bb.x ], [ %i.ad, %bb.f ], [ %i.at, %bb.l ], [ %.sroa.0.1.ph, %.sink.split ]
  ret ptr %.sroa.0.1

bb.ao:                                            ; preds = %bb.al
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.k)
  br label %.sink.split

bb.ap:                                            ; preds = %bb.ac, %bb.q, %bb.k, %bb.e, %bb.aq
  %.pn88 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.aq ], [ %i.z, %bb.e ], [ %.pn83.pn, %bb.ac ], [ %.pn.pn, %bb.q ], [ %i.am, %bb.k ]
  resume { ptr, i32 } %.pn88

bb.aq:                                            ; preds = %bb.ak, %bb.aj
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #15
          to label %bb.ap unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ai, %bb.af, %bb.w, %bb.t
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17h89f5320a2d76b011E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 29, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 29, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !18

.lr.ph.split.i.i:                                 ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.e = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.t, %.backedge.backedge ] ; 5 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.h = icmp ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !217
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.f, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !223, !noalias !217, !noundef !4
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.t, %i.d           ; 2 uses
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.not = icmp ult i64 %i.u, %i.d
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not14.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.e, %bb.f
  br label %.backedge

bb.f:                                             ; preds = %bb.d
  %i.v = add i64 %i.e, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.v
  %lhsc = load i8, ptr %i.w, align 1
  %i.x = icmp eq i8 %lhsc, 60                     ; 2 uses
  %brmerge = or i1 %i.x, %.not14.i.i
  br i1 %brmerge, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit", label %.backedge.backedge

bb.g:                                             ; preds = %bb.a
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @83) #14
  unreachable

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit": ; preds = %bb.f
  %.mux.le = select i1 %i.x, i64 %i.v, i64 %i.d
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit": ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit"
  %.sroa.4.1.i = phi i64 [ %.mux.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit.split.loop.exit" ], [ %i.d, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i ], [ %i.d, %bb.e ]
  %i.y = insertvalue { ptr, i64 } %i.b, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.y
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_ZN9ninja_gen6action11BuildAction4name17hdc12a23bbc5f847fE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @84, i64 noundef 33, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @81, i64 noundef 2)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 33, ptr %.sroa.58.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 121
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  %i.b = call fastcc { ptr, i64 } @_ZN4core4iter6traits8iterator8Iterator4fold17h2e1b89611d06ce42E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.a) ; 3 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %.lr.ph.split.i.i, !prof !18

.lr.ph.split.i.i:                                 ; preds = %bb.a
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 6 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i
  %i.e = phi i64 [ 0, %.lr.ph.split.i.i ], [ %i.t, %.backedge.backedge ] ; 5 uses
  %i.f = sub nuw i64 %i.d, %i.e                   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.h = icmp ult i64 %i.f, 16
  br i1 %i.h, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge
  %i.i = call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 60, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %i.f), !noalias !226
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.f, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.j = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.k = insertvalue { i64, i64 } %i.j, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.o, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.05.i.i.i
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !232, !noalias !226, !noundef !4
  %i.n = icmp eq i8 %i.m, 60
  br i1 %i.n, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.o = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.f
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.k, %._crit_edge.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.p = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h60ca94c65947dfdeE.exit"

bb.d:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i.i
  %i.r = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 3 uses
  %i.s = add i64 %i.e, 1
  %i.t = add i64 %i.s, %i.r                       ; 2 uses
  %.not14.i.i = icmp ugt i64 %i.t, %i.d           ; 2 uses
  %i.u = add i64 %i.e, %i.r
  %or.cond.i.i.not = icmp ult i64 %i.u, %i.d
end_hunk_0
