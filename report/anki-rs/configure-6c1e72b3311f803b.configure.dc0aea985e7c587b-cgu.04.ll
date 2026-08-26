Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/configure-6c1e72b3311f803b.configure.dc0aea985e7c587b-cgu.04?download=true
inline.NumInlined: 246
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN9configure3web21build_and_check_pages17hde4b45d7a240f246E:bb.a
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @115, i64 noundef 14)
          to label %bb.ac unwind label %bb.ab

bb.aa:                                            ; preds = %bb.ad, %bb.ab
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %bb.ad ], [ %i.ag, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.d) #15
          to label %bb.x unwind label %bb.aj

bb.ab:                                            ; preds = %bb.z
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.ac:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @118, i64 noundef 5)
          to label %bb.af unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ag, %bb.ae
  %.pn25 = phi { ptr, i32 } [ %i.ai, %bb.ag ], [ %i.ah, %bb.ae ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #15
          to label %bb.aa unwind label %bb.aj

bb.ae:                                            ; preds = %bb.ac
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.af:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @119, i64 noundef 10)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #15
          to label %bb.ad unwind label %bb.aj

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr @121, ptr %i.e, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 8, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  store i64 -9223372036854775805, ptr %i.ao, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 4, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.ad, ptr %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 4, ptr %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx, align 8
  %i.ap = call fastcc noundef ptr @"_ZN9configure3web21build_and_check_pages28_$u7b$$u7b$closure$u7d$$u7d$17hb60ee4a31cb15f8fE"(ptr nonnull %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @121, i64 noundef 8, i1 noundef zeroext true, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.t
  %.sroa.0.0 = phi ptr [ %i.ap, %bb.ah ], [ %i.ac, %bb.t ]
  ret ptr %.sroa.0.0

bb.aj:                                            ; preds = %bb.ag, %bb.ad, %bb.aa, %bb.s, %bb.p, %bb.m, %bb.j, %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.ak:                                            ; preds = %bb.x, %bb.d
  %.pn25.pn.pn.pn = phi { ptr, i32 } [ %.pn25.pn.pn, %bb.x ], [ %.pn.pn.pn.pn.pn, %bb.d ]
  resume { ptr, i32 } %.pn25.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN9configure3web21build_and_check_pages28_$u7b$$u7b$closure$u7d$$u7d$17hb60ee4a31cb15f8fE"(ptr %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, i1 noundef zeroext %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 2 uses
  %i.i = alloca [48 x i8], align 8                ; 7 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 13 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [176 x i8], align 8               ; 10 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 11 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [16 x i8], align 8               ; 7 uses
  store ptr %0, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %1, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr %i.ad, ptr %i.aa, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.422.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !140
  store ptr @123, ptr %i.f, align 8, !noalias !147
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !147
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !147
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !147
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !147
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.e unwind label %.body86

bb.b:                                             ; preds = %bb.c
  br i1 %i.ah, label %bb.bb, label %.body86.thread

.body86:                                          ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.c:                                             ; preds = %bb.ba, %.thread, %bb.d
  %.pn68 = phi { ptr, i32 } [ %i.af, %bb.d ], [ %.pn65.pn, %.thread ], [ %i.ai, %bb.ba ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.ac) #15
          to label %bb.b unwind label %bb.at

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit", %bb.ap, %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.ag = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #18 ; 6 uses
  %i.ah = icmp eq ptr %i.ag, null                 ; 2 uses
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !25

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 96) #17
          to label %bb.au unwind label %bb.d

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr %i.ad, ptr %i.w, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !148
  store ptr @126, ptr %i.e, align 8, !noalias !155
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.48.0..sroa_idx, align 8, !noalias !155
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.w, ptr %.sroa.59.0..sroa_idx, align 8, !noalias !155
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.610.0..sroa_idx, align 8, !noalias !155
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx, align 8, !noalias !155
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.y) #15
          to label %bb.ba unwind label %bb.at

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %4 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, ptr noundef nonnull align 8 dereferenceable(48) %3, i64 48, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i64 -9223372036854775808, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 2, ptr %i.aj, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ag, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i64 2, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br i1 %2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.ad, ptr %i.r, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.439.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !156
  store ptr @131, ptr %i.d, align 8, !noalias !163
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.420.0..sroa_idx, align 8, !noalias !163
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.r, ptr %.sroa.521.0..sroa_idx, align 8, !noalias !163
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.622.0..sroa_idx, align 8, !noalias !163
  %.sroa.723.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.723.0..sroa_idx, align 8, !noalias !163
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.ad, ptr %i.t, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.435.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !164
  store ptr @135, ptr %i.c, align 8, !noalias !171
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.414.0..sroa_idx, align 8, !noalias !171
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.t, ptr %.sroa.515.0..sroa_idx, align 8, !noalias !171
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.616.0..sroa_idx, align 8, !noalias !171
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.717.0..sroa_idx, align 8, !noalias !171
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
          to label %bb.n unwind label %bb.l

