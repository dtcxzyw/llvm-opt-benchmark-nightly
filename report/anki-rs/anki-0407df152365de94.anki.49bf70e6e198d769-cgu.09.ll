Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h00e9e9180ed9bb88E":bb.a
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.m = load i64, ptr %i.a, align 8, !range !13, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !12, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.h, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.q, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.p, i64 %i.r) #43
  unreachable

bb.f:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.g
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #41
          to label %bb.s unwind label %bb.r

bb.g:                                             ; preds = %.critedge25
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4
  %i.u = icmp ule i64 %2, %i.p
  call void @llvm.assume(i1 %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.p, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %.sroa.12.32.extract.trunc = trunc nuw nsw i32 %3 to i8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 %5
  br label %bb.i

bb.i:                                             ; preds = %bb.q, %bb.h
  %.lcssa7578 = phi i64 [ 0, %bb.h ], [ %i.am, %bb.q ] ; 4 uses
  %i.w = icmp ult i64 %2, %.lcssa7578
  br i1 %i.w, label %.critedge25, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.i, %bb.m
  %i.x = phi i64 [ %i.am, %bb.m ], [ %.lcssa7578, %bb.i ] ; 4 uses
  %i.y = sub nuw i64 %2, %i.x                     ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.x ; 2 uses
  %i.aa = icmp ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i, label %bb.j

.preheader.i.i:                                   ; preds = %.lr.ph.split.i
  %.not.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %.lr.ph.split.i
  %i.ab = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %.sroa.12.32.extract.trunc, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.z, i64 noundef %i.y)
          to label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i unwind label %.loopexit

._crit_edge.i.i:                                  ; preds = %bb.k, %.lr.ph.i.i, %.preheader.i.i
  %.sroa.01.0.lcssa.i.i = phi i64 [ 0, %.preheader.i.i ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ], [ %i.y, %bb.k ]
  %.sroa.0.1.i.i = phi i64 [ 0, %.preheader.i.i ], [ 1, %.lr.ph.i.i ], [ 0, %bb.k ]
  %i.ac = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i, 0
  %i.ad = insertvalue { i64, i64 } %i.ac, i64 %.sroa.01.0.lcssa.i.i, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.k
  %.sroa.01.05.i.i = phi i64 [ %i.ah, %bb.k ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.05.i.i
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !9819, !noalias !9820, !noundef !4
  %i.ag = icmp eq i8 %i.af, %.sroa.12.32.extract.trunc
  br i1 %i.ag, label %._crit_edge.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.ah = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.y
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i: ; preds = %bb.j, %._crit_edge.i.i
  %.merged.i.i = phi { i64, i64 } [ %i.ad, %._crit_edge.i.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ai = extractvalue { i64, i64 } %.merged.i.i, 0
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %.critedge25

bb.l:                                             ; preds = %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i
  %i.ak = extractvalue { i64, i64 } %.merged.i.i, 1 ; 2 uses
  %i.al = add nuw i64 %i.x, 1
  %i.am = add i64 %i.al, %i.ak                    ; 3 uses
  %.not14.i = icmp ugt i64 %i.am, %2
  %i.an = add i64 %i.ak, %i.x                     ; 3 uses
  %or.cond.i.not = icmp ult i64 %i.an, %2
  br i1 %or.cond.i.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  br i1 %.not14.i, label %.critedge25, label %.lr.ph.split.i

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %lhsc = load i8, ptr %i.ao, align 1
  %i.ap = icmp eq i8 %lhsc, %.sroa.12.32.extract.trunc
  br i1 %i.ap, label %bb.o, label %bb.m

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.o, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.o:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa7578
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq)
          to label %bb.q unwind label %.loopexit.split-lp

.critedge25:                                      ; preds = %bb.i, %bb.m, %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa7578
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %2
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at)
          to label %bb.p unwind label %bb.g

bb.p:                                             ; preds = %.critedge25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.q:                                             ; preds = %bb.o
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %4, ptr noundef nonnull %i.v)
          to label %bb.i unwind label %.loopexit.split-lp

bb.r:                                             ; preds = %bb.f
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.s:                                             ; preds = %bb.f
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$tracing_core..field..Iter$u20$as$u20$core..fmt..Debug$GT$3fmt17h12108009d2011cf1E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @336, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @337, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @334, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @338, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @335)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define range(i64 0, -4294967295) i64 @"_ZN63_$LT$anki..types..Usn$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h5c827aa33ed457a5E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #18 {
bb.a:
  switch i64 %1, label %thread-pre-split.i [
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !alias.scope !9823, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
    i8 45, label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %0, align 1, !alias.scope !9823
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.i [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.d = add i64 %1, -1                           ; 3 uses
  %i.e = icmp ult i64 %1, 9
  br i1 %i.e, label %.preheader.i, label %.preheader105.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.g = add i64 %1, -1                           ; 3 uses
  %i.h = icmp ult i64 %1, 9
  br i1 %i.h, label %.preheader108.i, label %.lr.ph

.preheader108.i:                                  ; preds = %bb.e
  %.not94121.i = icmp eq i64 %i.g, 0
  br i1 %.not94121.i, label %.loopexit.i, label %.lr.ph.i

bb.f:                                             ; preds = %bb.j
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i83, i64 1
  %i.j = add i64 %.sroa.27.0.i82, -1              ; 2 uses
  %i.k = extractvalue { i32, i1 } %i.aq, 0        ; 2 uses
  %.not95.i = icmp eq i64 %i.j, 0
  br i1 %.not95.i, label %.loopexit.i, label %.lr.ph84

.preheader111.i:                                  ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i79, i64 1
  %i.m = add i64 %.sroa.27.2.i78, -1              ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.x, 0         ; 2 uses
  %.not93.i = icmp eq i64 %i.m, 0
  br i1 %.not93.i, label %.loopexit.i, label %.lr.ph

.loopexit.i:                                      ; preds = %.preheader111.i, %bb.h, %bb.f, %bb.k, %.preheader105.i, %.preheader.i, %.preheader108.i
  %.sroa.072.3.i = phi i32 [ %i.ah, %bb.h ], [ %i.az, %bb.k ], [ %i.k, %bb.f ], [ 0, %.preheader.i ], [ 0, %.preheader108.i ], [ 0, %.preheader105.i ], [ %i.n, %.preheader111.i ]
  %i.o = zext i32 %.sroa.072.3.i to i64
  %i.p = shl nuw i64 %i.o, 32
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph:                                           ; preds = %bb.e, %.preheader111.i
  %.sroa.0.2.i79 = phi ptr [ %i.l, %.preheader111.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i78 = phi i64 [ %i.m, %.preheader111.i ], [ %i.g, %bb.e ]
  %.sroa.072.2.i77 = phi i32 [ %i.n, %.preheader111.i ], [ 0, %bb.e ]
  %i.q = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.2.i77, i32 10) ; 2 uses
  %i.r = extractvalue { i32, i1 } %i.q, 1
  %i.s = load i8, ptr %.sroa.0.2.i79, align 1, !alias.scope !9823, !noundef !4
  %i.t = zext i8 %i.s to i32
  %i.u = add nsw i32 %i.t, -48                    ; 2 uses
  %i.v = icmp ugt i32 %i.u, 9                     ; 2 uses
  %brmerge.i = select i1 %i.v, i1 true, i1 %i.r
  br i1 %brmerge.i, label %.loopexit113.split.loop.exit119.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.w = extractvalue { i32, i1 } %i.q, 0
  %i.x = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.w, i32 %i.u) ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %.loopexit104.i, label %.preheader111.i

.loopexit107.split.loop.exit125.i:                ; preds = %.lr.ph84
  %.mux100.le.i = select i1 %i.ao, i64 256, i64 512
  br label %.loopexit104.i

.loopexit113.split.loop.exit119.i:                ; preds = %.lr.ph
  %.mux.le.i = select i1 %i.v, i64 256, i64 768
  br label %.loopexit104.i

.loopexit104.i:                                   ; preds = %bb.g, %.lr.ph.i, %bb.j, %.lr.ph132.i, %.loopexit113.split.loop.exit119.i, %.loopexit107.split.loop.exit125.i
  %.sroa.12.2.i = phi i64 [ 256, %.lr.ph132.i ], [ 512, %bb.j ], [ 256, %.lr.ph.i ], [ %.mux100.le.i, %.loopexit107.split.loop.exit125.i ], [ %.mux.le.i, %.loopexit113.split.loop.exit119.i ], [ 768, %bb.g ]
  %i.z = or disjoint i64 %.sroa.12.2.i, 1
  br label %"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit"

.lr.ph.i:                                         ; preds = %.preheader108.i, %bb.h
  %.sroa.0.3124.i = phi ptr [ %i.ag, %bb.h ], [ %i.f, %.preheader108.i ] ; 2 uses
  %.sroa.27.3123.i = phi i64 [ %i.af, %bb.h ], [ %i.g, %.preheader108.i ]
  %.sroa.072.4122.i = phi i32 [ %i.ah, %bb.h ], [ 0, %.preheader108.i ]
  %i.aa = load i8, ptr %.sroa.0.3124.i, align 1, !alias.scope !9823, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 10
  br i1 %i.ad, label %bb.h, label %.loopexit104.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.ae = mul i32 %.sroa.072.4122.i, 10
  %i.af = add nsw i64 %.sroa.27.3123.i, -1        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.3124.i, i64 1
  %i.ah = sub i32 %i.ae, %i.ac                    ; 2 uses
  %.not94.i = icmp eq i64 %i.af, 0
  br i1 %.not94.i, label %.loopexit.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.c
  %i.ai = icmp ult i64 %1, 8
  br i1 %i.ai, label %.lr.ph132.i.preheader, label %.preheader105.i

.lr.ph132.i.preheader:                            ; preds = %.preheader.i, %bb.i
  %.sroa.0.1131.i.ph = phi ptr [ %0, %bb.i ], [ %i.c, %.preheader.i ]
  %.sroa.27.1130.i.ph = phi i64 [ %1, %bb.i ], [ %i.d, %.preheader.i ]
  br label %.lr.ph132.i

.preheader105.i:                                  ; preds = %bb.i, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %1, %bb.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %0, %bb.i ], [ %i.c, %bb.d ]
  %.not95.i80 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not95.i80, label %.loopexit.i, label %.lr.ph84

.preheader.i:                                     ; preds = %bb.d
  %.not96128.i = icmp eq i64 %i.d, 0
  br i1 %.not96128.i, label %.loopexit.i, label %.lr.ph132.i.preheader

.lr.ph84:                                         ; preds = %.preheader105.i, %bb.f
  %.sroa.0.0.i83 = phi ptr [ %i.i, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader105.i ] ; 2 uses
  %.sroa.27.0.i82 = phi i64 [ %i.j, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader105.i ]
  %.sroa.072.0.i81 = phi i32 [ %i.k, %bb.f ], [ 0, %.preheader105.i ]
  %i.aj = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.0.i81, i32 10) ; 2 uses
  %i.ak = extractvalue { i32, i1 } %i.aj, 1
  %i.al = load i8, ptr %.sroa.0.0.i83, align 1, !alias.scope !9823, !noundef !4
  %i.am = zext i8 %i.al to i32
  %i.an = add nsw i32 %i.am, -48                  ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 9                   ; 2 uses
  %brmerge99.i = select i1 %i.ao, i1 true, i1 %i.ak
  br i1 %brmerge99.i, label %.loopexit107.split.loop.exit125.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph84
  %i.ap = extractvalue { i32, i1 } %i.aj, 0
  %i.aq = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.ap, i32 %i.an) ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit104.i, label %bb.f

