Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.06?download=true
inline.NumInlined: 5983
inline.NumDeleted: 3458
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 61
begin_hunk_0_@"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field17hd7b8716bbd3bdfcfE":bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hdf70cc84ab36821fE.exit": ; preds = %bb.av
  %i.bw = load ptr, ptr %i.b, align 8, !noalias !12742, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.t

bb.ay:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ap, ptr %i.a, align 8, !noalias !12743
  invoke void @_ZN5prost5error11DecodeError4push17hd7e04dac3a3d13bfE(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @412, i64 noundef 6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @425, i64 noundef 5)
          to label %"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hfbb13cc33169b5b6E.exit" unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %.val.i46 = load ptr, ptr %i.a, align 8, !noalias !12743, !nonnull !3, !noundef !3
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$prost..error..DecodeError$GT$17h0db662563dbe9a43E"(ptr nonnull %.val.i46) #46
          to label %common.resume unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #48
  unreachable

"_ZN90_$LT$anki_proto..notetypes..notetype..field..Config$u20$as$u20$prost..message..Message$GT$11merge_field28_$u7b$$u7b$closure$u7d$$u7d$17hfbb13cc33169b5b6E.exit": ; preds = %bb.ay
  %i.bz = load ptr, ptr %i.a, align 8, !noalias !12743, !nonnull !3, !align !5, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12760)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !22, !alias.scope !12760, !noundef !3
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !12760, !nonnull !3, !align !10, !noundef !3 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load i64, ptr %i.f, align 8, !alias.scope !12760, !noundef !3 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12760
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12761)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12762)
  %i.g = load i64, ptr %0, align 8, !range !14, !alias.scope !12763, !noundef !3
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !22, !alias.scope !12764, !noundef !3
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %.promoted.i.i = load i64, ptr %i.i, align 8, !alias.scope !12763 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i.i = load i8, ptr %i.m, align 8, !alias.scope !12764 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12765)
  %i.n = trunc nuw i8 %.promoted26.i.i to i1      ; 2 uses
  %i.o = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %.val1.i
  br i1 %.not.i.i.i.peel.i, label %bb.d, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.p, label %bb.e, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !12766, !noalias !12767, !noundef !3
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit.i

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel.i, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.promoted.i.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i.i, %.val1.i
  br i1 %i.u, label %.loopexit19.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !12768, !noundef !3 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i": ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1.i
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !12768, !noundef !3
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !12768, !noundef !3
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i", label %bb.h

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i"
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1.i
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !12768, !noundef !3
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i"
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.ar, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.peel.i" ], [ %i.bd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.peel.i" ], [ %i.ag, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.peel.i" ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !12763, !noundef !3
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !12763, !nonnull !3, !align !10, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !12763, !noundef !3 ; 2 uses
  br i1 %i.bl, label %bb.u, label %bb.t

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.j ], [ %..i.i.peel.i, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !12769
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12770)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i = icmp ult i64 %i.bq, %.val1.i
  br i1 %.not.i.i.i.i, label %bb.o, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1.i
  br i1 %i.bs, label %bb.p, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !12766, !noalias !12771, !noundef !3
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o, %.split.i.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1.i
  br i1 %i.bw, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !12772, !noundef !3 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i": ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1.i
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", label %.sink.split.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i"
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i", label %.sink.split.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i"
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1.i
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.o, %.split.i.i.i.i, %bb.d, %.split.i.i.i.peel.i
  %.lcssa15.i = phi i8 [ %.promoted26.i.i, %.split.i.i.i.peel.i ], [ %.promoted26.i.i, %bb.d ], [ 1, %.split.i.i.i.i ], [ 1, %bb.o ]
  %.lcssa12.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.d ], [ %i.bq, %.split.i.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15.i, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !12764
  tail call void @_ZN4core3str16slice_error_fail17h9e3908d5d4865c14E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef %.lcssa12.i, i64 noundef %.val1.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322) #47, !noalias !12771
  unreachable

.loopexit19.i:                                    ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !12764
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19.i
  store i8 1, ptr %i.j, align 2, !alias.scope !12764
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"