.thread:                                          ; preds = %bb.ai, %bb.af, %bb.ab, %bb.an, %.body.thread69, %bb.az, %bb.o, %bb.l
  %.pn65.pn = phi { ptr, i32 } [ %.pn6563, %bb.az ], [ %.pn63, %bb.o ], [ %i.ak, %bb.l ], [ %i.bn, %bb.an ], [ %lpad.thr_comm67, %.body.thread69 ], [ %.pn, %bb.ab ], [ %i.bh, %bb.af ], [ %i.bj, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.z) #15
          to label %bb.c unwind label %bb.at

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.p

bb.o:                                             ; preds = %bb.s
  br i1 %i.ar, label %bb.az, label %.thread

.body.thread69:                                   ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i", %bb.al, %bb.ao, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i78"
  %lpad.thr_comm67 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.body:                                            ; preds = %bb.q
  %lpad.thr_comm.split-lp68 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.p:                                             ; preds = %bb.m, %bb.n
  %.sroa.031.0 = phi ptr [ @133, %bb.n ], [ @128, %bb.m ]
  %.sroa.3.0 = phi i64 [ 2, %bb.n ], [ 1, %bb.m ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.al = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.q, label %bb.r, !prof !25

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
          to label %bb.au unwind label %.body

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 20)
          to label %bb.u unwind label %.thread60

.thread60:                                        ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef 48, i64 noundef 8) #18
  br label %bb.az

bb.s:                                             ; preds = %bb.x, %bb.t
  %.pn63 = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %i.at, %bb.x ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.p) #15
          to label %bb.o unwind label %bb.at

bb.t:                                             ; preds = %bb.v
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.u:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 1, ptr %i.ap, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.al, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i64 1, ptr %.sroa.527.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.aq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.ar = icmp eq ptr %i.aq, null                 ; 2 uses
  br i1 %i.ar, label %bb.v, label %bb.w, !prof !25

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
          to label %bb.au unwind label %bb.t

bb.w:                                             ; preds = %bb.u
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %i.as, align 8
  %.sroa.430.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.aq, ptr %.sroa.430.0..sroa_idx31, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.532.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.ad, ptr %i.k, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.451.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !172
  store ptr @138, ptr %i.b, align 8, !noalias !179
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.434.0..sroa_idx, align 8, !noalias !179
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.535.0..sroa_idx, align 8, !noalias !179
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.636.0..sroa_idx, align 8, !noalias !179
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr @139, ptr %.sroa.737.0..sroa_idx, align 8, !noalias !179
  %.sroa.838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 2, ptr %.sroa.838.0..sroa_idx, align 8, !noalias !179
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.y unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.n) #15
          to label %bb.s unwind label %bb.at

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !8, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.n) #15
          to label %bb.ay unwind label %bb.at

bb.aa:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 48, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store ptr %i.av, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 152
  store i64 %i.ax, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  store ptr %.sroa.031.0, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 168
  store i64 %.sroa.3.0, ptr %i.be, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.bf = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h0c468b64ef6f8ebdE(ptr noalias noundef nonnull align 8 dereferenceable(248) %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(176) %i.q)
          to label %bb.ad unwind label %bb.ac     ; 2 uses

bb.ab:                                            ; preds = %bb.ay, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.bg, %bb.ac ], [ %i.ay, %bb.ay ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #15
          to label %.thread unwind label %bb.at

bb.ac:                                            ; preds = %bb.aa
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i" unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i": ; preds = %bb.ae
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit" unwind label %.body.thread69

bb.ah:                                            ; preds = %bb.ad
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i78" unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.thread unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i78": ; preds = %bb.ah
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.ak unwind label %.body.thread69

bb.ak:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i78"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.bl = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 5 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.al, label %bb.am, !prof !25

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
          to label %bb.au unwind label %.body.thread69

bb.am:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.g, align 8
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.459.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !180
  store ptr @141, ptr %i.a, align 8, !noalias !187
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.445.0..sroa_idx, align 8, !noalias !187
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.g, ptr %.sroa.546.0..sroa_idx, align 8, !noalias !187
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.647.0..sroa_idx, align 8, !noalias !187
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.748.0..sroa_idx, align 8, !noalias !187
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.ao unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef 48, i64 noundef 8) #18
  br label %.thread

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 -9223372036854775808, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.bo, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.bl, ptr %.sroa.440.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.541.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.i, align 8
  invoke void @_ZN9ninja_gen5build5Build14add_dependency17h560964a6cf3ea247E(ptr noalias noundef nonnull align 8 dereferenceable(248) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @142, i64 noundef 8, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.ap unwind label %.body.thread69

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.z)
          to label %bb.aq unwind label %bb.d

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i90" unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body86.thread unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i90": ; preds = %bb.aq, %bb.av
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret ptr %i.bf

bb.at:                                            ; preds = %bb.bb, %bb.az, %bb.ay, %bb.ab, %bb.z, %bb.x, %bb.s, %.thread, %bb.h, %bb.c
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.au:                                            ; preds = %bb.al, %bb.v, %bb.q, %bb.f
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.z)
          to label %bb.av unwind label %bb.d

bb.av:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h77374583839addd9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i90" unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ee8f0e210b7ef47E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body86.thread unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

bb.ay:                                            ; preds = %bb.z
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.p) #15
          to label %bb.ab unwind label %bb.at

