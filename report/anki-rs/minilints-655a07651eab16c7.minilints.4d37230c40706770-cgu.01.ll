Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/minilints-655a07651eab16c7.minilints.4d37230c40706770-cgu.01?download=true
inline.NumInlined: 364
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h2c6f24ecf14d7339E":bb.a

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !39, !noalias !42
  %i.ag = icmp ult i64 %i.af, %i.n
  %.not.i = icmp ugt i64 %i.af, %.val6
  %or.cond.i = or i1 %i.ag, %.not.i
  br i1 %or.cond.i, label %.loopexit, label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.ah = sub nuw i64 %i.af, %i.v                 ; 5 uses
  %i.ai = add i64 %i.ah, %i.u                     ; 4 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %.not17.i = icmp ugt i64 %i.ai, %.val6
  %or.cond18.i = or i1 %i.aj, %.not17.i
  br i1 %or.cond18.i, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ah
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !42
  %i.al = icmp eq i32 %bcmp.i, 0
  br i1 %i.al, label %bb.m, label %bb.h

bb.k:                                             ; preds = %bb.c
  %i.am = load i8, ptr %i.a, align 1, !range !5, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k, %bb.c, %bb.a, %bb.n
  %.sroa.8.0 = phi i64 [ %i.i, %bb.c ], [ %.sroa.8.1, %bb.n ], [ undef, %bb.a ], [ undef, %bb.k ]
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %.sroa.0.1, %bb.n ], [ null, %bb.a ], [ null, %bb.k ]
  %i.ao = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ap = insertvalue { ptr, i64 } %i.ao, i64 %.sroa.8.0, 1
  ret { ptr, i64 } %i.ap

bb.m:                                             ; preds = %bb.j
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !39, !noalias !42
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4
  %i.as = sub nuw i64 %i.ar, %i.ai
  store i64 %i.ah, ptr %i.aq, align 8
  br label %bb.n

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.d
  store i8 1, ptr %i.a, align 1
  %i.at = load i64, ptr %0, align 8, !noundef !4  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !noundef !4
  %i.aw = sub nuw i64 %i.av, %i.at
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.loopexit
  %.sroa.8.1 = phi i64 [ %i.as, %bb.m ], [ %i.aw, %.loopexit ]
  %.pn = phi i64 [ %i.ai, %bb.m ], [ %i.at, %.loopexit ]
  %.sroa.0.1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.pn
  br label %bb.l
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i16 noundef range(i16 1, 0) %2, i1 noundef zeroext %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 11 uses
  br i1 %3, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.h = icmp ult i64 %i.f, 4
  %i.i = getelementptr i8, ptr %i.g, i64 %i.f     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -4
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us
  %.sroa.0.015.us = phi i16 [ %i.w, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ %2, %.preheader ] ; 2 uses
  %i.k = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.015.us, i1 true) ; 2 uses
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr i8, ptr %i.c, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h4e36e0b63f1afef0E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly align 1 %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !50 ; 2 uses
  %.sroa.515.0.copyload.i.us = load ptr, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !50 ; 2 uses
  %.sroa.616.0.copyload.i.us = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !50 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !50 ; 2 uses
  %umax.i.us = call i64 @llvm.umax.i64(i64 %.sroa.616.0.copyload.i.us, i64 %.sroa.8.0.copyload.i.us)
  %exitcond.not.i.us24.not = icmp ult i64 %.sroa.616.0.copyload.i.us, %.sroa.8.0.copyload.i.us
  br i1 %exitcond.not.i.us24.not, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us.preheader", label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us.preheader": ; preds = %.preheader.split.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.us) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.515.0.copyload.i.us) ]
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us"

