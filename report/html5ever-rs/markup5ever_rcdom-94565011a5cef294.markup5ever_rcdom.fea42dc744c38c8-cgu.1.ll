Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.1?download=true
inline.NumInlined: 278
inline.NumDeleted: 106
begin_hunk_0_@_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink17reparent_children:bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aq = load i64, ptr %i.j, align 8, !noundef !4
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.j, align 8
  %i.as = load i64, ptr %i.e, align 8, !noundef !4
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.e, align 8
  ret void

bb.u:                                             ; preds = %bb.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1a_.exit
  %.pn10 = phi { ptr, i32 } [ %i.ap, %bb.s ], [ %.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1a_.exit ]
  %i.au = load i64, ptr %i.e, align 8, !noundef !4
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.e, align 8
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink18remove_from_parent(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  tail call fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom18remove_from_parent(ptr nonnull %.val)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink20add_attrs_if_missing(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !8, !noundef !4
  %i.g = icmp eq i8 %i.f, 4
  br i1 %i.g, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 10 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g, !prof !9

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 29 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #21
          to label %bb.n unwind label %.thread

bb.d:                                             ; preds = %bb.b
  store i64 -1, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !318
  %i.p = invoke { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @62)
          to label %.noexc unwind label %.thread20 ; 2 uses

.thread20:                                        ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %i.h, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.h, align 8
  br label %bb.p

.noexc:                                           ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %i.m, i64 %i.o
  %i.u = extractvalue { i64, i64 } %i.p, 0
  %i.v = extractvalue { i64, i64 } %i.p, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false), !noalias !318
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.u, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !318
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.v, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !318
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2w_8adapters3map3MapINtNtNtB2y_5slice4iter4IterNtBQ_9AttributeENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB4K_5RcDomNtNtBQ_12tree_builder8TreeSink20add_attrs_if_missing0EEB4K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.m, ptr noundef nonnull %i.t)
          to label %bb.h unwind label %bb.e, !noalias !318

bb.e:                                             ; preds = %.noexc
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %.thread14 unwind label %bb.f, !noalias !318

.thread14:                                        ; preds = %bb.e
  %i.x = load i64, ptr %i.h, align 8, !noundef !4
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.h, align 8
  br label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !318
  unreachable

bb.g:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #21
          to label %bb.n unwind label %.thread

bb.h:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.ac = load i64, ptr %2, align 8, !range !10, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 230584300921369396
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.ae
  store ptr %i.ab, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.c, ptr %i.ah, align 8
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtB6_9into_iter8IntoIterBG_ENCNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB3l_5RcDomNtNtBI_12tree_builder8TreeSink20add_attrs_if_missings_0EEB3l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %.sink.split unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread:                                          ; preds = %bb.c, %bb.g
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.al = load i64, ptr %i.h, align 8, !noundef !4
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.h, align 8
  ret void

bb.m:                                             ; preds = %bb.i, %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.n:                                             ; preds = %bb.g, %bb.c
  unreachable

.sink.split:                                      ; preds = %bb.i, %bb.k
  %.pn412.ph = phi { ptr, i32 } [ %i.aj, %bb.k ], [ %i.ai, %bb.i ]
  %i.ao = load i64, ptr %i.h, align 8, !noundef !4
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.h, align 8
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.p
  %.pn412 = phi { ptr, i32 } [ %.pn413, %bb.p ], [ %.pn412.ph, %.sink.split ]
  resume { ptr, i32 } %.pn412

