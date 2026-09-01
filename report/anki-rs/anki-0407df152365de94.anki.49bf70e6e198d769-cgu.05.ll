Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN13password_hash6output6Output9init_with17hb463aa785592a348E:bb.a
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %.sroa.012.0.copyload = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx13, align 8, !nonnull !3, !noundef !3
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.614.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.f = load i8, ptr %.sroa.012.0.copyload, align 1, !range !714, !noalias !1310, !noundef !3
  %i.g = trunc nuw i8 %i.f to i1
  %_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E._ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E.i = select i1 %i.g, ptr @_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E, ptr @_ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E
  %i.h = load i32, ptr %.sroa.8.0.copyload, align 4, !noalias !1310, !noundef !3
  call void %_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E._ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E.i(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.614.0.copyload, i64 noundef %.sroa.7.0.copyload, i32 noundef %i.h, ptr noalias noundef nonnull align 1 %i.a, i64 noundef range(i64 10, 65) %1), !noalias !1315, !callees !1308, !inline_history !1316
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.i = trunc nuw nsw i64 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.j, align 1
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 %i.i, ptr %.sroa.58.0..sroa_idx, align 2
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN16intl_pluralrules11PluralRules6select17h1c8a1af77f652458E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 9)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN13fluent_bundle5types6number146_$LT$impl$u20$core..convert..From$LT$$RF$fluent_bundle..types..number..FluentNumber$GT$$u20$for$u20$intl_pluralrules..operands..PluralOperands$GT$4from17h5693eefa22242385E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %2)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = call noundef i8 %i.c(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.d, ptr %i.e, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN171_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$core..option..Option$LT$http..header..name..HeaderName$GT$$C$T$RP$$GT$$GT$6extend17hb41b227600b4ee69E"(ptr noalias noundef align 8 dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %.sroa.17 = alloca [16 x i8], align 8           ; 5 uses
  %i.h = alloca [40 x i8], align 8                ; 11 uses
  %i.i = alloca [72 x i8], align 8                ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.01.0.copyload.i = load i64, ptr %i.j, align 8, !alias.scope !1320, !noalias !1317
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !1320, !noalias !1317, !nonnull !3, !noundef !3 ; 8 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1320, !noalias !1317 ; 3 uses
  %i.k = icmp ult i64 %.sroa.3.0.copyload.i, 88686269585142076
  tail call void @llvm.assume(i1 %i.k)
  %.idx = mul nuw nsw i64 %.sroa.3.0.copyload.i, 104
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 %.idx
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !alias.scope !1322
  store i64 0, ptr %i.i, align 8, !alias.scope !1317, !noalias !1320
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %.sroa.2.0.copyload.i, ptr %i.o, align 8, !alias.scope !1317, !noalias !1320
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 4 uses
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1317, !noalias !1320
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i64 %.sroa.01.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1317, !noalias !1320
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  store ptr %i.l, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1317, !noalias !1320
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val4.i = load i64, ptr %i.p, align 8, !alias.scope !1320, !noalias !1317, !noundef !3 ; 2 uses
  %i.q = icmp eq i64 %.val4.i, 0
  br i1 %i.q, label %bb.b, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i": ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !1320, !noalias !1317, !nonnull !3, !noundef !3
  %i.s = shl nuw nsw i64 %.val4.i, 2
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.s, i64 noundef 2) #53, !noalias !1322
  br label %bb.b

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i.i", %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  %i.u = icmp eq i64 %.sroa.3.0.copyload.i, 0
  br i1 %i.u, label %bb.c, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5138f706bf06960bE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5138f706bf06960bE.exit.i": ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 104
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1329, !noalias !1330
  %.sroa.0.0.copyload.i = load i64, ptr %.sroa.2.0.copyload.i, align 8, !noalias !1333 ; 3 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 2
  br i1 %.not.i, label %bb.c, label %bb.d

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit": ; preds = %.body.thread89.loopexit, %.body.thread89.loopexit.split-lp.loopexit.split-lp, %.body.thread89.loopexit.split-lp.loopexit, %bb.ax, %bb.ag, %.body.thread
  %.pn = phi { ptr, i32 } [ %eh.lpad-body83, %.body.thread ], [ %i.fp, %bb.ax ], [ %lpad.loopexit.split-lp126, %.body.thread89.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit125, %.body.thread89.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.body.thread89.loopexit ], [ %lpad.phi124, %bb.ag ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17h5efff72db66ad729E"(ptr noalias noundef align 8 dereferenceable(72) %i.i) #52
          to label %bb.az unwind label %bb.e

bb.c:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5138f706bf06960bE.exit.i", %bb.b, %bb.ar
  call fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17h5efff72db66ad729E"(ptr noalias noundef align 8 dereferenceable(72) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h5138f706bf06960bE.exit.i"
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 64
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1333
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  %i.x = trunc nuw i64 %.sroa.0.0.copyload.i to i1
  %.sroa.56.0.i = select i1 %i.x, i64 %.sroa.7.0.copyload.i, i64 undef
  store i64 %.sroa.0.0.copyload.i, ptr %i.i, align 8, !alias.scope !1323, !noalias !1334
  store i64 %.sroa.56.0.i, ptr %i.t, align 8, !alias.scope !1323, !noalias !1334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.570.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.f

bb.e:                                             ; preds = %.body.thread, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit"
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.f:                                             ; preds = %bb.as, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.an = invoke noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.g unwind label %.loopexit113, !noalias !1342

bb.g:                                             ; preds = %bb.f
  br i1 %i.an, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  call void @llvm.experimental.noalias.scope.decl(metadata !1346)
  %i.ao = load ptr, ptr %i.d, align 8, !alias.scope !1349, !noalias !1350, !noundef !3 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.y, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1357)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1363, !nonnull !3, !noundef !3
  %i.as = load ptr, ptr %i.ad, align 8, !alias.scope !1364, !noalias !1350, !noundef !3
  %i.at = load i64, ptr %i.ae, align 8, !alias.scope !1364, !noalias !1350, !noundef !3
  invoke void %i.ar(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.as, i64 noundef %i.at)
          to label %bb.y unwind label %.body.loopexit.split-lp, !inline_history !1365

bb.j:                                             ; preds = %bb.g
  %i.au = call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !1335 ; 4 uses
  %i.av = load i16, ptr %i.y, align 8, !alias.scope !1338, !noalias !1342, !noundef !3 ; 3 uses
  %i.aw = and i16 %i.av, %i.au
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = load i64, ptr %i.z, align 8, !alias.scope !1338, !noalias !1342, !noundef !3 ; 2 uses
  %i.az = zext i16 %i.av to i64
  %i.ba = load ptr, ptr %i.d, align 8             ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null                 ; 3 uses
  %not..i.i.i = xor i1 %i.bb, true
  %i.bc = load i8, ptr %i.ad, align 8, !range !1366
  %i.bd = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.be = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.bf = ptrtoint ptr %i.ba to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %.not = icmp eq i64 %i.ay, 0
  %i.bh = load ptr, ptr %i.aa, align 8, !alias.scope !1338, !noalias !1342, !nonnull !3, !noundef !3
  br label %.outer294

.outer294:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.j
  %.sroa.07.0.i.ph = phi i64 [ %i.bw, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.j ] ; 4 uses
  %.sroa.0.0.i15.ph = phi i64 [ %i.bx, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bi = icmp ult i64 %.sroa.0.0.i15.ph, %i.ay   ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.bi, %.not.not
  %.sroa.0.0.i15.ph.mux = select i1 %i.bi, i64 %.sroa.0.0.i15.ph, i64 0 ; 4 uses
  br i1 %brmerge, label %.loopexit339, label %infloop

.loopexit339:                                     ; preds = %.outer294
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.sroa.0.0.i15.ph.mux ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !noalias !1342, !noundef !3 ; 2 uses
  %.not.i16 = icmp eq i16 %i.bk, -1
  br i1 %.not.i16, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.t
  unreachable

bb.l:                                             ; preds = %.loopexit339
  %i.bl = icmp samesign ugt i64 %.sroa.07.0.i.ph, 511
  br i1 %i.bl, label %.sink.split, label %bb.z

bb.m:                                             ; preds = %.loopexit339
  %i.bm = zext i16 %i.bk to i64                   ; 9 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  %i.bo = load i16, ptr %i.bn, align 2, !noalias !1342, !noundef !3 ; 2 uses
  %i.bp = and i16 %i.bo, %i.av
  %i.bq = zext i16 %i.bp to i64
  %i.br = sub i64 %.sroa.0.0.i15.ph.mux, %i.bq
  %i.bs = and i64 %i.br, %i.az
  %i.bt = icmp samesign ult i64 %i.bs, %.sroa.07.0.i.ph
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bu = icmp eq i16 %i.bo, %i.au
  br i1 %i.bu, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.o:                                             ; preds = %bb.m
  %i.bv = icmp samesign ugt i64 %.sroa.07.0.i.ph, 511
  br i1 %i.bv, label %.sink.split, label %bb.z

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.s, %bb.q, %bb.n
  %i.bw = add nuw nsw i64 %.sroa.07.0.i.ph, 1
  %i.bx = add i64 %.sroa.0.0.i15.ph.mux, 1
  br label %.outer294

bb.p:                                             ; preds = %bb.n
  %i.by = load i64, ptr %i.ab, align 8, !alias.scope !1338, !noalias !1342, !noundef !3 ; 3 uses
  %i.bz = icmp ugt i64 %i.by, %i.bm
  br i1 %i.bz, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %i.ac, align 8, !alias.scope !1338, !noalias !1342, !nonnull !3, !noundef !3
  %i.cb = getelementptr inbounds nuw [104 x i8], ptr %i.ca, i64 %i.bm ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1342, !noundef !3
  %i.ce = icmp ne ptr %i.cd, null                 ; 2 uses
  %i.cf = xor i1 %i.ce, %i.bb
  br i1 %i.cf, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.r:                                             ; preds = %bb.q
  br i1 %i.ce, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 %not..i.i.i)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 80
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !1342, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.ch, %i.bd
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1342, !noundef !3
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.cj, ptr %i.be, i64 %i.bd), !noalias !1342
  %i.ck = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ck, label %bb.u, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.t:                                             ; preds = %bb.p
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.bm, i64 noundef %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @302) #50
          to label %bb.k unwind label %.loopexit.split-lp, !noalias !1342

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.r
  call void @llvm.assume(i1 %i.bb)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 72
  %i.cm = load i8, ptr %i.cl, align 8, !range !1366, !noalias !1342, !noundef !3
  %i.cn = icmp eq i8 %i.cm, %i.bc
  br i1 %i.cn, label %.loopexit, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.u:                                             ; preds = %.split.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !1367, !nonnull !3, !noundef !3
  invoke void %i.cp(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.be, i64 noundef %i.bd)
          to label %..loopexit_crit_edge unwind label %.body.loopexit, !inline_history !1365

..loopexit_crit_edge:                             ; preds = %bb.u
  %.pre193 = load i64, ptr %i.ab, align 8, !alias.scope !1380, !noalias !1383
  br label %.loopexit

.loopexit113:                                     ; preds = %bb.f
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %i.d, align 8, !alias.scope !1386, !noalias !1350
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp115 = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit113
  %i.cq = phi ptr [ %.pre, %.loopexit113 ], [ %i.ba, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi116 = phi { ptr, i32 } [ %lpad.loopexit114, %.loopexit113 ], [ %lpad.loopexit.split-lp115, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %.body.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1393)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  call void @llvm.experimental.noalias.scope.decl(metadata !1402)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !1405, !nonnull !3, !noundef !3
  %i.cu = load ptr, ptr %i.ad, align 8, !alias.scope !1406, !noalias !1350, !noundef !3
  %i.cv = load i64, ptr %i.ae, align 8, !alias.scope !1406, !noalias !1350, !noundef !3
  invoke void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %i.cu, i64 noundef %i.cv)
          to label %.body.thread unwind label %bb.x, !noalias !1335, !inline_history !1407

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !1335
  unreachable

.body.thread89.loopexit:                          ; preds = %bb.au
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit"

.body.thread89.loopexit.split-lp.loopexit:        ; preds = %bb.z, %bb.ak
  %lpad.loopexit125 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit"

.body.thread89.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.am
  %lpad.loopexit.split-lp126 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit"

.body.loopexit:                                   ; preds = %bb.u
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.loopexit.split-lp:                          ; preds = %bb.y, %bb.i
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.y:                                             ; preds = %bb.i, %bb.h
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @291, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #50
          to label %.noexc19 unwind label %.body.loopexit.split-lp

.noexc19:                                         ; preds = %bb.y
  unreachable

.sink.split:                                      ; preds = %bb.o, %bb.l
  %i.cx = load i64, ptr %0, align 8, !range !275, !alias.scope !1338, !noalias !1342, !noundef !3
  %i.cy = icmp ne i64 %i.cx, 2
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.o, %bb.l
  %.sroa.24.0.ph = phi i1 [ false, %bb.l ], [ false, %bb.o ], [ %i.cy, %.sink.split ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false), !alias.scope !1342, !noalias !1338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.570.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  store i64 %i.bf, ptr %i.b, align 8, !noalias !1413
  store i64 %i.bg, ptr %.sroa.4.8..sroa_idx, align 8, !noalias !1413
  %i.cz = load i64, ptr %i.ab, align 8, !alias.scope !1414, !noalias !1417, !noundef !3 ; 3 uses
  %i.da = icmp ult i64 %i.cz, 88686269585142076
  call void @llvm.assume(i1 %i.da)
  %i.db = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc20 unwind label %.body.thread89.loopexit.split-lp.loopexit