bb.b:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us"
  %i.p = add i64 %.sroa.616.0.i.us25, 1           ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.p, %umax.i.us
  br i1 %exitcond.not.i.us, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us.preheader", %bb.b
  %.sroa.616.0.i.us25 = phi i64 [ %i.p, %bb.b ], [ %.sroa.616.0.copyload.i.us, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us.preheader" ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.us, i64 %.sroa.616.0.i.us25
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.515.0.copyload.i.us, i64 %.sroa.616.0.i.us25
  %i.s = load i8, ptr %i.q, align 1, !noundef !4
  %i.t = load i8, ptr %i.r, align 1, !noundef !4
  %.not13.i.us = icmp eq i8 %i.s, %i.t
  br i1 %.not13.i.us, label %bb.b, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us: ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h572655e8fa0386f5E.exit.i.us"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.u = shl nuw i16 1, %i.k
  %i.v = xor i16 %i.u, -1
  %i.w = and i16 %.sroa.0.015.us, %i.v            ; 2 uses
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %.loopexit, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %bb.d
  %.sroa.0.015 = phi i16 [ %i.al, %bb.d ], [ %2, %.preheader ] ; 2 uses
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.0.015, i1 true) ; 2 uses
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr i8, ptr %i.c, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 1      ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.023.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.022.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.023.i, align 1, !alias.scope !45, !noalias !48
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.022.i, align 1, !alias.scope !48, !noalias !45
  %.not.i = icmp eq i32 %.sroa.04.0.val.i, %.sroa.08.0.val.i
  br i1 %.not.i, label %bb.c, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14

bb.c:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.023.i, i64 4 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.08.022.i, i64 4
  %i.ah = icmp ult ptr %i.af, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12: ; preds = %.preheader.split.us, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit: ; preds = %bb.c, %.preheader.split
  %.val14.i = load i32, ptr %i.ad, align 1, !alias.scope !45, !noalias !48
  %.val.i = load i32, ptr %i.j, align 1, !alias.scope !48, !noalias !45
  %i.ai = icmp eq i32 %.val14.i, %.val.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.ai, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %bb.d, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12, %bb.a
  %.sroa.03.0 = phi i1 [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread12 ], [ false, %bb.a ], [ false, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit.us ], [ true, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit ], [ false, %bb.d ]
  ret i1 %.sroa.03.0

