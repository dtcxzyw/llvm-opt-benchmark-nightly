Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@"_ZN55_$LT$anki..card..Card$u20$as$u20$core..clone..Clone$GT$5clone17h42cd0934948ffa9eE":bb.a
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 4
  %.sroa.53.0 = select i1 %i.w, i64 %.sroa.53.0.copyload, i64 undef
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i32, ptr %i.x, align 8, !range !16, !noundef !3 ; 2 uses
  %i.z = trunc nuw i32 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ab = load float, ptr %i.aa, align 4
  %.sroa.57.0 = select i1 %i.z, float %i.ab, float undef
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !range !16, !noundef !3 ; 2 uses
  %i.ae = trunc nuw i32 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ag = load float, ptr %i.af, align 4
  %.sroa.59.0 = select i1 %i.ae, float %i.ag, float undef
  %i.ah = load i64, ptr %1, align 8, !range !7, !noundef !3 ; 2 uses
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %.sroa.511.0 = select i1 %i.ai, i64 %i.ak, i64 undef
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.at = load <2 x i16>, ptr %i.c, align 8
  %i.au = load <4 x i32>, ptr %i.d, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aw = load <2 x i32>, ptr %i.i, align 4
  %i.ax = load <2 x i64>, ptr %i.a, align 8
  %i.ay = load <2 x i64>, ptr %i.b, align 8
  tail call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
  store <2 x i64> %i.ax, ptr %i.an, align 8
  store <2 x i64> %i.ay, ptr %i.ao, align 8
  store i8 %i.f, ptr %i.ar, align 4
  store i8 %i.h, ptr %i.as, align 1
  store <2 x i16> %i.at, ptr %i.ap, align 8
  store <4 x i32> %i.au, ptr %i.aq, align 4
  store <2 x i32> %i.aw, ptr %i.av, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %i.k, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.m, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 150
  store i8 %i.o, ptr %i.bb, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.q, ptr %i.bc, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %.sroa.5.0, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %i.v, ptr %i.be, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i64 %.sroa.53.0, ptr %.sroa.53.0..sroa_idx4, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.y, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %.sroa.57.0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ad, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float %.sroa.59.0, ptr %i.bi, align 4
  store i64 %i.ah, ptr %0, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.511.0, ptr %i.bj, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN56_$LT$anki..decks..Deck$u20$as$u20$core..clone..Clone$GT$5clone17h13bf640fe61ea528E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(192) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0 = alloca [48 x i8], align 8            ; 4 uses
  %i.c = alloca [96 x i8], align 8                ; 16 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5.sroa.10 = alloca [7 x i8], align 1     ; 4 uses
  %.sroa.6 = alloca [16 x i8], align 8            ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.h = load i64, ptr %i.g, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.l = load i32, ptr %i.k, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i8, ptr %i.n, align 4, !range !6, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 69
  %i.q = load i8, ptr %i.p, align 1, !range !6, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load <4 x i32>, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = load i32, ptr %i.t, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hd2ff4de40dc9149eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %.body, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.v, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$anki..decks..name..NativeDeckName$GT$17h2c3b0a10fe8347c5E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #27
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i8 %i.o, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 45
  store i8 %i.q, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <4 x i32> %i.s, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 %i.u, ptr %i.z, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !8, !noundef !3
  %i.ac = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %i.ac, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !14523)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load i8, ptr %i.ae, align 8, !range !6, !alias.scope !14523, !noalias !14524, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14525
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hdc9f3553434daff8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.ad)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14525
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 104
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hc9c52f58e3e45727E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag)
          to label %bb.l unwind label %bb.f, !noalias !14524

bb.f:                                             ; preds = %.noexc
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..vec..Vec$LT$anki_proto..decks..deck..filtered..SearchTerm$GT$$GT$17h7ad1dc567626199dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %.body unwind label %bb.g, !noalias !14524