.noexc20:                                         ; preds = %bb.z
  br i1 %i.db, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %.noexc20
  %i.dc = load ptr, ptr %i.aa, align 8, !alias.scope !1414, !noalias !1417, !nonnull !3, !noundef !3
  %i.dd = load i64, ptr %i.z, align 8, !alias.scope !1414, !noalias !1417, !noundef !3 ; 2 uses
  %i.de = trunc i64 %i.cz to i16
  %.not344 = icmp eq i64 %i.dd, 0
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.aa
  %.sroa.6.0.i.i.ph = phi i16 [ %i.dm, %bb.ac ], [ %i.au, %bb.aa ] ; 2 uses
  %.sroa.07.0.i.i.ph = phi i16 [ %i.dh, %bb.ac ], [ %i.de, %bb.aa ] ; 2 uses
  %.sroa.05.0.i.i.ph = phi i64 [ %i.dl, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.dn, %bb.ac ], [ %.sroa.0.0.i15.ph.mux, %bb.aa ] ; 2 uses
  %i.df = icmp ult i64 %.sroa.0.0.i.i.ph, %i.dd   ; 2 uses
  %.not344.not = xor i1 %.not344, true
  %brmerge389 = or i1 %i.df, %.not344.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.df, i64 %.sroa.0.0.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge389, label %.loopexit343, label %infloop388

.loopexit343:                                     ; preds = %.outer
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sroa.0.0.i.i.ph.mux ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !1417, !noundef !3 ; 2 uses
  %i.di = icmp eq i16 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 3 uses
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit343
  store i16 %.sroa.07.0.i.i.ph, ptr %i.dg, align 2, !noalias !1417
  store i16 %.sroa.6.0.i.i.ph, ptr %i.dj, align 2, !noalias !1417
  %i.dk = icmp ugt i64 %.sroa.05.0.i.i.ph, 127
  %or.cond.i.i = select i1 %.sroa.24.0.ph, i1 true, i1 %i.dk
  br i1 %or.cond.i.i, label %bb.ad, label %bb.an

bb.ac:                                            ; preds = %.loopexit343
  %i.dl = add i64 %.sroa.05.0.i.i.ph, 1
  %i.dm = load i16, ptr %i.dj, align 2, !noalias !1417, !noundef !3
  store i16 %.sroa.07.0.i.i.ph, ptr %i.dg, align 2, !noalias !1417
  store i16 %.sroa.6.0.i.i.ph, ptr %i.dj, align 2, !noalias !1417
  %i.dn = add nuw i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.ad:                                            ; preds = %bb.ab
  %i.do = load i64, ptr %0, align 8, !range !275, !alias.scope !1414, !noalias !1417, !noundef !3
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  store i64 1, ptr %0, align 8, !alias.scope !1414, !noalias !1417
  br label %bb.an

.loopexit:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %..loopexit_crit_edge
  %i.dq = phi i64 [ %.pre193, %..loopexit_crit_edge ], [ %i.by, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  call void @llvm.experimental.noalias.scope.decl(metadata !1420)
  %i.dr = icmp ugt i64 %i.dq, %i.bm
  br i1 %i.dr, label %bb.af, label %.invoke.i

bb.af:                                            ; preds = %.loopexit
  %i.ds = load ptr, ptr %i.ac, align 8, !alias.scope !1380, !noalias !1383, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw [104 x i8], ptr %i.ds, i64 %i.bm ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !range !5, !noalias !1421, !noundef !3
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.ah, label %bb.ai

.loopexit120:                                     ; preds = %bb.ah
  %lpad.loopexit122 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp121:                            ; preds = %.invoke.i
  %lpad.loopexit.split-lp123 = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN4http6header3map15hash_elem_using17h8a971a513bcf1cc9E:bb.a
  %i.ep = load i8, ptr %i.ej, align 1, !alias.scope !6905, !noalias !6908, !noundef !3
  %i.eq = zext i8 %i.ep to i64
  %i.er = xor i64 %i.en, %i.eq
  %i.es = mul i64 %i.er, 1099511628211
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 7
  %i.eu = load i8, ptr %i.eo, align 1, !alias.scope !6905, !noalias !6908, !noundef !3
  %i.ev = zext i8 %i.eu to i64
  %i.ew = xor i64 %i.es, %i.ev
  %i.ex = mul i64 %i.ew, 1099511628211
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i, i64 8 ; 2 uses
  %i.ez = load i8, ptr %i.et, align 1, !alias.scope !6905, !noalias !6908, !noundef !3
  %i.fa = zext i8 %i.ez to i64
  %i.fb = xor i64 %i.ex, %i.fa
  %i.fc = mul i64 %i.fb, 1099511628211            ; 2 uses
  %i.fd = icmp eq ptr %i.ey, %i.cy
  br i1 %i.fd, label %"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17ha6e59050c845903dE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i21:                                   ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21
  %.sroa.0.010.i.i.i = phi ptr [ %i.gj, %.lr.ph.i.i.i21 ], [ %.sroa.0.010.i.i.i.unr, %.lr.ph.i.i.i21.prol.loopexit ] ; 5 uses
  %.lcssa789.i.i.i = phi i64 [ %i.gi, %.lr.ph.i.i.i21 ], [ %.lcssa789.i.i.i.unr, %.lr.ph.i.i.i21.prol.loopexit ]
  %i.fe = load i8, ptr %.sroa.0.010.i.i.i, align 1, !noalias !6903, !noundef !3
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @484, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !noalias !6903, !noundef !3
  %i.fi = zext i8 %i.fh to i64
  %i.fj = xor i64 %.lcssa789.i.i.i, %i.fi
  %i.fk = mul i64 %i.fj, 1099511628211
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !noalias !6903, !noundef !3
  %i.fn = zext i8 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr @484, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !noalias !6903, !noundef !3
  %i.fq = zext i8 %i.fp to i64
  %i.fr = xor i64 %i.fk, %i.fq
  %i.fs = mul i64 %i.fr, 1099511628211
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 2
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !6903, !noundef !3
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @484, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !noalias !6903, !noundef !3
  %i.fy = zext i8 %i.fx to i64
  %i.fz = xor i64 %i.fs, %i.fy
  %i.ga = mul i64 %i.fz, 1099511628211
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !noalias !6903, !noundef !3
  %i.gd = zext i8 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr @484, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !noalias !6903, !noundef !3
  %i.gg = zext i8 %i.gf to i64
  %i.gh = xor i64 %i.ga, %i.gg
  %i.gi = mul i64 %i.gh, 1099511628211            ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i.i, i64 4 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.cy
  br i1 %i.gk, label %"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17ha6e59050c845903dE.exit", label %.lr.ph.i.i.i21

bb.k:                                             ; preds = %bb.g
  %i.gl = load i8, ptr %1, align 8, !range !1366, !alias.scope !6893, !noalias !6894, !noundef !3
  %i.gm = zext nneg i8 %i.gl to i64
  %i.gn = xor i64 %i.ct, %i.gm
  %i.go = mul i64 %i.gn, 2232315406967589409
  br label %"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17ha6e59050c845903dE.exit"

"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17ha6e59050c845903dE.exit": ; preds = %.lr.ph.i.i.i21.prol.loopexit, %.lr.ph.i.i.i21, %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i, %bb.k, %bb.j, %"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17h71b2fdd20ec42b48E.exit"
  %.sroa.0.0 = phi i64 [ %i.cn, %"_ZN64_$LT$http..header..name..HdrName$u20$as$u20$core..hash..Hash$GT$4hash17h71b2fdd20ec42b48E.exit" ], [ %i.ct, %bb.i ], [ %i.go, %bb.k ], [ %i.fc, %.lr.ph.i.i.i.i ], [ %i.ct, %bb.j ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %.lcssa34.unr, %.lr.ph.i.i.i21.prol.loopexit ], [ %i.gi, %.lr.ph.i.i.i21 ]
  %i.gp = trunc i64 %.sroa.0.0 to i16
  %i.gq = and i16 %i.gp, 32767
  ret i16 %i.gq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217hdd689ab041d776b3E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = invoke noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0)
          to label %bb.b unwind label %bb.ae

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i16, ptr %i.h, align 8, !noundef !3 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.o = zext i16 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.not152 = icmp eq i64 %i.n, 0
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  br label %.outer134

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6917)
  %i.u = load ptr, ptr %2, align 8, !alias.scope !6920, !nonnull !3, !align !17, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !6920, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !6920, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !6920, !noundef !3
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread" unwind label %bb.ac, !inline_history !1434

.loopexit:                                        ; preds = %.outer134
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.05.0.ph.mux ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !noundef !3 ; 2 uses
  %.not = icmp eq i16 %i.ad, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ae = zext i16 %i.ad to i64                   ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ag = load i16, ptr %i.af, align 2, !noundef !3 ; 2 uses
  %i.ah = and i16 %i.ag, %i.i
  %i.ai = zext i16 %i.ah to i64
  %i.aj = sub i64 %.sroa.05.0.ph.mux, %i.ai
  %i.ak = and i64 %i.aj, %i.o
  %i.al = icmp samesign ult i64 %i.ak, %.sroa.013.0.ph
  br i1 %i.al, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.am = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.an = icmp ult i64 %i.am, 88686269585142076
  tail call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.ao = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef align 8 dereferenceable(96) %0, i16 noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ao, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.aq = icmp ult i64 %.sroa.05.0.ph.mux, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.as = trunc i64 %i.am to i16
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.sroa.05.0.ph.mux ; 2 uses
  store i16 %i.as, ptr %i.at, align 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.g, ptr %i.au, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.05.0.ph.mux, i64 noundef %i.ap, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @305) #50
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.av = icmp eq i16 %i.ag, %i.g
  br i1 %i.av, label %bb.m, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.l:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %.sroa.013.0.ph, 511
  br i1 %i.aw, label %bb.s, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread": ; preds = %bb.p, %bb.n, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %bb.k
  %i.ax = add nuw nsw i64 %.sroa.013.0.ph, 1
  %i.ay = add i64 %.sroa.05.0.ph.mux, 1
  br label %.outer134

.outer134:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread", %bb.c
  %.sroa.013.0.ph = phi i64 [ %i.ax, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ 0, %bb.c ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.ay, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ %i.k, %bb.c ] ; 2 uses
  %i.az = icmp ult i64 %.sroa.05.0.ph, %i.n       ; 2 uses
  %.not152.not = xor i1 %.not152, true
  %brmerge = or i1 %i.az, %.not152.not
  %.sroa.05.0.ph.mux = select i1 %i.az, i64 %.sroa.05.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.m:                                             ; preds = %bb.k
  %i.ba = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.bb = icmp ugt i64 %i.ba, %i.ae
  br i1 %i.bb, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw [104 x i8], ptr %i.bc, i64 %i.ae ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !noundef !3
  %i.bg = icmp ne ptr %i.bf, null                 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !noundef !3
  %i.bi = icmp eq ptr %i.bh, null                 ; 3 uses
  %not..i.i = xor i1 %i.bi, true
  %i.bj = xor i1 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.o:                                             ; preds = %bb.n
  br i1 %i.bg, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit"

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bl = load i64, ptr %i.bk, align 8, !noundef !3 ; 2 uses
  %i.bm = load i64, ptr %i.s, align 8, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bl, %i.bm
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

.split:                                           ; preds = %bb.p
  %i.bn = load ptr, ptr %i.r, align 8, !noundef !3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !noundef !3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.bp, ptr %i.bn, i64 %i.bl)
  %i.bq = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bq, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ae, i64 noundef %i.ba, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @304) #50
          to label %bb.e unwind label %bb.ae

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit": ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bi)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bs = load i8, ptr %i.br, align 8, !range !1366, !noundef !3
  %i.bt = load i8, ptr %i.r, align 8, !range !1366, !noundef !3
  %i.bu = icmp eq i8 %i.bs, %i.bt
  br i1 %i.bu, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.r:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %.split
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  invoke fastcc void @_ZN4http6header3map12append_value17h0ccced8c18f9a7a3E(i64 noundef %i.ae, ptr noalias noundef align 8 dereferenceable(104) %i.bd, ptr noalias noundef align 8 dereferenceable(24) %i.bv, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c)
          to label %bb.z unwind label %bb.ab

bb.s:                                             ; preds = %bb.l
  %i.bw = load i64, ptr %0, align 8, !range !275, !noundef !3
  %i.bx = icmp ne i64 %i.bw, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.s, %bb.l
  %.sroa.019.0 = phi i1 [ %i.bx, %bb.s ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.by = load i64, ptr %i.p, align 8, !alias.scope !6921, !noalias !6924, !noundef !3 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 88686269585142076
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  br i1 %i.ca, label %bb.y, label %bb.t

bb.t:                                             ; preds = %.noexc
  %i.cb = load ptr, ptr %i.l, align 8, !alias.scope !6921, !noalias !6924, !nonnull !3, !noundef !3
  %i.cc = load i64, ptr %i.m, align 8, !alias.scope !6921, !noalias !6924, !noundef !3 ; 2 uses
  %i.cd = trunc i64 %i.by to i16
  %.not153 = icmp eq i64 %i.cc, 0
  br label %.outer

.outer:                                           ; preds = %bb.v, %bb.t
  %.sroa.6.0.i.ph = phi i16 [ %i.cl, %bb.v ], [ %i.g, %bb.t ] ; 2 uses
  %.sroa.07.0.i.ph = phi i16 [ %i.cg, %bb.v ], [ %i.cd, %bb.t ] ; 2 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.ck, %bb.v ], [ 0, %bb.t ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.cm, %bb.v ], [ %.sroa.05.0.ph.mux, %bb.t ] ; 2 uses
  %i.ce = icmp ult i64 %.sroa.0.0.i.ph, %i.cc     ; 2 uses
  %.not153.not = xor i1 %.not153, true
  %brmerge168 = or i1 %i.ce, %.not153.not
  %.sroa.0.0.i.ph.mux = select i1 %i.ce, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge168, label %.loopexit151, label %infloop167

