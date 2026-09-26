Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
inline.NumInlined: 278
inline.NumDeleted: 106
begin_hunk_0_@_RNvCs1mImOlsSUsK_17markup5ever_rcdom23append_to_existing_text:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.di, ptr nonnull readonly align 1 %0, i64 range(i64 0, 4294967296) %1, i1 false), !noalias !189
  %i.dj = zext nneg i32 %i.dh to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.dk = icmp eq i32 %i.dh, 0
  %i.dl = inttoptr i64 %i.dj to ptr
  %i.dm = select i1 %i.dk, ptr inttoptr (i64 15 to ptr), ptr %i.dl ; 2 uses
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !203
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 8 %i.f, i64 range(i64 0, 9) %i.dj, i1 false), !noalias !204
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !203 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %bb.ab unwind label %bb.aa, !noalias !190

bb.aa:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split.i

bb.ab:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit24.i
  store ptr %i.dm, ptr %i.m, align 8, !alias.scope !189, !noalias !190
  %.sroa.5.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx29.i, align 8, !alias.scope !189, !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !200
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit

bb.ac:                                            ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #22
  unreachable

bb.ad:                                            ; preds = %.invoke, %bb.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.ab, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.dp = load i64, ptr %i.j, align 8, !noundef !4
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.j, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCs1mImOlsSUsK_17markup5ever_rcdom.exit
  ret i1 %i.i

bb.af:                                            ; preds = %bb.ad, %bb.q, %common.resume.sink.split.i, %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %i.do, %bb.ad ], [ %i.bt, %bb.q ], [ %i.be, %bb.l ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  %i.dr = load i64, ptr %i.j, align 8, !noundef !4
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.j, align 8
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
  %i.g = load ptr, ptr %i.f, align 8, !noundef !4 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8
  store ptr %i.d, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21
          to label %bb.h unwind label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 104 ; 6 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.i, label %bb.n, !prof !9

bb.e:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.t, %.body ] ; 2 uses
  %.sroa.0.2 = phi i1 [ true, %bb.g ], [ false, %.body ]
  %i.l = load ptr, ptr %i.b, align 8, !alias.scope !219, !noundef !4
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !220
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !220, !noundef !4 ; 3 uses
  %i.r = load i64, ptr %i.o, align 8, !range !10, !alias.scope !220, !noundef !4
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load i64, ptr %1, align 8, !noalias !221, !noundef !4
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %1, align 8, !noalias !221
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
  %i.y = load i64, ptr %i.i, align 8, !noundef !4
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.i, align 8
  br label %bb.e

bb.o:                                             ; preds = %bb.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !220, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.q
  store ptr %1, ptr %i.ac, align 8
  %i.ad = add i64 %i.q, 1
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load i64, ptr %i.i, align 8, !noundef !4
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.i, align 8
  %i.ag = load ptr, ptr %i.b, align 8, !alias.scope !222, !noundef !4
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
  %i.aj = load i64, ptr %1, align 8, !noalias !223, !noundef !4
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !noalias !223
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.s, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.q
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull ptr @_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree(ptr nofree noundef nonnull align 8 captures(address, read_provenance) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.o = load i64, ptr %i.n, align 8, !noalias !265, !noundef !4 ; 2 uses
  %i.p = icmp ult i64 %i.o, 9223372036854775807
  br i1 %i.p, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #22
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit: ; preds = %bb.a
  %i.q = add nuw nsw i64 %i.o, 1
  store i64 %i.q, ptr %i.n, align 8, !noalias !265
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.u
  invoke void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtB8_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2A_5slice4iter4IterB13_ENCNvMB1j_B1h_18clone_with_subtree0EE9from_iterB1j_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull %i.s, ptr noundef nonnull %i.v)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load i64, ptr %i.n, align 8, !noundef !4
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.n, align 8
  br label %bb.bv