.lr.ph132.i:                                      ; preds = %.lr.ph132.i.preheader, %bb.k
  %.sroa.0.1131.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.0.1131.i.ph, %.lr.ph132.i.preheader ] ; 2 uses
  %.sroa.27.1130.i = phi i64 [ %i.ax, %bb.k ], [ %.sroa.27.1130.i.ph, %.lr.ph132.i.preheader ]
  %.sroa.072.1129.i = phi i32 [ %i.az, %bb.k ], [ 0, %.lr.ph132.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1131.i, align 1, !alias.scope !9823, !noundef !4
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.k, label %.loopexit104.i

bb.k:                                             ; preds = %.lr.ph132.i
  %i.aw = mul i32 %.sroa.072.1129.i, 10
  %i.ax = add nsw i64 %.sroa.27.1130.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1131.i, i64 1
  %i.az = add i32 %i.au, %i.aw                    ; 2 uses
  %.not96.i = icmp eq i64 %i.ax, 0
  br i1 %.not96.i, label %.loopexit.i, label %.lr.ph132.i

"_ZN4core3num21_$LT$impl$u20$i32$GT$16from_ascii_radix17h21f74e7a5b929062E.exit": ; preds = %bb.a, %bb.b, %bb.b, %.loopexit.i, %.loopexit104.i
  %.sroa.12.0.insert.insert.i = phi i64 [ %i.z, %.loopexit104.i ], [ %i.p, %.loopexit.i ], [ 1, %bb.a ], [ 257, %bb.b ], [ 257, %bb.b ]
  ret i64 %.sroa.12.0.insert.insert.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ab0e6022e16e251E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @260, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @340, i64 noundef 11, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @253, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @341, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @339)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$id_tree..error..NodeIdError$u20$as$u20$core..fmt..Debug$GT$3fmt17heb3de77b39f50f28E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !17, !noundef !4
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %. = select i1 %i.b, i64 19, i64 20
  %.1 = select i1 %i.b, ptr @343, ptr @342
  %i.c = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.1, i64 noundef %.)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN65_$LT$anki..notetype..NotetypeId$u20$as$u20$core..fmt..Display$GT$3fmt17hf25470e613af1ac3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i64$GT$3fmt17hace3f0074abbba1bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$libsqlite3_sys..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h41f2c4488410c8b4E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @243, i64 noundef 5, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @345, i64 noundef 4, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @344, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @346, i64 noundef 13, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @242)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h48f0d43da5334d1fE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !9834, !noalias !9835, !nonnull !4, !align !16, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !9834, !noalias !9835, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !9834, !noalias !9835, !noundef !4 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.val2.i, i64 %i.c) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.0.i.i ; 2 uses
  %i.e = sub nuw i64 %.val2.i, %.sroa.0.0.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9836)
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %2, 1
  br i1 %i.g, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i": ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.d, i64 range(i64 2, 1) %2, i1 false), !alias.scope !9837, !noalias !9838
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.d, align 1, !noalias !9839, !noundef !4
  store i8 %i.h, ptr %1, align 1, !alias.scope !9836, !noalias !9840
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i"
  %i.i = add i64 %i.c, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %storemerge = phi i64 [ %i.i, %bb.d ], [ %.val2.i, %bb.a ]
  %.sroa.0.0.i4 = phi ptr [ null, %bb.d ], [ @53, %bb.a ]
  store i64 %storemerge, ptr %i.b, align 8
  ret ptr %.sroa.0.0.i4
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @"_ZN66_$LT$std..io..cursor..Cursor$LT$T$GT$$u20$as$u20$std..io..Read$GT$10read_exact17h74ec0442aaa5e278E"(ptr noalias noundef align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull writeonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h8d62272f9768a9e7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !noalias !9851 ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 1        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !9852, !noalias !9851, !noundef !4 ; 2 uses
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %i.e) ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.i.i ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN6flate29bufreader18BufReader$LT$R$GT$3new17h178f771b48cf3628E":bb.a

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10038)
  call void @llvm.experimental.noalias.scope.decl(metadata !10039)
  call void @llvm.experimental.noalias.scope.decl(metadata !10040)
  %i.o = load ptr, ptr %i.a, align 8, !alias.scope !10041, !noalias !10036, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !10042, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !10041, !noalias !10036, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !10041, !noalias !10036, !noundef !4
  invoke void %i.q(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef %i.t, i64 noundef %i.v)
          to label %.body unwind label %bb.e, !noalias !10036, !inline_history !10027

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !10036
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.x = extractvalue { ptr, i64 } %i.m, 0
  %i.y = extractvalue { ptr, i64 } %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.x, ptr %i.z, align 8, !alias.scope !10035, !noalias !10043
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.y, ptr %i.aa, align 8, !alias.scope !10035, !noalias !10043
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false), !alias.scope !10035, !noalias !10043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.body:                                            ; preds = %bb.g, %bb.d
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.ac, %bb.g ]
  resume { ptr, i32 } %eh.lpad-body6

bb.g:                                             ; preds = %bb.a, %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !10044)
  call void @llvm.experimental.noalias.scope.decl(metadata !10045)
  call void @llvm.experimental.noalias.scope.decl(metadata !10046)
  %i.ad = load ptr, ptr %1, align 8, !alias.scope !10047, !nonnull !4, !align !5, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10047, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !10047, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !10047, !noundef !4
  invoke void %i.af(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef %i.ai, i64 noundef %i.ak)
          to label %.body unwind label %bb.h, !inline_history !10027

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN71_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..Read$GT$4read17h2f7f12d1f21e105cE"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 3 uses
  %.not = icmp ult i64 %2, %i.g
  %or.cond = select i1 %i.e, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.b, %i.d
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !10058, !noalias !10059, !nonnull !4, !noundef !4
  %i.k = tail call { i64, ptr } @"_ZN69_$LT$bytes..buf..reader..Reader$LT$B$GT$$u20$as$u20$std..io..Read$GT$4read17hff29cafa0f5dc9aeE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noalias noundef nonnull align 1 %i.j, i64 noundef %i.g), !noalias !10059 ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.o = phi i64 [ %i.g, %bb.b ], [ %.pre, %bb.e ] ; 2 uses
  %i.p = phi i64 [ %i.d, %bb.b ], [ %i.s, %bb.e ] ; 5 uses
  %i.q = phi i64 [ %i.b, %bb.b ], [ 0, %bb.e ]    ; 5 uses
  %i.r = icmp ult i64 %i.p, %i.q
  %.not.i = icmp ugt i64 %i.p, %i.o
  %or.cond.i = or i1 %i.r, %.not.i
  br i1 %or.cond.i, label %bb.f, label %bb.i, !prof !24

bb.e:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.m to i64                 ; 2 uses
  store i64 %i.s, ptr %i.c, align 8, !alias.scope !10058, !noalias !10059
  store i64 0, ptr %i.a, align 8, !alias.scope !10058, !noalias !10059
  %.pre = load i64, ptr %i.f, align 8, !alias.scope !10058, !noalias !10059
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.q, i64 noundef %i.p, i64 noundef %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #43, !noalias !10059
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.t = tail call { i64, ptr } @"_ZN69_$LT$bytes..buf..reader..Reader$LT$B$GT$$u20$as$u20$std..io..Read$GT$4read17hff29cafa0f5dc9aeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2)
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  %i.u = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.m, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10058, !noalias !10059, !nonnull !4, !noundef !4
  %i.x = sub nuw i64 %i.p, %i.q
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.q ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10060)
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %2) ; 4 uses
  %i.z = icmp eq i64 %.sroa.0.0.i.i, 1
  br i1 %i.z, label %bb.j, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i"

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.y, align 1, !noalias !10061, !noundef !4
  store i8 %i.aa, ptr %1, align 1, !alias.scope !10060, !noalias !10062
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h5f86751e9459d7b1E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i": ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull readonly align 1 %i.y, i64 range(i64 2, 1) %.sroa.0.0.i.i, i1 false), !alias.scope !10063, !noalias !10064
  br label %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h5f86751e9459d7b1E.exit"

