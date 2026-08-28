Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
begin_hunk_0_@_RNvCs1mImOlsSUsK_17markup5ever_rcdom20get_parent_and_index:bb.a
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
  br i1 %i.i, label %bb.b, label %bb.ae

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !11
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.ac, !prof !125

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
  br i1 %i.y, label %bb.x, label %bb.f

.thread39.i:                                      ; preds = %bb.d
  %i.z = icmp ult i32 %i.v, 9
  br i1 %i.z, label %bb.y, label %.thread41.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

.thread41.i:                                      ; preds = %.thread39.i
  %i.aa = icmp ult ptr %i.n, inttoptr (i64 16 to ptr)
  %i.ab = trunc i64 %i.o to i1                    ; 2 uses
  %or.cond.i.i42.i = or i1 %i.aa, %i.ab
  br i1 %or.cond.i.i42.i, label %bb.g, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i

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
          to label %.noexc3 unwind label %bb.ad

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
          to label %.noexc4 unwind label %bb.ad

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
          to label %bb.af unwind label %bb.n, !noalias !178

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !178
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.aa, %bb.o
  %.sink.i = phi ptr [ %i.ax, %bb.o ], [ %i.dm, %bb.aa ]
  %.sroa.04.0.insert.insert.i.i.i.sink.i = phi i64 [ %.sroa.04.0.insert.insert.i.i.i.i, %bb.o ], [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %bb.aa ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.dn, %bb.aa ]
  store ptr %.sink.i, ptr %i.m, align 8, !alias.scope !165, !noalias !168
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.04.0.insert.insert.i.i.i.sink.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !165, !noalias !168
  br label %bb.af

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.j
  store i64 1, ptr %i.ax, align 8, !noalias !186
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !178
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i.i, i1 false), !noalias !187
  %.sroa.4.0.insert.shift.i.i.i.i = shl nuw i64 %i.bc, 32
  %.sroa.04.0.insert.insert.i.i.i.i = add nuw nsw i64 %.sroa.4.0.insert.shift.i.i.i.i, %.sroa.4.0.i.i.i.i ; 2 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i unwind label %bb.o, !noalias !168

bb.o:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  store ptr %i.ax, ptr %i.m, align 8, !alias.scope !177, !noalias !168
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.04.0.insert.insert.i.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8, !alias.scope !177, !noalias !168
  %i.bi = trunc i64 %.sroa.4.0.i.i.i.i to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i: ; preds = %.thread41.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.bj = phi i32 [ %i.bi, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.s, %.thread41.i ]
  %i.bk = phi i32 [ %i.al, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.v, %.thread41.i ] ; 3 uses
  %i.bl = phi ptr [ %i.ax, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %i.n, %.thread41.i ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.val, i64 44 ; 2 uses
  %.sroa.0.0.i.i.i = load i32, ptr %i.bm, align 4, !noalias !188, !noundef !11 ; 3 uses
  %.not.i.i.i = icmp ugt i32 %i.bk, %.sroa.0.0.i.i.i
  br i1 %.not.i.i.i, label %bb.p, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.p:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i
  %i.bn = add i32 %i.bk, -1
  %i.bo = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bn, i1 true) ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.invoke, label %bb.r, !prof !22

.invoke:                                          ; preds = %bb.p, %bb.d
  %i.bq = phi ptr [ @27, %bb.d ], [ @25, %bb.p ]
  %i.br = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !191, !nonnull !11, !noundef !11
  %i.bs = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !191, !noundef !11
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bq) #22
          to label %.cont unwind label %bb.ad

.cont:                                            ; preds = %.invoke
  unreachable

bb.q:                                             ; preds = %bb.u, %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %bb.af unwind label %bb.w, !noalias !192

bb.r:                                             ; preds = %bb.p
  %i.bu = lshr i32 -1, %i.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !192
  %i.bv = zext i32 %.sroa.0.0.i.i.i to i64
  %i.bw = add nuw nsw i64 %i.bv, 15
  %i.bx = lshr i64 %i.bw, 4
  %i.by = add nuw nsw i64 %i.bx, 1
  store i64 %i.by, ptr %i.b, align 8, !noalias !192
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bl, ptr %i.bz, align 8, !noalias !192
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ca, align 8, !noalias !192
  %narrow.i.i.i = add nuw i32 %i.bu, 16
  %i.cb = lshr i32 %narrow.i.i.i, 4
  %narrow14.i.i.i = add nuw nsw i32 %i.cb, 1
  %i.cc = zext nneg i32 %narrow14.i.i.i to i64
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0, i64 noundef %i.cc, i64 noundef 8, i64 noundef 16)
          to label %bb.s unwind label %bb.q, !noalias !192