bb.d:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBO_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1w_.exit
  %i.z = load i64, ptr %i.n, align 8, !noundef !4
  %i.aa = add i64 %i.z, -1
  store i64 %i.aa, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !4 ; 10 uses
  store ptr %i.ac, ptr %i.j, align 8
  store ptr null, ptr %i.ab, align 8
  %magicptr.i = ptrtoint ptr %i.ac to i64
  switch i64 %magicptr.i, label %bb.e [
    i64 0, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i
    i64 -1, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.fold.split.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.ag, ptr %i.ad, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i, !prof !5

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
  %i.al = load i8, ptr %0, align 8, !range !8, !noalias !266, !noundef !4 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !266
  %i.ao = load ptr, ptr %i.am, align 8, !noalias !267, !nonnull !4, !noundef !4 ; 5 uses
  %i.ap = icmp ugt ptr %i.ao, inttoptr (i64 15 to ptr)
  br i1 %i.ap, label %bb.l, label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.m, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !noalias !267, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %i.au, ptr %i.av, align 8, !noalias !267
  %i.aw = getelementptr i8, ptr %i.ao, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  store ptr %i.aw, ptr %i.am, align 8, !noalias !267
  store i32 0, ptr %i.at, align 4, !noalias !267
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %bb.m, %bb.l
  %i.ax = phi ptr [ %i.ao, %bb.l ], [ %i.aw, %bb.m ]
  %i.ay = getelementptr i8, ptr %i.ax, i64 -1     ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !267, !noundef !4 ; 2 uses
  %i.ba = icmp eq i64 %i.az, -1
  br i1 %i.ba, label %.invoke, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i, !prof !5

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.bb = add nuw i64 %i.az, 1
  store i64 %i.bb, ptr %i.ay, align 8, !noalias !267
  br label %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !noalias !266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !266
  %i.bc = load ptr, ptr %i.an, align 8, !noalias !268, !nonnull !4, !noundef !4 ; 5 uses
  %i.bd = icmp ugt ptr %i.bc, inttoptr (i64 15 to ptr)
  br i1 %i.bd, label %bb.n, label %bb.ay

bb.n:                                             ; preds = %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.o, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !noalias !268, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.bi, ptr %i.bj, align 8, !noalias !268
  %i.bk = getelementptr i8, ptr %i.bc, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  store ptr %i.bk, ptr %i.an, align 8, !noalias !268
  store i32 0, ptr %i.bh, align 4, !noalias !268
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i: ; preds = %bb.o, %bb.n
  %i.bl = phi ptr [ %i.bc, %bb.n ], [ %i.bk, %bb.o ]
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1     ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !noalias !268, !noundef !4 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, -1
  br i1 %i.bo, label %bb.p, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i6.i, !prof !5

bb.p:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i
  %i.bp = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !268, !nonnull !4, !noundef !4
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !268, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bp, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.noexc.i unwind label %bb.ax, !noalias !266

.noexc.i:                                         ; preds = %bb.p
  unreachable
end_hunk_0
begin_hunk_1_@_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node18clone_with_subtree:bb.a
bb.be:                                            ; preds = %bb.bm, %bb.bk, %.body.i, %bb.bc, %bb.aw
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !266
  unreachable

.body.i:                                          ; preds = %bb.bk, %bb.bf, %bb.ap
  %.pn.i = phi { ptr, i32 } [ %i.ht, %bb.bk ], [ %i.hg, %bb.bf ], [ %i.fa, %bb.ap ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #20
          to label %.body11 unwind label %bb.be, !noalias !266

bb.bf:                                            ; preds = %bb.ao
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bg:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !266
  store i64 0, ptr %i.e, align 8, !alias.scope !281, !noalias !266
  %i.hi = load i64, ptr %i.dk, align 8, !noalias !282, !noundef !4
  %i.hj = add i64 %i.hi, -1
  store i64 %i.hj, ptr %i.dk, align 8, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hl = load i64, ptr %i.hk, align 8, !noalias !287, !noundef !4 ; 3 uses
  %i.hm = icmp ult i64 %i.hl, 9223372036854775807
  br i1 %i.hm, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i, label %bb.bh, !prof !9

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22
          to label %.noexc25.i unwind label %bb.bk, !noalias !266

.noexc25.i:                                       ; preds = %bb.bh
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i: ; preds = %bb.bg
  %i.hn = add nuw nsw i64 %i.hl, 1
  store i64 %i.hn, ptr %i.hk, align 8, !noalias !287
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i.i = load ptr, ptr %i.ho, align 8, !noalias !266, !noundef !4 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i.i, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i
  %.val.i.i.i.i.i = load i64, ptr %.val.i.i, align 8, !noalias !266, !noundef !4 ; 2 uses
  %i.hp = icmp ne i64 %.val.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.hp)
  %i.hq = add i64 %.val.i.i.i.i.i, 1              ; 2 uses
  store i64 %i.hq, ptr %.val.i.i, align 8, !noalias !266
  %i.hr = icmp eq i64 %i.hq, 0
  br i1 %i.hr, label %bb.bj, label %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i, !prof !5

._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i: ; preds = %bb.bi
  %.pre.i24.i = load i64, ptr %i.hk, align 8, !noalias !266
  %i.hs = add i64 %.pre.i24.i, -1
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.trap()
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #20
          to label %.body.i unwind label %bb.be, !noalias !266

bb.bl:                                            ; preds = %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i
  %i.hu = phi i64 [ %i.hs, %._RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtB7_5clone5Clone5cloneB1h_.exit_crit_edge.i.i ], [ %i.hl, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit.i.i ]
  store i64 %i.hu, ptr %i.hk, align 8, !noalias !266
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.hw = load i8, ptr %i.hv, align 1, !range !11, !noalias !266, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.21, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.15.sroa.0.0.copyload = load i64, ptr %i.hh, align 8
  %.sroa.15.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.sroa.8.sroa.0.0.copyload = load i64, ptr %.sroa.15.sroa.8.0..sroa_idx, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa.15.sroa.8.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.15.sroa.8.sroa.5.0.copyload = load i64, ptr %.sroa.15.sroa.8.sroa.5.0..sroa.15.sroa.8.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !266
  %.pre = load ptr, ptr %i.l, align 8
  br label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bm:                                            ; preds = %bb.av
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d) #20
          to label %.body11 unwind label %bb.be, !noalias !266