.sink.split.i:                                    ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i", %bb.q, %bb.h
  %.lcssa14.i = phi i64 [ %.promoted.i.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i" ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i" ], [ %i.bq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i" ]
  store i8 0, ptr %i.m, align 8, !alias.scope !12764
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %.loopexit19.i, %bb.p
  %1 = phi i64 [ %.lcssa14.i, %.sink.split.i ], [ %.val1.i, %.loopexit19.i ], [ %.val1.i, %bb.p ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !12761, !noalias !12760
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !12761, !noalias !12760
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i": ; preds = %bb.s, %bb.r, %.preheader.i.i
  %storemerge.i.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i.i ]
  store i64 %storemerge.i.i, ptr %i.a, align 8, !alias.scope !12761, !noalias !12760
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

bb.t:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

bb.u:                                             ; preds = %bb.l
  call fastcc void @_ZN4core3str7pattern14TwoWaySearcher4next17h8e3b406db460aaaeE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"

"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i": ; preds = %bb.u, %bb.t, %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$4next17h7d9d5b7ab6d32301E.exit.thread7.i.i"
  %i.cm = load i64, ptr %i.a, align 8, !range !14, !noalias !12760, !noundef !3
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noalias !12760, !noundef !3
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !12760, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !12760, !noundef !3 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8, !alias.scope !12760
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"

bb.w:                                             ; preds = %"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E.exit.i"
  %i.cw = load i8, ptr %i.b, align 1, !range !22, !alias.scope !12773, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !12773
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !22, !alias.scope !12773, !noundef !3
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i.i, label %bb.y

._crit_edge.i.i:                                  ; preds = %bb.x
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !12773
  %.phi.trans.insert2.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i = load i64, ptr %.phi.trans.insert2.i.i, align 8, !alias.scope !12773
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !12773, !noundef !3 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !12773, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i", label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i
  %i.df = phi i64 [ %.pre3.i.i, %._crit_edge.i.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !12773, !nonnull !3, !align !10, !noundef !3
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dg
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i": ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0.i = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0.i = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12760
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hea35c3753c3454d3E.exit": ; preds = %bb.a, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i"
  %.sroa.4.1.i = phi i64 [ %.sroa.4.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i" ], [ undef, %bb.a ]
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h045c47f9802ecfd9E.exit.i" ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1.i, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len17h04339d9aebb79287E"(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(664) %0) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !3
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @"_ZN67_$LT$anki_proto..cards..Card$u20$as$u20$prost..message..Message$GT$11encoded_len17h004e42b4c08df79fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) dereferenceable_or_null(168) %0) ; 2 uses
  %i.c = or i64 %i.b, 1
  %i.d = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = xor i64 %i.d, 63
  %i.f = mul nuw nsw i64 %i.e, 9
  %i.g = add nuw nsw i64 %i.f, 73
  %i.h = lshr i64 %i.g, 6
  %i.i = add nuw i64 %i.b, 1
  %i.j = add nuw i64 %i.i, %i.h
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit": ; preds = %bb.a, %bb.b
  %.sroa.02.0.i = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.l = load i32, ptr %i.k, align 8, !noundef !3 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit"
  %i.n = or i32 %i.l, 1
  %i.o = sext i32 %i.n to i64
  %i.p = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = xor i64 %i.p, 63
  %i.r = mul nuw nsw i64 %i.q, 9
  %i.s = add nuw nsw i64 %i.r, 73
  %i.t = lshr i64 %i.s, 6
  %i.u = add nuw nsw i64 %i.t, 1
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit", %bb.c
  %.sroa.01.0 = phi i64 [ %i.u, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17hd16e791a6da3f8e9E.exit" ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !range !29, !noundef !3
  %.not4 = icmp eq i64 %i.w, -9223372036854775806
  br i1 %.not4, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = tail call fastcc noundef i64 @"_ZN83_$LT$anki_proto..scheduler..SchedulingStates$u20$as$u20$prost..message..Message$GT$11encoded_len17he6935fc4139568bfE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(440) dereferenceable_or_null(440) %i.v) ; 2 uses
  %i.y = or i64 %i.x, 1
  %i.z = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = xor i64 %i.z, 63
  %i.ab = mul nuw nsw i64 %i.aa, 9
  %i.ac = add nuw nsw i64 %i.ab, 73
  %i.ad = lshr i64 %i.ac, 6
  %i.ae = add i64 %i.x, 1
  %i.af = add i64 %i.ae, %i.ad
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit"

"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit": ; preds = %bb.d, %bb.e
  %.sroa.02.0.i7 = phi i64 [ %i.af, %bb.e ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = load i64, ptr %i.ag, align 8, !range !6, !noundef !3
  %.not5 = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not5, label %"_ZN4core6option15Option$LT$T$GT$6map_or17hc7406a2e5ce3c299E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h41772e09cba0a2dfE.exit"
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !12782, !noundef !3 ; 4 uses
  %.not.i.not.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %.not.i.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = icmp sgt i64 %.val.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = or i64 %.val.i.i.i.i, 1
  %i.al = tail call range(i64 1, 64) i64 @llvm.ctlz.i64(i64 %i.ak, i1 true)
  %i.am = xor i64 %i.al, 63
  %i.an = mul nuw nsw i64 %i.am, 9
  %i.ao = add nuw nsw i64 %i.an, 73
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = add nuw i64 %.val.i.i.i.i, 1
  %i.ar = add nuw i64 %i.aq, %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ar, %bb.g ], [ 0, %bb.f ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !12782, !noundef !3 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = or i64 %i.at, 1
  %i.aw = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.av, i1 true)
  %i.ax = xor i64 %i.aw, 63
  %i.ay = mul nuw nsw i64 %i.ax, 9
  %i.az = add nuw nsw i64 %i.ay, 73
  %i.ba = lshr i64 %i.az, 6
  %i.bb = add nuw nsw i64 %i.ba, 1
  br label %"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i"

"_ZN91_$LT$anki_proto..scheduler..queued_cards..QueuedCard$u20$as$u20$prost..message..Message$GT$11encoded_len28_$u7b$$u7b$closure$u7d$$u7d$17ha7612b19274f944eE.exit.i": ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.bb, %bb.i ], [ 0, %bb.h ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.bd = load i32, ptr %i.bc, align 8, !range !4, !alias.scope !12782, !noundef !3
  %i.be = trunc nuw i32 %i.bd to i1
  %spec.select.i.i.i.i.i = select i1 %i.be, i64 5, i64 0
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bg = load i32, ptr %i.bf, align 8, !range !4, !alias.scope !12782, !noundef !3
  %i.bh = trunc nuw i32 %i.bg to i1
  %i.bi = add nuw i64 %.sroa.01.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  %i.bj = add nuw i64 %i.bi, %spec.select.i.i.i.i.i
  %spec.select.i8.i.i.i.i = select i1 %i.bh, i64 5, i64 0
  %i.bk = add nuw i64 %i.bj, %spec.select.i8.i.i.i.i ; 2 uses
  %i.bl = or i64 %i.bk, 1
  %i.bm = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bl, i1 true)
  %i.bn = xor i64 %i.bm, 63
end_hunk_0