"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h5f86751e9459d7b1E.exit": ; preds = %bb.j, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i"
  %i.ab = inttoptr i64 %.sroa.0.0.i.i to ptr
  %i.ac = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ab, 1
  %i.ad = add i64 %i.q, %.sroa.0.0.i.i
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.p, i64 %i.ad)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h5f86751e9459d7b1E.exit", %bb.g
  %.merged = phi { i64, ptr } [ %i.t, %bb.g ], [ %i.u, %bb.h ], [ %i.ac, %"_ZN3std2io5impls60_$LT$impl$u20$std..io..Read$u20$for$u20$$RF$$u5b$u8$u5d$$GT$4read17h5f86751e9459d7b1E.exit" ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN72_$LT$anki..decks..name..NativeDeckName$u20$as$u20$core..fmt..Display$GT$3fmt17h63ffe0cea980182aE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h802954ddc6559215E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define void @"_ZN73_$LT$anki..notetype..NotetypeId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h28e55894aea484d0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #21 {
bb.a:
  switch i64 %2, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !alias.scope !10068, !noalias !10069, !noundef !4 ; 2 uses
  switch i8 %i.a, label %bb.c [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.a
  %.pr.i = load i8, ptr %1, align 1, !alias.scope !10068, !noalias !10069
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split.i, %bb.b
  %i.b = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.a, %bb.b ]
  switch i8 %i.b, label %bb.j [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = add i64 %2, -1                           ; 3 uses
  %i.e = icmp ult i64 %2, 17
  br i1 %i.e, label %.preheader.i, label %.preheader98.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.g = add i64 %2, -1                           ; 3 uses
  %i.h = icmp ult i64 %2, 17
  br i1 %i.h, label %.preheader100.i, label %.lr.ph

.preheader100.i:                                  ; preds = %bb.e
  %.not92112.i = icmp eq i64 %i.g, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.l
  %i.i = extractvalue { i64, i1 } %i.aq, 0        ; 2 uses
  %.not93.i = icmp eq i64 %i.ah, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader102.i:                                  ; preds = %bb.h
  %i.j = extractvalue { i64, i1 } %i.u, 0         ; 2 uses
  %.not91.i = icmp eq i64 %i.l, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.preheader102.i
  %.sroa.0.2.i57 = phi ptr [ %i.k, %.preheader102.i ], [ %i.f, %bb.e ] ; 2 uses
  %.sroa.27.2.i56 = phi i64 [ %i.l, %.preheader102.i ], [ %i.g, %bb.e ]
  %.sroa.070.2.i55 = phi i64 [ %i.j, %.preheader102.i ], [ 0, %bb.e ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i57, i64 1
  %i.l = add i64 %.sroa.27.2.i56, -1              ; 2 uses
  %i.m = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i55, i64 10) ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.m, 0
  %i.o = load i8, ptr %.sroa.0.2.i57, align 1, !alias.scope !10068, !noalias !10069, !noundef !4
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, 10
  br i1 %i.r, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.s = extractvalue { i64, i1 } %i.m, 1
  br i1 %i.s, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.q to i64
  %i.u = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.n, i64 %i.t) ; 2 uses
  %i.v = extractvalue { i64, i1 } %i.u, 1
  br i1 %i.v, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.i
  %.sroa.0.3115.i = phi ptr [ %i.ac, %bb.i ], [ %i.f, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.ab, %bb.i ], [ %i.g, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.ae, %bb.i ], [ 0, %.preheader100.i ]
  %i.w = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !10068, !noalias !10069, !noundef !4
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.x, -48                    ; 2 uses
  %i.z = icmp ult i32 %i.y, 10
  br i1 %i.z, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.aa = mul i64 %.sroa.070.4113.i, 10
  %i.ab = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = sub i64 %i.aa, %i.ad                    ; 2 uses
  %.not92.i = icmp eq i64 %i.ab, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.j:                                             ; preds = %bb.c
  %i.af = icmp ult i64 %2, 16
  br i1 %i.af, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.j
  %.sroa.0.1119.i.ph = phi ptr [ %1, %bb.j ], [ %i.c, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %2, %bb.j ], [ %i.d, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.j, %bb.d
  %.sroa.27.0.ph.i = phi i64 [ %2, %bb.j ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %1, %bb.j ], [ %i.c, %bb.d ]
  %.not93.i58 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i58, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph62

.preheader.i:                                     ; preds = %bb.d
  %.not94116.i = icmp eq i64 %i.d, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i.preheader

.lr.ph62:                                         ; preds = %.preheader98.i, %bb.f
  %.sroa.0.0.i61 = phi ptr [ %i.ag, %bb.f ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i60 = phi i64 [ %i.ah, %bb.f ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i59 = phi i64 [ %i.i, %bb.f ], [ 0, %.preheader98.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i61, i64 1
  %i.ah = add i64 %.sroa.27.0.i60, -1             ; 2 uses
  %i.ai = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i59, i64 10) ; 2 uses
  %i.aj = extractvalue { i64, i1 } %i.ai, 0
  %i.ak = load i8, ptr %.sroa.0.0.i61, align 1, !alias.scope !10068, !noalias !10069, !noundef !4
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ult i32 %i.am, 10
  br i1 %i.an, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %.lr.ph62
  %i.ao = extractvalue { i64, i1 } %i.ai, 1
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aj, i64 %i.ap) ; 2 uses
  %i.ar = extractvalue { i64, i1 } %i.aq, 1
  br i1 %i.ar, label %.loopexit, label %bb.f

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.m
  %.sroa.0.1119.i = phi ptr [ %i.ay, %bb.m ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.ax, %bb.m ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.ba, %bb.m ], [ 0, %.lr.ph120.i.preheader ]
  %i.as = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !10068, !noalias !10069, !noundef !4
  %i.at = zext i8 %i.as to i32
  %i.au = add nsw i32 %i.at, -48                  ; 2 uses
  %i.av = icmp ult i32 %i.au, 10
  br i1 %i.av, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.lr.ph120.i
  %i.aw = mul i64 %.sroa.070.1117.i, 10
  %i.ax = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = add i64 %i.aw, %i.az                    ; 2 uses
  %.not94.i = icmp eq i64 %i.ax, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

.loopexit:                                        ; preds = %bb.h, %bb.g, %.lr.ph, %.lr.ph.i, %.lr.ph62, %bb.k, %bb.l, %.lr.ph120.i, %bb.b, %bb.b, %bb.a
  %.sroa.4.0.ph = phi i8 [ 1, %bb.b ], [ 1, %bb.b ], [ 0, %bb.a ], [ 2, %bb.k ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph120.i ], [ 2, %bb.l ], [ 1, %.lr.ph62 ], [ 1, %.lr.ph ], [ 3, %bb.h ], [ 3, %bb.g ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.4.0.ph, ptr %i.bb, align 1
  br label %bb.n

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.i, %bb.f, %bb.m, %.preheader98.i, %.preheader.i, %.preheader100.i
  %.sroa.151.0 = phi i64 [ %i.ba, %bb.m ], [ %i.i, %bb.f ], [ %i.ae, %bb.i ], [ 0, %.preheader.i ], [ 0, %.preheader100.i ], [ 0, %.preheader98.i ], [ %i.j, %.preheader102.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.151.0, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", %.loopexit
  %storemerge = phi i8 [ 0, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit" ], [ 1, %.loopexit ]
  store i8 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$7consume17h627383ffd5a57640E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = add i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  store i64 %.sroa.0.0.i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN74_$LT$flate2..bufreader..BufReader$LT$R$GT$$u20$as$u20$std..io..BufRead$GT$8fill_buf17hbe59c08cc3bdae91E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = tail call { i64, ptr } @"_ZN69_$LT$bytes..buf..reader..Reader$LT$B$GT$$u20$as$u20$std..io..Read$GT$4read17hff29cafa0f5dc9aeE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 1 %i.g, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 0
  %i.l = extractvalue { i64, ptr } %i.j, 1        ; 2 uses
  %i.m = trunc nuw i64 %i.k to i1
  br i1 %i.m, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a, %bb.e
  %i.n = phi i64 [ %i.d, %bb.a ], [ %i.t, %bb.e ] ; 4 uses
  %i.o = phi i64 [ %i.b, %bb.a ], [ 0, %bb.e ]    ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %i.r = icmp ult i64 %i.n, %i.o
  %.not = icmp ugt i64 %i.n, %i.q
  %or.cond = or i1 %i.r, %.not
  br i1 %or.cond, label %bb.g, label %bb.f, !prof !24

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.s, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.e:                                             ; preds = %bb.b
  %i.t = ptrtoint ptr %i.l to i64                 ; 2 uses
  store i64 %i.t, ptr %i.c, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.c

bb.f:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = sub nuw i64 %i.n, %i.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  store ptr %i.x, ptr %0, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.y, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.o, i64 noundef %i.n, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #43
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN75_$LT$anki..error..search..SearchErrorKind$u20$as$u20$core..fmt..Display$GT$3fmt17hfb525c01856fa3cdE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val37 = load ptr, ptr %i.b, align 8
  %.val36 = load ptr, ptr %1, align 8             ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val37, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !4, !noalias !4, !nonnull !4 ; 19 uses
  switch i64 %i.a, label %default.unreachable128 [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit42
    i64 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit47
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit52
    i64 4, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit57
    i64 5, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit62
    i64 6, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit67
    i64 7, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72
    i64 8, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit77
    i64 9, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit82
    i64 10, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87
    i64 11, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92
    i64 12, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit97
    i64 13, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit102
    i64 14, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit107
    i64 15, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit112
    i64 16, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit117
    i64 17, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit122
    i64 18, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit127
  ]

default.unreachable128:                           ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @375, i64 noundef 12), !noalias !10109, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit42: ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @376, i64 noundef 11), !noalias !10110, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit47: ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @377, i64 noundef 10), !noalias !10111, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit52: ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @378, i64 noundef 13), !noalias !10112, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit57: ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @379, i64 noundef 13), !noalias !10113, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit62: ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @380, i64 noundef 10), !noalias !10114, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit67: ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @381, i64 noundef 13), !noalias !10115, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72: ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @382, i64 noundef 10), !noalias !10116, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit77: ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @383, i64 noundef 13), !noalias !10117, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit82: ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @385, i64 noundef 12), !noalias !10118, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87: ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @386, i64 noundef 11), !noalias !10119, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92: ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @387, i64 noundef 19), !noalias !10120, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit97: ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @388, i64 noundef 19), !noalias !10121, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit102: ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @389, i64 noundef 13), !noalias !10122, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit107: ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @391, i64 noundef 18), !noalias !10123, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit112: ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @392, i64 noundef 26), !noalias !10124, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit117: ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @393, i64 noundef 26), !noalias !10125, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit122: ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 19), !noalias !10126, !inline_history !10072
  br label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit127: ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val36, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @395, i64 noundef 5), !noalias !10127, !inline_history !10072
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit127, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit122, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit117, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit112, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit107, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit102, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit97, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit82, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit77, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit67, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit62, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit57, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit52, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit47, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit42, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.e, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.f, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit42 ], [ %i.g, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit47 ], [ %i.h, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit52 ], [ %i.i, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit57 ], [ %i.j, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit62 ], [ %i.k, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit67 ], [ %i.l, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit72 ], [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit77 ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit82 ], [ %i.o, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit87 ], [ %i.p, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit92 ], [ %i.q, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit97 ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit102 ], [ %i.s, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit107 ], [ %i.t, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit112 ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit117 ], [ %i.v, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit122 ], [ %i.w, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit127 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
begin_hunk_2_@_ZN9serde_aux16field_attributes30deserialize_bool_from_anything17h7d9746f5a8ebfbbbE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11568
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_bool17ha2d21ab9caf1f4e4E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.q unwind label %bb.d, !noalias !11569

bb.q:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.b, align 8, !range !17, !noalias !11568, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !17, !noalias !11568, !noundef !4
  store i8 %i.aq, ptr %i.ao, align 8, !noalias !11568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11568
  %.sroa.10.0.copyload50 = load ptr, ptr %i.ao, align 8, !noalias !11570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11568
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !11568, !nonnull !4, !align !5, !noundef !4
  store ptr %i.as, ptr %i.ao, align 8, !noalias !11568
  store i64 -9223372036854775805, ptr %i.c, align 8, !noalias !11568
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11568
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_bool_from_anything..AnythingOrBool$C$serde_json..error..Error$GT$$GT$17ha2653e4cd4f6bc44E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.d, !noalias !11569

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11568
  %i.at = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 62)
          to label %bb.u unwind label %bb.d, !noalias !11569

bb.u:                                             ; preds = %bb.t
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11569
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11569
  unreachable

