Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.14?download=true
inline.NumInlined: 1677
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCskIqAKC4t9Ft_2yr8commands10completion10completion:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1838
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.ac = load i64, ptr %i.ab, align 8, !range !18, !alias.scope !1841, !noalias !1839, !noundef !8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, -1
  br i1 %i.ad, label %bb.z, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %switch.i.i.i.i = icmp samesign ult i64 %i.ac, 4
  br i1 %switch.i.i.i.i, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 88 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !1844, !noalias !1839 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %.val1.i.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !1844, !noalias !1839, !nonnull !8, !align !13, !noundef !8 ; 5 uses
  %i.ag = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !8, !noalias !1845 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.ag(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.u unwind label %bb.w, !noalias !1845

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !15, !invariant.load !8, !noalias !1845 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !19, !invariant.load !8, !noalias !1845
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #34, !noalias !1845
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !15, !invariant.load !8, !noalias !1845 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %.body.i14, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !19, !invariant.load !8, !noalias !1845
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #34, !noalias !1845
  br label %.body.i14

.body.i14:                                        ; preds = %bb.x, %bb.w
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !1837, !noalias !1839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i11, i64 16, i1 false), !noalias !1839
  br label %bb.m

bb.y:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !1839
  unreachable

bb.z:                                             ; preds = %bb.v, %bb.u, %bb.r, %bb.q
  store i64 %i.z, ptr %i.ab, align 8, !alias.scope !1837, !noalias !1839
  %.sroa.6.0..sroa_idx4.i15 = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i11, i64 16, i1 false), !noalias !1839
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1846
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.a, ptr noundef nonnull align 8 dereferenceable(600) %i.h, i64 600, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !1847)
  call void @llvm.experimental.noalias.scope.decl(metadata !1848)
  invoke void @_RNvMNtNtCs1ZTs3ySsPIM_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.a)
          to label %bb.ac unwind label %bb.aa, !noalias !1849

bb.aa:                                            ; preds = %bb.z
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(712) %i.k) #32
          to label %bb.ae unwind label %bb.ab, !noalias !1849

bb.ab:                                            ; preds = %bb.aa
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !1849
  unreachable

bb.ac:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(712) %i.k, i64 712, i1 false), !alias.scope !1850, !noalias !1851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.ad:                                            ; preds = %.thread570
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ae:                                            ; preds = %bb.aa, %.thread570
  %.pn568 = phi { ptr, i32 } [ %.pn569, %.thread570 ], [ %i.at, %bb.aa ]
  resume { ptr, i32 } %.pn568

