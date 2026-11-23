Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
inline.NumInlined: 278
inline.NumDeleted: 106
begin_hunk_0_@_RNvCs1mImOlsSUsK_17markup5ever_rcdom6append
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
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !4 ; 11 uses
  store ptr %i.ac, ptr %i.j, align 8
  store ptr null, ptr %i.ab, align 8
  %magicptr.i = ptrtoint ptr %i.ac to i64
  %magicptr.off.i = add i64 %magicptr.i, -1
  %switch.i = icmp ult i64 %magicptr.off.i, -2
  br i1 %switch.i, label %bb.e, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i

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

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.thread.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ac, ptr %i.ab, align 8
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

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i6.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i5.i
  %i.br = add nuw i64 %i.bn, 1
  store i64 %i.br, ptr %i.bm, align 8, !noalias !268
  br label %bb.ay

bb.q:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !269, !noundef !4 ; 3 uses
  %i.bu = icmp ult i64 %i.bt, 9223372036854775807
  br i1 %i.bu, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, label %bb.r, !prof !9

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @84) #22
          to label %.noexc10 unwind label %bb.bo

.noexc10:                                         ; preds = %bb.r
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %bb.q
  %i.bv = add nuw nsw i64 %i.bt, 1
  store i64 %i.bv, ptr %i.bs, align 8, !noalias !269
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !270, !nonnull !4, !noundef !4 ; 5 uses
  %i.by = icmp ugt ptr %i.bx, inttoptr (i64 15 to ptr)
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  br i1 %i.by, label %bb.s, label %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.s:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %i.ca = and i64 %i.bz, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !noalias !270, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i32 %i.cd, ptr %i.ce, align 8, !noalias !270
  %i.cf = getelementptr i8, ptr %i.bx, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cf) ]
  store ptr %i.cf, ptr %i.bw, align 8, !noalias !270
  store i32 0, ptr %i.cc, align 4, !noalias !270
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i: ; preds = %bb.t, %bb.s
  %i.cg = phi ptr [ %i.bx, %bb.s ], [ %i.cf, %bb.t ]
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1     ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !270, !noundef !4 ; 2 uses
  %i.cj = icmp eq i64 %i.ci, -1
  br i1 %i.cj, label %bb.u, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, !prof !5

bb.u:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.ck = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !270, !nonnull !4, !noundef !4
  %i.cl = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !270, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ck, i64 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #22
          to label %.noexc.i.i unwind label %bb.v, !noalias !269

.noexc.i.i:                                       ; preds = %bb.u
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i.i
  %i.cm = add nuw i64 %i.ci, 1
  store i64 %i.cm, ptr %i.ch, align 8, !noalias !270
  %.pre.i.i = load i64, ptr %i.bs, align 8, !noalias !269
  %i.cn = add i64 %.pre.i.i, -1
  %.sroa.15.sroa.0.0.copyload35.pre = load i64, ptr %i.bw, align 8
  br label %_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i

bb.v:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load i64, ptr %i.bs, align 8, !noalias !269, !noundef !4
  %i.cq = add i64 %i.cp, -1
  store i64 %i.cq, ptr %i.bs, align 8, !noalias !269
  br label %.body11

_RNvXsx_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EENtNtB7_5clone5Clone5cloneCs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  %.sroa.15.sroa.0.0.copyload35 = phi i64 [ %.sroa.15.sroa.0.0.copyload35.pre, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i ], [ %i.bz, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ]
  %i.cr = phi i64 [ %i.cn, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i.i.i ], [ %i.bt, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBO_3fmt4UTF8EE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ]
  %.sroa.15.sroa.8.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cs = load i64, ptr %.sroa.15.sroa.8.0..sroa_idx36, align 8