bb.d:                                             ; preds = %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit.thread.loopexit14, %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit
  %i.aj = shl nuw i16 1, %i.y
  %i.ak = xor i16 %i.aj, -1
  %i.al = and i16 %.sroa.0.015, %i.ak             ; 2 uses
  %i.am = icmp eq i16 %i.al, 0
  br i1 %i.am, label %.loopexit, label %.preheader.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef range(i64 3, 35) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.b

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread: ; preds = %.split.us.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader", %.lr.ph.split.us.i.i, %bb.bd, %bb.b, %bb.bf, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"
  %.sroa.0.0 = phi i8 [ %i.jm, %bb.bf ], [ 0, %bb.b ], [ %.sroa.0.027, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit" ], [ %.sroa.015.5.i, %bb.bd ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
  %i.d = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.bf, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %1, 33
  br i1 %i.e, label %bb.ar, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit: ; preds = %bb.as, %bb.ar, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %i.f = load i64, ptr %i.b, align 8, !range !35, !alias.scope !51, !noalias !54, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.g, label %bb.m, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.j = load i8, ptr %i.i, align 2, !range !5, !alias.scope !56, !noalias !59, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !51, !noalias !54 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !56, !noalias !59, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !56, !noalias !59, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.l, align 8, !alias.scope !56, !noalias !59 ; 2 uses
  %i.q = trunc nuw i8 %.promoted26.i to i1
  %i.r = icmp eq i64 %.promoted.i, 0
  br i1 %i.r, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.p
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.d
  %i.s = icmp eq i64 %.promoted.i, %i.p
  br i1 %i.s, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.promoted.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !61, !noalias !64, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel, %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %.promoted.i ; 4 uses
  %i.x = icmp samesign eq i64 %.promoted.i, %i.p
  br i1 %i.x, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.w, align 1, !noalias !66, !noundef !4 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = add nuw nsw i64 %.promoted.i, 1
  %i.ae = icmp samesign ne i64 %i.ad, %i.p
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.aa, align 1, !noalias !66, !noundef !4
  %i.ag = shl nuw nsw i32 %i.ac, 6
  %i.ah = and i8 %i.af, 63
  %i.ai = zext nneg i8 %i.ah to i32               ; 2 uses
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = icmp samesign ugt i8 %i.y, -33
  br i1 %i.ak, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i.peel", label %bb.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel"
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.am = add nuw nsw i64 %.promoted.i, 2
  %i.an = icmp samesign ne i64 %i.am, %i.p
  call void @llvm.assume(i1 %i.an)
  %i.ao = load i8, ptr %i.al, align 1, !noalias !66, !noundef !4
  %i.ap = shl nuw nsw i32 %i.ai, 6
  %i.aq = and i8 %i.ao, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar            ; 2 uses
  %i.at = shl nuw nsw i32 %i.ac, 12
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = icmp samesign ugt i8 %i.y, -17
  br i1 %i.av, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i.peel", label %bb.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i.peel": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i.peel"
  %i.aw = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.ax = add nuw nsw i64 %.promoted.i, 3
  %i.ay = icmp samesign ne i64 %i.ax, %i.p
  call void @llvm.assume(i1 %i.ay)
  %i.az = load i8, ptr %i.aw, align 1, !noalias !66, !noundef !4
  %i.ba = shl nuw nsw i32 %i.ac, 18
  %i.bb = and i32 %i.ba, 1835008
  %i.bc = shl nuw nsw i32 %i.as, 6
  %i.bd = and i8 %i.az, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.bb
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = zext nneg i8 %i.y to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i.peel", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel"
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.au, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i.peel" ], [ %i.bg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i.peel" ], [ %i.aj, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel" ], [ %i.bh, %bb.h ] ; 4 uses
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  call void @llvm.assume(i1 %i.bi)
  br i1 %i.q, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bk, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bl, i64 3, i64 4
  br label %bb.n

bb.m:                                             ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !51, !noalias !54, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !51, !noalias !54, !nonnull !4, !align !15, !noundef !4 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !51, !noalias !54, !noundef !4 ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !51, !noalias !54, !nonnull !4, !align !15, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !51, !noalias !54, !noundef !4 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.by = add i64 %i.bw, -1                       ; 4 uses
  br i1 %i.bo, label %bb.af, label %bb.s

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bz = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.ca = icmp eq i64 %i.bz, 0
  br i1 %i.ca, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ult i64 %i.bz, %i.p
  br i1 %.not.i.i.i, label %bb.p, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.o
  %i.cb = icmp eq i64 %i.bz, %i.p
  br i1 %i.cb, label %bb.q, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !61, !noalias !70, !noundef !4
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p, %.split.i.i.i, %bb.n
  %i.cf = icmp samesign eq i64 %i.bz, %i.p
  br i1 %i.cf, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !71, !noundef !4 ; 3 uses
  %i.ci = icmp sgt i8 %i.ch, -1
  br i1 %i.ci, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i": ; preds = %bb.r
  %i.cj = add nuw nsw i64 %i.bz, 1
  %i.ck = icmp samesign ne i64 %i.cj, %i.p
  call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp samesign ugt i8 %i.ch, -33
  br i1 %i.cl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i"
  %i.cm = add nuw nsw i64 %i.bz, 2
  %i.cn = icmp samesign ne i64 %i.cm, %i.p
  call void @llvm.assume(i1 %i.cn)
  %i.co = icmp samesign ugt i8 %i.ch, -17
  br i1 %i.co, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i", label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i"
  %i.cp = add nuw nsw i64 %i.bz, 3
  %i.cq = icmp samesign ne i64 %i.cp, %i.p
  call void @llvm.assume(i1 %i.cq)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.loopexit:                                        ; preds = %bb.p, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa147 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.e ], [ %i.bz, %.split.i.i.i ], [ %i.bz, %bb.p ]
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef %.lcssa147, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !noalias !70
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %.promoted.i13 = load i64, ptr %i.bx, align 8, !alias.scope !72, !noalias !79 ; 2 uses
  %i.cr = add i64 %.promoted.i13, %i.by           ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.bs
  br i1 %i.cs, label %.lr.ph.i16, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i16:                                       ; preds = %bb.s
end_hunk_0
begin_hunk_1_@"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E":bb.a
  %.sink.i = phi i64 [ %i.cy, %bb.ab ], [ 0, %bb.ae ], [ 0, %bb.u ]
  %.ph71.i = phi i64 [ %i.dz, %bb.ab ], [ %i.ef, %bb.ae ], [ %i.dj, %bb.u ] ; 2 uses
  %i.dk = add i64 %.ph71.i, %i.by                 ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.bs
  br i1 %i.dl, label %bb.t, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

bb.w:                                             ; preds = %bb.ac
  %i.dm = add i64 %.sroa.02.0.i20268, 1           ; 2 uses
  %exitcond.not.i21 = icmp eq i64 %i.dm, %umax49.i19
  br i1 %exitcond.not.i21, label %.preheader32.preheader, label %.lr.ph269