common.resume:                                    ; preds = %.body, %bb.bm, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ex, %bb.bm ], [ %i.t, %bb.d ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.b, %bb.u
  %.sroa.10.1.ph = phi ptr [ %i.at, %bb.u ], [ %i.s, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11568
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.ph, ptr %i.av, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

.thread:                                          ; preds = %bb.r, %bb.n, %bb.j
  %.sroa.10.0.ph = phi ptr [ %i.ac, %bb.j ], [ %i.aj, %bb.n ], [ %.sroa.10.0.copyload50, %bb.r ]
  %.sroa.0.0.ph = phi i64 [ -9223372036854775808, %bb.j ], [ -9223372036854775807, %bb.n ], [ -9223372036854775806, %bb.r ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11568
  %i.aw = ptrtoint ptr %.sroa.10.0.ph to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.f
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !11570 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !11570 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11568
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11568
  %i.ax = ptrtoint ptr %.sroa.10.0.copyload to i64 ; 2 uses
  %i.ay = icmp slt i64 %.pr.i.fr, 0
  br i1 %i.ay, label %bb.y, label %.thread77

bb.y:                                             ; preds = %bb.x, %.thread
  %i.az = phi i64 [ %i.aw, %.thread ], [ %i.ax, %bb.x ] ; 3 uses
  %.sroa.0.075 = phi i64 [ %.sroa.0.0.ph, %.thread ], [ %.pr.i.fr, %bb.x ]
  switch i64 %.sroa.0.075, label %bb.z [
    i64 -9223372036854775806, label %bb.ac
    i64 -9223372036854775808, label %bb.aa
    i64 -9223372036854775807, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

.thread77:                                        ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.pr.i.fr, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %i.ax, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.14.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase17hd0b61ca1992ff283E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y
  switch i64 %i.az, label %bb.bp [
    i64 1, label %bb.bq
    i64 0, label %bb.br
  ]

bb.ab:                                            ; preds = %bb.y
  %i.ba = bitcast i64 %i.az to double             ; 2 uses
  %i.bb = fadd double %i.ba, -1.000000e+00
  %i.bc = call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp olt double %i.bc, f0x3CB0000000000000
  br i1 %i.bd, label %bb.bt, label %bb.bs

bb.ac:                                            ; preds = %bb.y
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.az to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.3.sroa.0.0.extract.trunc, ptr %i.be, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

.body:                                            ; preds = %bb.aw, %bb.ad, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.by, %bb.ah ], [ %i.bf, %bb.ad ], [ %i.ed, %bb.aw ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #41
          to label %common.resume unwind label %bb.bo

bb.ad:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %.thread77
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %.thread77
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  switch i64 %i.bj, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit" [
    i64 4, label %bb.af
    i64 5, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bk = load i32, ptr %i.bh, align 1
  %i.bl = icmp ne i32 %i.bk, 1702195828
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.au, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"

bb.ag:                                            ; preds = %bb.ae
  %i.bo = load i32, ptr %i.bh, align 1
  %i.bp = xor i32 %i.bo, 1936482662
  %i.bq = getelementptr i8, ptr %i.bh, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 %i.bs, 101
  %i.bu = or i32 %i.bp, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.au, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"

bb.ah:                                            ; preds = %bb.bc, %bb.bk, %bb.bg, %bb.ay, %.loopexit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #41
          to label %.body unwind label %bb.bo

"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit": ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bz = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.ca = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noundef !4 ; 9 uses
  switch i64 %i.ca, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  %i.cb = load i8, ptr %i.bz, align 1, !alias.scope !11571, !noalias !11572, !noundef !4 ; 2 uses
  switch i8 %i.cb, label %bb.aj [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  %.pr.i38 = load i8, ptr %i.bz, align 1, !alias.scope !11571, !noalias !11572
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.i, %bb.ai
  %i.cc = phi i8 [ %.pr.i38, %thread-pre-split.i ], [ %i.cb, %bb.ai ]
  switch i8 %i.cc, label %bb.aq [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ce = add i64 %i.ca, -1                       ; 3 uses
  %i.cf = icmp ult i64 %i.ca, 17
  br i1 %i.cf, label %.preheader.i, label %.preheader98.i

bb.al:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ch = add i64 %i.ca, -1                       ; 3 uses
  %i.ci = icmp ult i64 %i.ca, 17
  br i1 %i.ci, label %.preheader100.i, label %.lr.ph

.preheader100.i:                                  ; preds = %bb.al
  %.not92112.i = icmp eq i64 %i.ch, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", label %.lr.ph.i

bb.am:                                            ; preds = %bb.as
  %i.cj = extractvalue { i64, i1 } %i.dr, 0       ; 2 uses
  %.not93.i = icmp eq i64 %i.di, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph145

.preheader102.i:                                  ; preds = %bb.ao
  %i.ck = extractvalue { i64, i1 } %i.cv, 0       ; 2 uses
  %.not91.i = icmp eq i64 %i.cm, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %.preheader102.i
  %.sroa.0.2.i140 = phi ptr [ %i.cl, %.preheader102.i ], [ %i.cg, %bb.al ] ; 2 uses
  %.sroa.27.2.i139 = phi i64 [ %i.cm, %.preheader102.i ], [ %i.ch, %bb.al ]
  %.sroa.070.2.i138 = phi i64 [ %i.ck, %.preheader102.i ], [ 0, %bb.al ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i140, i64 1
  %i.cm = add i64 %.sroa.27.2.i139, -1            ; 2 uses
  %i.cn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i138, i64 10) ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 0
  %i.cp = load i8, ptr %.sroa.0.2.i140, align 1, !alias.scope !11571, !noalias !11572, !noundef !4
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %.lr.ph
  %i.ct = extractvalue { i64, i1 } %i.cn, 1
  br i1 %i.ct, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.co, i64 %i.cu) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  br i1 %i.cw, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.ap
  %.sroa.0.3115.i = phi ptr [ %i.dd, %bb.ap ], [ %i.cg, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.dc, %bb.ap ], [ %i.ch, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.df, %bb.ap ], [ 0, %.preheader100.i ]
  %i.cx = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !11571, !noalias !11572, !noundef !4
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %.lr.ph.i
  %i.db = mul i64 %.sroa.070.4113.i, 10
  %i.dc = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = sub i64 %i.db, %i.de                    ; 2 uses
  %.not92.i = icmp eq i64 %i.dc, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.aq:                                            ; preds = %bb.aj
  %i.dg = icmp ult i64 %i.ca, 16
  br i1 %i.dg, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.aq
  %.sroa.0.1119.i.ph = phi ptr [ %i.bz, %bb.aq ], [ %i.cd, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %i.ca, %bb.aq ], [ %i.ce, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.aq, %bb.ak
  %.sroa.27.0.ph.i = phi i64 [ %i.ca, %bb.aq ], [ %i.ce, %bb.ak ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.bz, %bb.aq ], [ %i.cd, %bb.ak ]
  %.not93.i141 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i141, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph145

.preheader.i:                                     ; preds = %bb.ak
  %.not94116.i = icmp eq i64 %i.ce, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", label %.lr.ph120.i.preheader

.lr.ph145:                                        ; preds = %.preheader98.i, %bb.am
  %.sroa.0.0.i37144 = phi ptr [ %i.dh, %bb.am ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i143 = phi i64 [ %i.di, %bb.am ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i142 = phi i64 [ %i.cj, %bb.am ], [ 0, %.preheader98.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37144, i64 1
  %i.di = add i64 %.sroa.27.0.i143, -1            ; 2 uses
  %i.dj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i142, i64 10) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 0
  %i.dl = load i8, ptr %.sroa.0.0.i37144, align 1, !alias.scope !11571, !noalias !11572, !noundef !4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -48                  ; 2 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.lr.ph145
  %i.dp = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dp, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = zext nneg i32 %i.dn to i64
  %i.dr = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dk, i64 %i.dq) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %.loopexit, label %bb.am

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.at
  %.sroa.0.1119.i = phi ptr [ %i.dz, %bb.at ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.dy, %bb.at ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.eb, %bb.at ], [ 0, %.lr.ph120.i.preheader ]
  %i.dt = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !11571, !noalias !11572, !noundef !4
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nsw i32 %i.du, -48                  ; 2 uses
  %i.dw = icmp ult i32 %i.dv, 10
  br i1 %i.dw, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.lr.ph120.i
  %i.dx = mul i64 %.sroa.070.1117.i, 10
  %i.dy = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.ea = zext nneg i32 %i.dv to i64
  %i.eb = add i64 %i.dx, %i.ea                    ; 2 uses
  %.not94.i = icmp eq i64 %i.dy, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

bb.au:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0.0.i.ph = phi i8 [ 0, %bb.ag ], [ 1, %bb.af ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i.ph, ptr %i.ec, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.bj, %bb.ba, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", %bb.az, %bb.au
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.av
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.ad

.loopexit:                                        ; preds = %bb.ao, %bb.an, %.lr.ph, %.lr.ph.i, %.lr.ph145, %bb.ar, %bb.as, %.lr.ph120.i, %bb.ai, %bb.ai, %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f64$GT$8from_str17h6f57f94afa9d2a37E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bz, i64 noundef %i.ca)
          to label %bb.bb unwind label %bb.ah

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.ap, %bb.am, %bb.at, %.preheader98.i
  %.sroa.1459.0 = phi i64 [ %i.eb, %bb.at ], [ %i.cj, %bb.am ], [ %i.df, %bb.ap ], [ 0, %.preheader98.i ], [ %i.ck, %.preheader102.i ]
  switch i64 %.sroa.1459.0, label %bb.ay [
    i64 1, label %bb.az
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89"
  ]

bb.ay:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.ef = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 29)
          to label %bb.ba unwind label %bb.ah

bb.az:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.eg, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89": ; preds = %.preheader100.i, %.preheader.i, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.eh, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

bb.ba:                                            ; preds = %bb.ay
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i8 1, ptr %0, align 8
  br label %bb.av

bb.bb:                                            ; preds = %.loopexit
  %i.ej = load i8, ptr %i.m, align 8, !range !17, !noundef !4
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11573
  store ptr @461, ptr %i.a, align 8, !noalias !11574
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !11574
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !11574
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !11574
  %.sroa.7.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx62, align 8, !noalias !11574
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bk unwind label %bb.ah

bb.bd:                                            ; preds = %bb.bb
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.em = load double, ptr %i.el, align 8, !noundef !4 ; 2 uses
  %i.en = fadd double %i.em, -1.000000e+00
  %i.eo = call double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp olt double %i.eo, f0x3CB0000000000000
  br i1 %i.ep, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eq = fcmp oeq double %i.em, 0.000000e+00
  br i1 %i.eq, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.er, align 1
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.es = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @459, i64 noundef 33)
          to label %bb.bi unwind label %bb.ah

bb.bh:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.et, align 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.eu, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi, %bb.bh, %bb.bl
  %.sink = phi i8 [ 0, %bb.bf ], [ 1, %bb.bi ], [ 0, %bb.bh ], [ 1, %bb.bl ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.av

bb.bk:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ev = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hc8b70d3301f07393E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.bl unwind label %bb.ah

bb.bl:                                            ; preds = %bb.bk
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %i.ew, align 8
  br label %bb.bj

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41" unwind label %bb.bm

bb.bm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bw

bb.bo:                                            ; preds = %bb.ah, %.body
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.bp:                                            ; preds = %bb.aa
  %i.fa = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 29)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

bb.bq:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fc, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.br:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fd, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bs:                                            ; preds = %bb.ab
  %i.fe = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.fe, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ff, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.fg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @459, i64 noundef 33)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fi, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ac, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41", %bb.br, %bb.bq, %bb.bp, %bb.bu, %bb.bv, %bb.bt, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9serde_aux16field_attributes30deserialize_bool_from_anything17h940b244ba5a97c30E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 16 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11588
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h81718822e6f48dd5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1), !noalias !11589
  %i.p = load i8, ptr %i.i, align 8, !range !41, !noalias !11588, !noundef !4 ; 2 uses
  %i.q = icmp eq i8 %i.p, 22
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !noalias !11588, !nonnull !4, !align !5, !noundef !4
end_hunk_2
begin_hunk_3_@_ZN9serde_aux16field_attributes30deserialize_bool_from_anything17h940b244ba5a97c30E:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11588
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_bool17ha2d21ab9caf1f4e4E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.q unwind label %bb.d, !noalias !11588

bb.q:                                             ; preds = %bb.p
  %i.am = load i8, ptr %i.b, align 8, !range !17, !noalias !11588, !noundef !4
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !range !17, !noalias !11588, !noundef !4
  store i8 %i.aq, ptr %i.ao, align 8, !noalias !11588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11588
  %.sroa.10.0.copyload50 = load ptr, ptr %i.ao, align 8, !noalias !11590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11588
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !11588, !nonnull !4, !align !5, !noundef !4
  store ptr %i.as, ptr %i.ao, align 8, !noalias !11588
  store i64 -9223372036854775805, ptr %i.c, align 8, !noalias !11588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11588
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_bool_from_anything..AnythingOrBool$C$serde_json..error..Error$GT$$GT$17ha2653e4cd4f6bc44E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.t unwind label %bb.d, !noalias !11588

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11588
  %i.at = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @462, i64 noundef 62)
          to label %bb.u unwind label %bb.d, !noalias !11588

bb.u:                                             ; preds = %bb.t
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11588
  br label %bb.w

bb.v:                                             ; preds = %bb.d
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11588
  unreachable

common.resume:                                    ; preds = %.body, %bb.bm, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ex, %bb.bm ], [ %i.t, %bb.d ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.w:                                             ; preds = %bb.b, %bb.u
  %.sroa.10.1.ph = phi ptr [ %i.at, %bb.u ], [ %i.s, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11588
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.ph, ptr %i.av, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

.thread:                                          ; preds = %bb.r, %bb.n, %bb.j
  %.sroa.10.0.ph = phi ptr [ %i.ac, %bb.j ], [ %i.aj, %bb.n ], [ %.sroa.10.0.copyload50, %bb.r ]
  %.sroa.0.0.ph = phi i64 [ -9223372036854775808, %bb.j ], [ -9223372036854775807, %bb.n ], [ -9223372036854775806, %bb.r ]
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11588
  %i.aw = ptrtoint ptr %.sroa.10.0.ph to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.f
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !11590 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !11590 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11588
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.j), !noalias !11588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11588
  %i.ax = ptrtoint ptr %.sroa.10.0.copyload to i64 ; 2 uses
  %i.ay = icmp slt i64 %.pr.i.fr, 0
  br i1 %i.ay, label %bb.y, label %.thread77

bb.y:                                             ; preds = %bb.x, %.thread
  %i.az = phi i64 [ %i.aw, %.thread ], [ %i.ax, %bb.x ] ; 3 uses
  %.sroa.0.075 = phi i64 [ %.sroa.0.0.ph, %.thread ], [ %.pr.i.fr, %bb.x ]
  switch i64 %.sroa.0.075, label %bb.z [
    i64 -9223372036854775806, label %bb.ac
    i64 -9223372036854775808, label %bb.aa
    i64 -9223372036854775807, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  unreachable

.thread77:                                        ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.pr.i.fr, ptr %i.o, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %i.ax, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 %.sroa.14.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$12to_lowercase17hd0b61ca1992ff283E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.copyload, i64 noundef %.sroa.14.0.copyload)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.y
  switch i64 %i.az, label %bb.bp [
    i64 1, label %bb.bq
    i64 0, label %bb.br
  ]

bb.ab:                                            ; preds = %bb.y
  %i.ba = bitcast i64 %i.az to double             ; 2 uses
  %i.bb = fadd double %i.ba, -1.000000e+00
  %i.bc = call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp olt double %i.bc, f0x3CB0000000000000
  br i1 %i.bd, label %bb.bt, label %bb.bs

bb.ac:                                            ; preds = %bb.y
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.az to i8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.3.sroa.0.0.extract.trunc, ptr %i.be, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

.body:                                            ; preds = %bb.aw, %bb.ad, %bb.ah
  %.pn = phi { ptr, i32 } [ %i.by, %bb.ah ], [ %i.bf, %bb.ad ], [ %i.ed, %bb.aw ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o) #41
          to label %common.resume unwind label %bb.bo

bb.ad:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %.thread77
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %.thread77
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !4
  switch i64 %i.bj, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit" [
    i64 4, label %bb.af
    i64 5, label %bb.ag
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bk = load i32, ptr %i.bh, align 1
  %i.bl = icmp ne i32 %i.bk, 1702195828
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.au, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"

bb.ag:                                            ; preds = %bb.ae
  %i.bo = load i32, ptr %i.bh, align 1
  %i.bp = xor i32 %i.bo, 1936482662
  %i.bq = getelementptr i8, ptr %i.bh, i64 4
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = xor i32 %i.bs, 101
  %i.bu = or i32 %i.bp, %i.bt
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.au, label %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"

bb.ah:                                            ; preds = %bb.bc, %bb.bk, %bb.bg, %bb.ay, %.loopexit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #41
          to label %.body unwind label %bb.bo

"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit": ; preds = %bb.ag, %bb.af, %bb.ae
  %i.bz = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.ca = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !noundef !4 ; 9 uses
  switch i64 %i.ca, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.ai
  ]

bb.ai:                                            ; preds = %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  %i.cb = load i8, ptr %i.bz, align 1, !alias.scope !11591, !noalias !11592, !noundef !4 ; 2 uses
  switch i8 %i.cb, label %bb.aj [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  %.pr.i38 = load i8, ptr %i.bz, align 1, !alias.scope !11591, !noalias !11592
  br label %bb.aj

bb.aj:                                            ; preds = %thread-pre-split.i, %bb.ai
  %i.cc = phi i8 [ %.pr.i38, %thread-pre-split.i ], [ %i.cb, %bb.ai ]
  switch i8 %i.cc, label %bb.aq [
    i8 43, label %bb.ak
    i8 45, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ce = add i64 %i.ca, -1                       ; 3 uses
  %i.cf = icmp ult i64 %i.ca, 17
  br i1 %i.cf, label %.preheader.i, label %.preheader98.i

bb.al:                                            ; preds = %bb.aj
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.ch = add i64 %i.ca, -1                       ; 3 uses
  %i.ci = icmp ult i64 %i.ca, 17
  br i1 %i.ci, label %.preheader100.i, label %.lr.ph

.preheader100.i:                                  ; preds = %bb.al
  %.not92112.i = icmp eq i64 %i.ch, 0
  br i1 %.not92112.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", label %.lr.ph.i

bb.am:                                            ; preds = %bb.as
  %i.cj = extractvalue { i64, i1 } %i.dr, 0       ; 2 uses
  %.not93.i = icmp eq i64 %i.di, 0
  br i1 %.not93.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph145

.preheader102.i:                                  ; preds = %bb.ao
  %i.ck = extractvalue { i64, i1 } %i.cv, 0       ; 2 uses
  %.not91.i = icmp eq i64 %i.cm, 0
  br i1 %.not91.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.al, %.preheader102.i
  %.sroa.0.2.i140 = phi ptr [ %i.cl, %.preheader102.i ], [ %i.cg, %bb.al ] ; 2 uses
  %.sroa.27.2.i139 = phi i64 [ %i.cm, %.preheader102.i ], [ %i.ch, %bb.al ]
  %.sroa.070.2.i138 = phi i64 [ %i.ck, %.preheader102.i ], [ 0, %bb.al ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i140, i64 1
  %i.cm = add i64 %.sroa.27.2.i139, -1            ; 2 uses
  %i.cn = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i138, i64 10) ; 2 uses
  %i.co = extractvalue { i64, i1 } %i.cn, 0
  %i.cp = load i8, ptr %.sroa.0.2.i140, align 1, !alias.scope !11591, !noalias !11592, !noundef !4
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add nsw i32 %i.cq, -48                  ; 2 uses
  %i.cs = icmp ult i32 %i.cr, 10
  br i1 %i.cs, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %.lr.ph
  %i.ct = extractvalue { i64, i1 } %i.cn, 1
  br i1 %i.ct, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cu = zext nneg i32 %i.cr to i64
  %i.cv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.co, i64 %i.cu) ; 2 uses
  %i.cw = extractvalue { i64, i1 } %i.cv, 1
  br i1 %i.cw, label %.loopexit, label %.preheader102.i

.lr.ph.i:                                         ; preds = %.preheader100.i, %bb.ap
  %.sroa.0.3115.i = phi ptr [ %i.dd, %bb.ap ], [ %i.cg, %.preheader100.i ] ; 2 uses
  %.sroa.27.3114.i = phi i64 [ %i.dc, %bb.ap ], [ %i.ch, %.preheader100.i ]
  %.sroa.070.4113.i = phi i64 [ %i.df, %bb.ap ], [ 0, %.preheader100.i ]
  %i.cx = load i8, ptr %.sroa.0.3115.i, align 1, !alias.scope !11591, !noalias !11592, !noundef !4
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48                  ; 2 uses
  %i.da = icmp ult i32 %i.cz, 10
  br i1 %i.da, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %.lr.ph.i
  %i.db = mul i64 %.sroa.070.4113.i, 10
  %i.dc = add nsw i64 %.sroa.27.3114.i, -1        ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i, i64 1
  %i.de = zext nneg i32 %i.cz to i64
  %i.df = sub i64 %i.db, %i.de                    ; 2 uses
  %.not92.i = icmp eq i64 %i.dc, 0
  br i1 %.not92.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph.i

bb.aq:                                            ; preds = %bb.aj
  %i.dg = icmp ult i64 %i.ca, 16
  br i1 %i.dg, label %.lr.ph120.i.preheader, label %.preheader98.i

.lr.ph120.i.preheader:                            ; preds = %.preheader.i, %bb.aq
  %.sroa.0.1119.i.ph = phi ptr [ %i.bz, %bb.aq ], [ %i.cd, %.preheader.i ]
  %.sroa.27.1118.i.ph = phi i64 [ %i.ca, %bb.aq ], [ %i.ce, %.preheader.i ]
  br label %.lr.ph120.i

.preheader98.i:                                   ; preds = %bb.aq, %bb.ak
  %.sroa.27.0.ph.i = phi i64 [ %i.ca, %bb.aq ], [ %i.ce, %bb.ak ] ; 2 uses
  %.sroa.0.0.ph.i = phi ptr [ %i.bz, %bb.aq ], [ %i.cd, %bb.ak ]
  %.not93.i141 = icmp eq i64 %.sroa.27.0.ph.i, 0
  br i1 %.not93.i141, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph145

.preheader.i:                                     ; preds = %bb.ak
  %.not94116.i = icmp eq i64 %i.ce, 0
  br i1 %.not94116.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", label %.lr.ph120.i.preheader

.lr.ph145:                                        ; preds = %.preheader98.i, %bb.am
  %.sroa.0.0.i37144 = phi ptr [ %i.dh, %bb.am ], [ %.sroa.0.0.ph.i, %.preheader98.i ] ; 2 uses
  %.sroa.27.0.i143 = phi i64 [ %i.di, %bb.am ], [ %.sroa.27.0.ph.i, %.preheader98.i ]
  %.sroa.070.0.i142 = phi i64 [ %i.cj, %bb.am ], [ 0, %.preheader98.i ]
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37144, i64 1
  %i.di = add i64 %.sroa.27.0.i143, -1            ; 2 uses
  %i.dj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i142, i64 10) ; 2 uses
  %i.dk = extractvalue { i64, i1 } %i.dj, 0
  %i.dl = load i8, ptr %.sroa.0.0.i37144, align 1, !alias.scope !11591, !noalias !11592, !noundef !4
  %i.dm = zext i8 %i.dl to i32
  %i.dn = add nsw i32 %i.dm, -48                  ; 2 uses
  %i.do = icmp ult i32 %i.dn, 10
  br i1 %i.do, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %.lr.ph145
  %i.dp = extractvalue { i64, i1 } %i.dj, 1
  br i1 %i.dp, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dq = zext nneg i32 %i.dn to i64
  %i.dr = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dk, i64 %i.dq) ; 2 uses
  %i.ds = extractvalue { i64, i1 } %i.dr, 1
  br i1 %i.ds, label %.loopexit, label %bb.am