.thread570:                                       ; preds = %bb.m, %bb.c, %.thread
  %.pn569 = phi { ptr, i32 } [ %i.m, %.thread ], [ %.pn.i, %bb.c ], [ %.pn.i12, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(712) %i.k) #32
          to label %bb.ae unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef ptr @_RNvNtNtCskIqAKC4t9Ft_2yr8commands10completion15exec_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [712 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvMs0_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 5)
  %i.d = call noundef ptr @_RINvMNtNtCs1ZTs3ySsPIM_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCskKLDkoKarTP_4core6option6OptionRNtNtNtNtCsda7QBXU1nyo_13clap_complete3aot6shells5shell5ShellEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !range !1852, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCskIqAKC4t9Ft_2yr8commands3cli(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.f
  ret ptr null

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(712) %i.c) #32
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8
  invoke void @_RINvNtNtCsda7QBXU1nyo_13clap_complete3aot9generator8generateNtNtNtB4_6shells5shell5ShellReECskIqAKC4t9Ft_2yr(i8 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @28)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(712) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix3fix(ptr dead_on_unwind noalias nofree noundef writable sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [712 x i8], align 8               ; 4 uses
  %i.b = alloca [712 x i8], align 8               ; 4 uses
  %i.c = alloca [600 x i8], align 8               ; 5 uses
  %i.d = alloca [712 x i8], align 8               ; 6 uses
  %i.e = alloca [4216 x i8], align 8              ; 8 uses
  %i.f = alloca [600 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i.i7 = alloca [16 x i8], align 8       ; 4 uses
  %i.h = alloca [4200 x i8], align 8              ; 4 uses
  %i.i = alloca [600 x i8], align 8               ; 53 uses
  %i.j = alloca [600 x i8], align 8               ; 4 uses
  %i.k = alloca [600 x i8], align 8               ; 5 uses
  %i.l = alloca [712 x i8], align 8               ; 4 uses
  %i.m = alloca [712 x i8], align 8               ; 4 uses
  %i.n = alloca [712 x i8], align 8               ; 7 uses
  %i.o = alloca [712 x i8], align 8               ; 8 uses
  %i.p = alloca [712 x i8], align 8               ; 4 uses
  %i.q = alloca [712 x i8], align 8               ; 4 uses
  %i.r = alloca [600 x i8], align 8               ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i347.i = alloca [16 x i8], align 8     ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.6.i335.i = alloca [16 x i8], align 8     ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [600 x i8], align 8               ; 49 uses
  %i.w = alloca [600 x i8], align 8               ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 5 uses
  %i.z = alloca [600 x i8], align 8               ; 7 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i275.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i263.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [600 x i8], align 8              ; 52 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [600 x i8], align 8              ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i207.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i195.i = alloca [16 x i8], align 8     ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [600 x i8], align 8              ; 49 uses
  %i.ak = alloca [600 x i8], align 8              ; 4 uses
  %i.al = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i141.i = alloca [16 x i8], align 8     ; 4 uses
  %i.am = alloca [600 x i8], align 8              ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.6.i.i = alloca [16 x i8], align 8        ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [600 x i8], align 8              ; 48 uses
  %i.aq = alloca [32 x i8], align 8               ; 4 uses
  %i.ar = alloca [32 x i8], align 8               ; 4 uses
  %i.as = alloca [600 x i8], align 8              ; 5 uses
  %i.at = alloca [600 x i8], align 8              ; 8 uses
  %i.au = alloca [600 x i8], align 8              ; 9 uses
  %i.av = alloca [600 x i8], align 8              ; 6 uses
  %i.aw = alloca [600 x i8], align 8              ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 6 uses
  %i.ay = alloca [600 x i8], align 8              ; 5 uses
  %i.az = alloca [600 x i8], align 8              ; 8 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [600 x i8], align 8              ; 53 uses
  %i.bc = alloca [600 x i8], align 8              ; 8 uses
  %i.bd = alloca [600 x i8], align 8              ; 6 uses
  %i.be = alloca [600 x i8], align 8              ; 4 uses
  %i.bf = alloca [600 x i8], align 8              ; 5 uses
  %i.bg = alloca [600 x i8], align 8              ; 8 uses
  %i.bh = alloca [600 x i8], align 8              ; 9 uses
  %i.bi = alloca [600 x i8], align 8              ; 54 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [600 x i8], align 8              ; 5 uses
  %i.bl = alloca [600 x i8], align 8              ; 8 uses
  %i.bm = alloca [600 x i8], align 8              ; 4 uses
  %i.bn = alloca [600 x i8], align 8              ; 4 uses
  %i.bo = alloca [712 x i8], align 8              ; 4 uses
  %i.bp = alloca [712 x i8], align 8              ; 4 uses
  %i.bq = alloca [712 x i8], align 8              ; 7 uses
  %i.br = alloca [712 x i8], align 8              ; 7 uses
  %i.bs = alloca [712 x i8], align 8              ; 7 uses
  %i.bt = alloca [712 x i8], align 8              ; 7 uses
  %i.bu = alloca [712 x i8], align 8              ; 7 uses
  %i.bv = alloca [712 x i8], align 8              ; 4 uses
  %i.bw = alloca [712 x i8], align 8              ; 5 uses
  %i.bx = alloca [712 x i8], align 8              ; 5 uses
  %i.by = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv)
  call void @_RNvNtCskIqAKC4t9Ft_2yr8commands7command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 3)
  call void @_RINvMs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder7commandNtB6_7Command5aboutReECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 700 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !noundef !8
  %i.cb = or i32 %i.ca, 65536
  store i32 %i.cb, ptr %i.bz, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bx, ptr noundef nonnull align 8 dereferenceable(712) %i.bw, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !2050
  invoke void @_RNvNtCskIqAKC4t9Ft_2yr8commands7command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(address) dereferenceable(712) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 8)
          to label %.noexc unwind label %.body.thread22