bb.bn:                                            ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i17.i, %_RNvXs2_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit15.i
  %.sroa.15.sroa.8.sroa.0.0.copyload59 = load i64, ptr %i.fe, align 8
  %.sroa.15.sroa.8.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.15.sroa.8.sroa.5.0.copyload62 = load i64, ptr %.sroa.15.sroa.8.sroa.5.0..sroa_idx, align 8
  %.sroa.1020.8.copyload21 = load i64, ptr %i.d, align 8
  %.sroa.15.8..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.hy = load i64, ptr %.sroa.15.8..sroa_idx24, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !266
  br label %_RNvXs6_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core5clone5Clone5clone.exit

bb.bo:                                            ; preds = %.invoke, %bb.ac, %bb.r
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.aw, %.body.i, %bb.bm, %bb.bo
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.hz, %bb.bo ], [ %i.co, %bb.v ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEECs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ], [ %.pn2.i, %bb.aw ], [ %.pn.i, %.body.i ], [ %i.hx, %bb.bm ] ; 2 uses
  %i.ia = load ptr, ptr %i.l, align 8, !alias.scope !288, !noundef !4
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
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !289
  %i.if = call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !289 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %bb.bq, label %bb.bt, !prof !5

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
define noalias noundef nonnull ptr @_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !292
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !292 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE3newBZ_.exit, !prof !5

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
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !296, !noalias !297, !noundef !4 ; 3 uses
  %i.g = load i64, ptr %i.d, align 8, !range !10, !alias.scope !296, !noalias !297, !noundef !4
  %i.h = icmp eq i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CoweEE8grow_oneCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.h unwind label %bb.d, !noalias !297

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
  %i.k = load i64, ptr %i.b, align 8, !noundef !4
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.b, align 8
  br label %bb.k