.loopexit151:                                     ; preds = %.outer
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.cg = load i16, ptr %i.cf, align 2, !noalias !6924, !noundef !3 ; 2 uses
  %i.ch = icmp eq i16 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 2 ; 3 uses
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.loopexit151
  store i16 %.sroa.07.0.i.ph, ptr %i.cf, align 2, !noalias !6924
  store i16 %.sroa.6.0.i.ph, ptr %i.ci, align 2, !noalias !6924
  %i.cj = icmp ugt i64 %.sroa.05.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.019.0, i1 true, i1 %i.cj
  br i1 %or.cond.i, label %bb.w, label %.thread54

bb.v:                                             ; preds = %.loopexit151
  %i.ck = add i64 %.sroa.05.0.i.ph, 1
  %i.cl = load i16, ptr %i.ci, align 2, !noalias !6924, !noundef !3
  store i16 %.sroa.07.0.i.ph, ptr %i.cf, align 2, !noalias !6924
  store i16 %.sroa.6.0.i.ph, ptr %i.ci, align 2, !noalias !6924
  %i.cm = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.w:                                             ; preds = %bb.u
  %i.cn = load i64, ptr %0, align 8, !range !275, !alias.scope !6921, !noalias !6924, !noundef !3
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %bb.x, label %.thread54

bb.x:                                             ; preds = %bb.w
  store i64 1, ptr %0, align 8, !alias.scope !6921, !noalias !6924
  br label %.thread54

.thread54:                                        ; preds = %bb.u, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.y:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.g, %bb.y, %.thread54, %bb.i, %bb.ad, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread", %bb.aa, %bb.z
  %.sroa.0.2 = phi i8 [ 1, %bb.aa ], [ 0, %.thread54 ], [ 2, %bb.ad ], [ 1, %bb.z ], [ 2, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread" ], [ 0, %bb.i ], [ 2, %bb.y ], [ 2, %bb.g ]
  ret i8 %.sroa.0.2

bb.z:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6930)
  %i.cp = load ptr, ptr %1, align 8, !alias.scope !6933, !noundef !3 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6940)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6943)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !noalias !6946, !nonnull !3, !noundef !3
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cu = load ptr, ptr %i.r, align 8, !alias.scope !6946, !noundef !3
  %i.cv = load i64, ptr %i.s, align 8, !alias.scope !6946, !noundef !3
  tail call void %i.cs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ct, ptr noundef %i.cu, i64 noundef %i.cv), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.ab:                                            ; preds = %bb.r
  %lpad.thr_comm.split-lp65 = landingpad { ptr, i32 }
          cleanup
  br label %.thread57

bb.ac:                                            ; preds = %bb.d
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.thread57

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6951)
  %i.cx = load ptr, ptr %1, align 8, !alias.scope !6954, !noundef !3 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.ad

bb.ad:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6958)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6964)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !6967, !nonnull !3, !noundef !3
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !6967, !noundef !3
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !6967, !noundef !3
  tail call void %i.da(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef %i.dd, i64 noundef %i.df), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.ae:                                            ; preds = %bb.a, %bb.q
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974)
  %i.dg = load ptr, ptr %2, align 8, !alias.scope !6977, !nonnull !3, !align !17, !noundef !3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !noalias !6977, !nonnull !3, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !alias.scope !6977, !noundef !3
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !alias.scope !6977, !noundef !3
  invoke void %i.di(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dj, ptr noundef %i.dl, i64 noundef %i.dn)
          to label %.thread57 unwind label %bb.af, !inline_history !1434

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit43": ; preds = %.thread57, %bb.ag
  resume { ptr, i32 } %.pn61

.thread57:                                        ; preds = %bb.ae, %bb.ac, %bb.ab
  %.pn61 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp65, %bb.ab ], [ %i.cw, %bb.ac ], [ %lpad.thr_comm, %bb.ae ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6981)
  %i.dp = load ptr, ptr %1, align 8, !alias.scope !6984, !noundef !3 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit43", label %bb.ag

bb.ag:                                            ; preds = %.thread57
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6994)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !6997, !nonnull !3, !noundef !3
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !6997, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !6997, !noundef !3
  invoke void %i.ds(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dt, ptr noundef %i.dv, i64 noundef %i.dx)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit43" unwind label %bb.af, !inline_history !1407

infloop:                                          ; preds = %.outer134, %infloop
  br label %infloop

infloop167:                                       ; preds = %.outer, %infloop167
  br label %infloop167
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217h167e215492b853d4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = invoke noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ai

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load i16, ptr %i.h, align 8, !noundef !3 ; 3 uses
  %i.j = and i16 %i.i, %i.g
  %i.k = zext nneg i16 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.o = zext i16 %i.i to i64
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not148 = icmp eq i64 %i.n, 0
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  br label %.outer130

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.u, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7004)
  %i.v = load ptr, ptr %3, align 8, !alias.scope !7007, !nonnull !3, !align !17, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !noalias !7007, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !7007, !noundef !3
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !7007, !noundef !3
  invoke void %i.x(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef %i.aa, i64 noundef %i.ac)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread" unwind label %bb.ag, !inline_history !1434

.loopexit:                                        ; preds = %.outer130
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.sroa.04.0.ph.mux ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2, !noundef !3 ; 2 uses
  %.not = icmp eq i16 %i.ae, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.r
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.af = zext i16 %i.ae to i64                   ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !noundef !3 ; 2 uses
  %i.ai = and i16 %i.ah, %i.i
  %i.aj = zext i16 %i.ai to i64
  %i.ak = sub i64 %.sroa.04.0.ph.mux, %i.aj
  %i.al = and i64 %i.ak, %i.o
  %i.am = icmp samesign ult i64 %i.al, %.sroa.012.0.ph
  br i1 %i.am, label %bb.m, label %bb.l

bb.g:                                             ; preds = %.loopexit
  %i.an = load i64, ptr %i.p, align 8, !noundef !3 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 88686269585142076
  tail call void @llvm.assume(i1 %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.ap = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef align 8 dereferenceable(96) %1, i16 noundef %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.aq, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.i:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.m, align 8, !noundef !3 ; 2 uses
  %i.as = icmp ult i64 %.sroa.04.0.ph.mux, %i.ar
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.au = trunc i64 %i.an to i16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.04.0.ph.mux ; 2 uses
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.g, ptr %i.aw, align 2
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.04.0.ph.mux, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #50
  unreachable

bb.l:                                             ; preds = %bb.f
  %i.ax = icmp eq i16 %i.ah, %i.g
  br i1 %i.ax, label %bb.n, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.m:                                             ; preds = %bb.f
  %i.ay = icmp samesign ugt i64 %.sroa.012.0.ph, 511
  br i1 %i.ay, label %bb.z, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread": ; preds = %bb.q, %bb.o, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %bb.l
  %i.az = add nuw nsw i64 %.sroa.012.0.ph, 1
  %i.ba = add i64 %.sroa.04.0.ph.mux, 1
  br label %.outer130

.outer130:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread", %bb.c
  %.sroa.012.0.ph = phi i64 [ %i.az, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ 0, %bb.c ] ; 3 uses
  %.sroa.04.0.ph = phi i64 [ %i.ba, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread" ], [ %i.k, %bb.c ] ; 2 uses
  %i.bb = icmp ult i64 %.sroa.04.0.ph, %i.n       ; 2 uses
  %.not148.not = xor i1 %.not148, true
  %brmerge = or i1 %i.bb, %.not148.not
  %.sroa.04.0.ph.mux = select i1 %i.bb, i64 %.sroa.04.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.n:                                             ; preds = %bb.l
  %i.bc = load i64, ptr %i.p, align 8, !noundef !3 ; 3 uses
  %i.bd = icmp ugt i64 %i.bc, %i.af
  br i1 %i.bd, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.af ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !3
  %i.bi = icmp ne ptr %i.bh, null                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !noundef !3
  %i.bk = icmp eq ptr %i.bj, null                 ; 3 uses
  %not..i.i = xor i1 %i.bk, true
  %i.bl = xor i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.p:                                             ; preds = %bb.o
  br i1 %i.bi, label %bb.q, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit"

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.assume(i1 %not..i.i)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !3 ; 2 uses
  %i.bo = load i64, ptr %i.s, align 8, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.bn, %i.bo
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

.split:                                           ; preds = %bb.q
  %i.bp = load ptr, ptr %i.r, align 8, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !3
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bp, i64 %i.bn)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bs, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.r:                                             ; preds = %bb.n
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.af, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #50
          to label %bb.e unwind label %bb.ai

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit": ; preds = %bb.p
  tail call void @llvm.assume(i1 %i.bk)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bu = load i8, ptr %i.bt, align 8, !range !1366, !noundef !3
  %i.bv = load i8, ptr %i.r, align 8, !range !1366, !noundef !3
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread"

bb.s:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit", %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  %i.bx = load i64, ptr %i.bf, align 8, !range !5, !noalias !7013, !noundef !3
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.invoke.i, %bb.u
  %i.bz = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7015)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7021)
  %i.ca = load ptr, ptr %i.c, align 8, !alias.scope !7024, !noalias !7025, !nonnull !3, !align !17, !noundef !3
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !7026, !nonnull !3, !noundef !3
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !7024, !noalias !7025, !noundef !3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !7024, !noalias !7025, !noundef !3
  invoke void %i.cc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.cf, i64 noundef %i.ch)
          to label %bb.ak unwind label %bb.w, !noalias !7025, !inline_history !1434

bb.u:                                             ; preds = %bb.s
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !7013, !noundef !3
  invoke void @"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h2015c0f1bfe9603cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i64 noundef %i.cj)
          to label %._crit_edge.i unwind label %bb.t, !noalias !7027

._crit_edge.i:                                    ; preds = %bb.u
  %.pre.i = load i64, ptr %i.p, align 8, !alias.scope !7008, !noalias !7027
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i, %bb.s
  %i.ck = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.bc, %bb.s ] ; 2 uses
  %i.cl = icmp ugt i64 %i.ck, %i.af
  br i1 %i.cl, label %bb.x, label %.invoke.i

.invoke.i:                                        ; preds = %bb.v
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.af, i64 noundef %i.ck, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #50
          to label %.cont.i unwind label %bb.t, !noalias !7013

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !7025
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cn = load ptr, ptr %i.q, align 8, !alias.scope !7008, !noalias !7027, !nonnull !3, !noundef !3
  %i.co = getelementptr inbounds nuw [104 x i8], ptr %i.cn, i64 %i.af ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  %.sroa.445.0.copyload = load i8, ptr %.sroa.445.0..sroa_idx, align 8, !noalias !7028
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.co, i64 57
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !7025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.445.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7032)
  %i.cq = load ptr, ptr %2, align 8, !alias.scope !7035, !noundef !3 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7036)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7039)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7042)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7045)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !noalias !7048, !nonnull !3, !noundef !3
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load ptr, ptr %i.r, align 8, !alias.scope !7048, !noundef !3
  %i.cw = load i64, ptr %i.s, align 8, !alias.scope !7048, !noundef !3
  tail call void %i.ct(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cu, ptr noundef %i.cv, i64 noundef %i.cw), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.z:                                             ; preds = %bb.m
  %i.cx = load i64, ptr %1, align 8, !range !275, !noundef !3
  %i.cy = icmp ne i64 %i.cx, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.z, %bb.m
  %.sroa.017.0 = phi i1 [ %i.cy, %bb.z ], [ false, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.cz = load i64, ptr %i.p, align 8, !alias.scope !7049, !noalias !7052, !noundef !3 ; 2 uses
  %i.da = icmp ult i64 %i.cz, 88686269585142076
  tail call void @llvm.assume(i1 %i.da)
  %i.db = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.d)
  br i1 %i.db, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %.noexc
  %i.dc = load ptr, ptr %i.l, align 8, !alias.scope !7049, !noalias !7052, !nonnull !3, !noundef !3
  %i.dd = load i64, ptr %i.m, align 8, !alias.scope !7049, !noalias !7052, !noundef !3 ; 2 uses
  %i.de = trunc i64 %i.cz to i16
  %.not149 = icmp eq i64 %i.dd, 0
  br label %.outer

.outer:                                           ; preds = %bb.ac, %bb.aa
  %.sroa.6.0.i.ph = phi i16 [ %i.dm, %bb.ac ], [ %i.g, %bb.aa ] ; 2 uses
  %.sroa.07.0.i.ph = phi i16 [ %i.dh, %bb.ac ], [ %i.de, %bb.aa ] ; 2 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.dl, %bb.ac ], [ 0, %bb.aa ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.dn, %bb.ac ], [ %.sroa.04.0.ph.mux, %bb.aa ] ; 2 uses
  %i.df = icmp ult i64 %.sroa.0.0.i.ph, %i.dd     ; 2 uses
  %.not149.not = xor i1 %.not149, true
  %brmerge164 = or i1 %i.df, %.not149.not
  %.sroa.0.0.i.ph.mux = select i1 %i.df, i64 %.sroa.0.0.i.ph, i64 0 ; 2 uses
  br i1 %brmerge164, label %.loopexit147, label %infloop163

.loopexit147:                                     ; preds = %.outer
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.sroa.0.0.i.ph.mux ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !7052, !noundef !3 ; 2 uses
  %i.di = icmp eq i16 %i.dh, -1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 2 ; 3 uses
  br i1 %i.di, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit147
  store i16 %.sroa.07.0.i.ph, ptr %i.dg, align 2, !noalias !7052
  store i16 %.sroa.6.0.i.ph, ptr %i.dj, align 2, !noalias !7052
  %i.dk = icmp ugt i64 %.sroa.05.0.i.ph, 127
  %or.cond.i = select i1 %.sroa.017.0, i1 true, i1 %i.dk
  br i1 %or.cond.i, label %bb.ad, label %.thread