bb.g:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !14524
  unreachable

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !14526)
  call void @llvm.experimental.noalias.scope.decl(metadata !14527)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !14527, !noalias !14526, !noundef !3
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.am = load <2 x i32>, ptr %i.al, align 8, !alias.scope !14527, !noalias !14526
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.aa)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.i ], [ %i.ah, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$anki_proto..decks..deck..Common$GT$17hda4943cee108cc67E"(ptr noalias noundef align 8 dereferenceable(48) %i.e) #27
          to label %bb.b unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ap = load i8, ptr %i.ao, align 8, !range !6, !alias.scope !14527, !noalias !14526, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i32, ptr %i.aq, align 8, !range !16, !alias.scope !14527, !noalias !14526, !noundef !3 ; 2 uses
  %i.as = trunc nuw i32 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !14527, !noalias !14526
  %.sroa.5.0.i = select i1 %i.as, i32 %i.au, i32 undef
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aw = load i32, ptr %i.av, align 8, !range !16, !alias.scope !14527, !noalias !14526, !noundef !3 ; 2 uses
  %i.ax = trunc nuw i32 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !14527, !noalias !14526
  %.sroa.52.0.i = select i1 %i.ax, i32 %i.az, i32 undef
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bb = load i32, ptr %i.ba, align 8, !range !16, !alias.scope !14527, !noalias !14526, !noundef !3 ; 2 uses
  %i.bc = trunc nuw i32 %i.bb to i1
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 4, !alias.scope !14527, !noalias !14526
  %.sroa.55.0.i = select i1 %i.bc, i64 %.sroa.55.0.copyload.i, i64 undef ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.be = load i32, ptr %i.bd, align 4, !range !16, !alias.scope !14527, !noalias !14526, !noundef !3 ; 2 uses
  %i.bf = trunc nuw i32 %i.be to i1
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.510.0.copyload.i = load i64, ptr %.sroa.510.0..sroa_idx.i, align 8, !alias.scope !14527, !noalias !14526
  %.sroa.510.0.i = select i1 %i.bf, i64 %.sroa.510.0.copyload.i, i64 undef ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bh = load i32, ptr %i.bg, align 8, !range !16, !alias.scope !14527, !noalias !14526, !noundef !3 ; 2 uses
  %i.bi = trunc nuw i32 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 116
  %i.bk = load float, ptr %i.bj, align 4, !alias.scope !14527, !noalias !14526
  %.sroa.514.0.i = select i1 %i.bi, float %i.bk, float undef
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.ak, ptr %i.bl, align 8, !alias.scope !14526, !noalias !14527
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 2 uses
  store <2 x i32> %i.am, ptr %i.bm, align 8, !alias.scope !14526, !noalias !14527
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i8 %i.ap, ptr %i.bn, align 8, !alias.scope !14526, !noalias !14527
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.ar, ptr %i.bo, align 8, !alias.scope !14526, !noalias !14527
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %.sroa.5.0.i, ptr %i.bp, align 4, !alias.scope !14526, !noalias !14527
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.aw, ptr %i.bq, align 8, !alias.scope !14526, !noalias !14527
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %.sroa.52.0.i, ptr %i.br, align 4, !alias.scope !14526, !noalias !14527
  %.sroa.510.0..sroa_idx11.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %.sroa.510.0.i, ptr %.sroa.510.0..sroa_idx11.i, align 8, !alias.scope !14526, !noalias !14527
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.bh, ptr %i.bs, align 8, !alias.scope !14526, !noalias !14527
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store float %.sroa.514.0.i, ptr %i.bt, align 4, !alias.scope !14526, !noalias !14527
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx, i64 48, i1 false)
  %2 = trunc i64 %.sroa.55.0.i to i32
  %3 = lshr i64 %.sroa.55.0.i, 32
  %4 = trunc nuw i64 %3 to i32
  %i.bu = trunc i64 %.sroa.510.0.i to i8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.sroa.5.sroa.9.0 = phi i8 [ %i.af, %bb.l ], [ %i.bu, %bb.j ]
  %.sroa.5.sroa.8.0 = phi i32 [ %i.ce, %bb.l ], [ %i.be, %bb.j ]
  %.sroa.5.sroa.7.0 = phi i32 [ %7, %bb.l ], [ %4, %bb.j ]
  %.sroa.5.sroa.6.0 = phi i32 [ %5, %bb.l ], [ %2, %bb.j ]
  %.sroa.5.sroa.5.0 = phi i32 [ %i.cb, %bb.l ], [ %i.bb, %bb.j ]
  %.sroa.0.0 = phi i64 [ -9223372036854775808, %bb.l ], [ %.sroa.0.0.copyload, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.h, ptr %i.bv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.j, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 %i.l, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0, ptr %i.bz, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %.sroa.5.sroa.6.0, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.sroa_idx, align 4
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sroa.5.sroa.7.0, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 %.sroa.5.sroa.8.0, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx2.sroa_idx, align 4
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %.sroa.5.sroa.9.0, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx2.sroa_idx, align 8
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx2.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.sroa.10, i64 7, i1 false)
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.sroa.10)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.l:                                             ; preds = %.noexc
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cb = load i32, ptr %i.ca, align 8, !alias.scope !14523, !noalias !14524, !noundef !3
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 132
  %5 = load i32, ptr %i.cc, align 4, !alias.scope !14523, !noalias !14524, !noundef !3
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 136
  %7 = load i32, ptr %6, align 8, !alias.scope !14523, !noalias !14524, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.ce = load i32, ptr %i.cd, align 4, !alias.scope !14523, !noalias !14524, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.0.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14525
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14525
  br label %bb.k

bb.m:                                             ; preds = %.body, %bb.b
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN56_$LT$anki..notes..Note$u20$as$u20$core..clone..Clone$GT$5clone17h71db8b8bd7fa24e8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [16 x i8], align 8            ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.h = load <2 x i64>, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.j = load i32, ptr %i.i, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2feadf715cc57068E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.l, %bb.c ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #27
          to label %bb.m unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h2feadf715cc57068E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.n, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !8, !noundef !3
  %.not = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.k
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.k ], [ -9223372036854775808, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.r = load i32, ptr %i.q, align 8, !range !16, !noundef !3 ; 2 uses
  %i.s = trunc nuw i32 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.u = load i32, ptr %i.t, align 4
  %.sroa.54.0 = select i1 %i.s, i32 %i.u, i32 undef
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.f, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.h, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %i.j, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.r, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %.sroa.54.0, ptr %i.ac, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h0dbcb34878223f6fE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #27
          to label %bb.e unwind label %bb.l

bb.k:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.m:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !14530, !noundef !3 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14530, !nonnull !3, !noundef !3
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !14530, !noundef !3 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
end_hunk_0
