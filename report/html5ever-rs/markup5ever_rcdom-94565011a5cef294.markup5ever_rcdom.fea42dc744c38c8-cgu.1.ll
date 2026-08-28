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
  %i.m = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 7 uses
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
  br i1 %or.cond.i.i42.i, label %bb.g, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a

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
  %.sroa.4.0.i.i.i.i = phi i64 [ %i.aj, %bb.h ], [ 0, %bb.f ], [ %i.o, %bb.g ] ; 4 uses
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ak, %bb.h ], [ inttoptr (i64 1 to ptr), %bb.f ], [ %i.r, %bb.g ]
  %i.am = trunc nuw i64 %.sroa.4.0.i.i.i.i to i32
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
  br i1 %i.bd, label %bb.k, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i, !prof !22

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

common.resume.sink.split.i:                       ; preds = %bb.z, %2
  %.sink.i = phi ptr [ %i.ax, %2 ], [ %i.dj, %bb.z ]
  %.sroa.04.0.insert.insert.i.i.i.sink.i = phi i64 [ %.sroa.04.0.insert.insert.i.i.i.i, %2 ], [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %bb.z ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %3, %2 ], [ %i.dk, %bb.z ]
  store ptr %.sink.i, ptr %i.m, align 8, !alias.scope !165, !noalias !168
  %.sroa.5.0..sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.04.0.insert.insert.i.i.i.sink.i, ptr %.sroa.5.0..sroa_idx.i.i.i.a, align 8, !alias.scope !165, !noalias !168
  br label %bb.ae

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.j
  store i64 1, ptr %i.ax, align 8, !noalias !186
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !178
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i, i1 false), !noalias !187
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw i64 %i.bc, 32
  %.sroa.04.0.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.4.0.i.i.i.i ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i unwind label %2, !noalias !168

2:                                                ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %3 = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  store ptr %i.ax, ptr %i.m, align 8, !alias.scope !177, !noalias !168
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.04.0.insert.insert.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !177, !noalias !168
  %4 = trunc i64 %.sroa.4.0.i.i.i.i to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i.a: ; preds = %.thread41.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.bh = phi i32 [ %4, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.s, %.thread41.i ]
  %i.bi = phi i32 [ %i.al, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.v, %.thread41.i ] ; 3 uses
  %i.bj = phi ptr [ %i.ax, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.n, %.thread41.i ] ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.0.val, i64 44 ; 2 uses
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
  br label %common.resume.sink.split.i

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

bb.ae:                                            ; preds = %bb.ac, %bb.p, %common.resume.sink.split.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.ac ], [ %i.bq, %bb.p ], [ %i.be, %bb.l ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
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

bb.d:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit
  %i.z = load i64, ptr %i.n, align 8, !noundef !11
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !11 ; 10 uses
  store ptr %i.ac, ptr %i.j, align 8
  store ptr null, ptr %i.ab, align 8
  %magicptr.i = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i
    i64 -1, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.fold.split.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.ad, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i, !prof !22

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.fold.split.i: ; preds = %bb.d
  br label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i: ; preds = %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.fold.split.i, %bb.d
  %.sroa.0.0.ph.i = phi ptr [ null, %bb.d ], [ inttoptr (i64 -1 to ptr), %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.fold.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.sroa.0.0.ph.i, ptr %i.ab, align 8
  br label %bb.j

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i: ; preds = %bb.e
  %.pr.i = load ptr, ptr %i.ab, align 8           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %.pr.i, ptr %i.i, align 8
  store ptr %i.ac, ptr %i.ab, align 8
  %i.ai = icmp eq ptr %.pr.i, null
  br i1 %i.ai, label %bb.j, label %bb.g

bb.g:                                             ; preds = %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.thread31 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.g, %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i, %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %i.ac, ptr %i.l, align 8
  %i.al = load i8, ptr %0, align 8, !range !58, !noalias !224, !noundef !11 ; 2 uses
  switch i8 %i.al, label %default.unreachable [
    i8 0, label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
    i8 1, label %bb.k
    i8 2, label %bb.q
    i8 3, label %bb.w
    i8 4, label %bb.z
    i8 5, label %bb.aq
  ]

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !224
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !227, !nonnull !11, !noundef !11 ; 5 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 15 to ptr)
  br i1 %i.ap, label %bb.l, label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.m, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !227, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.au, ptr %i.av, align 8, !noalias !227
  %i.aw = getelementptr i8, ptr %i.ao, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  store ptr %i.aw, ptr %i.am, align 8, !noalias !227
  store i32 0, ptr %i.at, align 4, !noalias !227
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %i.ao, %bb.l ], [ %i.aw, %bb.m ]
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !227, !noundef !11 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %.invoke, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i, !prof !22

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.bb = add nuw i64 %i.az, 1
  store i64 %i.bb, ptr %i.ay, align 8, !noalias !227
  br label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !noalias !224
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !224
  %i.bc = load ptr, ptr %i.an, align 8, !noalias !230, !nonnull !11, !noundef !11 ; 5 uses
  %i.bd = icmp ugt ptr %i.bc, inttoptr (i64 15 to ptr)
  br i1 %i.bd, label %bb.n, label %bb.ay

