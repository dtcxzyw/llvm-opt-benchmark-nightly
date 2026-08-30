Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.00?download=true
inline.NumInlined: 5827
inline.NumDeleted: 1787
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$16get_queued_cards17h250faf2df38ec784E":bb.a
  %.sroa.742.i.sroa.11 = alloca [96 x i8], align 8 ; 9 uses
  %.sroa.12.i = alloca [104 x i8], align 8        ; 5 uses
  %.sroa.68.i.sroa.8 = alloca [96 x i8], align 8  ; 9 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %i.i = alloca [112 x i8], align 8               ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 12 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.68 = alloca [24 x i8], align 8           ; 6 uses
  %i.m = alloca [136 x i8], align 8               ; 3 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [88 x i8], align 8                ; 5 uses
  %i.p = alloca [88 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 16               ; 6 uses
  %.sroa.12 = alloca [96 x i8], align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12096)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.810.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.i.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !12099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12099
  call void @"_ZN4anki5decks7current46_$LT$impl$u20$anki..collection..Collection$GT$16get_current_deck17h8390ecf7805aeb76E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(728) %1), !noalias !12101
  %i.s = load i64, ptr %i.i, align 8, !range !153, !noalias !12099, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.s, -9223372036854775773
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !12099 ; 2 uses
  br i1 %.not.i, label %bb.b, label %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread65"

"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread65": ; preds = %bb.a
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.624.0..sroa_idx.i, i64 96, i1 false), !noalias !12096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i.sroa.8)
  br label %bb.af

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !12099
  store ptr %i.u, ptr %i.j, align 8, !noalias !12099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12099
  invoke fastcc void @"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$27clear_queues_if_day_changed17h2e0fcaf6b219a5cbE"(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
          to label %bb.e unwind label %bb.d, !noalias !12101

.body.i:                                          ; preds = %bb.aa, %bb.w, %bb.t, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.av, %bb.aa ], [ %i.y, %bb.d ], [ %i.at, %bb.w ], [ %lpad.thr_comm.i.i, %bb.t ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12102)
  call void @llvm.experimental.noalias.scope.decl(metadata !12105)
  %i.v = load ptr, ptr %i.j, align 8, !alias.scope !12108, !noalias !12099, !nonnull !3, !noundef !3
  %i.w = atomicrmw sub ptr %i.v, i64 1 release, align 8, !noalias !12109
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.c, label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit.i"

bb.c:                                             ; preds = %.body.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit.i" unwind label %bb.ae, !noalias !12101

bb.d:                                             ; preds = %bb.v, %bb.s, %bb.i, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %i.z = load i64, ptr %i.h, align 8, !range !153, !noalias !12099, !noundef !3 ; 2 uses
  %.not33.i = icmp eq i64 %i.z, -9223372036854775773
  br i1 %.not33.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.841.0.copyload = load ptr, ptr %.sroa.841.0..sroa_idx, align 8, !noalias !12096
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12.0..sroa_idx, i64 96, i1 false), !noalias !12096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12099
  br label %bb.ac

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12099
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !26, !alias.scope !12096, !noalias !12101, !noundef !3
  %.not34.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not34.i, label %bb.i, label %.thread.i

bb.h:                                             ; preds = %bb.z
  store i64 %.sroa.0.0.copyload.i, ptr %i.aa, align 8, !alias.scope !12096, !noalias !12101
  %.sroa.617.0..sroa_idx18.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.742.i.sroa.0.0.copyload52, ptr %.sroa.617.0..sroa_idx18.i, align 8, !noalias !12101
  %.sroa.68.i.sroa.7.0..sroa.617.0..sroa_idx18.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.742.i.sroa.9.0.copyload56, ptr %.sroa.68.i.sroa.7.0..sroa.617.0..sroa_idx18.i.sroa_idx, align 8, !noalias !12101
  %.sroa.68.i.sroa.8.0..sroa.617.0..sroa_idx18.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8.0..sroa.617.0..sroa_idx18.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8, i64 96, i1 false), !noalias !12101
  %.sroa.7.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx19.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.810.i, i64 104, i1 false), !noalias !12101
  br label %.thread.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.742.i.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %i.ac = load ptr, ptr %i.j, align 8, !noalias !12099, !nonnull !3, !noundef !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 184
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !12101, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12099
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12110
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12110
  invoke void @_ZN4anki9scheduler5queue7builder12QueueBuilder3new17hf89fc173daf97118E(ptr noalias noundef nonnull sret([728 x i8]) align 8 captures(address) dereferenceable(728) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i64 noundef %i.ae)
          to label %.noexc37.i unwind label %bb.d, !noalias !12101

