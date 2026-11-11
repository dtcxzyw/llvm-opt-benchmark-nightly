Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/similar-dab4460042c78509.similar.d6993f1c40b105e6-cgu.05?download=true
inline.NumInlined: 138
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr14tokenize_words:bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsiqiOkcJdymw_7similar.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp145
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr17ends_with_newline(ptr noalias noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality !guid !191 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_suffix_ofCsiqiOkcJdymw_7similar.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !192, !noalias !193, !noundef !4 ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.c, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit17.i.i.i.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit17.i.i.i.i: ; preds = %bb.b
  %i.f = icmp ne i64 %1, 1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds i8, ptr %i.a, i64 -2
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !192, !noalias !193, !noundef !4 ; 3 uses
  %i.i = and i8 %i.h, 31
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp slt i8 %i.h, -64
  br i1 %i.k, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit19.i.i.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  br label %.preheader.preheader.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit19.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit17.i.i.i.i
  %i.m = icmp ne i64 %1, 2
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds i8, ptr %i.a, i64 -3
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !192, !noalias !193, !noundef !4 ; 3 uses
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i32
  %i.r = icmp slt i8 %i.o, -64
  br i1 %i.r, label %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit21.i.i.i.i, label %bb.e

bb.d:                                             ; preds = %bb.e, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit17.i.i.i.i
  %.sroa.010.0.i.i.i.i = phi i32 [ %i.ai, %bb.e ], [ %i.j, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit17.i.i.i.i ]
  %i.s = shl nuw nsw i32 %.sroa.010.0.i.i.i.i, 6
  %i.t = and i8 %i.d, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u
  br label %.preheader.preheader.i

_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit21.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit19.i.i.i.i
  %i.w = icmp ne i64 %1, 3
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -4
  %i.y = load i8, ptr %i.x, align 1, !alias.scope !192, !noalias !193, !noundef !4
  %i.z = and i8 %i.y, 7
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = and i8 %i.o, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit21.i.i.i.i, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit19.i.i.i.i
  %.sroa.010.1.i.i.i.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit21.i.i.i.i ], [ %i.q, %_RNvXs2K_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCsiqiOkcJdymw_7similar.exit19.i.i.i.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i.i.i.i, 6
  %i.ag = and i8 %i.h, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %bb.d

.preheader.preheader.i:                           ; preds = %bb.d, %bb.c
  %.sroa.4.1.i.ph.i.i.i = phi i32 [ %i.l, %bb.c ], [ %i.v, %bb.d ] ; 3 uses
  %i.aj = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.aj)
  %switch.selectcmp.case1.i = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 13
  %switch.selectcmp.case2.i = icmp eq i32 %.sroa.4.1.i.ph.i.i.i, 10
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  br label %_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_suffix_ofCsiqiOkcJdymw_7similar.exit

