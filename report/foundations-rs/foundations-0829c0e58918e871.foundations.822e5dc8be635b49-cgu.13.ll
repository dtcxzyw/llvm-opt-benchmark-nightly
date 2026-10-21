Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.13?download=true
inline.NumInlined: 1214
inline.NumDeleted: 523
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation21negotiate_or_fallback:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !14830), !dbg !14866
  %i.as = load ptr, ptr %i.d, align 8, !dbg !14867, !alias.scope !14831, !noalias !14818, !nonnull !454, !noundef !454
  %i.at = atomicrmw sub ptr %i.as, i64 1 release, align 8, !dbg !14868, !noalias !14831
  %i.au = icmp eq i64 %i.at, 1, !dbg !14869
  br i1 %i.au, label %bb.j, label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation27report_unsatisfiable_accept.exit, !dbg !14869

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit18.i
  fence acquire, !dbg !14870
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #32, !dbg !14871
  br label %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation27report_unsatisfiable_accept.exit, !dbg !14871

bb.k:                                             ; preds = %bb.g, %bb.c
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28, !dbg !14872
  unreachable, !dbg !14872

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEEB2N_.exit.i: ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit.i
  resume { ptr, i32 } %.pn.i, !dbg !14872

_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation27report_unsatisfiable_accept.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs7hp7eIiX3bT_8lock_api6rwlock15RwLockReadGuardNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEEB2p_.exit18.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14841, !noalias !14818
  br label %bb.l, !dbg !14873