bb.az:                                            ; preds = %.body, %.thread60, %bb.o
  %.pn6563 = phi { ptr, i32 } [ %i.an, %.thread60 ], [ %.pn63, %bb.o ], [ %lpad.thr_comm.split-lp68, %.body ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.v) #15
          to label %.thread unwind label %bb.at

bb.ba:                                            ; preds = %bb.h
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 96, i64 noundef 8) #18
  br label %bb.c

.body86.thread:                                   ; preds = %bb.aw, %bb.ar, %bb.bb, %bb.b
  %.pn68.pn50 = phi { ptr, i32 } [ %i.bs, %bb.aw ], [ %.pn68.pn51, %bb.bb ], [ %.pn68, %bb.b ], [ %i.bp, %bb.ar ]
  resume { ptr, i32 } %.pn68.pn50

bb.bb:                                            ; preds = %.body86, %bb.b
  %.pn68.pn51 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %.body86 ], [ %.pn68, %bb.b ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %3) #15
          to label %.body86.thread unwind label %bb.at
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN9configure3web22build_and_check_editor17h3a2fcbb31793c087E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [176 x i8], align 8               ; 10 uses
  %i.f = alloca [48 x i8], align 8                ; 5 uses
  %i.g = alloca [48 x i8], align 8                ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.n = tail call noundef align 8 dereferenceable_or_null(384) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 384, i64 noundef 8) #18 ; 14 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 384) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @114, i64 noundef 7)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.g ], [ %i.p, %bb.e ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.n, i64 noundef 384, i64 noundef 8) #18
  br label %bb.al

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @115, i64 noundef 14)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.j, %bb.h
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.j ], [ %i.q, %bb.h ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.l) #15
          to label %bb.d unwind label %bb.ak

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @116, i64 noundef 10)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.m, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.m ], [ %i.r, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #15
          to label %bb.g unwind label %bb.ak

bb.k:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @117, i64 noundef 13)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.p, %bb.n
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.p ], [ %i.s, %bb.n ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.j) #15
          to label %bb.j unwind label %bb.ak

bb.n:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @162, i64 noundef 15)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.s ], [ %i.t, %bb.q ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.i) #15
          to label %bb.m unwind label %bb.ak

bb.q:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @118, i64 noundef 5)
          to label %bb.u unwind label %bb.t

bb.s:                                             ; preds = %bb.v, %bb.t
end_hunk_0
begin_hunk_1_@_ZN9configure3web33declare_and_check_other_libraries17hbf3560d272984160E:bb.a

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hf1cb1ef03b2c1034E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.at unwind label %bb.al

bb.at:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cs = load i64, ptr %.sroa.483.0..sroa_idx, align 8, !alias.scope !226, !noalias !251, !noundef !8 ; 4 uses
  %i.ct = load i64, ptr %i.l, align 8, !alias.scope !226, !noalias !251, !noundef !8 ; 3 uses
  %.not.i = icmp eq i64 %i.cs, %i.ct
  br i1 %.not.i, label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h5586840e2b00466fE.exit.thread", label %"_ZN4core5array4iter10iter_inner78PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$T$GT$$u5d$$GT$4next17h5586840e2b00466fE.exit"

bb.au:                                            ; preds = %bb.ak, %bb.ad, %"_ZN4core3ptr67drop_in_place$LT$$LP$$RF$str$C$ninja_gen..input..BuildInput$RP$$GT$17he81fcf51c90b5edbE.exit126", %"_ZN4core3ptr67drop_in_place$LT$$LP$$RF$str$C$ninja_gen..input..BuildInput$RP$$GT$17he81fcf51c90b5edbE.exit121", %bb.ao, %.body, %bb.ac, %bb.y, %bb.q, %bb.h
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #16
  unreachable

"_ZN4core3ptr67drop_in_place$LT$$LP$$RF$str$C$ninja_gen..input..BuildInput$RP$$GT$17he81fcf51c90b5edbE.exit": ; preds = %bb.ak, %"_ZN4core3ptr67drop_in_place$LT$$LP$$RF$str$C$ninja_gen..input..BuildInput$RP$$GT$17he81fcf51c90b5edbE.exit121", %bb.d
  %.pn109.pn = phi { ptr, i32 } [ %.pn, %bb.d ], [ %.pn109, %"_ZN4core3ptr67drop_in_place$LT$$LP$$RF$str$C$ninja_gen..input..BuildInput$RP$$GT$17he81fcf51c90b5edbE.exit121" ], [ %.pn103, %bb.ak ]
  resume { ptr, i32 } %.pn109.pn

bb.av:                                            ; preds = %bb.ag, %bb.t, %bb.k
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_ZN9configure3web9check_sql17h927691bfe8824644E(ptr noalias noundef align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 8 uses
  %i.d = alloca [56 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.e = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !253
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !range !24, !noalias !253, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !18, !noalias !253, !noundef !8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.f, !prof !25

bb.d:                                             ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !253
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.j, i64 %i.l) #17
          to label %.noexc38 unwind label %bb.e

.noexc38:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.f:                                             ; preds = %.noexc
  %i.n = load ptr, ptr %i.k, align 8, !noalias !253, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = icmp ugt i64 %i.j, 13
  call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.n, ptr noundef nonnull align 1 dereferenceable(14) @196, i64 14, i1 false), !noalias !257
  store i64 %i.j, ptr %i.e, align 8
  %.sroa.011.sroa.4.0..sroa.043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.n, ptr %.sroa.011.sroa.4.0..sroa.043.0..sroa_idx, align 8
  %.sroa.011.sroa.5.0..sroa.043.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 14, ptr %.sroa.011.sroa.5.0..sroa.043.0..sroa_idx, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 -9223372036854775808, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i8 1, ptr %i.p, align 8
  %i.q = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h0ac58ad16aa22a59E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @197, i64 noundef 16, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.d) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.r = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.h, label %bb.i, !prof !25