.noexc37.i:                                       ; preds = %bb.i
  %i.af = load i64, ptr %i.f, align 8, !range !1031, !noalias !12110, !noundef !3 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.i.i.sroa.0.0.copyload = load i64, ptr %i.ah, align 8, !noalias !12110 ; 2 uses
  %.sroa.6.i.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.i.i.sroa.6.0.copyload = load ptr, ptr %.sroa.6.i.i.sroa.6.0..sroa_idx, align 8, !noalias !12110 ; 2 uses
  %.sroa.6.i.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.sroa.7, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.sroa.7.0..sroa_idx, i64 96, i1 false), !noalias !12110
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.noexc37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.sroa.7, i64 96, i1 false), !noalias !12114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.7)
  br label %.thread44.i

bb.k:                                             ; preds = %.noexc37.i
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(608) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(608) %.sroa.69.0..sroa_idx.i.i, i64 608, i1 false), !noalias !12110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.6.i.i.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12110
  %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.6.i.i.sroa.6.0.copyload, ptr %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !12110
  %.sroa.6.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.sroa.7.0..sroa.4.0..sroa_idx.i.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.i.i.sroa.7, i64 96, i1 false), !noalias !12110
  store i64 %i.af, ptr %i.g, align 8, !noalias !12110
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12110
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  invoke void @"_ZN4anki7storage4deck54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$19update_active_decks17hbd988bc25d4872cdE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noundef nonnull align 8 %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.aj)
          to label %bb.l unwind label %bb.w, !noalias !12115

bb.l:                                             ; preds = %bb.k
  %i.ak = load i64, ptr %i.e, align 8, !range !153, !noalias !12110, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ak, -9223372036854775773
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.sroa.742.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.742.i.sroa.9.0.copyload = load ptr, ptr %.sroa.742.i.sroa.9.0..sroa_idx, align 8, !noalias !12114
  %.sroa.742.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11.0..sroa_idx, i64 96, i1 false), !noalias !12114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12110
  br label %bb.v

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12110
  invoke void @"_ZN4anki9scheduler5queue7builder9gathering63_$LT$impl$u20$anki..scheduler..queue..builder..QueueBuilder$GT$12gather_cards17hc2a52095341dde20E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
          to label %bb.o unwind label %bb.w, !noalias !12115

bb.o:                                             ; preds = %bb.n
  %i.al = load i64, ptr %i.d, align 8, !range !153, !noalias !12110, !noundef !3 ; 2 uses
  %.not12.i.i = icmp eq i64 %i.al, -9223372036854775773
  br i1 %.not12.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.742.i.sroa.9.0..sroa_idx54 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.742.i.sroa.9.0.copyload55 = load ptr, ptr %.sroa.742.i.sroa.9.0..sroa_idx54, align 8, !noalias !12114
  %.sroa.742.i.sroa.11.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11.0..sroa_idx58, i64 96, i1 false), !noalias !12114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12110
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12110
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %i.b, ptr noundef nonnull align 8 dereferenceable(728) %i.g, i64 728, i1 false), !noalias !12110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12110
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.ai, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 12)
          to label %.noexc.i.i unwind label %bb.t, !noalias !12115

.noexc.i.i:                                       ; preds = %bb.q
  %i.am = load i64, ptr %i.a, align 8, !range !153, !noalias !12110, !noundef !3
  %.not.i.i.i.i = icmp eq i64 %i.am, -9223372036854775773
  br i1 %.not.i.i.i.i, label %bb.r, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %.noexc.i.i
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.s unwind label %bb.t, !noalias !12115

