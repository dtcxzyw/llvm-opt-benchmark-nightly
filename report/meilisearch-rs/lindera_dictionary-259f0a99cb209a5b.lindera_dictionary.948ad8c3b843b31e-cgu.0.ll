Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 42
begin_hunk_0_@"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h7d0841879e301d78E":bb.a

.lr.ph.split.i.lr.ph:                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.e, %bb.b ] ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.i = lshr i32 %3, 12
  %i.j = shl nuw i32 %3, 16
  %i.k = and i32 %i.j, 4128768
  %i.l = shl nuw nsw i32 %3, 2
  %.sroa.7.0.insert.ext.i = and i32 %i.l, 16128
  %.sroa.7.0.insert.shift.i = or disjoint i32 %i.i, %.sroa.7.0.insert.ext.i
  %i.m = or disjoint i32 %.sroa.7.0.insert.shift.i, %i.k
  %.sroa.0.0.insert.insert.i = or disjoint i32 %i.m, 8421600 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i32 %.sroa.0.0.insert.insert.i, ptr %.sroa.558.0..sroa_idx, align 8
  %i.n = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %i.o = trunc nuw i32 %i.n to i8                 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.q, %.lr.ph.split.i.lr.ph
  %i.p = phi ptr [ %.sroa.10.0.i, %.lr.ph.split.i.lr.ph ], [ %i.bq, %bb.q ] ; 2 uses
  %i.q = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.bu, %bb.q ] ; 6 uses
  %.sroa.08.096 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.ae, %bb.q ] ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.split.i
  %i.r = phi i64 [ %.sroa.08.096, %.lr.ph.split.i ], [ %i.ae, %bb.i ] ; 4 uses
  %i.s = sub nuw nsw i64 %2, %i.r                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.preheader.i.i:                                   ; preds = %bb.g
  %.not.i.i = icmp eq i64 %2, %i.r
  br i1 %.not.i.i, label %.critedge24, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.h
  %.sroa.01.05.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !10919, !noalias !10920, !noundef !6
  %i.x = icmp eq i8 %i.w, %i.o
  br i1 %i.x, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = add nuw nsw i64 %.sroa.01.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.s
  br i1 %exitcond.not.i.i, label %.critedge24, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %bb.g
  %i.z = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.s)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %.critedge24

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.4.0.i27.i = phi i64 [ %i.ab, %.noexc ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ]
  %i.ad = add nuw i64 %i.r, 1
  %i.ae = add i64 %i.ad, %.sroa.4.0.i27.i         ; 5 uses
  %.not20.i = icmp ult i64 %i.ae, 3
  %.not21.i = icmp ugt i64 %i.ae, %2              ; 2 uses
  %or.cond.i = or i1 %.not20.i, %.not21.i
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %.critedge24, label %bb.g

bb.j:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.af = add nsw i64 %i.ae, -3                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = load i16, ptr %.sroa.558.0..sroa_idx, align 1
  %i.aj = xor i16 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.ag, i64 2
  %i.al = getelementptr i8, ptr %.sroa.558.0..sroa_idx, i64 2
  %i.am = load i8, ptr %i.ak, align 1
  %i.an = load i8, ptr %i.al, align 1
  %i.ao = zext i8 %i.am to i16
  %i.ap = zext i8 %i.an to i16
  %i.aq = xor i16 %i.ao, %i.ap
  %i.ar = or i16 %i.aj, %i.aq
  %i.as = icmp ne i16 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.i

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.l, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10921)
  %gepdiff = sub nuw nsw i64 %i.af, %.sroa.08.096 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10922)
  %i.aw = load i64, ptr %i.b, align 8, !range !14, !alias.scope !10923, !noundef !6 ; 2 uses
  %i.ax = sub i64 %i.aw, %i.q
  %i.ay = icmp ugt i64 %gepdiff, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.o, !prof !16

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10924
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10924
  %.pre118 = load i64, ptr %i.b, align 8, !range !14, !alias.scope !10925
  br label %bb.o

.critedge24:                                      ; preds = %bb.i, %.preheader.i.i, %.noexc, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10926)
  %gepdiff71 = sub nuw nsw i64 %2, %.sroa.08.096  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10927)
  %i.az = load i64, ptr %i.b, align 8, !range !14, !alias.scope !10928, !noundef !6
  %i.ba = sub i64 %i.az, %i.q
  %i.bb = icmp ugt i64 %gepdiff71, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !16

bb.m:                                             ; preds = %.critedge24
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff71, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %bb.f

.noexc31:                                         ; preds = %bb.m
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10929
  %.pre120 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10929
  br label %bb.n