.lr.ph120.i:                                      ; preds = %.lr.ph120.i.preheader, %bb.at
  %.sroa.0.1119.i = phi ptr [ %i.dz, %bb.at ], [ %.sroa.0.1119.i.ph, %.lr.ph120.i.preheader ] ; 2 uses
  %.sroa.27.1118.i = phi i64 [ %i.dy, %bb.at ], [ %.sroa.27.1118.i.ph, %.lr.ph120.i.preheader ]
  %.sroa.070.1117.i = phi i64 [ %i.eb, %bb.at ], [ 0, %.lr.ph120.i.preheader ]
  %i.dt = load i8, ptr %.sroa.0.1119.i, align 1, !alias.scope !11591, !noalias !11592, !noundef !4
  %i.du = zext i8 %i.dt to i32
  %i.dv = add nsw i32 %i.du, -48                  ; 2 uses
  %i.dw = icmp ult i32 %i.dv, 10
  br i1 %i.dw, label %bb.at, label %.loopexit

bb.at:                                            ; preds = %.lr.ph120.i
  %i.dx = mul i64 %.sroa.070.1117.i, 10
  %i.dy = add nsw i64 %.sroa.27.1118.i, -1        ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i, i64 1
  %i.ea = zext nneg i32 %i.dv to i64
  %i.eb = add i64 %i.dx, %i.ea                    ; 2 uses
  %.not94.i = icmp eq i64 %i.dy, 0
  br i1 %.not94.i, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit", label %.lr.ph120.i

bb.au:                                            ; preds = %bb.af, %bb.ag
  %.sroa.0.0.i.ph = phi i8 [ 0, %bb.ag ], [ 1, %bb.af ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.0.0.i.ph, ptr %i.ec, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.bj, %bb.ba, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89", %bb.az, %bb.au
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.av
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.ad

.loopexit:                                        ; preds = %bb.ao, %bb.an, %.lr.ph, %.lr.ph.i, %.lr.ph145, %bb.ar, %bb.as, %.lr.ph120.i, %bb.ai, %bb.ai, %"_ZN51_$LT$bool$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hdf426fe0c0de0cb7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @"_ZN4core3num7dec2flt60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$f64$GT$8from_str17h6f57f94afa9d2a37E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bz, i64 noundef %i.ca)
          to label %bb.bb unwind label %bb.ah

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit": ; preds = %.preheader102.i, %bb.ap, %bb.am, %bb.at, %.preheader98.i
  %.sroa.1459.0 = phi i64 [ %i.eb, %bb.at ], [ %i.cj, %bb.am ], [ %i.df, %bb.ap ], [ 0, %.preheader98.i ], [ %i.ck, %.preheader102.i ]
  switch i64 %.sroa.1459.0, label %bb.ay [
    i64 1, label %bb.az
    i64 0, label %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89"
  ]

bb.ay:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.ef = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 29)
          to label %bb.ba unwind label %bb.ah

bb.az:                                            ; preds = %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.eg, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit.thread89": ; preds = %.preheader100.i, %.preheader.i, %"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17hb49d06118606b52dE.exit"
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.eh, align 1
  store i8 0, ptr %0, align 8
  br label %bb.av

bb.ba:                                            ; preds = %bb.ay
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ef, ptr %i.ei, align 8
  store i8 1, ptr %0, align 8
  br label %bb.av

bb.bb:                                            ; preds = %.loopexit
  %i.ej = load i8, ptr %i.m, align 8, !range !17, !noundef !4
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h9e12be448e379ec2E", ptr %.sroa.431.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11593
  store ptr @461, ptr %i.a, align 8, !noalias !11594
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !11594
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !11594
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !11594
  %.sroa.7.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx62, align 8, !noalias !11594
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.bk unwind label %bb.ah

bb.bd:                                            ; preds = %bb.bb
  %i.el = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.em = load double, ptr %i.el, align 8, !noundef !4 ; 2 uses
  %i.en = fadd double %i.em, -1.000000e+00
  %i.eo = call double @llvm.fabs.f64(double %i.en)
  %i.ep = fcmp olt double %i.eo, f0x3CB0000000000000
  br i1 %i.ep, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eq = fcmp oeq double %i.em, 0.000000e+00
  br i1 %i.eq, label %bb.bh, label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.er, align 1
  br label %bb.bj