bb.r:                                             ; preds = %.noexc.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !noalias !12110
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !range !372, !noalias !12110
  %i.ar = trunc nuw i32 %i.aq to i1
  %4 = zext i32 %i.ao to i64
  %5 = select i1 %i.ar, i64 %4, i64 1200
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread.i.i.i.i
  %.sroa.0.07.i.i.i.i = phi i64 [ %5, %bb.r ], [ 1200, %.thread.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12110
  invoke void @_ZN4anki9scheduler5queue7builder12QueueBuilder5build17h7426883ffd659c74E(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(728) %i.b, i64 noundef %.sroa.0.07.i.i.i.i)
          to label %bb.x unwind label %bb.d, !noalias !12101

bb.t:                                             ; preds = %.thread.i.i.i.i, %bb.q
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$anki..scheduler..queue..builder..QueueBuilder$GT$17h7c0379379fdf8567E"(ptr noalias noundef align 8 dereferenceable(728) %i.b) #27
          to label %.body.i unwind label %bb.u, !noalias !12115

bb.u:                                             ; preds = %bb.w, %bb.t
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !12115
  unreachable

bb.v:                                             ; preds = %bb.p, %bb.m
  %.sroa.742.i.sroa.9.0 = phi ptr [ %.sroa.742.i.sroa.9.0.copyload55, %bb.p ], [ %.sroa.742.i.sroa.9.0.copyload, %bb.m ]
  %.sroa.742.i.sroa.0.0 = phi i64 [ %i.al, %bb.p ], [ %i.ak, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$anki..scheduler..queue..builder..QueueBuilder$GT$17h7c0379379fdf8567E"(ptr noalias noundef align 8 dereferenceable(728) %i.g)
          to label %.thread44.i unwind label %bb.d, !noalias !12101

bb.w:                                             ; preds = %bb.n, %bb.k
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$anki..scheduler..queue..builder..QueueBuilder$GT$17h7c0379379fdf8567E"(ptr noalias noundef align 8 dereferenceable(728) %i.g) #27
          to label %.body.i unwind label %bb.u, !noalias !12115

.thread44.i:                                      ; preds = %bb.v, %bb.j
  %.sroa.742.i.sroa.9.1 = phi ptr [ %.sroa.6.i.i.sroa.6.0.copyload, %bb.j ], [ %.sroa.742.i.sroa.9.0, %bb.v ]
  %.sroa.742.i.sroa.0.1 = phi i64 [ %.sroa.6.i.i.sroa.0.0.copyload, %bb.j ], [ %.sroa.742.i.sroa.0.0, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12099
  br label %bb.y

bb.x:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12110
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !noalias !12114 ; 3 uses
  %.sroa.742.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.742.i.sroa.0.0.copyload52 = load i64, ptr %.sroa.742.0..sroa_idx.i, align 8, !noalias !12114 ; 3 uses
  %.sroa.742.i.sroa.9.0..sroa.742.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.742.i.sroa.9.0.copyload56 = load ptr, ptr %.sroa.742.i.sroa.9.0..sroa.742.0..sroa_idx.i.sroa_idx, align 8, !noalias !12114 ; 3 uses
  %.sroa.742.i.sroa.11.0..sroa.742.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11.0..sroa.742.0..sroa_idx.i.sroa_idx, i64 96, i1 false), !noalias !12114
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.12.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.12.0..sroa_idx.i, i64 104, i1 false), !noalias !12114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12099
  %i.au = icmp eq i64 %.sroa.0.0.copyload.i, -9223372036854775808
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %.thread44.i
  %.sroa.742.i.sroa.9.2 = phi ptr [ %.sroa.742.i.sroa.9.1, %.thread44.i ], [ %.sroa.742.i.sroa.9.0.copyload56, %bb.x ]
  %.sroa.742.i.sroa.0.2 = phi i64 [ %.sroa.742.i.sroa.0.1, %.thread44.i ], [ %.sroa.742.i.sroa.0.0.copyload52, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, i64 96, i1 false), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8, i64 96, i1 false), !noalias !12096
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.742.i.sroa.11, i64 96, i1 false), !noalias !12099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.810.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.12.i, i64 104, i1 false), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.742.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$core..option..Option$LT$anki..scheduler..queue..CardQueues$GT$$GT$17hb0dbd01b0bc6b86bE"(ptr noalias noundef align 8 dereferenceable(224) %i.aa)
          to label %bb.h unwind label %bb.aa, !noalias !12101

