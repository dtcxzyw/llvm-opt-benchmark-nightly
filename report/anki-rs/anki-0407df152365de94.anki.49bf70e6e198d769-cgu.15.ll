Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN4anki5notes15normalize_field17hd98c2f3c8b98abb2E:bb.a

bb.c:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i", %bb.b, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i"
  %i.ar = phi ptr [ %i.y, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i" ], [ %i.ai, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i" ], [ %i.p, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i" ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.af, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i" ], [ %i.aq, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i" ], [ %i.u, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i" ], [ %i.w, %bb.b ] ; 4 uses
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 32
  br i1 %i.at, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %cond.i.i.i.i.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 127
  br i1 %cond.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.4.0.i.ph.i.off.i.i.i = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i, -9
  %switch.i.i.i = icmp ult i32 %.sroa.4.0.i.ph.i.off.i.i.i, 2
  br i1 %switch.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = icmp eq ptr %i.ar, %i.g
  br i1 %i.au, label %_ZN4core3str7pattern7Pattern15is_contained_in17hd6257961b338a0feE.exit, label %.lr.ph.i.i

_ZN4core3str7pattern7Pattern15is_contained_in17hd6257961b338a0feE.exit: ; preds = %bb.f, %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  br i1 %1, label %bb.v, label %bb.u

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7659)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7660
  store i64 0, ptr %i.a, align 8, !noalias !7660
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !7660
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx.i, align 8, !noalias !7660
  br label %bb.h

bb.h:                                             ; preds = %bb.o, %bb.g
  %.sroa.11.0.i = phi i64 [ 0, %bb.g ], [ %i.ck, %bb.o ] ; 3 uses
  %.sroa.56.0.i = phi ptr [ %i.d, %bb.g ], [ %.sroa.56.1.i, %bb.o ] ; 2 uses
  %i.av = icmp eq ptr %.sroa.56.0.i, %i.g
  br i1 %i.av, label %.critedge23.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.m
  %i.aw = phi i64 [ %i.ck, %bb.m ], [ %.sroa.11.0.i, %bb.h ] ; 2 uses
  %i.ax = phi ptr [ %.sroa.56.1.i, %bb.m ], [ %.sroa.56.0.i, %bb.h ] ; 6 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  %i.ba = load i8, ptr %i.ax, align 1, !alias.scope !7659, !noalias !7661, !noundef !40 ; 5 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i
  %i.bc = and i8 %i.ba, 31
  %i.bd = zext nneg i8 %i.bc to i32               ; 3 uses
  %i.be = icmp ne ptr %i.az, %i.g
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 2 ; 3 uses
  %i.bg = load i8, ptr %i.az, align 1, !alias.scope !7659, !noalias !7661, !noundef !40
  %i.bh = shl nuw nsw i32 %i.bd, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = zext nneg i8 %i.bi to i32               ; 2 uses
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = icmp samesign ugt i8 %i.ba, -33
  br i1 %i.bl, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = zext nneg i8 %i.ba to i32
  br label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"
  %i.bn = icmp ne ptr %i.bf, %i.g
  call void @llvm.assume(i1 %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ax, i64 3 ; 3 uses
  %i.bp = load i8, ptr %i.bf, align 1, !alias.scope !7659, !noalias !7661, !noundef !40
  %i.bq = shl nuw nsw i32 %i.bj, 6
  %i.br = and i8 %i.bp, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %i.bu = shl nuw nsw i32 %i.bd, 12
  %i.bv = or disjoint i32 %i.bt, %i.bu
  %i.bw = icmp samesign ugt i8 %i.ba, -17
  br i1 %i.bw, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i"
  %i.bx = icmp ne ptr %i.bo, %i.g
  call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bz = load i8, ptr %i.bo, align 1, !alias.scope !7659, !noalias !7661, !noundef !40
  %i.ca = shl nuw nsw i32 %i.bd, 18
  %i.cb = and i32 %i.ca, 1835008
  %i.cc = shl nuw nsw i32 %i.bt, 6
  %i.cd = and i8 %i.bz, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = or disjoint i32 %i.cf, %i.cb
  br label %bb.j

bb.j:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i", %bb.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i"
  %.sroa.56.1.i = phi ptr [ %i.az, %bb.i ], [ %i.by, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i" ], [ %i.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i" ], [ %i.bf, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i" ] ; 4 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.bm, %bb.i ], [ %i.cg, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit16.i.i.i.i.i.i" ], [ %i.bv, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit14.i.i.i.i.i.i" ], [ %i.bk, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc0f6a24730e0911eE.exit12.i.i.i.i.i.i" ] ; 4 uses
  %i.ch = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ch)
  %i.ci = ptrtoint ptr %.sroa.56.1.i to i64
  %i.cj = sub i64 %i.ci, %i.ay
  %i.ck = add i64 %i.cj, %i.aw                    ; 2 uses
  %i.cl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 32
  br i1 %i.cl, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %cond.i.i.i.i.i.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i, 127
  br i1 %cond.i.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.4.0.i.ph.i.off.i.i.i.i = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i, -9
  %switch.i.i.i.i = icmp ult i32 %.sroa.4.0.i.ph.i.off.i.i.i.i, 2
  br i1 %switch.i.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cm = icmp eq ptr %.sroa.56.1.i, %i.g
  br i1 %i.cm, label %.critedge23.i, label %.lr.ph.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.n, %.critedge23.i
  %lpad.loopexit.split-lp43 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.p, !noalias !7662

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aw
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.11.0.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly %i.co, ptr noundef nonnull readonly %i.cn)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7662