bb.bg:                                            ; preds = %bb.be
  %i.es = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @459, i64 noundef 33)
          to label %bb.bi unwind label %bb.ah

bb.bh:                                            ; preds = %bb.be
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.et, align 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.es, ptr %i.eu, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bf, %bb.bi, %bb.bh, %bb.bl
  %.sink = phi i8 [ 0, %bb.bf ], [ 1, %bb.bi ], [ 0, %bb.bh ], [ 1, %bb.bl ]
  store i8 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.av

bb.bk:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ev = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hc8b70d3301f07393E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %bb.bl unwind label %bb.ah

bb.bl:                                            ; preds = %bb.bk
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %i.ew, align 8
  br label %bb.bj

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41" unwind label %bb.bm

bb.bm:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.bw

bb.bo:                                            ; preds = %bb.ah, %.body
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.bp:                                            ; preds = %bb.aa
  %i.fa = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @458, i64 noundef 29)
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fa, ptr %i.fb, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

bb.bq:                                            ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.fc, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.br:                                            ; preds = %bb.aa
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fd, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bs:                                            ; preds = %bb.ab
  %i.fe = fcmp oeq double %i.ba, 0.000000e+00
  br i1 %i.fe, label %bb.bv, label %bb.bu

bb.bt:                                            ; preds = %bb.ab
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ff, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  %i.fg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @459, i64 noundef 33)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fg, ptr %i.fh, align 8
  store i8 1, ptr %0, align 8
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.fi, align 1
  store i8 0, ptr %0, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.ac, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit41", %bb.br, %bb.bq, %bb.bp, %bb.bu, %bb.bv, %bb.bt, %bb.w
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN9serde_aux16field_attributes30deserialize_number_from_string17h0fe2e802716a822cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11602
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h81718822e6f48dd5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1), !noalias !11603
  %i.h = load i8, ptr %i.e, align 8, !range !41, !noalias !11602, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, 22
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !11602, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11602
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.510.0..sroa_idx.i, i64 7, i1 false), !noalias !11602
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.611.0.copyload.i = load ptr, ptr %.sroa.611.0..sroa_idx.i, align 8, !noalias !11602
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11602
  store i8 %i.h, ptr %i.f, align 8, !noalias !11602
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.611.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11602
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h02ba7b4bb224af97E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %bb.e unwind label %bb.d, !noalias !11602

bb.d:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #41
          to label %common.resume unwind label %bb.l, !noalias !11602

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.c, align 8, !range !12, !noalias !11602, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !11602, !nonnull !4, !align !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !11602
  store i64 -9223372036854775807, ptr %i.d, align 8, !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11602
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !11602
  %.pr.i = load i64, ptr %i.d, align 8, !noalias !11602 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11602
  %i.r = icmp eq i64 %.pr.i, -9223372036854775807
  br i1 %i.r, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %.thread.i
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$i32$GT$$C$serde_json..error..Error$GT$$GT$17h50bcf6fb16da301cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.d, !noalias !11602

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11602
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i3217h30f2e18b0e471502E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f)
          to label %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17h0198517e850a264fE.exit.i" unwind label %bb.d, !noalias !11602

"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17h0198517e850a264fE.exit.i": ; preds = %bb.h
  %i.s = load i32, ptr %i.a, align 8, !range !39, !noalias !11602, !noundef !4
  %i.t = trunc nuw i32 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.i, label %.thread

.thread:                                          ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17h0198517e850a264fE.exit.i"
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i32, ptr %i.v, align 4, !noalias !11602, !noundef !4
  store i32 %i.w, ptr %i.u, align 8, !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11602
  %.sroa.8.0.copyload22 = load ptr, ptr %i.u, align 8, !noalias !11604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11602
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11602
  br label %bb.o

bb.i:                                             ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i32$GT$11deserialize17h0198517e850a264fE.exit.i"
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !11602, !nonnull !4, !align !5, !noundef !4
  store ptr %i.y, ptr %i.u, align 8, !noalias !11602
  store i64 -9223372036854775807, ptr %i.b, align 8, !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11602
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$i32$GT$$C$serde_json..error..Error$GT$$GT$17h50bcf6fb16da301cE"(ptr noalias noundef align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.d, !noalias !11602

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11602
  %i.z = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 59)
          to label %bb.k unwind label %bb.d, !noalias !11602

bb.k:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !11602
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11602
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.ad, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.ad ], [ %i.l, %bb.d ], [ %i.cf, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b, %bb.k
  %.sroa.8.1.ph = phi ptr [ %i.z, %bb.k ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11602
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1.ph, ptr %i.ab, align 8
  store i32 1, ptr %0, align 8
  br label %bb.ah

bb.n:                                             ; preds = %bb.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !11604 ; 8 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !11604 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11602
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.f), !noalias !11602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11602
  %i.ac = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.ac, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.thread, %bb.n
  %.sroa.8.032 = phi ptr [ %.sroa.8.0.copyload22, %.thread ], [ %.sroa.8.0.copyload, %bb.n ]
  %i.ad = ptrtoint ptr %.sroa.8.032 to i64
  %.sroa.3.0.extract.trunc = trunc i64 %i.ad to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0.extract.trunc, ptr %i.ae, align 4
  store i32 0, ptr %0, align 8
  br label %bb.ah

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.pr.i, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.8.0.copyload, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.12.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  switch i64 %.sroa.12.0.copyload, label %thread-pre-split.i.i [
    i64 0, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread"
    i64 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.af = load i8, ptr %.sroa.8.0.copyload, align 1, !alias.scope !11605, !noundef !4 ; 2 uses
  switch i8 %i.af, label %bb.r [
    i8 43, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread"
    i8 45, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread"
  ]

thread-pre-split.i.i:                             ; preds = %bb.p
  %.pr.i.i = load i8, ptr %.sroa.8.0.copyload, align 1, !alias.scope !11605
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i, %bb.q
  %i.ag = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.af, %bb.q ]
  switch i8 %i.ag, label %bb.x [
    i8 43, label %bb.s
    i8 45, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.ai = add i64 %.sroa.12.0.copyload, -1        ; 3 uses
  %i.aj = icmp ult i64 %.sroa.12.0.copyload, 9
  br i1 %i.aj, label %.preheader.i.i, label %.preheader105.i.i

bb.t:                                             ; preds = %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.al = add i64 %.sroa.12.0.copyload, -1        ; 3 uses
  %i.am = icmp ult i64 %.sroa.12.0.copyload, 9
  br i1 %i.am, label %.preheader108.i.i, label %.lr.ph

.preheader108.i.i:                                ; preds = %bb.t
  %.not94121.i.i = icmp eq i64 %i.al, 0
  br i1 %.not94121.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.u:                                             ; preds = %bb.y
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i110, i64 1
  %i.ao = add i64 %.sroa.27.0.i.i109, -1          ; 2 uses
  %i.ap = extractvalue { i32, i1 } %i.bv, 0       ; 2 uses
  %.not95.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not95.i.i, label %.loopexit.i.i, label %.lr.ph111

.preheader111.i.i:                                ; preds = %bb.v
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i106, i64 1
  %i.ar = add i64 %.sroa.27.2.i.i105, -1          ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.bc, 0       ; 2 uses
  %.not93.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not93.i.i, label %.loopexit.i.i, label %.lr.ph

.loopexit.i.i:                                    ; preds = %.preheader111.i.i, %bb.w, %bb.u, %bb.z, %.preheader105.i.i, %.preheader.i.i, %.preheader108.i.i
  %.sroa.072.3.i.i = phi i32 [ %i.bm, %bb.w ], [ %i.ce, %bb.z ], [ %i.ap, %bb.u ], [ 0, %.preheader.i.i ], [ 0, %.preheader108.i.i ], [ 0, %.preheader105.i.i ], [ %i.as, %.preheader111.i.i ]
  %i.at = zext i32 %.sroa.072.3.i.i to i64
  %i.au = shl nuw i64 %i.at, 32
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit"

.lr.ph:                                           ; preds = %bb.t, %.preheader111.i.i
  %.sroa.0.2.i.i106 = phi ptr [ %i.aq, %.preheader111.i.i ], [ %i.ak, %bb.t ] ; 2 uses
  %.sroa.27.2.i.i105 = phi i64 [ %i.ar, %.preheader111.i.i ], [ %i.al, %bb.t ]
  %.sroa.072.2.i.i104 = phi i32 [ %i.as, %.preheader111.i.i ], [ 0, %bb.t ]
  %i.av = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.2.i.i104, i32 10) ; 2 uses
  %i.aw = extractvalue { i32, i1 } %i.av, 1
  %i.ax = load i8, ptr %.sroa.0.2.i.i106, align 1, !alias.scope !11605, !noundef !4
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -48                  ; 2 uses
  %i.ba = icmp ugt i32 %i.az, 9                   ; 2 uses
  %brmerge.i.i = select i1 %i.ba, i1 true, i1 %i.aw
  br i1 %brmerge.i.i, label %.loopexit113.split.loop.exit119.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.bb = extractvalue { i32, i1 } %i.av, 0
  %i.bc = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.bb, i32 %i.az) ; 2 uses
  %i.bd = extractvalue { i32, i1 } %i.bc, 1
  br i1 %i.bd, label %.loopexit104.i.i, label %.preheader111.i.i

.loopexit107.split.loop.exit125.i.i:              ; preds = %.lr.ph111
  %.mux100.le.i.i = select i1 %i.bt, i64 256, i64 512
  br label %.loopexit104.i.i

.loopexit113.split.loop.exit119.i.i:              ; preds = %.lr.ph
  %.mux.le.i.i = select i1 %i.ba, i64 256, i64 768
  br label %.loopexit104.i.i

.loopexit104.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i, %bb.y, %.lr.ph132.i.i, %.loopexit113.split.loop.exit119.i.i, %.loopexit107.split.loop.exit125.i.i
  %.sroa.12.2.i.i = phi i64 [ 256, %.lr.ph132.i.i ], [ 512, %bb.y ], [ 256, %.lr.ph.i.i ], [ %.mux100.le.i.i, %.loopexit107.split.loop.exit125.i.i ], [ %.mux.le.i.i, %.loopexit113.split.loop.exit119.i.i ], [ 768, %bb.v ]
  %i.be = or disjoint i64 %.sroa.12.2.i.i, 1
  br label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit"

.lr.ph.i.i:                                       ; preds = %.preheader108.i.i, %bb.w
  %.sroa.0.3124.i.i = phi ptr [ %i.bl, %bb.w ], [ %i.ak, %.preheader108.i.i ] ; 2 uses
  %.sroa.27.3123.i.i = phi i64 [ %i.bk, %bb.w ], [ %i.al, %.preheader108.i.i ]
  %.sroa.072.4122.i.i = phi i32 [ %i.bm, %bb.w ], [ 0, %.preheader108.i.i ]
  %i.bf = load i8, ptr %.sroa.0.3124.i.i, align 1, !alias.scope !11605, !noundef !4
  %i.bg = zext i8 %i.bf to i32
  %i.bh = add nsw i32 %i.bg, -48                  ; 2 uses
  %i.bi = icmp ult i32 %i.bh, 10
  br i1 %i.bi, label %bb.w, label %.loopexit104.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.bj = mul i32 %.sroa.072.4122.i.i, 10
  %i.bk = add nsw i64 %.sroa.27.3123.i.i, -1      ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.3124.i.i, i64 1
  %i.bm = sub i32 %i.bj, %i.bh                    ; 2 uses
  %.not94.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not94.i.i, label %.loopexit.i.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %bb.r
  %i.bn = icmp ult i64 %.sroa.12.0.copyload, 8
  br i1 %i.bn, label %.lr.ph132.i.i.preheader, label %.preheader105.i.i

.lr.ph132.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.x
  %.sroa.0.1131.i.i.ph = phi ptr [ %.sroa.8.0.copyload, %bb.x ], [ %i.ah, %.preheader.i.i ]
  %.sroa.27.1130.i.i.ph = phi i64 [ %.sroa.12.0.copyload, %bb.x ], [ %i.ai, %.preheader.i.i ]
  br label %.lr.ph132.i.i

