Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.04?download=true
inline.NumInlined: 4752
inline.NumDeleted: 2180
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 16
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN4anki4sync5media8database6server5entry7changes74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19media_changes_chunk17h998f0fafb4ac5173E":bb.a

bb.r:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40
  unreachable

bb.s:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file17h5b4492b307ab79edE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef align 8 dereferenceable(112) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 9 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 5 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %i.g = alloca [64 x i8], align 8                ; 11 uses
  %i.h = alloca [112 x i8], align 8               ; 6 uses
  %i.i = alloca [64 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  %i.k = alloca [112 x i8], align 8               ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.10.i.i = alloca [40 x i8], align 8       ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.67.i.i = alloca [64 x i8], align 8       ; 6 uses
  %i.q = alloca [72 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 10 uses
  %i.s = alloca [64 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 5 uses
  %i.u = alloca [64 x i8], align 8                ; 6 uses
  %i.v = alloca [112 x i8], align 8               ; 7 uses
  %i.w = alloca [112 x i8], align 8               ; 10 uses
  %i.x = alloca [112 x i8], align 8               ; 7 uses
  %.sroa.68.i = alloca [16 x i8], align 8         ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 9 uses
  %i.z = alloca [64 x i8], align 8                ; 11 uses
  %i.aa = alloca [112 x i8], align 8              ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ac, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @357, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !6747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !6749
  call fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @335, i64 noundef 15)
  %i.ad = load i64, ptr %i.t, align 8, !range !7, !noalias !6749, !noundef !5
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false), !noalias !6750
  br label %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !6749
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %i.af, i64 64, i1 false), !noalias !6749
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6752)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val.i.i.i = load ptr, ptr %i.ag, align 8, !alias.scope !6752, !noalias !6749, !noundef !5 ; 2 uses
  %i.ah = tail call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %.val.i.i.i) #30, !noalias !6753 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s) #39
          to label %common.resume.i unwind label %bb.i, !noalias !6754

bb.g:                                             ; preds = %bb.e
  %i.aj = sext i32 %i.ah to i64
  store i64 -9223372036854775786, ptr %i.z, align 8, !alias.scope !6755, !noalias !6747
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !6755, !noalias !6747
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.aj, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !6755, !noalias !6747
  br label %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i"

bb.h:                                             ; preds = %bb.e
  %.val1.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !6752, !noalias !6749
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.z, ptr %.val1.i.i.i, ptr %.val.i.i.i)
          to label %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i" unwind label %bb.f, !noalias !6756

bb.i:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !6754
  unreachable

common.resume.i:                                  ; preds = %.body.i.i, %bb.ad, %bb.q, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.bm, %bb.ad ], [ %i.ai, %bb.f ], [ %lpad.phi.i.i, %bb.q ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i": ; preds = %bb.h, %bb.g
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.s), !noalias !6754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !6749
  br label %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i

_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i: ; preds = %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i", %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !6749
  %i.al = load i64, ptr %i.z, align 8, !range !48, !noalias !6747, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.al, -9223372036854775783
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !6747
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !6747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.619.0..sroa_idx.i, i64 48, i1 false), !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6747
  store i64 %i.al, ptr %i.u, align 8, !noalias !6747
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sroa.518.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !6747
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.aa, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !6747
  br label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction17h590556f961026adbE.exit"

bb.k:                                             ; preds = %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !6747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !6747
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.68.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !6747
  call void @"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$8get_meta17h7a90c512bd97e32cE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.x, ptr noundef nonnull align 8 dereferenceable(112) %1), !noalias !6757
  %i.am = load i64, ptr %i.x, align 8, !range !45, !noalias !6747, !noundef !5 ; 2 uses
  %.not32.i = icmp eq i64 %i.am, -9223372036854775773
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.i, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !6747
  br i1 %.not32.i, label %bb.l, label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction17h590556f961026adbE.exit.thread"