bb.h:                                             ; preds = %bb.g
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !258
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 14, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc39 unwind label %bb.k

.noexc39:                                         ; preds = %bb.i
  %i.t = load i64, ptr %i.a, align 8, !range !24, !noalias !258, !noundef !8
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !18, !noalias !258, !noundef !8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.j, label %bb.l, !prof !25

bb.j:                                             ; preds = %.noexc39
  %i.y = load i64, ptr %i.x, align 8, !noalias !258
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.w, i64 %i.y) #17
          to label %.noexc40 unwind label %bb.k

.noexc40:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %.noexc39
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !258, !nonnull !8, !noundef !8 ; 2 uses
  %i.ab = icmp ugt i64 %i.w, 13
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.aa, ptr noundef nonnull align 1 dereferenceable(14) @196, i64 14, i1 false), !noalias !262
  store i64 %i.w, ptr %i.r, align 8
  %.sroa.023.sroa.4.0..sroa.046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.aa, ptr %.sroa.023.sroa.4.0..sroa.046.0..sroa_idx, align 8
  %.sroa.023.sroa.5.0..sroa.046.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 14, ptr %.sroa.023.sroa.5.0..sroa.046.0..sroa_idx, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 -9223372036854775808, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.c, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.418.0..sroa_idx, align 8
  %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.r, ptr %.sroa.418.sroa.4.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.418.sroa.5.0..sroa.418.0..sroa_idx.sroa_idx, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 0, ptr %i.ac, align 8
  %i.ad = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h0ac58ad16aa22a59E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @198, i64 noundef 10, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f
  %.sroa.0.0 = phi ptr [ %i.q, %bb.f ], [ %i.ad, %bb.l ]
  ret ptr %.sroa.0.0

bb.n:                                             ; preds = %bb.k, %bb.e
  %.sink = phi ptr [ %i.r, %bb.k ], [ %i.e, %bb.e ]
  %.pn = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.m, %bb.e ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 48, i64 noundef 8) #18
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN9configure3web9check_web17h3b5afecde40c0b37E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [120 x i8], align 8               ; 12 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 9 uses
  %i.q = alloca [120 x i8], align 8               ; 12 uses
  %i.r = alloca [16 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 16 uses
  %i.v = alloca [16 x i8], align 8                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [48 x i8], align 8                ; 14 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 4 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [96 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 6 uses
  %i.ag = alloca [48 x i8], align 8               ; 5 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 7 uses
  %i.aj = alloca [72 x i8], align 8               ; 7 uses
  %i.ak = alloca [48 x i8], align 8               ; 4 uses
  %i.al = alloca [72 x i8], align 8               ; 7 uses
  %i.am = alloca [56 x i8], align 8               ; 5 uses
  %i.an = alloca [48 x i8], align 8               ; 4 uses
  %i.ao = alloca [56 x i8], align 8               ; 5 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [48 x i8], align 8               ; 8 uses
  %i.ar = alloca [48 x i8], align 8               ; 13 uses
  %.sroa.0247 = alloca [24 x i8], align 8         ; 7 uses
  %i.as = alloca [48 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.at = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 7 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.b, label %bb.c, !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !263
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, i64 noundef 34, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.av = load i64, ptr %i.g, align 8, !range !24, !noalias !263, !noundef !8
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !18, !noalias !263, !noundef !8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.d, label %bb.g, !prof !25

bb.d:                                             ; preds = %.noexc
  %i.ba = load i64, ptr %i.az, align 8, !noalias !263
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ay, i64 %i.ba) #17
          to label %.noexc183 unwind label %bb.f

.noexc183:                                        ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.i ], [ %i.bb, %bb.f ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 48, i64 noundef 8) #18
  br label %.thread335

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc
  %i.bc = load ptr, ptr %i.az, align 8, !noalias !263, !nonnull !8, !noundef !8 ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, 33
  call void @llvm.assume(i1 %i.bd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !263
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(34) %i.bc, ptr noundef nonnull align 1 dereferenceable(34) @199, i64 34, i1 false), !noalias !267
  store i64 %i.ay, ptr %.sroa.0247, align 8
  %.sroa.4232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0247, i64 8
  store ptr %i.bc, ptr %.sroa.4232.0..sroa_idx, align 8
  %.sroa.5233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0247, i64 16
  store i64 34, ptr %.sroa.5233.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !268
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 63, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc184 unwind label %bb.i

.noexc184:                                        ; preds = %bb.g
  %i.be = load i64, ptr %i.f, align 8, !range !24, !noalias !268, !noundef !8
  %i.bf = trunc nuw i64 %i.be to i1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !18, !noalias !268, !noundef !8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bf, label %bb.h, label %bb.l, !prof !25

bb.h:                                             ; preds = %.noexc184
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !268
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bh, i64 %i.bj) #17
          to label %.noexc185 unwind label %bb.i