.noexc:                                           ; preds = %bb.a
  invoke void @_RINvMs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder7commandNtB6_7Command5aboutReECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bp, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bo, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 29)
          to label %.noexc4 unwind label %.body.thread22

.noexc4:                                          ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !2050
  invoke void @_RINvMs0_NtNtCs1ZTs3ySsPIM_12clap_builder7builder7commandNtB6_7Command10long_aboutReECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.bq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.bp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 363)
          to label %.noexc5 unwind label %.body.thread22

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !2050
  %.sroa.15857.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2051
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.15857.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.17859.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17859.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.19861.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.19861.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.21863.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.21863.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.23865.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.23865.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.25867.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.25867.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.27869.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27869.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.32874.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.32874.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.34876.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.34876.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.39881.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39881.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.41883.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.41883.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.43885.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43885.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  %.sroa.45887.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.45887.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !2050
  store i64 0, ptr %i.ap, align 8, !noalias !2052
  %.sroa.5847.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store i64 0, ptr %.sroa.5847.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.7849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  store i64 0, ptr %.sroa.7849.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.9851.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store i64 0, ptr %.sroa.9851.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.11853.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store i64 -1, ptr %.sroa.11853.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.13855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  store i64 0, ptr %.sroa.13855.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.14856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.14856.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.16858.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.16858.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.18860.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.18860.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.20862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.20862.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.22864.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.22864.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.24866.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.24866.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.26868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26868.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.28870.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.28870.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.29871.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 288
  %.sroa.31873.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.29871.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.31873.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.33875.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.33875.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.35877.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.35877.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.36878.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %.sroa.38880.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.36878.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.38880.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.40882.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.40882.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.42884.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42884.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.44886.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44886.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.46888.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46888.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.47889.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 480
  store i64 0, ptr %.sroa.47889.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.48890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 488
  store i64 -1, ptr %.sroa.48890.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.50892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 512
  store i64 -1, ptr %.sroa.50892.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.52894.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 536
  store ptr @33, ptr %.sroa.52894.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.53895.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 544
  store i64 10, ptr %.sroa.53895.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.54896.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 552
  store ptr null, ptr %.sroa.54896.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.56898.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 568
  store ptr null, ptr %.sroa.56898.0..sroa_idx.i, align 8, !noalias !2052
  %.sroa.58900.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 584
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 255>, ptr %.sroa.58900.0..sroa_idx.i, align 8, !noalias !2052
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2051
  store ptr @33, ptr %i.ao, align 8, !noalias !2051
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 10, ptr %i.cc, align 8, !noalias !2051
  invoke void @_RINvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(none) dereferenceable(600) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.ao)
          to label %bb.b unwind label %.thread.i, !noalias !2050

.thread1769.i:                                    ; preds = %bb.l
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.thread1766.i

.thread.i:                                        ; preds = %.noexc5
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.thread1766.i

bb.b:                                             ; preds = %.noexc5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !2051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !2051
  call void @llvm.experimental.noalias.scope.decl(metadata !2053)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bk, i64 596
  store i8 0, ptr %i.cf, align 4, !alias.scope !2054, !noalias !2055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.bl, ptr noundef nonnull align 8 dereferenceable(600) %i.bk, i64 600, i1 false), !alias.scope !2056, !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !2050
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.experimental.noalias.scope.decl(metadata !2058)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !2059
  invoke void @_RNvXs2_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 37)
          to label %_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i.i unwind label %bb.d, !noalias !2060

bb.c:                                             ; preds = %.body.i.i, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.cg, %bb.d ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.bl) #32
          to label %.thread1766.i unwind label %bb.k, !noalias !2061

bb.d:                                             ; preds = %bb.b
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.b
  %i.ch = load i64, ptr %i.an, align 8, !range !12, !noalias !2059, !noundef !8 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, -1
end_hunk_0
begin_hunk_1_@_RNvNtNtCskIqAKC4t9Ft_2yr8commands3fix3fix:bb.a
  br i1 %i.dq, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i214.i unwind label %bb.ao, !noalias !2104

bb.ao:                                            ; preds = %bb.an
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %.body.i211.i unwind label %bb.ap, !noalias !2104