bb.ac:                                            ; preds = %.loopexit147
  %i.dl = add i64 %.sroa.05.0.i.ph, 1
  %i.dm = load i16, ptr %i.dj, align 2, !noalias !7052, !noundef !3
  store i16 %.sroa.07.0.i.ph, ptr %i.dg, align 2, !noalias !7052
  store i16 %.sroa.6.0.i.ph, ptr %i.dj, align 2, !noalias !7052
  %i.dn = add nuw i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.ad:                                            ; preds = %bb.ab
  %i.do = load i64, ptr %1, align 8, !range !275, !alias.scope !7049, !noalias !7052, !noundef !3
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  store i64 1, ptr %1, align 8, !alias.scope !7049, !noalias !7052
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %.critedge

bb.af:                                            ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.dq, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

.critedge:                                        ; preds = %.thread, %bb.j
  %.sroa.2.0..sroa_idx.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 2, ptr %.sroa.2.0..sroa_idx.c, align 8
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.af, %bb.h, %bb.ah, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread", %bb.y, %bb.x, %.critedge
  ret void

bb.ag:                                            ; preds = %bb.d
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread": ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7058)
  %i.ds = load ptr, ptr %2, align 8, !alias.scope !7061, !noundef !3 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h69ef541a736c76ddE.exit.thread"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7062)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7068)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7071)
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !7074, !nonnull !3, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !alias.scope !7074, !noundef !3
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !alias.scope !7074, !noundef !3
  tail call void %i.dv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dw, ptr noundef %i.dy, i64 noundef %i.ea), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit"

bb.ai:                                            ; preds = %bb.a, %bb.r
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7075)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7081)
  %i.eb = load ptr, ptr %3, align 8, !alias.scope !7084, !nonnull !3, !align !17, !noundef !3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !7084, !nonnull !3, !noundef !3
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !alias.scope !7084, !noundef !3
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !7084, !noundef !3
  invoke void %i.ed(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.eg, i64 noundef %i.ei)
          to label %bb.ak unwind label %bb.aj, !inline_history !1434

bb.aj:                                            ; preds = %bb.al, %bb.ai
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44": ; preds = %bb.ak, %bb.al
  resume { ptr, i32 } %.pn.ph

bb.ak:                                            ; preds = %bb.ag, %bb.t, %bb.ai
  %.pn.ph = phi { ptr, i32 } [ %i.bz, %bb.t ], [ %i.dr, %bb.ag ], [ %lpad.thr_comm, %bb.ai ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7085)
  call void @llvm.experimental.noalias.scope.decl(metadata !7088)
  %i.ek = load ptr, ptr %2, align 8, !alias.scope !7091, !noundef !3 ; 2 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44", label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !7092)
  call void @llvm.experimental.noalias.scope.decl(metadata !7095)
  call void @llvm.experimental.noalias.scope.decl(metadata !7098)
  call void @llvm.experimental.noalias.scope.decl(metadata !7101)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !noalias !7104, !nonnull !3, !noundef !3
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !alias.scope !7104, !noundef !3
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.es = load i64, ptr %i.er, align 8, !alias.scope !7104, !noundef !3
  invoke void %i.en(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef %i.eq, i64 noundef %i.es)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit44" unwind label %bb.aj, !inline_history !1407

infloop:                                          ; preds = %.outer130, %infloop
  br label %infloop

infloop163:                                       ; preds = %.outer, %infloop163
  br label %infloop163
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17h8d17a03dcb98b0bfE"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7105)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge", label %bb.b

"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge": ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !7110
  br label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7108 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7105, !noalias !7108, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7105, !noalias !7108, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7105, !noalias !7108, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 4 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %not..i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !1366
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.aj, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.ak, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !7115, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.z, -1
  br i1 %.not.i, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !7115, !noundef !3 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ag
  br i1 %i.ah, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !7115, !noundef !3
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !7115, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.as, %i.v
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !7115, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.w, i64 %i.v), !noalias !7115
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !1366, !noalias !7115, !noundef !3
  %i.ay = icmp eq i8 %i.ax, %i.u
  br i1 %i.ay, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50
          to label %.noexc2 unwind label %bb.j

.noexc2:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7119)
  %i.ba = load ptr, ptr %1, align 8, !alias.scope !7122, !noundef !3 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7123)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7132)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !7135, !nonnull !3, !noundef !3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.q, align 8, !alias.scope !7135, !noundef !3
  %i.bg = load i64, ptr %i.r, align 8, !alias.scope !7135, !noundef !3
  invoke void %i.bd(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef %i.bf, i64 noundef %i.bg)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit" unwind label %bb.m, !inline_history !1407

"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit": ; preds = %.split.i, %.loopexit, %bb.c, %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge"
  %2 = phi ptr [ %.pre, %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge" ], [ %i.s, %bb.c ], [ %i.s, %.loopexit ], [ %i.s, %.split.i ] ; 2 uses
  %3 = phi i1 [ false, %"._ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit_crit_edge" ], [ true, %.split.i ], [ false, %.loopexit ], [ false, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7137)
  %i.bh = icmp eq ptr %2, null
  br i1 %i.bh, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1", label %bb.l

bb.l:                                             ; preds = %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7147)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !7150, !nonnull !3, !noundef !3
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !7150, !noundef !3
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !7150, !noundef !3
  tail call void %i.bj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bm, i64 noundef %i.bo), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit1": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit", %bb.l
  %i.bp = phi i1 [ %3, %bb.l ], [ %3, %"_ZN92_$LT$http..header..name..HeaderName$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17hc7008685e9a0450eE.exit" ], [ true, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ]
  ret i1 %i.bp

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.az

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$12contains_key17ha2688d6f0267902cE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7151)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7154 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7151, !noalias !7154, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7151, !noalias !7154, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7151, !noalias !7154, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !7156, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !7156, !noundef !3 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !7156, !noundef !3
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !7156, !noundef !3
  %i.am = icmp eq ptr %i.al, null                 ; 3 uses
  %not..i.i.i = xor i1 %i.am, true
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !7156, !noundef !3 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !7156, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.h
  %i.ar = load ptr, ptr %i.q, align 8, !noalias !7156, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !7156, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.ar, i64 %i.ap), !noalias !7156
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !1366, !noalias !7156, !noundef !3
  %i.ax = load i8, ptr %i.q, align 8, !range !1366, !noalias !7156, !noundef !3
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50, !noalias !7156
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit": ; preds = %.split.i, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.loopexit, %bb.c, %bb.a
  %i.az = phi i1 [ false, %bb.a ], [ true, %.split.i ], [ true, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ], [ false, %.loopexit ], [ false, %bb.c ]
  ret i1 %i.az

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !275, !noundef !3
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !3 ; 5 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = uitofp nneg i64 %i.g to float
  %i.n = uitofp i64 %i.l to float
  %i.o = fdiv float %i.m, %i.n
  %i.p = fcmp ult float %i.o, 2.000000e-01
  br i1 %i.p, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = lshr i64 %i.l, 2
  %i.s = sub nuw i64 %i.l, %i.r
  %i.t = icmp eq i64 %i.g, %i.s
  br i1 %i.t, label %bb.m, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17h77b1dafbf9151fbcE.exit"

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4http6header3map6Danger7set_red17h7b00acfaf821bc17E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.w = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %.idx = shl i64 %i.w, 2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.z = add i64 %.idx, -4                        ; 2 uses
  %i.aa = lshr exact i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  br i1 %min.iters.check, label %.lr.ph.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ab, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.ae
  %i.af = getelementptr i8, ptr %i.v, i64 %i.ae
  %next.gep30 = getelementptr i8, ptr %i.af, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep30, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !7157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader35

.lr.ph.preheader35:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.01.017.ph = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.ah = shl i64 %i.l, 1
  %i.ai = tail call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17hbc3fea73b67255d8E"(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %i.ah)
  br i1 %i.ai, label %bb.x, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17h77b1dafbf9151fbcE.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader35, %.lr.ph
  %.sroa.01.017 = phi ptr [ %i.aj, %.lr.ph ], [ %.sroa.01.017.ph, %.lr.ph.preheader35 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.01.017, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.01.017, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.01.017, i64 2
  store i16 0, ptr %i.ak, align 2
  %i.al = icmp eq ptr %i.aj, %i.x
  br i1 %i.al, label %._crit_edge, label %.lr.ph, !llvm.loop !7158

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7159)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !7159, !nonnull !3, !noundef !3 ; 2 uses
  %i.ao = load i64, ptr %i.f, align 8, !alias.scope !7159, !noundef !3 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.ao, 104
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.i
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17h77b1dafbf9151fbcE.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i16, ptr %i.ar, align 8, !alias.scope !7159 ; 3 uses
  %i.at = load ptr, ptr %i.u, align 8, !alias.scope !7159, !nonnull !3 ; 3 uses
  %i.au = load i64, ptr %i.k, align 8, !alias.scope !7159 ; 4 uses
  %i.av = zext i16 %i.as to i64
  %.not = icmp eq i64 %i.au, 0
  %.not41 = icmp eq i64 %i.au, 0
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.036.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.aw, %.backedge.i ] ; 3 uses
  %.sroa.7.035.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %.backedge.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 104 ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.7.035.i, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 64
  %i.az = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.ay) ; 4 uses
  %i.ba = and i16 %i.az, %i.as
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.036.i, i64 96
  store i16 %i.az, ptr %i.bc, align 8, !noalias !7159
  br label %.outer31

.outer31:                                         ; preds = %bb.i, %bb.f
  %.sroa.014.0.i.ph = phi i64 [ %i.bs, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.bt, %bb.i ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bd = icmp ult i64 %.sroa.04.0.i.ph, %i.au    ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.bd, %.not.not
  %.sroa.04.0.i.ph.mux = select i1 %i.bd, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer31
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !7159, !noundef !3
  %.not23.i = icmp eq i16 %i.bf, -1
  br i1 %.not23.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !7159, !noundef !3
  %i.bi = and i16 %i.bh, %i.as
  %i.bj = zext i16 %i.bi to i64
  %i.bk = sub i64 %.sroa.04.0.i.ph.mux, %i.bj
  %i.bl = and i64 %i.bk, %i.av
  %i.bm = icmp samesign ult i64 %i.bl, %.sroa.014.0.i.ph
  br i1 %i.bm, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.bn = trunc i64 %.sroa.7.035.i to i16
  store i16 %i.bn, ptr %i.be, align 2, !noalias !7159
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.k, %bb.h
  %i.bo = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.h ], [ %.sroa.04.2.i.ph.mux, %bb.k ]
  %.sink.i = phi i16 [ %i.az, %bb.h ], [ %.sroa.619.0.i.ph, %bb.k ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  store i16 %.sink.i, ptr %i.bq, align 2, !noalias !7159
  %i.br = icmp eq ptr %i.aw, %i.ap
  br i1 %i.br, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17h77b1dafbf9151fbcE.exit", label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bs = add nuw nsw i64 %.sroa.014.0.i.ph, 1
  %i.bt = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer31
end_hunk_1
begin_hunk_2_@"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h2015c0f1bfe9603cE":bb.a
  %i.cp = load i64, ptr %i.co, align 8, !range !5, !noalias !7225, !noundef !3
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.ap, label %.invoke106.i, !prof !4

bb.ap:                                            ; preds = %bb.ao
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 %.sroa.0.062, ptr %i.cr, align 8, !noalias !7225
  br label %_ZN4http6header3map18remove_extra_value17hfd6e936efbab7678E.exit

.invoke106.i:                                     ; preds = %bb.ao, %bb.ai
  %i.cs = phi ptr [ @324, %bb.ai ], [ @327, %bb.ao ]
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs) #50
          to label %.cont107.i unwind label %bb.af, !noalias !7225

.cont107.i:                                       ; preds = %.invoke106.i
  unreachable

bb.aq:                                            ; preds = %bb.am
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %i.bo ; 2 uses
  store i64 1, ptr %i.ct, align 8, !noalias !7225
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i64 %.sroa.0.062, ptr %i.cu, align 8, !noalias !7225
  br label %_ZN4http6header3map18remove_extra_value17hfd6e936efbab7678E.exit

.invoke.i:                                        ; preds = %bb.an, %bb.am, %bb.ah, %bb.ag
  %i.cv = phi i64 [ %i.bo, %bb.an ], [ %i.bq, %bb.ag ], [ %i.bq, %bb.ah ], [ %i.bo, %bb.am ]
  %i.cw = phi i64 [ %i.f, %bb.an ], [ %i.ah, %bb.ag ], [ %i.f, %bb.ah ], [ %i.ah, %bb.am ]
  %i.cx = phi ptr [ @326, %bb.an ], [ @325, %bb.ag ], [ @323, %bb.ah ], [ @328, %bb.am ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.cv, i64 noundef %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx) #50
          to label %.cont.i unwind label %bb.af, !noalias !7225

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.ar:                                            ; preds = %bb.af
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !7225
  unreachable

"_ZN4core3ptr90drop_in_place$LT$http..header..map..ExtraValue$LT$http..header..value..HeaderValue$GT$$GT$17h30db0c7f3fc3595aE.exit.i": ; preds = %bb.af
  resume { ptr, i32 } %i.bs