"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction17h590556f961026adbE.exit.thread": ; preds = %bb.k
  %.sroa.625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.328.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.328.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.625.0..sroa_idx.i, i64 88, i1 false), !noalias !6758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6747
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.227.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.i, i64 16, i1 false), !noalias !6758
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !6747
  br label %bb.at

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !6747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.i, i64 16, i1 false), !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.68.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !6747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !6747
  call void @llvm.experimental.noalias.scope.decl(metadata !6759)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i)
  %i.ao = load i64, ptr %i.y, align 8, !alias.scope !6759, !noalias !6747, !noundef !5
  %i.ap = call i64 @llvm.usub.sat.i64(i64 %i.ao, i64 %i.ac)
  store i64 %i.ap, ptr %i.y, align 8, !alias.scope !6759, !noalias !6747
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !6759, !noalias !6747, !noundef !5
  %i.as = call i32 @llvm.usub.sat.i32(i32 %i.ar, i32 1)
  store i32 %i.as, ptr %i.aq, align 4, !alias.scope !6759, !noalias !6747
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !6760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !6760
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !6760
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noundef nonnull align 8 %i.at, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @360, i64 noundef 33), !noalias !6761
  %i.au = load ptr, ptr %i.p, align 8, !noalias !6760, !noundef !5 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.aw, i64 64, i1 false), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !6760
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67.i.i, i64 64, i1 false), !noalias !6760
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.m), !noalias !6762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6760
  br label %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.i"

bb.n:                                             ; preds = %bb.l
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67.i.i, i64 64, i1 false), !noalias !6760
  store ptr %i.au, ptr %i.q, align 8, !noalias !6760
  %i.ax = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6760, !noundef !5
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i, !prof !9

.lr.ph.i.i.i:                                     ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6760
  store ptr %2, ptr %i.n, align 8, !noalias !6760
  store ptr %i.n, ptr %i.o, align 8, !noalias !6760
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @351, ptr %i.ay, align 8, !noalias !6760
  call void @llvm.experimental.noalias.scope.decl(metadata !6763)
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !6763, !noalias !6760, !noundef !5
  %i.bb = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.ba) #30, !noalias !6764 ; 3 uses
  %i.bc = sext i32 %i.bb to i64
  %.not.i.not.i.i = icmp eq i32 %i.bb, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6765
  br i1 %.not.i.not.i.i, label %.sink.split.i.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a": ; preds = %.lr.ph.i.i.i
  store ptr %i.o, ptr %i.j, align 8, !noalias !6765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6765
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, i64 noundef 1)
          to label %.noexc.i.i.a unwind label %.loopexit.split.us.i.i, !noalias !6766

.noexc.i.i.a:                                     ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a"
  %i.bd = load i64, ptr %i.i, align 8, !range !48, !noalias !6765, !noundef !5 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.bd, -9223372036854775783
  br i1 %.not12.i.i.i, label %bb.p, label %bb.o

.loopexit.split.us.i.i:                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.i.i.a"
  %lpad.loopexit.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %.noexc.i.i.a
  %.sroa.826.0..sroa_idx27.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.826.0.copyload28.i.i = load i64, ptr %.sroa.826.0..sroa_idx27.i.i, align 8, !noalias !6767
  %.sroa.9.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.9.0.copyload30.i.i = load i64, ptr %.sroa.9.0..sroa_idx29.i.i, align 8, !noalias !6767
  %.sroa.10.0..sroa_idx31.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx31.i.i, i64 40, i1 false), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6765
  br label %.sink.split.i.i

bb.p:                                             ; preds = %.noexc.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6765
  %.not13.i.i.i = icmp eq i32 %i.bb, 1
  br i1 %.not13.i.i.i, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i.i, label %bb.s

.loopexit.i.i:                                    ; preds = %bb.n
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @340) #38
          to label %bb.r unwind label %.loopexit.split-lp.i.i, !noalias !6761

.loopexit.split-lp.i.i:                           ; preds = %bb.u, %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i.i, %.loopexit.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.split.us.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.us.i.i, %.loopexit.split.us.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.q) #39
          to label %common.resume.i unwind label %bb.w, !noalias !6766

bb.r:                                             ; preds = %.loopexit.i.i
  unreachable

.sink.split.i.i:                                  ; preds = %bb.o, %.lr.ph.i.i.i
  %.sroa.9.0.ph.ph.i.i = phi i64 [ %.sroa.9.0.copyload30.i.i, %bb.o ], [ 0, %.lr.ph.i.i.i ]
  %.sroa.826.0.ph.ph.i.i = phi i64 [ %.sroa.826.0.copyload28.i.i, %bb.o ], [ 1, %.lr.ph.i.i.i ]
  %.sroa.0.0.ph.ph.i.i = phi i64 [ %i.bd, %bb.o ], [ -9223372036854775786, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6765
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i, %bb.p
  %.sroa.9.0.ph.i.i = phi i64 [ %i.bc, %bb.p ], [ %.sroa.9.0.ph.ph.i.i, %.sink.split.i.i ]
  %.sroa.826.0.ph.i.i = phi i64 [ 1, %bb.p ], [ %.sroa.826.0.ph.ph.i.i, %.sink.split.i.i ]
  %.sroa.0.0.ph.i.i = phi i64 [ -9223372036854775786, %bb.p ], [ %.sroa.0.0.ph.ph.i.i, %.sink.split.i.i ]
  %.sroa.334.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.9.0.ph.i.i, ptr %.sroa.334.0..sroa_idx.i.i, align 8, !noalias !6760
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.435.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.i.i, i64 40, i1 false), !noalias !6760
  br label %bb.u