bb.p:                                             ; preds = %.thread20, %.thread14, %.thread
  %.pn413 = phi { ptr, i32 } [ %i.ak, %.thread ], [ %i.q, %.thread20 ], [ %i.w, %.thread14 ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeEECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #20
          to label %bb.o unwind label %bb.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_5RcDomNtNtNtCsa2F6HLACPlS_11markup5ever9interface12tree_builder8TreeSink21append_before_sibling(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 12 uses
  %i.c = alloca [136 x i8], align 8               ; 13 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %.val31 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.h = invoke fastcc { ptr, i64 } @_RNvCs1mImOlsSUsK_17markup5ever_rcdom20get_parent_and_index(ptr nonnull %.val31)
          to label %bb.b unwind label %bb.az      ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 5 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 8 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.03.0.copyload = load i64, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 9 uses
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.55.0.copyload = load i64, ptr %.sroa.55.0..sroa_idx, align 8 ; 4 uses
  %i.k = trunc nuw i64 %.sroa.03.0.copyload to i1
  br i1 %i.k, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #21
          to label %bb.e unwind label %bb.az

bb.e:                                             ; preds = %bb.ar, %bb.w, %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.j, 0
  br i1 %i.l, label %bb.i, label %bb.m

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.2.0.copyload) ]
  store ptr %.sroa.2.0.copyload, ptr %i.f, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.ad, %bb.q, %bb.g
  %i.m = phi ptr [ %i.bd, %bb.ad ], [ %i.p, %bb.q ], [ %.sroa.2.0.copyload, %bb.g ] ; 8 uses
  invoke fastcc void @_RNvCs1mImOlsSUsK_17markup5ever_rcdom18remove_from_parent(ptr nonnull %i.m)
          to label %bb.ae unwind label %bb.au

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !351
  store i64 1, ptr %i.c, align 8, !noalias !351
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.n, align 8, !noalias !351
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 2, ptr %i.o, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.sroa.55.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i8 0, i64 24, i1 false), !noalias !351
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !351
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !351
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !352
  %i.p = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !352 ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.q, !prof !5

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i unwind label %bb.k, !noalias !351

.noexc.i:                                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.c) #20
          to label %.body unwind label %bb.l, !noalias !351

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !351
  unreachable

bb.m:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.2.0.copyload, ptr %i.e, align 8
  %.sroa.55.8..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %.sroa.55.0.copyload, ptr %.sroa.55.8..sroa_idx6, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 104 ; 10 uses
  %i.u = load i64, ptr %i.t, align 8, !noalias !353, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %i.u, 9223372036854775807
  %i.w = lshr i64 %.sroa.55.0.copyload, 32
  br i1 %i.v, label %bb.s, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #22
          to label %.noexc unwind label %.thread67

.noexc:                                           ; preds = %bb.n
  unreachable

