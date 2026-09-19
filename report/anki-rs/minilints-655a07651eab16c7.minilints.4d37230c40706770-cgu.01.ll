Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/minilints-655a07651eab16c7.minilints.4d37230c40706770-cgu.01?download=true
inline.NumInlined: 364
inline.NumDeleted: 189
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZN4core3str4iter22SplitInternal$LT$P$GT$9next_back17h2c6f24ecf14d7339E":bb.a

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.f
  store i64 %i.af, ptr %i.o, align 8, !alias.scope !43, !noalias !44
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
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.r, i64 %i.u), !noalias !44
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
  store i64 %i.ah, ptr %i.o, align 8, !alias.scope !43, !noalias !44
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
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !7, !noundef !4
  %i.c = getelementptr i8, ptr %i.b, i64 %1       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 4 uses
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !4, !align !7, !noundef !4 ; 3 uses
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
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr i8, ptr %i.n, i64 %i.f
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h4e36e0b63f1afef0E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 %i.n, ptr noundef nonnull readonly %i.o, ptr noundef nonnull readonly align 1 %i.g, ptr noundef nonnull readonly %i.i)
  %.sroa.0.0.copyload.i.us = load ptr, ptr %i.a, align 8, !noalias !51 ; 2 uses
  %.sroa.515.0.copyload.i.us = load ptr, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !51 ; 2 uses
  %.sroa.616.0.copyload.i.us = load i64, ptr %.sroa.616.0..sroa_idx.i, align 8, !noalias !51 ; 3 uses
  %.sroa.8.0.copyload.i.us = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !51 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.f
  %i.ad = getelementptr i8, ptr %i.ac, i64 -4     ; 3 uses
  %i.ae = icmp ult ptr %i.ab, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE.exit

.lr.ph.i:                                         ; preds = %.preheader.split, %bb.c
  %.sroa.04.023.i = phi ptr [ %i.af, %bb.c ], [ %i.ab, %.preheader.split ] ; 2 uses
  %.sroa.08.022.i = phi ptr [ %i.ag, %bb.c ], [ %i.g, %.preheader.split ] ; 2 uses
  %.sroa.04.0.val.i = load i32, ptr %.sroa.04.023.i, align 1, !alias.scope !49, !noalias !50
  %.sroa.08.0.val.i = load i32, ptr %.sroa.08.022.i, align 1, !alias.scope !50, !noalias !49
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
  %.val14.i = load i32, ptr %i.ad, align 1, !alias.scope !49, !noalias !50
  %.val.i = load i32, ptr %i.j, align 1, !alias.scope !50, !noalias !49
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
  %.sroa.0.0 = phi i8 [ %i.jk, %bb.bf ], [ 0, %bb.b ], [ %.sroa.0.027, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit" ], [ %.sroa.015.5.i, %bb.bd ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ 1, %.split.us.i.i ]
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
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.f = load i64, ptr %i.b, align 8, !range !11, !alias.scope !92, !noalias !93, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.g, label %bb.m, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.j = load i8, ptr %i.i, align 2, !range !5, !alias.scope !94, !noalias !95, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.h, align 8, !alias.scope !92, !noalias !93 ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !94, !noalias !95, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !94, !noalias !95, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.l, align 8, !alias.scope !94, !noalias !95 ; 2 uses
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
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !96, !noalias !97, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel, %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 %.promoted.i ; 4 uses
  %i.x = icmp samesign eq i64 %.promoted.i, %i.p
  br i1 %i.x, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %i.w, align 1, !noalias !98, !noundef !4 ; 5 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9f78bd86c2761330E.exit12.i.i.i.peel": ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ab = and i8 %i.y, 31
  %i.ac = zext nneg i8 %i.ab to i32               ; 3 uses
  %i.ad = add nuw nsw i64 %.promoted.i, 1
  %i.ae = icmp samesign ne i64 %i.ad, %i.p
  call void @llvm.assume(i1 %i.ae)
  %i.af = load i8, ptr %i.aa, align 1, !noalias !98, !noundef !4
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
  %i.ao = load i8, ptr %i.al, align 1, !noalias !98, !noundef !4
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
  %i.az = load i8, ptr %i.aw, align 1, !noalias !98, !noundef !4
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
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !92, !noalias !93, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8, !alias.scope !92, !noalias !93, !nonnull !4, !align !7, !noundef !4 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !92, !noalias !93, !noundef !4 ; 14 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !alias.scope !92, !noalias !93, !nonnull !4, !align !7, !noundef !4 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bw = load i64, ptr %i.bv, align 8, !alias.scope !92, !noalias !93, !noundef !4 ; 12 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.by = add i64 %i.bw, -1                       ; 4 uses
  br i1 %i.bo, label %bb.af, label %bb.s

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel, %bb.l ], [ 1, %bb.j ]
  %i.bz = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
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
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !96, !noalias !100, !noundef !4
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p, %.split.i.i.i, %bb.n
  %i.cf = icmp samesign eq i64 %i.bz, %i.p
  br i1 %i.cf, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bz
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !101, !noundef !4 ; 3 uses
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
  call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.p, i64 noundef %.lcssa147, i64 noundef %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23, !noalias !100
  unreachable

bb.s:                                             ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %.promoted.i13 = load i64, ptr %i.bx, align 8, !alias.scope !102, !noalias !105 ; 2 uses
  %i.cr = add i64 %.promoted.i13, %i.by           ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.bs
  br i1 %i.cs, label %.lr.ph.i16, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i16:                                       ; preds = %bb.s
end_hunk_0
begin_hunk_1_@"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E":bb.a

.sink.split.i:                                    ; preds = %bb.ae, %bb.ab, %bb.u
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
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dr, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !107
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.dr
  %i.dw = load i8, ptr %i.dv, align 1, !alias.scope !104, !noalias !108, !noundef !4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.dt
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !103, !noalias !106, !noundef !4
  %.not.i25 = icmp eq i8 %i.dw, %i.dy
  br i1 %.not.i25, label %.preheader32, label %bb.ab

bb.aa:                                            ; preds = %bb.x
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.dt, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !107
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.dz = add i64 %i.cz, %i.cx
  br label %.sink.split.i