end_hunk_0
begin_hunk_1_@_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink21get_template_contents:bb.a
  br i1 %i.d, label %bb.b, label %bb.d, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !368, !noundef !4 ; 2 uses
  %i.g = icmp ult i64 %i.f, 9223372036854775807
  br i1 %i.g, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #22
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit: ; preds = %bb.b
  %i.h = add nuw nsw i64 %i.f, 1
  store i64 %i.h, ptr %i.e, align 8, !noalias !368
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.e, !prof !5

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull inttoptr (i64 47 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #22
  unreachable

bb.e:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add i64 %i.k, 1                          ; 2 uses
  store i64 %i.m, ptr %i.j, align 8
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.i, label %bb.j, !prof !5

bb.f:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtB7_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEE6borrowB1C_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 23, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #21
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load i64, ptr %i.e, align 8, !noundef !4
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.e, align 8
  resume { ptr, i32 } %i.o

bb.i:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.s = load i64, ptr %i.e, align 8, !noundef !4
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.e, align 8
  ret ptr %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink26append_doctype_to_document(ptr nofree noundef nonnull readonly align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 13 uses
  %.sroa.4 = alloca [23 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  store i64 1, ptr %i.a, align 8, !noalias !373
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8, !noalias !373
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4, i64 23, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !373
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !373
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !373
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !374
  %i.d = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !374 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.c, !noalias !373

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.a) #20
          to label %bb.e unwind label %bb.d, !noalias !373

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !373
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node3new.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.d, ptr noundef nonnull align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  tail call fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom6append(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noundef nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink27append_based_on_parent_node(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink6append(ptr nonnull align 8 poison, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink21append_before_sibling(ptr nonnull align 8 poison, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink42is_mathml_annotation_xml_integration_point(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !8, !noundef !4
  %i.d = icmp eq i8 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %i.f = load i8, ptr %i.e, align 1, !range !11, !noundef !4
  %i.g = trunc nuw i8 %i.f to i1
  ret i1 %i.g

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 31 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink42maybe_clone_an_option_into_selectedcontent(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [8 x i8], align 8                 ; 8 uses
  %i.e = alloca [8 x i8], align 8                 ; 10 uses
  %i.f = alloca [8 x i8], align 8                 ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 10 uses
  %i.p = alloca [8 x i8], align 8                 ; 6 uses
  %i.q = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.r, align 8, !range !8, !noundef !4
  %i.t = icmp eq i8 %i.s, 4
  br i1 %i.t, label %bb.b, label %bb.af, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 96 ; 5 uses
  %i.w = load ptr, ptr %i.v, align 8, !noundef !4 ; 7 uses
  store ptr %i.w, ptr %i.n, align 8
  store ptr null, ptr %i.v, align 8
  %magicptr.i.i = ptrtoint ptr %i.w to i64
  %magicptr.off.i.i = add i64 %magicptr.i.i, -1
  %switch.i.i = icmp ult i64 %magicptr.off.i.i, -2
  br i1 %switch.i.i, label %bb.c, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.i

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  %i.z = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add i64 %i.y, 1                         ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i.i, !prof !5

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i.i: ; preds = %bb.c
  %.pr.i.i = load ptr, ptr %i.v, align 8          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %.pr.i.i, ptr %i.m, align 8
  store ptr %i.w, ptr %i.v, align 8
  %i.ac = icmp eq ptr %.pr.i.i, null
  br i1 %i.ac, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i.i
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.thread.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.cs, %bb.ct, %bb.cw, %.thread31, %.body.i10, %bb.bo, %bb.f, %bb.i, %.body.i, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i10 ], [ %.pn.i, %bb.q ], [ %i.ag, %bb.i ], [ %i.ad, %bb.f ], [ %.pn.i, %.body.i ], [ %eh.lpad-body.i, %bb.bo ], [ %.pn17.i, %bb.ct ], [ %i.fj, %.thread31 ], [ %.pn17.i, %bb.cs ], [ %i.fj, %bb.cw ]
  resume { ptr, i32 } %common.resume.op

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.thread.i: ; preds = %bb.e, %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.h

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.w, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread, label %bb.h

bb.h:                                             ; preds = %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.i, %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.w, ptr %i.l, align 8
  %i.af = invoke noundef ptr @_RNvMs1c_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE7upgradeBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l)
          to label %_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i unwind label %bb.i ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i: ; preds = %bb.h
  call void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not13.i = icmp eq ptr %i.af, null
  br i1 %.not13.i, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i, %.preheader.i.backedge
  %i.ai = phi ptr [ %i.bg, %.preheader.i.backedge ], [ %i.af, %_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i ] ; 17 uses
  %.sroa.01.0.i = phi i1 [ %.sroa.01.1.i, %.preheader.i.backedge ], [ false, %_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i ] ; 3 uses
  store ptr %i.ai, ptr %i.o, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %bb.k, label %.thread45.i

bb.k:                                             ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.an = load i64, ptr %i.am, align 8, !range !6, !noundef !4
  switch i64 %i.an, label %.thread45.i [
    i64 764504178690, label %bb.t
    i64 7497761, label %bb.t
    i64 31084746153946977, label %bb.t
    i64 2821793513474, label %bb.s
    i64 32760384559870817, label %bb.ag
  ]

.thread45.i:                                      ; preds = %bb.s, %bb.k, %.preheader.i
  %.sroa.01.1.i = phi i1 [ %.sroa.01.0.i, %.preheader.i ], [ %.sroa.01.0.i, %bb.k ], [ true, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 96 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noundef !4 ; 7 uses
  store ptr %i.ap, ptr %i.k, align 8
  store ptr null, ptr %i.ao, align 8
  %magicptr.i17.i = ptrtoint ptr %i.ap to i64
  %magicptr.off.i18.i = add i64 %magicptr.i17.i, -1
  %switch.i19.i = icmp ult i64 %magicptr.off.i18.i, -2
  br i1 %switch.i19.i, label %bb.l, label %bb.u

bb.l:                                             ; preds = %.thread45.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %i.ar, 1                        ; 2 uses
  store i64 %i.at, ptr %i.aq, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.m, label %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i21.i, !prof !5

bb.m:                                             ; preds = %bb.l
  call void @llvm.trap()
  unreachable

_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i21.i: ; preds = %bb.l
  %.pr.i22.i = load ptr, ptr %i.ao, align 8       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %.pr.i22.i, ptr %i.j, align 8
  store ptr %i.ap, ptr %i.ao, align 8
  %i.av = icmp eq ptr %.pr.i22.i, null
  br i1 %i.av, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i21.i
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %.thread.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %.body.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body.i:                                          ; preds = %bb.ad, %bb.w, %bb.r, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.bq, %bb.ad ], [ %i.aw, %bb.o ], [ %i.bc, %bb.r ], [ %i.bh, %bb.w ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %i.ay = load ptr, ptr %i.o, align 8, !alias.scope !461, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !noalias !461, !noundef !4
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.ay, align 8, !noalias !461
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %common.resume

bb.q:                                             ; preds = %.body.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #18
          to label %common.resume unwind label %bb.ae

bb.r:                                             ; preds = %bb.x
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.k
  br i1 %.sroa.01.0.i, label %bb.t, label %.thread45.i

bb.t:                                             ; preds = %bb.s, %bb.k, %bb.k, %bb.k
  %i.bd = load i64, ptr %i.ai, align 8, !noalias !462, !noundef !4
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.ai, align 8, !noalias !462
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit37.sink.split.i, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit37.sink.split.i: ; preds = %bb.z, %bb.t
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #18
  br label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread

.thread.i:                                        ; preds = %bb.n, %_RNvXs1e_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtCskKLDkoKarTP_4core5clone5Clone5cloneBI_.exit.i21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.v

bb.u:                                             ; preds = %.thread45.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ap, ptr %i.ao, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not14.i = icmp eq ptr %i.ap, null
  br i1 %.not14.i, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.ap, ptr %i.i, align 8
  %i.bg = invoke noundef ptr @_RNvMs1c_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE7upgradeBI_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.x unwind label %bb.w       ; 3 uses

bb.w:                                             ; preds = %bb.v
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.body.i unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.aa unwind label %bb.r

bb.y:                                             ; preds = %bb.w
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.z:                                             ; preds = %bb.aa, %bb.u
  %i.bj = phi ptr [ %i.ai, %bb.u ], [ %.pre.i, %bb.aa ] ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !463, !noundef !4
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !noalias !463
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit37.sink.split.i, label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread

bb.aa:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not15.i = icmp eq ptr %i.bg, null
  %.pre.i = load ptr, ptr %i.o, align 8           ; 3 uses
  br i1 %.not15.i, label %bb.z, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = load i64, ptr %.pre.i, align 8, !noalias !464, !noundef !4
  %i.bo = add i64 %i.bn, -1                       ; 2 uses
  store i64 %i.bo, ptr %.pre.i, align 8, !noalias !464
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %bb.ac, label %.preheader.i.backedge

bb.ac:                                            ; preds = %bb.ab
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #18
          to label %.preheader.i.backedge unwind label %bb.ad

.preheader.i.backedge:                            ; preds = %bb.ac, %bb.ab
  br label %.preheader.i

bb.ad:                                            ; preds = %bb.ac
  %i.bq = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bg, ptr %i.o, align 8
  br label %.body.i

bb.ae:                                            ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node42get_option_element_nearest_ancestor_select.exit.thread: ; preds = %bb.t, %bb.z, %_RNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB4_4Node42get_option_element_nearest_ancestor_select0B4_.exit.i, %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node6parent.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit37.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.br

bb.af:                                            ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull inttoptr (i64 147 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #22
  unreachable

bb.ag:                                            ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.ai, ptr %i.h, align 8
  %i.bu = load i8, ptr %i.bs, align 8, !range !8, !noundef !4
  %i.bv = icmp eq i8 %i.bu, 4
  br i1 %i.bv, label %bb.ah, label %bb.ak, !prof !9

bb.ah:                                            ; preds = %bb.ag
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !465, !noundef !4 ; 4 uses
  %i.by = icmp ult i64 %i.bx, 9223372036854775807
  br i1 %i.by, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, label %bb.ai, !prof !9

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #22
          to label %.noexc.i unwind label %bb.bn

.noexc.i:                                         ; preds = %bb.ai
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i: ; preds = %bb.ah
  %i.bz = add nuw nsw i64 %i.bx, 1
  store i64 %i.bz, ptr %i.bw, align 8, !noalias !465
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.cd = load i64, ptr %i.cc, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cd, 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %.not.not.not.i.not.i.i112 = icmp eq i64 %i.cd, 0
  br i1 %.not.not.not.i.not.i.i112, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2u_4Node37get_a_selects_enabled_selectedcontent0EB2u_.exit.i.i, label %.lr.ph

bb.aj:                                            ; preds = %.lr.ph
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cg, i64 40 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.cf, %i.ce
  br i1 %.not.not.not.i.not.i.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2u_4Node37get_a_selects_enabled_selectedcontent0EB2u_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i, %bb.aj
  %i.cg = phi ptr [ %i.cf, %bb.aj ], [ %i.cb, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i ] ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %.val.i.i.i = load i64, ptr %i.ch, align 8, !range !6, !noalias !466, !noundef !4
  %i.ci = icmp eq i64 %.val.i.i.i, 2362232012802
  br i1 %i.ci, label %bb.am, label %bb.aj

bb.ak:                                            ; preds = %bb.ag
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #22
          to label %.noexc1.i unwind label %bb.bn

.noexc1.i:                                        ; preds = %bb.ak
  unreachable

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2u_4Node37get_a_selects_enabled_selectedcontent0EB2u_.exit.i.i: ; preds = %bb.aj, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEE6borrowCs1mImOlsSUsK_17markup5ever_rcdom.exit.i.i
  store i64 %i.bx, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.g, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ai, i64 104 ; 6 uses
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !467, !noundef !4 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 9223372036854775807
  br i1 %i.cn, label %bb.ao, label %bb.al, !prof !9

bb.al:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2u_4Node37get_a_selects_enabled_selectedcontent0EB2u_.exit.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #22
          to label %.noexc.i.i unwind label %bb.an

.noexc.i.i:                                       ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %.lr.ph
  store i64 %i.bx, ptr %i.bw, align 8
  br label %_RNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2_4Node37get_a_selects_enabled_selectedcontent.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1u_.exit32.i.i: ; preds = %bb.bm, %bb.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit30.i.i, %bb.ap, %bb.an
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.co, %bb.an ], [ %i.cv, %bb.ap ], [ %.pn.pn.ph.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit30.i.i ], [ %.pn.pn41.i.i, %bb.bl ], [ %.pn.pn41.i.i, %bb.bm ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtBI_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #20
          to label %.body.i10 unwind label %bb.bi

bb.an:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1u_.exit32.i.i

bb.ao:                                            ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMCs1mImOlsSUsK_17markup5ever_rcdomNtB2u_4Node37get_a_selects_enabled_selectedcontent0EB2u_.exit.i.i
  %i.cp = add nuw nsw i64 %i.cm, 1
  store i64 %i.cp, ptr %i.cl, align 8, !noalias !467
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !4
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ct
  invoke void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_10SpecExtendB1j_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterB1j_EEE11spec_extendB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cv = landingpad { ptr, i32 }
          cleanup
  %i.cw = load i64, ptr %i.cl, align 8, !noundef !4
  %i.cx = add i64 %i.cw, -1
  store i64 %i.cx, ptr %i.cl, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1u_.exit32.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.cy = load i64, ptr %i.cl, align 8, !noundef !4
  %i.cz = add i64 %i.cy, -1
  store i64 %i.cz, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr null, ptr %i.f, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.backedge.i.i, %bb.aq
  %i.da = invoke noundef ptr @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE9pop_frontB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.at unwind label %bb.as     ; 5 uses

bb.as:                                            ; preds = %.invoke.i.i, %bb.ar
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit30.i.i

bb.at:                                            ; preds = %bb.ar
end_hunk_1