bb.h:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !296, !noalias !297, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.p = add i64 %i.f, 1
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !296, !noalias !297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.q = load i64, ptr %i.b, align 8, !noundef !4
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
define noalias noundef nonnull ptr @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink14create_comment(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 11 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !302
  store i64 1, ptr %i.a, align 8, !noalias !302
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !302
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 3, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !302
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !302
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !302
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !303
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !303 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !302

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d, !noalias !302

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !302
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink14create_element(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, i24 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 15 uses
  %i.b = alloca [136 x i8], align 8               ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca [38 x i8], align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.f = trunc i24 %3 to i1
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  store i64 1, ptr %i.b, align 8, !noalias !312
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !312
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 0, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !312
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !312
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !312
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !313
  %i.i = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !313 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.j, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.d, !noalias !312

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %.body unwind label %bb.e, !noalias !312

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !312
  unreachable

bb.f:                                             ; preds = %bb.a, %bb.j
  %.sroa.02.0 = phi ptr [ %i.i, %bb.j ], [ null, %bb.a ]
  %.sroa.01.1.extract.shift = lshr i24 %3, 8
  %.sroa.01.1.extract.trunc = trunc i24 %.sroa.01.1.extract.shift to i8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.a, align 8, !noalias !314
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !314
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 4, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 %.sroa.01.1.extract.trunc, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(38) %.sroa.5, i64 38, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.02.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i6 = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i5, i8 0, i64 24, i1 false), !noalias !314
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i6, align 8, !noalias !314
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i7, align 8, !noalias !314
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !315
  %i.o = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !315 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit9, !prof !5

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i8 unwind label %bb.h, !noalias !314

.noexc.i8:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %common.resume unwind label %bb.i, !noalias !314

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !314
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.k, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit9: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.o, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.o

.body:                                            ; preds = %bb.d
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #20
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.i, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !312
  br label %bb.f

bb.k:                                             ; preds = %bb.l, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.l:                                             ; preds = %.body
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #20
          to label %common.resume unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink17reparent_children(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 2 uses
  %i.i = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 6 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !4
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e, !prof !9

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #22
  unreachable

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #21
          to label %bb.i unwind label %bb.s

.lr.ph:                                           ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1a_.exit20
  %.sroa.0.029 = phi ptr [ %i.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1a_.exit20 ], [ %i.o, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 8 ; 2 uses
  %i.u = load ptr, ptr %.sroa.0.029, align 8, !nonnull !4, !noundef !4
  %i.v = invoke noundef nonnull ptr @_RNvMsg_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9downgradeBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.f unwind label %.loopexit

._crit_edge.loopexit:                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1a_.exit20
  %.pre = load ptr, ptr %i.n, align 8
  %.pre32 = load i64, ptr %i.p, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.w = phi i64 [ %.pre32, %._crit_edge.loopexit ], [ 0, %bb.d ] ; 2 uses
  %i.x = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.o, %bb.d ] ; 3 uses
  %i.y = load i64, ptr %i.h, align 8, !range !10, !noundef !4
  store i64 0, ptr %i.h, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  store i64 0, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = icmp ult i64 %i.w, 1152921504606846976
  call void @llvm.assume(i1 %i.z)
end_hunk_1
begin_hunk_2_@_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink6append:bb.a
  %i.m = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.w, label %bb.x

.body.thread33:                                   ; preds = %bb.j
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load i64, ptr %i.f, align 8, !noundef !4
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.f, align 8
  %i.r = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.thread25, label %.thread44

.body.thread:                                     ; preds = %bb.s
  %i.t = load i64, ptr %2, align 8, !range !7, !noundef !4
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %.thread25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.e:                                             ; preds = %bb.b
  %i.v = add nuw nsw i64 %i.g, 1                  ; 2 uses
  store i64 %i.v, ptr %i.f, align 8, !noalias !521
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 3 uses
  %i.ac = icmp eq ptr %i.aa, inttoptr (i64 15 to ptr)
  br i1 %i.ac, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp ult ptr %i.aa, inttoptr (i64 9 to ptr)
  br i1 %i.ad, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = and i64 %i.ab, 1
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr i8, ptr %i.aa, i64 %i.af
  %i.ah = trunc i64 %i.ab to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = zext i32 %i.aj to i64
  %.sroa.01.0.i.i = select i1 %i.ah, i64 %i.ak, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.an = load i32, ptr %i.am, align 8, !noundef !4
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sroa.01.0.i.i
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.4.0.i = phi i64 [ %i.ao, %bb.h ], [ %i.ab, %bb.i ], [ 0, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.ap, %bb.h ], [ %i.aq, %bb.i ], [ inttoptr (i64 1 to ptr), %bb.f ]
  %i.ar = getelementptr [8 x i8], ptr %i.z, i64 %i.x
  %i.as = getelementptr i8, ptr %i.ar, i64 -8
  %.val9 = load ptr, ptr %i.as, align 8, !nonnull !4, !noundef !4
  %i.at = invoke fastcc noundef zeroext i1 @_RNvCs1mImOlsSUsK_17markup5ever_rcdom23append_to_existing_text(ptr nonnull %.val9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i)
          to label %bb.k unwind label %.body.thread33

bb.k:                                             ; preds = %bb.j
  %.pre = load i64, ptr %i.f, align 8             ; 2 uses
  br i1 %i.at, label %bb.l, label %bb.d

bb.l:                                             ; preds = %bb.k
  %i.au = add i64 %.pre, -1
  store i64 %i.au, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %i.av = load i64, ptr %2, align 8, !range !7, !alias.scope !522, !noundef !4
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !524)
  %i.ax = load ptr, ptr %i.d, align 8, !alias.scope !525, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !525, !noundef !4
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.ax, align 8, !noalias !525
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

bb.o:                                             ; preds = %bb.l
  tail call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit: ; preds = %bb.o, %bb.n, %bb.m, %bb.u
  ret void

bb.p:                                             ; preds = %bb.y, %.thread44
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.q:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !526
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !526
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bd, align 8, !noalias !526
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.be, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !526
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !526
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !526
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !527
  %i.bf = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !527 ; 3 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.r, label %bb.v, !prof !5

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.s, !noalias !526

.noexc.i:                                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %.body.thread unwind label %bb.t, !noalias !526

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !526
  unreachable

.thread:                                          ; preds = %bb.a, %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !4, !noundef !4
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.thread
  %i.bl = phi i1 [ true, %bb.v ], [ false, %.thread ] ; 2 uses
  %.sroa.02.0 = phi ptr [ %i.bf, %bb.v ], [ %i.bk, %.thread ]
  %.sroa.03.2 = xor i1 %i.bl, true
  invoke fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom6append(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull %.sroa.02.0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder10NodeOrTextINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB2g_.exit unwind label %.body

bb.v:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bf, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !526
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !526
  br label %bb.u

bb.w:                                             ; preds = %.body
  br i1 %.sroa.04.1, label %.thread25, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.x:                                             ; preds = %.body
  br i1 %.sroa.03.1, label %.thread44, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit: ; preds = %.body.thread, %.thread25, %bb.y, %.thread44, %bb.x, %bb.w
  %.pn18 = phi { ptr, i32 } [ %.pn2028, %.thread25 ], [ %.pn3847, %.thread44 ], [ %i.l, %bb.x ], [ %i.l, %bb.w ], [ %.pn2028, %bb.y ], [ %i.bh, %.body.thread ]
  resume { ptr, i32 } %.pn18

.thread25:                                        ; preds = %.body.thread33, %.body.thread, %bb.w
  %.pn2028 = phi { ptr, i32 } [ %i.l, %bb.w ], [ %i.bh, %.body.thread ], [ %i.o, %.body.thread33 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !530, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !530, !noundef !4
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !noalias !530
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.y:                                             ; preds = %.thread25
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bm) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.p

.thread44:                                        ; preds = %.body.thread33, %bb.x
  %.pn3847 = phi { ptr, i32 } [ %i.l, %bb.x ], [ %i.o, %.body.thread33 ]
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.br) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink9create_pi(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 12 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !535
  store i64 1, ptr %i.a, align 8, !noalias !535
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !535
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 5, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !535
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !535
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !536
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !536 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !535

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d, !noalias !535

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !535
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink9elem_name(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noundef !4
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.g = insertvalue { ptr, ptr } poison, ptr %i.e, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %i.f, 1
  ret { ptr, ptr } %i.h

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtBW_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink20add_attrs_if_missings_0INtB7_5FnMutTRNtB1I_9AttributeEE8call_mutBW_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 captures(address, read_provenance) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !12, !noundef !4
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !12, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  %i.c = xor i1 %i.b, true
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtCskKLDkoKarTP_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !541
  store i64 1, ptr %i.a, align 8, !noalias !541
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !541
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !541
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !541
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !541
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !542
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !542 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !541

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d, !noalias !541

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !541
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !541
  store ptr %i.d, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.i, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load i8, ptr %0, align 8, !range !8, !noundef !4
  switch i8 %i.f, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 8)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.e, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 9, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.d, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @70)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.c, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
end_hunk_2