_ZN4http6header3map18remove_extra_value17hfd6e936efbab7678E.exit: ; preds = %bb.ac, %bb.ap, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !7220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7225
  %i.cz = load i64, ptr %i.n, align 8, !range !5, !noundef !3
  %i.da = trunc nuw i64 %i.cz to i1
  br i1 %i.da, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4http6header3map18remove_extra_value17hfd6e936efbab7678E.exit
  %i.db = load i64, ptr %i.o, align 8, !noundef !3 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7248)
  call void @llvm.experimental.noalias.scope.decl(metadata !7251)
  call void @llvm.experimental.noalias.scope.decl(metadata !7254)
  call void @llvm.experimental.noalias.scope.decl(metadata !7257)
  %i.dc = load ptr, ptr %i.p, align 8, !alias.scope !7260, !nonnull !3, !align !17, !noundef !3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8, !noalias !7260, !nonnull !3, !noundef !3
  %i.df = load ptr, ptr %i.r, align 8, !alias.scope !7260, !noundef !3
  %i.dg = load i64, ptr %i.s, align 8, !alias.scope !7260, !noundef !3
  call void %i.de(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.df, i64 noundef %i.dg), !inline_history !7261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.dh = icmp ult i64 %i.db, %i.ah
  br i1 %i.dh, label %bb.b, label %._crit_edge

bb.at:                                            ; preds = %_ZN4http6header3map18remove_extra_value17hfd6e936efbab7678E.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  call void @llvm.experimental.noalias.scope.decl(metadata !7268)
  call void @llvm.experimental.noalias.scope.decl(metadata !7271)
  %i.di = load ptr, ptr %i.p, align 8, !alias.scope !7274, !nonnull !3, !align !17, !noundef !3
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !noalias !7274, !nonnull !3, !noundef !3
  %i.dl = load ptr, ptr %i.r, align 8, !alias.scope !7274, !noundef !3
  %i.dm = load i64, ptr %i.s, align 8, !alias.scope !7274, !noundef !3
  call void %i.dk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.dl, i64 noundef %i.dm), !inline_history !7261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h73c40265ebcf746fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7275)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7278
  call void @_ZN4http6header4name7HdrName10from_bytes17hf1124aa44f30c6c3E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0), !noalias !7282
  %i.b = load i64, ptr %i.a, align 8, !range !275, !noalias !7278, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.thread.i", label %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.i"

"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.thread.i": ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7278
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h40e688155bcb644cE.exit"

"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.i": ; preds = %bb.a
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.51.0.copyload.i = load i64, ptr %.sroa.51.0..sroa_idx.i, align 8, !noalias !7283 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7278
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h40e688155bcb644cE.exit"

bb.b:                                             ; preds = %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.i"
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !7275, !noundef !3 ; 2 uses
  %i.g = icmp ult i64 %.sroa.51.0.copyload.i, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !7275, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw [104 x i8], ptr %i.i, i64 %.sroa.51.0.copyload.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h40e688155bcb644cE.exit"

bb.d:                                             ; preds = %bb.b
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.51.0.copyload.i, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #50
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h40e688155bcb644cE.exit": ; preds = %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.thread.i", %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.i", %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ null, %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.i" ], [ null, %"_ZN69_$LT$$RF$str$u20$as$u20$http..header..map..as_header_name..Sealed$GT$4find17h7a537232a1171839E.exit.thread.i" ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h80e614ed799424b7E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7287)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7290, !noalias !7291, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h76dcf808647d61aaE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7291 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7290, !noalias !7291, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7290, !noalias !7291, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7290, !noalias !7291, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7290, !noalias !7291, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i", %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.ae, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.af, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !7293, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, -1
  br i1 %.not.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h76dcf808647d61aaE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !7293, !noundef !3 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ab
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h76dcf808647d61aaE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i", %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !7293, !noundef !3
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !noalias !7293, !noundef !3
  %i.am = icmp eq ptr %i.al, null                 ; 3 uses
  %not..i.i.i.i = xor i1 %i.am, true
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !7293, !noundef !3 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !7293, !noundef !3
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i.i, label %.split.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

.split.i.i:                                       ; preds = %bb.h
  %i.ar = load ptr, ptr %i.q, align 8, !noalias !7293, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !7293, !noundef !3
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.ar, i64 %i.ap), !noalias !7293
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !1366, !noalias !7293, !noundef !3
  %i.ax = load i8, ptr %i.q, align 8, !range !1366, !noalias !7293, !noundef !3
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50, !noalias !7293
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i", %.split.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h76dcf808647d61aaE.exit"

"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217h76dcf808647d61aaE.exit": ; preds = %.loopexit, %bb.c, %bb.a, %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i"
  %.sroa.0.0.i = phi ptr [ %i.az, %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i" ], [ null, %bb.a ], [ null, %bb.c ], [ null, %.loopexit ]
  ret ptr %.sroa.0.0.i

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4http6header3map18HeaderMap$LT$T$GT$3get17h8beeb5f8460a60d5E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7297)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7300, !noalias !7301, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"._ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit_crit_edge", label %bb.b

"._ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit_crit_edge": ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !7303
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull readonly align 8 %1), !noalias !7301 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7300, !noalias !7301, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7300, !noalias !7301, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7300, !noalias !7301, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7300, !noalias !7301, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.s = load ptr, ptr %1, align 8                ; 4 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %not..i.i.i.i = xor i1 %i.t, true
  %i.u = load i8, ptr %i.q, align 8, !range !1366
  %i.v = load i64, ptr %i.r, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.q, align 8
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i", %bb.b
  %.sroa.05.0.i.i.ph = phi i64 [ %i.aj, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.ak, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.ph, %i.k     ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.x, %.not.not
  %.sroa.0.0.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.ph.mux ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !noalias !7308, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i16 %i.z, -1
  br i1 %.not.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !noalias !7308, !noundef !3 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g
  %i.ae = zext i16 %i.ad to i64
  %i.af = sub i64 %.sroa.0.0.i.i.ph.mux, %i.ae
  %i.ag = and i64 %i.af, %i.n
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.ph, %i.ag
  br i1 %i.ah, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e
  br i1 %i.ai, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i", %.split.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.ph, 1
  %i.ak = add i64 %.sroa.0.0.i.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa
  br i1 %i.al, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !7308, !noundef !3
  %i.ap = icmp ne ptr %i.ao, null                 ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t
  br i1 %i.aq, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !7308, !noundef !3
  %.not.i.i.i.i.i.i = icmp eq i64 %i.as, %i.v
  br i1 %.not.i.i.i.i.i.i, label %.split.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

.split.i.i:                                       ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.au = load ptr, ptr %i.at, align 8, !noalias !7308, !noundef !3
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.au, ptr %i.w, i64 %i.v), !noalias !7308
  %i.av = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.av, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ax = load i8, ptr %i.aw, align 8, !range !1366, !noalias !7308, !noundef !3
  %i.ay = icmp eq i8 %i.ax, %i.u
  br i1 %i.ay, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i.i"

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i.i", %.split.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit"

bb.j:                                             ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  %i.bb = load ptr, ptr %1, align 8, !alias.scope !7315, !noundef !3 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7316)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !7328, !nonnull !3, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.q, align 8, !alias.scope !7328, !noundef !3
  %i.bh = load i64, ptr %i.r, align 8, !alias.scope !7328, !noundef !3
  invoke void %i.be(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef %i.bg, i64 noundef %i.bh)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit" unwind label %bb.m, !inline_history !1407

"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit": ; preds = %bb.c, %.loopexit, %"._ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit_crit_edge", %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i"
  %i.bi = phi ptr [ %i.s, %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i" ], [ %.pre, %"._ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit_crit_edge" ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.az, %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit.i" ], [ null, %"._ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit_crit_edge" ], [ null, %.loopexit ], [ null, %bb.c ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7330)
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit2", label %bb.l

bb.l:                                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7340)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !7343, !nonnull !3, !noundef !3
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !7343, !noundef !3
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !7343, !noundef !3
  tail call void %i.bl(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bo, i64 noundef %i.bq), !inline_history !6947
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit2"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit2": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$4get217hff2d6e8a775dceaeE.exit", %bb.l
  ret ptr %.sroa.0.0.i

bb.m:                                             ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17hd2a1bc5afa355386E.exit": ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.ba

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4http6header3map18HeaderMap$LT$T$GT$7get_all17hf923ca0d48d0baa0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !7344, !noalias !7347, !noundef !3 ; 4 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i16 @_ZN4http6header3map15hash_elem_using17h72e656fb3aad691aE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %1, ptr noundef nonnull readonly align 8 %2), !noalias !7347 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = load i16, ptr %i.f, align 8, !alias.scope !7344, !noalias !7347, !noundef !3 ; 3 uses
  %i.h = and i16 %i.g, %i.e
  %i.i = zext nneg i16 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7344, !noalias !7347, !noundef !3 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !7344, !noalias !7347, !nonnull !3
  %i.n = zext i16 %i.g to i64
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !7344, !noalias !7347, !nonnull !3
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not = icmp eq i64 %i.k, 0
  br label %.outer

.outer:                                           ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i", %bb.b
  %.sroa.05.0.i.ph = phi i64 [ %i.ae, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.ph = phi i64 [ %i.af, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i" ], [ %i.i, %bb.b ] ; 2 uses
  %i.s = icmp ult i64 %.sroa.0.0.i.ph, %i.k       ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.s, %.not.not
  %.sroa.0.0.i.ph.mux = select i1 %i.s, i64 %.sroa.0.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.ph.mux ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !noalias !7349, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.u, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.c

bb.c:                                             ; preds = %.loopexit
  %i.v = zext i16 %i.u to i64                     ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.x = load i16, ptr %i.w, align 2, !noalias !7349, !noundef !3 ; 2 uses
  %i.y = and i16 %i.x, %i.g
  %i.z = zext i16 %i.y to i64
  %i.aa = sub i64 %.sroa.0.0.i.ph.mux, %i.z
  %i.ab = and i64 %i.aa, %i.n
  %i.ac = icmp samesign ugt i64 %.sroa.05.0.i.ph, %i.ab
  br i1 %i.ac, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp eq i16 %i.x, %i.e
  br i1 %i.ad, label %bb.e, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.split.i, %bb.h, %bb.f, %bb.d
  %i.ae = add nuw nsw i64 %.sroa.05.0.i.ph, 1
  %i.af = add i64 %.sroa.0.0.i.ph.mux, 1
  br label %.outer

bb.e:                                             ; preds = %bb.d
  %i.ag = icmp samesign ugt i64 %i.b, %i.v
  br i1 %i.ag, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !7349, !noundef !3
  %i.ak = icmp ne ptr %i.aj, null                 ; 2 uses
  %i.al = load ptr, ptr %2, align 8, !noalias !7349, !noundef !3
  %i.am = icmp eq ptr %i.al, null                 ; 3 uses
  %not..i.i.i = xor i1 %i.am, true
  %i.an = xor i1 %i.ak, %i.am
  br i1 %i.an, label %bb.g, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.g:                                             ; preds = %bb.f
  br i1 %i.ak, label %bb.h, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i"

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %not..i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !7349, !noundef !3 ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !noalias !7349, !noundef !3
  %.not.i.i.i.i.i = icmp eq i64 %i.ap, %i.aq
  br i1 %.not.i.i.i.i.i, label %.split.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

.split.i:                                         ; preds = %bb.h
  %i.ar = load ptr, ptr %i.q, align 8, !noalias !7349, !noundef !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !noalias !7349, !noundef !3
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr %i.at, ptr %i.ar, i64 %i.ap), !noalias !7349
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.au, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.am)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aw = load i8, ptr %i.av, align 8, !range !1366, !noalias !7349, !noundef !3
  %i.ax = load i8, ptr %i.q, align 8, !range !1366, !noalias !7349, !noundef !3
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit", label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.thread.i"

bb.i:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.v, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @310) #50, !noalias !7349
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$4find17hfe1c8c2ed168da1bE.exit": ; preds = %.split.i, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i", %.loopexit, %bb.c, %bb.a
  %.sroa.5.03 = phi i64 [ undef, %bb.a ], [ %i.v, %.split.i ], [ %i.v, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ], [ undef, %bb.c ], [ undef, %.loopexit ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 1, %.split.i ], [ 1, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf984946c8803f90bE.exit.i" ], [ 0, %bb.c ], [ 0, %.loopexit ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.az, align 8
  store i64 %.sink.i, ptr %0, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.03, ptr %i.ba, align 8
  ret void

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17hbc3fea73b67255d8E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.d, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h514ab3d032bf4b9fE.exit39", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !3 ; 7 uses
  %.idx = shl nuw nsw i64 %i.h, 2                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0                      ; 3 uses
  br i1 %i.j, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.057 = phi ptr [ %i.f, %.lr.ph ], [ %i.n, %.critedge ] ; 3 uses
  %.sroa.7.056 = phi i64 [ 0, %.lr.ph ], [ %i.o, %.critedge ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 4 ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.7.056, 1
  %i.p = load i16, ptr %.sroa.0.057, align 2, !noundef !3
  %.not26.not = icmp eq i16 %i.p, -1
  br i1 %.not26.not, label %.critedge, label %bb.g

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread": ; preds = %bb.g, %.critedge, %bb.b
  %.sroa.02.0 = phi i64 [ 0, %bb.b ], [ 0, %.critedge ], [ %.sroa.7.056, %bb.g ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7350
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef range(i64 0, 32769) %1, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !7350
  %i.q = load i64, ptr %i.a, align 8, !range !5, !noalias !7350, !noundef !3
  %i.r = trunc nuw i64 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !782, !noalias !7350, !noundef !3 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.r, label %bb.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !261

bb.d:                                             ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread"
  %i.v = load i64, ptr %i.u, align 8, !noalias !7350
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.t, i64 %i.v) #50, !noalias !7350
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread"
  %i.w = load ptr, ptr %i.u, align 8, !noalias !7350, !nonnull !3, !noundef !3
  %i.x = icmp ule i64 %1, %i.t
  call void @llvm.assume(i1 %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7350
  store i64 %i.t, ptr %i.b, align 8, !noalias !7350
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.w, ptr %i.y, align 8, !noalias !7350
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.z, align 8, !noalias !7350
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11extend_with17h4f1d52a79582a0b5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 32769) %1, i16 noundef -1, i16 noundef 0)
          to label %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he824b85367174322E.exit" unwind label %bb.e, !noalias !7350

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Pos$GT$$GT$17h35c1edf1460dceccE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %common.resume unwind label %bb.f, !noalias !7350

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !7350
  unreachable

common.resume:                                    ; preds = %bb.t, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i", %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.e ], [ %i.ca, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h97e088f20b840830E.exit.i.i" ], [ %i.ca, %bb.t ]
  resume { ptr, i32 } %common.resume.op