bb.n:                                             ; preds = %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !230, !noundef !11
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bi, ptr %i.bj, align 8, !noalias !230
  %i.bk = getelementptr i8, ptr %i.bc, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bk, ptr %i.an, align 8, !noalias !230
  store i32 0, ptr %i.bh, align 4, !noalias !230
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i: ; preds = %bb.o, %bb.n
  %i.bl = phi ptr [ %i.bc, %bb.n ], [ %i.bk, %bb.o ]
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1     ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !230, !noundef !11 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i6.i, !prof !22

bb.p:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i
  %i.bp = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !230, !nonnull !11, !noundef !11
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !230, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.noexc.i unwind label %bb.ax, !noalias !224

.noexc.i:                                         ; preds = %bb.p
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i6.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i
  %i.br = add nuw i64 %i.bn, 1
  store i64 %i.br, ptr %i.bm, align 8, !noalias !230
  br label %bb.ay

bb.q:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !233, !noundef !11 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 9223372036854775807
  br i1 %i.bu, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, label %bb.r, !prof !125

end_hunk_0
begin_hunk_1_@_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree:bb.a
  %i.es = phi i64 [ %.pre.i11.i, %._crit_edge.i.i ], [ %i.dp, %bb.ah ]
  %i.et = load i64, ptr %i.c, align 8, !noalias !247, !noundef !11
  %i.eu = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.et, ptr %i.eu, align 8, !alias.scope !242, !noalias !257
  store i64 %i.es, ptr %i.f, align 8, !alias.scope !242, !noalias !257
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.ec, ptr %i.ev, align 8, !alias.scope !242, !noalias !257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !261
  %i.ew = load i64, ptr %i.dk, align 8, !noalias !262, !noundef !11 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 9223372036854775807
  br i1 %i.ex, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, label %bb.ao, !prof !125

bb.ao:                                            ; preds = %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22
          to label %.noexc12.i unwind label %bb.bf, !noalias !224

.noexc12.i:                                       ; preds = %bb.ao
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %_RNvXsl_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit.i
  %i.ey = add nuw nsw i64 %i.ew, 1
  store i64 %i.ey, ptr %i.dk, align 8, !noalias !262
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez)
          to label %bb.bg unwind label %bb.ap, !noalias !261

bb.ap:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  %i.fb = load i64, ptr %i.dk, align 8, !noalias !261, !noundef !11
  %i.fc = add i64 %i.fb, -1
  store i64 %i.fc, ptr %i.dk, align 8, !noalias !261
  br label %.body.i

bb.aq:                                            ; preds = %bb.j
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !224
  %i.ff = load ptr, ptr %i.fd, align 8, !noalias !265, !nonnull !11, !noundef !11 ; 5 uses
  %i.fg = icmp ugt ptr %i.ff, inttoptr (i64 15 to ptr)
  br i1 %i.fg, label %bb.ar, label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i

bb.ar:                                            ; preds = %bb.aq
  %i.fh = ptrtoint ptr %i.ff to i64
  %i.fi = and i64 %i.fh, 1
  %i.fj = icmp eq i64 %i.fi, 0
  br i1 %i.fj, label %bb.as, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i13.i

bb.as:                                            ; preds = %bb.ar
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.fl = load i32, ptr %i.fk, align 4, !noalias !265, !noundef !11
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store i32 %i.fl, ptr %i.fm, align 8, !noalias !265
  %i.fn = getelementptr i8, ptr %i.ff, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fn) ]
  store ptr %i.fn, ptr %i.fd, align 8, !noalias !265
  store i32 0, ptr %i.fk, align 4, !noalias !265
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i13.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i13.i: ; preds = %bb.as, %bb.ar
  %i.fo = phi ptr [ %i.ff, %bb.ar ], [ %i.fn, %bb.as ]
  %i.fp = getelementptr i8, ptr %i.fo, i64 -1     ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !noalias !265, !noundef !11 ; 2 uses
  %i.fr = icmp eq i64 %i.fq, -1
  br i1 %i.fr, label %.invoke, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i14.i, !prof !22