.preheader32.preheader:                           ; preds = %bb.w, %bb.v
  %i.dn = icmp ult i64 %i.da, %i.cv
  br i1 %i.dn, label %.lr.ph271, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph269:                                        ; preds = %bb.v, %bb.w
  %.sroa.02.0.i20268 = phi i64 [ %i.dm, %bb.w ], [ %.sroa.0.0.i.i18, %bb.v ] ; 4 uses
  %i.do = add i64 %.sroa.02.0.i20268, %i.cz       ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.bs
  br i1 %i.dp, label %bb.ac, label %bb.ad

.preheader32:                                     ; preds = %bb.z
  %i.dq = icmp ult i64 %i.da, %i.dr
  br i1 %i.dq, label %.lr.ph271, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph271:                                        ; preds = %.preheader32.preheader, %.preheader32
  %.sroa.2.0.i24270 = phi i64 [ %i.dr, %.preheader32 ], [ %i.cv, %.preheader32.preheader ]
  %i.dr = add i64 %.sroa.2.0.i24270, -1           ; 6 uses
  %i.ds = icmp ult i64 %i.dr, %i.bw
  br i1 %i.ds, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.lr.ph271
  %i.dt = add i64 %i.dr, %i.cz                    ; 3 uses
  %i.du = icmp ult i64 %i.dt, %i.bs
  br i1 %i.du, label %bb.z, label %bb.aa

bb.y:                                             ; preds = %.lr.ph271
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dr, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !82
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dr
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !77, !noalias !83, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dt
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !75, !noalias !81, !noundef !4
  %.not.i25 = icmp eq i8 %i.dw, %i.dy
  br i1 %.not.i25, label %.preheader32, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dt, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !82
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dz = add i64 %i.cz, %i.cx
  br label %.sink.split.i