.critedge23.i:                                    ; preds = %bb.h, %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.11.0.i
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly %i.cp, ptr noundef nonnull readonly %i.g)
          to label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h87372d5781bed68eE.exit" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7662

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noundef nonnull inttoptr (i64 1 to ptr))
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7662

bb.p:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53, !noalias !7662
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %.body ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h87372d5781bed68eE.exit": ; preds = %.critedge23.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !7659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7660
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.s unwind label %bb.q

bb.q:                                             ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h87372d5781bed68eE.exit"
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !7663 ; 2 uses
  %i.cs = icmp eq i64 %.val2.i.i, 0
  br i1 %i.cs, label %.body, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7664, !nonnull !40, !noundef !40
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7665
  br label %.body

bb.s:                                             ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h87372d5781bed68eE.exit"
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !7663 ; 2 uses
  %i.ct = icmp eq i64 %.val.i.i, 0
  br i1 %i.ct, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !7664, !nonnull !40, !noundef !40
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !7666
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

.body:                                            ; preds = %bb.q, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %common.resume

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.t, %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4core3str7pattern7Pattern15is_contained_in17hd6257961b338a0feE.exit

bb.u:                                             ; preds = %bb.v, %_ZN4core3str7pattern7Pattern15is_contained_in17hd6257961b338a0feE.exit
  ret void