.invoke:                                          ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i13.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i8.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.fs = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !224, !nonnull !11, !noundef !11
  %i.ft = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !224, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fs, i64 noundef %i.ft, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.cont unwind label %bb.bo

.cont:                                            ; preds = %.invoke
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i14.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i13.i
  %i.fu = add nuw i64 %i.fq, 1
  store i64 %i.fu, ptr %i.fp, align 8, !noalias !265
  br label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i

_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i14.i, %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !noalias !224
  %i.fv = load ptr, ptr %i.fe, align 8, !noalias !268, !nonnull !11, !noundef !11 ; 5 uses
  %i.fw = icmp ugt ptr %i.fv, inttoptr (i64 15 to ptr)
  br i1 %i.fw, label %bb.at, label %bb.bn

bb.at:                                            ; preds = %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = and i64 %i.fx, 1
  %i.fz = icmp eq i64 %i.fy, 0
  br i1 %i.fz, label %bb.au, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i16.i

bb.au:                                            ; preds = %bb.at
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !noalias !268, !noundef !11
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store i32 %i.gb, ptr %i.gc, align 8, !noalias !268
  %i.gd = getelementptr i8, ptr %i.fv, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gd) ]
  store ptr %i.gd, ptr %i.fe, align 8, !noalias !268
  store i32 0, ptr %i.ga, align 4, !noalias !268
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i16.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i16.i: ; preds = %bb.au, %bb.at
  %i.ge = phi ptr [ %i.fv, %bb.at ], [ %i.gd, %bb.au ]
  %i.gf = getelementptr i8, ptr %i.ge, i64 -1     ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !noalias !268, !noundef !11 ; 2 uses
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %bb.av, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i17.i, !prof !22

bb.av:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i16.i
  %i.gi = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !268, !nonnull !11, !noundef !11
  %i.gj = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !268, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gi, i64 noundef %i.gj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.noexc18.i unwind label %bb.bm, !noalias !224

.noexc18.i:                                       ; preds = %bb.av
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i17.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i16.i
  %i.gk = add nuw i64 %i.gg, 1
  store i64 %i.gk, ptr %i.gf, align 8, !noalias !268
  br label %bb.bn

bb.aw:                                            ; preds = %bb.bc, %bb.ax
  %.pn2.i = phi { ptr, i32 } [ %i.hd, %bb.bc ], [ %i.gl, %bb.ax ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h) #20
          to label %.body11 unwind label %bb.be, !noalias !224

bb.ax:                                            ; preds = %bb.p
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.ay:                                            ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i6.i, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !noalias !224
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !271, !nonnull !11, !noundef !11 ; 5 uses
  %i.go = icmp ugt ptr %i.gn, inttoptr (i64 15 to ptr)
  %i.gp = ptrtoint ptr %i.gn to i64               ; 2 uses
  br i1 %i.go, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.gq = and i64 %i.gp, 1
  %i.gr = icmp eq i64 %i.gq, 0
  br i1 %i.gr, label %bb.ba, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i20.i

bb.ba:                                            ; preds = %bb.az
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !noalias !271, !noundef !11
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  store i32 %i.gt, ptr %i.gu, align 8, !noalias !271
  %i.gv = getelementptr i8, ptr %i.gn, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  store ptr %i.gv, ptr %i.gm, align 8, !noalias !271
  store i32 0, ptr %i.gs, align 4, !noalias !271
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i20.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i20.i: ; preds = %bb.ba, %bb.az
  %i.gw = phi ptr [ %i.gn, %bb.az ], [ %i.gv, %bb.ba ]
  %i.gx = getelementptr i8, ptr %i.gw, i64 -1     ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !noalias !271, !noundef !11 ; 2 uses
  %i.gz = icmp eq i64 %i.gy, -1
  br i1 %i.gz, label %bb.bb, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i21.i, !prof !22

bb.bb:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i20.i
  %i.ha = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !271, !nonnull !11, !noundef !11
  %i.hb = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !271, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ha, i64 noundef %i.hb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.noexc22.i unwind label %bb.bc, !noalias !224

.noexc22.i:                                       ; preds = %bb.bb
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i21.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i20.i
  %i.hc = add nuw i64 %i.gy, 1
  store i64 %i.hc, ptr %i.gx, align 8, !noalias !271
  %.sroa.18.40.copyload.pre = load i64, ptr %i.gm, align 8
  br label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #20
          to label %bb.aw unwind label %bb.be, !noalias !224