bb.l:                                             ; preds = %bb.a, %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation27report_unsatisfiable_accept.exit
  %.sroa.05.0 = phi i8 [ 0, %_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation27report_unsatisfiable_accept.exit ], [ %i.e, %bb.a ], !dbg !14874
  ret i8 %.sroa.05.0, !dbg !14875
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7metrics11negotiation9negotiate(ptr noalias nofree noundef readonly captures(address, read_provenance) %0, i64 %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !14876 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 23 uses
  %.not = icmp eq ptr %0, null, !dbg !15200
  br i1 %.not, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %.lr.ph405.lr.ph, !dbg !15201

.lr.ph405.lr.ph:                                  ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.phi.trans.insert.i.i151 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.13700.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.14701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.16702.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.18704.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 65
  br label %.lr.ph405, !dbg !15202

.lr.ph405:                                        ; preds = %.lr.ph405.lr.ph, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread
  %.promoted408438 = phi i64 [ 0, %.lr.ph405.lr.ph ], [ %.promoted408435, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ] ; 2 uses
  %.sroa.041.0.ph432 = phi float [ undef, %.lr.ph405.lr.ph ], [ %.sroa.041.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ] ; 2 uses
  %.sroa.443.0.ph431 = phi i8 [ -1, %.lr.ph405.lr.ph ], [ %.sroa.443.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ] ; 3 uses
  %.promoted401418429 = phi i64 [ 0, %.lr.ph405.lr.ph ], [ %.promoted401416, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ] ; 2 uses
  br label %bb.b, !dbg !15202

bb.b:                                             ; preds = %.lr.ph405, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  %.promoted408437 = phi i64 [ %.promoted408438, %.lr.ph405 ], [ %.promoted408435, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ]
  %.promoted401417 = phi i64 [ %.promoted401418429, %.lr.ph405 ], [ %.promoted401416, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ] ; 5 uses
  %.sroa.555.0..sroa_idx.promoted414 = phi i8 [ 0, %.lr.ph405 ], [ %.sroa.555.0..sroa_idx.promoted413, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ]
  %.lcssa324411 = phi i64 [ %.promoted408438, %.lr.ph405 ], [ %.lcssa324409, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ] ; 3 uses
  %.lcssa296403404 = phi i64 [ %.promoted401418429, %.lr.ph405 ], [ %.lcssa296402, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ] ; 7 uses
  %i.j = icmp ult i64 %1, %.lcssa324411, !dbg !15203
  br i1 %i.j, label %.lr.ph.split.preheader.i.i113, label %.lr.ph.split.i.i, !dbg !15203

.lr.ph.split.i.i:                                 ; preds = %bb.b, %bb.e
  %i.k = phi i64 [ %i.y, %bb.e ], [ %.lcssa324411, %bb.b ] ; 6 uses
  %i.l = sub nuw i64 %1, %i.k, !dbg !15204        ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.k, !dbg !15205 ; 2 uses
  %i.n = icmp samesign ult i64 %i.l, 16, !dbg !15206
  br i1 %i.n, label %.preheader.i.i.i, label %bb.c, !dbg !15206

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %1, %i.k, !dbg !15207
  br i1 %.not.i.i.i, label %.lr.ph.split.preheader.i.i113, label %.lr.ph.i.i.i, !dbg !15207

bb.c:                                             ; preds = %.lr.ph.split.i.i
  %i.o = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.m, i64 noundef range(i64 0, -9223372036854775808) %i.l), !dbg !15208, !noalias !15090 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0, !dbg !15208
  %i.q = extractvalue { i64, i64 } %i.o, 1, !dbg !15208
  %i.r = trunc nuw i64 %i.p to i1, !dbg !15209
  br i1 %i.r, label %.loopexit.i.i, label %.lr.ph.split.preheader.i.i113, !dbg !15209

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.d
  %.sroa.04.011.i.i.i = phi i64 [ %i.v, %bb.d ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.04.011.i.i.i, !dbg !15210
  %i.t = load i8, ptr %i.s, align 1, !dbg !15210, !alias.scope !15091, !noalias !15090, !noundef !454
  %i.u = icmp eq i8 %i.t, 44, !dbg !15210
  br i1 %i.u, label %.loopexit.i.i, label %bb.d, !dbg !15210

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nuw nsw i64 %.sroa.04.011.i.i.i, 1, !dbg !15211 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.l, !dbg !15207
  br i1 %exitcond.not.i.i.i, label %.lr.ph.split.preheader.i.i113, label %.lr.ph.i.i.i, !dbg !15207

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.5.0.i.i.i = phi i64 [ %i.q, %bb.c ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ], !dbg !15212 ; 4 uses
  %i.w = icmp ult i64 %.sroa.5.0.i.i.i, %i.l, !dbg !15213
  tail call void @llvm.assume(i1 %i.w), !dbg !15214
  %i.x = add i64 %i.k, 1, !dbg !15215
  %i.y = add i64 %i.x, %.sroa.5.0.i.i.i, !dbg !15216 ; 8 uses
  %.not12.i.i = icmp ugt i64 %i.y, %1
  %i.z = add i64 %i.k, %.sroa.5.0.i.i.i, !dbg !15217
  %or.cond.i.i.not = icmp ult i64 %i.z, %1, !dbg !15217
  br i1 %or.cond.i.i.not, label %bb.f, label %bb.e, !dbg !15217

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i
  br i1 %.not12.i.i, label %.lr.ph.split.preheader.i.i113, label %.lr.ph.split.i.i, !dbg !15203

bb.f:                                             ; preds = %.loopexit.i.i
  %i.aa = add i64 %i.k, %.sroa.5.0.i.i.i, !dbg !15218 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa, !dbg !15219
  %lhsc = load i8, ptr %i.ab, align 1, !dbg !15220
  %i.ac = icmp eq i8 %lhsc, 44, !dbg !15220
  br i1 %i.ac, label %.lr.ph.split.preheader.i.i113, label %bb.e, !dbg !15221

.lr.ph.split.preheader.i.i113:                    ; preds = %bb.b, %bb.e, %.preheader.i.i.i, %bb.c, %bb.d, %bb.f
  %.promoted408435 = phi i64 [ %i.y, %bb.f ], [ %.promoted408437, %bb.b ], [ %1, %bb.d ], [ %1, %.preheader.i.i.i ], [ %1, %bb.c ], [ %i.y, %bb.e ] ; 2 uses
  %.promoted401416 = phi i64 [ %i.y, %bb.f ], [ %.promoted401417, %bb.d ], [ %.promoted401417, %bb.c ], [ %.promoted401417, %.preheader.i.i.i ], [ %.promoted401417, %bb.e ], [ %.promoted401417, %bb.b ] ; 2 uses
  %.sroa.555.0..sroa_idx.promoted413 = phi i8 [ %.sroa.555.0..sroa_idx.promoted414, %bb.f ], [ 1, %bb.d ], [ 1, %bb.c ], [ 1, %.preheader.i.i.i ], [ 1, %bb.e ], [ 1, %bb.b ] ; 2 uses
  %.lcssa324409 = phi i64 [ %i.y, %bb.f ], [ %.lcssa324411, %bb.b ], [ %1, %bb.d ], [ %1, %.preheader.i.i.i ], [ %1, %bb.c ], [ %i.y, %bb.e ]
  %.lcssa296402 = phi i64 [ %i.y, %bb.f ], [ %.lcssa296403404, %bb.d ], [ %.lcssa296403404, %bb.c ], [ %.lcssa296403404, %.preheader.i.i.i ], [ %.lcssa296403404, %bb.e ], [ %.lcssa296403404, %bb.b ]
  %i.ad = phi i1 [ false, %bb.f ], [ true, %bb.d ], [ true, %bb.c ], [ true, %.preheader.i.i.i ], [ true, %bb.e ], [ true, %bb.b ]
  %.pn = phi i64 [ %i.aa, %bb.f ], [ %1, %bb.d ], [ %1, %bb.c ], [ %1, %.preheader.i.i.i ], [ %1, %bb.e ], [ %1, %bb.b ]
  %.sroa.4.1.i = sub nuw i64 %.pn, %.lcssa296403404, !dbg !15222 ; 14 uses
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa296403404, !dbg !15222 ; 4 uses
  br label %.lr.ph.split.i.i115, !dbg !15223

.lr.ph.split.i.i115:                              ; preds = %bb.i, %.lr.ph.split.preheader.i.i113
  %i.ae = phi i64 [ %i.as, %bb.i ], [ 0, %.lr.ph.split.preheader.i.i113 ] ; 6 uses
  %i.af = sub nuw i64 %.sroa.4.1.i, %i.ae, !dbg !15224 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %i.ae, !dbg !15225 ; 2 uses
  %i.ah = icmp samesign ult i64 %i.af, 16, !dbg !15223
  br i1 %i.ah, label %.preheader.i.i.i134, label %bb.g, !dbg !15223

.preheader.i.i.i134:                              ; preds = %.lr.ph.split.i.i115
  %.not.i.i.i135 = icmp eq i64 %.sroa.4.1.i, %i.ae, !dbg !15226
  br i1 %.not.i.i.i135, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272, label %.lr.ph.i.i.i136, !dbg !15226

bb.g:                                             ; preds = %.lr.ph.split.i.i115
  %i.ai = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 59, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef range(i64 0, -9223372036854775808) %i.af), !dbg !15227, !noalias !15097 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0, !dbg !15227
  %i.ak = extractvalue { i64, i64 } %i.ai, 1, !dbg !15227
  %i.al = trunc nuw i64 %i.aj to i1, !dbg !15228
  br i1 %i.al, label %.loopexit.i.i127, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272, !dbg !15228