bb.v:                                             ; preds = %_ZN4core3str7pattern7Pattern15is_contained_in17hd6257961b338a0feE.exit
  call void @_ZN4anki4text20ensure_string_in_nfc17h476208f7f6e96799E(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @"_ZN4anki5notes1_76_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..notes..NoteId$GT$9serialize17ha6850305cb7bcc95E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 !guid !7669 {
bb.a:
  %i.a = alloca [40 x i8], align 2                ; 15 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  %.val1 = load i64, ptr %0, align 8, !noundef !40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7670)
  %i.b = icmp sgt i64 %.val1, -1
  %.sroa.0.0.i.i.i.i.i = tail call i64 @llvm.abs.i64(i64 %.val1, i1 false) ; 10 uses
  %i.c = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 9999
  br i1 %i.c, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.a, %.lr.ph.i.i.i.i.i.3, %bb.a
  %.sroa.09.0.lcssa.i.i.i.i.i = phi i64 [ 20, %bb.a ], [ 16, %.lr.ph.i.i.i.i.i ], [ 12, %._crit_edge.i.i.i.i.i.a ], [ 8, %.lr.ph.i.i.i.i.i.a ], [ 4, %.lr.ph.i.i.i.i.i.3 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i, %bb.a ], [ %4, %.lr.ph.i.i.i.i.i ], [ %19, %._crit_edge.i.i.i.i.i.a ], [ %i.f, %.lr.ph.i.i.i.i.i.a ], [ %33, %.lr.ph.i.i.i.i.i.3 ] ; 3 uses
  %2 = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i.i.i, 99
  br i1 %2, label %bb.b, label %bb.c

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a
  %3 = urem i64 %.sroa.0.0.i.i.i.i.i, 10000
  %4 = udiv i64 %.sroa.0.0.i.i.i.i.i, 10000       ; 2 uses
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %3 to i16 ; 2 uses
  %5 = udiv i16 %.lhs.trunc.i.i.i.i.i, 100
  %6 = shl nuw nsw i16 %5, 1
  %7 = zext nneg i16 %6 to i64
  %8 = urem i16 %.lhs.trunc.i.i.i.i.i, 100
  %9 = shl nuw nsw i16 %8, 1
  %10 = zext nneg i16 %9 to i64
  %11 = getelementptr inbounds nuw i8, ptr @567, i64 %7
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %13 = load i16, ptr %11, align 1, !noalias !7670
  store i16 %13, ptr %12, align 2, !alias.scope !7670
  %14 = getelementptr inbounds nuw i8, ptr @567, i64 %10
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %16 = load i16, ptr %14, align 1, !noalias !7670
  store i16 %16, ptr %15, align 2, !alias.scope !7670
  %17 = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 99999999
  br i1 %17, label %._crit_edge.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i.a:                          ; preds = %.lr.ph.i.i.i.i.i
  %18 = urem i64 %4, 10000
  %19 = udiv i64 %.sroa.0.0.i.i.i.i.i, 100000000  ; 2 uses
  %.lhs.trunc.i.i.i.i.i.1 = trunc nuw nsw i64 %18 to i16 ; 2 uses
  %20 = udiv i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %21 = shl nuw nsw i16 %20, 1
  %22 = zext nneg i16 %21 to i64
  %23 = urem i16 %.lhs.trunc.i.i.i.i.i.1, 100
  %24 = shl nuw nsw i16 %23, 1
  %25 = zext nneg i16 %24 to i64
  %26 = getelementptr inbounds nuw i8, ptr @567, i64 %22
  %27 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %28 = load i16, ptr %26, align 1, !noalias !7670
  store i16 %28, ptr %27, align 2, !alias.scope !7670
  %29 = getelementptr inbounds nuw i8, ptr @567, i64 %25
  %30 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %31 = load i16, ptr %29, align 1, !noalias !7670
  store i16 %31, ptr %30, align 2, !alias.scope !7670
  %i.d = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 999999999999
  br i1 %i.d, label %.lr.ph.i.i.i.i.i.a, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.a:                               ; preds = %._crit_edge.i.i.i.i.i.a
  %i.e = urem i64 %19, 10000
  %i.f = udiv i64 %.sroa.0.0.i.i.i.i.i, 1000000000000 ; 2 uses
  %.lhs.trunc.i.i.i.i.i.a = trunc nuw nsw i64 %i.e to i16 ; 2 uses
  %i.g = udiv i16 %.lhs.trunc.i.i.i.i.i.a, 100
  %i.h = shl nuw nsw i16 %i.g, 1
  %i.i = zext nneg i16 %i.h to i64
  %i.j = urem i16 %.lhs.trunc.i.i.i.i.i.a, 100
  %i.k = shl nuw nsw i16 %i.j, 1
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @567, i64 %i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load i16, ptr %i.m, align 1, !noalias !7670
  store i16 %i.o, ptr %i.n, align 2, !alias.scope !7670
  %i.p = getelementptr inbounds nuw i8, ptr @567, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.r = load i16, ptr %i.p, align 1, !noalias !7670
  store i16 %i.r, ptr %i.q, align 2, !alias.scope !7670
  %i.s = icmp ugt i64 %.sroa.0.0.i.i.i.i.i, 9999999999999999
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph.i.i.i.i.i.a
  %32 = urem i64 %i.f, 10000
  %33 = udiv i64 %.sroa.0.0.i.i.i.i.i, 10000000000000000
  %.lhs.trunc.i.i.i.i.i.3 = trunc nuw nsw i64 %32 to i16 ; 2 uses
  %34 = udiv i16 %.lhs.trunc.i.i.i.i.i.3, 100
  %35 = shl nuw nsw i16 %34, 1
  %36 = zext nneg i16 %35 to i64
  %37 = urem i16 %.lhs.trunc.i.i.i.i.i.3, 100
  %38 = shl nuw nsw i16 %37, 1
  %39 = zext nneg i16 %38 to i64
  %40 = getelementptr inbounds nuw i8, ptr @567, i64 %36
  %41 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %42 = load i16, ptr %40, align 1, !noalias !7670
  store i16 %42, ptr %41, align 2, !alias.scope !7670
  %43 = getelementptr inbounds nuw i8, ptr @567, i64 %39
  %44 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %45 = load i16, ptr %43, align 1, !noalias !7670
  store i16 %45, ptr %44, align 2, !alias.scope !7670
  br label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %._crit_edge.i.i.i.i.i
  %.lhs.trunc24.i.i.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i.i.i to i16 ; 2 uses
  %i.t = urem i16 %.lhs.trunc24.i.i.i.i.i, 100
  %i.u = shl nuw nsw i16 %i.t, 1
  %i.v = zext nneg i16 %i.u to i64
  %i.w = udiv i16 %.lhs.trunc24.i.i.i.i.i, 100
  %.zext27.i.i.i.i.i = zext nneg i16 %i.w to i64
  %i.x = add i64 %.sroa.09.0.lcssa.i.i.i.i.i, -2  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr @567, i64 %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.aa = load i16, ptr %i.y, align 1, !noalias !7670
  store i16 %i.aa, ptr %i.z, align 1, !alias.scope !7670
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i.i.i.i.i
  %.sroa.09.1.i.i.i.i.i = phi i64 [ %i.x, %bb.b ], [ %.sroa.09.0.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i.i.i = phi i64 [ %.zext27.i.i.i.i.i, %bb.b ], [ %.sroa.0.1.lcssa.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.ab = icmp samesign ult i64 %.sroa.0.2.i.i.i.i.i, 10
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = shl nuw nsw i64 %.sroa.0.2.i.i.i.i.i, 1
  %i.ad = add i64 %.sroa.09.1.i.i.i.i.i, -2       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr @567, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  %i.ag = load i16, ptr %i.ae, align 1, !noalias !7670
  store i16 %i.ag, ptr %i.af, align 1, !alias.scope !7670
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ah = add i64 %.sroa.09.1.i.i.i.i.i, -1       ; 2 uses
  %i.ai = trunc nuw nsw i64 %.sroa.0.2.i.i.i.i.i to i8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.ak = or disjoint i8 %i.ai, 48
  store i8 %i.ak, ptr %i.aj, align 1, !alias.scope !7670
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.09.2.i.i.i.i.i = phi i64 [ %i.ah, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  br i1 %i.b, label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h1051511e8f2ac4eeE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add i64 %.sroa.09.2.i.i.i.i.i, -1       ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.al
  store i8 45, ptr %i.am, align 1, !alias.scope !7670
  br label %"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h1051511e8f2ac4eeE.exit"

"_ZN100_$LT$$RF$mut$u20$serde_json..ser..Serializer$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..Serializer$GT$24serialize_newtype_struct17h1051511e8f2ac4eeE.exit": ; preds = %bb.f, %bb.g
  %.sroa.09.3.i.i.i.i.i = phi i64 [ %.sroa.09.2.i.i.i.i.i, %bb.f ], [ %i.al, %bb.g ] ; 2 uses
  %i.an = sub i64 20, %.sroa.09.3.i.i.i.i.i       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.09.3.i.i.i.i.i
  %i.ap = icmp ult i64 %i.an, 21
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ao, i64 noundef %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN4anki5notes1_77_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notes..NoteId$GT$11deserialize17h06f56b5975847bdeE"(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !7671 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i6417h1be3e260145aa8b8E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN4anki5notes1_77_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notes..NoteId$GT$11deserialize17hd4fc86bb3994d1ddE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 !guid !7672 {
bb.a:
  %i.a = tail call { i64, ptr } @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$26deserialize_newtype_struct17h515340f458987d7fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @377, i64 noundef 6)
  ret { i64, ptr } %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN4anki5notes20note_differs_from_db17hb973d988beb67e13E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) initializes((120, 128)) %1) unnamed_addr #17 personality ptr @rust_eh_personality !guid !7685 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load <2 x i32>, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load i64, ptr %i.e, align 8, !noundef !40
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 %i.f, ptr %i.g, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7687)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7686, !noundef !40
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !7687, !noundef !40
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7.i = load i64, ptr %i.m, align 8, !alias.scope !7686, !noundef !40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val9.i = load i64, ptr %i.n, align 8, !alias.scope !7687, !noundef !40
  %.not.i.i.i = icmp eq i64 %.val7.i, %.val9.i
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i", label %.loopexit

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i": ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8.i = load ptr, ptr %i.o, align 8, !alias.scope !7687, !nonnull !40, !noundef !40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.p, align 8, !alias.scope !7686, !nonnull !40, !noundef !40
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val6.i, ptr nonnull readonly align 1 %.val8.i, i64 %.val7.i), !alias.scope !7688, !noalias !7689
  %i.q = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.q, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i"
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !7686, !noundef !40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !7687, !noundef !40
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i32, ptr %i.w, align 8, !alias.scope !7686, !noundef !40
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.z = load i32, ptr %i.y, align 8, !alias.scope !7687, !noundef !40
  %i.aa = icmp eq i32 %i.x, %i.z
  br i1 %i.aa, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val14.i = load ptr, ptr %i.ab, align 8, !alias.scope !7686, !nonnull !40, !noundef !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val15.i = load i64, ptr %i.ac, align 8, !alias.scope !7686, !noundef !40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16.i = load ptr, ptr %i.ad, align 8, !alias.scope !7687, !nonnull !40, !noundef !40
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val17.i = load i64, ptr %i.ae, align 8, !alias.scope !7687, !noundef !40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7691)
  %.not.i.i18.i = icmp eq i64 %.val15.i, %.val17.i
  br i1 %.not.i.i18.i, label %.preheader.split.i.i.i, label %.loopexit