bb.ap:                                            ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2104
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i214.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.as unwind label %bb.aq, !noalias !2104

bb.aq:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i214.i
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i211.i

.body.i211.i:                                     ; preds = %bb.aq, %bb.ao
  %eh.lpad-body.i212.i = phi { ptr, i32 } [ %i.dt, %bb.aq ], [ %i.dr, %bb.ao ]
  store i64 %i.dm, ptr %i.do, align 8, !alias.scope !2101, !noalias !2106
  %.sroa.6.0..sroa_idx3.i213.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i213.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i207.i, i64 16, i1 false), !noalias !2106
  br label %bb.aj

bb.ar:                                            ; preds = %bb.aj
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2104
  unreachable

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i214.i, %bb.am
  store i64 %i.dm, ptr %i.do, align 8, !alias.scope !2101, !noalias !2106
  %.sroa.6.0..sroa_idx4.i215.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i215.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i207.i, i64 16, i1 false), !noalias !2106
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i207.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(596) %i.af, ptr noundef nonnull align 8 dereferenceable(596) %i.bh, i64 596, i1 false), !noalias !2050
  %.sroa.51028.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 597
  %.sroa.51032.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51032.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.51028.0..sroa_idx.i, i64 3, i1 false), !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !2050
  call void @llvm.experimental.noalias.scope.decl(metadata !2108)
  call void @llvm.experimental.noalias.scope.decl(metadata !2109)
  %.sroa.41031.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 596
  store i8 1, ptr %.sroa.41031.0..sroa_idx.i, align 4, !alias.scope !2110, !noalias !2111
  invoke void @_RNvMNtNtCs1ZTs3ySsPIM_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.af)
          to label %bb.av unwind label %bb.at, !noalias !2112

bb.at:                                            ; preds = %bb.as
  %i.dv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder7command7CommandECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(712) %i.bs) #32
          to label %.body.thread unwind label %bb.au, !noalias !2112

bb.au:                                            ; preds = %bb.at
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2112
  unreachable

bb.av:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.bt, ptr noundef nonnull align 8 dereferenceable(712) %i.bs, i64 712, i1 false), !alias.scope !2113, !noalias !2114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2107
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !2050
  store i64 0, ptr %i.bb, align 8, !noalias !2050
  %.sroa.01387.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.01387.sroa.7.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 0, ptr %.sroa.01387.sroa.9.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  store i64 0, ptr %.sroa.01387.sroa.11.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store i64 -1, ptr %.sroa.01387.sroa.13.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  store i64 0, ptr %.sroa.01387.sroa.15.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.16.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.17.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.18.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.19.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.20.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.21.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.22.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.23.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.24.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.25.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.26.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.27.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.28.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.29.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.30.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 288
  %.sroa.01387.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.31.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.33.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.34.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.01387.sroa.35.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.36.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.37.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.37.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 360
  %.sroa.01387.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.38.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.40.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.41.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.42.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.43.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.44.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.45.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.46.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.47.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01387.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01387.sroa.48.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 480
  store i64 0, ptr %.sroa.01387.sroa.49.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 488
  store i64 -1, ptr %.sroa.01387.sroa.50.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.01387.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 512
  store i64 -1, ptr %.sroa.01387.sroa.52.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.101388.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 536
  store ptr @42, ptr %.sroa.101388.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.111400.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 544
  store i64 9, ptr %.sroa.111400.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.131412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 552
  store ptr @42, ptr %.sroa.131412.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.151424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 560
  store i64 9, ptr %.sroa.151424.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.161436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 568
  store ptr null, ptr %.sroa.161436.0..sroa_idx.i, align 8, !noalias !2050
  %.sroa.171442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 584
  store <4 x i32> <i32 114, i32 -1, i32 0, i32 2>, ptr %.sroa.171442.0..sroa_idx.i, align 8, !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !2050
  store i64 0, ptr %i.ba, align 8, !noalias !2050
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %i.dx, align 8, !noalias !2050
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i8 0, ptr %i.dy, align 8, !noalias !2050
  call void @llvm.experimental.noalias.scope.decl(metadata !2115)
  call void @llvm.experimental.noalias.scope.decl(metadata !2116)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !2117
  invoke void @_RNvXse_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableINtNtNtCskKLDkoKarTP_4core3ops5range14RangeInclusivejEINtB5_14IntoResettableNtNtB7_5range10ValueRangeE15into_resettableCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba)
          to label %bb.az unwind label %bb.aw, !noalias !2118