bb.ac:                                            ; preds = %.lr.ph269
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i20268
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !77, !noalias !83, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.do
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !75, !noalias !81, !noundef !4
  %.not21.i23 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not21.i23, label %bb.w, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph269
  %i.ee = add i64 %i.cz, %.sroa.0.0.i.i18
  %umax.i22 = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ee)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i22, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !82
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %.reass.reass = add i64 %i.cz, %invariant.op
  %i.ef = add i64 %.reass.reass, %.sroa.02.0.i20268
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %.promoted.i8 = load i64, ptr %i.bx, align 8, !alias.scope !84, !noalias !91 ; 2 uses
  %i.eg = add i64 %.promoted.i8, %i.by            ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.bs
  br i1 %i.eh, label %.lr.ph.i11, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i11:                                       ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !84, !noalias !91, !noundef !4
  %i.ek = load i64, ptr %i.h, align 8, !alias.scope !84, !noalias !91 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !84, !noalias !91
  %umax49.i = call i64 @llvm.umax.i64(i64 %i.ek, i64 %i.bw)
  %i.en = add i64 %i.ek, -1
  %.first_iter = icmp ult i64 %i.en, %i.bw
  %exitcond.not.i272.not = icmp ult i64 %i.ek, %i.bw
  %invariant.op359 = sub i64 1, %i.ek
  %.not30275 = icmp eq i64 %i.ek, 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ai, %.lr.ph.i11
  %i.eo = phi i64 [ %.promoted.i8, %.lr.ph.i11 ], [ %i.ey, %bb.ai ] ; 6 uses
  %i.ep = phi i64 [ %i.eg, %.lr.ph.i11 ], [ %i.ez, %bb.ai ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !87, !noalias !93, !noundef !4
  %i.es = and i8 %i.er, 63
  %i.et = zext nneg i8 %i.es to i64
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.eu, %i.ej
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.ah, label %.preheader93.preheader

.preheader93.preheader:                           ; preds = %bb.ag
  br i1 %exitcond.not.i272.not, label %.lr.ph274, label %.preheader.preheader

bb.ah:                                            ; preds = %bb.ag
  %i.ex = add i64 %i.eo, %i.bw
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aq, %bb.an, %bb.ah
  %i.ey = phi i64 [ %i.fr, %bb.aq ], [ %i.ex, %bb.ah ], [ %i.fl, %bb.an ] ; 2 uses
  %i.ez = add i64 %i.ey, %i.by                    ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %i.bs
  br i1 %i.fa, label %bb.ag, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.preheader93:                                     ; preds = %bb.ao
  %i.fb = add i64 %.sroa.02.0.i273, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fb, %umax49.i
  br i1 %exitcond.not.i, label %.preheader.preheader, label %.lr.ph274

.preheader.preheader:                             ; preds = %.preheader93, %.preheader93.preheader
  br i1 %.not30275, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph277

.lr.ph274:                                        ; preds = %.preheader93.preheader, %.preheader93
  %.sroa.02.0.i273 = phi i64 [ %i.fb, %.preheader93 ], [ %i.ek, %.preheader93.preheader ] ; 4 uses
  %i.fc = add i64 %.sroa.02.0.i273, %i.eo         ; 2 uses
  %i.fd = icmp ult i64 %i.fc, %i.bs
  br i1 %i.fd, label %bb.ao, label %bb.ap

.preheader:                                       ; preds = %bb.al
  %.not30 = icmp eq i64 %i.fe, 0
  br i1 %.not30, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i276 = phi i64 [ %i.fe, %.preheader ], [ %i.ek, %.preheader.preheader ]
  %i.fe = add i64 %.sroa.2.0.i276, -1             ; 5 uses
  br i1 %.first_iter, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph277
  %i.ff = add i64 %i.fe, %i.eo                    ; 3 uses
  %i.fg = icmp ult i64 %i.ff, %i.bs
  br i1 %i.fg, label %bb.al, label %bb.am

bb.ak:                                            ; preds = %.lr.ph277
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fe, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !94
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !89, !noalias !95, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ff
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !87, !noalias !93, !noundef !4
  %.not.i12 = icmp eq i8 %i.fi, %i.fk
  br i1 %.not.i12, label %.preheader, label %bb.an

bb.am:                                            ; preds = %bb.aj
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ff, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !94
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fl = add i64 %i.eo, %i.em
  br label %bb.ai

bb.ao:                                            ; preds = %.lr.ph274
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i273
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !89, !noalias !95, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fc
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !87, !noalias !93, !noundef !4
  %.not21.i = icmp eq i8 %i.fn, %i.fp
  br i1 %.not21.i, label %.preheader93, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph274
  %i.fq = add i64 %i.eo, %i.ek
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.fq)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !94
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %.reass231.reass = add i64 %i.eo, %invariant.op359
  %i.fr = add i64 %.reass231.reass, %.sroa.02.0.i273
  br label %bb.ai

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit": ; preds = %.sink.split.i, %.preheader32.preheader, %.preheader32, %bb.ai, %.preheader.preheader, %.preheader, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i", %bb.r, %bb.f, %bb.af, %bb.s, %bb.i, %bb.q, %.preheader.i
  %.sroa.0.027 = phi i8 [ 0, %bb.s ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit16.i.i.i" ], [ 0, %.preheader.i ], [ 1, %bb.q ], [ 1, %.preheader.preheader ], [ 1, %bb.i ], [ 1, %.preheader ], [ 0, %bb.af ], [ %.promoted26.i, %bb.f ], [ 1, %.preheader32 ], [ 1, %bb.r ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i" ], [ 1, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit14.i.i.i" ], [ 0, %bb.ai ], [ 0, %.sink.split.i ], [ 1, %.preheader32.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.ar:                                            ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.fs = load i8, ptr %0, align 1, !alias.scope !96, !noalias !99, !noundef !4 ; 2 uses
  %i.ft = add nsw i64 %1, -1                      ; 2 uses
  %i.fu = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 33) %1, i64 4) ; 2 uses
  %4 = icmp samesign ult i64 %i.fu, %1
  br i1 %4, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.as:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i"
  %i.fv = icmp ult i64 %i.fu, %i.fx
  br i1 %i.fv, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph:                                           ; preds = %bb.ar, %bb.as
  %i.fw = phi i64 [ %i.fx, %bb.as ], [ %1, %bb.ar ]
  %i.fx = add nsw i64 %i.fw, -1                   ; 11 uses
  %i.fy = icmp ult i64 %i.fx, %1
  br i1 %i.fy, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i", label %bb.at