bb.s:                                             ; preds = %bb.r
  %i.cd = load i64, ptr %i.b, align 8, !range !195, !noalias !192, !noundef !11
  %i.ce = shl i64 %i.cd, 4
  %i.cf = add i64 %i.ce, -16                      ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 4294967295
  br i1 %i.cg, label %bb.u, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.ch = load ptr, ptr %i.bz, align 8, !noalias !192, !nonnull !11, !noundef !11
  %i.ci = trunc nuw i64 %i.cf to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !192
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !192
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.a, align 8, !noalias !192
  %.sroa.49.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.49.0..sroa_idx.i.i.i, align 8, !noalias !192
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @23, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #21
          to label %bb.v unwind label %bb.q, !noalias !192

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.q
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !192
  unreachable

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.t, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i
  %.sroa.63.0.i.i = phi i32 [ %i.ci, %bb.t ], [ %.sroa.0.0.i.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ] ; 2 uses
  %.sroa.0.0.i19.i = phi ptr [ %i.ch, %bb.t ], [ %i.bl, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCs1mImOlsSUsK_17markup5ever_rcdom.exit.thread.i.i ] ; 5 uses
  store ptr %.sroa.0.0.i19.i, ptr %i.m, align 8, !alias.scope !196, !noalias !168
  store i32 %.sroa.63.0.i.i, ptr %i.bm, align 4, !alias.scope !196, !noalias !168
  %i.ck = ptrtoint ptr %.sroa.0.0.i19.i to i64    ; 3 uses
  %i.cl = and i64 %i.ck, 1
  %i.cm = sub nsw i64 0, %i.cl
  %i.cn = getelementptr i8, ptr %.sroa.0.0.i19.i, i64 %i.cm
  %i.co = trunc i64 %i.ck to i1
  %.sroa.01.0.i.i = select i1 %i.co, i32 %.sroa.63.0.i.i, i32 0
  %i.cp = icmp eq ptr %.sroa.0.0.i19.i, inttoptr (i64 15 to ptr)
  %i.cq = icmp ult ptr %.sroa.0.0.i19.i, inttoptr (i64 9 to ptr)
  %i.cr = trunc nuw nsw i64 %i.ck to i32
  %spec.select = select i1 %i.cq, i32 %i.cr, i32 %i.bj
  %.sroa.04.0.i.i = select i1 %i.cp, i32 0, i32 %spec.select
  %i.cs = add i32 %.sroa.04.0.i.i, %.sroa.01.0.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cu = zext i32 %i.cs to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4294967296) %1, i1 false), !noalias !165
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i32 %i.bk, ptr %i.cw, align 8, !alias.scope !165, !noalias !168
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.x:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  store i64 0, ptr %i.f, align 8, !noalias !191
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i

bb.y:                                             ; preds = %.thread39.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !191
  store i64 0, ptr %i.f, align 8, !noalias !191
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = and i64 %i.o, 1
  %i.cy = sub nsw i64 0, %i.cx
  %i.cz = getelementptr i8, ptr %i.n, i64 %i.cy
  %i.da = trunc i64 %i.o to i1
  %i.db = getelementptr inbounds nuw i8, ptr %.0.val, i64 44
  %i.dc = load i32, ptr %i.db, align 4, !alias.scope !165, !noalias !168
  %i.dd = zext i32 %i.dc to i64
  %.sroa.01.0.i.i21.i = select i1 %i.da, i64 %i.dd, i64 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.df = zext i32 %i.s to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i21.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i: ; preds = %bb.z, %bb.y, %bb.x
  %i.dh = phi i32 [ %i.v, %bb.z ], [ %i.x, %bb.x ], [ %i.v, %bb.y ] ; 2 uses
  %.sroa.4.0.i22.i = phi i64 [ %i.df, %bb.z ], [ 0, %bb.x ], [ %i.o, %bb.y ] ; 2 uses
  %.sroa.0.0.i23.i = phi ptr [ %i.dg, %bb.z ], [ inttoptr (i64 1 to ptr), %bb.x ], [ %i.r, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 1 %.sroa.0.0.i23.i, i64 %.sroa.4.0.i22.i, i1 false), !noalias !168
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.i22.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4294967296) %1, i1 false), !noalias !165
  %i.dj = zext nneg i32 %i.dh to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.dk = icmp eq i32 %i.dh, 0
  %i.dl = inttoptr i64 %i.dj to ptr
  %i.dm = select i1 %i.dk, ptr inttoptr (i64 15 to ptr), ptr %i.dl ; 2 uses
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !197
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 8 %i.f, i64 range(i64 0, 9) %i.dj, i1 false), !noalias !201
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !197 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.ab unwind label %bb.aa, !noalias !168

bb.aa:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.ab:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  store ptr %i.dm, ptr %i.m, align 8, !alias.scope !165, !noalias !168
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !165, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !191
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.ac:                                            ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

bb.ad:                                            ; preds = %.invoke, %bb.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.ab, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.dp = load i64, ptr %i.j, align 8, !noundef !11
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.j, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit
  ret i1 %i.i

bb.af:                                            ; preds = %bb.ad, %bb.q, %common.resume.sink.split.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.do, %bb.ad ], [ %i.bt, %bb.q ], [ %i.be, %bb.l ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  %i.dr = load i64, ptr %i.j, align 8, !noundef !11
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.j, align 8
end_hunk_0
begin_hunk_1_@_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree:bb.a
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
  %.sroa.1020.0 = phi i64 [ undef, %bb.j ], [ %.sroa.1020.8.copyload23, %bb.bd ], [ 0, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ %.sroa.1020.8.copyload22, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ 0, %bb.bl ], [ %.sroa.1020.8.copyload21, %bb.bn ]
  %.sroa.9.0 = phi i8 [ undef, %bb.j ], [ undef, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %i.hw, %bb.bl ], [ undef, %bb.bn ]
  %.sroa.18.0.a = phi i64 [ undef, %bb.j ], [ %.sroa.18.40.copyload, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ 0, %bb.bl ], [ undef, %bb.bn ]
  %.sroa.20.0 = phi ptr [ undef, %bb.j ], [ %.sroa.20.40.copyload, %bb.bd ], [ undef, %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ undef, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit10.i ], [ %.val.i.i, %bb.bl ], [ undef, %bb.bn ]
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
  store i64 %.sroa.18.0.a, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8
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
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 11 uses
end_hunk_1