.preheader105.i.i:                                ; preds = %bb.x, %bb.s
  %.sroa.27.0.ph.i.i = phi i64 [ %.sroa.12.0.copyload, %bb.x ], [ %i.ai, %bb.s ] ; 2 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.8.0.copyload, %bb.x ], [ %i.ah, %bb.s ]
  %.not95.i.i107 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not95.i.i107, label %.loopexit.i.i, label %.lr.ph111

.preheader.i.i:                                   ; preds = %bb.s
  %.not96128.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not96128.i.i, label %.loopexit.i.i, label %.lr.ph132.i.i.preheader

.lr.ph111:                                        ; preds = %.preheader105.i.i, %bb.u
  %.sroa.0.0.i.i110 = phi ptr [ %i.an, %bb.u ], [ %.sroa.0.0.ph.i.i, %.preheader105.i.i ] ; 2 uses
  %.sroa.27.0.i.i109 = phi i64 [ %i.ao, %bb.u ], [ %.sroa.27.0.ph.i.i, %.preheader105.i.i ]
  %.sroa.072.0.i.i108 = phi i32 [ %i.ap, %bb.u ], [ 0, %.preheader105.i.i ]
  %i.bo = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.072.0.i.i108, i32 10) ; 2 uses
  %i.bp = extractvalue { i32, i1 } %i.bo, 1
  %i.bq = load i8, ptr %.sroa.0.0.i.i110, align 1, !alias.scope !11605, !noundef !4
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ugt i32 %i.bs, 9                   ; 2 uses
  %brmerge99.i.i = select i1 %i.bt, i1 true, i1 %i.bp
  br i1 %brmerge99.i.i, label %.loopexit107.split.loop.exit125.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph111
  %i.bu = extractvalue { i32, i1 } %i.bo, 0
  %i.bv = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.bu, i32 %i.bs) ; 2 uses
  %i.bw = extractvalue { i32, i1 } %i.bv, 1
  br i1 %i.bw, label %.loopexit104.i.i, label %bb.u

.lr.ph132.i.i:                                    ; preds = %.lr.ph132.i.i.preheader, %bb.z
  %.sroa.0.1131.i.i = phi ptr [ %i.cd, %bb.z ], [ %.sroa.0.1131.i.i.ph, %.lr.ph132.i.i.preheader ] ; 2 uses
  %.sroa.27.1130.i.i = phi i64 [ %i.cc, %bb.z ], [ %.sroa.27.1130.i.i.ph, %.lr.ph132.i.i.preheader ]
  %.sroa.072.1129.i.i = phi i32 [ %i.ce, %bb.z ], [ 0, %.lr.ph132.i.i.preheader ]
  %i.bx = load i8, ptr %.sroa.0.1131.i.i, align 1, !alias.scope !11605, !noundef !4
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 10
  br i1 %i.ca, label %bb.z, label %.loopexit104.i.i

bb.z:                                             ; preds = %.lr.ph132.i.i
  %i.cb = mul i32 %.sroa.072.1129.i.i, 10
  %i.cc = add nsw i64 %.sroa.27.1130.i.i, -1      ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.1131.i.i, i64 1
  %i.ce = add i32 %i.bz, %i.cb                    ; 2 uses
  %.not96.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not96.i.i, label %.loopexit.i.i, label %.lr.ph132.i.i

bb.aa:                                            ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread"
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #41
          to label %common.resume unwind label %bb.ag

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit": ; preds = %.loopexit104.i.i, %.loopexit.i.i
  %.sroa.12.0.insert.insert.i.i = phi i64 [ %i.be, %.loopexit104.i.i ], [ %i.au, %.loopexit.i.i ] ; 3 uses
  %i.cg = trunc i64 %.sroa.12.0.insert.insert.i.i to i1
  br i1 %i.cg, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread", label %bb.ab

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread": ; preds = %bb.q, %bb.q, %bb.p, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit"
  %.sroa.12.0.insert.insert.i.i34 = phi i64 [ %.sroa.12.0.insert.insert.i.i, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit" ], [ 257, %bb.q ], [ 257, %bb.q ], [ 1, %bb.p ]
  %.sroa.417.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i34, 8
  %.sroa.417.0.extract.trunc = trunc i64 %.sroa.417.0.extract.shift to i8
  %i.ch = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %.sroa.417.0.extract.trunc)
          to label %bb.af unwind label %bb.aa

bb.ab:                                            ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit"
  %.sroa.619.0.extract.shift = lshr i64 %.sroa.12.0.insert.insert.i.i, 32
  %.sroa.619.0.extract.trunc = trunc nuw i64 %.sroa.619.0.extract.shift to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.619.0.extract.trunc, ptr %i.ci, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.af, %bb.ab
  %storemerge = phi i32 [ 0, %bb.ab ], [ 1, %bb.af ]
  store i32 %storemerge, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.ac
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ah

bb.af:                                            ; preds = %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i32$GT$8from_str17h2b53e3bbbe3fd417E.exit.thread"
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ch, ptr %i.cl, align 8
  br label %bb.ac

bb.ag:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.ah:                                            ; preds = %bb.o, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", %bb.m
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN9serde_aux16field_attributes30deserialize_number_from_string17h2618152a14d97a4aE(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 14 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11609
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117hd9207f4fd690907cE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(80) %0), !noalias !11610
  %i.h = load i8, ptr %i.d, align 8, !range !41, !noalias !11609, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, 22
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !11609, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11609
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.513.0..sroa_idx.i, i64 7, i1 false), !noalias !11609
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.614.0.copyload.i = load ptr, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !11609
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !11609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11609
  store i8 %i.h, ptr %i.e, align 8, !noalias !11609
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
end_hunk_3
begin_hunk_4_@_ZN9serde_aux16field_attributes30deserialize_number_from_string17h7d043f7b234b2cfdE:bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.u
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.y:                                             ; preds = %.thread, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", %bb.o, %bb.n
  %.sroa.5.2 = phi ptr [ %.sroa.8.1.ph, %bb.n ], [ %.sroa.5.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" ], [ %.sroa.8.0.copyload, %bb.o ], [ %i.u, %.thread ]
  %.sroa.0.2 = phi i64 [ 1, %bb.n ], [ %.sroa.0.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" ], [ 0, %bb.o ], [ 0, %.thread ]
  %i.an = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.ao = insertvalue { i64, ptr } %i.an, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.ao
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN9serde_aux16field_attributes30deserialize_number_from_string17h7fa8eeb68ef6d62fE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 14 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11639
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h81718822e6f48dd5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %0), !noalias !11640
  %i.g = load i8, ptr %i.d, align 8, !range !41, !noalias !11639, !noundef !4 ; 2 uses
  %i.h = icmp eq i8 %i.g, 22
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !11639, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11639
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.513.0..sroa_idx.i, i64 7, i1 false), !noalias !11639
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.614.0.copyload.i = load ptr, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !11639
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !11639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11639
  store i8 %i.g, ptr %i.e, align 8, !noalias !11639
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.614.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11639
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h02ba7b4bb224af97E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.d, !noalias !11639

bb.d:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #41
          to label %common.resume unwind label %bb.l, !noalias !11639

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.b, align 8, !range !12, !noalias !11639, !noundef !4
  %i.m = icmp eq i64 %i.l, -9223372036854775808
  br i1 %i.m, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !11639, !nonnull !4, !align !5, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.o, ptr %i.p, align 8, !noalias !11639
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !11639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11639
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11639
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !11639 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11639
  %i.q = icmp eq i64 %.pr.i, -9223372036854775807
  br i1 %i.q, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %.thread.i
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$i64$GT$$C$serde_json..error..Error$GT$$GT$17h0e0a565ae7102cb1E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.d, !noalias !11639

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11639
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11639
  %i.r = invoke { i64, ptr } @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_i6417hb80cff27611d35f2E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$11deserialize17h5732cfa7662288b9E.exit.i" unwind label %bb.d, !noalias !11639 ; 2 uses

"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$11deserialize17h5732cfa7662288b9E.exit.i": ; preds = %bb.h
  %i.s = extractvalue { i64, ptr } %i.r, 0
  %i.t = extractvalue { i64, ptr } %i.r, 1        ; 2 uses
  %i.u = trunc nuw i64 %i.s to i1
  br i1 %i.u, label %bb.i, label %.thread

.thread:                                          ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$11deserialize17h5732cfa7662288b9E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11639
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11639
  br label %bb.ag

bb.i:                                             ; preds = %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$i64$GT$11deserialize17h5732cfa7662288b9E.exit.i"
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.v, align 8, !noalias !11639
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !11639
  invoke fastcc void @"_ZN4core3ptr159drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$i64$GT$$C$serde_json..error..Error$GT$$GT$17h0e0a565ae7102cb1E"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %bb.d, !noalias !11639

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11639
  %i.w = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 59)
          to label %bb.k unwind label %bb.d, !noalias !11639

bb.k:                                             ; preds = %bb.j
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11639
  br label %bb.m

bb.l:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11639
  unreachable