.noexc185:                                        ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.0247) #15
          to label %bb.e unwind label %bb.cx

bb.j:                                             ; preds = %bb.dc, %bb.k
  %.sroa.074.0 = phi i8 [ %.sroa.074.1, %bb.k ], [ %.sroa.074.3.ph, %bb.dc ]
  %.pn168 = phi { ptr, i32 } [ %i.bm, %bb.k ], [ %lpad.thr_comm.split-lp, %bb.dc ] ; 2 uses
  %i.bl = trunc nuw i8 %.sroa.074.0 to i1
  br i1 %i.bl, label %bb.dd, label %.thread335

bb.k:                                             ; preds = %bb.da, %bb.m
  %.sroa.074.1 = phi i8 [ 1, %bb.m ], [ %.sroa.074.5.ph, %bb.da ]
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %.noexc184
  %i.bn = load ptr, ptr %i.bi, align 8, !noalias !268, !nonnull !8, !noundef !8 ; 2 uses
  %i.bo = icmp ugt i64 %i.bh, 62
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.bn, ptr noundef nonnull align 1 dereferenceable(63) @200, i64 63, i1 false), !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0247, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0247)
  %.sroa.4248.0..sroa.0200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 %i.bh, ptr %.sroa.4248.0..sroa.0200.0..sroa_idx, align 8
  %.sroa.5249.0..sroa.0200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr %i.bn, ptr %.sroa.5249.0..sroa.0200.0..sroa_idx, align 8
  %.sroa.6250.0..sroa.0200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store i64 63, ptr %.sroa.6250.0..sroa.0200.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.bp, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.as, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.bq = call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #18 ; 8 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 96) #17
          to label %bb.cz unwind label %bb.k

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !273
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 11, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc187 unwind label %bb.p

.noexc187:                                        ; preds = %bb.n
  %i.bs = load i64, ptr %i.e, align 8, !range !24, !noalias !273, !noundef !8
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !18, !noalias !273, !noundef !8 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.o, label %bb.q, !prof !25

bb.o:                                             ; preds = %.noexc187
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !273
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bv, i64 %i.bx) #17
          to label %.noexc188 unwind label %bb.p

.noexc188:                                        ; preds = %bb.o
  unreachable

.thread:                                          ; preds = %bb.p, %bb.s, %bb.v
  %.pn132 = phi { ptr, i32 } [ %i.cq, %bb.v ], [ %i.ch, %bb.s ], [ %i.by, %bb.p ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 96, i64 noundef 8) #18
  br label %bb.dd

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.q:                                             ; preds = %.noexc187
  %i.bz = load ptr, ptr %i.bw, align 8, !noalias !273, !nonnull !8, !noundef !8 ; 2 uses
  %i.ca = icmp ugt i64 %i.bv, 10
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.bz, ptr noundef nonnull align 1 dereferenceable(11) @201, i64 11, i1 false), !noalias !277
  store i64 %i.bv, ptr %i.ap, align 8
  %.sroa.4252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.bz, ptr %.sroa.4252.0..sroa_idx, align 8
  %.sroa.5253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 11, ptr %.sroa.5253.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !278
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 63, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc190 unwind label %bb.s

.noexc190:                                        ; preds = %bb.q
  %i.cb = load i64, ptr %i.d, align 8, !range !24, !noalias !278, !noundef !8
  %i.cc = trunc nuw i64 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !18, !noalias !278, !noundef !8 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.cc, label %bb.r, label %bb.t, !prof !25

bb.r:                                             ; preds = %.noexc190
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !278
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ce, i64 %i.cg) #17
          to label %.noexc191 unwind label %bb.s

.noexc191:                                        ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #15
          to label %.thread unwind label %bb.cx

bb.t:                                             ; preds = %.noexc190
  %i.ci = load ptr, ptr %i.cf, align 8, !noalias !278, !nonnull !8, !noundef !8 ; 2 uses
  %i.cj = icmp ugt i64 %i.ce, 62
  call void @llvm.assume(i1 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.ci, ptr noundef nonnull align 1 dereferenceable(63) @200, i64 63, i1 false), !noalias !282
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.sroa.4264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 %i.ce, ptr %.sroa.4264.0..sroa_idx, align 8
  %.sroa.5265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ci, ptr %.sroa.5265.0..sroa_idx, align 8
  %.sroa.6266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 63, ptr %.sroa.6266.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !283
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 18, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc193 unwind label %bb.v

.noexc193:                                        ; preds = %bb.t
  %i.ck = load i64, ptr %i.c, align 8, !range !24, !noalias !283, !noundef !8
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !18, !noalias !283, !noundef !8 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.u, label %bb.w, !prof !25

bb.u:                                             ; preds = %.noexc193
  %i.cp = load i64, ptr %i.co, align 8, !noalias !283
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cn, i64 %i.cp) #17
          to label %.noexc194 unwind label %bb.v