.lr.ph.i.i.i136:                                  ; preds = %.preheader.i.i.i134, %bb.h
  %.sroa.04.011.i.i.i137 = phi i64 [ %i.ap, %bb.h ], [ 0, %.preheader.i.i.i134 ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.sroa.04.011.i.i.i137, !dbg !15229
  %i.an = load i8, ptr %i.am, align 1, !dbg !15229, !alias.scope !15098, !noalias !15097, !noundef !454
  %i.ao = icmp eq i8 %i.an, 59, !dbg !15229
  br i1 %i.ao, label %.loopexit.i.i127, label %bb.h, !dbg !15229

bb.h:                                             ; preds = %.lr.ph.i.i.i136
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i137, 1, !dbg !15230 ; 2 uses
  %exitcond.not.i.i.i138 = icmp eq i64 %i.ap, %i.af, !dbg !15226
  br i1 %exitcond.not.i.i.i138, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272, label %.lr.ph.i.i.i136, !dbg !15226

.loopexit.i.i127:                                 ; preds = %.lr.ph.i.i.i136, %bb.g
  %.sroa.5.0.i.i.i128 = phi i64 [ %i.ak, %bb.g ], [ %.sroa.04.011.i.i.i137, %.lr.ph.i.i.i136 ], !dbg !15231 ; 4 uses
  %i.aq = icmp ult i64 %.sroa.5.0.i.i.i128, %i.af, !dbg !15232
  tail call void @llvm.assume(i1 %i.aq), !dbg !15233
  %i.ar = add i64 %i.ae, 1, !dbg !15234
  %i.as = add i64 %i.ar, %.sroa.5.0.i.i.i128, !dbg !15235 ; 5 uses
  %.not12.i.i130 = icmp ugt i64 %i.as, %.sroa.4.1.i
  %i.at = add i64 %i.ae, %.sroa.5.0.i.i.i128, !dbg !15236
  %or.cond.i.i131.not = icmp ult i64 %i.at, %.sroa.4.1.i, !dbg !15236
  br i1 %or.cond.i.i131.not, label %bb.j, label %bb.i, !dbg !15236

bb.i:                                             ; preds = %bb.j, %.loopexit.i.i127
  br i1 %.not12.i.i130, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272, label %.lr.ph.split.i.i115, !dbg !15237

bb.j:                                             ; preds = %.loopexit.i.i127
  %i.au = add i64 %i.ae, %.sroa.5.0.i.i.i128, !dbg !15238 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %i.au, !dbg !15239
  %lhsc546 = load i8, ptr %i.av, align 1, !dbg !15240
  %i.aw = icmp eq i8 %lhsc546, 59, !dbg !15240
  br i1 %i.aw, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272, label %bb.i, !dbg !15241

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit.thread: ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, %bb.a
  %.sroa.03.0 = phi i8 [ 0, %bb.a ], [ %.sroa.443.0.ph431, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit ], [ %.sroa.443.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread ], !dbg !15242
  ret i8 %.sroa.03.0, !dbg !15243

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272: ; preds = %bb.h, %.preheader.i.i.i134, %bb.i, %bb.j, %bb.g
  %.sroa.19.0 = phi i8 [ 1, %bb.i ], [ 1, %bb.g ], [ 0, %bb.j ], [ 1, %.preheader.i.i.i134 ], [ 1, %bb.h ], !dbg !15244 ; 2 uses
  %.sroa.9.0 = phi i64 [ %i.as, %bb.i ], [ %.sroa.4.1.i, %bb.g ], [ %i.as, %bb.j ], [ %.sroa.4.1.i, %.preheader.i.i.i134 ], [ %.sroa.4.1.i, %bb.h ], !dbg !15245
  %.sroa.0697.0 = phi i64 [ 0, %bb.i ], [ 0, %bb.g ], [ %i.as, %bb.j ], [ 0, %.preheader.i.i.i134 ], [ 0, %bb.h ], !dbg !15244
  %.sroa.4.1.i125266 = phi i64 [ %.sroa.4.1.i, %bb.i ], [ %.sroa.4.1.i, %bb.g ], [ %i.au, %bb.j ], [ %.sroa.4.1.i, %.preheader.i.i.i134 ], [ %.sroa.4.1.i, %bb.h ]
  %i.ax = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i125266), !dbg !15246 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0, !dbg !15246 ; 15 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1, !dbg !15246 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null, !dbg !15247
  %.not5.i = icmp eq i64 %i.az, 0, !dbg !15248
  %i.ba = select i1 %.not.i, i1 true, i1 %.not5.i, !dbg !15248
  br i1 %i.ba, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %bb.k, !dbg !15249

bb.k:                                             ; preds = %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit139.thread272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15250
  store i64 %.sroa.0697.0, ptr %i.a, align 8, !dbg !15250
  store i64 %.sroa.4.1.i, ptr %.sroa.6698.0..sroa_idx, align 8, !dbg !15250
  store ptr %.sroa.0.1.i, ptr %.sroa.7699.0..sroa_idx, align 8, !dbg !15250
  store i64 %.sroa.4.1.i, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !15250
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !15250
  store i64 %.sroa.4.1.i, ptr %.sroa.13700.0..sroa_idx, align 8, !dbg !15250
  store i32 59, ptr %.sroa.14701.0..sroa_idx, align 8, !dbg !15250
  store i32 59, ptr %.sroa.16702.0..sroa_idx, align 4, !dbg !15250
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !15250
  store i8 1, ptr %.sroa.18704.0..sroa_idx, align 8, !dbg !15250
  store i8 %.sroa.19.0, ptr %.sroa.19.0..sroa_idx, align 1, !dbg !15250
  %i.bb = trunc nuw i8 %.sroa.19.0 to i1, !dbg !15251
  br i1 %i.bb, label %.outer._crit_edge, label %.lr.ph.lr.ph, !dbg !15251