bb.aa:                                            ; preds = %bb.z
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i, ptr %i.aa, align 8, !alias.scope !12096, !noalias !12101
  %.sroa.617.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 %.sroa.742.i.sroa.0.0.copyload52, ptr %.sroa.617.0..sroa_idx.i, align 8, !noalias !12101
  %.sroa.68.i.sroa.7.0..sroa.617.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sroa.742.i.sroa.9.0.copyload56, ptr %.sroa.68.i.sroa.7.0..sroa.617.0..sroa_idx.i.sroa_idx, align 8, !noalias !12101
  %.sroa.68.i.sroa.8.0..sroa.617.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8.0..sroa.617.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.68.i.sroa.8, i64 96, i1 false), !noalias !12101
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.810.i, i64 104, i1 false), !noalias !12101
  br label %.body.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !12116)
  call void @llvm.experimental.noalias.scope.decl(metadata !12119)
  %i.aw = load ptr, ptr %i.j, align 8, !alias.scope !12122, !noalias !12099, !nonnull !3, !noundef !3
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 release, align 8, !noalias !12123
  %i.ay = icmp eq i64 %i.ax, 1
  br i1 %i.ay, label %bb.ab, label %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread"

bb.ab:                                            ; preds = %.thread.i
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !12101
  br label %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread"

bb.ac:                                            ; preds = %bb.y, %bb.f
  %.sroa.841.0 = phi ptr [ %.sroa.742.i.sroa.9.2, %bb.y ], [ %.sroa.841.0.copyload, %bb.f ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %.sroa.742.i.sroa.0.2, %bb.y ], [ %i.z, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12124)
  call void @llvm.experimental.noalias.scope.decl(metadata !12127)
  %i.az = load ptr, ptr %i.j, align 8, !alias.scope !12130, !noalias !12099, !nonnull !3, !noundef !3
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !12131
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.ad, label %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit"

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !12101
  br label %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit"

bb.ae:                                            ; preds = %bb.c
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28, !noalias !12101
  unreachable

"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit.i": ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %.pn.i

"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread": ; preds = %bb.ab, %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i.sroa.8)
  br label %bb.ag

"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit": ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12099
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.810.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i.sroa.8)
  %.not = icmp eq i64 %.sroa.0.0, -9223372036854775773
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread65", %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit"
  %.sroa.0.170 = phi i64 [ %i.s, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread65" ], [ %.sroa.0.0, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit" ]
  %.sroa.841.169 = phi ptr [ %i.u, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread65" ], [ %.sroa.841.0, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit" ]
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.329.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.12, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  store i64 %.sroa.0.170, ptr %0, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.841.169, ptr %.sroa.228.0..sroa_idx, align 8
  br label %bb.am