"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he824b85367174322E.exit": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7350
  %i.ac = call { ptr, i64 } @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17h63ee5872c36b5fdeE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 5 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ad, ptr %i.e, align 8
  store i64 %i.ae, ptr %i.g, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = trunc nuw i64 %1 to i16
  %i.ah = add i16 %i.ag, -1                       ; 3 uses
  store i16 %i.ah, ptr %i.af, align 8
  %i.ai = icmp ugt i64 %.sroa.02.0, %i.h
  br i1 %i.ai, label %bb.i, label %bb.h, !prof !261

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.057, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !3
  %i.al = and i16 %i.l, %i.ak
  %i.am = zext i16 %i.al to i64
  %i.an = sub nsw i64 %.sroa.7.056, %i.am
  %i.ao = and i64 %i.an, %i.m
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread", label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.g
  %i.aq = icmp eq ptr %i.n, %i.i
  br i1 %i.aq, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h1e3f64234d011b98E.exit.thread", label %bb.c

bb.h:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he824b85367174322E.exit"
  %.idx70 = shl nuw nsw i64 %.sroa.02.0, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx70 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.at = icmp samesign eq i64 %.sroa.02.0, %i.h
  br i1 %i.at, label %.preheader, label %.lr.ph64.preheader

.lr.ph64.preheader:                               ; preds = %bb.h
  %.sroa.014.161 = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  br label %.lr.ph64

bb.i:                                             ; preds = %"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17he824b85367174322E.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %.sroa.02.0, i64 noundef %i.h, i64 noundef %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @312) #50
          to label %bb.v unwind label %bb.t

.preheader:                                       ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h8bf1e40054f801c7E.exit", %bb.h
  %i.au = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %.preheader
  %.sroa.018.166 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  br label %.lr.ph69

.lr.ph64:                                         ; preds = %.lr.ph64.preheader, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h8bf1e40054f801c7E.exit"
  %.sroa.014.163 = phi ptr [ %.sroa.014.1, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h8bf1e40054f801c7E.exit" ], [ %.sroa.014.161, %.lr.ph64.preheader ] ; 3 uses
  %.sroa.014.062 = phi ptr [ %.sroa.014.163, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h8bf1e40054f801c7E.exit" ], [ %i.ar, %.lr.ph64.preheader ] ; 2 uses
  %i.av = load i16, ptr %.sroa.014.062, align 2, !noundef !3 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.014.062, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !3 ; 2 uses
  %.not.i = icmp eq i16 %i.av, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h8bf1e40054f801c7E.exit", label %bb.j

bb.j:                                             ; preds = %.lr.ph64
  %i.ay = and i16 %i.ax, %i.ah
  %i.az = zext i16 %i.ay to i64
  br label %bb.k

bb.k:                                             ; preds = %.backedge76, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.az, %bb.j ], [ %.sroa.01.0.i.be, %.backedge76 ] ; 4 uses
  %i.ba = icmp ult i64 %.sroa.01.0.i, %i.ae
  br i1 %i.ba, label %bb.l, label %.backedge76

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !7353, !noundef !3
  %.not7.i = icmp eq i16 %i.bc, -1
  br i1 %.not7.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
end_hunk_2
begin_hunk_3_@"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$14write_trailers17h3d37a05df0d584a9E":bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !7926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.976.i, i64 40, i1 false), !noalias !7923
  call void @llvm.experimental.noalias.scope.decl(metadata !8020)
  %i.ds = load i64, ptr %i.r, align 8, !range !5, !alias.scope !8020, !noalias !7923, !noundef !3
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %.thread.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !8023)
  call void @llvm.experimental.noalias.scope.decl(metadata !8026)
  %i.du = load ptr, ptr %i.bc, align 8, !alias.scope !8029, !noalias !7923, !noundef !3 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !8030)
  call void @llvm.experimental.noalias.scope.decl(metadata !8033)
  call void @llvm.experimental.noalias.scope.decl(metadata !8036)
  call void @llvm.experimental.noalias.scope.decl(metadata !8039)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dx = load ptr, ptr %i.dw, align 8, !noalias !8042, !nonnull !3, !noundef !3
  %i.dy = load ptr, ptr %i.be, align 8, !alias.scope !8043, !noalias !7923, !noundef !3
  %i.dz = load i64, ptr %i.bf, align 8, !alias.scope !8043, !noalias !7923, !noundef !3
  invoke void %i.dx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.dy, i64 noundef %i.dz)
          to label %.thread.i unwind label %.thread98.i, !noalias !7926, !inline_history !5694

bb.at:                                            ; preds = %bb.u, %bb.s
  %.sroa.5.0.i.i = phi i64 [ %i.cm, %bb.u ], [ undef, %bb.s ]
  %.sroa.0.0.i.i = phi i64 [ 1, %bb.u ], [ 0, %bb.s ]
  store i64 %.sroa.0.0.i.i, ptr %i.p, align 8, !alias.scope !7956, !noalias !7959
  store i64 %.sroa.5.0.i.i, ptr %.sroa.467.0..sroa_idx.i, align 8, !alias.scope !7956, !noalias !7959
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.976.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ea, i64 40, i1 false), !noalias !8019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.976.i, i64 40, i1 false), !noalias !7923
  %.pre196.i = load i64, ptr %i.r, align 8, !range !5, !noalias !7923
  %i.eb = trunc nuw i64 %.pre196.i to i1
  br i1 %i.eb, label %bb.au, label %bb.av, !prof !8044

.thread98.i:                                      ; preds = %bb.as
  %i.ec = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.r, align 8, !noalias !7923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i, i64 32, i1 false), !noalias !7923
  br label %bb.cq

.thread.i:                                        ; preds = %bb.as, %bb.ar, %bb.aq
  store i64 1, ptr %i.r, align 8, !noalias !7923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.i, i64 32, i1 false), !noalias !7923
  br label %bb.au

.thread109.loopexit.i:                            ; preds = %bb.cp, %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit40.i.i", %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit.i.i"
  %lpad.loopexit139.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread102.i

.thread109.loopexit.split-lp.i:                   ; preds = %.loopexit138.i, %bb.bs, %bb.bm
  %lpad.loopexit.split-lp140.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread102.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp.i:                             ; preds = %bb.av
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.au:                                            ; preds = %.thread.i, %bb.at
  %i.ed = load ptr, ptr %i.bc, align 8, !noalias !7923, !noundef !3
  %.not25.i = icmp eq ptr %i.ed, null
  br i1 %.not25.i, label %switch.lookup, label %bb.ax

bb.av:                                            ; preds = %bb.at
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @453, i64 noundef 19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @455) #50
          to label %bb.aw unwind label %.loopexit.split-lp.i, !noalias !7926

bb.aw:                                            ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.au
  %i.ee = load ptr, ptr %i.be, align 8, !noalias !7923, !noundef !3
  %i.ef = load i64, ptr %i.bf, align 8, !noalias !7923, !noundef !3
  br label %bb.ay

switch.lookup:                                    ; preds = %bb.au
  %i.eg = load i8, ptr %i.be, align 8, !range !1366, !noalias !7923, !noundef !3 ; 2 uses
  %i.eh = zext nneg i8 %i.eg to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$14write_trailers17h3d37a05df0d584a9E", i64 %i.eh
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ei = zext nneg i8 %i.eg to i64
  %switch.gep149 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$14write_trailers17h3d37a05df0d584a9E.751", i64 %i.ei
  %switch.load150 = load ptr, ptr %switch.gep149, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %switch.lookup, %bb.ax
  %.sroa.3.0.i = phi i64 [ %i.ef, %bb.ax ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %.sroa.06.0.i = phi ptr [ %i.ee, %bb.ax ], [ %switch.load150, %switch.lookup ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8045)
  %i.ej = load i64, ptr %i.bi, align 8, !alias.scope !8045, !noalias !8048, !noundef !3
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i", label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.el = call noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h8e2bf4bde0470109E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.06.0.i, i64 noundef %.sroa.3.0.i), !noalias !7926 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8050)
  call void @llvm.experimental.noalias.scope.decl(metadata !8053)
  %i.em = lshr i64 %i.el, 57
  %i.en = trunc nuw nsw i64 %i.em to i8
  %i.eo = load i64, ptr %i.bk, align 8, !alias.scope !8056, !noalias !8057, !noundef !3 ; 2 uses
  %i.ep = load ptr, ptr %i.s, align 8, !alias.scope !8056, !noalias !8057, !nonnull !3, !noundef !3 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <16 x i8> poison, i8 %i.en, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.az ], [ %i.fg, %bb.bc ]
  %.pn.i.i.i = phi i64 [ %i.el, %bb.az ], [ %i.fh, %bb.bc ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.eo ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.eq, align 1, !noalias !8060 ; 2 uses
  %i.er = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i
  %i.es = bitcast <16 x i1> %i.er to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.es, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ba, %bb.bb
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.ff, %bb.bb ], [ %i.es, %bb.ba ] ; 3 uses
  %i.et = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = add i64 %.sroa.01.0.i.i.i.i, %i.eu
  %i.ew = and i64 %i.ev, %i.eo
  %i.ex = sub nsw i64 0, %i.ew
  %i.ey = getelementptr inbounds [24 x i8], ptr %i.ep, i64 %i.ex
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 -24
  %i.fa = invoke noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17h060d1755c6d5950fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.06.0.i, i64 noundef %.sroa.3.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez)
          to label %.noexc50.i unwind label %.loopexit.i, !noalias !7926

.noexc50.i:                                       ; preds = %.lr.ph.i.i.i
  br i1 %i.fa, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.i", label %bb.bb, !prof !4

._crit_edge.i.i.i:                                ; preds = %bb.bb, %bb.ba
  %i.fb = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.fc = bitcast <16 x i1> %i.fb to i16
  %i.fd = icmp eq i16 %i.fc, 0
  br i1 %i.fd, label %bb.bc, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i", !prof !261

bb.bb:                                            ; preds = %.noexc50.i
  %i.fe = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.ff = and i16 %i.fe, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.ff, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.bc:                                            ; preds = %._crit_edge.i.i.i
  %i.fg = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.fh = add i64 %.sroa.01.0.i.i.i.i, %i.fg
  br label %bb.ba

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.i": ; preds = %.noexc50.i
  %i.fi = load ptr, ptr %i.bc, align 8, !noalias !7923, !noundef !3
  %.not27.i = icmp eq ptr %i.fi, null
  br i1 %.not27.i, label %bb.cm, label %bb.bd

bb.bd:                                            ; preds = %bb.cm, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !7923
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.078.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.980.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !8063)
  call void @llvm.experimental.noalias.scope.decl(metadata !8066)
  %i.fj = invoke noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hf4b748d088d7b428E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q)
          to label %bb.be unwind label %.loopexit128.i, !noalias !8068

bb.be:                                            ; preds = %bb.bd
  br i1 %i.fj, label %bb.bm, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !8070)
  %i.fk = load i64, ptr %i.q, align 8, !range !275, !alias.scope !8073, !noalias !8074, !noundef !3 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 2
  br i1 %i.fl, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8075
  %i.fm = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !8073, !noalias !8074 ; 3 uses
  %i.fn = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fo = xor <2 x i64> %i.fn, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.fo, ptr %i.d, align 16, !noalias !8075
  %i.fp = shufflevector <2 x i64> %i.fm, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.fq = xor <2 x i64> %i.fp, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.fq, ptr %.sroa.513.0..sroa_idx.i.i.i, align 16, !noalias !8075
  store <2 x i64> %i.fm, ptr %.sroa.7.0..sroa_idx.i.i.i, align 16, !noalias !8075
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i.i, i8 0, i64 24, i1 false), !noalias !8075
  %i.fr = load ptr, ptr %i.bc, align 8, !noalias !8076, !noundef !3 ; 2 uses
  %i.fs = icmp ne ptr %i.fr, null
  %i.ft = zext i1 %i.fs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8083
  store i64 %i.ft, ptr %i.c, align 8, !noalias !8083
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !8088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8083
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fr, null     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.val.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !8076, !noundef !3 ; 2 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.bf, align 8, !noalias !8076, !noundef !3
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i), !noalias !8088
  %i.fu = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.fv = trunc i64 %i.fu to i8
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i"

bb.bi:                                            ; preds = %bb.bg
  %i.fw = load i8, ptr %i.be, align 8, !range !1366, !noalias !8076, !noundef !3 ; 2 uses
  %i.fx = zext nneg i8 %i.fw to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8089
  store i64 %i.fx, ptr %i.b, align 8, !noalias !8089
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h85f1b490c2f52fbfE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !8088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8089
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i"

