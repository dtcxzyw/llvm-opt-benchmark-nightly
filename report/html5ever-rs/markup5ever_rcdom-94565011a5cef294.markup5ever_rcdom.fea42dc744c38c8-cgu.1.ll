Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
inline.NumInlined: 278
inline.NumDeleted: 106
begin_hunk_0_@_RNvCs1mImOlsSUsK_17markup5ever_rcdom18remove_from_parent:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !144, !nonnull !11, !noundef !11 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !144, !noundef !11
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !noalias !144
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit10

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit10

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit10: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.o:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.p:                                             ; preds = %bb.e
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8: ; preds = %bb.i, %bb.j
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvCs1mImOlsSUsK_17markup5ever_rcdom20get_parent_and_index(ptr nofree captures(address) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 96 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noundef !11 ; 3 uses
  store ptr null, ptr %i.d, align 8
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = invoke noundef ptr @_RNvMs1c_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE7upgradeBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.r       ; 7 uses

bb.c:                                             ; preds = %bb.b
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  store ptr %i.f, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = load ptr, ptr %i.d, align 8, !noundef !11 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8
  store ptr %i.e, ptr %i.d, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit unwind label %bb.j

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #21
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %._crit_edge, %bb.f
  unreachable

bb.h:                                             ; preds = %bb.n, %bb.j
  %i.i = phi ptr [ %i.f, %bb.j ], [ %.pre, %bb.n ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.m, %bb.j ], [ %i.ad, %bb.n ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.j = load i64, ptr %i.i, align 8, !noalias !151, !noundef !11
  %i.k = add i64 %i.j, -1                         ; 2 uses
  store i64 %i.k, ptr %i.i, align 8, !noalias !151
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.i, label %.noexc16

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #18
          to label %.noexc16 unwind label %bb.q

bb.j:                                             ; preds = %bb.k, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !152, !noundef !11 ; 3 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  br i1 %i.p, label %bb.l, label %bb.k, !prof !125

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %.noexc17 unwind label %bb.j

.noexc17:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit
  %i.q = add nuw nsw i64 %i.o, 1
  store i64 %i.q, ptr %i.n, align 8, !noalias !152
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.u = load i64, ptr %i.t, align 8, !noundef !11 ; 2 uses
  %.idx = shl nuw nsw i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.w = icmp eq i64 %i.u, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.y = add i64 %i.ab, 1
  %i.z = icmp eq ptr %i.x, %i.v
  br i1 %i.z, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %i.aa = phi ptr [ %i.x, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.ab = phi i64 [ %i.y, %bb.m ], [ 0, %bb.l ]   ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !alias.scope !155, !noalias !160, !nonnull !11, !noundef !11
  %.not.i = icmp eq ptr %i.ac, %.0.val
  br i1 %.not.i, label %bb.o, label %bb.m

bb.n:                                             ; preds = %._crit_edge
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.n, align 8, !noundef !11
  %i.af = add i64 %i.ae, -1
  store i64 %i.af, ptr %i.n, align 8
  %.pre = load ptr, ptr %i.b, align 8, !alias.scope !151
  br label %bb.h

._crit_edge:                                      ; preds = %bb.m, %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 103 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #21
          to label %bb.g unwind label %bb.n

bb.o:                                             ; preds = %.lr.ph
  store i64 %i.o, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.sroa.3.0 = phi i64 [ %i.ab, %bb.o ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.o ], [ null, %bb.a ]
  %i.ag = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ah

bb.q:                                             ; preds = %bb.r, %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.noexc16:                                         ; preds = %bb.r, %bb.i, %bb.h
  %.pn.pn4 = phi { ptr, i32 } [ %.pn, %bb.i ], [ %.pn, %bb.h ], [ %i.aj, %bb.r ]
  resume { ptr, i32 } %.pn.pn4

bb.r:                                             ; preds = %bb.f, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc16 unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvCs1mImOlsSUsK_17markup5ever_rcdom23append_to_existing_text(ptr nofree captures(none) %.0.val, ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, 4294967296) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !58, !noundef !11
  %i.i = icmp eq i8 %i.h, 2                       ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.ab, !prof !125

bb.c:                                             ; preds = %bb.b
  store i64 -1, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !165, !noalias !168, !nonnull !11, !noundef !11 ; 7 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 7 uses
  %i.p = icmp eq ptr %i.n, inttoptr (i64 15 to ptr)
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult ptr %i.n, inttoptr (i64 9 to ptr) ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !alias.scope !165, !noalias !168 ; 4 uses
  %i.t = trunc nuw nsw i64 %i.o to i32
  %.sroa.01.0.i = select i1 %i.q, i32 %i.t, i32 %i.s ; 2 uses
  %i.u = trunc nuw i64 %1 to i32
  %i.v = add i32 %.sroa.01.0.i, %i.u              ; 7 uses
  %i.w = icmp ult i32 %i.v, %.sroa.01.0.i
  br i1 %i.w, label %.invoke, label %.thread39.i, !prof !170

bb.e:                                             ; preds = %bb.c
  %i.x = trunc nuw i64 %1 to i32                  ; 2 uses
  %i.y = icmp samesign ult i64 %1, 9
  br i1 %i.y, label %bb.w, label %bb.f

.thread39.i:                                      ; preds = %bb.d
  %i.z = icmp ult i32 %i.v, 9
  br i1 %i.z, label %bb.x, label %.thread41.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

.thread41.i:                                      ; preds = %.thread39.i
  %i.aa = icmp ult ptr %i.n, inttoptr (i64 16 to ptr)
  %i.ab = trunc i64 %i.o to i1                    ; 2 uses
  %or.cond.i.i42.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.i42.i, label %bb.g, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i: ; preds = %.thread41.i
  %2 = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a

bb.g:                                             ; preds = %.thread41.i
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = and i64 %i.o, 1
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr i8, ptr %i.n, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  %i.ag = load i32, ptr %i.af, align 4, !alias.scope !177, !noalias !168
  %i.ah = zext i32 %i.ag to i64
  %.sroa.01.0.i.i.i.i.i = select i1 %i.ab, i64 %i.ah, i64 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.aj = zext i32 %i.s to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.01.0.i.i.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.al = phi i32 [ %i.v, %bb.h ], [ %i.x, %bb.f ], [ %i.v, %bb.g ]
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.r, %bb.g ]
  %i.am = trunc nuw i64 %.sroa.4.0.i.i.i.i to i32 ; 4 uses
  %spec.store.select.i.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.am, i32 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !178
  %i.an = zext i32 %spec.store.select.i.i.i.i.i to i64
  %i.ao = add nuw nsw i64 %i.an, 15
  %i.ap = lshr i64 %i.ao, 4                       ; 2 uses
  %i.aq = add nuw nsw i64 %i.ap, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !178
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.aq, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc3 unwind label %bb.ac

.noexc3:                                          ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.ar = load i64, ptr %i.d, align 8, !range !50, !noalias !178, !noundef !11
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !185, !noalias !178, !noundef !11 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.as, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %.noexc3
  %i.aw = load i64, ptr %i.av, align 8, !noalias !178
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.au, i64 %i.aw) #21
          to label %.noexc4 unwind label %bb.ac

.noexc4:                                          ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %.noexc3
  %i.ax = load ptr, ptr %i.av, align 8, !noalias !178, !nonnull !11, !noundef !11 ; 7 uses
  %i.ay = icmp samesign ult i64 %i.ap, %i.au
  tail call void @llvm.assume(i1 %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !178
  store i64 %i.au, ptr %i.e, align 8, !noalias !178
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !noalias !178
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.ba, align 8, !noalias !178
  %i.bb = shl i64 %i.au, 4
  %i.bc = add i64 %i.bb, -16                      ; 2 uses
  %i.bd = icmp ugt i64 %i.bc, 4294967295
  br i1 %i.bd, label %bb.k, label %common.resume.sink.split.i, !prof !22

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !178
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.c, align 8, !noalias !178
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.47.0..sroa_idx.i.i.i.i.i, align 8, !noalias !178
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %bb.m unwind label %bb.l, !noalias !178

bb.l:                                             ; preds = %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #20
          to label %bb.ae unwind label %bb.n, !noalias !178

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !178
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.j
  %3 = trunc nuw i64 %i.bc to i32                 ; 2 uses
  store i64 1, ptr %i.ax, align 8, !noalias !186
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !178
  %.sroa.5.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.5.0..sroa_idx.i.i.i.a, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i, i1 false), !noalias !187
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i unwind label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, !noalias !168

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %common.resume.sink.split.i
  %4 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ax, ptr %i.m, align 8, !alias.scope !177, !noalias !168
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i32 %i.am, ptr %i.bg, align 8, !alias.scope !177, !noalias !168
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  store i32 %3, ptr %.sroa.6.0..sroa_idx.i.i.i, align 4, !alias.scope !177, !noalias !168
  br label %bb.ae

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %common.resume.sink.split.i
  store ptr %i.ax, ptr %i.m, align 8, !alias.scope !177, !noalias !168
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i32 %i.am, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !177, !noalias !168
  %.sroa.6.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 44 ; 2 uses
  store i32 %3, ptr %.sroa.6.0..sroa_idx7.i.i.i, align 4, !alias.scope !177, !noalias !168
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i
  %i.bh = phi i32 [ %i.s, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ], [ %i.am, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ]
  %i.bi = phi i32 [ %i.v, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ], [ %i.al, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 3 uses
  %i.bj = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ], [ %i.ax, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %5 = phi ptr [ %2, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ], [ %.sroa.6.0..sroa_idx7.i.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i = load i32, ptr %5, align 4, !noalias !188, !noundef !11 ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.bi, %.sroa.0.0.i.i.i
  br i1 %.not.i.i.i, label %bb.o, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.o:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a
  %i.bk = add i32 %i.bi, -1
  %i.bl = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bk, i1 true) ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.invoke, label %bb.q, !prof !22

.invoke:                                          ; preds = %bb.o, %bb.d
  %i.bn = phi ptr [ @27, %bb.d ], [ @25, %bb.o ]
  %i.bo = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !191, !nonnull !11, !noundef !11
  %i.bp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !191, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn) #22
          to label %.cont unwind label %bb.ac

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.t, %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.ae unwind label %bb.v, !noalias !192

bb.q:                                             ; preds = %bb.o
  %i.br = lshr i32 -1, %i.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !192
  %i.bs = zext i32 %.sroa.0.0.i.i.i to i64
  %i.bt = add nuw nsw i64 %i.bs, 15
  %i.bu = lshr i64 %i.bt, 4
  %i.bv = add nuw nsw i64 %i.bu, 1
  store i64 %i.bv, ptr %i.b, align 8, !noalias !192
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bj, ptr %i.bw, align 8, !noalias !192
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bx, align 8, !noalias !192
  %narrow.i.i.i = add nuw i32 %i.br, 16
  %i.by = lshr i32 %narrow.i.i.i, 4
  %narrow14.i.i.i = add nuw nsw i32 %i.by, 1
  %i.bz = zext nneg i32 %narrow14.i.i.i to i64
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0, i64 noundef %i.bz, i64 noundef 8, i64 noundef 16)
          to label %bb.r unwind label %bb.p, !noalias !192