_RNvYINtNtNtCs4NRVxsYgnAr_4core3str7pattern18MultiCharEqPatternRScENtB5_7Pattern12is_suffix_ofCsiqiOkcJdymw_7similar.exit: ; preds = %bb.a, %.preheader.preheader.i
  %storemerge3.i.i = phi i1 [ false, %bb.a ], [ %switch.selectcmp.i, %.preheader.preheader.i ]
  ret i1 %storemerge3.i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr27tokenize_lines_and_newlines(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !212 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 14 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit, %bb.a
  %i.e = phi i64 [ 0, %bb.a ], [ %i.fc, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit ] ; 3 uses
  %.sroa.31.0 = phi i32 [ -2, %bb.a ], [ %.sroa.3.0.i.i.i56, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit ] ; 2 uses
  %.sroa.29.0 = phi i64 [ undef, %bb.a ], [ %.sroa.0.0.i.i.i57, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit ]
  %.sroa.22.0 = phi i64 [ 0, %bb.a ], [ %.sroa.22.554, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %1, %bb.a ], [ %.sroa.0.755, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit ] ; 8 uses
  %.not = icmp eq i32 %.sroa.31.0, -2
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.f = ptrtoint ptr %.sroa.0.0 to i64
  %i.g = icmp eq ptr %.sroa.0.0, %i.d
  br i1 %i.g, label %.thread131, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 1 ; 3 uses
  %i.i = load i8, ptr %.sroa.0.0, align 1, !noalias !213, !noundef !4 ; 5 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %bb.e, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i: ; preds = %bb.d
  %i.k = and i8 %i.i, 31
  %i.l = zext nneg i8 %i.k to i32                 ; 3 uses
  %i.m = icmp ne ptr %i.h, %i.d
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 2 ; 3 uses
  %i.o = load i8, ptr %i.h, align 1, !noalias !213, !noundef !4
  %i.p = shl nuw nsw i32 %i.l, 6
  %i.q = and i8 %i.o, 63
  %i.r = zext nneg i8 %i.q to i32                 ; 2 uses
  %i.s = or disjoint i32 %i.p, %i.r
  %i.t = icmp samesign ugt i8 %i.i, -33
  br i1 %i.t, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i8 %i.i to i32
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i
  %i.v = icmp ne ptr %i.n, %i.d
  call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 3 ; 3 uses
  %i.x = load i8, ptr %i.n, align 1, !noalias !213, !noundef !4
  %i.y = shl nuw nsw i32 %i.r, 6
  %i.z = and i8 %i.x, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa             ; 2 uses
  %i.ac = shl nuw nsw i32 %i.l, 12
  %i.ad = or disjoint i32 %i.ab, %i.ac
  %i.ae = icmp samesign ugt i8 %i.i, -17
  br i1 %i.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i, label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i
  %i.af = icmp ne ptr %i.w, %i.d
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.ah = load i8, ptr %i.w, align 1, !noalias !213, !noundef !4
  %i.ai = shl nuw nsw i32 %i.l, 18
  %i.aj = and i32 %i.ai, 1835008
  %i.ak = shl nuw nsw i32 %i.ab, 6
  %i.al = and i8 %i.ah, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = or disjoint i32 %i.an, %i.aj
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i, %bb.e, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i
  %.sroa.0.4 = phi ptr [ %i.h, %bb.e ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i ], [ %i.w, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i ], [ %i.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i ] ; 2 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.u, %bb.e ], [ %i.ao, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i ], [ %i.ad, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i ], [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i ] ; 2 uses
  %i.ap = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.ap)
  %i.aq = ptrtoint ptr %.sroa.0.4 to i64
  %i.ar = sub i64 %.sroa.22.0, %i.f
  %i.as = add i64 %i.ar, %i.aq
  br label %bb.j

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.z
  %lpad.loopexit.split-lp159 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.i

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsiqiOkcJdymw_7similar.exit unwind label %bb.ab

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.b
  %.sroa.22.1 = phi i64 [ %.sroa.22.0, %bb.b ], [ %i.as, %bb.f ] ; 4 uses
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.b ], [ %.sroa.0.4, %bb.f ] ; 10 uses
  %.sroa.7.0 = phi i32 [ %.sroa.31.0, %bb.b ], [ %.sroa.4.0.i.ph.i, %bb.f ] ; 6 uses
  %.sroa.01.0 = phi i64 [ %.sroa.29.0, %bb.b ], [ %.sroa.22.0, %bb.f ] ; 10 uses
  switch i32 %.sroa.7.0, label %switch.edge [
    i32 -1, label %.thread131
    i32 13, label %.thread136
    i32 10, label %.thread136
  ]

.thread131:                                       ; preds = %bb.c, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

switch.edge:                                      ; preds = %bb.j
  %i.av = icmp samesign ult i32 %.sroa.7.0, 1114112
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp samesign ult i32 %.sroa.7.0, 128
  br i1 %i.aw, label %bb.m, label %bb.k

