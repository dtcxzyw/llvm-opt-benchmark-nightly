Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.01?download=true
inline.NumInlined: 3173
inline.NumDeleted: 1166
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 37
begin_hunk_0_@"_ZN4anki4card7service100_$LT$impl$u20$core..convert..TryFrom$LT$anki_proto..cards..Card$GT$$u20$for$u20$anki..card..Card$GT$8try_from17hf8d99c991b0c373cE":bb.a
  %i.u = load i32, ptr %i.t, align 4, !noundef !4
  %i.v = trunc i32 %i.u to i16
  %i.w = load <2 x i64>, ptr %i.s, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.y = load i32, ptr %i.x, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !4
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ae = load <2 x i32>, ptr %i.z, align 4
  %i.af = load <2 x i32>, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ah = load <2 x i32>, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.al = load i32, ptr %i.ak, align 8, !noundef !4
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load <2 x i32>, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.040.0.copyload = load i32, ptr %i.ap, align 8
  %i.aq = trunc i32 %.sroa.040.0.copyload to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.ar = load <2 x float>, ptr %.sroa.441.0..sroa_idx, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.037.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ]
  %i.as = phi <2 x float> [ %i.ar, %bb.i ], [ undef, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.au = load i32, ptr %i.at, align 8, !range !6, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.aw = load float, ptr %i.av, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !range !6, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = load i64, ptr %1, align 8, !range !140, !noundef !4
  %i.bc = trunc nuw i64 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i64, ptr %i.bd, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.544.0 = phi i64 [ %i.be, %bb.k ], [ undef, %bb.j ]
  %.sroa.043.0 = phi i64 [ 1, %bb.k ], [ 0, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  store i64 %.sroa.043.0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.544.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i32> %i.ao, ptr %.sroa.632.0..sroa_idx, align 8
  %.sroa.834.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.au, ptr %.sroa.834.0..sroa_idx, align 8
  %.sroa.935.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.aw, ptr %.sroa.935.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ay, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.ba, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.1236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i64> %i.r, ptr %.sroa.1236.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x i64> %i.w, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.aj, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sroa.037.0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store <2 x float> %i.as, ptr %.sroa.17.sroa.4.0..sroa.17.0..sroa_idx.sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 %i.y, ptr %.sroa.18.0..sroa_idx, align 4
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bg = shufflevector <2 x i32> %i.ae, <2 x i32> %i.af, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %i.bg, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store <2 x i32> %i.ah, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.v, ptr %.sroa.25.0..sroa_idx, align 8
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i16 %i.ac, ptr %.sroa.26.0..sroa_idx, align 2
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.i, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.p, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.am, ptr %.sroa.29.0..sroa_idx, align 2
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit", %bb.l
  ret void

bb.n:                                             ; preds = %bb.g, %bb.d
  %.sink.in = phi i64 [ %i.n, %bb.g ], [ %i.g, %bb.d ]
  %.sink = trunc nuw i64 %.sink.in to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775808, ptr %i.bh, align 8
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %.sroa.274.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit" unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr44drop_in_place$LT$anki_proto..cards..Card$GT$17he3278d8cded20c46E.exit": ; preds = %bb.n
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
  br label %bb.m

bb.q:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki4sync10collection6chunks115_$LT$impl$u20$core..convert..From$LT$anki..sync..collection..chunks..CardEntry$GT$$u20$for$u20$anki..card..Card$GT$4from17h39781c9e9268f742E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(104) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  invoke void @_ZN4anki7storage4card4data8CardData8from_str17h26c52951704023a7E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr62drop_in_place$LT$anki..sync..collection..chunks..CardEntry$GT$17h6f049d1f8d3fd76aE"(ptr noalias noundef align 8 dereferenceable(104) %1) #44
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = load i8, ptr %i.k, align 8, !range !712, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 97
  %i.n = load i8, ptr %i.m, align 1, !range !713, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.q = load i32, ptr %i.p, align 8, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i64, ptr %i.r, align 8, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.u = load i8, ptr %i.t, align 2, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.x = load i32, ptr %i.w, align 16, !range !6, !noundef !4
  %i.y = trunc nuw i32 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.aa = load i32, ptr %i.z, align 8, !range !6
  %i.ab = trunc nuw i32 %i.aa to i1
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = load float, ptr %i.ac, align 4
  %.sroa.6.0 = select i1 %or.cond, float %i.af, float undef
  %.sroa.5.0 = select i1 %or.cond, float %i.ae, float undef
  %.sroa.0.0 = zext i1 %or.cond to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ah = load i32, ptr %i.ag, align 16, !range !6, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.al = load i32, ptr %i.ak, align 8, !range !6, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %i.an = load float, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load <2 x i64>, ptr %i.g, align 8
  store <2 x i64> %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.au = load <2 x i64>, ptr %i.h, align 8
  store <2 x i64> %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.l, ptr %i.aw, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 %i.n, ptr %i.ax, align 1
  %i.ay = load <2 x i16>, ptr %i.i, align 4
  store <2 x i16> %i.ay, ptr %i.at, align 8
  %i.az = load <4 x i32>, ptr %i.j, align 8
  store <4 x i32> %i.az, ptr %i.av, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bb = load <2 x i32>, ptr %i.o, align 8
  store <2 x i32> %i.bb, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.q, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.s, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.u, ptr %i.be, align 2
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load <2 x i32>, ptr %i.v, align 8
  store <2 x i32> %i.bg, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sroa.0.0, ptr %i.bh, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 108
  store float %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.ah, ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.aj, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.al, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %i.an, ptr %i.bl, align 4
  %i.bm = load <2 x i64>, ptr %i.a, align 16
  store <2 x i64> %i.bm, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %"_ZN4core3ptr62drop_in_place$LT$anki..sync..collection..chunks..CardEntry$GT$17h6f049d1f8d3fd76aE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.d ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr62drop_in_place$LT$anki..sync..collection..chunks..CardEntry$GT$17h6f049d1f8d3fd76aE.exit": ; preds = %bb.c
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %1)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #45
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki4sync5media3zip1_93_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..sync..media..zip..UploadEntry$GT$11deserialize17h85a263ec017f0f95E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(344) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17ha91464b86625e0d4E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(344) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @80, i64 noundef 11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) @83, i64 noundef 2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4anki4sync5media3zip20zip_files_for_upload17h75269c91cec55863E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 4 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [20 x i8], align 1                ; 3 uses
  %i.n = alloca [328 x i8], align 8               ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.735 = alloca [16 x i8], align 8          ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 18 uses
  %i.r = alloca [48 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 12 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %i.v = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.67 = alloca [16 x i8], align 8           ; 5 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.10 = alloca [16 x i8], align 8           ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 23 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [328 x i8], align 8              ; 12 uses
  %i.ab = alloca [72 x i8], align 8               ; 12 uses
  %i.ac = invoke { i16, i16 } @_ZN3zip5types8DateTime17default_for_write17h4dc5e1d4b747500bE()
          to label %bb.b unwind label %bb.ci      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.ad = extractvalue { i16, i16 } %i.ac, 0
  %i.ae = extractvalue { i16, i16 } %i.ac, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 0, ptr %i.ab, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  store i16 %i.ad, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 62
  store i16 %i.ae, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 66
  store i8 0, ptr %i.aj, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i32 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i16 1, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 32768, ptr %i.an, align 8
  store i16 0, ptr %i.af, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 0, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  invoke void @"_ZN3zip5write60_$LT$impl$u20$zip..write..zip_writer..ZipWriter$LT$W$GT$$GT$3new17h808d5c6330cd73f3E"(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(address) dereferenceable(328) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.z)
          to label %bb.c unwind label %bb.ci

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 0, ptr %i.y, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  store i64 0, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.as = load i64, ptr %1, align 8, !range !115, !noundef !4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.au = load i64, ptr %i.at, align 8, !noundef !4 ; 3 uses
  %i.av = icmp ult i64 %i.au, 192153584101141163
  call void @llvm.assume(i1 %i.av)
  %.idx = mul nuw nsw i64 %i.au, 48
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.ar, ptr %i.x, align 8
  %.sroa.01.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  store ptr %i.ar, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.as, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8
  %.sroa.01.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  store ptr %i.aw, ptr %.sroa.01.sroa.4.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 3 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %._crit_edge, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i.lr.ph": ; preds = %bb.c
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i.lr.ph", %bb.bf
  %i.bd = phi ptr [ %i.ar, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h62ef7d7e2f79b2b4E.exit.i.lr.ph" ], [ %i.dh, %bb.bf ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  store ptr %i.be, ptr %.sroa.01.sroa.2.0..sroa_idx, align 8, !alias.scope !803, !noalias !804
end_hunk_0
begin_hunk_1_@_ZN4core5slice4sort6shared9smallsort12sort4_stable17hda45bb3e4a6ed3beE:bb.a
  %i.ib = sdiv i32 %.sroa.0.0.i.i.i56, 100        ; 2 uses
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = mul nsw i32 %.sroa.0.0.i.i.i56, 1461
  %i.ie = ashr i32 %i.id, 2
  %i.if = add nsw i32 %i.ic, %i.ie
  %i.ig = ashr i32 %i.ib, 2
  %narrow.i.i59 = add nsw i32 %i.if, %i.ig
  %i.ih = sext i32 %narrow.i.i59 to i64
  %i.ii = mul nsw i64 %i.ih, 86400
  %i.ij = zext i32 %.val5 to i64
  %i.ik = add nsw i64 %i.ii, %i.ij
  %i.il = sdiv i32 %.sroa.0.0.i.i6.i58, 100       ; 2 uses
  %i.im = mul nsw i32 %.sroa.0.0.i.i6.i58, 1461
  %i.in = ashr i32 %i.im, 2
  %i.io = ashr i32 %i.il, 2
  %i.ip = lshr i32 %.val6, 4
  %i.iq = and i32 %i.ip, 511
  %i.ir = zext i32 %.val7 to i64
  %i.is = add nuw nsw i32 %i.iq, -719163
  %i.it = add nsw i32 %i.is, %.sroa.05.0.i.i5.i57
  %i.iu = sub nsw i32 %i.it, %i.il
  %i.iv = add nsw i32 %i.iu, %i.in
  %narrow.i7.i60 = add nsw i32 %i.iv, %i.io
  %i.iw = sext i32 %narrow.i7.i60 to i64
  %i.ix = mul nsw i64 %i.iw, 86400
  %i.iy = add nsw i64 %i.ix, %i.ir
  %i.iz = icmp slt i64 %i.ik, %i.iy               ; 2 uses
  %i.ja = select i1 %i.iz, ptr %i.ha, ptr %i.gy, !unpredictable !4
  %i.jb = select i1 %i.iz, ptr %i.gy, ptr %i.ha, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %i.hw, i64 40, i1 false)
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jc, ptr noundef nonnull align 8 dereferenceable(40) %i.ja, i64 40, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.jd, ptr noundef nonnull align 8 dereferenceable(40) %i.jb, i64 40, i1 false)
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.je, ptr noundef nonnull align 8 dereferenceable(40) %i.hv, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h03d83556ed415728E(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val20.i = load i32, ptr %i.a, align 4, !noundef !4 ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val21.i = load i64, ptr %i.b, align 8
  %.val22.i = load i32, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val23.i = load i64, ptr %i.c, align 8
  %i.d = icmp eq i32 %.val20.i, %.val22.i
  %i.e = icmp ult i32 %.val20.i, %.val22.i
  %i.f = icmp slt i64 %.val21.i, %.val23.i
  %.sroa.0.0.i.i.i = select i1 %i.d, i1 %i.f, i1 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val16.i = load i32, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 56
  %.val17.i = load i64, ptr %i.i, align 8
  %.val18.i = load i32, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 40
  %.val19.i = load i64, ptr %i.j, align 8
  %i.k = icmp eq i32 %.val16.i, %.val18.i
  %i.l = icmp ult i32 %.val16.i, %.val18.i
  %i.m = icmp slt i64 %.val17.i, %.val19.i
  %.sroa.0.0.i.i24.i = select i1 %i.k, i1 %i.m, i1 %i.l ; 2 uses
  %i.n = zext i1 %.sroa.0.0.i.i.i to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = xor i1 %.sroa.0.0.i.i.i, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.q ; 5 uses
  %i.s = select i1 %.sroa.0.0.i.i24.i, i64 3, i64 2
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = select i1 %.sroa.0.0.i.i24.i, i64 2, i64 3
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.u ; 4 uses
  %.val12.i = load i32, ptr %i.t, align 4, !noundef !4 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 8
  %.val13.i = load i64, ptr %i.w, align 8
  %.val14.i = load i32, ptr %i.o, align 4, !noundef !4 ; 2 uses
  %i.x = getelementptr i8, ptr %i.o, i64 8
  %.val15.i = load i64, ptr %i.x, align 8
  %i.y = icmp eq i32 %.val12.i, %.val14.i
  %i.z = icmp ult i32 %.val12.i, %.val14.i
  %i.aa = icmp slt i64 %.val13.i, %.val15.i
  %.sroa.0.0.i.i25.i = select i1 %i.y, i1 %i.aa, i1 %i.z ; 3 uses
  %.val8.i = load i32, ptr %i.v, align 4, !noundef !4 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.v, i64 8
  %.val9.i = load i64, ptr %i.ab, align 8
  %.val10.i = load i32, ptr %i.r, align 4, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.r, i64 8
  %.val11.i = load i64, ptr %i.ac, align 8
  %i.ad = icmp eq i32 %.val8.i, %.val10.i
  %i.ae = icmp ult i32 %.val8.i, %.val10.i
  %i.af = icmp slt i64 %.val9.i, %.val11.i
  %.sroa.0.0.i.i26.i = select i1 %i.ad, i1 %i.af, i1 %i.ae ; 3 uses
  %i.ag = select i1 %.sroa.0.0.i.i25.i, ptr %i.t, ptr %i.o, !unpredictable !4
  %i.ah = select i1 %.sroa.0.0.i.i26.i, ptr %i.r, ptr %i.v, !unpredictable !4
  %i.ai = select i1 %.sroa.0.0.i.i26.i, ptr %i.t, ptr %i.r, !unpredictable !4
  %i.aj = select i1 %.sroa.0.0.i.i25.i, ptr %i.o, ptr %i.ai, !unpredictable !4 ; 4 uses
  %i.ak = select i1 %.sroa.0.0.i.i25.i, ptr %i.r, ptr %i.t, !unpredictable !4
  %i.al = select i1 %.sroa.0.0.i.i26.i, ptr %i.v, ptr %i.ak, !unpredictable !4 ; 4 uses
  %.val.i = load i32, ptr %i.al, align 4, !noundef !4 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val5.i = load i64, ptr %i.am, align 8
  %.val6.i = load i32, ptr %i.aj, align 4, !noundef !4 ; 2 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %.val7.i = load i64, ptr %i.an, align 8
  %i.ao = icmp eq i32 %.val.i, %.val6.i
  %i.ap = icmp ult i32 %.val.i, %.val6.i
  %i.aq = icmp slt i64 %.val5.i, %.val7.i
  %.sroa.0.0.i.i27.i = select i1 %i.ao, i1 %i.aq, i1 %i.ap ; 2 uses
  %i.ar = select i1 %.sroa.0.0.i.i27.i, ptr %i.al, ptr %i.aj, !unpredictable !4
  %i.as = select i1 %.sroa.0.0.i.i27.i, ptr %i.aj, ptr %i.al, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i64 16, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.av = getelementptr i8, ptr %2, i64 48        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ax = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val20.i1 = load i32, ptr %i.ay, align 8, !noundef !4 ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 88
  %.val21.i2 = load i64, ptr %i.az, align 8
  %.val22.i3 = load i32, ptr %i.aw, align 8, !noundef !4 ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 72
  %.val23.i4 = load i64, ptr %i.ba, align 8
  %i.bb = icmp eq i32 %.val20.i1, %.val22.i3
  %i.bc = icmp ult i32 %.val20.i1, %.val22.i3
  %i.bd = icmp slt i64 %.val21.i2, %.val23.i4
  %.sroa.0.0.i.i.i5 = select i1 %i.bb, i1 %i.bd, i1 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val16.i6 = load i32, ptr %i.be, align 8, !noundef !4 ; 2 uses
  %i.bg = getelementptr i8, ptr %0, i64 120
  %.val17.i7 = load i64, ptr %i.bg, align 8
  %.val18.i8 = load i32, ptr %i.bf, align 8, !noundef !4 ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 104
  %.val19.i9 = load i64, ptr %i.bh, align 8
  %i.bi = icmp eq i32 %.val16.i6, %.val18.i8
  %i.bj = icmp ult i32 %.val16.i6, %.val18.i8
  %i.bk = icmp slt i64 %.val17.i7, %.val19.i9
  %.sroa.0.0.i.i24.i10 = select i1 %i.bi, i1 %i.bk, i1 %i.bj ; 2 uses
  %i.bl = zext i1 %.sroa.0.0.i.i.i5 to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bl ; 4 uses
  %i.bn = xor i1 %.sroa.0.0.i.i.i5, true
  %i.bo = zext i1 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bo ; 5 uses
  %i.bq = select i1 %.sroa.0.0.i.i24.i10, i64 3, i64 2
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bq ; 5 uses
  %i.bs = select i1 %.sroa.0.0.i.i24.i10, i64 2, i64 3
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.bs ; 4 uses
  %.val12.i11 = load i32, ptr %i.br, align 4, !noundef !4 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 8
  %.val13.i12 = load i64, ptr %i.bu, align 8
  %.val14.i13 = load i32, ptr %i.bm, align 4, !noundef !4 ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 8
  %.val15.i14 = load i64, ptr %i.bv, align 8
  %i.bw = icmp eq i32 %.val12.i11, %.val14.i13
  %i.bx = icmp ult i32 %.val12.i11, %.val14.i13
  %i.by = icmp slt i64 %.val13.i12, %.val15.i14
  %.sroa.0.0.i.i25.i15 = select i1 %i.bw, i1 %i.by, i1 %i.bx ; 3 uses
  %.val8.i16 = load i32, ptr %i.bt, align 4, !noundef !4 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bt, i64 8
  %.val9.i17 = load i64, ptr %i.bz, align 8
  %.val10.i18 = load i32, ptr %i.bp, align 4, !noundef !4 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bp, i64 8
  %.val11.i19 = load i64, ptr %i.ca, align 8
  %i.cb = icmp eq i32 %.val8.i16, %.val10.i18
  %i.cc = icmp ult i32 %.val8.i16, %.val10.i18
  %i.cd = icmp slt i64 %.val9.i17, %.val11.i19
  %.sroa.0.0.i.i26.i20 = select i1 %i.cb, i1 %i.cd, i1 %i.cc ; 3 uses
  %i.ce = select i1 %.sroa.0.0.i.i25.i15, ptr %i.br, ptr %i.bm, !unpredictable !4
  %i.cf = select i1 %.sroa.0.0.i.i26.i20, ptr %i.bp, ptr %i.bt, !unpredictable !4
  %i.cg = select i1 %.sroa.0.0.i.i26.i20, ptr %i.br, ptr %i.bp, !unpredictable !4
  %i.ch = select i1 %.sroa.0.0.i.i25.i15, ptr %i.bm, ptr %i.cg, !unpredictable !4 ; 4 uses
  %i.ci = select i1 %.sroa.0.0.i.i25.i15, ptr %i.bp, ptr %i.br, !unpredictable !4
  %i.cj = select i1 %.sroa.0.0.i.i26.i20, ptr %i.bt, ptr %i.ci, !unpredictable !4 ; 4 uses
  %.val.i21 = load i32, ptr %i.cj, align 4, !noundef !4 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  %.val5.i22 = load i64, ptr %i.ck, align 8
  %.val6.i23 = load i32, ptr %i.ch, align 4, !noundef !4 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ch, i64 8
  %.val7.i24 = load i64, ptr %i.cl, align 8
  %i.cm = icmp eq i32 %.val.i21, %.val6.i23
  %i.cn = icmp ult i32 %.val.i21, %.val6.i23
  %i.co = icmp slt i64 %.val5.i22, %.val7.i24
  %.sroa.0.0.i.i27.i25 = select i1 %i.cm, i1 %i.co, i1 %i.cn ; 2 uses
  %i.cp = select i1 %.sroa.0.0.i.i27.i25, ptr %i.cj, ptr %i.ch, !unpredictable !4
  %i.cq = select i1 %.sroa.0.0.i.i27.i25, ptr %i.ch, ptr %i.cj, !unpredictable !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false)
  %i.cr = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cr, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false)
  %i.cs = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i64 16, i1 false)
  %i.ct = getelementptr i8, ptr %2, i64 112       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.011.0.val.i = load i32, ptr %i.ax, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.cv = getelementptr i8, ptr %2, i64 72
  %.sroa.011.0.val24.i = load i64, ptr %i.cv, align 8, !alias.scope !2132
  %.sroa.06.0.val.i = load i32, ptr %2, align 8, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.cw = getelementptr i8, ptr %2, i64 8
  %.sroa.06.0.val25.i = load i64, ptr %i.cw, align 8, !alias.scope !2132
  %i.cx = icmp eq i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.cy = icmp ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i
  %i.cz = icmp slt i64 %.sroa.011.0.val24.i, %.sroa.06.0.val25.i
  %.sroa.0.0.i.i.i26 = select i1 %i.cx, i1 %i.cz, i1 %i.cy ; 3 uses
  %..i23.i = select i1 %.sroa.0.0.i.i.i26, ptr %i.ax, ptr %2
  %i.da = xor i1 %.sroa.0.0.i.i.i26, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i, i64 16, i1 false), !noalias !2135
  %i.db = zext i1 %.sroa.0.0.i.i.i26 to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.db ; 4 uses
  %i.dd = zext i1 %i.da to i64
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.dd ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load i32, ptr %i.ct, align 8, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.dg = getelementptr i8, ptr %2, i64 120
  %.sroa.017.0.val26.i = load i64, ptr %i.dg, align 8, !alias.scope !2132
  %.sroa.015.0.val.i = load i32, ptr %i.av, align 8, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.dh = getelementptr i8, ptr %2, i64 56
  %.sroa.015.0.val27.i = load i64, ptr %i.dh, align 8, !alias.scope !2132
  %i.di = icmp eq i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.dj = icmp ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i
  %i.dk = icmp slt i64 %.sroa.017.0.val26.i, %.sroa.015.0.val27.i
  %.sroa.0.0.i.i28.i = select i1 %i.di, i1 %i.dk, i1 %i.dj ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i28.i, ptr %i.av, ptr %i.ct
  %i.dl = xor i1 %.sroa.0.0.i.i28.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !2139
  %.neg.i.i = sext i1 %i.dl to i64
  %i.dm = getelementptr [16 x i8], ptr %i.ct, i64 %.neg.i.i ; 4 uses
  %.neg15.i.i = sext i1 %.sroa.0.0.i.i28.i to i64
  %i.dn = getelementptr [16 x i8], ptr %i.av, i64 %.neg15.i.i ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load i32, ptr %i.dc, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.dc, i64 8
  %.sroa.011.0.val24.i.1 = load i64, ptr %i.dp, align 8, !alias.scope !2132
  %.sroa.06.0.val.i.1 = load i32, ptr %i.de, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.de, i64 8
  %.sroa.06.0.val25.i.1 = load i64, ptr %i.dq, align 8, !alias.scope !2132
  %i.dr = icmp eq i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.ds = icmp ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1
  %i.dt = icmp slt i64 %.sroa.011.0.val24.i.1, %.sroa.06.0.val25.i.1
  %.sroa.0.0.i.i.i26.1 = select i1 %i.dr, i1 %i.dt, i1 %i.ds ; 3 uses
  %..i23.i.1 = select i1 %.sroa.0.0.i.i.i26.1, ptr %i.dc, ptr %i.de
  %i.du = xor i1 %.sroa.0.0.i.i.i26.1, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.1, i64 16, i1 false), !noalias !2135
  %i.dv = zext i1 %.sroa.0.0.i.i.i26.1 to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dv ; 4 uses
  %i.dx = zext i1 %i.du to i64
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.dx ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load i32, ptr %i.dm, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dm, i64 8
  %.sroa.017.0.val26.i.1 = load i64, ptr %i.ea, align 8, !alias.scope !2132
  %.sroa.015.0.val.i.1 = load i32, ptr %i.dn, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.eb = getelementptr i8, ptr %i.dn, i64 8
  %.sroa.015.0.val27.i.1 = load i64, ptr %i.eb, align 8, !alias.scope !2132
  %i.ec = icmp eq i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.ed = icmp ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1
  %i.ee = icmp slt i64 %.sroa.017.0.val26.i.1, %.sroa.015.0.val27.i.1
  %.sroa.0.0.i.i28.i.1 = select i1 %i.ec, i1 %i.ee, i1 %i.ed ; 3 uses
  %..i.i.1 = select i1 %.sroa.0.0.i.i28.i.1, ptr %i.dn, ptr %i.dm
  %i.ef = xor i1 %.sroa.0.0.i.i28.i.1, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !2139
  %.neg.i.i.1 = sext i1 %i.ef to i64
  %i.eg = getelementptr [16 x i8], ptr %i.dm, i64 %.neg.i.i.1 ; 4 uses
  %.neg15.i.i.1 = sext i1 %.sroa.0.0.i.i28.i.1 to i64
  %i.eh = getelementptr [16 x i8], ptr %i.dn, i64 %.neg15.i.i.1 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load i32, ptr %i.dw, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.dw, i64 8
  %.sroa.011.0.val24.i.2 = load i64, ptr %i.ej, align 8, !alias.scope !2132
  %.sroa.06.0.val.i.2 = load i32, ptr %i.dy, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dy, i64 8
  %.sroa.06.0.val25.i.2 = load i64, ptr %i.ek, align 8, !alias.scope !2132
  %i.el = icmp eq i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.em = icmp ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2
  %i.en = icmp slt i64 %.sroa.011.0.val24.i.2, %.sroa.06.0.val25.i.2
  %.sroa.0.0.i.i.i26.2 = select i1 %i.el, i1 %i.en, i1 %i.em ; 3 uses
  %..i23.i.2 = select i1 %.sroa.0.0.i.i.i26.2, ptr %i.dw, ptr %i.dy
  %i.eo = xor i1 %.sroa.0.0.i.i.i26.2, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.2, i64 16, i1 false), !noalias !2135
  %i.ep = zext i1 %.sroa.0.0.i.i.i26.2 to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %i.ep ; 4 uses
  %i.er = zext i1 %i.eo to i64
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.dy, i64 %i.er ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load i32, ptr %i.eg, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.eu = getelementptr i8, ptr %i.eg, i64 8
  %.sroa.017.0.val26.i.2 = load i64, ptr %i.eu, align 8, !alias.scope !2132
  %.sroa.015.0.val.i.2 = load i32, ptr %i.eh, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.ev = getelementptr i8, ptr %i.eh, i64 8
  %.sroa.015.0.val27.i.2 = load i64, ptr %i.ev, align 8, !alias.scope !2132
  %i.ew = icmp eq i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.ex = icmp ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2
  %i.ey = icmp slt i64 %.sroa.017.0.val26.i.2, %.sroa.015.0.val27.i.2
  %.sroa.0.0.i.i28.i.2 = select i1 %i.ew, i1 %i.ey, i1 %i.ex ; 3 uses
  %..i.i.2 = select i1 %.sroa.0.0.i.i28.i.2, ptr %i.eh, ptr %i.eg
  %i.ez = xor i1 %.sroa.0.0.i.i28.i.2, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !2139
  %.neg.i.i.2 = sext i1 %i.ez to i64
  %i.fa = getelementptr [16 x i8], ptr %i.eg, i64 %.neg.i.i.2 ; 4 uses
  %.neg15.i.i.2 = sext i1 %.sroa.0.0.i.i28.i.2 to i64
  %i.fb = getelementptr [16 x i8], ptr %i.eh, i64 %.neg15.i.i.2 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load i32, ptr %i.eq, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.fd = getelementptr i8, ptr %i.eq, i64 8
  %.sroa.011.0.val24.i.3 = load i64, ptr %i.fd, align 8, !alias.scope !2132
  %.sroa.06.0.val.i.3 = load i32, ptr %i.es, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.es, i64 8
  %.sroa.06.0.val25.i.3 = load i64, ptr %i.fe, align 8, !alias.scope !2132
  %i.ff = icmp eq i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.fg = icmp ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3
  %i.fh = icmp slt i64 %.sroa.011.0.val24.i.3, %.sroa.06.0.val25.i.3
  %.sroa.0.0.i.i.i26.3 = select i1 %i.ff, i1 %i.fh, i1 %i.fg ; 3 uses
  %..i23.i.3 = select i1 %.sroa.0.0.i.i.i26.3, ptr %i.eq, ptr %i.es
  %i.fi = xor i1 %.sroa.0.0.i.i.i26.3, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %..i23.i.3, i64 16, i1 false), !noalias !2135
  %i.fj = zext i1 %.sroa.0.0.i.i.i26.3 to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.fj
  %i.fl = zext i1 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %i.es, i64 %i.fl
  %.sroa.017.0.val.i.3 = load i32, ptr %i.fa, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.fn = getelementptr i8, ptr %i.fa, i64 8
  %.sroa.017.0.val26.i.3 = load i64, ptr %i.fn, align 8, !alias.scope !2132
  %.sroa.015.0.val.i.3 = load i32, ptr %i.fb, align 4, !alias.scope !2132, !noundef !4 ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fb, i64 8
  %.sroa.015.0.val27.i.3 = load i64, ptr %i.fo, align 8, !alias.scope !2132
  %i.fp = icmp eq i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.fq = icmp ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3
  %i.fr = icmp slt i64 %.sroa.017.0.val26.i.3, %.sroa.015.0.val27.i.3
  %.sroa.0.0.i.i28.i.3 = select i1 %i.fp, i1 %i.fr, i1 %i.fq ; 3 uses
  %..i.i.3 = select i1 %.sroa.0.0.i.i28.i.3, ptr %i.fb, ptr %i.fa
  %i.fs = xor i1 %.sroa.0.0.i.i28.i.3, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !2139
  %.neg.i.i.3 = sext i1 %i.fs to i64
  %i.ft = getelementptr [16 x i8], ptr %i.fa, i64 %.neg.i.i.3
  %.neg15.i.i.3 = sext i1 %.sroa.0.0.i.i28.i.3 to i64
  %i.fu = getelementptr [16 x i8], ptr %i.fb, i64 %.neg15.i.i.3
  %i.fv = getelementptr i8, ptr %i.fu, i64 16
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = icmp ne ptr %i.fm, %i.fv
  %i.fy = icmp ne ptr %i.fk, %i.fw
  %or.cond.i = select i1 %i.fx, i1 true, i1 %i.fy, !prof !19
  br i1 %or.cond.i, label %bb.a, label %_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h398080ca6dc55666E.exit, !prof !19

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_ZN4core5slice4sort6shared9smallsort22panic_on_ord_violation17hfe8afd64ebb06f6bE() #46, !noalias !2132
  unreachable