bb.bd:                                            ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i21.i, %bb.ay
  %.sroa.18.40.copyload = phi i64 [ %.sroa.18.40.copyload.pre, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i21.i ], [ %i.gp, %bb.ay ]
  %.sroa.20.40..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.20.40.copyload = load ptr, ptr %.sroa.20.40..sroa_idx, align 8
  %.sroa.1020.8.copyload23 = load i64, ptr %i.h, align 8
  %.sroa.15.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.he = load i64, ptr %.sroa.15.8..sroa_idx26, align 8
  %.sroa.15.sroa.8.sroa.0.0.copyload60 = load i64, ptr %i.g, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.15.sroa.8.sroa.5.0.copyload64 = load i64, ptr %.sroa.15.sroa.8.sroa.5.0..sroa_idx63, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !224
  br label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.be:                                            ; preds = %bb.bm, %bb.bk, %.body.i, %bb.bc, %bb.aw
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !224
  unreachable

.body.i:                                          ; preds = %bb.bk, %bb.bf, %bb.ap
  %.pn.i = phi { ptr, i32 } [ %i.ht, %bb.bk ], [ %i.hg, %bb.bf ], [ %i.fa, %bb.ap ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20
          to label %.body11 unwind label %bb.be, !noalias !224

bb.bf:                                            ; preds = %bb.ao
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bg:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !224
  store i64 0, ptr %i.e, align 8, !alias.scope !258, !noalias !224
  %i.hi = load i64, ptr %i.dk, align 8, !noalias !261, !noundef !11
  %i.hj = add i64 %i.hi, -1
  store i64 %i.hj, ptr %i.dk, align 8, !noalias !261
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !261
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !274, !noundef !11 ; 3 uses
  %i.hm = icmp ult i64 %i.hl, 9223372036854775807
  br i1 %i.hm, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i, label %bb.bh, !prof !125

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22
          to label %.noexc25.i unwind label %bb.bk, !noalias !224

.noexc25.i:                                       ; preds = %bb.bh
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i: ; preds = %bb.bg
  %i.hn = add nuw nsw i64 %i.hl, 1
  store i64 %i.hn, ptr %i.hk, align 8, !noalias !274
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.ho, align 8, !noalias !224, !noundef !11 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %.val.i.i, align 8, !noalias !224, !noundef !11 ; 2 uses
  %i.hp = icmp ne i64 %.val.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = add i64 %.val.i.i.i.i.i, 1              ; 2 uses
  store i64 %i.hq, ptr %.val.i.i, align 8, !noalias !224
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.bj, label %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i, !prof !22

._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i: ; preds = %bb.bi
  %.pre.i24.i = load i64, ptr %i.hk, align 8, !noalias !224
  %i.hs = add i64 %.pre.i24.i, -1
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #20
          to label %.body.i unwind label %bb.be, !noalias !224

bb.bl:                                            ; preds = %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i
  %i.hu = phi i64 [ %i.hs, %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i ], [ %i.hl, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i ]
  store i64 %i.hu, ptr %i.hk, align 8, !noalias !224
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !range !277, !noalias !224, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.15.sroa.0.0.copyload = load i64, ptr %i.hh, align 8
  %.sroa.15.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.15.sroa.8.0..sroa_idx, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa.15.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.15.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.15.sroa.8.sroa.5.0..sroa.15.sroa.8.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !224
  %.pre = load ptr, ptr %i.l, align 8
  br label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.av
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #20
          to label %.body11 unwind label %bb.be, !noalias !224

bb.bn:                                            ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i17.i, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i
  %.sroa.15.sroa.8.sroa.0.0.copyload59 = load i64, ptr %i.fe, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.15.sroa.8.sroa.5.0.copyload62 = load i64, ptr %.sroa.15.sroa.8.sroa.5.0..sroa_idx, align 8
  %.sroa.1020.8.copyload21 = load i64, ptr %i.d, align 8
  %.sroa.15.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hy = load i64, ptr %.sroa.15.8..sroa_idx24, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !224
  br label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bo:                                            ; preds = %.invoke, %bb.ac, %bb.r
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.aw, %.body.i, %bb.bm, %bb.bo
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.hz, %bb.bo ], [ %i.co, %bb.v ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %.pn2.i, %bb.aw ], [ %.pn.i, %.body.i ], [ %i.hx, %bb.bm ] ; 2 uses
  %i.ia = load ptr, ptr %i.l, align 8, !alias.scope !278, !noundef !11
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.thread31, label %bb.bp

bb.bp:                                            ; preds = %.body11
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.thread31 unwind label %bb.bu