.lr.ph.lr.ph:                                     ; preds = %bb.k
  %.promoted375 = load i64, ptr %i.a, align 8
  %.val.i140 = load ptr, ptr %i.c, align 8, !alias.scope !15111, !nonnull !454, !noundef !454 ; 3 uses
  %.val1.i141 = load i64, ptr %i.d, align 8, !alias.scope !15111, !noundef !454 ; 2 uses
  %i.bc = load i64, ptr %i.f, align 8, !alias.scope !15112, !noundef !454 ; 8 uses
  %.not.i.i142 = icmp ugt i64 %i.bc, %.val1.i141
  %i.bd = load i8, ptr %i.h, align 8              ; 2 uses
  %i.be = zext nneg i8 %i.bd to i64               ; 4 uses
  %i.bf = icmp ult i8 %i.bd, 5
  %i.bg = getelementptr i8, ptr %i.g, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = load i8, ptr %i.i, align 8, !range !833
  %i.bj = trunc nuw i8 %i.bi to i1
  %.pre2.i.i152 = load i64, ptr %.phi.trans.insert.i.i151, align 8 ; 2 uses
  %.promoted398 = load i64, ptr %i.e, align 8
  br label %.lr.ph, !dbg !15251

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread
  %.lcssa335365.lcssa399 = phi i64 [ %.promoted398, %.lr.ph.lr.ph ], [ %.lcssa335365, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ]
  %.sroa.011.0.ph388 = phi float [ 1.000000e+00, %.lr.ph.lr.ph ], [ %.sroa.011.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 14 uses
  %.sroa.019.0.ph387 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.019.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 16 uses
  %.sroa.4.0.ph386 = phi i64 [ undef, %.lr.ph.lr.ph ], [ %.sroa.4.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 16 uses
  %.sroa.023.0.ph385 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.023.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 16 uses
  %.sroa.425.0.ph384 = phi i64 [ undef, %.lr.ph.lr.ph ], [ %.sroa.425.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 16 uses
  %.sroa.028.0.ph383 = phi ptr [ null, %.lr.ph.lr.ph ], [ %.sroa.028.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 17 uses
  %.sroa.430.0.ph382 = phi i64 [ undef, %.lr.ph.lr.ph ], [ %.sroa.430.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 17 uses
  %.lcssa304338.lcssa376380 = phi i64 [ %.promoted375, %.lr.ph.lr.ph ], [ %.lcssa304338, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ]
  br label %bb.l, !dbg !15251

bb.l:                                             ; preds = %.lr.ph, %.loopexit
  %.promoted336373 = phi i8 [ 0, %.lr.ph ], [ %.promoted336372, %.loopexit ]
  %.lcssa335367 = phi i64 [ %.lcssa335365.lcssa399, %.lr.ph ], [ %.lcssa335365, %.loopexit ] ; 3 uses
  %.lcssa304339340 = phi i64 [ %.lcssa304338.lcssa376380, %.lr.ph ], [ %.lcssa304338, %.loopexit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15111), !dbg !15252
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15113), !dbg !15253
  %i.bk = icmp ult i64 %i.bc, %.lcssa335367, !dbg !15254
  %or.cond27.i.i144 = or i1 %.not.i.i142, %i.bk, !dbg !15254
  br i1 %or.cond27.i.i144, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, label %.lr.ph.split.preheader.i.i145, !dbg !15254

.lr.ph.split.preheader.i.i145:                    ; preds = %bb.l
  tail call void @llvm.assume(i1 %i.bf)
  %.pre.i.i146 = load i8, ptr %i.bh, align 1, !dbg !15255, !alias.scope !15112 ; 2 uses
  br label %.lr.ph.split.i.i147, !dbg !15256

.lr.ph.split.i.i147:                              ; preds = %bb.o, %.lr.ph.split.preheader.i.i145
  %i.bl = phi i64 [ %i.bz, %bb.o ], [ %.lcssa335367, %.lr.ph.split.preheader.i.i145 ] ; 4 uses
  %i.bm = sub nuw i64 %i.bc, %i.bl, !dbg !15257   ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i140, i64 %i.bl, !dbg !15258 ; 2 uses
  %i.bo = icmp samesign ult i64 %i.bm, 16, !dbg !15256
  br i1 %i.bo, label %.preheader.i.i.i166, label %bb.m, !dbg !15256

.preheader.i.i.i166:                              ; preds = %.lr.ph.split.i.i147
  %.not.i.i.i167 = icmp eq i64 %i.bc, %i.bl, !dbg !15259
  br i1 %.not.i.i.i167, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, label %.lr.ph.i.i.i168, !dbg !15259

bb.m:                                             ; preds = %.lr.ph.split.i.i147
  %i.bp = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i146, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef range(i64 0, -9223372036854775808) %i.bm), !dbg !15260, !noalias !15114 ; 2 uses
  %i.bq = extractvalue { i64, i64 } %i.bp, 0, !dbg !15260
  %i.br = extractvalue { i64, i64 } %i.bp, 1, !dbg !15260
  %i.bs = trunc nuw i64 %i.bq to i1, !dbg !15261
  br i1 %i.bs, label %.loopexit.i.i159, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, !dbg !15261

.lr.ph.i.i.i168:                                  ; preds = %.preheader.i.i.i166, %bb.n
  %.sroa.04.011.i.i.i169 = phi i64 [ %i.bw, %bb.n ], [ 0, %.preheader.i.i.i166 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.04.011.i.i.i169, !dbg !15262
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !15262, !alias.scope !15115, !noalias !15114, !noundef !454
  %i.bv = icmp eq i8 %i.bu, %.pre.i.i146, !dbg !15262
  br i1 %i.bv, label %.loopexit.i.i159, label %bb.n, !dbg !15262

bb.n:                                             ; preds = %.lr.ph.i.i.i168
  %i.bw = add nuw nsw i64 %.sroa.04.011.i.i.i169, 1, !dbg !15263 ; 2 uses
  %exitcond.not.i.i.i170 = icmp eq i64 %i.bw, %i.bm, !dbg !15259
  br i1 %exitcond.not.i.i.i170, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, label %.lr.ph.i.i.i168, !dbg !15259

.loopexit.i.i159:                                 ; preds = %.lr.ph.i.i.i168, %bb.m
  %.sroa.5.0.i.i.i160 = phi i64 [ %i.br, %bb.m ], [ %.sroa.04.011.i.i.i169, %.lr.ph.i.i.i168 ], !dbg !15264 ; 2 uses
  %i.bx = icmp ult i64 %.sroa.5.0.i.i.i160, %i.bm, !dbg !15265
  tail call void @llvm.assume(i1 %i.bx), !dbg !15266
  %i.by = add i64 %i.bl, 1, !dbg !15267
  %i.bz = add i64 %i.by, %.sroa.5.0.i.i.i160, !dbg !15268 ; 8 uses
  %.not11.i.i161 = icmp ult i64 %i.bz, %i.be, !dbg !15269
  %.not12.i.i162 = icmp ugt i64 %i.bz, %.val1.i141
  %or.cond.i.i163 = or i1 %.not11.i.i161, %.not12.i.i162, !dbg !15269
  br i1 %or.cond.i.i163, label %bb.o, label %bb.p, !dbg !15269

bb.o:                                             ; preds = %bb.p, %.loopexit.i.i159
  %i.ca = icmp ult i64 %i.bc, %i.bz, !dbg !15254
  br i1 %i.ca, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, label %.lr.ph.split.i.i147, !dbg !15254

bb.p:                                             ; preds = %.loopexit.i.i159
  %i.cb = sub nuw i64 %i.bz, %i.be, !dbg !15270   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i140, i64 %i.cb, !dbg !15271
  %bcmp.i.i164 = call i32 @bcmp(ptr nonnull %i.cc, ptr nonnull %i.g, i64 %i.be), !dbg !15272, !noalias !15116
  %i.cd = icmp eq i32 %bcmp.i.i164, 0, !dbg !15272
  br i1 %i.cd, label %select.unfold, label %bb.o, !dbg !15273

_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149: ; preds = %bb.o, %.preheader.i.i.i166, %bb.m, %bb.n, %bb.l
  %.lcssa335366 = phi i64 [ %i.bc, %bb.n ], [ %.lcssa335367, %bb.l ], [ %i.bc, %bb.m ], [ %i.bc, %.preheader.i.i.i166 ], [ %i.bz, %bb.o ]
  store i8 1, ptr %i.b, align 1, !dbg !15274, !alias.scope !15117
  %.not.i3.i153 = icmp ne i64 %.pre2.i.i152, %.lcssa304339340
  %or.cond.not.i.i154 = select i1 %i.bj, i1 true, i1 %.not.i3.i153, !dbg !15275
  br i1 %or.cond.not.i.i154, label %select.unfold, label %.outer._crit_edge, !dbg !15276

select.unfold:                                    ; preds = %bb.p, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149
  %.promoted336372 = phi i8 [ 1, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ %.promoted336373, %bb.p ] ; 2 uses
  %.lcssa335365 = phi i64 [ %.lcssa335366, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ %i.bz, %bb.p ] ; 2 uses
  %.lcssa304338 = phi i64 [ %.lcssa304339340, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ %i.bz, %bb.p ] ; 2 uses
  %i.ce = phi i1 [ true, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ false, %bb.p ]
  %.pn444 = phi i64 [ %.pre2.i.i152, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ %i.cb, %bb.p ]
  %.sroa.4.1.i157 = sub nuw i64 %.pn444, %.lcssa304339340, !dbg !15277
  %.sroa.0.1.i158 = getelementptr inbounds nuw i8, ptr %.val.i140, i64 %.lcssa304339340, !dbg !15277
  %i.cf = tail call { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i158, i64 noundef %.sroa.4.1.i157), !dbg !15278 ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0, !dbg !15278 ; 5 uses
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1, !dbg !15278 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cg) ]
  br label %.lr.ph.split.i.i173, !dbg !15279

.lr.ph.split.i.i173:                              ; preds = %bb.s, %select.unfold
  %i.ci = phi i64 [ %i.cw, %bb.s ], [ 0, %select.unfold ] ; 5 uses
  %i.cj = sub nuw i64 %i.ch, %i.ci, !dbg !15280   ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ci, !dbg !15281 ; 2 uses
  %i.cl = icmp samesign ult i64 %i.cj, 16, !dbg !15279
  br i1 %i.cl, label %.preheader.i.i.i179, label %bb.q, !dbg !15279

.preheader.i.i.i179:                              ; preds = %.lr.ph.split.i.i173
  %.not.i.i.i180 = icmp eq i64 %i.ch, %i.ci, !dbg !15282
  br i1 %.not.i.i.i180, label %.loopexit, label %.lr.ph.i.i.i181, !dbg !15282

bb.q:                                             ; preds = %.lr.ph.split.i.i173
  %i.cm = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 61, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef range(i64 0, -9223372036854775808) %i.cj), !dbg !15283, !noalias !15125 ; 2 uses
  %i.cn = extractvalue { i64, i64 } %i.cm, 0, !dbg !15283
  %i.co = extractvalue { i64, i64 } %i.cm, 1, !dbg !15283
  %i.cp = trunc nuw i64 %i.cn to i1, !dbg !15284
  br i1 %i.cp, label %.loopexit.i.i175, label %.loopexit, !dbg !15284

.lr.ph.i.i.i181:                                  ; preds = %.preheader.i.i.i179, %bb.r
  %.sroa.04.011.i.i.i182 = phi i64 [ %i.ct, %bb.r ], [ 0, %.preheader.i.i.i179 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.04.011.i.i.i182, !dbg !15285
  %i.cr = load i8, ptr %i.cq, align 1, !dbg !15285, !alias.scope !15126, !noalias !15127, !noundef !454
  %i.cs = icmp eq i8 %i.cr, 61, !dbg !15285
  br i1 %i.cs, label %.loopexit.i.i175, label %bb.r, !dbg !15285

bb.r:                                             ; preds = %.lr.ph.i.i.i181
  %i.ct = add nuw nsw i64 %.sroa.04.011.i.i.i182, 1, !dbg !15286 ; 2 uses
  %exitcond.not.i.i.i183 = icmp eq i64 %i.ct, %i.cj, !dbg !15282
  br i1 %exitcond.not.i.i.i183, label %.loopexit, label %.lr.ph.i.i.i181, !dbg !15282

.loopexit.i.i175:                                 ; preds = %.lr.ph.i.i.i181, %bb.q
  %.sroa.5.0.i.i.i176 = phi i64 [ %i.co, %bb.q ], [ %.sroa.04.011.i.i.i182, %.lr.ph.i.i.i181 ], !dbg !15287 ; 3 uses
  %i.cu = icmp ult i64 %.sroa.5.0.i.i.i176, %i.cj, !dbg !15288
  tail call void @llvm.assume(i1 %i.cu), !dbg !15289
  %i.cv = add i64 %i.ci, 1, !dbg !15290
  %i.cw = add i64 %i.cv, %.sroa.5.0.i.i.i176, !dbg !15291 ; 4 uses
  %.not12.i.i177 = icmp ugt i64 %i.cw, %i.ch
  %i.cx = add i64 %.sroa.5.0.i.i.i176, %i.ci, !dbg !15292 ; 3 uses
  %or.cond.i.not.i = icmp ult i64 %i.cx, %i.ch, !dbg !15292
  br i1 %or.cond.i.not.i, label %bb.t, label %bb.s, !dbg !15292

bb.s:                                             ; preds = %bb.t, %.loopexit.i.i175
  br i1 %.not12.i.i177, label %.loopexit, label %.lr.ph.split.i.i173, !dbg !15293

bb.t:                                             ; preds = %.loopexit.i.i175
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cx, !dbg !15294
  %lhsc.i = load i8, ptr %i.cy, align 1, !dbg !15295, !alias.scope !15128
  %i.cz = icmp eq i8 %lhsc.i, 61, !dbg !15295
  br i1 %i.cz, label %bb.bf, label %bb.s, !dbg !15296

.outer._crit_edge:                                ; preds = %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149, %.loopexit, %bb.k
  %.sroa.430.0.ph.lcssa = phi i64 [ %.sroa.430.0.ph382, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ undef, %bb.k ], [ %.sroa.430.0.ph382, %.loopexit ], [ %.sroa.430.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ]
  %.sroa.028.0.ph.lcssa = phi ptr [ %.sroa.028.0.ph383, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ null, %bb.k ], [ %.sroa.028.0.ph383, %.loopexit ], [ %.sroa.028.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 10 uses
  %.sroa.425.0.ph.lcssa = phi i64 [ %.sroa.425.0.ph384, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ undef, %bb.k ], [ %.sroa.425.0.ph384, %.loopexit ], [ %.sroa.425.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ]
  %.sroa.023.0.ph.lcssa = phi ptr [ %.sroa.023.0.ph385, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ null, %bb.k ], [ %.sroa.023.0.ph385, %.loopexit ], [ %.sroa.023.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 2 uses
  %.sroa.4.0.ph.lcssa = phi i64 [ %.sroa.4.0.ph386, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ undef, %bb.k ], [ %.sroa.4.0.ph386, %.loopexit ], [ %.sroa.4.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ]
  %.sroa.019.0.ph.lcssa = phi ptr [ %.sroa.019.0.ph387, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ null, %bb.k ], [ %.sroa.019.0.ph387, %.loopexit ], [ %.sroa.019.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 12 uses
  %.sroa.011.0.ph.lcssa = phi float [ %.sroa.011.0.ph388, %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE7get_endCsbaWXNhtWAp9_11foundations.exit.i149 ], [ 1.000000e+00, %bb.k ], [ %.sroa.011.0.ph388, %.loopexit ], [ %.sroa.011.1, %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit224.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15297
  %i.da = fcmp ugt float %.sroa.011.0.ph.lcssa, 0.000000e+00, !dbg !15298
  br i1 %i.da, label %bb.u, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15298

bb.u:                                             ; preds = %.outer._crit_edge
  switch i64 %i.az, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit [
    i64 31, label %bb.v
    i64 28, label %bb.ah
    i64 10, label %bb.au
    i64 3, label %bb.be
  ], !dbg !15299

bb.v:                                             ; preds = %bb.u
  %i.db = tail call fastcc noundef zeroext i1 @_RINvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef 31, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @119, i64 noundef 31) #30, !dbg !15300
  br i1 %i.db, label %bb.w, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15301

bb.w:                                             ; preds = %bb.v
  %.not88 = icmp ne ptr %.sroa.023.0.ph.lcssa, null
  %or.cond.not283 = select i1 %2, i1 %.not88, i1 false, !dbg !15302
  %i.dc = icmp eq i64 %.sroa.425.0.ph.lcssa, 33
  %or.cond102 = select i1 %or.cond.not283, i1 %i.dc, i1 false, !dbg !15302
  br i1 %or.cond102, label %bb.x, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15302

bb.x:                                             ; preds = %bb.w
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %.sroa.023.0.ph.lcssa, ptr noundef nonnull dereferenceable(33) @120, i64 33), !dbg !15303
  %i.dd = icmp eq i32 %bcmp, 0, !dbg !15303
  %.not89 = icmp ne ptr %.sroa.028.0.ph.lcssa, null
  %or.cond103.not285 = select i1 %i.dd, i1 %.not89, i1 false, !dbg !15304
  %.not90 = icmp eq i64 %.sroa.430.0.ph.lcssa, 9
  %or.cond104 = select i1 %or.cond103.not285, i1 %.not90, i1 false, !dbg !15304
  br i1 %or.cond104, label %bb.y, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15304

bb.y:                                             ; preds = %bb.x
  %i.de = load i8, ptr %.sroa.028.0.ph.lcssa, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.df = add i8 %i.de, -65, !dbg !15306
  %i.dg = icmp ult i8 %i.df, 26, !dbg !15306
  %i.dh = select i1 %i.dg, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i = or i8 %i.dh, %i.de, !dbg !15306
  %i.di = icmp eq i8 %.sroa.012.0.i, 100, !dbg !15307
  br i1 %i.di, label %bb.z, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.z:                                             ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 1, !dbg !15309
  %i.dk = load i8, ptr %i.dj, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.dl = add i8 %i.dk, -65, !dbg !15306
  %i.dm = icmp ult i8 %i.dl, 26, !dbg !15306
  %i.dn = select i1 %i.dm, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.1 = or i8 %i.dn, %i.dk, !dbg !15306
  %i.do = icmp eq i8 %.sroa.012.0.i.1, 101, !dbg !15307
  br i1 %i.do, label %bb.aa, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.aa:                                            ; preds = %bb.z
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 2, !dbg !15309
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.dr = add i8 %i.dq, -65, !dbg !15306
  %i.ds = icmp ult i8 %i.dr, 26, !dbg !15306
  %i.dt = select i1 %i.ds, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.2 = or i8 %i.dt, %i.dq, !dbg !15306
  %i.du = icmp eq i8 %.sroa.012.0.i.2, 108, !dbg !15307
  br i1 %i.du, label %bb.ab, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 3, !dbg !15309
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.dx = add i8 %i.dw, -65, !dbg !15306
  %i.dy = icmp ult i8 %i.dx, 26, !dbg !15306
  %i.dz = select i1 %i.dy, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.3 = or i8 %i.dz, %i.dw, !dbg !15306
  %i.ea = icmp eq i8 %.sroa.012.0.i.3, 105, !dbg !15307
  br i1 %i.ea, label %bb.ac, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 4, !dbg !15309
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.ed = add i8 %i.ec, -65, !dbg !15306
  %i.ee = icmp ult i8 %i.ed, 26, !dbg !15306
  %i.ef = select i1 %i.ee, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.4 = or i8 %i.ef, %i.ec, !dbg !15306
  %i.eg = icmp eq i8 %.sroa.012.0.i.4, 109, !dbg !15307
  br i1 %i.eg, label %bb.ad, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.ad:                                            ; preds = %bb.ac
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 5, !dbg !15309
  %i.ei = load i8, ptr %i.eh, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.ej = add i8 %i.ei, -65, !dbg !15306
  %i.ek = icmp ult i8 %i.ej, 26, !dbg !15306
  %i.el = select i1 %i.ek, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.5 = or i8 %i.el, %i.ei, !dbg !15306
  %i.em = icmp eq i8 %.sroa.012.0.i.5, 105, !dbg !15307
  br i1 %i.em, label %bb.ae, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.ae:                                            ; preds = %bb.ad
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 6, !dbg !15309
  %i.eo = load i8, ptr %i.en, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.ep = add i8 %i.eo, -65, !dbg !15306
  %i.eq = icmp ult i8 %i.ep, 26, !dbg !15306
  %i.er = select i1 %i.eq, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.6 = or i8 %i.er, %i.eo, !dbg !15306
  %i.es = icmp eq i8 %.sroa.012.0.i.6, 116, !dbg !15307
  br i1 %i.es, label %bb.af, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.af:                                            ; preds = %bb.ae
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 7, !dbg !15309
  %i.eu = load i8, ptr %i.et, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.ev = add i8 %i.eu, -65, !dbg !15306
  %i.ew = icmp ult i8 %i.ev, 26, !dbg !15306
  %i.ex = select i1 %i.ew, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.7 = or i8 %i.ex, %i.eu, !dbg !15306
  %i.ey = icmp eq i8 %.sroa.012.0.i.7, 101, !dbg !15307
  br i1 %i.ey, label %bb.ag, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph.lcssa, i64 8, !dbg !15309
  %i.fa = load i8, ptr %i.ez, align 1, !dbg !15305, !alias.scope !15141, !noundef !454 ; 2 uses
  %i.fb = add i8 %i.fa, -65, !dbg !15306
  %i.fc = icmp ult i8 %i.fb, 26, !dbg !15306
  %i.fd = select i1 %i.fc, i8 32, i8 0, !dbg !15306
  %.sroa.012.0.i.8 = or i8 %i.fd, %i.fa, !dbg !15306
  %i.fe = icmp eq i8 %.sroa.012.0.i.8, 100, !dbg !15307
  br i1 %i.fe, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15308

_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread: ; preds = %bb.be, %bb.bd, %bb.ag, %bb.at, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.ai
  %.sroa.032.0 = phi i8 [ 0, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.ai ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aj ], [ 0, %bb.as ], [ 0, %bb.ak ], [ %spec.select, %bb.at ], [ 0, %bb.al ], [ 0, %bb.ap ], [ 0, %bb.am ], [ 2, %bb.ag ], [ 0, %bb.be ], [ 0, %bb.bd ], !dbg !15310
  %.not96 = icmp eq i8 %.sroa.443.0.ph431, -1, !dbg !15311
  %i.ff = fcmp ogt float %.sroa.011.0.ph.lcssa, %.sroa.041.0.ph432
  %or.cond105 = select i1 %.not96, i1 true, i1 %i.ff, !dbg !15312 ; 2 uses
  %.sroa.443.1 = select i1 %or.cond105, i8 %.sroa.032.0, i8 %.sroa.443.0.ph431, !dbg !15312 ; 2 uses
  %.sroa.041.1 = select i1 %or.cond105, float %.sroa.011.0.ph.lcssa, float %.sroa.041.0.ph432, !dbg !15312
  %i.fg = trunc nuw i8 %.sroa.555.0..sroa_idx.promoted413 to i1, !dbg !15202
  br i1 %i.fg, label %_RNvMsf_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_13SplitInternalcE4nextCsbaWXNhtWAp9_11foundations.exit.thread, label %.lr.ph405, !dbg !15202

bb.ah:                                            ; preds = %bb.u
  %i.fh = tail call fastcc noundef zeroext i1 @_RINvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_chunksKj10_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef 28, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 28) #30, !dbg !15313
  br i1 %i.fh, label %bb.ai, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, !dbg !15314

bb.ai:                                            ; preds = %bb.ah
  %.not92 = icmp ne ptr %.sroa.019.0.ph.lcssa, null, !dbg !15315
  %.not93 = icmp eq i64 %.sroa.4.0.ph.lcssa, 11
  %or.cond107 = select i1 %.not92, i1 %.not93, i1 false, !dbg !15316
  br i1 %or.cond107, label %bb.aj, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15316

bb.aj:                                            ; preds = %bb.ai
  %i.fi = load i8, ptr %.sroa.019.0.ph.lcssa, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.fj = add i8 %i.fi, -65, !dbg !15318
  %i.fk = icmp ult i8 %i.fj, 26, !dbg !15318
  %i.fl = select i1 %i.fk, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192 = or i8 %i.fl, %i.fi, !dbg !15318
  %i.fm = icmp eq i8 %.sroa.012.0.i192, 97, !dbg !15319
  br i1 %i.fm, label %bb.ak, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.ak:                                            ; preds = %bb.aj
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 1, !dbg !15321
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.fp = add i8 %i.fo, -65, !dbg !15318
  %i.fq = icmp ult i8 %i.fp, 26, !dbg !15318
  %i.fr = select i1 %i.fq, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192.1 = or i8 %i.fr, %i.fo, !dbg !15318
  %i.fs = icmp eq i8 %.sroa.012.0.i192.1, 108, !dbg !15319
  br i1 %i.fs, label %bb.al, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.al:                                            ; preds = %bb.ak
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 2, !dbg !15321
  %i.fu = load i8, ptr %i.ft, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.fv = add i8 %i.fu, -65, !dbg !15318
  %i.fw = icmp ult i8 %i.fv, 26, !dbg !15318
  %i.fx = select i1 %i.fw, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192.2 = or i8 %i.fx, %i.fu, !dbg !15318
  %i.fy = icmp eq i8 %.sroa.012.0.i192.2, 108, !dbg !15319
  br i1 %i.fy, label %bb.am, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.am:                                            ; preds = %bb.al
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 3, !dbg !15321
  %i.ga = load i8, ptr %i.fz, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.gb = add i8 %i.ga, -65, !dbg !15318
  %i.gc = icmp ult i8 %i.gb, 26, !dbg !15318
  %i.gd = select i1 %i.gc, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192.3 = or i8 %i.gd, %i.ga, !dbg !15318
  %i.ge = icmp eq i8 %.sroa.012.0.i192.3, 111, !dbg !15319
  br i1 %i.ge, label %bb.an, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.an:                                            ; preds = %bb.am
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 4, !dbg !15321
  %i.gg = load i8, ptr %i.gf, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.gh = add i8 %i.gg, -65, !dbg !15318
  %i.gi = icmp ult i8 %i.gh, 26, !dbg !15318
  %i.gj = select i1 %i.gi, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192.4 = or i8 %i.gj, %i.gg, !dbg !15318
  %i.gk = icmp eq i8 %.sroa.012.0.i192.4, 119, !dbg !15319
  br i1 %i.gk, label %bb.ao, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.ao:                                            ; preds = %bb.an
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 5, !dbg !15321
  %i.gm = load i8, ptr %i.gl, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.gn = add i8 %i.gm, -65, !dbg !15318
  %i.go = icmp ult i8 %i.gn, 26, !dbg !15318
  %i.gp = select i1 %i.go, i8 32, i8 0, !dbg !15318
  %.sroa.012.0.i192.5 = or i8 %i.gp, %i.gm, !dbg !15318
  %i.gq = icmp eq i8 %.sroa.012.0.i192.5, 45, !dbg !15319
  br i1 %i.gq, label %bb.ap, label %_RNvMNtNtCs3oUPovFnLWP_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, !dbg !15320

bb.ap:                                            ; preds = %bb.ao
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.019.0.ph.lcssa, i64 6, !dbg !15321
  %i.gs = load i8, ptr %i.gr, align 1, !dbg !15317, !alias.scope !15154, !noundef !454 ; 2 uses
  %i.gt = add i8 %i.gs, -65, !dbg !15318
  %i.gu = icmp ult i8 %i.gt, 26, !dbg !15318
  %i.gv = select i1 %i.gu, i8 32, i8 0, !dbg !15318
end_hunk_0