_ZN4core5slice4sort6shared9smallsort19bidirectional_merge17h398080ca6dc55666E.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4core5slice4sort6shared9smallsort12sort8_stable17h44d58ac9a35f4dd7E(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull captures(address) %2) unnamed_addr #0 {
.lr.ph.i:
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h853855866ff54958E(ptr noundef %0, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort12sort4_stable17h853855866ff54958E(ptr noundef %i.a, ptr noundef %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 3 uses
  %i.e = getelementptr i8, ptr %2, i64 12         ; 3 uses
  %.sroa.011.0.val.i = load float, ptr %i.b, align 4, !alias.scope !2143, !noundef !4 ; 2 uses
  %.sroa.06.0.val.i = load float, ptr %2, align 4, !alias.scope !2143, !noundef !4 ; 2 uses
  %brmerge.not.i.i = fcmp uno float %.sroa.011.0.val.i, %.sroa.06.0.val.i
  br i1 %brmerge.not.i.i, label %bb.a, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i", !prof !1737

bb.a:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i", %.lr.ph.i
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !2143
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i": ; preds = %.lr.ph.i
  %.mux.i.i = fcmp olt float %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i23.i = select i1 %.mux.i.i, ptr %i.b, ptr %2
  %i.f = load i32, ptr %..i23.i, align 4, !alias.scope !2143, !noalias !2146
  store i32 %i.f, ptr %1, align 4, !noalias !2150
  %.sroa.017.0.val.i = load float, ptr %i.d, align 4, !alias.scope !2143, !noundef !4 ; 2 uses
  %.sroa.015.0.val.i = load float, ptr %i.e, align 4, !alias.scope !2143, !noundef !4 ; 2 uses
  %brmerge.not.i24.i = fcmp uno float %.sroa.017.0.val.i, %.sroa.015.0.val.i
  br i1 %brmerge.not.i24.i, label %bb.b, label %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i", !prof !1737

bb.b:                                             ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.3", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.2", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i.1", %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i"
  tail call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #46, !noalias !2143
  unreachable

"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit26.i": ; preds = %"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$7sort_by28_$u7b$$u7b$closure$u7d$$u7d$17h7fb0c2317e557d81E.exit.i"
  %i.g = xor i1 %.mux.i.i, true
  %i.h = zext i1 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h ; 3 uses
  %i.j = zext i1 %.mux.i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.j ; 3 uses
  %.mux.i25.i = fcmp olt float %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %.mux.i25.i, ptr %i.e, ptr %i.d
  %i.l = xor i1 %.mux.i25.i, true
  %i.m = load i32, ptr %..i.i, align 4, !alias.scope !2143, !noalias !2151
end_hunk_1