.noexc194:                                        ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.aq) #15
          to label %.thread unwind label %bb.cx

bb.w:                                             ; preds = %.noexc193
  %i.cr = load ptr, ptr %i.co, align 8, !noalias !283, !nonnull !8, !noundef !8 ; 2 uses
  %i.cs = icmp ugt i64 %i.cn, 17
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.cr, ptr noundef nonnull align 1 dereferenceable(18) @202, i64 18, i1 false), !noalias !287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.aq, i64 48, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i64 %i.cn, ptr %i.ct, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  store ptr %i.cr, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 64
  store i64 18, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  store i64 -9223372036854775808, ptr %.sroa.49.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 2, ptr %i.cu, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store ptr %i.bq, ptr %.sroa.4202.0..sroa_idx, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  store i64 2, ptr %.sroa.5203.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  invoke fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.an, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.as)
          to label %bb.x unwind label %bb.dc

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(48) %i.an, i64 48, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store i8 1, ptr %i.cv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.cw = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h984a946039fc8833E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @203, i64 noundef 19, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ao)
          to label %bb.y unwind label %bb.dc      ; 2 uses

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %.not = icmp eq ptr %i.cw, null
  br i1 %.not, label %bb.z, label %bb.da

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.am, ptr noundef nonnull align 8 dereferenceable(48) %i.as, i64 48, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 0, ptr %i.cx, align 8
  %i.cy = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h984a946039fc8833E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @204, i64 noundef 13, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.am)
          to label %bb.aa unwind label %bb.dc     ; 2 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %.not135 = icmp eq ptr %i.cy, null
  br i1 %.not135, label %bb.ab, label %bb.da

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.ak, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ar)
          to label %bb.ac unwind label %bb.dc

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.al, ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 48, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  store ptr @205, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 32, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store i8 1, ptr %i.db, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.dc = invoke noundef ptr @_ZN9ninja_gen5build5Build10add_action17h6fa909f9f454b527E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @206, i64 noundef 21, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.al)
          to label %bb.ad unwind label %bb.dc     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %.not137 = icmp eq ptr %i.dc, null
  br i1 %.not137, label %bb.ae, label %bb.da

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  store ptr @205, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  store i64 32, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  store i8 0, ptr %i.df, align 8
  %i.dg = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h6fa909f9f454b527E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @207, i64 noundef 15, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.aj) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %.not139 = icmp eq ptr %i.dg, null
  br i1 %.not139, label %bb.ag, label %.thread302

.thread302:                                       ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.bu

.thread339:                                       ; preds = %.thread324, %bb.bn, %bb.at
  %.sroa.0.0.ph = phi ptr [ %i.dq, %bb.at ], [ %i.ef, %bb.bn ], [ %.sroa.0.2326, %.thread324 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.bu

bb.af:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.dh = trunc nuw i8 %.sroa.074.5.ph to i1
  br i1 %i.dh, label %bb.db, label %bb.bu

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.di = call noundef align 8 dereferenceable_or_null(192) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 192, i64 noundef 8) #18 ; 8 uses
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %bb.ah, label %bb.ai, !prof !25

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 192) #17
  unreachable

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ah, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @208, i64 noundef 13)
          to label %bb.al unwind label %bb.ak

bb.aj:                                            ; preds = %bb.am, %bb.ak
  %.pn140.pn.pn = phi { ptr, i32 } [ %.pn140.pn, %bb.am ], [ %i.dk, %bb.ak ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.di, i64 noundef 192, i64 noundef 8) #18
  br label %.thread335

bb.ak:                                            ; preds = %bb.ai
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.al:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ag, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 13)
          to label %bb.ao unwind label %bb.an

bb.am:                                            ; preds = %bb.ap, %bb.an
  %.pn140.pn = phi { ptr, i32 } [ %.pn140, %bb.ap ], [ %i.dl, %bb.an ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.ah) #15
          to label %bb.aj unwind label %bb.cx

bb.an:                                            ; preds = %bb.al
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ao:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @209, i64 noundef 50)
          to label %bb.ar unwind label %bb.aq

bb.ap:                                            ; preds = %bb.as, %bb.aq
  %.pn140 = phi { ptr, i32 } [ %i.dn, %bb.as ], [ %i.dm, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.ag) #15
          to label %bb.am unwind label %bb.cx

bb.aq:                                            ; preds = %bb.ao
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store i64 -9223372036854775808, ptr %.sroa.441.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @210, i64 noundef 70)
          to label %bb.at unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.af) #15
          to label %bb.ap unwind label %bb.cx

bb.at:                                            ; preds = %bb.ar
  %1 = getelementptr inbounds nuw i8, ptr %i.di, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.di, ptr noundef nonnull align 8 dereferenceable(48) %i.ah, i64 48, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.do, ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i64 48, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull align 8 dereferenceable(48) %i.af, i64 48, i1 false)
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.di, i64 168
  store i64 -9223372036854775808, ptr %.sroa.447.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 -9223372036854775805, ptr %i.ai, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 4, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.di, ptr %.sroa.438.sroa.4.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i64 4, ptr %.sroa.438.sroa.5.0..sroa.438.0..sroa_idx.sroa_idx, align 8
  %i.dq = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17h8a6c0985e27d5f05E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.ai) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %.not144 = icmp eq ptr %i.dq, null
  br i1 %.not144, label %bb.au, label %.thread339

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.dr = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.av, label %bb.aw, !prof !25