bb.ac:                                            ; preds = %.lr.ph269
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i20268
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !104, !noalias !108, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.do
  %i.ed = load i8, ptr %i.ec, align 1, !alias.scope !103, !noalias !106, !noundef !4
  %.not21.i23 = icmp eq i8 %i.eb, %i.ed
  br i1 %.not21.i23, label %bb.w, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph269
  %i.ee = add i64 %i.cz, %.sroa.0.0.i.i18
  %umax.i22 = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.ee)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i22, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !107
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %.reass.reass = add i64 %i.cz, %invariant.op
  %i.ef = add i64 %.reass.reass, %.sroa.02.0.i20268
  br label %.sink.split.i

bb.af:                                            ; preds = %bb.m
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %.promoted.i8 = load i64, ptr %i.bx, align 8, !alias.scope !109, !noalias !112 ; 2 uses
  %i.eg = add i64 %.promoted.i8, %i.by            ; 2 uses
  %i.eh = icmp ult i64 %i.eg, %i.bs
  br i1 %i.eh, label %.lr.ph.i11, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit"

.lr.ph.i11:                                       ; preds = %bb.af
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ej = load i64, ptr %i.ei, align 8, !alias.scope !109, !noalias !112, !noundef !4
  %i.ek = load i64, ptr %i.h, align 8, !alias.scope !109, !noalias !112 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !109, !noalias !112
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
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !110, !noalias !113, !noundef !4
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
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fe, i64 noundef %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23, !noalias !114
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.fe
  %i.fi = load i8, ptr %i.fh, align 1, !alias.scope !111, !noalias !115, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ff
  %i.fk = load i8, ptr %i.fj, align 1, !alias.scope !110, !noalias !113, !noundef !4
  %.not.i12 = icmp eq i8 %i.fi, %i.fk
  br i1 %.not.i12, label %.preheader, label %bb.an

bb.am:                                            ; preds = %bb.aj
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.ff, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #23, !noalias !114
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.fl = add i64 %i.eo, %i.em
  br label %bb.ai

bb.ao:                                            ; preds = %.lr.ph274
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.sroa.02.0.i273
  %i.fn = load i8, ptr %i.fm, align 1, !alias.scope !111, !noalias !115, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.fc
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !110, !noalias !113, !noundef !4
  %.not21.i = icmp eq i8 %i.fn, %i.fp
  br i1 %.not21.i, label %.preheader93, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph274
  %i.fq = add i64 %i.eo, %i.ek
  %umax.i = call i64 @llvm.umax.i64(i64 %i.bs, i64 %i.fq)
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %umax.i, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !114
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.fs = load i8, ptr %0, align 1, !alias.scope !116, !noalias !117, !noundef !4 ; 2 uses
  %i.ft = add nsw i64 %1, -1                      ; 2 uses
  %i.fu = tail call i64 @llvm.usub.sat.i64(i64 range(i64 3, 33) %1, i64 4) ; 2 uses
  %i.fv = icmp samesign ult i64 %i.fu, %1
  br i1 %i.fv, label %.lr.ph.a, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

bb.as:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i"
  %i.fw = icmp ult i64 %i.fu, %5
  br i1 %i.fw, label %.lr.ph.a, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit

.lr.ph.a:                                         ; preds = %bb.ar, %bb.as
  %4 = phi i64 [ %5, %bb.as ], [ %1, %bb.ar ]
  %5 = add nsw i64 %4, -1                         ; 11 uses
  %6 = icmp ult i64 %5, %1
  br i1 %6, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i", label %bb.at