bb.at:                                            ; preds = %.lr.ph
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fx, i64 noundef range(i64 3, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !101
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i": ; preds = %.lr.ph
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !96, !noalias !109, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.ga, %i.fs
  br i1 %.not.i.not.i.i, label %bb.as, label %bb.au

bb.au:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i"
  %i.gb = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.gc = icmp ult i64 %3, %i.gb
  br i1 %i.gc, label %.lr.ph.split.us.i.i, label %bb.av

.lr.ph.split.us.i.i:                              ; preds = %bb.au
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !110, !noalias !111
  %i.gd = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gd, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.ge = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i278 = icmp ugt i64 %1, %i.ge
  br i1 %.not28.i.i278, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"
  %i.gf = phi i64 [ %i.gi, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %i.ge, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %.pn.i279 = phi ptr [ %i.gg, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.pn.i279, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gg, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !110, !noalias !111
  %i.gh = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gh, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.gi = add nsw i64 %i.gf, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gi
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.av:                                            ; preds = %bb.au
  %i.gj = insertelement <1 x i8> poison, i8 %i.ga, i64 0
  %i.gk = insertelement <1 x i8> poison, i8 %i.fs, i64 0
  %i.gl = shufflevector <1 x i8> %i.gk, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gm = shufflevector <1 x i8> %i.gj, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !110
  store ptr %2, ptr %i.a, align 8, !noalias !110
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.go, align 8, !noalias !110
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.gn, ptr %i.gp, align 8, !noalias !110
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ft, ptr %i.gq, align 8, !noalias !110
  %i.gr = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.gr, %3
  br i1 %.not.i, label %.lr.ph.i7, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.az, %bb.av
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.av ], [ %.sroa.015.2.3.i, %bb.az ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.av ], [ %i.ii, %bb.az ] ; 2 uses
  %i.gs = add i64 %.sroa.07.0.lcssa.i, %i.gb
  %i.gt = icmp uge i64 %i.gs, %3
  %i.gu = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3113.i = select i1 %i.gt, i1 true, i1 %i.gu
  br i1 %or.cond3113.i, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph.i7:                                        ; preds = %bb.av, %bb.az
  %.sroa.07.0111.i = phi i64 [ %i.ii, %bb.az ], [ 0, %bb.av ] ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0111.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.gv, align 1, !alias.scope !99, !noalias !115
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.fx
  %.val.i.i = load <16 x i8>, ptr %i.gw, align 1, !alias.scope !99, !noalias !115
  %i.gx = icmp eq <16 x i8> %.val3.i.i, %i.gl
  %i.gy = icmp eq <16 x i8> %.val.i.i, %i.gm
  %narrow.i.i = select <16 x i1> %i.gx, <16 x i1> %i.gy, <16 x i1> zeroinitializer
  %i.gz = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.ha, align 1, !alias.scope !99, !noalias !115
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.fx
  %.val.i.1.i = load <16 x i8>, ptr %i.hb, align 1, !alias.scope !99, !noalias !115
  %i.hc = icmp eq <16 x i8> %.val3.i.1.i, %i.gl
  %i.hd = icmp eq <16 x i8> %.val.i.1.i, %i.gm
  %narrow.i.1.i = select <16 x i1> %i.hc, <16 x i1> %i.hd, <16 x i1> zeroinitializer
  %i.he = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.hf, align 1, !alias.scope !99, !noalias !115
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.fx
  %.val.i.2.i = load <16 x i8>, ptr %i.hg, align 1, !alias.scope !99, !noalias !115
  %i.hh = icmp eq <16 x i8> %.val3.i.2.i, %i.gl
  %i.hi = icmp eq <16 x i8> %.val.i.2.i, %i.gm
  %narrow.i.2.i = select <16 x i1> %i.hh, <16 x i1> %i.hi, <16 x i1> zeroinitializer
  %i.hj = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gv, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.hk, align 1, !alias.scope !99, !noalias !115
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.fx
  %.val.i.3.i = load <16 x i8>, ptr %i.hl, align 1, !alias.scope !99, !noalias !115
  %i.hm = icmp eq <16 x i8> %.val3.i.3.i, %i.gl
  %i.hn = icmp eq <16 x i8> %.val.i.3.i, %i.gm
  %narrow.i.3.i = select <16 x i1> %i.hm, <16 x i1> %i.hn, <16 x i1> zeroinitializer
  %i.ho = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.hp = icmp eq i16 %i.gz, 0
  br i1 %i.hp, label %.preheader104.1.i, label %bb.ba

.preheader104.1.i:                                ; preds = %bb.ba, %.lr.ph.i7
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.in, %bb.ba ] ; 3 uses
  %i.hq = icmp eq i16 %i.he, 0
  br i1 %i.hq, label %.preheader104.2.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader104.1.i
  %i.hr = or disjoint i64 %.sroa.07.0111.i, 16
  %i.hs = trunc nuw i8 %.sroa.015.2.i to i1
  %i.ht = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hr, i16 noundef %i.he, i1 noundef zeroext %i.hs)
  %i.hu = zext i1 %i.ht to i8
  %i.hv = or i8 %.sroa.015.2.i, %i.hu
  br label %.preheader104.2.i