.body:                                            ; preds = %bb.au, %bb.av, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i, %bb.r, %bb.p, %bb.k, %bb.ay
  %.pn22.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.ce, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ %i.bf, %bb.r ], [ %.pn70, %bb.ay ], [ %i.ab, %bb.p ], [ %i.cu, %bb.av ], [ %i.cu, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.x = load ptr, ptr %i.g, align 8, !alias.scope !356, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !noalias !356, !noundef !4
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.x, align 8, !noalias !356
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.o, label %.thread

bb.o:                                             ; preds = %.body
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
          to label %.thread unwind label %bb.at

bb.p:                                             ; preds = %bb.aw
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.q:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.p, ptr noundef nonnull align 8 dereferenceable(136) %i.c, i64 136, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !351
  store ptr %i.p, ptr %i.f, align 8
  br label %bb.h

bb.r:                                             ; preds = %bb.ab
  %i.ac = load i64, ptr %i.t, align 8, !noundef !4
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %i.t, align 8
  br label %.body

.thread67:                                        ; preds = %bb.n
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.s:                                             ; preds = %bb.m
  %i.af = add nuw nsw i64 %i.u, 1
  store i64 %i.af, ptr %i.t, align 8, !noalias !353
  %i.ag = add i64 %i.j, -1                        ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4 ; 2 uses
  %i.aj = icmp ult i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !4, !noundef !4
  %i.am = ptrtoint ptr %.sroa.2.0.copyload to i64 ; 3 uses
  %i.an = icmp eq ptr %.sroa.2.0.copyload, inttoptr (i64 15 to ptr)
  br i1 %i.an, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ao = icmp ult ptr %.sroa.2.0.copyload, inttoptr (i64 9 to ptr)
  br i1 %i.ao, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ap = and i64 %i.am, 1
  %i.aq = sub nsw i64 0, %i.ap
  %i.ar = getelementptr i8, ptr %.sroa.2.0.copyload, i64 %i.aq
  %i.as = trunc i64 %i.am to i1
  %.sroa.01.0.i.i = select i1 %i.as, i64 %i.w, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.au = and i64 %.sroa.55.0.copyload, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 %.sroa.01.0.i.i
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #21
          to label %bb.e unwind label %.thread71

.thread71:                                        ; preds = %bb.w, %bb.x
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load i64, ptr %i.t, align 8, !noundef !4
  %i.ay = add i64 %i.ax, -1
  store i64 %i.ay, ptr %i.t, align 8
  br label %bb.ay

bb.x:                                             ; preds = %bb.v, %bb.t, %bb.u
  %.sroa.4.0.i = phi i64 [ %i.au, %bb.v ], [ 0, %bb.t ], [ %i.am, %bb.u ]
  %.sroa.0.0.i = phi ptr [ %i.av, %bb.v ], [ inttoptr (i64 1 to ptr), %bb.t ], [ %.sroa.55.8..sroa_idx6, %bb.u ]
  %i.az = getelementptr [8 x i8], ptr %i.al, i64 %i.j
  %3 = getelementptr i8, ptr %i.az, i64 -8
  %.val33 = load ptr, ptr %3, align 8, !nonnull !4, !noundef !4
  %i.ba = invoke fastcc noundef zeroext i1 @_RNvCs1mImOlsSUsK_17markup5ever_rcdom23append_to_existing_text(ptr nonnull %.val33, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.4.0.i)
          to label %bb.y unwind label %.thread71

bb.y:                                             ; preds = %bb.x
  br i1 %i.ba, label %bb.aw, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !357
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.557.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  store i64 1, ptr %i.b, align 8, !noalias !357
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bb, align 8, !noalias !357
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 2, ptr %i.bc, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i35, i8 0, i64 24, i1 false), !noalias !357
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.sroa.4.sroa.4.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i36, align 8, !noalias !357
  %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i37 = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i64 0, ptr %.sroa.5.sroa.4.sroa.5.0..sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx.i37, align 8, !noalias !357
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !358
  %i.bd = tail call noundef align 8 dereferenceable_or_null(136) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 136, i64 noundef 8) #23, !noalias !358 ; 4 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.aa, label %bb.ad, !prof !5

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 136) #21
          to label %.noexc.i38 unwind label %bb.ab, !noalias !357

.noexc.i38:                                       ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc7RcInnerNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB1d_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %bb.r unwind label %bb.ac, !noalias !357

bb.ac:                                            ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !357
  unreachable

bb.ad:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.bd, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !357
  store ptr %i.bd, ptr %i.f, align 8
  %i.bh = load i64, ptr %i.t, align 8, !noundef !4
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %i.t, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i: ; preds = %bb.am, %bb.an
  %i.bj = load i64, ptr %i.bq, align 8, !noundef !4
  %i.bk = add i64 %i.bj, 1
  store i64 %i.bk, ptr %i.bq, align 8
  br label %.body

bb.ae:                                            ; preds = %bb.h
  %i.bl = invoke noundef nonnull ptr @_RNvMsg_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9downgradeBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.af unwind label %bb.au

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  store ptr %i.bn, ptr %i.d, align 8
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXs1d_NtCsexYYUdYSQU6_5alloc2rcINtB6_4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBI_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit unwind label %bb.au

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit: ; preds = %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bp = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 6 uses
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.ah, label %bb.ar, !prof !9

bb.ah:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit
  store i64 -1, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !359)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.m, ptr %i.a, align 8, !noalias !359
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 128 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !359, !noundef !4 ; 7 uses
  %i.bw = icmp ult i64 %i.bv, 1152921504606846976
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp ugt i64 %i.j, %i.bv
  br i1 %i.bx, label %bb.aj, label %bb.ai, !prof !5

bb.ai:                                            ; preds = %bb.ah
  %i.by = load i64, ptr %i.bt, align 8, !range !10, !alias.scope !359, !noundef !4
  %i.bz = icmp eq i64 %i.bv, %i.by
  br i1 %i.bz, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RNvNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %i.j, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #21
          to label %bb.ap unwind label %bb.am, !noalias !359

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 120
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !359, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.j ; 3 uses
  %i.cd = icmp samesign ult i64 %i.j, %i.bv
  br i1 %i.cd, label %bb.ao, label %bb.as