bb.r:                                             ; preds = %bb.q
  %i.ca = load i64, ptr %i.b, align 8, !range !195, !noalias !192, !noundef !11
  %i.cb = shl i64 %i.ca, 4
  %i.cc = add i64 %i.cb, -16                      ; 2 uses
  %i.cd = icmp ugt i64 %i.cc, 4294967295
  br i1 %i.cd, label %bb.t, label %bb.s, !prof !22

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.bw, align 8, !noalias !192, !nonnull !11, !noundef !11
  %i.cf = trunc nuw i64 %i.cc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !192
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.a, align 8, !noalias !192
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !192
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %bb.u unwind label %bb.p, !noalias !192

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !192
  unreachable

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.s, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a
  %.sroa.63.0.i.i = phi i32 [ %i.cf, %bb.s ], [ %.sroa.0.0.i.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a ] ; 2 uses
  %.sroa.0.0.i19.i = phi ptr [ %i.ce, %bb.s ], [ %i.bj, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a ] ; 5 uses
  store ptr %.sroa.0.0.i19.i, ptr %i.m, align 8, !alias.scope !196, !noalias !168
  store i32 %.sroa.63.0.i.i, ptr %5, align 4, !alias.scope !196, !noalias !168
  %i.ch = ptrtoint ptr %.sroa.0.0.i19.i to i64    ; 3 uses
  %i.ci = and i64 %i.ch, 1
  %i.cj = sub nsw i64 0, %i.ci
  %i.ck = getelementptr i8, ptr %.sroa.0.0.i19.i, i64 %i.cj
  %i.cl = trunc i64 %i.ch to i1
  %.sroa.01.0.i.i = select i1 %i.cl, i32 %.sroa.63.0.i.i, i32 0
  %i.cm = icmp eq ptr %.sroa.0.0.i19.i, inttoptr (i64 15 to ptr)
  %i.cn = icmp ult ptr %.sroa.0.0.i19.i, inttoptr (i64 9 to ptr)
  %i.co = trunc nuw nsw i64 %i.ch to i32
  %spec.select = select i1 %i.cn, i32 %i.co, i32 %i.bh
  %.sroa.04.0.i.i = select i1 %i.cm, i32 0, i32 %spec.select
  %i.cp = add i32 %.sroa.04.0.i.i, %.sroa.01.0.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4294967296) %1, i1 false), !noalias !165
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i32 %i.bi, ptr %i.ct, align 8, !alias.scope !165, !noalias !168
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  store i64 0, ptr %i.f, align 8, !noalias !191
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i