bb.at:                                            ; preds = %.lr.ph.a
  tail call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %5, i64 noundef range(i64 3, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !118
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i": ; preds = %.lr.ph.a
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 %5
  %i.fy = load i8, ptr %i.fx, align 1, !alias.scope !116, !noalias !119, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.fy, %i.fs
  br i1 %.not.i.not.i.i, label %bb.as, label %bb.au

bb.au:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE.exit.i.i"
  %i.fz = add nuw nsw i64 %1, 15                  ; 3 uses
  %i.ga = icmp ult i64 %3, %i.fz
  br i1 %i.ga, label %.lr.ph.split.us.i.i, label %bb.av

.lr.ph.split.us.i.i:                              ; preds = %bb.au
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %2, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !120, !noalias !121
  %i.gb = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gb, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader": ; preds = %.lr.ph.split.us.i.i
  %i.gc = add nsw i64 %3, -1                      ; 2 uses
  %.not28.i.i278 = icmp ugt i64 %1, %i.gc
  br i1 %.not28.i.i278, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"
  %i.gd = phi i64 [ %i.gg, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %i.gc, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %.pn.i279 = phi ptr [ %i.ge, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i" ], [ %2, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i.preheader" ]
  %i.ge = getelementptr inbounds nuw i8, ptr %.pn.i279, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ge, ptr noundef nonnull readonly align 1 dereferenceable(1) %0, i64 range(i64 3, 33) %1), !alias.scope !120, !noalias !121
  %i.gf = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gf, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h4f9b93afbf76d6d6E.exit.backedge.us.i.i": ; preds = %.split.us.i.i
  %i.gg = add nsw i64 %i.gd, -1                   ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gg
  br i1 %.not28.i.i, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread, label %.split.us.i.i

bb.av:                                            ; preds = %bb.au
  %i.gh = insertelement <1 x i8> poison, i8 %i.fy, i64 0
  %i.gi = insertelement <1 x i8> poison, i8 %i.fs, i64 0
  %i.gj = shufflevector <1 x i8> %i.gi, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gk = shufflevector <1 x i8> %i.gh, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120
  store ptr %2, ptr %i.a, align 8, !noalias !120
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.gm, align 8, !noalias !120
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.gl, ptr %i.gn, align 8, !noalias !120
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ft, ptr %i.go, align 8, !noalias !120
  %i.gp = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.gp, %3
  br i1 %.not.i, label %.lr.ph.i7, label %.preheader.i6

.preheader.i6:                                    ; preds = %bb.az, %bb.av
  %.sroa.015.0.lcssa.i = phi i8 [ 0, %bb.av ], [ %.sroa.015.2.3.i, %bb.az ] ; 2 uses
  %.sroa.07.0.lcssa.i = phi i64 [ 0, %bb.av ], [ %i.ig, %bb.az ] ; 2 uses
  %i.gq = add i64 %.sroa.07.0.lcssa.i, %i.fz
  %i.gr = icmp uge i64 %i.gq, %3
  %i.gs = trunc nuw i8 %.sroa.015.0.lcssa.i to i1 ; 2 uses
  %or.cond3113.i = select i1 %i.gr, i1 true, i1 %i.gs
  br i1 %or.cond3113.i, label %._crit_edge.i, label %.lr.ph115.i

.lr.ph.i7:                                        ; preds = %bb.av, %bb.az
  %.sroa.07.0111.i = phi i64 [ %i.ig, %bb.az ], [ 0, %bb.av ] ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.0111.i ; 5 uses
  %.val3.i.i = load <16 x i8>, ptr %i.gt, align 1, !alias.scope !117, !noalias !122
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %5
  %.val.i.i = load <16 x i8>, ptr %i.gu, align 1, !alias.scope !117, !noalias !122
  %i.gv = icmp eq <16 x i8> %.val3.i.i, %i.gj
  %i.gw = icmp eq <16 x i8> %.val.i.i, %i.gk
  %narrow.i.i = select <16 x i1> %i.gv, <16 x i1> %i.gw, <16 x i1> zeroinitializer
  %i.gx = bitcast <16 x i1> %narrow.i.i to i16    ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %.val3.i.1.i = load <16 x i8>, ptr %i.gy, align 1, !alias.scope !117, !noalias !122
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %5
  %.val.i.1.i = load <16 x i8>, ptr %i.gz, align 1, !alias.scope !117, !noalias !122
  %i.ha = icmp eq <16 x i8> %.val3.i.1.i, %i.gj
  %i.hb = icmp eq <16 x i8> %.val.i.1.i, %i.gk
  %narrow.i.1.i = select <16 x i1> %i.ha, <16 x i1> %i.hb, <16 x i1> zeroinitializer
  %i.hc = bitcast <16 x i1> %narrow.i.1.i to i16  ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 32 ; 2 uses
  %.val3.i.2.i = load <16 x i8>, ptr %i.hd, align 1, !alias.scope !117, !noalias !122
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %5
  %.val.i.2.i = load <16 x i8>, ptr %i.he, align 1, !alias.scope !117, !noalias !122
  %i.hf = icmp eq <16 x i8> %.val3.i.2.i, %i.gj
  %i.hg = icmp eq <16 x i8> %.val.i.2.i, %i.gk
  %narrow.i.2.i = select <16 x i1> %i.hf, <16 x i1> %i.hg, <16 x i1> zeroinitializer
  %i.hh = bitcast <16 x i1> %narrow.i.2.i to i16  ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gt, i64 48 ; 2 uses
  %.val3.i.3.i = load <16 x i8>, ptr %i.hi, align 1, !alias.scope !117, !noalias !122
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 %5
  %.val.i.3.i = load <16 x i8>, ptr %i.hj, align 1, !alias.scope !117, !noalias !122
  %i.hk = icmp eq <16 x i8> %.val3.i.3.i, %i.gj
  %i.hl = icmp eq <16 x i8> %.val.i.3.i, %i.gk
  %narrow.i.3.i = select <16 x i1> %i.hk, <16 x i1> %i.hl, <16 x i1> zeroinitializer
  %i.hm = bitcast <16 x i1> %narrow.i.3.i to i16  ; 2 uses
  %i.hn = icmp eq i16 %i.gx, 0
  br i1 %i.hn, label %.preheader104.1.i, label %bb.ba

.preheader104.1.i:                                ; preds = %bb.ba, %.lr.ph.i7
  %.sroa.015.2.i = phi i8 [ 0, %.lr.ph.i7 ], [ %i.il, %bb.ba ] ; 3 uses
  %i.ho = icmp eq i16 %i.hc, 0
  br i1 %i.ho, label %.preheader104.2.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader104.1.i
  %i.hp = or disjoint i64 %.sroa.07.0111.i, 16
  %i.hq = trunc nuw i8 %.sroa.015.2.i to i1
  %i.hr = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hp, i16 noundef %i.hc, i1 noundef zeroext %i.hq)
  %i.hs = zext i1 %i.hr to i8
  %i.ht = or i8 %.sroa.015.2.i, %i.hs
  br label %.preheader104.2.i

.preheader104.2.i:                                ; preds = %bb.aw, %.preheader104.1.i
  %.sroa.015.2.1.i = phi i8 [ %.sroa.015.2.i, %.preheader104.1.i ], [ %i.ht, %bb.aw ] ; 3 uses
  %i.hu = icmp eq i16 %i.hh, 0
  br i1 %i.hu, label %.preheader104.3.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader104.2.i
  %i.hv = or disjoint i64 %.sroa.07.0111.i, 32
  %i.hw = trunc nuw i8 %.sroa.015.2.1.i to i1
  %i.hx = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hv, i16 noundef %i.hh, i1 noundef zeroext %i.hw)
  %i.hy = zext i1 %i.hx to i8
  %i.hz = or i8 %.sroa.015.2.1.i, %i.hy
  br label %.preheader104.3.i

.preheader104.3.i:                                ; preds = %bb.ax, %.preheader104.2.i
  %.sroa.015.2.2.i = phi i8 [ %.sroa.015.2.1.i, %.preheader104.2.i ], [ %i.hz, %bb.ax ] ; 3 uses
  %i.ia = icmp eq i16 %i.hm, 0
  br i1 %i.ia, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.preheader104.3.i
  %i.ib = or disjoint i64 %.sroa.07.0111.i, 48
  %i.ic = trunc nuw i8 %.sroa.015.2.2.i to i1
  %i.id = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ib, i16 noundef %i.hm, i1 noundef zeroext %i.ic)
  %i.ie = zext i1 %i.id to i8
  %i.if = or i8 %.sroa.015.2.2.i, %i.ie
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %.preheader104.3.i
  %.sroa.015.2.3.i = phi i8 [ %.sroa.015.2.2.i, %.preheader104.3.i ], [ %i.if, %bb.ay ] ; 2 uses
  %i.ig = add i64 %.sroa.07.0111.i, 64            ; 3 uses
  %i.ih = add i64 %i.ig, %i.gp
  %i.ii = icmp uge i64 %i.ih, %3
  %i.ij = trunc nuw i8 %.sroa.015.2.3.i to i1
  %or.cond.i = select i1 %i.ii, i1 true, i1 %i.ij
  br i1 %or.cond.i, label %.preheader.i6, label %.lr.ph.i7