_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i.i: ; preds = %bb.p
  %.sroa.4.0..sroa_idx.val.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !6760
  %.sroa.4.0..sroa_idx.val24.i.i = load ptr, ptr %i.az, align 8, !noalias !6760, !noundef !5
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.r, ptr %.sroa.4.0..sroa_idx.val.i.i, ptr %.sroa.4.0..sroa_idx.val24.i.i)
          to label %bb.t unwind label %.loopexit.split-lp.i.i, !noalias !6766

bb.t:                                             ; preds = %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit.i.i
  %i.be = load i64, ptr %i.r, align 8, !range !48, !noalias !6760, !noundef !5 ; 2 uses
  %.not23.i.i = icmp eq i64 %i.be, -9223372036854775783
  br i1 %.not23.i.i, label %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.thread.i", label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.t
  %.sroa.616.0..sroa_idx.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.616.0.copyload.pre.i.i = load i64, ptr %.sroa.616.0..sroa_idx.phi.trans.insert.i.i, align 8, !noalias !6760
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i, %bb.s
  %.sroa.616.0.copyload.i.i = phi i64 [ %.sroa.616.0.copyload.pre.i.i, %._crit_edge.i.i ], [ %.sroa.826.0.ph.i.i, %bb.s ]
  %.sroa.015.0.copyload.i.i = phi i64 [ %i.be, %._crit_edge.i.i ], [ %.sroa.0.0.ph.i.i, %bb.s ]
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..sroa_idx.i.i, i64 48, i1 false), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6760
  store i64 %.sroa.015.0.copyload.i.i, ptr %i.l, align 8, !noalias !6760
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.616.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !6760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6760
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.l)
          to label %bb.v unwind label %.loopexit.split-lp.i.i, !noalias !6766

"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.thread.i": ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6760
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.q), !noalias !6766
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  br label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.v, ptr noundef nonnull align 8 dereferenceable(112) %i.k, i64 112, i1 false), !noalias !6768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6760
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6760
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.q), !noalias !6766
  br label %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.i"

bb.w:                                             ; preds = %bb.q
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !6766
  unreachable

"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.i": ; preds = %bb.v, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.67.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !6760
  %.pr.i = load i64, ptr %i.v, align 8, !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i)
  %.not33.i = icmp eq i64 %.pr.i, -9223372036854775773
  br i1 %.not33.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false), !noalias !6747
  br label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.i"

bb.y:                                             ; preds = %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.i", %"_ZN4anki4sync5media8database6server5entry8download74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$19forget_missing_file28_$u7b$$u7b$closure$u7d$$u7d$17h7a1811aad0f2441dE.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !6769)
  call void @llvm.experimental.noalias.scope.decl(metadata !6770)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6771
  call void @"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$8set_meta17h2305d2cc80c9c568E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.y), !noalias !6772
  %i.bg = load i64, ptr %i.h, align 8, !range !45, !noalias !6771, !noundef !5
  %.not.i34.i = icmp eq i64 %i.bg, -9223372036854775773
  br i1 %.not.i34.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(112) %i.h, i64 112, i1 false), !noalias !6773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6771
  br label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.i"

bb.aa:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6771
  call void @llvm.experimental.noalias.scope.decl(metadata !6774)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6775
  call fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @337, i64 noundef 6)
  %i.bh = load i64, ptr %i.e, align 8, !range !7, !noalias !6775, !noundef !5
  %i.bi = trunc nuw i64 %i.bh to i1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.bi, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 64, i1 false), !noalias !6776
  br label %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6775
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 64, i1 false), !noalias !6775
  call void @llvm.experimental.noalias.scope.decl(metadata !6777)
  call void @llvm.experimental.noalias.scope.decl(metadata !6778)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.val.i.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !6778, !noalias !6775, !noundef !5 ; 2 uses
  %i.bl = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %.val.i.i.i.i) #30, !noalias !6779 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.af, label %bb.ae