bb.av:                                            ; preds = %bb.au
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @111, i64 noundef 16)
          to label %bb.ba unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dr, i64 noundef 48, i64 noundef 8) #18
  br label %.thread335

bb.ay:                                            ; preds = %bb.bd, %bb.az
  %.pn164 = phi { ptr, i32 } [ %i.du, %bb.az ], [ %.pn146.pn.pn, %bb.bd ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.ad) #15
          to label %.thread335 unwind label %bb.cx

bb.az:                                            ; preds = %bb.bb
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ba:                                            ; preds = %bb.aw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dr, ptr noundef nonnull align 8 dereferenceable(48) %i.ac, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 1, ptr %i.dv, align 8
  %.sroa.4212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %i.dr, ptr %.sroa.4212.0..sroa_idx, align 8
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 1, ptr %.sroa.5213.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.ad, align 8
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.dw = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef 8) #18 ; 6 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.bb, label %bb.bc, !prof !25

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 144) #17
          to label %bb.cz unwind label %bb.az

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @208, i64 noundef 13)
          to label %bb.bf unwind label %bb.be

bb.bd:                                            ; preds = %bb.bg, %bb.be
  %.pn146.pn.pn = phi { ptr, i32 } [ %.pn146.pn, %bb.bg ], [ %i.dy, %bb.be ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dw, i64 noundef 144, i64 noundef 8) #18
  br label %bb.ay

bb.be:                                            ; preds = %bb.bc
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.bf:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @156, i64 noundef 13)
          to label %bb.bi unwind label %bb.bh

bb.bg:                                            ; preds = %bb.bj, %bb.bh
  %.pn146.pn = phi { ptr, i32 } [ %.pn146, %bb.bj ], [ %i.dz, %bb.bh ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.ab) #15
          to label %bb.bd unwind label %bb.cx

bb.bh:                                            ; preds = %bb.bf
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bi:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 7)
          to label %bb.bl unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bm, %bb.bk
  %.pn146 = phi { ptr, i32 } [ %i.eb, %bb.bm ], [ %i.ea, %bb.bk ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.aa) #15
          to label %bb.bg unwind label %bb.cx

bb.bk:                                            ; preds = %bb.bi
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hbf6ec19b39067759E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @113, i64 noundef 17)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.y) #15
          to label %bb.bj unwind label %bb.cx

bb.bn:                                            ; preds = %bb.bl
  %i.ec = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %2 = getelementptr inbounds nuw i8, ptr %i.dw, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dw, ptr noundef nonnull align 8 dereferenceable(48) %i.ab, i64 48, i1 false)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ed, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i64 48, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i64 -9223372036854775805, ptr %i.ee, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i64 3, ptr %.sroa.454.0..sroa_idx, align 8
  %.sroa.454.sroa.4.0..sroa.454.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  store ptr %i.dw, ptr %.sroa.454.sroa.4.0..sroa.454.0..sroa_idx.sroa_idx, align 8
  %.sroa.454.sroa.5.0..sroa.454.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i64 3, ptr %.sroa.454.sroa.5.0..sroa.454.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.ef = call noundef ptr @_ZN9ninja_gen5build5Build10add_action17hfe69f0e83a932924E(ptr noalias noundef nonnull align 8 dereferenceable(248) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @213, i64 noundef 12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.ae) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.not150 = icmp eq ptr %i.ef, null
  br i1 %.not150, label %bb.bo, label %.thread339

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.eg = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 4 uses
  %i.eh = icmp eq ptr %i.eg, null
  br i1 %i.eh, label %bb.bp, label %bb.bq, !prof !25

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
  unreachable

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @"_ZN83_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h77da462ac4e392c6E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @214, i64 noundef 13)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ei = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eg, i64 noundef 48, i64 noundef 8) #18
  br label %.thread335

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eg, ptr noundef nonnull align 8 dereferenceable(48) %i.w, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 1, ptr %i.ej, align 8
  %.sroa.4221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.eg, ptr %.sroa.4221.0..sroa_idx, align 8
  %.sroa.5222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i64 1, ptr %.sroa.5222.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.x, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 6 uses
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.4229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.5230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.sroa.4225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %.sroa.5226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.q, i64 104 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.n, i64 96 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.n, i64 104 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.n, i64 112 ; 2 uses
  store ptr @215, ptr %i.v, align 8
  store i64 2, ptr %i.ek, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.ew = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #18 ; 9 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.bv, label %bb.bw, !prof !25

bb.bt:                                            ; preds = %bb.cy, %bb.bv
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.thread314

.thread314:                                       ; preds = %bb.cj, %bb.cd, %bb.bt, %.thread310, %bb.bx
  %.pn161.pn = phi { ptr, i32 } [ %i.fm, %bb.cj ], [ %i.ey, %bb.bt ], [ %.pn157313, %.thread310 ], [ %lpad.thr_comm.split-lp320, %bb.cd ], [ %.pn153, %bb.bx ]
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$ninja_gen..input..BuildInput$GT$17hd2e1daecda49ce53E"(ptr noalias noundef align 8 dereferenceable(48) %i.x) #15
          to label %.thread335 unwind label %bb.cx