bb.ag:                                            ; preds = %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread", %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit"
  %.sroa.841.164 = phi ptr [ %i.aa, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit.thread" ], [ %.sroa.841.0, %"_ZN4anki9scheduler5queue46_$LT$impl$u20$anki..collection..Collection$GT$10get_queues17hcd853f136e3eef91E.exit" ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.841.164) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_ZN4anki9scheduler5queue10CardQueues6counts17h535c740caa703b39E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(224) %.sroa.841.164)
  br i1 %3, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4anki9scheduler5queue10CardQueues4iter17he0f6973762e33773E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.841.164)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store i64 %2, ptr %i.bd, align 8
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hf81ccfa472ff7790E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(136) %i.m)
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @"_ZN4anki9scheduler5queue8learning52_$LT$impl$u20$anki..scheduler..queue..CardQueues$GT$17intraday_now_iter17h95cf3528173939a9E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.841.164)
  call void @"_ZN4anki9scheduler5queue8learning52_$LT$impl$u20$anki..scheduler..queue..CardQueues$GT$19intraday_ahead_iter17h1887f37c216266fcE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %.sroa.841.164)
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !12132, !noalias !12136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.p, ptr noundef nonnull align 8 dereferenceable(88) %i.o, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hdb523a62052fb4a2E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.p)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !3, !noundef !3 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !3 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 230584300921369396
  call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [40 x i8], ptr %i.bg, i64 %i.bi
  %i.bl = load i64, ptr %i.q, align 8, !range !76, !noundef !3
  store ptr %i.bg, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.bl, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.bk, ptr %.sroa.613.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %1, ptr %i.bm, align 8
  call void @_ZN4core4iter8adapters11try_process17h785d26871d59713cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.k)
  %i.bn = load i64, ptr %i.l, align 8, !range !153, !noundef !3 ; 2 uses
  %.not39 = icmp eq i64 %i.bn, -9223372036854775773
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@"_ZN4anki9scheduler7upgrade46_$LT$impl$u20$anki..collection..Collection$GT$23upgrade_to_v2_scheduler17h3cc73376ebf930ddE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_ZN4anki9scheduler6timing28local_minutes_west_for_stamp17hf018df58ef9fd5b7E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.s, i64 noundef %i.cd)
  %i.ch = load i64, ptr %i.s, align 8, !range !153, !noundef !3 ; 2 uses
  %.not36 = icmp eq i64 %i.ch, -9223372036854775773
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cj = load i32, ptr %i.ci, align 8            ; 2 uses
  br i1 %.not36, label %bb.av, label %bb.au

bb.at:                                            ; preds = %"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23get_creation_utc_offset17hc98478cd86e1baf4E.exit", %bb.ax
  call void @"_ZN4anki10collection10timestamps46_$LT$impl$u20$anki..collection..Collection$GT$19set_schema_modified17h4328d7361bddb4e6E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
  br label %bb.c

bb.au:                                            ; preds = %bb.as
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.sroa.331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(100) %.sroa.331.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(100) %.sroa.628.0..sroa_idx, i64 100, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i64 %i.ch, ptr %0, align 8
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cj, ptr %.sroa.230.0..sroa_idx, align 8
  br label %bb.ay

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @"_ZN4anki6config46_$LT$impl$u20$anki..collection..Collection$GT$23set_creation_utc_offset17ha2a821d6477a8168E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(728) %1, i32 noundef 1, i32 %i.cj)
  %i.ck = load i64, ptr %i.t, align 8, !range !153, !noundef !3
  %.not37 = icmp eq i64 %i.ck, -9223372036854775773
  br i1 %.not37, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.t, i64 112, i1 false)
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.at

bb.ay:                                            ; preds = %bb.aw, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler8congrats46_$LT$impl$u20$anki..collection..Collection$GT$13congrats_info17ha4dca99dc20efe1aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 7 uses
  %i.b = alloca [112 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [112 x i8], align 8               ; 12 uses
  %i.e = alloca [112 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @"_ZN4anki5decks7current46_$LT$impl$u20$anki..collection..Collection$GT$16get_current_deck17h8390ecf7805aeb76E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
  %i.g = load i64, ptr %i.e, align 8, !range !153, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.g, -9223372036854775773
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.365.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.662.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.g, ptr %0, align 8
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %.sroa.264.0..sroa_idx, align 8
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !12845
  invoke void @"_ZN4anki9scheduler46_$LT$impl$u20$anki..collection..Collection$GT$14scheduler_info17h26ff3f0e4f485b52E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(728) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.c
  %i.j = load i64, ptr %i.b, align 8, !range !153, !noalias !12845, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.j, -9223372036854775773
  br i1 %.not.i, label %bb.h, label %bb.g

bb.d:                                             ; preds = %bb.q, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.n, %bb.f ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12849)
  call void @llvm.experimental.noalias.scope.decl(metadata !12852)
  %i.k = load ptr, ptr %i.f, align 8, !alias.scope !12855, !nonnull !3, !noundef !3
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !12855
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit" unwind label %bb.t

bb.f:                                             ; preds = %bb.c, %bb.k, %bb.h
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %.noexc
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.688.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.12.0..sroa_idx, i64 80, i1 false)
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.486.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load <2 x i32>, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !12856
  %i.p = load <2 x i64>, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !12856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12845
  store i64 %i.j, ptr %0, align 8
  store <2 x i64> %i.p, ptr %.sroa.284.0..sroa_idx, align 8
  store <2 x i32> %i.o, ptr %.sroa.486.0..sroa_idx, align 8
  br label %bb.u