bb.x:                                             ; preds = %.thread39.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  store i64 0, ptr %i.f, align 8, !noalias !191
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = and i64 %i.o, 1
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = getelementptr i8, ptr %i.n, i64 %i.cv
  %i.cx = trunc i64 %i.o to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !165, !noalias !168
  %i.da = zext i32 %i.cz to i64
  %.sroa.01.0.i.i21.i = select i1 %i.cx, i64 %i.da, i64 0
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.dc = zext i32 %i.s to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 %.sroa.01.0.i.i21.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.de = phi i32 [ %i.v, %bb.y ], [ %i.x, %bb.w ], [ %i.v, %bb.x ] ; 2 uses
  %.sroa.4.0.i22.i = phi i64 [ %i.dc, %bb.y ], [ 0, %bb.w ], [ %i.o, %bb.x ] ; 2 uses
  %.sroa.0.0.i23.i = phi ptr [ %i.dd, %bb.y ], [ inttoptr (i64 1 to ptr), %bb.w ], [ %i.r, %bb.x ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 1 %.sroa.0.0.i23.i, i64 %.sroa.4.0.i22.i, i1 false), !noalias !168
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.i22.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.df, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4294967296) %1, i1 false), !noalias !165
  %i.dg = zext nneg i32 %i.de to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.dh = icmp eq i32 %i.de, 0
  %i.di = inttoptr i64 %i.dg to ptr
  %i.dj = select i1 %i.dh, ptr inttoptr (i64 15 to ptr), ptr %i.di ; 2 uses
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 8 %i.f, i64 range(i64 0, 9) %i.dg, i1 false), !noalias !201
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !197 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.aa unwind label %bb.z, !noalias !168