bb.bu:                                            ; preds = %bb.af, %bb.db, %.thread302, %.thread339, %bb.cw
  %.sroa.0.1 = phi ptr [ null, %bb.cw ], [ %i.dg, %.thread302 ], [ %.sroa.0.3.ph, %bb.db ], [ %.sroa.0.3.ph, %bb.af ], [ %.sroa.0.0.ph, %.thread339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  ret ptr %.sroa.0.1

bb.bv:                                            ; preds = %bb.cm, %bb.bs
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 48) #17
          to label %bb.cz unwind label %bb.bt

bb.bw:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.v, ptr %i.r, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h245d25d94735a8eaE", ptr %.sroa.4129.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !288
  store ptr @217, ptr %i.b, align 8, !noalias !295
  store i64 2, ptr %.sroa.4229.0..sroa_idx, align 8, !noalias !295
  store ptr %i.r, ptr %.sroa.5230.0..sroa_idx, align 8, !noalias !295
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !295
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !295
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.bz unwind label %bb.by

bb.bx:                                            ; preds = %bb.cb, %bb.by
  %i.ez = phi ptr [ %i.ff, %bb.cb ], [ %.lcssa380, %bb.by ]
  %.pn153 = phi { ptr, i32 } [ %lpad.phi, %bb.cb ], [ %i.fa, %bb.by ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ez, i64 noundef 48, i64 noundef 8) #18
  br label %.thread314

bb.by:                                            ; preds = %bb.cn, %bb.bw
  %.lcssa380 = phi ptr [ %i.ew, %bb.bw ], [ %i.fq, %bb.cn ]
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !296
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h8efc9a160d154ccbE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 17, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc197 unwind label %.loopexit

.noexc197:                                        ; preds = %bb.bz
  %i.fb = load i64, ptr %i.a, align 8, !range !24, !noalias !296, !noundef !8
  %i.fc = trunc nuw i64 %i.fb to i1
  %i.fd = load i64, ptr %i.el, align 8, !range !18, !noalias !296, !noundef !8 ; 3 uses
  br i1 %i.fc, label %bb.ca, label %bb.cc, !prof !25

bb.ca:                                            ; preds = %.noexc197.1, %.noexc197
  %.lcssa401 = phi i64 [ %i.fd, %.noexc197 ], [ %i.fu, %.noexc197.1 ]
  %.lcssa382 = phi ptr [ %i.ew, %.noexc197 ], [ %i.fq, %.noexc197.1 ]
  %i.fe = load i64, ptr %i.em, align 8, !noalias !296
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.lcssa401, i64 %i.fe) #17
          to label %.noexc198 unwind label %.loopexit.split-lp

.noexc198:                                        ; preds = %bb.ca
  unreachable

.loopexit:                                        ; preds = %bb.co, %bb.bz
  %.lcssa381 = phi ptr [ %i.ew, %bb.bz ], [ %i.fq, %bb.co ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp:                               ; preds = %bb.ca
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %i.ff = phi ptr [ %.lcssa381, %.loopexit ], [ %.lcssa382, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hd440d1522a579274E"(ptr noalias noundef align 8 dereferenceable(24) %i.t) #15
          to label %bb.bx unwind label %bb.cx

bb.cc:                                            ; preds = %.noexc197
  %i.fg = load ptr, ptr %i.em, align 8, !noalias !296, !nonnull !8, !noundef !8 ; 2 uses
  %i.fh = icmp ugt i64 %i.fd, 16
  call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.fg, ptr noundef nonnull align 1 dereferenceable(17) @113, i64 17, i1 false), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %.sroa.4287.0..sroa.0227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store i64 %i.fd, ptr %.sroa.4287.0..sroa.0227.0..sroa_idx, align 8
  %.sroa.5288.0..sroa.0227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store ptr %i.fg, ptr %.sroa.5288.0..sroa.0227.0..sroa_idx, align 8
  %.sroa.6289.0..sroa.0227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ew, i64 40
  store i64 17, ptr %.sroa.6289.0..sroa.0227.0..sroa_idx, align 8
  store i64 1, ptr %i.en, align 8
  store ptr %i.ew, ptr %.sroa.4225.0..sroa_idx, align 8
  store i64 1, ptr %.sroa.5226.0..sroa_idx, align 8
  store i64 -9223372036854775805, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.u)
          to label %bb.ce unwind label %.thread321

.thread321:                                       ; preds = %bb.cr, %bb.cp, %bb.cg, %bb.cc
  %lpad.thr_comm319 = landingpad { ptr, i32 }
          cleanup
  br label %.thread310

bb.cd:                                            ; preds = %bb.cu, %bb.ck
  %lpad.thr_comm.split-lp320 = landingpad { ptr, i32 }
          cleanup
  br label %.thread314

bb.ce:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke fastcc void @"_ZN67_$LT$ninja_gen..input..BuildInput$u20$as$u20$core..clone..Clone$GT$5clone17h9bf5381cb27e8ed8E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x)
          to label %bb.cg unwind label %bb.cf

end_hunk_1