.preheader104.2.i:                                ; preds = %bb.aw, %.preheader104.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader104.1.i ], [ %i.hv, %bb.aw ] ; 3 uses
  %i.hw = icmp eq i16 %i.hj, 0
  br i1 %i.hw, label %.preheader104.3.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader104.2.i
  %i.hx = or disjoint i64 %.sroa.07.0111.i, 32
  %i.hy = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.hz = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hx, i16 noundef %i.hj, i1 noundef zeroext %i.hy)
  %i.ia = zext i1 %i.hz to i8
  %i.ib = or i8 %.sroa.015.2.1.i, %i.ia
  br label %.preheader104.3.i

.preheader104.3.i:                                ; preds = %bb.ax, %.preheader104.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader104.2.i ], [ %i.ib, %bb.ax ] ; 3 uses
  %i.ic = icmp eq i16 %i.ho, 0
  br i1 %i.ic, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader104.3.i
  %i.id = or disjoint i64 %.sroa.07.0111.i, 48
  %i.ie = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.if = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.id, i16 noundef %i.ho, i1 noundef zeroext %i.ie)
  %i.ig = zext i1 %i.if to i8
  %i.ih = or i8 %.sroa.015.2.2.i, %i.ig
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader104.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader104.3.i ], [ %i.ih, %bb.ay ] ; 2 uses
  %i.ii = add i64 %.sroa.07.0111.i, 64            ; 3 uses
  %i.ij = add i64 %i.ii, %i.gr
  %i.ik = icmp uge i64 %i.ij, %3
  %i.il = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.ik, i1 true, i1 %i.il
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i7

bb.ba:                                            ; preds = %.lr.ph.i7
  %i.im = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0111.i, i16 noundef %i.gz, i1 noundef zeroext false)
  %i.in = zext i1 %i.im to i8
  br label %.preheader104.1.i

._crit_edge.i:                                    ; preds = %bb.bb, %.preheader.i6
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i6 ], [ %.sroa.015.4.i, %bb.bb ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.gu, %.preheader.i6 ], [ %i.jf, %bb.bb ]
  %i.io = sub nuw i64 %3, %i.ft
  %i.ip = add i64 %i.io, -16                      ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ip ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.iq, align 1, !alias.scope !99, !noalias !118
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 %i.fx
  %.val.i66.i = load <16 x i8>, ptr %i.ir, align 1, !alias.scope !99, !noalias !118
  %i.is = icmp eq <16 x i8> %.val3.i65.i, %i.gl
  %i.it = icmp eq <16 x i8> %.val.i66.i, %i.gm
  %narrow.i67.i = select <16 x i1> %i.is, <16 x i1> %i.it, <16 x i1> zeroinitializer
  %i.iu = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.iv = icmp eq i16 %i.iu, 0
  br i1 %i.iv, label %bb.bd, label %bb.be

.lr.ph115.i:                                      ; preds = %.preheader.i6, %bb.bb
  %.sroa.07.1114.i = phi i64 [ %i.jc, %bb.bb ], [ %.sroa.07.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1114.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.iw, align 1, !alias.scope !99, !noalias !121
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.fx
  %.val.i69.i = load <16 x i8>, ptr %i.ix, align 1, !alias.scope !99, !noalias !121
  %i.iy = icmp eq <16 x i8> %.val3.i68.i, %i.gl
  %i.iz = icmp eq <16 x i8> %.val.i69.i, %i.gm
  %narrow.i70.i = select <16 x i1> %i.iy, <16 x i1> %i.iz, <16 x i1> zeroinitializer
  %i.ja = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.jb = icmp eq i16 %i.ja, 0
  br i1 %i.jb, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %.lr.ph115.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph115.i ], [ %i.jh, %bb.bc ] ; 2 uses
  %i.jc = add i64 %.sroa.07.1114.i, 16            ; 2 uses
  %i.jd = add i64 %i.jc, %i.gb
  %i.je = icmp uge i64 %i.jd, %3
  %i.jf = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.je, %i.jf
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph115.i

bb.bc:                                            ; preds = %.lr.ph115.i
  %i.jg = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1114.i, i16 noundef %i.ja, i1 noundef zeroext false)
  %i.jh = zext i1 %i.jg to i8
end_hunk_1