bb.h:                                             ; preds = %.noexc
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.9.8.copyload = load i32, ptr %.sroa.9.8..sroa_idx, align 8, !noalias !12856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !12845
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  invoke void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$13congrats_info17h48e46fa7e6ed29d1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.d, ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.r, i32 noundef %.sroa.9.8.copyload)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.s = load i64, ptr %i.d, align 8, !range !153, !noundef !3 ; 2 uses
  %.not122 = icmp eq i64 %i.s, -9223372036854775773
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.089.0.copyload = load i32, ptr %i.t, align 8 ; 2 uses
  %.sroa.590.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.590.0.copyload = load i32, ptr %.sroa.590.0..sroa_idx, align 4 ; 3 uses
  %.sroa.691.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.691.0.copyload = load i8, ptr %.sroa.691.0..sroa_idx, align 8 ; 2 uses
  %.sroa.792.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %.sroa.792.0.copyload = load i8, ptr %.sroa.792.0..sroa_idx, align 1 ; 2 uses
  %.sroa.893.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  %.sroa.893.0.copyload = load i8, ptr %.sroa.893.0..sroa_idx, align 2 ; 2 uses
  %.sroa.994.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 19
  %.sroa.994.0.copyload = load i8, ptr %.sroa.994.0..sroa_idx, align 1 ; 2 uses
  br i1 %.not122, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.11109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %.sroa.8117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %.sroa.8117.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(92) %.sroa.11109.0..sroa_idx, i64 92, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.s, ptr %0, align 8
  %.sroa.2111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.089.0.copyload, ptr %.sroa.2111.0..sroa_idx, align 8
  %.sroa.3112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.590.0.copyload, ptr %.sroa.3112.0..sroa_idx, align 4
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.691.0.copyload, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.792.0.copyload, ptr %.sroa.5114.0..sroa_idx, align 1
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.893.0.copyload, ptr %.sroa.6115.0..sroa_idx, align 2
  %.sroa.7116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.994.0.copyload, ptr %.sroa.7116.0..sroa_idx, align 1
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !12857
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.u = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load i64, ptr %i.v, align 8, !range !26, !noundef !3
  %i.x = icmp eq i64 %i.w, -9223372036854775808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  invoke void @_ZN4anki5decks4Deck20rendered_description17h32ac9f09c7cbf72cE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.y)
          to label %bb.l unwind label %bb.f

bb.l:                                             ; preds = %bb.k
  %i.z = icmp eq i32 %.sroa.590.0.copyload, 0
  br i1 %i.z, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN4anki7storage6config54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16get_config_value17h45436d312cdfd3c3E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.a, ptr noundef nonnull align 8 %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @220, i64 noundef 12)
          to label %.noexc125 unwind label %bb.q

.noexc125:                                        ; preds = %bb.m
  %i.aa = load i64, ptr %i.a, align 8, !range !153, !noundef !3
  %.not.i.i = icmp eq i64 %i.aa, -9223372036854775773
  br i1 %.not.i.i, label %bb.n, label %.thread.i.i

.thread.i.i:                                      ; preds = %.noexc125
  invoke void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.a)
          to label %bb.r unwind label %bb.q

bb.n:                                             ; preds = %.noexc125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !range !372
  %i.af = trunc nuw i32 %i.ae to i1
  %2 = zext i32 %i.ac to i64
  %3 = select i1 %i.af, i64 %2, i64 1200
  br label %bb.r