_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit: ; preds = %bb.bn, %bb.bl, %bb.bd, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.j
  %.sroa.15.sroa.8.sroa.5.0 = phi i64 [ undef, %bb.j ], [ %.sroa.15.sroa.8.sroa.5.0.copyload64, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.sroa.15.sroa.8.sroa.5.0.copyload, %bb.bl ], [ %.sroa.15.sroa.8.sroa.5.0.copyload62, %bb.bn ]
  %.sroa.15.sroa.8.sroa.0.0 = phi i64 [ undef, %bb.j ], [ %.sroa.15.sroa.8.sroa.0.0.copyload60, %bb.bd ], [ %i.cs, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.sroa.15.sroa.8.sroa.0.0.copyload, %bb.bl ], [ %.sroa.15.sroa.8.sroa.0.0.copyload59, %bb.bn ]
  %i.ic = phi ptr [ %i.ac, %bb.j ], [ %i.ac, %bb.bd ], [ %i.ac, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %i.ac, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.pre, %bb.bl ], [ %i.ac, %bb.bn ]
  %.sroa.15.sroa.0.0 = phi i64 [ undef, %bb.j ], [ %i.he, %bb.bd ], [ %.sroa.15.sroa.0.0.copyload35, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %i.di, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.sroa.15.sroa.0.0.copyload, %bb.bl ], [ %i.hy, %bb.bn ]
  %.sroa.20.0 = phi ptr [ undef, %bb.j ], [ %.sroa.20.40.copyload, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.val.i.i, %bb.bl ], [ undef, %bb.bn ]
  %.sroa.18.0 = phi i64 [ undef, %bb.j ], [ %.sroa.18.40.copyload, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ 0, %bb.bl ], [ undef, %bb.bn ]
  %.sroa.1020.0 = phi i64 [ undef, %bb.j ], [ %.sroa.1020.8.copyload23, %bb.bd ], [ 0, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %.sroa.1020.8.copyload22, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ 0, %bb.bl ], [ %.sroa.1020.8.copyload21, %bb.bn ]
  %.sroa.9.0 = phi i8 [ undef, %bb.j ], [ undef, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %i.hw, %bb.bl ], [ undef, %bb.bn ]
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i64 1, ptr %i.k, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.id, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i8 %i.al, ptr %i.ie, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 17
  store i8 %.sroa.9.0, ptr %.sroa.0.sroa.4.0..sroa_idx, align 1
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %.sroa.1020.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 %.sroa.15.sroa.0.0, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.7.sroa.4.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %.sroa.15.sroa.8.sroa.0.0, ptr %.sroa.0.sroa.7.sroa.4.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa.0.sroa.7.sroa.4.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 %.sroa.15.sroa.8.sroa.5.0, ptr %.sroa.15.sroa.8.sroa.5.0..sroa.0.sroa.7.sroa.4.0..sroa.0.sroa.7.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.18.0, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store ptr %.sroa.20.0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store ptr %i.ic, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !285
  %i.if = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !285 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.bq, label %bb.bt, !prof !22

bb.bq:                                            ; preds = %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc17 unwind label %bb.br

.noexc17:                                         ; preds = %bb.bq
  unreachable

bb.br:                                            ; preds = %bb.bq
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.k) #20
          to label %bb.bv unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bt:                                            ; preds = %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.if, ptr noundef nonnull align 8 dereferenceable(136) %i.k, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret ptr %i.if

bb.bu:                                            ; preds = %bb.bp, %.thread31
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.bv:                                            ; preds = %bb.br, %bb.c, %.thread31
  %.pn.pn = phi { ptr, i32 } [ %.pn30, %.thread31 ], [ %i.w, %bb.c ], [ %i.ih, %bb.br ]
  resume { ptr, i32 } %.pn.pn

.thread31:                                        ; preds = %bb.bp, %.body11, %bb.h
  %.pn30 = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %eh.lpad-body12, %bb.bp ], [ %eh.lpad-body12, %.body11 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #20
          to label %bb.bv unwind label %bb.bu
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.c, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !288
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !288 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE3newBZ_.exit, !prof !22

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE3newBZ_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_4NodeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 4)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  %i.e = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink11parse_error(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f, !prof !125

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !291, !noalias !294, !noundef !11 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !195, !alias.scope !291, !noalias !294, !noundef !11
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.d, !noalias !294

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #21
          to label %bb.j unwind label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !noundef !11
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !291, !noalias !294, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = add i64 %i.f, 1
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !291, !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load i64, ptr %i.b, align 8, !noundef !11
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %i.b, align 8
  ret void

bb.i:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.l
  %.pn6 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.i, %bb.g ]
  resume { ptr, i32 } %.pn6

bb.l:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #20
          to label %bb.k unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink14create_comment(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_1