bb.ba:                                            ; preds = %.lr.ph.i7
  %i.ik = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0111.i, i16 noundef %i.gx, i1 noundef zeroext false)
  %i.il = zext i1 %i.ik to i8
  br label %.preheader104.1.i

._crit_edge.i:                                    ; preds = %bb.bb, %.preheader.i6
  %.sroa.015.3.lcssa.i = phi i8 [ %.sroa.015.0.lcssa.i, %.preheader.i6 ], [ %.sroa.015.4.i, %bb.bb ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.gs, %.preheader.i6 ], [ %i.jd, %bb.bb ]
  %i.im = sub nuw i64 %3, %i.ft
  %i.in = add i64 %i.im, -16                      ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %2, i64 %i.in ; 2 uses
  %.val3.i65.i = load <16 x i8>, ptr %i.io, align 1, !alias.scope !117, !noalias !123
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %5
  %.val.i66.i = load <16 x i8>, ptr %i.ip, align 1, !alias.scope !117, !noalias !123
  %i.iq = icmp eq <16 x i8> %.val3.i65.i, %i.gj
  %i.ir = icmp eq <16 x i8> %.val.i66.i, %i.gk
  %narrow.i67.i = select <16 x i1> %i.iq, <16 x i1> %i.ir, <16 x i1> zeroinitializer
  %i.is = bitcast <16 x i1> %narrow.i67.i to i16  ; 2 uses
  %i.it = icmp eq i16 %i.is, 0
  br i1 %i.it, label %bb.bd, label %bb.be

.lr.ph115.i:                                      ; preds = %.preheader.i6, %bb.bb
  %.sroa.07.1114.i = phi i64 [ %i.ja, %bb.bb ], [ %.sroa.07.0.lcssa.i, %.preheader.i6 ] ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.07.1114.i ; 2 uses
  %.val3.i68.i = load <16 x i8>, ptr %i.iu, align 1, !alias.scope !117, !noalias !124
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %5
  %.val.i69.i = load <16 x i8>, ptr %i.iv, align 1, !alias.scope !117, !noalias !124
  %i.iw = icmp eq <16 x i8> %.val3.i68.i, %i.gj
  %i.ix = icmp eq <16 x i8> %.val.i69.i, %i.gk
  %narrow.i70.i = select <16 x i1> %i.iw, <16 x i1> %i.ix, <16 x i1> zeroinitializer
  %i.iy = bitcast <16 x i1> %narrow.i70.i to i16  ; 2 uses
  %i.iz = icmp eq i16 %i.iy, 0
  br i1 %i.iz, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.bc, %.lr.ph115.i
  %.sroa.015.4.i = phi i8 [ 0, %.lr.ph115.i ], [ %i.jf, %bb.bc ] ; 2 uses
  %i.ja = add i64 %.sroa.07.1114.i, 16            ; 2 uses
  %i.jb = add i64 %i.ja, %i.fz
  %i.jc = icmp uge i64 %i.jb, %3
  %i.jd = trunc nuw i8 %.sroa.015.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.jc, %i.jd
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph115.i

bb.bc:                                            ; preds = %.lr.ph115.i
  %i.je = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1114.i, i16 noundef %i.iy, i1 noundef zeroext false)
  %i.jf = zext i1 %i.je to i8
  br label %bb.bb

bb.bd:                                            ; preds = %bb.be, %._crit_edge.i
  %.sroa.015.5.i = phi i8 [ %.sroa.015.3.lcssa.i, %._crit_edge.i ], [ %i.ji, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread

bb.be:                                            ; preds = %._crit_edge.i
  %i.jg = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17he7c7998230c66f00E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.in, i16 noundef %i.is, i1 noundef zeroext %.lcssa.i)
  %i.jh = zext i1 %i.jg to i8
  %i.ji = or i8 %.sroa.015.3.lcssa.i, %i.jh
  br label %bb.bd

bb.bf:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.jj = icmp eq i32 %bcmp, 0
  %i.jk = zext i1 %i.jj to i8
  br label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$walkdir..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h290ae2e5961e54b7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 5, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @16, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17hd91b7193766848c3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h2bc8a5db79451fc6E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.f, i64 %i.h) #23
  unreachable

bb.c:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn = phi { ptr, i32 } [ %i.i, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h4b6c9e0d23c4d14bE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #21
          to label %bb.p unwind label %bb.o

bb.d:                                             ; preds = %.critedge23
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %2, %i.f
  call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.n, %bb.e
  %.lcssa4649 = phi i64 [ 0, %bb.e ], [ %i.ab, %bb.n ] ; 4 uses
  %i.l = icmp ult i64 %2, %.lcssa4649
  br i1 %i.l, label %.critedge23, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.f, %bb.j
  %i.m = phi i64 [ %i.ab, %bb.j ], [ %.lcssa4649, %bb.f ] ; 4 uses
  %i.n = sub nuw i64 %2, %i.m                     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %i.p = icmp ult i64 %i.n, 16
  br i1 %i.p, label %.preheader.i.i, label %bb.g

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.q = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef 64, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.o, i64 noundef %i.n)
          to label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i unwind label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.h, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.n, %bb.h ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.h ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.h
  %.sroa.01.05.i.i = phi i64 [ %i.w, %bb.h ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.01.05.i.i
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !130, !noalias !131, !noundef !4
  %i.v = icmp eq i8 %i.u, 64
  br i1 %i.v, label %._crit_edge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.w = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.w, %i.n
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i: ; preds = %bb.g, %._crit_edge.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.s, %._crit_edge.i.i ], [ %i.q, %bb.g ] ; 2 uses
  %i.x = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.i, label %.critedge23