bb.k:                                             ; preds = %switch.edge
  %i.ax = icmp samesign ult i32 %.sroa.7.0, 2048
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i32 %.sroa.7.0, 65536
  %. = select i1 %i.ay, i64 3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %switch.edge
  %.sroa.08.0 = phi i64 [ 2, %bb.k ], [ %., %bb.l ], [ 1, %switch.edge ]
  %i.az = add i64 %.sroa.08.0, %.sroa.01.0        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.ba = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.ba, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread, label %.lr.ph.split.preheader

.thread136:                                       ; preds = %bb.j, %bb.j
  %i.bb = icmp samesign ult i32 %.sroa.7.0, 1114112
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add i64 %.sroa.01.0, 1                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1) ]
  %i.bd = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.bd, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %bb.m
  %3 = ptrtoint ptr %.sroa.0.1 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.thread136
  %4 = ptrtoint ptr %.sroa.0.1 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %switch.edge27.thr_comm.us
  %i.be = phi i64 [ %i.co, %switch.edge27.thr_comm.us ], [ %4, %.lr.ph.split.us.preheader ]
  %.sroa.05.071.us = phi i64 [ %i.cr, %switch.edge27.thr_comm.us ], [ %i.bc, %.lr.ph.split.us.preheader ] ; 2 uses
  %.sroa.0.270.us = phi ptr [ %.sroa.0.6.us, %switch.edge27.thr_comm.us ], [ %.sroa.0.1, %.lr.ph.split.us.preheader ] ; 5 uses
  %.sroa.22.269.us = phi i64 [ %i.cq, %switch.edge27.thr_comm.us ], [ %.sroa.22.1, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0.270.us, i64 1 ; 3 uses
  %i.bg = load i8, ptr %.sroa.0.270.us, align 1, !noalias !214, !noundef !4 ; 5 uses
  %i.bh = icmp sgt i8 %i.bg, -1
  br i1 %i.bh, label %bb.n, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us: ; preds = %.lr.ph.split.us
  %i.bi = and i8 %i.bg, 31
  %i.bj = zext nneg i8 %i.bi to i32               ; 3 uses
  %i.bk = icmp ne ptr %i.bf, %i.d
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.270.us, i64 2 ; 3 uses
  %i.bm = load i8, ptr %i.bf, align 1, !noalias !214, !noundef !4
  %i.bn = shl nuw nsw i32 %i.bj, 6
  %i.bo = and i8 %i.bm, 63
  %i.bp = zext nneg i8 %i.bo to i32               ; 2 uses
  %i.bq = or disjoint i32 %i.bn, %i.bp
  %i.br = icmp samesign ugt i8 %i.bg, -33
  br i1 %i.br, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us
  %i.bs = icmp ne ptr %i.bl, %i.d
  call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.270.us, i64 3 ; 3 uses
  %i.bu = load i8, ptr %i.bl, align 1, !noalias !214, !noundef !4
  %i.bv = shl nuw nsw i32 %i.bp, 6
  %i.bw = and i8 %i.bu, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = shl nuw nsw i32 %i.bj, 12
  %i.ca = or disjoint i32 %i.by, %i.bz
  %i.cb = icmp samesign ugt i8 %i.bg, -17
  br i1 %i.cb, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i.us, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i.us: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us
  %i.cc = icmp ne ptr %i.bt, %i.d
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.270.us, i64 4
  %i.ce = load i8, ptr %i.bt, align 1, !noalias !214, !noundef !4
  %i.cf = shl nuw nsw i32 %i.bj, 18
  %i.cg = and i32 %i.cf, 1835008
  %i.ch = shl nuw nsw i32 %i.by, 6
  %i.ci = and i8 %i.ce, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.ch, %i.cj
  %i.cl = or disjoint i32 %i.ck, %i.cg
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cm = zext nneg i8 %i.bg to i32
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us: ; preds = %bb.n, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us
  %.sroa.0.6.us = phi ptr [ %i.bf, %bb.n ], [ %i.cd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i.us ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us ], [ %i.bl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.us = phi i32 [ %i.cm, %bb.n ], [ %i.cl, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i.us ], [ %i.ca, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i.us ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i.us ] ; 3 uses
  %i.cn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.us, 1114112
  call void @llvm.assume(i1 %i.cn)
  %i.co = ptrtoint ptr %.sroa.0.6.us to i64       ; 2 uses
  %i.cp = sub i64 %i.co, %i.be
  %i.cq = add i64 %i.cp, %.sroa.22.269.us         ; 3 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.us, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread [
    i32 10, label %switch.edge27.thr_comm.us
    i32 13, label %switch.edge27.thr_comm.us
  ]

switch.edge27.thr_comm.us:                        ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us
  %i.cr = add i64 %.sroa.05.071.us, 1             ; 2 uses
  %i.cs = icmp eq ptr %.sroa.0.6.us, %i.d
  br i1 %i.cs, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %.thread
  %i.ct = phi i64 [ %i.ed, %.thread ], [ %3, %.lr.ph.split.preheader ]
  %.sroa.05.071 = phi i64 [ %i.et, %.thread ], [ %i.az, %.lr.ph.split.preheader ] ; 3 uses
  %.sroa.0.270 = phi ptr [ %.sroa.0.6, %.thread ], [ %.sroa.0.1, %.lr.ph.split.preheader ] ; 5 uses
  %.sroa.22.269 = phi i64 [ %i.ef, %.thread ], [ %.sroa.22.1, %.lr.ph.split.preheader ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.270, i64 1 ; 3 uses
  %i.cv = load i8, ptr %.sroa.0.270, align 1, !noalias !214, !noundef !4 ; 5 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.o, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i: ; preds = %.lr.ph.split
  %i.cx = and i8 %i.cv, 31
  %i.cy = zext nneg i8 %i.cx to i32               ; 3 uses
  %i.cz = icmp ne ptr %i.cu, %i.d
  call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.270, i64 2 ; 3 uses
  %i.db = load i8, ptr %i.cu, align 1, !noalias !214, !noundef !4
  %i.dc = shl nuw nsw i32 %i.cy, 6
  %i.dd = and i8 %i.db, 63
  %i.de = zext nneg i8 %i.dd to i32               ; 2 uses
  %i.df = or disjoint i32 %i.dc, %i.de
  %i.dg = icmp samesign ugt i8 %i.cv, -33
  br i1 %i.dg, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit

bb.o:                                             ; preds = %.lr.ph.split
  %i.dh = zext nneg i8 %i.cv to i32
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i
  %i.di = icmp ne ptr %i.da, %i.d
  call void @llvm.assume(i1 %i.di)
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.270, i64 3 ; 3 uses
  %i.dk = load i8, ptr %i.da, align 1, !noalias !214, !noundef !4
  %i.dl = shl nuw nsw i32 %i.de, 6
  %i.dm = and i8 %i.dk, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dl, %i.dn            ; 2 uses
  %i.dp = shl nuw nsw i32 %i.cy, 12
  %i.dq = or disjoint i32 %i.do, %i.dp
  %i.dr = icmp samesign ugt i8 %i.cv, -17
  br i1 %i.dr, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i
  %i.ds = icmp ne ptr %i.dj, %i.d
  call void @llvm.assume(i1 %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.270, i64 4
  %i.du = load i8, ptr %i.dj, align 1, !noalias !214, !noundef !4
  %i.dv = shl nuw nsw i32 %i.cy, 18
  %i.dw = and i32 %i.dv, 1835008
  %i.dx = shl nuw nsw i32 %i.do, 6
  %i.dy = and i8 %i.du, 63
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = or disjoint i32 %i.dx, %i.dz
  %i.eb = or disjoint i32 %i.ea, %i.dw
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i, %bb.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i
  %.sroa.0.6 = phi ptr [ %i.cu, %bb.o ], [ %i.dt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i ], [ %i.dj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i ], [ %i.da, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.dh, %bb.o ], [ %i.eb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit16.i.i.i.i ], [ %i.dq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit14.i.i.i.i ], [ %i.df, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiqiOkcJdymw_7similar.exit12.i.i.i.i ] ; 7 uses
  %i.ec = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.ec)
  %i.ed = ptrtoint ptr %.sroa.0.6 to i64          ; 2 uses
  %i.ee = sub i64 %i.ed, %i.ct
  %i.ef = add i64 %i.ee, %.sroa.22.269            ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i, label %switch.edge27 [
    i32 10, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread
    i32 13, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread
  ]

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread: ; preds = %switch.edge27.thr_comm.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit, %.thread, %.thread136, %bb.m
  %.sroa.05.0.lcssa = phi i64 [ %i.az, %bb.m ], [ %i.bc, %.thread136 ], [ %.sroa.05.071, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %.sroa.05.071, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %i.et, %.thread ], [ %i.cr, %switch.edge27.thr_comm.us ], [ %.sroa.05.071.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us ] ; 7 uses
  %.sroa.0.0.i.i.i57 = phi i64 [ undef, %bb.m ], [ undef, %.thread136 ], [ %.sroa.22.269, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %.sroa.22.269, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ undef, %.thread ], [ undef, %switch.edge27.thr_comm.us ], [ %.sroa.22.269.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us ]
  %.sroa.3.0.i.i.i56 = phi i32 [ -1, %bb.m ], [ -1, %.thread136 ], [ %.sroa.4.0.i.ph.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %.sroa.4.0.i.ph.i.i.i, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ -1, %.thread ], [ -1, %switch.edge27.thr_comm.us ], [ %.sroa.4.0.i.ph.i.i.i.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us ]
  %.sroa.0.755 = phi ptr [ %.sroa.0.1, %bb.m ], [ %.sroa.0.1, %.thread136 ], [ %.sroa.0.6, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %.sroa.0.6, %.thread ], [ %.sroa.0.6, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %.sroa.0.6.us, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us ], [ %.sroa.0.6.us, %switch.edge27.thr_comm.us ]
  %.sroa.22.554 = phi i64 [ %.sroa.22.1, %bb.m ], [ %.sroa.22.1, %.thread136 ], [ %i.ef, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %i.ef, %.thread ], [ %i.ef, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit ], [ %i.cq, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.us ], [ %i.cq, %switch.edge27.thr_comm.us ]
  %.not.i29 = icmp ugt i64 %.sroa.01.0, %.sroa.05.0.lcssa
  br i1 %.not.i29, label %bb.z, label %bb.p

bb.p:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread
  %i.eg = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.eg, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not5.i = icmp ult i64 %.sroa.01.0, %2
  br i1 %.not5.i, label %bb.s, label %.split.i

bb.r:                                             ; preds = %bb.s, %.split.i, %bb.p
  %i.eh = icmp eq i64 %.sroa.05.0.lcssa, 0
  br i1 %i.eh, label %bb.x, label %bb.t

.split.i:                                         ; preds = %bb.q
  %i.ei = icmp eq i64 %.sroa.01.0, %2
  br i1 %i.ei, label %bb.r, label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !215, !noundef !4
  %i.el = icmp sgt i8 %i.ek, -65
  br i1 %i.el, label %bb.r, label %bb.z

bb.t:                                             ; preds = %bb.r
  %.not6.i = icmp ult i64 %.sroa.05.0.lcssa, %2
  br i1 %.not6.i, label %bb.u, label %.split7.i

.split7.i:                                        ; preds = %bb.t
  %i.em = icmp eq i64 %.sroa.05.0.lcssa, %2
  br i1 %i.em, label %bb.x, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.0.lcssa
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !215, !noundef !4
  %i.ep = icmp sgt i8 %i.eo, -65
  br i1 %i.ep, label %bb.x, label %bb.z

switch.edge27:                                    ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit
  %i.eq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 128
  br i1 %i.eq, label %.thread, label %bb.v

bb.v:                                             ; preds = %switch.edge27
  %i.er = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 2048
  br i1 %i.er, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.es = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 65536
  %.28 = select i1 %i.es, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.v, %bb.w, %switch.edge27
  %.sroa.011.0 = phi i64 [ 2, %bb.v ], [ %.28, %bb.w ], [ 1, %switch.edge27 ]
  %i.et = add i64 %.sroa.011.0, %.sroa.05.071     ; 2 uses
  %i.eu = icmp eq ptr %.sroa.0.6, %i.d
  br i1 %i.eu, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread, label %.lr.ph.split

bb.x:                                             ; preds = %bb.u, %.split7.i, %bb.r
  %i.ev = sub nuw i64 %.sroa.05.0.lcssa, %.sroa.01.0
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0
  %i.ex = load i64, ptr %i.a, align 8, !range !7, !alias.scope !216, !noundef !4
  %i.ey = icmp eq i64 %i.e, %i.ex
  br i1 %i.ey, label %bb.y, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsiqiOkcJdymw_7similar(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReE8push_mutCsiqiOkcJdymw_7similar.exit: ; preds = %bb.y, %bb.x
  %i.ez = load ptr, ptr %i.b, align 8, !alias.scope !216, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.e ; 2 uses
  store ptr %i.ew, ptr %i.fa, align 8, !noalias !217
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.ev, ptr %i.fb, align 8
  %i.fc = add i64 %i.e, 1                         ; 2 uses
  store i64 %i.fc, ptr %i.c, align 8, !alias.scope !216
  br label %bb.b

bb.z:                                             ; preds = %bb.u, %bb.s, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjcEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1k_8PeekableNtNtNtB5_3str4iter11CharIndicesE4peek0ECsiqiOkcJdymw_7similar.exit.thread, %.split.i, %.split7.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.01.0, i64 noundef %.sroa.05.0.lcssa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #12
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.h
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.g, %bb.ab
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsiqiOkcJdymw_7similar.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.loopexit.split-lp159
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvXs5_NtNtCsiqiOkcJdymw_7similar4text11abstractioneNtB5_11DiffableStr5slice(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 !guid !220 {
bb.a:
  %.not.i = icmp ugt i64 %2, %3
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not5.i = icmp ult i64 %2, %1
  br i1 %.not5.i, label %bb.e, label %.split.i

bb.d:                                             ; preds = %bb.e, %.split.i, %bb.b
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.h, label %bb.f

.split.i:                                         ; preds = %bb.c
  %i.c = icmp eq i64 %2, %1
  br i1 %i.c, label %bb.d, label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !221, !noundef !4
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %bb.d, label %bb.i

bb.f:                                             ; preds = %bb.d
  %.not6.i = icmp ult i64 %3, %1
  br i1 %.not6.i, label %bb.g, label %.split7.i

.split7.i:                                        ; preds = %bb.f
  %i.g = icmp eq i64 %3, %1
  br i1 %i.g, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %3
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !221, !noundef !4
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %.split7.i, %bb.d
  %i.k = sub nuw i64 %3, %2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.m = insertvalue { ptr, i64 } poison, ptr %i.l, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.k, 1
  ret { ptr, i64 } %i.n

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.a, %.split.i, %.split7.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB19_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !222 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 24                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1c_.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1c_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.s = add nuw nsw i64 %.sroa.0.1.i17, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.h
  br i1 %i.t, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.q, %bb.b ]
  %i.v = icmp eq i64 %i.p, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.s, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_(ptr noalias noundef align 8 dereferenceable(24) %i.w) #13
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1c_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEEB1b_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.y, ptr %i.ab, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB15_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #11
  unreachable

bb.i:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %eh.lpad-body.i
end_hunk_0