bb.aw:                                            ; preds = %bb.av
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.bb) #32
          to label %.thread1795.i unwind label %bb.ax, !noalias !2119

bb.ax:                                            ; preds = %bb.aw
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2119
  unreachable

bb.ay:                                            ; preds = %bb.az
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.thread1795.i

bb.az:                                            ; preds = %bb.av
  %.sroa.01387.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %.sroa.01387.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %.sroa.01387.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ec = load i64, ptr %i.ae, align 8, !range !9, !noalias !2117, !noundef !8 ; 2 uses
  %i.ed = trunc nuw i64 %i.ec to i1               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noalias !2117
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !2117
  %.sroa.6.0.i.i = select i1 %i.ed, i64 undef, i64 %i.eh
  %.sroa.5.0.i.i = select i1 %i.ed, i64 undef, i64 %i.ef
  %not..i.i = xor i64 %i.ec, 1                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !2117
  store i64 %not..i.i, ptr %.sroa.01387.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2116, !noalias !2119
  store i64 %.sroa.5.0.i.i, ptr %.sroa.01387.sroa.8.0..sroa_idx.i, align 8, !alias.scope !2116, !noalias !2119
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !2116, !noalias !2119
  %.sroa.01492.sroa.4.0.copyload.i = load i64, ptr %.sroa.01387.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2120, !noalias !2121
  %.sroa.01522.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !2122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01387.sroa.8.0..sroa_idx.i, i64 16, i1 false), !noalias !2050
  %.sroa.01492.sroa.8.0.copyload.i = load i64, ptr %.sroa.01387.sroa.10.0..sroa_idx.i, align 8, !alias.scope !2120, !noalias !2121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !2050
  %.sroa.01522.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.15.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.17.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.19.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.19.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.21.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.23.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.25.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.27.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.32.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.34.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.39.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.41.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.43.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.01522.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.45.0..sroa_idx.i, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.ad, align 8, !noalias !2123
  %.sroa.01522.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i64 %.sroa.01492.sroa.4.0.copyload.i, ptr %.sroa.01522.sroa.4.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %not..i.i, ptr %.sroa.01522.sroa.5.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.01522.sroa.7.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.01492.sroa.8.0.copyload.i, ptr %.sroa.01522.sroa.8.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.01522.sroa.9.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 -1, ptr %.sroa.01522.sroa.11.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 0, ptr %.sroa.01522.sroa.13.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.14.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.16.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.18.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.20.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.22.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.24.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.26.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.28.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.29.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %.sroa.01522.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.29.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.31.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.01522.sroa.33.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.35.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 360
  %.sroa.01522.sroa.38.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01522.sroa.36.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !2050
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.38.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.40.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.40.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.42.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.44.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01522.sroa.46.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  store i64 0, ptr %.sroa.01522.sroa.47.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 488
  store i64 -1, ptr %.sroa.01522.sroa.48.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.01522.sroa.50.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  store i64 -1, ptr %.sroa.01522.sroa.50.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.41523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 536
  store ptr @42, ptr %.sroa.41523.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.51524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 544
  store i64 9, ptr %.sroa.51524.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.61525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 552
  store ptr @42, ptr %.sroa.61525.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.71526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 560
  store i64 9, ptr %.sroa.71526.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.81527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 568
  store ptr null, ptr %.sroa.81527.0..sroa_idx.i, align 8, !noalias !2123
  %.sroa.91528.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 584
  store <4 x i32> <i32 114, i32 -1, i32 0, i32 2>, ptr %.sroa.91528.0..sroa_idx.i, align 8, !noalias !2123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !2122
  store ptr @43, ptr %i.ac, align 8, !noalias !2122
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 9, ptr %i.ei, align 8, !noalias !2122
  invoke void @_RINvMs_NtNtCs1ZTs3ySsPIM_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([600 x i8]) align 8 captures(none) dereferenceable(600) %i.ay, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(600) %i.ad, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.ac)
          to label %bb.ba unwind label %bb.ay, !noalias !2050

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !2122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !2122
  call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ay, i64 596
  store i8 0, ptr %i.ej, align 4, !alias.scope !2125, !noalias !2126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.az, ptr noundef nonnull align 8 dereferenceable(600) %i.ay, i64 600, i1 false), !alias.scope !2127, !noalias !2050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !2050
  call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i263.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !2130
  invoke void @_RNvXs2_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 48)
          to label %_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i265.i unwind label %bb.bc, !noalias !2131