bb.o:                                             ; preds = %bb.l, %bb.s
  %.sroa.046.0 = phi i32 [ %i.aq, %bb.s ], [ 86400, %bb.l ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ah = zext i1 %i.x to i8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %.sroa.089.0.copyload, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sroa.046.0, ptr %.sroa.549.0..sroa_idx, align 4
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %.sroa.691.0.copyload, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %.sroa.792.0.copyload, ptr %.sroa.751.0..sroa_idx, align 1
  %.sroa.852.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 %.sroa.893.0.copyload, ptr %.sroa.852.0..sroa_idx, align 2
  %.sroa.953.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 43
  store i8 %.sroa.994.0.copyload, ptr %.sroa.953.0..sroa_idx, align 1
  %.sroa.1054.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.ah, ptr %.sroa.1054.0..sroa_idx, align 4
  %.sroa.1155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 1, ptr %.sroa.1155.0..sroa_idx, align 1
  store i64 -9223372036854775773, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !12862)
  call void @llvm.experimental.noalias.scope.decl(metadata !12865)
  %i.ai = load ptr, ptr %i.f, align 8, !alias.scope !12868, !nonnull !3, !noundef !3
  %i.aj = atomicrmw sub ptr %i.ai, i64 1 release, align 8, !noalias !12868
  %i.ak = icmp eq i64 %i.aj, 1
  br i1 %i.ak, label %bb.p, label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128"

bb.p:                                             ; preds = %bb.o
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128"

bb.q:                                             ; preds = %.thread.i.i, %bb.m, %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %bb.d unwind label %bb.t

bb.r:                                             ; preds = %bb.n, %.thread.i.i
  %.sroa.0.07.i.i = phi i64 [ %3, %bb.n ], [ 1200, %.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.am = invoke noundef i64 @_ZN4anki9timestamp13TimestampSecs3now17h77445fd70f9cc13aE()
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.an = zext i32 %.sroa.590.0.copyload to i64
  %i.ao = add i64 %.sroa.0.07.i.i, %i.am
  %i.ap = sub i64 %i.an, %i.ao
  %.sroa.0.0.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ap, i64 60)
  %i.aq = trunc i64 %.sroa.0.0.i to i32
  br label %bb.o

"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128": ; preds = %bb.p, %bb.o, %bb.b, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.t:                                             ; preds = %bb.e, %bb.q
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.u:                                             ; preds = %bb.j, %bb.g
  %i.as = phi ptr [ %.pre, %bb.j ], [ %i.i, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12869)
  call void @llvm.experimental.noalias.scope.decl(metadata !12870)
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !noalias !12857
  %i.au = icmp eq i64 %i.at, 1
  br i1 %i.au, label %bb.v, label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128"

bb.v:                                             ; preds = %bb.u
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h85b1fb5c2f3d6049E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit128"