"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i": ; preds = %bb.bi, %bb.bh
  %i.fy = phi i8 [ %i.fw, %bb.bi ], [ %i.fv, %bb.bh ]
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 16, !alias.scope !8094, !noalias !8075
  %.sroa.10.0.copyload.i.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !alias.scope !8094, !noalias !8075
  %.sroa.17.0.copyload.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i, align 16, !alias.scope !8094, !noalias !8075 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i.i, align 8, !alias.scope !8094, !noalias !8075
  %i.fz = load i64, ptr %.sroa.915.0..sroa_idx.i.i.i, align 16, !alias.scope !8094, !noalias !8075, !noundef !3
  %i.ga = shl i64 %i.fz, 56
  %i.gb = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !8094, !noalias !8075, !noundef !3
  %i.gc = or i64 %i.ga, %i.gb                     ; 2 uses
  %i.gd = xor i64 %i.gc, %.sroa.22.0.copyload.i.i.i.i ; 3 uses
  %i.ge = add i64 %.sroa.17.0.copyload.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i ; 3 uses
  %i.gf = add i64 %i.gd, %.sroa.10.0.copyload.i.i.i.i ; 2 uses
  %i.gg = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i, i64 13)
  %i.gh = xor i64 %i.gg, %i.ge                    ; 3 uses
  %i.gi = call i64 @llvm.fshl.i64(i64 %i.gd, i64 %i.gd, i64 16)
  %i.gj = xor i64 %i.gi, %i.gf                    ; 3 uses
  %i.gk = call i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 32)
  %i.gl = add i64 %i.gf, %i.gh                    ; 3 uses
  %i.gm = add i64 %i.gj, %i.gk                    ; 2 uses
  %i.gn = call i64 @llvm.fshl.i64(i64 %i.gh, i64 %i.gh, i64 17)
  %i.go = xor i64 %i.gl, %i.gn                    ; 3 uses
  %i.gp = call i64 @llvm.fshl.i64(i64 %i.gj, i64 %i.gj, i64 21)
  %i.gq = xor i64 %i.gp, %i.gm                    ; 3 uses
  %i.gr = call i64 @llvm.fshl.i64(i64 %i.gl, i64 %i.gl, i64 32)
  %i.gs = xor i64 %i.gm, %i.gc
  %i.gt = xor i64 %i.gr, 255
  %i.gu = add i64 %i.gs, %i.go                    ; 3 uses
  %i.gv = add i64 %i.gq, %i.gt                    ; 2 uses
  %i.gw = call i64 @llvm.fshl.i64(i64 %i.go, i64 %i.go, i64 13)
  %i.gx = xor i64 %i.gu, %i.gw                    ; 3 uses
  %i.gy = call i64 @llvm.fshl.i64(i64 %i.gq, i64 %i.gq, i64 16)
  %i.gz = xor i64 %i.gy, %i.gv                    ; 3 uses
  %i.ha = call i64 @llvm.fshl.i64(i64 %i.gu, i64 %i.gu, i64 32)
  %i.hb = add i64 %i.gx, %i.gv                    ; 3 uses
  %i.hc = add i64 %i.gz, %i.ha                    ; 2 uses
  %i.hd = call i64 @llvm.fshl.i64(i64 %i.gx, i64 %i.gx, i64 17)
  %i.he = xor i64 %i.hb, %i.hd                    ; 3 uses
  %i.hf = call i64 @llvm.fshl.i64(i64 %i.gz, i64 %i.gz, i64 21)
  %i.hg = xor i64 %i.hf, %i.hc                    ; 3 uses
  %i.hh = call i64 @llvm.fshl.i64(i64 %i.hb, i64 %i.hb, i64 32)
  %i.hi = add i64 %i.he, %i.hc                    ; 3 uses
  %i.hj = add i64 %i.hg, %i.hh                    ; 2 uses
  %i.hk = call i64 @llvm.fshl.i64(i64 %i.he, i64 %i.he, i64 13)
  %i.hl = xor i64 %i.hk, %i.hi                    ; 3 uses
  %i.hm = call i64 @llvm.fshl.i64(i64 %i.hg, i64 %i.hg, i64 16)
  %i.hn = xor i64 %i.hm, %i.hj                    ; 3 uses
  %i.ho = call i64 @llvm.fshl.i64(i64 %i.hi, i64 %i.hi, i64 32)
  %i.hp = add i64 %i.hl, %i.hj                    ; 3 uses
  %i.hq = add i64 %i.hn, %i.ho                    ; 2 uses
  %i.hr = call i64 @llvm.fshl.i64(i64 %i.hl, i64 %i.hl, i64 17)
  %i.hs = xor i64 %i.hr, %i.hp                    ; 3 uses
  %i.ht = call i64 @llvm.fshl.i64(i64 %i.hn, i64 %i.hn, i64 21)
  %i.hu = xor i64 %i.ht, %i.hq                    ; 2 uses
  %i.hv = call i64 @llvm.fshl.i64(i64 %i.hp, i64 %i.hp, i64 32)
  %i.hw = add i64 %i.hs, %i.hq
  %i.hx = add i64 %i.hu, %i.hv                    ; 2 uses
  %i.hy = call i64 @llvm.fshl.i64(i64 %i.hs, i64 %i.hs, i64 13)
  %i.hz = xor i64 %i.hy, %i.hw                    ; 2 uses
  %i.ia = shl i64 %i.hu, 16
  %i.ib = xor i64 %i.ia, %i.hx
  %i.ic = add i64 %i.hz, %i.hx                    ; 2 uses
  %i.id = lshr i64 %i.hz, 47
  %i.ie = lshr i64 %i.ib, 43
  %i.if = lshr i64 %i.ic, 32
  %i.ig = xor i64 %i.ie, %i.id
  %i.ih = xor i64 %i.ig, %i.if
  %i.ii = xor i64 %i.ih, %i.ic
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8075
  br label %.loopexit.i.i