bb.ad:                                            ; preds = %bb.af
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #39
          to label %common.resume.i unwind label %bb.ag, !noalias !6780

bb.ae:                                            ; preds = %bb.ac
  %i.bn = sext i32 %i.bl to i64
  store i64 -9223372036854775786, ptr %i.g, align 8, !alias.scope !6781, !noalias !6771
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6781, !noalias !6771
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.bn, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !6781, !noalias !6771
  br label %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i.i"

bb.af:                                            ; preds = %bb.ac
  %.val1.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !6778, !noalias !6775
  invoke fastcc void @_ZN8rusqlite9statement9Statement29execute_with_bound_parameters17h99b9f01282993d44E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.g, ptr %.val1.i.i.i.i, ptr %.val.i.i.i.i)
          to label %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i.i" unwind label %bb.ad, !noalias !6782

bb.ag:                                            ; preds = %bb.ad
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #40, !noalias !6780
  unreachable

"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i.i": ; preds = %bb.af, %bb.ae
  call fastcc void @"_ZN4core3ptr51drop_in_place$LT$rusqlite..statement..Statement$GT$17h4565240abdd5efccE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !6780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6775
  br label %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i

_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i: ; preds = %"_ZN8rusqlite10Connection7execute28_$u7b$$u7b$closure$u7d$$u7d$17h934eed75c7eea37aE.exit.i.i.i", %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6775
  %i.bp = load i64, ptr %i.g, align 8, !range !48, !noalias !6771, !noundef !5 ; 2 uses
  %.not10.i.i = icmp eq i64 %i.bp, -9223372036854775783
  br i1 %.not10.i.i, label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.thread.i", label %bb.ah

bb.ah:                                            ; preds = %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !noalias !6771
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.3.0..sroa_idx.i35.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.69.0..sroa_idx.i.i, i64 48, i1 false), !noalias !6771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6771
  store i64 %i.bp, ptr %i.f, align 8, !noalias !6771
  %.sroa.2.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.58.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i36.i, align 8, !noalias !6771
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.w, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.f), !noalias !6757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6771
  br label %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.i"

"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.thread.i": ; preds = %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6771
  %i.bq = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !alias.scope !6770, !noalias !6747, !noundef !5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.br, ptr %i.bs, align 8, !alias.scope !6769, !noalias !6747
  store i64 -9223372036854775773, ptr %i.w, align 8, !alias.scope !6769, !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6747
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$11inspect_err17h374fadfd1250beb8E.exit.i"

"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.i": ; preds = %bb.ah, %bb.z, %bb.x
  %.pr40.i = load i64, ptr %i.w, align 8, !alias.scope !6783, !noalias !6747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !6747
  call void @llvm.experimental.noalias.scope.decl(metadata !6784)
  call void @llvm.experimental.noalias.scope.decl(metadata !6783)
  %.not.i37.i = icmp eq i64 %.pr40.i, -9223372036854775773
  br i1 %.not.i37.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$11inspect_err17h374fadfd1250beb8E.exit.i", label %bb.ai

bb.ai:                                            ; preds = %"_ZN4anki4sync5media8database6server4meta74_$LT$impl$u20$anki..sync..media..database..server..ServerMediaDatabase$GT$16with_transaction28_$u7b$$u7b$closure$u7d$$u7d$17hafe5e66a7a3fe9e6E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6785
  call void @llvm.experimental.noalias.scope.decl(metadata !6786)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6787
  invoke fastcc void @_ZN8rusqlite10Connection18prepare_with_flags17hc0e8780ef00dc013E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @336, i64 noundef 8)
          to label %.noexc.i38.i unwind label %bb.aq

.noexc.i38.i:                                     ; preds = %bb.ai
  %i.bt = load i64, ptr %i.b, align 8, !range !7, !noalias !6787, !noundef !5
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.noexc.i38.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 64, i1 false), !noalias !6788
  br label %_ZN8rusqlite10Connection7execute17hbd3aec50cc349297E.exit.i.i.i

bb.ak:                                            ; preds = %.noexc.i38.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i64 64, i1 false), !noalias !6787
  call void @llvm.experimental.noalias.scope.decl(metadata !6789)
  call void @llvm.experimental.noalias.scope.decl(metadata !6790)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 56
end_hunk_0