bb.am:                                            ; preds = %bb.ak, %bb.aj
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load i64, ptr %i.m, align 8, !noalias !360, !noundef !4
  %i.cg = add i64 %i.cf, -1                       ; 2 uses
  store i64 %i.cg, ptr %i.m, align 8, !noalias !360
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.an, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i unwind label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = sub nuw nsw i64 %i.bv, %i.j
  %i.ck = shl nuw nsw i64 %i.cj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cc, i64 %i.ck, i1 false)
  br label %bb.as

bb.ap:                                            ; preds = %bb.aj
  unreachable

bb.aq:                                            ; preds = %bb.an
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc4WeakNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1w_.exit
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #21
          to label %bb.e unwind label %bb.au

bb.as:                                            ; preds = %bb.al, %bb.ao
  store ptr %i.m, ptr %i.cc, align 8
  %i.cm = add nuw nsw i64 %i.bv, 1
  store i64 %i.cm, ptr %i.bu, align 8, !alias.scope !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cn = load i64, ptr %i.bq, align 8, !noundef !4
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.bq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !361)
  call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.cp = load ptr, ptr %i.g, align 8, !alias.scope !363, !nonnull !4, !noundef !4 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !363, !noundef !4
  %i.cr = add i64 %i.cq, -1                       ; 2 uses
  store i64 %i.cr, ptr %i.cp, align 8, !noalias !363
  %i.cs = icmp eq i64 %i.cr, 0
  br i1 %i.cs, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50.sink.split, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50.sink.split: ; preds = %bb.as, %bb.ax
  call void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit50.sink.split, %bb.as, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.at:                                            ; preds = %bb.av, %bb.o, %bb.az, %bb.ay
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.au:                                            ; preds = %bb.ag, %bb.h, %bb.ar, %bb.ae
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load i64, ptr %i.m, align 8, !noalias !364, !noundef !4
  %i.cw = add i64 %i.cv, -1                       ; 2 uses
  store i64 %i.cw, ptr %i.m, align 8, !noalias !364
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.av, label %.body

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #18
          to label %.body unwind label %bb.at

bb.aw:                                            ; preds = %bb.y
end_hunk_0
begin_hunk_1_@_RNvXs5_Cs1mImOlsSUsK_17markup5ever_rcdomNtB5_8NodeDataNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.s, ptr %i.b, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 4, ptr noundef nonnull %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @74, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 5, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @75, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 17, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @76, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 39, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @77)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.v, ptr %i.a, align 8
  %i.w = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 6, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.b ], [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ %i.o, %bb.e ], [ %i.t, %bb.f ], [ %i.w, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !range !6, !noundef !4 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = and i64 %i.d, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.36, i64 %i.e
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext = zext i8 %switch.load21 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !captures !13
  store i64 %switch.ext, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !align !12, !noundef !4
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @88, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @91, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_Cs1mImOlsSUsK_17markup5ever_rcdomNtB4_4NodeNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21: ; preds = %bb.aa, %bb.ab, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.j, %bb.f ], [ %.pn.pn, %bb.ab ], [ %.pn.pn, %bb.aa ]
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.body unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.x

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.f:                                             ; preds = %bb.p
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 0, ptr %i.k, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.j

._crit_edge:                                      ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit, %bb.g
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_.exit17 unwind label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %.pn11, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEEB1o_.exit17: ; preds = %._crit_edge
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.j:                                             ; preds = %.lr.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit
  %i.u = phi i64 [ %i.m, %.lr.ph ], [ %i.bl, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit ] ; 3 uses
  %i.v = add nsw i64 %i.u, -1                     ; 2 uses
  store i64 %i.v, ptr %i.l, align 8
  %i.w = load i64, ptr %i.d, align 8, !range !10, !noundef !4
  %i.x = icmp samesign ult i64 %i.v, %i.w
  call void @llvm.assume(i1 %i.x)
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4
  %i.z = icmp samesign ult i64 %i.u, 1152921504606846977
  call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr [8 x i8], ptr %i.y, i64 %i.u
  %1 = getelementptr i8, ptr %i.aa, i64 -8
  %i.ab = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.l, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #21
          to label %bb.z unwind label %bb.ac