bb.n:                                             ; preds = %.noexc31, %.critedge24
  %i.bc = phi ptr [ %i.p, %.critedge24 ], [ %.pre120, %.noexc31 ]
  %i.bd = phi i64 [ %i.q, %.critedge24 ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  %i.bf = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.be, i64 %gepdiff71, i1 false), !noalias !10929
  %i.bh = add nuw i64 %i.bd, %gepdiff71
  store i64 %i.bh, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10929
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %.noexc29, %bb.k
  %i.bi = phi ptr [ %i.p, %bb.k ], [ %.pre, %.noexc29 ] ; 2 uses
  %i.bj = phi i64 [ %i.aw, %bb.k ], [ %.pre118, %.noexc29 ]
  %i.bk = phi i64 [ %i.q, %bb.k ], [ %.pre.i.i, %.noexc29 ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.av, i64 %gepdiff, i1 false), !noalias !10924
  %i.bn = add nuw i64 %i.bk, %gepdiff             ; 4 uses
  store i64 %i.bn, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10924
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10930)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10931)
  %i.bo = sub i64 %i.bj, %i.bn
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %bb.p, label %bb.q, !prof !16

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10932
  %.pre119 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10932
  br label %bb.q

bb.q:                                             ; preds = %.noexc34, %bb.o
  %i.bq = phi ptr [ %i.bi, %bb.o ], [ %.pre119, %.noexc34 ] ; 2 uses
  %i.br = phi i64 [ %i.bn, %bb.o ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(3) %4, i64 3, i1 false), !noalias !10932
  %i.bu = add nuw i64 %i.br, 3                    ; 2 uses
  store i64 %i.bu, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10932
  br label %.lr.ph.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h3e8ac0e446ecdc5fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 10 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10950)
  %i.e = load i64, ptr %0, align 8, !range !14, !alias.scope !10951, !noalias !10952, !noundef !6
  %i.f = sub nsw i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i", !prof !16

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.d, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" unwind label %bb.d, !noalias !10952

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i": ; preds = %bb.c
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !10950, !noalias !10952
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i", %bb.b
  %i.i = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" ], [ %i.b, %bb.b ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10950, !noalias !10952, !nonnull !6, !noundef !6
  %i.l = icmp ult i64 %i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.d, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.o = shl i64 %.sroa.9.0.copyload, 2           ; 5 uses
  %i.p = icmp ugt i64 %.sroa.9.0.copyload, 4611686018427387903
  %i.q = icmp ugt i64 %i.o, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i.i, label %.split.us.i, label %.lr.ph.split.i, !prof !10

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.r = icmp eq i64 %i.o, 0
  br i1 %i.r, label %.lr.ph.split.split.us.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i: ; preds = %.lr.ph.split.i
  %i.s = add i64 %i.d, -1
  %i.t = add i64 %i.s, %i.i
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.u = icmp eq i64 %.sroa.9.0.copyload, 0
  tail call void @llvm.assume(i1 %i.u)
  %3 = xor i64 %i.b, -1
  %i.v = add i64 %1, %3                           ; 2 uses
  %i.w = add i64 %1, -2
  %4 = sub i64 %i.w, %i.b
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.x = icmp ult i64 %4, 3
  br i1 %i.x, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader, label %.lr.ph.split.split.us.i.new

.lr.ph.split.split.us.i.new:                      ; preds = %.lr.ph.split.split.us.i
  %unroll_iter = and i64 %i.v, -4
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i, %.lr.ph.split.split.us.i.new
  %.sroa.0.010.us14.i = phi ptr [ %i.m, %.lr.ph.split.split.us.i.new ], [ %i.ab, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i ] ; 13 uses
  %niter = phi i64 [ 0, %.lr.ph.split.split.us.i.new ], [ %niter.next.3, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i ]
  store i64 0, ptr %.sroa.0.010.us14.i, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i, align 8, !noalias !10953
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 40
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.1, align 8, !noalias !10953
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 48
  store i64 0, ptr %i.z, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 56
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 64
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.2, align 8, !noalias !10953
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 72
  store i64 0, ptr %i.aa, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 88
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.3, align 8, !noalias !10953
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i, i64 96 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.i.unr-lcssa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader: ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.split.split.us.i
  %.sroa.0.010.us14.i.epil.init = phi ptr [ %i.m, %.lr.ph.split.split.us.i ], [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader
  %.sroa.0.010.us14.i.epil = phi ptr [ %.sroa.0.010.us14.i.epil.init, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader ], [ %i.ac, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil.preheader ], [ %epil.iter.next, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ]
  store i64 0, ptr %.sroa.0.010.us14.i.epil, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.us.i.epil, align 8, !noalias !10953
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.010.us14.i.epil, i64 24 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.loopexit.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, !llvm.loop !10938

._crit_edge.loopexit.i:                           ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil, %._crit_edge.loopexit.i.unr-lcssa
  %.lcssa = phi ptr [ %i.ab, %._crit_edge.loopexit.i.unr-lcssa ], [ %i.ac, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.us.i.epil ]
  %i.ad = add i64 %i.d, -1
  %i.ae = add i64 %i.ad, %i.i
  br label %._crit_edge.thread.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i
  %.sroa.0.010.i = phi ptr [ %i.ak, %bb.f ], [ %i.m, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ] ; 4 uses
  %.sroa.03.09.i = phi i64 [ %i.aj, %bb.f ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ]
  %storemerge8.i = phi i64 [ %i.al, %bb.f ], [ %i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.preheader.i ] ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10954
  %i.af = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 4) #47, !noalias !10954 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.split.us.i, label %bb.f