bb.bj:                                            ; preds = %bb.bf
  %i.ij = load ptr, ptr %i.bc, align 8, !noalias !8097, !noundef !3 ; 2 uses
  %i.ik = icmp ne ptr %i.ij, null
  %i.il = zext i1 %i.ik to i64
  %i.im = xor i64 %i.il, -3750763034362895579
  %i.in = mul i64 %i.im, 2232315406967589409      ; 4 uses
  %.not.i.i.i21.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i21.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i.i22.i.i.i = load ptr, ptr %i.be, align 8, !noalias !8097, !noundef !3 ; 4 uses
  %.val1.i.i.i23.i.i.i = load i64, ptr %i.bf, align 8, !noalias !8097, !noundef !3 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i.i.i, i64 %.val1.i.i.i23.i.i.i
  %i.ip = icmp samesign eq i64 %.val1.i.i.i23.i.i.i, 0
  %i.iq = ptrtoint ptr %.val.i.i.i22.i.i.i to i64
  %i.ir = trunc i64 %i.iq to i8                   ; 3 uses
  br i1 %i.ip, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.bk
  %xtraiter = and i64 %.val1.i.i.i23.i.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i22.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.it = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.prol, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.iu = zext i8 %i.it to i64
  %i.iv = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, %i.iu
  %i.iw = mul i64 %i.iv, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !8111

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.in, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.iw, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i.i22.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.is, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ix = icmp ult i64 %.val1.i.i.i23.i.i.i, 8
  br i1 %i.ix, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi i64 [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i.i = phi ptr [ %i.kh, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 1
  %i.iz = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.ja = zext i8 %i.iz to i64
  %i.jb = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.i, %i.ja
  %i.jc = mul i64 %i.jb, 1099511628211
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 2
  %i.je = load i8, ptr %i.iy, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.jf = zext i8 %i.je to i64
  %i.jg = xor i64 %i.jc, %i.jf
  %i.jh = mul i64 %i.jg, 1099511628211
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 3
  %i.jj = load i8, ptr %i.jd, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.jk = zext i8 %i.jj to i64
  %i.jl = xor i64 %i.jh, %i.jk
  %i.jm = mul i64 %i.jl, 1099511628211
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 4
  %i.jo = load i8, ptr %i.ji, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.jp = zext i8 %i.jo to i64
  %i.jq = xor i64 %i.jm, %i.jp
  %i.jr = mul i64 %i.jq, 1099511628211
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 5
  %i.jt = load i8, ptr %i.jn, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.ju = zext i8 %i.jt to i64
  %i.jv = xor i64 %i.jr, %i.ju
  %i.jw = mul i64 %i.jv, 1099511628211
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 6
  %i.jy = load i8, ptr %i.js, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.jz = zext i8 %i.jy to i64
  %i.ka = xor i64 %i.jw, %i.jz
  %i.kb = mul i64 %i.ka, 1099511628211
  %i.kc = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 7
  %i.kd = load i8, ptr %i.jx, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.ke = zext i8 %i.kd to i64
  %i.kf = xor i64 %i.kb, %i.ke
  %i.kg = mul i64 %i.kf, 1099511628211
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ki = load i8, ptr %i.kc, align 1, !alias.scope !8104, !noalias !8107, !noundef !3
  %i.kj = zext i8 %i.ki to i64
  %i.kk = xor i64 %i.kg, %i.kj
  %i.kl = mul i64 %i.kk, 1099511628211            ; 2 uses
  %i.km = icmp eq ptr %i.kh, %i.io
  br i1 %i.km, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.kn = load i8, ptr %i.be, align 8, !range !1366, !noalias !8097, !noundef !3 ; 2 uses
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = xor i64 %i.in, %i.ko
  %i.kq = mul i64 %i.kp, 2232315406967589409
  br label %.loopexit.i.i

bb.bm:                                            ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !8112)
  call void @llvm.experimental.noalias.scope.decl(metadata !8115)
  call void @llvm.experimental.noalias.scope.decl(metadata !8118)
  %i.kr = load ptr, ptr %i.m, align 8, !alias.scope !8121, !noalias !8122, !nonnull !3, !align !17, !noundef !3
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 32
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !8123, !nonnull !3, !noundef !3
  %i.ku = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.kv = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !alias.scope !8121, !noalias !8122, !noundef !3
  %i.kx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !alias.scope !8121, !noalias !8122, !noundef !3
  invoke void %i.kt(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ku, ptr noundef %i.kw, i64 noundef %i.ky)
          to label %.loopexit138.i unwind label %.thread109.loopexit.split-lp.i, !noalias !7926, !inline_history !8124

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.bl, %bb.bk, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i"
  %i.kz = phi i8 [ %i.fy, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i" ], [ %i.kn, %bb.bl ], [ %i.ir, %bb.bk ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %2 = phi i1 [ %.not.i.i.i.i.i.i, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i" ], [ true, %bb.bl ], [ false, %bb.bk ], [ false, %.lr.ph.i.i.i.i.i.i.i.i ], [ false, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.0.0.i.i.i = phi i64 [ %i.ii, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17h71745c8890181a72E.exit.i.i.i" ], [ %i.kq, %bb.bl ], [ %i.in, %bb.bk ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.la = trunc i64 %.sroa.0.0.i.i.i to i16
  %i.lb = and i16 %i.la, 32767                    ; 6 uses
  %i.lc = load i16, ptr %i.bm, align 8, !alias.scope !8063, !noalias !8074, !noundef !3 ; 3 uses
  %i.ld = and i16 %i.lb, %i.lc
  %i.le = zext nneg i16 %i.ld to i64
  %i.lf = load i64, ptr %i.bo, align 8, !alias.scope !8063, !noalias !8074, !noundef !3 ; 2 uses
  %i.lg = zext i16 %i.lc to i64
  %not..i.i.i.i = xor i1 %2, true
  %i.lh = load ptr, ptr %i.bn, align 8, !noalias !7923, !nonnull !3
  %i.li = load i64, ptr %i.bp, align 8, !noalias !7923 ; 5 uses
  %i.lj = load ptr, ptr %i.bq, align 8, !noalias !7923, !nonnull !3
  %i.lk = load i64, ptr %i.bf, align 8, !noalias !7923 ; 2 uses
  %i.ll = load ptr, ptr %i.be, align 8, !noalias !7923 ; 2 uses
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = trunc i64 %i.lm to i8
  %.not = icmp eq i64 %i.lf, 0
  br label %.outer151

.outer151:                                        ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i", %.loopexit.i.i
  %.ph = phi i8 [ %i.mk, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i" ], [ %i.kz, %.loopexit.i.i ] ; 5 uses
  %.sroa.012.0.i.i.ph = phi i64 [ %i.ml, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i" ], [ 0, %.loopexit.i.i ] ; 3 uses
  %.sroa.04.0.i.i.ph = phi i64 [ %i.mm, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i" ], [ %i.le, %.loopexit.i.i ] ; 2 uses
  %i.lo = icmp ult i64 %.sroa.04.0.i.i.ph, %i.lf  ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.lo, %.not.not
  %.sroa.04.0.i.i.ph.mux = select i1 %i.lo, i64 %.sroa.04.0.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer151
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %.sroa.04.0.i.i.ph.mux ; 2 uses
  %i.lq = load i16, ptr %i.lp, align 2, !noalias !8068, !noundef !3 ; 2 uses
  %.not.i51.i = icmp eq i16 %i.lq, -1
  br i1 %.not.i51.i, label %bb.bp, label %bb.bo

bb.bn:                                            ; preds = %bb.bz
  unreachable

bb.bo:                                            ; preds = %.loopexit
  %i.lr = zext i16 %i.lq to i64                   ; 6 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lp, i64 2
  %i.lt = load i16, ptr %i.ls, align 2, !noalias !8068, !noundef !3 ; 2 uses
  %i.lu = and i16 %i.lt, %i.lc
  %i.lv = zext i16 %i.lu to i64
  %i.lw = sub i64 %.sroa.04.0.i.i.ph.mux, %i.lv
  %i.lx = and i64 %i.lw, %i.lg
  %i.ly = icmp samesign ult i64 %i.lx, %.sroa.012.0.i.i.ph
  br i1 %i.ly, label %bb.bu, label %bb.bt

bb.bp:                                            ; preds = %.loopexit
  %i.lz = icmp ult i64 %i.li, 88686269585142076
  call void @llvm.assume(i1 %i.lz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8125
  invoke void @"_ZN112_$LT$http..header..name..HeaderName$u20$as$u20$core..convert..From$LT$$RF$http..header..name..HeaderName$GT$$GT$4from17h6110b53e1c779e1bE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.bc)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit.i.i" unwind label %.loopexit128.i, !noalias !8068

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit.i.i": ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !8122
  %i.ma = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q, i16 noundef %i.lb, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc57.i unwind label %.thread109.loopexit.i, !noalias !7926

.noexc57.i:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8125
  br i1 %i.ma, label %.loopexit138.i, label %bb.bq

bb.bq:                                            ; preds = %.noexc57.i
  %i.mb = load i64, ptr %i.bo, align 8, !alias.scope !8063, !noalias !8074, !noundef !3 ; 2 uses
  %i.mc = icmp ult i64 %.sroa.04.0.i.i.ph.mux, %i.mb
  br i1 %i.mc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.md = load ptr, ptr %i.bn, align 8, !alias.scope !8063, !noalias !8074, !nonnull !3, !noundef !3
  %i.me = trunc i64 %i.li to i16
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.md, i64 %.sroa.04.0.i.i.ph.mux ; 2 uses
  store i16 %i.me, ptr %i.mf, align 2, !noalias !8068
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i16 %i.lb, ptr %i.mg, align 2, !noalias !8068
  br label %.thread121.i

bb.bs:                                            ; preds = %bb.bq
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.04.0.i.i.ph.mux, i64 noundef %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #50
          to label %.noexc58.i unwind label %.thread109.loopexit.split-lp.i, !noalias !7926

.noexc58.i:                                       ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.bo
  %i.mh = icmp eq i16 %i.lt, %i.lb
  br i1 %i.mh, label %bb.bv, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i"

bb.bu:                                            ; preds = %bb.bo
  %i.mi = icmp samesign ugt i64 %.sroa.012.0.i.i.ph, 511
  %i.mj = icmp ne i64 %i.fk, 2
  %spec.select.i.i = and i1 %i.mj, %i.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !8125
  invoke void @"_ZN112_$LT$http..header..name..HeaderName$u20$as$u20$core..convert..From$LT$$RF$http..header..name..HeaderName$GT$$GT$4from17h6110b53e1c779e1bE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.bc)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit40.i.i" unwind label %.loopexit128.i, !noalias !8068

"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i": ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.i.i", %.split.i.i, %bb.by, %bb.bw, %bb.bt
  %i.mk = phi i8 [ %.ph, %bb.by ], [ %.ph, %bb.bw ], [ %i.ln, %.split.i.i ], [ %.ph, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.i.i" ], [ %.ph, %bb.bt ]
  %i.ml = add nuw nsw i64 %.sroa.012.0.i.i.ph, 1
  %i.mm = add i64 %.sroa.04.0.i.i.ph.mux, 1
  br label %.outer151

bb.bv:                                            ; preds = %bb.bt
  %i.mn = icmp ugt i64 %i.li, %i.lr
  br i1 %i.mn, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  %i.mo = getelementptr inbounds nuw [104 x i8], ptr %i.lj, i64 %i.lr ; 6 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 64
  %i.mq = load ptr, ptr %i.mp, align 8, !noalias !8068, !noundef !3
  %i.mr = icmp ne ptr %i.mq, null                 ; 2 uses
  %i.ms = xor i1 %2, %i.mr
  br i1 %i.ms, label %bb.bx, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i"

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.mr, label %bb.by, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.i.i"

bb.by:                                            ; preds = %bb.bx
  call void @llvm.assume(i1 %not..i.i.i.i)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 80
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !8068, !noundef !3
  %.not.i.i.i.i39.i.i = icmp eq i64 %i.mu, %i.lk
  br i1 %.not.i.i.i.i39.i.i, label %.split.i.i, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i"

.split.i.i:                                       ; preds = %bb.by
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 72
  %i.mw = load ptr, ptr %i.mv, align 8, !noalias !8068, !noundef !3
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr %i.mw, ptr %i.ll, i64 %i.lk), !noalias !8068
  %i.mx = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.mx, label %bb.ca, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i"

bb.bz:                                            ; preds = %bb.bv
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.lr, i64 noundef %i.li, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @306) #50
          to label %bb.bn unwind label %.loopexit.split-lp129.i, !noalias !8068

"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.i.i": ; preds = %bb.bx
  call void @llvm.assume(i1 %2)
  %i.my = getelementptr inbounds nuw i8, ptr %i.mo, i64 72
  %i.mz = load i8, ptr %i.my, align 8, !range !1366, !noalias !8068, !noundef !3
  %i.na = icmp eq i8 %i.mz, %.ph
  br i1 %i.na, label %bb.ca, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.thread.i.i"

bb.ca:                                            ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17h7ca39af16e864263E.exit.i.i", %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !8125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !8122
  call void @llvm.experimental.noalias.scope.decl(metadata !8126)
  call void @llvm.experimental.noalias.scope.decl(metadata !8129)
  %i.nb = load i64, ptr %i.mo, align 8, !range !5, !noalias !8131, !noundef !3
  %i.nc = trunc nuw i64 %i.nb to i1
  br i1 %i.nc, label %bb.cc, label %bb.cd

.loopexit133.i:                                   ; preds = %bb.cc
  %lpad.loopexit135.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp134.i:                          ; preds = %.invoke.i.i.i
  %lpad.loopexit.split-lp136.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp134.i, %.loopexit133.i
  %lpad.phi137.i = phi { ptr, i32 } [ %lpad.loopexit135.i, %.loopexit133.i ], [ %lpad.loopexit.split-lp136.i, %.loopexit.split-lp134.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8133)
  call void @llvm.experimental.noalias.scope.decl(metadata !8136)
  call void @llvm.experimental.noalias.scope.decl(metadata !8139)
  %i.nd = load ptr, ptr %i.g, align 8, !alias.scope !8142, !noalias !8143, !nonnull !3, !align !17, !noundef !3
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  %i.nf = load ptr, ptr %i.ne, align 8, !noalias !8144, !nonnull !3, !noundef !3
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !alias.scope !8142, !noalias !8143, !noundef !3
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.nk = load i64, ptr %i.nj, align 8, !alias.scope !8142, !noalias !8143, !noundef !3
  invoke void %i.nf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ng, ptr noundef %i.ni, i64 noundef %i.nk)
          to label %.thread102.i unwind label %bb.ce, !noalias !8145, !inline_history !1434

bb.cc:                                            ; preds = %bb.ca
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.nm = load i64, ptr %i.nl, align 8, !noalias !8131, !noundef !3
  invoke void @"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h2015c0f1bfe9603cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q, i64 noundef %i.nm)
          to label %._crit_edge.i.i55.i unwind label %.loopexit133.i, !noalias !8146

._crit_edge.i.i55.i:                              ; preds = %bb.cc
  %.pre.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !8147, !noalias !8148
  br label %bb.cd

bb.cd:                                            ; preds = %._crit_edge.i.i55.i, %bb.ca
  %i.nn = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i55.i ], [ %i.li, %bb.ca ] ; 2 uses
  %i.no = icmp ugt i64 %i.nn, %i.lr
  br i1 %i.no, label %bb.cn, label %.invoke.i.i.i

.invoke.i.i.i:                                    ; preds = %bb.cd
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.lr, i64 noundef %i.nn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #50
          to label %.cont.i.i.i unwind label %.loopexit.split-lp134.i, !noalias !8131

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

bb.ce:                                            ; preds = %bb.cb
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8145
  unreachable

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit40.i.i": ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !8125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false), !noalias !8122
  %i.nq = load i64, ptr %i.bp, align 8, !alias.scope !8149, !noalias !8152, !noundef !3 ; 2 uses
  %i.nr = icmp ult i64 %i.nq, 88686269585142076
  call void @llvm.assume(i1 %i.nr)
  %i.ns = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17h19eccb59cd2d1e1bE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.q, i16 noundef %i.lb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc59.i unwind label %.thread109.loopexit.i, !noalias !7926

.noexc59.i:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hda2dde2bd7905439E.exit40.i.i"
  br i1 %i.ns, label %bb.cj, label %bb.cf

bb.cf:                                            ; preds = %.noexc59.i
  %i.nt = load ptr, ptr %i.bn, align 8, !alias.scope !8149, !noalias !8152, !nonnull !3, !noundef !3
  %i.nu = load i64, ptr %i.bo, align 8, !alias.scope !8149, !noalias !8152, !noundef !3 ; 2 uses
  %i.nv = trunc i64 %i.nq to i16
  %.not183 = icmp eq i64 %i.nu, 0
  br label %.outer

.outer:                                           ; preds = %bb.ch, %bb.cf
  %.sroa.6.0.i.i.i.ph = phi i16 [ %i.of, %bb.ch ], [ %i.lb, %bb.cf ] ; 2 uses
  %.sroa.07.0.i.i.i.ph = phi i16 [ %i.ny, %bb.ch ], [ %i.nv, %bb.cf ] ; 2 uses
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.oe, %bb.ch ], [ 0, %bb.cf ] ; 2 uses
  %.sroa.0.0.i41.i.i.ph = phi i64 [ %i.og, %bb.ch ], [ %.sroa.04.0.i.i.ph.mux, %bb.cf ] ; 2 uses
  %i.nw = icmp ult i64 %.sroa.0.0.i41.i.i.ph, %i.nu ; 2 uses
  %.not183.not = xor i1 %.not183, true
  %brmerge214 = or i1 %i.nw, %.not183.not
  %.sroa.0.0.i41.i.i.ph.mux = select i1 %i.nw, i64 %.sroa.0.0.i41.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge214, label %.loopexit182, label %infloop213

.loopexit182:                                     ; preds = %.outer
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.nt, i64 %.sroa.0.0.i41.i.i.ph.mux ; 4 uses
  %i.ny = load i16, ptr %i.nx, align 2, !noalias !8155, !noundef !3 ; 2 uses
  %i.nz = icmp eq i16 %i.ny, -1
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 2 ; 3 uses
  br i1 %i.nz, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %.loopexit182
  store i16 %.sroa.07.0.i.i.i.ph, ptr %i.nx, align 2, !noalias !8155
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.oa, align 2, !noalias !8155
  %i.ob = icmp ugt i64 %.sroa.05.0.i.i.i.ph, 127
  %or.cond.i.i.i = select i1 %spec.select.i.i, i1 true, i1 %i.ob
  %i.oc = load i64, ptr %i.q, align 8, !range !275, !noalias !7923
  %i.od = icmp eq i64 %i.oc, 0
  %or.cond127.i = select i1 %or.cond.i.i.i, i1 %i.od, i1 false
  br i1 %or.cond127.i, label %bb.ci, label %.thread.i.i

bb.ch:                                            ; preds = %.loopexit182
  %i.oe = add i64 %.sroa.05.0.i.i.i.ph, 1
  %i.of = load i16, ptr %i.oa, align 2, !noalias !8155, !noundef !3
  store i16 %.sroa.07.0.i.i.i.ph, ptr %i.nx, align 2, !noalias !8155
  store i16 %.sroa.6.0.i.i.i.ph, ptr %i.oa, align 2, !noalias !8155
  %i.og = add nuw i64 %.sroa.0.0.i41.i.i.ph.mux, 1
  br label %.outer

bb.ci:                                            ; preds = %bb.cg
  store i64 1, ptr %i.q, align 8, !alias.scope !8149, !noalias !8152
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ci, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8125
  br label %.thread121.i

bb.cj:                                            ; preds = %.noexc59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !8125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !8125
  br label %.loopexit138.i

.loopexit128.i:                                   ; preds = %bb.bu, %bb.bp, %bb.bd
  %lpad.loopexit130.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.split-lp129.i:                          ; preds = %bb.bz
  %lpad.loopexit.split-lp131.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.ck:                                            ; preds = %.loopexit.split-lp129.i, %.loopexit128.i
  %lpad.phi132.i = phi { ptr, i32 } [ %lpad.loopexit130.i, %.loopexit128.i ], [ %lpad.loopexit.split-lp131.i, %.loopexit.split-lp129.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !8156)
  call void @llvm.experimental.noalias.scope.decl(metadata !8159)
  call void @llvm.experimental.noalias.scope.decl(metadata !8162)
  %i.oh = load ptr, ptr %i.m, align 8, !alias.scope !8165, !noalias !8122, !nonnull !3, !align !17, !noundef !3
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8, !noalias !8166, !nonnull !3, !noundef !3
  %i.ok = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ol = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.om = load ptr, ptr %i.ol, align 8, !alias.scope !8165, !noalias !8122, !noundef !3
  %i.on = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !8165, !noalias !8122, !noundef !3
  invoke void %i.oj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ok, ptr noundef %i.om, i64 noundef %i.oo)
          to label %.thread102.i unwind label %bb.cl, !noalias !8167, !inline_history !1434

bb.cl:                                            ; preds = %bb.ck
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !8167
  unreachable

bb.cm:                                            ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.i"
  %i.oq = load i8, ptr %i.be, align 8, !range !1366, !noalias !7923, !noundef !3
  switch i8 %i.oq, label %bb.bd [
    i8 16, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 17, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 22, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 24, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 26, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 29, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 38, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 47, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 65, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 67, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 68, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
    i8 69, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h79dd40e5be23dbd0E.exit.thread.i"
  ]

.thread121.i:                                     ; preds = %.thread.i.i, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.078.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.980.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7923
  br label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h0f2c43e19fefd2b4E.exit.i"

bb.cn:                                            ; preds = %bb.cd
  %i.or = load ptr, ptr %i.bq, align 8, !alias.scope !8147, !noalias !8148, !nonnull !3, !noundef !3
  %i.os = getelementptr inbounds nuw [104 x i8], ptr %i.or, i64 %i.lr ; 3 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.078.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ot, i64 32, i1 false), !noalias !8168
  %.sroa.444.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 56
  %.sroa.444.0.copyload.i.i = load i8, ptr %.sroa.444.0..sroa_idx.i.i, align 8, !noalias !8169 ; 3 uses
  %.sroa.5.0..sroa_idx.i52.i = getelementptr inbounds nuw i8, ptr %i.os, i64 57
end_hunk_3