.loopexit:                                        ; preds = %bb.l
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 112 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx30, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx31, align 8 ; 2 uses
  store i64 0, ptr %i.af, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store i64 0, ptr %.sroa.57.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ag = icmp ult i64 %.sroa.5.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.5.0.copyload
  store ptr %.sroa.4.0.copyload, ptr %i.b, align 8
  store i64 %.sroa.0.0.copyload, ptr %i.p, align 8
  store ptr %.sroa.4.0.copyload, ptr %i.q, align 8
  store ptr %i.ah, ptr %i.r, align 8
  invoke void @_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB1a_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 8, !range !8, !noundef !4
  %i.al = icmp eq i8 %i.ak, 4
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 56 ; 6 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !9

bb.o:                                             ; preds = %bb.y, %bb.m
  %i.ap = phi ptr [ %.pre32, %bb.y ], [ %i.ai, %bb.m ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !557)
  call void @llvm.experimental.noalias.scope.decl(metadata !558)
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !559, !noundef !4
  %i.ar = add i64 %i.aq, -1                       ; 2 uses
  store i64 %i.ar, ptr %i.ap, align 8, !noalias !559
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit unwind label %bb.f

bb.q:                                             ; preds = %bb.n
  store i64 -1, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !noundef !4 ; 5 uses
  store ptr null, ptr %i.at, align 8
  %.not = icmp eq ptr %i.au, null
  br i1 %.not, label %bb.y, label %bb.s

bb.r:                                             ; preds = %bb.n
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #21
          to label %bb.z unwind label %.loopexit.split-lp

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.au, ptr %i.a, align 8, !noalias !560
  %i.av = load i64, ptr %i.l, align 8, !alias.scope !560, !noundef !4 ; 3 uses
  %i.aw = load i64, ptr %i.d, align 8, !range !10, !alias.scope !560, !noundef !4
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.t, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8grow_oneB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load i64, ptr %i.au, align 8, !noalias !561, !noundef !4
  %i.ba = add i64 %i.az, -1                       ; 2 uses
  store i64 %i.ba, ptr %i.au, align 8, !noalias !561
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %.body18

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #18
          to label %.body18 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit: ; preds = %bb.s, %bb.t
  %i.bd = load ptr, ptr %i.o, align 8, !alias.scope !560, !nonnull !4, !noundef !4
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.av
  store ptr %i.au, ptr %i.be, align 8
  %i.bf = add i64 %i.av, 1
  store i64 %i.bf, ptr %i.l, align 8, !alias.scope !560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.am, align 8
  %.pre32.pre = load ptr, ptr %i.c, align 8, !alias.scope !559
  %i.bg = add i64 %.pre, 1
  br label %bb.y

.body18:                                          ; preds = %bb.u, %bb.v
  %i.bh = load i64, ptr %i.am, align 8, !noundef !4
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.am, align 8
  br label %bb.aa

bb.x:                                             ; preds = %bb.ab, %bb.d
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.c, %bb.x
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.y:                                             ; preds = %bb.q, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit
  %.pre32 = phi ptr [ %i.ai, %bb.q ], [ %.pre32.pre, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit ]
  %i.bk = phi i64 [ 0, %bb.q ], [ %i.bg, %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE8push_mutBV_.exit ]
  store i64 %i.bk, ptr %i.am, align 8
  br label %bb.o

bb.z:                                             ; preds = %bb.r, %bb.k
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bl = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %._crit_edge, label %bb.j

bb.aa:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.body18, %bb.ac
  %.pn.pn = phi { ptr, i32 } [ %i.br, %bb.ac ], [ %i.ay, %.body18 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !562)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  %i.bn = load ptr, ptr %i.c, align 8, !alias.scope !564, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !564, !noundef !4
  %i.bp = add i64 %i.bo, -1                       ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !noalias !564
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit21 unwind label %bb.x

bb.ac:                                            ; preds = %bb.k
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsk_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_8QualNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 2, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8ENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noundef nonnull align 8 captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 2 uses
end_hunk_1