.split.us.i:                                      ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, %.lr.ph.i
  %.us-phi12.i = phi i64 [ %i.i, %.lr.ph.i ], [ %storemerge8.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  %.us-phi13.i = phi i64 [ 0, %.lr.ph.i ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi13.i, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @662) #46
          to label %.noexc21.i unwind label %bb.e, !noalias !10953

.noexc21.i:                                       ; preds = %.split.us.i
  unreachable

._crit_edge.thread.i:                             ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i", %._crit_edge.loopexit.i
  %.sroa.0.0.lcssa32.i = phi ptr [ %i.m, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i" ], [ %.lcssa, %._crit_edge.loopexit.i ], [ %i.ak, %bb.f ] ; 3 uses
  %storemerge.lcssa31.i = phi i64 [ %i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i" ], [ %i.ae, %._crit_edge.loopexit.i ], [ %i.t, %bb.f ]
  store i64 %.sroa.0.0.copyload, ptr %.sroa.0.0.lcssa32.i, align 8, !noalias !10950
  %.sroa.6.0..sroa.0.0.lcssa32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa32.i, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa.0.0.lcssa32.i.sroa_idx, align 8, !noalias !10950
  %.sroa.9.0..sroa.0.0.lcssa32.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa32.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa.0.0.lcssa32.i.sroa_idx, align 8, !noalias !10950
  %i.ah = add i64 %storemerge.lcssa31.i, 1
  store i64 %i.ah, ptr %i.a, align 8, !alias.scope !10950, !noalias !10952
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit"

bb.e:                                             ; preds = %.split.us.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi12.i, ptr %i.a, align 8, !alias.scope !10950, !noalias !10952
  br label %bb.g

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 4 %.sroa.6.0.copyload, i64 %i.o, i1 false), !noalias !10955
  %i.aj = add nuw i64 %.sroa.03.09.i, 1           ; 2 uses
  store i64 %.sroa.9.0.copyload, ptr %.sroa.0.010.i, align 8, !noalias !10953
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !10953
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 16
  store i64 %.sroa.9.0.copyload, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !10953
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.al = add i64 %storemerge8.i, 1
  %exitcond.not.i = icmp eq i64 %i.aj, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %i.h, %bb.d ]
  %i.am = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.am, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.an = shl nuw i64 %.sroa.0.0.copyload, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10953
  br label %.body

bb.i:                                             ; preds = %bb.a
  %i.ao = sub nuw nsw i64 %i.b, %1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !6, !noundef !6
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %1
  store i64 %1, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10956)
  %i.as = icmp eq i64 %i.b, %1
  br i1 %i.as, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit", label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.i, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i"
  %.sroa.0.011.i = phi i64 [ %i.au, %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i" ], [ 0, %bb.i ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.ar, i64 %.sroa.0.011.i ; 2 uses
  %i.au = add nuw i64 %.sroa.0.011.i, 1           ; 2 uses
  %.val8.i = load i64, ptr %i.at, align 8, !alias.scope !10956 ; 2 uses
  %i.av = icmp eq i64 %.val8.i, 0
  br i1 %i.av, label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i", label %bb.j

bb.j:                                             ; preds = %.lr.ph.i7
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  %.val9.i = load ptr, ptr %i.aw, align 8, !alias.scope !10956, !nonnull !6, !noundef !6
  %i.ax = shl nuw i64 %.val8.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i, i64 noundef %i.ax, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !10956
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i"

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i": ; preds = %bb.j, %.lr.ph.i7
  %i.ay = icmp eq i64 %i.au, %i.ao
  br i1 %i.ay, label %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit", label %.lr.ph.i7

"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit": ; preds = %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit.i", %bb.i
  %.val5 = load i64, ptr %2, align 8              ; 2 uses
  %i.az = icmp eq i64 %.val5, 0
  br i1 %i.az, label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit"
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val6 = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6
  %i.bb = shl nuw i64 %.val5, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit"

"_ZN4core3ptr79drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$GT$17haf5342039a92ecb0E.exit": ; preds = %._crit_edge.thread.i, %bb.k, %"_ZN4core3ptr89drop_in_place$LT$$u5b$alloc..vec..Vec$LT$lindera_dictionary..viterbi..EdgeId$GT$$u5d$$GT$17heb07d56ab98771e5E.exit"
  ret void

.body:                                            ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %.pn.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17h587a1e8e3971b864E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 21
  br i1 %i.c, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h87a60ecc5147f4baE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17hcd7d6b68654184b8E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit

_ZN5alloc5slice11stable_sort17hbc2808a13ff16557E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