"_ZN4core3ptr62drop_in_place$LT$alloc..sync..Arc$LT$anki..decks..Deck$GT$$GT$17h86bea7ba1c542950E.exit": ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki9scheduler8filtered12custom_study46_$LT$impl$u20$anki..collection..Collection$GT$12custom_study17h294f0dbfd8b62fc0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(728) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [112 x i8], align 8               ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [112 x i8], align 8               ; 7 uses
  %i.i = alloca [112 x i8], align 8               ; 12 uses
  %i.j = alloca [112 x i8], align 8               ; 9 uses
  %i.k = alloca [112 x i8], align 8               ; 9 uses
  %i.l = alloca [88 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [112 x i8], align 8               ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [112 x i8], align 8               ; 7 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.7201.i.i.i.i = alloca [72 x i8], align 8 ; 6 uses
  %i.t = alloca [112 x i8], align 8               ; 7 uses
  %i.u = alloca [56 x i8], align 8                ; 12 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [72 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [72 x i8], align 8               ; 4 uses
  %i.ab = alloca [112 x i8], align 8              ; 7 uses
  %i.ac = alloca [192 x i8], align 8              ; 7 uses
  %i.ad = alloca [112 x i8], align 8              ; 7 uses
  %i.ae = alloca [112 x i8], align 8              ; 7 uses
  %i.af = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.7142.i.i.i.i = alloca [112 x i8], align 8 ; 6 uses
  %.sroa.4156.i.i.i.i = alloca [72 x i8], align 8 ; 5 uses
  %i.ag = alloca [192 x i8], align 8              ; 6 uses
  %i.ah = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.7148.i.i.i.i = alloca [112 x i8], align 8 ; 6 uses
  %i.ai = alloca [192 x i8], align 8              ; 8 uses
  %i.aj = alloca [112 x i8], align 8              ; 7 uses
  %i.ak = alloca [112 x i8], align 8              ; 7 uses
  %i.al = alloca [112 x i8], align 8              ; 7 uses
  %i.am = alloca [192 x i8], align 8              ; 7 uses
  %i.an = alloca [112 x i8], align 8              ; 7 uses
  %i.ao = alloca [112 x i8], align 8              ; 7 uses
  %i.ap = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.763.i.i.i.i = alloca [112 x i8], align 8 ; 6 uses
  %.sroa.477.i.i.i.i = alloca [72 x i8], align 8  ; 5 uses
  %i.aq = alloca [192 x i8], align 8              ; 6 uses
  %i.ar = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.769.i.i.i.i = alloca [112 x i8], align 8 ; 6 uses
  %i.as = alloca [192 x i8], align 8              ; 8 uses
  %i.at = alloca [112 x i8], align 8              ; 7 uses
  %i.au = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.713.sroa.8.i.i.i.i = alloca [44 x i8], align 4 ; 6 uses
  %i.av = alloca [56 x i8], align 8               ; 5 uses
  %.sroa.6.sroa.7.i.i.i.i = alloca [44 x i8], align 4 ; 7 uses
  %i.aw = alloca [192 x i8], align 8              ; 6 uses
  %i.ax = alloca [192 x i8], align 8              ; 7 uses
  %.sroa.76.i.i.i.i = alloca [112 x i8], align 8  ; 6 uses
  %i.ay = alloca [192 x i8], align 8              ; 8 uses
  %.sroa.7.i.i.i.i = alloca [112 x i8], align 8   ; 6 uses
  %i.az = alloca [192 x i8], align 8              ; 30 uses
  %i.ba = alloca [64 x i8], align 8               ; 9 uses
  %i.bb = alloca [112 x i8], align 8              ; 8 uses
  %.sroa.10.i.i = alloca [72 x i8], align 8       ; 7 uses
  %i.bc = alloca [112 x i8], align 8              ; 68 uses
  %.sroa.8.i.i = alloca [32 x i8], align 8        ; 9 uses
  %i.bd = alloca [24 x i8], align 8               ; 4 uses
  %i.be = alloca [112 x i8], align 8              ; 6 uses
  %i.bf = alloca [24 x i8], align 8               ; 5 uses
  %i.bg = alloca [64 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !12878
  store i64 -9223372036854775800, ptr %i.bf, align 8, !noalias !12880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12886)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 600 ; 17 uses
  %i.bi = load i64, ptr %i.bh, align 8, !alias.scope !12888, !noalias !12889, !noundef !3 ; 2 uses
  %i.bj = icmp ult i64 %i.bi, 9223372036854775807
  br i1 %i.bj, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #26
          to label %.noexc.i.i unwind label %bb.fd, !noalias !12889

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bk = add nuw nsw i64 %i.bi, 1
  store i64 %i.bk, ptr %i.bh, align 8, !alias.scope !12888, !noalias !12889
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 616
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !12888, !noalias !12889, !noundef !3
  %i.bn = tail call noundef i32 @sqlite3_get_autocommit(ptr noundef %i.bm) #29, !noalias !12889
  %.not79.i.i = icmp eq i32 %i.bn, 0
  %i.bo = load i64, ptr %i.bh, align 8, !alias.scope !12888, !noalias !12889, !noundef !3
  %i.bp = add i64 %i.bo, -1
  store i64 %i.bp, ptr %i.bh, align 8, !alias.scope !12888, !noalias !12889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !12891
  invoke void @_ZN4anki7storage6sqlite13SqliteStorage14begin_rust_trx17ha28b49405954732cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.be, ptr noundef nonnull align 8 %i.bh)
          to label %bb.d unwind label %bb.fd, !noalias !12889

bb.d:                                             ; preds = %bb.c
  %i.bq = load i64, ptr %i.be, align 8, !range !153, !noalias !12891, !noundef !3
  %.not6.i.i = icmp eq i64 %i.bq, -9223372036854775773
  br i1 %.not6.i.i, label %bb.g, label %bb.e
end_hunk_1