bb.i:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i
  %i.z = extractvalue { i64, i64 } %.merged.i.i, 1 ; 2 uses
  %i.aa = add nuw i64 %i.m, 1
  %i.ab = add i64 %i.aa, %i.z                     ; 3 uses
  %.not14.i = icmp ugt i64 %i.ab, %2
  %i.ac = add i64 %i.z, %i.m                      ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.ac, %2
  br i1 %or.cond.i.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  br i1 %.not14.i, label %.critedge23, label %.lr.ph.split.i

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %lhsc = load i8, ptr %i.ad, align 1
  %i.ae = icmp eq i8 %lhsc, 64
  br i1 %i.ae, label %bb.l, label %bb.j

.loopexit:                                        ; preds = %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.l, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa4649
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7099b8d1a9ad2599E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.af)
          to label %bb.n unwind label %.loopexit.split-lp

.critedge23:                                      ; preds = %bb.f, %bb.j, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa4649
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7099b8d1a9ad2599E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ai)
          to label %bb.m unwind label %bb.d

bb.m:                                             ; preds = %.critedge23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.l
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h7099b8d1a9ad2599E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull @58, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @58, i64 16))
          to label %bb.f unwind label %.loopexit.split-lp

bb.o:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.p:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN5alloc5slice11stable_sort17hd0e76bc12e19668fE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h4b68e9e37b5bd7c9E"
; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12anki_process10CommandExt3run17h3f71cc9849230701E(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h1ffb2920eca93ef3E"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN12anki_process10CommandExt15run_with_output17h93c90c2812cb506fE(ptr dead_on_unwind noalias noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(128)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json2de10from_trait17h39d1147ed1876866E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN5alloc3vec16in_place_collect18from_iter_in_place17h77b1d94f0b272ea8E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h1dd9e9e8f0e05098E"(ptr noalias noundef nonnull align 8) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 dereferenceable(200) ptr @_ZN3std7process7Command3arg17h3b9dc9fffca2883cE(ptr noalias noundef align 8 dereferenceable(200), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3env4args17hb676cff2dc321ec8E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN7anki_io10write_file17h39d0e44aaded18d0E(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind
define noundef i32 @main(i32 %0, ptr %1) unnamed_addr #17 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = tail call i64 @_ZN3std2rt10lang_start17hac287eff2ca00087E(ptr @_ZN9minilints4main17h66f3e66737a449a7E, i64 %i.a, ptr %1, i8 0)
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_ZN3std2rt10lang_start17hac287eff2ca00087E(ptr noundef nonnull, i64 noundef, ptr noundef, i8 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nonlazybind "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!"rustc version 1.92.0 (ded5c06cf 2025-12-08)"}
!4 = !{}
!5 = !{i8 0, i8 2}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i64 1}
!8 = !{i64 0, i64 -9223372036854775808}
!9 = !{i64 1, i64 0}
!10 = !{i64 0, i64 -9223372036854775807}
!11 = !{i64 0, i64 2}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17had2626ab05ceb8cfE"}
!14 = distinct !{!14, !13, !"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17had2626ab05ceb8cfE: argument 0"}
!15 = distinct !{!15, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7c9c7a4094ae3299E"}
!16 = distinct !{!16, !15, !"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$11get_or_init17h7c9c7a4094ae3299E: argument 0"}
!17 = !{!16, !14}
!18 = distinct !{!18, !"_ZN4core3ptr38drop_in_place$LT$walkdir..IntoIter$GT$17h009dc78582d86acaE"}
!19 = distinct !{!19, !18, !"_ZN4core3ptr38drop_in_place$LT$walkdir..IntoIter$GT$17h009dc78582d86acaE: argument 0"}
!20 = distinct !{!20, !"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h0602ea4b3d2f0013E"}
!21 = distinct !{!21, !20, !"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h0602ea4b3d2f0013E: argument 0"}
!22 = !{!19}
!23 = !{!21, !19}
!24 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!25 = !{i64 8}
!26 = distinct !{!26, !"_ZN4core3ptr61drop_in_place$LT$std..sys..process..unix..common..Command$GT$17hf29bd61329c0e92eE"}
!27 = distinct !{!27, !26, !"_ZN4core3ptr61drop_in_place$LT$std..sys..process..unix..common..Command$GT$17hf29bd61329c0e92eE: argument 0"}
!28 = !{!27}
!29 = !{i64 4}
!30 = !{i32 0, i32 6}
!31 = distinct !{!31, !"_ZN4core3ptr47drop_in_place$LT$walkdir..error..ErrorInner$GT$17he42cd997d1c84008E"}
!32 = distinct !{!32, !31, !"_ZN4core3ptr47drop_in_place$LT$walkdir..error..ErrorInner$GT$17he42cd997d1c84008E: argument 0"}
!33 = distinct !{!33, !"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h0602ea4b3d2f0013E"}
!34 = distinct !{!34, !33, !"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17h0602ea4b3d2f0013E: argument 0"}
!35 = !{!32}
!36 = !{!34, !32}
!37 = distinct !{!37, !"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17h853bf193a3526575E"}
!38 = distinct !{!38, !37, !"_ZN4core3ptr39drop_in_place$LT$std..env..VarError$GT$17h853bf193a3526575E: argument 0"}
!39 = !{!38}
!40 = distinct !{!40, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E"}
!41 = distinct !{!41, !40, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E: argument 1"}
!42 = distinct !{!42, !40, !"_ZN88_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17h78e137c82f3c82a1E: argument 0"}
!43 = !{!41}
!44 = !{!42}
!45 = !{!42, !41}
!46 = distinct !{!46, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE"}
!47 = distinct !{!47, !46, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE: argument 0"}
!48 = distinct !{!48, !46, !"_ZN4core3str7pattern14small_slice_eq17h716c89b270afae6eE: argument 1"}
!49 = !{!47}
!50 = !{!48}
!51 = !{!47, !48}
!52 = distinct !{!52, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"}
!53 = distinct !{!53, !52, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 1"}
!54 = distinct !{!54, !52, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E: argument 0"}
!55 = distinct !{!55, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E"}
!56 = distinct !{!56, !55, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1"}
!57 = distinct !{!57, !55, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 0"}
!58 = distinct !{!58, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E"}
!59 = distinct !{!59, !58, !"_ZN4core3str6traits112_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$3get17h4ed2090538ea9a22E: argument 0"}
!60 = distinct !{!60, !55, !"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E: argument 1:Peel0"}
!61 = distinct !{!61, !"_ZN4core3str11validations15next_code_point17h9f48d06ff185e9a7E"}
!62 = distinct !{!62, !61, !"_ZN4core3str11validations15next_code_point17h9f48d06ff185e9a7E: argument 0"}
!63 = distinct !{!63, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E"}
!64 = distinct !{!64, !63, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 1"}
!65 = distinct !{!65, !63, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 2"}
!66 = distinct !{!66, !63, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 3"}
!67 = distinct !{!67, !63, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 0"}
!68 = distinct !{!68, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E"}
!69 = distinct !{!69, !68, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 1"}
!70 = distinct !{!70, !68, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 2"}
!71 = distinct !{!71, !68, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 3"}
!72 = distinct !{!72, !68, !"_ZN4core3str7pattern14TwoWaySearcher4next17he264e1111702f791E: argument 0"}
!73 = distinct !{!73, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E"}
!74 = distinct !{!74, !73, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E: argument 0"}
!75 = distinct !{!75, !73, !"_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E: argument 1"}
!76 = distinct !{!76, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17hed7d7e9829622d78E"}
!77 = distinct !{!77, !76, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17hed7d7e9829622d78E: argument 1"}
!78 = distinct !{!78, !76, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator9try_rfold17hed7d7e9829622d78E: argument 0"}
!79 = distinct !{!79, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE"}
!80 = distinct !{!80, !79, !"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h325b65bd1619f38fE: argument 0"}
!81 = distinct !{!81, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hfb9d8b5dd29587d9E"}
!82 = distinct !{!82, !81, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17hfb9d8b5dd29587d9E: argument 0"}
!83 = distinct !{!83, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h2ece59ee38647686E"}
!84 = distinct !{!84, !83, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h2ece59ee38647686E: argument 1"}
!85 = distinct !{!85, !83, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h2ece59ee38647686E: argument 0"}
!86 = distinct !{!86, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E"}
!87 = distinct !{!87, !86, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E: argument 0"}
!88 = distinct !{!88, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E"}
!89 = distinct !{!89, !88, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E: argument 0"}
!90 = distinct !{!90, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E"}
!91 = distinct !{!91, !90, !"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h5bd891e8e2b29996E: argument 0"}
!92 = !{!53}
!93 = !{!54}
!94 = !{!56, !53}
!95 = !{!57, !54}
!96 = !{!59}
!97 = !{!57, !60, !54, !53}
!98 = !{!62, !57, !60, !54, !53}
!99 = !{!56}
!100 = !{!57, !56, !54, !53}
!101 = !{!62, !57, !56, !54, !53}
!102 = !{!64}
!103 = !{!65}
!104 = !{!66}
!105 = !{!67, !65, !66}
!106 = !{!67, !64, !66}
!107 = !{!67, !64, !65, !66}
!108 = !{!67, !64, !65}
!109 = !{!69}
!110 = !{!70}
!111 = !{!71}
!112 = !{!72, !70, !71}
!113 = !{!72, !69, !71}
!114 = !{!72, !69, !70, !71}
!115 = !{!72, !69, !70}
!116 = !{!74}
!117 = !{!75}
!118 = !{!82, !80, !78, !77, !74, !75}
!119 = !{!82, !80, !78, !77, !75}
!120 = !{!74, !75}
!121 = !{!85, !84}
!122 = !{!87, !74}
!123 = !{!89, !74}
!124 = !{!91, !74}
!125 = distinct !{!125, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E"}
!126 = distinct !{!126, !125, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E: argument 0"}
!127 = distinct !{!127, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E"}
!128 = distinct !{!128, !127, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 1"}
!129 = distinct !{!129, !127, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 0"}
!130 = !{!126}
!131 = !{!129, !128}
!132 = distinct !{!132, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20eb4391a2be065dE"}
!133 = distinct !{!133, !132, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20eb4391a2be065dE: argument 0"}
!134 = distinct !{!134, !132, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h20eb4391a2be065dE: argument 1"}
!135 = !{!133}
!136 = !{!134}
!137 = !{!133, !134}
!138 = distinct !{!138, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hd0aa1095db48349aE"}
!139 = distinct !{!139, !138, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17hd0aa1095db48349aE: argument 0"}
!140 = distinct !{!140, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3eeabaff5e970523E"}
!141 = distinct !{!141, !140, !"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3eeabaff5e970523E: argument 0"}
!142 = distinct !{!142, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17haf9c34da7327936eE"}
!143 = distinct !{!143, !142, !"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17haf9c34da7327936eE: argument 0"}
!144 = distinct !{!144, !"_ZN9minilints11LintContext3new17he93bc190636771fbE"}
!145 = distinct !{!145, !144, !"_ZN9minilints11LintContext3new17he93bc190636771fbE: argument 0"}
!146 = distinct !{!146, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdc449e068986259eE"}
!147 = distinct !{!147, !146, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdc449e068986259eE: argument 0"}
!148 = distinct !{!148, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E"}
!149 = distinct !{!149, !148, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 0"}
!150 = distinct !{!150, !148, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 1"}
!151 = distinct !{!151, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E"}
!152 = distinct !{!152, !151, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 0"}
!153 = distinct !{!153, !151, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 1"}
!154 = distinct !{!154, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1d2b25bb73090a07E"}
!155 = distinct !{!155, !154, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1d2b25bb73090a07E: argument 1"}
!156 = distinct !{!156, !154, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h1d2b25bb73090a07E: argument 0"}
!157 = distinct !{!157, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h47648c484333ed3aE"}
!158 = distinct !{!158, !157, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h47648c484333ed3aE: argument 1"}
!159 = distinct !{!159, !157, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h47648c484333ed3aE: argument 0"}
!160 = distinct !{!160, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E"}
!161 = distinct !{!161, !160, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E: argument 1"}
!162 = distinct !{!162, !160, !"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E: argument 0"}
!163 = distinct !{!163, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc0814eb65fc51457E"}
!164 = distinct !{!164, !163, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc0814eb65fc51457E: argument 1"}
!165 = distinct !{!165, !163, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc0814eb65fc51457E: argument 0"}
!166 = distinct !{!166, !"_ZN9minilints15normalize_email17h98e833edd64d8523E"}
!167 = distinct !{!167, !166, !"_ZN9minilints15normalize_email17h98e833edd64d8523E: argument 0"}
!168 = distinct !{!168, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6c7f3dfb30c8bfb0E"}
!169 = distinct !{!169, !168, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6c7f3dfb30c8bfb0E: argument 0"}
!170 = distinct !{!170, !168, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h6c7f3dfb30c8bfb0E: argument 1"}
!171 = distinct !{!171, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00c79ded4a8e1ee7E"}
!172 = distinct !{!172, !171, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00c79ded4a8e1ee7E: argument 0"}
!173 = distinct !{!173, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E"}
!174 = distinct !{!174, !173, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 0"}
!175 = distinct !{!175, !171, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h00c79ded4a8e1ee7E: argument 1"}
!176 = distinct !{!176, !173, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 1"}
!177 = distinct !{!177, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE"}
!178 = distinct !{!178, !177, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE: argument 0"}
!179 = distinct !{!179, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h14fdcf98e8ccb1feE"}
!180 = distinct !{!180, !179, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h14fdcf98e8ccb1feE: argument 1"}
!181 = distinct !{!181, !179, !"_ZN4core4iter6traits8iterator8Iterator8try_fold17h14fdcf98e8ccb1feE: argument 0"}
!182 = distinct !{!182, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E"}
!183 = distinct !{!183, !182, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E: argument 0"}
!184 = distinct !{!184, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hddb57754004cc367E"}
!185 = distinct !{!185, !184, !"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hddb57754004cc367E: argument 0"}
!186 = distinct !{!186, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3639fc9feb15bdc2E"}
!187 = distinct !{!187, !186, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h3639fc9feb15bdc2E: argument 0"}
!188 = distinct !{!188, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E"}
!189 = distinct !{!189, !188, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 1"}
!190 = distinct !{!190, !188, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 0"}
!191 = distinct !{!191, !"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hc1b2af0345ab4978E"}
!192 = distinct !{!192, !191, !"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17hc1b2af0345ab4978E: argument 0"}
!193 = distinct !{!193, !"_ZN9minilints11LintContext18check_contributors28_$u7b$$u7b$closure$u7d$$u7d$17hd2358f422c679b7aE"}
!194 = distinct !{!194, !193, !"_ZN9minilints11LintContext18check_contributors28_$u7b$$u7b$closure$u7d$$u7d$17hd2358f422c679b7aE: argument 0"}
!195 = distinct !{!195, !"_ZN9minilints19noreply_aware_match17hc57b20de4fcc48a4E"}
!196 = distinct !{!196, !195, !"_ZN9minilints19noreply_aware_match17hc57b20de4fcc48a4E: argument 1"}
!197 = distinct !{!197, !195, !"_ZN9minilints19noreply_aware_match17hc57b20de4fcc48a4E: argument 0"}
!198 = distinct !{!198, !"_ZN9minilints15normalize_email17h98e833edd64d8523E"}
!199 = distinct !{!199, !198, !"_ZN9minilints15normalize_email17h98e833edd64d8523E: argument 0"}
!200 = distinct !{!200, !"_ZN9minilints15normalize_email17h98e833edd64d8523E"}
!201 = distinct !{!201, !200, !"_ZN9minilints15normalize_email17h98e833edd64d8523E: argument 0"}
!202 = distinct !{!202, !"_ZN9minilints11LintContext19check_rust_licenses17h1b23c144e1395621E"}
!203 = distinct !{!203, !202, !"_ZN9minilints11LintContext19check_rust_licenses17h1b23c144e1395621E: argument 0"}
!204 = distinct !{!204, !"_ZN9minilints17generate_licences17h685d7abd7a0d0610E"}
!205 = distinct !{!205, !204, !"_ZN9minilints17generate_licences17h685d7abd7a0d0610E: argument 0"}
!206 = distinct !{!206, !"_ZN10serde_json3ser13to_vec_pretty17h357da859aa62d201E"}
!207 = distinct !{!207, !206, !"_ZN10serde_json3ser13to_vec_pretty17h357da859aa62d201E: argument 1"}
!208 = distinct !{!208, !206, !"_ZN10serde_json3ser13to_vec_pretty17h357da859aa62d201E: argument 0"}
!209 = distinct !{!209, !"_ZN10serde_json3ser16to_writer_pretty17h6009da6fe6b45a09E"}
!210 = distinct !{!210, !209, !"_ZN10serde_json3ser16to_writer_pretty17h6009da6fe6b45a09E: argument 1"}
!211 = distinct !{!211, !209, !"_ZN10serde_json3ser16to_writer_pretty17h6009da6fe6b45a09E: argument 0"}
!212 = distinct !{!212, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7b23c2e2dbe4c9d1E"}
!213 = distinct !{!213, !212, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7b23c2e2dbe4c9d1E: argument 1"}
!214 = distinct !{!214, !212, !"_ZN73_$LT$$u5b$A$u5d$$u20$as$u20$core..slice..cmp..SlicePartialEq$LT$B$GT$$GT$5equal17h7b23c2e2dbe4c9d1E: argument 0"}
!215 = distinct !{!215, !"_ZN9minilints11LintContext12walk_folders17h3dae3764cd94afe8E"}
!216 = distinct !{!216, !215, !"_ZN9minilints11LintContext12walk_folders17h3dae3764cd94afe8E: argument 0"}
!217 = distinct !{!217, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdc449e068986259eE"}
!218 = distinct !{!218, !217, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17hdc449e068986259eE: argument 0"}
!219 = distinct !{!219, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62445627ea235cd8E"}
!220 = distinct !{!220, !219, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62445627ea235cd8E: argument 1"}
!221 = distinct !{!221, !219, !"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h62445627ea235cd8E: argument 0"}
!222 = distinct !{!222, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h50d9dc63a5b76083E"}
!223 = distinct !{!223, !222, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h50d9dc63a5b76083E: argument 1"}
!224 = distinct !{!224, !222, !"_ZN120_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h50d9dc63a5b76083E: argument 0"}
!225 = distinct !{!225, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h4da53e1f0b41cb91E"}
!226 = distinct !{!226, !225, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h4da53e1f0b41cb91E: argument 0"}
!227 = distinct !{!227, !225, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h4da53e1f0b41cb91E: argument 1"}
!228 = distinct !{!228, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h43dab8526c207d32E"}
!229 = distinct !{!229, !228, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h43dab8526c207d32E: argument 0"}
!230 = distinct !{!230, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E"}
!231 = distinct !{!231, !230, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 0"}
!232 = distinct !{!232, !228, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17h43dab8526c207d32E: argument 1"}
!233 = distinct !{!233, !230, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 1"}
!234 = distinct !{!234, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE"}
!235 = distinct !{!235, !234, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE: argument 0"}
!236 = distinct !{!236, !"_ZN9minilints11LintContext15check_copyright17h524f244af8f5ebdaE"}
!237 = distinct !{!237, !236, !"_ZN9minilints11LintContext15check_copyright17h524f244af8f5ebdaE: argument 0"}
!238 = distinct !{!238, !236, !"_ZN9minilints11LintContext15check_copyright17h524f244af8f5ebdaE: argument 1"}
!239 = distinct !{!239, !"_ZN9minilints12head_of_file17hdc666b1396718e5bE"}
!240 = distinct !{!240, !239, !"_ZN9minilints12head_of_file17hdc666b1396718e5bE: argument 1"}
!241 = distinct !{!241, !239, !"_ZN9minilints12head_of_file17hdc666b1396718e5bE: argument 0"}
!242 = distinct !{!242, !"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0a4adb81200ce797E"}
!243 = distinct !{!243, !242, !"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h0a4adb81200ce797E: argument 0"}
!244 = distinct !{!244, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E"}
!245 = distinct !{!245, !244, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 0"}
!246 = distinct !{!246, !244, !"_ZN5alloc6string6String9from_utf817h7e58bd10b8f156f2E: argument 1"}
!247 = distinct !{!247, !"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h2b9ffc725c6f1e5dE"}
!248 = distinct !{!248, !247, !"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h2b9ffc725c6f1e5dE: argument 1"}
!249 = distinct !{!249, !247, !"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h2b9ffc725c6f1e5dE: argument 0"}
!250 = distinct !{!250, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5d8be4a5dc89c6cdE"}
!251 = distinct !{!251, !250, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5d8be4a5dc89c6cdE: argument 0"}
!252 = distinct !{!252, !250, !"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h5d8be4a5dc89c6cdE: argument 1"}
!253 = distinct !{!253, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd67f51a82b9c2850E"}
!254 = distinct !{!254, !253, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd67f51a82b9c2850E: argument 0"}
!255 = distinct !{!255, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E"}
!256 = distinct !{!256, !255, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 0"}
!257 = distinct !{!257, !253, !"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hd67f51a82b9c2850E: argument 1"}
!258 = distinct !{!258, !255, !"_ZN9hashbrown3raw13RawTableInner10find_inner17h09d713966e161f39E: argument 1"}
!259 = distinct !{!259, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE"}
!260 = distinct !{!260, !259, !"_ZN4core9core_arch3x864sse215_mm_loadu_si12817hb2a05e80bf1d09ccE: argument 0"}
!261 = distinct !{!261, !"_ZN9minilints13fix_copyright17h602f701bf517ebd3E"}
!262 = distinct !{!262, !261, !"_ZN9minilints13fix_copyright17h602f701bf517ebd3E: argument 0"}
!263 = distinct !{!263, !"_ZN9minilints11LintContext18check_triple_slash17hf73f9ca66645f5d5E"}
!264 = distinct !{!264, !263, !"_ZN9minilints11LintContext18check_triple_slash17hf73f9ca66645f5d5E: argument 0"}
!265 = distinct !{!265, !263, !"_ZN9minilints11LintContext18check_triple_slash17hf73f9ca66645f5d5E: argument 1"}
!266 = distinct !{!266, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E"}
!267 = distinct !{!267, !266, !"_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E: argument 0"}
!268 = distinct !{!268, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$14next_inclusive17h4d0ace5030a96491E"}
!269 = distinct !{!269, !268, !"_ZN4core3str4iter22SplitInternal$LT$P$GT$14next_inclusive17h4d0ace5030a96491E: argument 0"}
!270 = distinct !{!270, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E"}
!271 = distinct !{!271, !270, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 1"}
!272 = distinct !{!272, !270, !"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17hf3c3a3cd4957fe66E: argument 0"}
!273 = distinct !{!273, !"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17hc8221706adf7b1f3E"}
!274 = distinct !{!274, !273, !"_ZN89_$LT$core..str..LinesMap$u20$as$u20$core..ops..function..Fn$LT$$LP$$RF$str$C$$RP$$GT$$GT$4call17hc8221706adf7b1f3E: argument 0"}
!275 = !{!139}
!276 = !{!141}
!277 = !{!143}
!278 = !{!145}
!279 = !{!147, !145}
!280 = !{!149}
!281 = !{!150}
!282 = !{!149, !150}
!283 = !{!152}
!284 = !{!153}
!285 = !{!152, !153}
!286 = !{!156, !155}
!287 = !{!156}
!288 = !{!155}
!289 = !{!159, !158}
!290 = !{!159}
!291 = !{!158}
!292 = !{!162, !161}
!293 = !{!165, !164}
!294 = !{!167}
!295 = !{!169}
!296 = !{!170}
!297 = !{!172}
!298 = !{!174}
!299 = !{!174, !172, !169}
!300 = !{!176, !175, !170}
!301 = !{!178, !174, !176, !172}
!302 = !{!180}
!303 = !{!181}
!304 = !{!183}
!305 = !{!190, !189, !187, !185, !181, !180}
!306 = !{!199, !197, !196, !194, !192, !181, !180}
!307 = !{!201, !197, !196, !194, !192, !181, !180}
!308 = !{!181, !180}
!309 = !{!203}
!310 = !{!205, !203}
!311 = !{i64 0, i64 -9223372036854775803}
!312 = !{!208, !207, !205, !203}
!313 = !{!211, !210, !208, !207, !205, !203}
!314 = !{!208, !205, !203}
!315 = !{!207, !205, !203}
!316 = !{!214, !213}
!317 = !{!216}
!318 = !{!218, !216}
!319 = !{!218}
end_hunk_2