common.resume:                                    ; preds = %bb.ab, %bb.ad, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %i.k, %bb.d ], [ %i.cb, %bb.ab ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b, %bb.k
  %.sroa.8.1.ph = phi ptr [ %i.w, %bb.k ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11639
  br label %bb.ag

bb.n:                                             ; preds = %bb.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !11641 ; 8 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !11641 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11639
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11639
  %i.y = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.y, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = ptrtoint ptr %.sroa.8.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.pr.i, ptr %i.f, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.z, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.12.0.copyload, ptr %.sroa.58.0..sroa_idx, align 8
  switch i64 %.sroa.12.0.copyload, label %thread-pre-split.i.i [
    i64 0, label %.loopexit
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.aa = load i8, ptr %.sroa.8.0.copyload, align 1, !alias.scope !11642, !noalias !11643, !noundef !4 ; 2 uses
  switch i8 %i.aa, label %bb.q [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i.i:                             ; preds = %bb.o
  %.pr.i.i = load i8, ptr %.sroa.8.0.copyload, align 1, !alias.scope !11642, !noalias !11643
  br label %bb.q

bb.q:                                             ; preds = %thread-pre-split.i.i, %bb.p
  %i.ab = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.aa, %bb.p ]
  switch i8 %i.ab, label %bb.x [
    i8 43, label %bb.r
    i8 45, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.ad = add i64 %.sroa.12.0.copyload, -1        ; 3 uses
  %i.ae = icmp ult i64 %.sroa.12.0.copyload, 17
  br i1 %i.ae, label %.preheader.i.i, label %.preheader98.i.i

bb.s:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 1 ; 2 uses
  %i.ag = add i64 %.sroa.12.0.copyload, -1        ; 3 uses
  %i.ah = icmp ult i64 %.sroa.12.0.copyload, 17
  br i1 %i.ah, label %.preheader100.i.i, label %.lr.ph

.preheader100.i.i:                                ; preds = %bb.s
  %.not92112.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not92112.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph.i.i

bb.t:                                             ; preds = %bb.z
  %i.ai = extractvalue { i64, i1 } %i.bq, 0       ; 2 uses
  %.not93.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not93.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph89

.preheader102.i.i:                                ; preds = %bb.v
  %i.aj = extractvalue { i64, i1 } %i.au, 0       ; 2 uses
  %.not91.i.i = icmp eq i64 %i.al, 0
  br i1 %.not91.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %.preheader102.i.i
  %.sroa.0.2.i.i84 = phi ptr [ %i.ak, %.preheader102.i.i ], [ %i.af, %bb.s ] ; 2 uses
  %.sroa.27.2.i.i83 = phi i64 [ %i.al, %.preheader102.i.i ], [ %i.ag, %bb.s ]
  %.sroa.070.2.i.i82 = phi i64 [ %i.aj, %.preheader102.i.i ], [ 0, %bb.s ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.2.i.i84, i64 1
  %i.al = add i64 %.sroa.27.2.i.i83, -1           ; 2 uses
  %i.am = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.2.i.i82, i64 10) ; 2 uses
  %i.an = extractvalue { i64, i1 } %i.am, 0
  %i.ao = load i8, ptr %.sroa.0.2.i.i84, align 1, !alias.scope !11642, !noalias !11643, !noundef !4
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ult i32 %i.aq, 10
  br i1 %i.ar, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %.lr.ph
  %i.as = extractvalue { i64, i1 } %i.am, 1
  br i1 %i.as, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.an, i64 %i.at) ; 2 uses
  %i.av = extractvalue { i64, i1 } %i.au, 1
  br i1 %i.av, label %.loopexit, label %.preheader102.i.i

.lr.ph.i.i:                                       ; preds = %.preheader100.i.i, %bb.w
  %.sroa.0.3115.i.i = phi ptr [ %i.bc, %bb.w ], [ %i.af, %.preheader100.i.i ] ; 2 uses
  %.sroa.27.3114.i.i = phi i64 [ %i.bb, %bb.w ], [ %i.ag, %.preheader100.i.i ]
  %.sroa.070.4113.i.i = phi i64 [ %i.be, %bb.w ], [ 0, %.preheader100.i.i ]
  %i.aw = load i8, ptr %.sroa.0.3115.i.i, align 1, !alias.scope !11642, !noalias !11643, !noundef !4
  %i.ax = zext i8 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, -48                  ; 2 uses
  %i.az = icmp ult i32 %i.ay, 10
  br i1 %i.az, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.ba = mul i64 %.sroa.070.4113.i.i, 10
  %i.bb = add nsw i64 %.sroa.27.3114.i.i, -1      ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.3115.i.i, i64 1
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = sub i64 %i.ba, %i.bd                    ; 2 uses
  %.not92.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not92.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph.i.i

bb.x:                                             ; preds = %bb.q
  %i.bf = icmp ult i64 %.sroa.12.0.copyload, 16
  br i1 %i.bf, label %.lr.ph120.i.i.preheader, label %.preheader98.i.i

.lr.ph120.i.i.preheader:                          ; preds = %.preheader.i.i, %bb.x
  %.sroa.0.1119.i.i.ph = phi ptr [ %.sroa.8.0.copyload, %bb.x ], [ %i.ac, %.preheader.i.i ]
  %.sroa.27.1118.i.i.ph = phi i64 [ %.sroa.12.0.copyload, %bb.x ], [ %i.ad, %.preheader.i.i ]
  br label %.lr.ph120.i.i

.preheader98.i.i:                                 ; preds = %bb.x, %bb.r
  %.sroa.27.0.ph.i.i = phi i64 [ %.sroa.12.0.copyload, %bb.x ], [ %i.ad, %bb.r ] ; 2 uses
  %.sroa.0.0.ph.i.i = phi ptr [ %.sroa.8.0.copyload, %bb.x ], [ %i.ac, %bb.r ]
  %.not93.i.i85 = icmp eq i64 %.sroa.27.0.ph.i.i, 0
  br i1 %.not93.i.i85, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph89

.preheader.i.i:                                   ; preds = %bb.r
  %.not94116.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not94116.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph120.i.i.preheader

.lr.ph89:                                         ; preds = %.preheader98.i.i, %bb.t
  %.sroa.0.0.i.i88 = phi ptr [ %i.bg, %bb.t ], [ %.sroa.0.0.ph.i.i, %.preheader98.i.i ] ; 2 uses
  %.sroa.27.0.i.i87 = phi i64 [ %i.bh, %bb.t ], [ %.sroa.27.0.ph.i.i, %.preheader98.i.i ]
  %.sroa.070.0.i.i86 = phi i64 [ %i.ai, %bb.t ], [ 0, %.preheader98.i.i ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i88, i64 1
  %i.bh = add i64 %.sroa.27.0.i.i87, -1           ; 2 uses
  %i.bi = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.070.0.i.i86, i64 10) ; 2 uses
  %i.bj = extractvalue { i64, i1 } %i.bi, 0
  %i.bk = load i8, ptr %.sroa.0.0.i.i88, align 1, !alias.scope !11642, !noalias !11643, !noundef !4
  %i.bl = zext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48                  ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 10
  br i1 %i.bn, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %.lr.ph89
  %i.bo = extractvalue { i64, i1 } %i.bi, 1
  br i1 %i.bo, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.bj, i64 %i.bp) ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 1
  br i1 %i.br, label %.loopexit, label %bb.t

.lr.ph120.i.i:                                    ; preds = %.lr.ph120.i.i.preheader, %bb.aa
  %.sroa.0.1119.i.i = phi ptr [ %i.by, %bb.aa ], [ %.sroa.0.1119.i.i.ph, %.lr.ph120.i.i.preheader ] ; 2 uses
  %.sroa.27.1118.i.i = phi i64 [ %i.bx, %bb.aa ], [ %.sroa.27.1118.i.i.ph, %.lr.ph120.i.i.preheader ]
  %.sroa.070.1117.i.i = phi i64 [ %i.ca, %bb.aa ], [ 0, %.lr.ph120.i.i.preheader ]
  %i.bs = load i8, ptr %.sroa.0.1119.i.i, align 1, !alias.scope !11642, !noalias !11643, !noundef !4
  %i.bt = zext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48                  ; 2 uses
  %i.bv = icmp ult i32 %i.bu, 10
  br i1 %i.bv, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %.lr.ph120.i.i
  %i.bw = mul i64 %.sroa.070.1117.i.i, 10
  %i.bx = add nsw i64 %.sroa.27.1118.i.i, -1      ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.1119.i.i, i64 1
  %i.bz = zext nneg i32 %i.bu to i64
  %i.ca = add i64 %i.bw, %i.bz                    ; 2 uses
  %.not94.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not94.i.i, label %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit", label %.lr.ph120.i.i

bb.ab:                                            ; preds = %.loopexit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #41
          to label %common.resume unwind label %bb.af

.loopexit:                                        ; preds = %bb.v, %bb.u, %.lr.ph, %.lr.ph.i.i, %.lr.ph89, %bb.y, %bb.z, %.lr.ph120.i.i, %bb.p, %bb.p, %bb.o
  %.sroa.4.0.ph = phi i8 [ 1, %bb.p ], [ 1, %bb.p ], [ 0, %bb.o ], [ 2, %bb.y ], [ 1, %.lr.ph.i.i ], [ 1, %.lr.ph120.i.i ], [ 2, %bb.z ], [ 1, %.lr.ph89 ], [ 1, %.lr.ph ], [ 3, %bb.v ], [ 3, %bb.u ]
  %i.cc = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %.sroa.4.0.ph)
          to label %bb.ac unwind label %bb.ab

"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit": ; preds = %.preheader102.i.i, %bb.w, %bb.t, %bb.aa, %.preheader98.i.i, %.preheader100.i.i, %.preheader.i.i
  %.sroa.1520.0 = phi i64 [ %i.ca, %bb.aa ], [ %i.ai, %bb.t ], [ %i.be, %bb.w ], [ 0, %.preheader.i.i ], [ 0, %.preheader100.i.i ], [ 0, %.preheader98.i.i ], [ %i.aj, %.preheader102.i.i ]
  %i.cd = inttoptr i64 %.sroa.1520.0 to ptr
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit"
  %.sroa.5.0 = phi ptr [ %i.cd, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit" ], [ %i.cc, %.loopexit ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN4core3num60_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$i64$GT$8from_str17hbf860ab00571e5b9E.exit" ], [ 1, %.loopexit ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.ac
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.ag:                                            ; preds = %.thread, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", %bb.n, %bb.m
  %.sroa.5.2 = phi ptr [ %.sroa.8.1.ph, %bb.m ], [ %.sroa.5.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" ], [ %.sroa.8.0.copyload, %bb.n ], [ %i.t, %.thread ]
  %.sroa.0.2 = phi i64 [ 1, %bb.m ], [ %.sroa.0.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" ], [ 0, %bb.n ], [ 0, %.thread ]
  %i.ch = insertvalue { i64, ptr } poison, i64 %.sroa.0.2, 0
  %i.ci = insertvalue { i64, ptr } %i.ch, ptr %.sroa.5.2, 1
  ret { i64, ptr } %i.ci
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_ZN9serde_aux16field_attributes30deserialize_number_from_string17h90c4d983487ca45aE(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 14 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11647
  call void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h49a93c87aebcb319E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(64) %0), !noalias !11648
  %i.h = load i8, ptr %i.d, align 8, !range !41, !noalias !11647, !noundef !4 ; 2 uses
  %i.i = icmp eq i8 %i.h, 22
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !11647, !nonnull !4, !align !5, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11647
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.513.0..sroa_idx.i, i64 7, i1 false), !noalias !11647
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.614.0.copyload.i = load ptr, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !11647
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i64 16, i1 false), !noalias !11647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11647
  store i8 %i.h, ptr %i.e, align 8, !noalias !11647
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.614.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !11647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11647
  invoke void @"_ZN109_$LT$serde..private..de..content..ContentRefDeserializer$LT$E$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17h02ba7b4bb224af97E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.e unwind label %bb.d, !noalias !11648

bb.d:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g, %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #41
          to label %common.resume unwind label %bb.m, !noalias !11648

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.b, align 8, !range !12, !noalias !11647, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !11647, !nonnull !4, !align !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.p, ptr %i.q, align 8, !noalias !11647
  store i64 -9223372036854775807, ptr %i.c, align 8, !noalias !11647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11647
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !11647
  %.pr.i = load i64, ptr %i.c, align 8, !noalias !11647 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11647
  %i.r = icmp eq i64 %.pr.i, -9223372036854775807
  br i1 %i.r, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f, %.thread.i
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$anki..deckconfig..DeckConfigId$GT$$C$serde_json..error..Error$GT$$GT$17h2a19d539926b7f7dE"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
          to label %bb.h unwind label %bb.d, !noalias !11648

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11647
  %i.s = invoke { i64, ptr } @"_ZN4anki10deckconfig1_88_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..deckconfig..DeckConfigId$GT$11deserialize17h5a19517b2e831b60E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.i unwind label %bb.d, !noalias !11648 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.t = extractvalue { i64, ptr } %i.s, 0
  %i.u = extractvalue { i64, ptr } %i.s, 1        ; 2 uses
  %i.v = trunc nuw i64 %i.t to i1
  br i1 %i.v, label %bb.j, label %.thread

.thread:                                          ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11647
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11647
  br label %bb.y

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !11647
  store i64 -9223372036854775807, ptr %i.a, align 8, !noalias !11647
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$core..result..Result$LT$serde_aux..field_attributes..deserialize_number_from_string..StringOrInt$LT$anki..deckconfig..DeckConfigId$GT$$C$serde_json..error..Error$GT$$GT$17h2a19d539926b7f7dE"(ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.k unwind label %bb.d, !noalias !11648

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11647
  %i.x = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17hf4ddca4d084c1a9cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @463, i64 noundef 59)
          to label %bb.l unwind label %bb.d, !noalias !11648

bb.l:                                             ; preds = %bb.k
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11648
  br label %bb.n

bb.m:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !11648
  unreachable

common.resume:                                    ; preds = %bb.q, %bb.v, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ak, %bb.v ], [ %i.l, %bb.d ], [ %i.ab, %bb.q ]
  resume { ptr, i32 } %common.resume.op

bb.n:                                             ; preds = %bb.b, %bb.l
  %.sroa.8.1.ph = phi ptr [ %i.x, %bb.l ], [ %i.k, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11647
  br label %bb.y

bb.o:                                             ; preds = %bb.f
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !11649 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !11649 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11647
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$serde_core..private..content..Content$GT$17hc73ed48ceb330642E"(ptr noalias noundef align 8 dereferenceable(32) %i.e), !noalias !11648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11647
  %i.z = icmp eq i64 %.pr.i, -9223372036854775808
  br i1 %i.z, label %bb.y, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = ptrtoint ptr %.sroa.8.0.copyload to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.pr.i, ptr %i.g, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.aa, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %.sroa.12.0.copyload, ptr %.sroa.58.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @"_ZN77_$LT$anki..deckconfig..DeckConfigId$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h352f3088078f80c8E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.8.0.copyload, i64 noundef %.sroa.12.0.copyload)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #41
          to label %common.resume unwind label %bb.x

bb.r:                                             ; preds = %bb.p
  %i.ac = load i8, ptr %i.f, align 8, !range !17, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !range !19, !noundef !4
  %i.ag = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$6custom17h24dce92bc84f4965E"(i8 noundef %i.af)
          to label %bb.u unwind label %bb.q
end_hunk_4