bb.z:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dj, ptr %i.m, align 8, !alias.scope !165, !noalias !168
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !165, !noalias !168
  br label %bb.ae

bb.aa:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  store ptr %i.dj, ptr %i.m, align 8, !alias.scope !165, !noalias !168
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !165, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !191
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.ab:                                            ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

bb.ac:                                            ; preds = %.invoke, %bb.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.aa, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.dm = load i64, ptr %i.j, align 8, !noundef !11
  %i.dn = add i64 %i.dm, 1
  store i64 %i.dn, ptr %i.j, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit
  ret i1 %i.i

bb.ae:                                            ; preds = %bb.ac, %bb.z, %bb.p, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.ac ], [ %i.dk, %bb.z ], [ %i.be, %bb.l ], [ %4, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i ], [ %i.bq, %bb.p ]
  %i.do = load i64, ptr %i.j, align 8, !noundef !11
  %i.dp = add i64 %i.do, 1
  store i64 %i.dp, ptr %i.j, align 8
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom6append(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = invoke noundef nonnull ptr @_RNvMsg_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9downgradeBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
          to label %bb.b unwind label %.split.thread

.split.thread:                                    ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.noexc:                                           ; preds = %bb.f, %bb.e
  br i1 %.sroa.0.2, label %bb.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noundef !11 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.d, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !125

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !11
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.n, !prof !125

bb.e:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.t, %.body ] ; 2 uses
  %.sroa.0.2 = phi i1 [ true, %bb.g ], [ false, %.body ]
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !202, !noundef !11
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.noexc, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.q