bb.bb:                                            ; preds = %.body.i267.i, %bb.bc
  %.pn.i264.i = phi { ptr, i32 } [ %eh.lpad-body.i268.i, %.body.i267.i ], [ %i.ek, %bb.bc ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.az) #32
          to label %.thread1795.i unwind label %bb.bj, !noalias !2132

bb.bc:                                            ; preds = %bb.ba
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i265.i: ; preds = %bb.ba
  %i.el = load i64, ptr %i.ab, align 8, !range !12, !noalias !2130, !noundef !8 ; 3 uses
  %i.em = icmp eq i64 %i.el, -1
  br i1 %i.em, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i265.i
  %.sroa.4.0..sroa_idx.i266.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i263.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i266.i, i64 16, i1 false), !noalias !2130
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i265.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !2130
  %i.en = getelementptr inbounds nuw i8, ptr %i.az, i64 488 ; 6 uses
  %i.eo = load i64, ptr %i.en, align 8, !range !12, !alias.scope !2133, !noalias !2134, !noundef !8
  %i.ep = icmp eq i64 %i.eo, -1
  br i1 %i.ep, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i270.i unwind label %bb.bg, !noalias !2132

bb.bg:                                            ; preds = %bb.bf
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %.body.i267.i unwind label %bb.bh, !noalias !2132

bb.bh:                                            ; preds = %bb.bg
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2132
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i270.i: ; preds = %bb.bf
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.bk unwind label %bb.bi, !noalias !2132

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i270.i
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %.body.i267.i

.body.i267.i:                                     ; preds = %bb.bi, %bb.bg
  %eh.lpad-body.i268.i = phi { ptr, i32 } [ %i.es, %bb.bi ], [ %i.eq, %bb.bg ]
  store i64 %i.el, ptr %i.en, align 8, !alias.scope !2129, !noalias !2134
  %.sroa.6.0..sroa_idx3.i269.i = getelementptr inbounds nuw i8, ptr %i.az, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i269.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i263.i, i64 16, i1 false), !noalias !2134
  br label %bb.bb

bb.bj:                                            ; preds = %bb.bb
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #31, !noalias !2132
  unreachable

bb.bk:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_str9StyledStrECskIqAKC4t9Ft_2yr.exit.i.i270.i, %bb.be
  store i64 %i.el, ptr %i.en, align 8, !alias.scope !2129, !noalias !2134
  %.sroa.6.0..sroa_idx4.i271.i = getelementptr inbounds nuw i8, ptr %i.az, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx4.i271.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i263.i, i64 16, i1 false), !noalias !2134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i263.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %i.bc, ptr noundef nonnull align 8 dereferenceable(600) %i.az, i64 600, i1 false), !alias.scope !2135, !noalias !2136
  call void @llvm.experimental.noalias.scope.decl(metadata !2137)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i275.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !2138
  invoke void @_RNvXs2_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10styled_strNtB5_9StyledStrINtNtCskKLDkoKarTP_4core7convert4FromReE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 534)
          to label %_RNvXsh_NtNtCs1ZTs3ySsPIM_12clap_builder7builder10resettableReINtB5_14IntoResettableNtNtB7_10styled_str9StyledStrE15into_resettableCskIqAKC4t9Ft_2yr.exit.i277.i unwind label %bb.bm, !noalias !2139

bb.bl:                                            ; preds = %.body.i279.i, %bb.bm
  %.pn.i276.i = phi { ptr, i32 } [ %eh.lpad-body.i280.i, %.body.i279.i ], [ %i.eu, %bb.bm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs1ZTs3ySsPIM_12clap_builder7builder3arg3ArgECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(600) %i.bc) #32
end_hunk_1