.preheader.split.i.i.i:                           ; preds = %bb.e
  %.not16.i.i.i = icmp eq i64 %.val15.i, 0
  br i1 %.not16.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i", label %.lr.ph.i.i.i

bb.f:                                             ; preds = %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.i.i.i
  %i.af = add nuw i64 %.sroa.01.012.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.af, %.val15.i
  br i1 %exitcond.not.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.split.i.i.i, %bb.f
  %.sroa.01.012.i.i.i = phi i64 [ %i.af, %bb.f ], [ 0, %.preheader.split.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val14.i, i64 %.sroa.01.012.i.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val16.i, i64 %.sroa.01.012.i.i.i ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val6.i.i.i = load i64, ptr %i.ai, align 8, !alias.scope !7690, !noalias !7689, !noundef !40 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 16
  %.val8.i.i.i = load i64, ptr %i.aj, align 8, !alias.scope !7691, !noalias !7689, !noundef !40
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val6.i.i.i, %.val8.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.i.i.i, label %.loopexit

_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %.val7.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !7691, !noalias !7689, !nonnull !40, !noundef !40
  %i.al = getelementptr i8, ptr %i.ag, i64 8
  %.val.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !7690, !noalias !7689, !nonnull !40, !noundef !40
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i.i, ptr nonnull readonly align 1 %.val7.i.i.i, i64 %.val6.i.i.i), !alias.scope !7692, !noalias !7693
  %.not10.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %.not10.i.i.i, label %bb.f, label %.loopexit

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i": ; preds = %bb.f, %.preheader.split.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val10.i = load ptr, ptr %i.am, align 8, !alias.scope !7686, !nonnull !40, !noundef !40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val11.i = load i64, ptr %i.an, align 8, !alias.scope !7686, !noundef !40
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val12.i = load ptr, ptr %i.ao, align 8, !alias.scope !7687, !nonnull !40, !noundef !40
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val13.i = load i64, ptr %i.ap, align 8, !alias.scope !7687, !noundef !40
  %i.aq = tail call fastcc noundef zeroext i1 @"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE"(ptr nonnull %.val10.i, i64 %.val11.i, ptr nonnull %.val12.i, i64 %.val13.i), !noalias !7689
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.as = load i64, ptr %i.ar, align 8, !range !41
  %i.at = icmp eq i64 %i.as, -9223372036854775808
  %or.cond = select i1 %i.aq, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i"
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.av = load i32, ptr %i.au, align 8, !range !51, !alias.scope !7687, !noundef !40
  %i.aw = trunc nuw i32 %i.av to i1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.i.i.i, %.lr.ph.i.i.i, %bb.g, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i", %bb.e, %bb.d, %bb.c, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i", %bb.b, %bb.a
  %i.ax = phi i1 [ true, %bb.e ], [ true, %bb.a ], [ %i.aw, %bb.g ], [ true, %bb.c ], [ true, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h4ed3c1c159607eeaE.exit.i" ], [ true, %bb.b ], [ true, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i" ], [ true, %bb.d ], [ true, %.lr.ph.i.i.i ], [ true, %_ZN4core3cmp9PartialEq2ne17hf3ddd4852dd7eab9E.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store <2 x i32> %i.d, ptr %i.c, align 8
  ret i1 %i.ax
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5notes4Note10fields_map17ha50ec73d5a5cc0a3E(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(136) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 !guid !7694 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !40, !noundef !40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load i64, ptr %i.d, align 8, !noundef !40
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
end_hunk_0