bb.g:                                             ; preds = %bb.n, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.h:                                             ; preds = %bb.n, %bb.c
  unreachable

bb.i:                                             ; preds = %bb.d
  store i64 -1, ptr %i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !205, !noundef !11 ; 3 uses
  %i.r = load i64, ptr %i.o, align 8, !range !195, !alias.scope !205, !noundef !11
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %1, align 8, !noalias !208, !noundef !11
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %1, align 8, !noalias !208
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
          to label %bb.h unwind label %bb.g

.body:                                            ; preds = %bb.k, %bb.l
  %i.y = load i64, ptr %i.i, align 8, !noundef !11
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.i, align 8
  br label %bb.e

bb.o:                                             ; preds = %bb.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !205, !nonnull !11, !noundef !11
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.q
  store ptr %1, ptr %i.ac, align 8
  %i.ad = add i64 %i.q, 1
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load i64, ptr %i.i, align 8, !noundef !11
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.i, align 8
  %i.ag = load ptr, ptr %i.b, align 8, !alias.scope !213, !noundef !11
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit7, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit7

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit7: ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.q:                                             ; preds = %bb.s, %bb.f
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit: ; preds = %bb.r, %bb.s, %.noexc
  %.pn39 = phi { ptr, i32 } [ %.pn310, %bb.r ], [ %.pn, %.noexc ], [ %.pn310, %bb.s ]
  resume { ptr, i32 } %.pn39

bb.r:                                             ; preds = %.split.thread, %.noexc
  %.pn310 = phi { ptr, i32 } [ %i.e, %.split.thread ], [ %.pn, %.noexc ] ; 2 uses
  %i.aj = load i64, ptr %1, align 8, !noalias !216, !noundef !11
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !noalias !216
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree(ptr nofree noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [136 x i8], align 8               ; 18 uses
  %.sroa.21 = alloca [24 x i8], align 8           ; 2 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !221, !noundef !11 ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  br i1 %i.p, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit, label %bb.b, !prof !125

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit: ; preds = %bb.a
  %i.q = add nuw nsw i64 %i.o, 1
  store i64 %i.q, ptr %i.n, align 8, !noalias !221
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8, !noundef !11
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterB13_ENCNvMB1j_B1h_18clone_with_subtree0EE9from_iterB1j_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.s, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %i.n, align 8, !noundef !11
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.n, align 8
  br label %bb.bv

end_hunk_0
