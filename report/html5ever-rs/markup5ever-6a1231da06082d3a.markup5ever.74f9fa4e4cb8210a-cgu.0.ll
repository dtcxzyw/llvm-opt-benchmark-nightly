Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever-6a1231da06082d3a.markup5ever.74f9fa4e4cb8210a-cgu.0?download=true
inline.NumInlined: 135
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue10push_front:bb.a

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  %i.o = load i64, ptr %i.k, align 8, !noalias !77, !noundef !4 ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !noalias !77
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

.sink.split.i.i:                                  ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i
  %.sink.in.in.in.i.i = zext i32 %.sroa.0.0.i.i.i to i64
  %.sink.in.in.i.i = add nuw nsw i64 %.sink.in.in.in.i.i, 15
  %.sink.in.i.i = and i64 %.sink.in.in.i.i, 8589934576
  %.sink.i.i = add nuw nsw i64 %.sink.in.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !77
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %0, align 8, !noundef !4
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.i, !prof !6

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !78, !noalias !79, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !range !5, !alias.scope !78, !noalias !79, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE4growCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i unwind label %bb.h, !noalias !79

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !78, !noalias !79
  %.pre6.i = load i64, ptr %i.t, align 8, !alias.scope !78, !noalias !79
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %1) #19, !noalias !78
  %i.y = load i64, ptr %0, align 8, !noundef !4
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %0, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #17
          to label %bb.k unwind label %bb.m

bb.j:                                             ; preds = %bb.f, %._crit_edge.i
  %i.aa = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.u, %bb.f ]
  %i.ab = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !78, !noalias !79, !noundef !4
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp ult i64 %i.af, %i.ab
  %..i = select i1 %.not.i, i64 %i.af, i64 %i.ae  ; 2 uses
  store i64 %..i, ptr %i.ac, align 8, !alias.scope !78, !noalias !79
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !78, !noalias !79
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !78, !noalias !79, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %..i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !78
  %i.ak = load i64, ptr %0, align 8, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.a, %.sink.split.i.i, %bb.d, %bb.c, %bb.j
  ret void

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.h
  %.pn10 = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %.pn10

bb.m:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #19
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue12replace_with(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = load i64, ptr %0, align 8, !noundef !4
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d, !prof !6

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = load i64, ptr %1, align 8, !noalias !83, !noundef !4
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
          to label %.noexc.i unwind label %.body, !noalias !83

.noexc.i:                                         ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #19, !noalias !84
  %i.k = load i64, ptr %0, align 8, !noundef !4
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  %i.o = load i64, ptr %0, align 8, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.n)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.j, %.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.r)
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue15pop_except_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(none) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i38 = alloca i64, align 8            ; 5 uses
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = load i64, ptr %1, align 8, !noundef !4
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !range !5, !noundef !4 ; 2 uses
  %.not20 = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not20, i64 0, i64 %i.i
  %.sroa.016.0 = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.016.0 ; 21 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 8 uses
  %i.p = icmp eq ptr %i.n, inttoptr (i64 15 to ptr)
  br i1 %i.p, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ult ptr %i.n, inttoptr (i64 9 to ptr) ; 2 uses
  br i1 %i.q, label %.thread70, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %i.o, 1
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = trunc i64 %i.o to i1
  br i1 %i.u, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.w = load i32, ptr %i.v, align 4, !noalias !121, !noundef !4
  %i.x = zext i32 %i.w to i64
  br label %bb.m

.thread70:                                        ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  %i.aa = trunc nuw i64 %i.o to i32
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.ao
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
  br label %bb.ar

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread
  %.sink = phi i64 [ %i.fk, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.ad, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.ck, %bb.ad ]
  %i.ac = load i64, ptr %1, align 8, !noundef !4
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %1, align 8
  br label %bb.ar

bb.l:                                             ; preds = %bb.ab
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !4 ; 3 uses
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.01.0.i.i ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = icmp eq i32 %i.ah, 0
  br i1 %i.al, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread70, %bb.m
  %i.am = phi ptr [ %i.z, %.thread70 ], [ %i.ak, %bb.m ]
  %.sroa.0.0.i74 = phi ptr [ %i.y, %.thread70 ], [ %i.aj, %bb.m ]
  %.sroa.4.0.i73 = phi i32 [ %i.aa, %.thread70 ], [ %i.ah, %bb.m ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.preheader.i
  %.sroa.0.02.i = phi i32 [ %i.at, %bb.o ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.02.01.i = phi ptr [ %i.an, %bb.o ], [ %.sroa.0.0.i74, %.lr.ph.preheader.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.sroa.02.01.i, align 1, !alias.scope !122, !noundef !4 ; 2 uses
  %i.ap = icmp ugt i8 %i.ao, 63
  br i1 %i.ap, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.aq = zext nneg i8 %i.ao to i64
  %i.ar = shl nuw i64 1, %i.aq
  %i.as = and i64 %i.ar, %2
  %.not.i = icmp eq i64 %i.as, 0
  br i1 %.not.i, label %bb.o, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.at = add nuw i32 %.sroa.0.02.i, 1
  %i.au = icmp eq ptr %i.an, %i.am
  br i1 %i.au, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit, label %.lr.ph.i

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit: ; preds = %bb.o, %bb.n
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.02.i, %bb.n ], [ %.sroa.4.0.i73, %bb.o ] ; 9 uses
  %.not21 = icmp eq i32 %.sroa.0.0.lcssa.i, 0
  br i1 %.not21, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %bb.p

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread: ; preds = %bb.d, %bb.m, %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.av = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) ; 4 uses
  %.not22 = icmp eq i32 %i.av, -1
  br i1 %.not22, label %bb.ab, label %bb.y, !prof !7

bb.p:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.aw = icmp ult i32 %.sroa.0.0.lcssa.i, 9
  br i1 %i.aw, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %3 = and i64 %i.o, 1
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %bb.r, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !noalias !123, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !noalias !123
  %i.ba = getelementptr i8, ptr %i.n, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  store ptr %i.ba, ptr %i.m, align 8, !noalias !123
  store i32 0, ptr %i.ax, align 4, !noalias !123
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.r, %bb.q
  %i.bb = phi ptr [ %i.n, %bb.q ], [ %i.ba, %bb.r ]
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1     ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noalias !123, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -1
  br i1 %i.be, label %bb.s, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !7

bb.s:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bf = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !123, !nonnull !4, !noundef !4
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !123, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bh = add nuw i64 %i.bd, 1
  store i64 %i.bh, ptr %i.bc, align 8, !noalias !123
  %i.bi = load ptr, ptr %i.m, align 8, !noalias !124, !nonnull !4, !noundef !4 ; 3 uses
  %i.bj = ptrtoint ptr %i.bi to i64               ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.bi, i64 %i.bl  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bm) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !noalias !123, !noundef !4
  %i.bp = ptrtoint ptr %i.bm to i64
  %.not.i.i = and i64 %i.bp, 1
  %i.bq = xor i64 %.not.i.i, 1
  %i.br = getelementptr i8, ptr %i.bm, i64 %i.bq  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.br) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bo to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i to i64
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.02.0.insert.ext.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.t:                                             ; preds = %bb.p
  br i1 %i.q, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = and i64 %i.o, 1
  %i.bt = sub nsw i64 0, %i.bs
  %i.bu = getelementptr i8, ptr %i.n, i64 %i.bt
  %i.bv = trunc i64 %i.o to i1
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !noalias !125, !noundef !4
  %i.by = zext i32 %i.bx to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sroa.01.0.i.i.i = phi i64 [ %i.by, %bb.v ], [ 0, %bb.u ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i3.i = phi ptr [ %i.cb, %bb.x ], [ %i.bz, %bb.w ]
  %i.cc = zext nneg i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.cd = inttoptr i64 %i.cc to ptr
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i3.i, i64 range(i64 0, 9) %i.cc, i1 false), !noalias !127
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !126
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.y:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  %i.ce = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, inttoptr (i64 15 to ptr)
  br i1 %i.cf, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = icmp ult ptr %i.ce, inttoptr (i64 9 to ptr)
  br i1 %i.cg, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load i32, ptr %i.ch, align 8, !noundef !4
  %i.cj = zext i32 %i.ci to i64
  br label %bb.al

bb.ab:                                            ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %bb.ac unwind label %bb.l

bb.ac:                                            ; preds = %bb.ao, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.s
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %.pre-phi = phi i64 [ %i.o, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bj, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 6 uses
  %i.cl = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 8 uses
  %.sroa.563.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.cd, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.br, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  %i.cm = icmp eq ptr %i.cl, inttoptr (i64 15 to ptr)
  br i1 %i.cm, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cn = icmp ult ptr %i.cl, inttoptr (i64 9 to ptr) ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !alias.scope !128
  %i.cq = trunc nuw nsw i64 %.pre-phi to i32
  %.sroa.0.0.i39 = select i1 %i.cn, i32 %i.cq, i32 %i.cp
  %i.cr = sub i32 %.sroa.0.0.i39, %.sroa.0.0.lcssa.i ; 3 uses
  %i.cs = icmp ult i32 %i.cr, 9
  br i1 %i.cs, label %bb.ah, label %bb.af

.thread.i:                                        ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.ct = sub i32 0, %.sroa.0.0.lcssa.i           ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 9
  br i1 %i.cu, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.af

bb.af:                                            ; preds = %.thread.i, %bb.ae
  %5 = and i64 %.pre-phi, 1
  %6 = icmp eq i64 %5, 0
  %i.cv = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !alias.scope !128 ; 2 uses
  br i1 %6, label %bb.ag, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

bb.ag:                                            ; preds = %bb.af
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.cw, ptr %i.cx, align 8, !noalias !128
  %i.cy = getelementptr i8, ptr %i.cl, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  store ptr %i.cy, ptr %i.m, align 8, !alias.scope !128
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40: ; preds = %bb.ag, %bb.af
  %i.cz = phi ptr [ %i.cy, %bb.ag ], [ %i.cl, %bb.af ]
  %i.da = phi i32 [ 0, %bb.ag ], [ %i.cw, %bb.af ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dc = add i32 %i.da, %.sroa.0.0.lcssa.i
  store i32 %i.dc, ptr %i.cv, align 4, !alias.scope !128
  %i.dd = load i32, ptr %i.db, align 8, !alias.scope !128, !noundef !4
  %i.de = sub i32 %i.dd, %.sroa.0.0.lcssa.i       ; 2 uses
  store i32 %i.de, ptr %i.db, align 8, !alias.scope !128
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.cn, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.df = and i64 %.pre-phi, 1
  %i.dg = sub nsw i64 0, %i.df
  %i.dh = getelementptr i8, ptr %i.cl, i64 %i.dg
  %i.di = trunc i64 %.pre-phi to i1
  %i.dj = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !alias.scope !128
  %i.dl = zext i32 %i.dk to i64
  %.sroa.01.0.i.i.i41 = select i1 %i.di, i64 %i.dl, i64 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.01.0.i.i.i41
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42: ; preds = %bb.ai, %bb.ah, %.thread.i
  %i.do = phi i32 [ %i.cr, %bb.ai ], [ %i.ct, %.thread.i ], [ %i.cr, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.dn, %bb.ai ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.co, %bb.ah ]
  %i.dp = zext i32 %.sroa.0.0.lcssa.i to i64
  %i.dq = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38)
  %i.ds = icmp eq i32 %i.do, 0
  %i.dt = inttoptr i64 %i.dq to ptr
  %i.du = select i1 %i.ds, ptr inttoptr (i64 15 to ptr), ptr %i.dt ; 2 uses
  store i64 0, ptr %.sroa.4.i.i38, align 8, !noalias !129
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i38, ptr nonnull readonly align 1 %i.dr, i64 range(i64 0, 9) %i.dq, i1 false), !noalias !130
  %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i38, align 8, !noalias !129 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dv = icmp ult ptr %i.cl, inttoptr (i64 16 to ptr)
  br i1 %i.dv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  %i.dw = and i64 %.pre-phi, 1
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr i8, ptr %i.cl, i64 %i.dx  ; 5 uses
  %i.dz = trunc i64 %.pre-phi to i1               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.dz, ptr %i.ea, ptr %i.eb
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !131, !noundef !4
  br i1 %i.dz, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dy) ]
  br label %.sink.split.i.i.i

bb.aj:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.ec = load i64, ptr %i.dy, align 8, !noalias !132, !noundef !4 ; 2 uses
  %i.ed = add i64 %i.ec, -1
  store i64 %i.ed, ptr %i.dy, align 8, !noalias !132
  %i.ee = icmp eq i64 %i.ec, 1
  br i1 %i.ee, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dy, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !132
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.aj, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  store ptr %i.du, ptr %i.m, align 8, !alias.scope !128
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !128
  %i.ef = trunc i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40
  %i.eg = phi i32 [ %i.ef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.de, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ]
  %i.eh = phi ptr [ %i.du, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.cz, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ] ; 3 uses
  %i.ei = icmp eq ptr %i.eh, inttoptr (i64 15 to ptr)
  br i1 %i.ei, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = icmp ult ptr %i.eh, inttoptr (i64 9 to ptr)
  %i.el = zext i32 %i.eg to i64
  %spec.select = select i1 %i.ek, i64 %i.ej, i64 %i.el
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit, %bb.y, %bb.aa, %bb.z
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.062.0, %bb.ak ], [ %.sroa.062.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.0.0 = phi i32 [ %i.av, %bb.y ], [ %i.av, %bb.z ], [ %i.av, %bb.aa ], [ undef, %bb.ak ], [ undef, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.5.0 = phi i64 [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.563.0, %bb.ak ], [ %.sroa.563.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.4.0.i45.pn = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ %i.cj, %bb.aa ], [ %spec.select, %bb.ak ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.01.0 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ak ], [ 1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.01.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx6, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %i.em = load i64, ptr %1, align 8, !noundef !4
  %i.en = add i64 %i.em, 1                        ; 2 uses
  store i64 %i.en, ptr %1, align 8
  %.sroa.014.0.in = icmp eq i64 %.sroa.4.0.i45.pn, 0
  br i1 %.sroa.014.0.in, label %bb.am, label %bb.j

bb.am:                                            ; preds = %bb.al
  %i.eo = icmp eq i64 %i.en, 0
  br i1 %i.eo, label %bb.an, label %bb.ao, !prof !6

bb.an:                                            ; preds = %bb.am
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.ep = load i64, ptr %i.e, align 8, !alias.scope !133, !noalias !134, !noundef !4 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.ac unwind label %bb.h

bb.ap:                                            ; preds = %bb.an
  %i.er = load i64, ptr %i.g, align 8, !alias.scope !133, !noalias !134, !noundef !4 ; 2 uses
  %i.es = add i64 %i.er, 1                        ; 2 uses
  %i.et = load i64, ptr %i.d, align 8, !range !5, !alias.scope !133, !noalias !134, !noundef !4 ; 3 uses
  %.not.i48 = icmp ult i64 %i.es, %i.et
  %i.eu = select i1 %.not.i48, i64 0, i64 %i.et
  %.sroa.0.0.i49 = sub nuw i64 %i.es, %i.eu
  store i64 %.sroa.0.0.i49, ptr %i.g, align 8, !alias.scope !133, !noalias !134
  %i.ev = add i64 %i.ep, -1                       ; 2 uses
  store i64 %i.ev, ptr %i.e, align 8, !alias.scope !133, !noalias !134
  %i.ew = icmp ult i64 %i.ev, %i.et
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = load ptr, ptr %i.k, align 8, !alias.scope !133, !noalias !134, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.er ; 2 uses
  %.sroa.465.8.copyload = load ptr, ptr %i.ey, align 8, !noalias !133, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.666.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %.sroa.666.8.copyload = load i32, ptr %.sroa.666.8..sroa_idx, align 4, !noalias !133
  %i.ez = icmp ult ptr %.sroa.465.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.ez, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50: ; preds = %bb.ap
  %i.fa = ptrtoint ptr %.sroa.465.8.copyload to i64 ; 2 uses
  %i.fb = and i64 %i.fa, 1
  %i.fc = sub nsw i64 0, %i.fb
  %i.fd = getelementptr i8, ptr %.sroa.465.8.copyload, i64 %i.fc ; 5 uses
  %i.fe = trunc i64 %i.fa to i1
  br i1 %i.fe, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fd) ]
  br label %.sink.split.i.i.i54

bb.aq:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  %.sroa.0.0.i.i.i.i52.then.val = load i32, ptr %i.ff, align 4, !noalias !135, !noundef !4
  %i.fg = load i64, ptr %i.fd, align 8, !noalias !136, !noundef !4 ; 2 uses
  %i.fh = add i64 %i.fg, -1
  store i64 %i.fh, ptr %i.fd, align 8, !noalias !136
  %i.fi = icmp eq i64 %i.fg, 1
  br i1 %i.fi, label %.sink.split.i.i.i54, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

.sink.split.i.i.i54:                              ; preds = %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53
  %.sroa.0.0.i.i.i.i5281 = phi i32 [ %.sroa.0.0.i.i.i.i52.then.val, %bb.aq ], [ %.sroa.666.8.copyload, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53 ]
  %.sink.in.in.in.i.i.i55 = zext i32 %.sroa.0.0.i.i.i.i5281 to i64
  %.sink.in.in.i.i.i56 = add nuw nsw i64 %.sink.in.in.in.i.i.i55, 15
  %.sink.in.i.i.i57 = and i64 %.sink.in.in.i.i.i56, 8589934576
  %.sink.i.i.i58 = add nuw nsw i64 %.sink.in.i.i.i57, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fd, i64 noundef %.sink.i.i.i58, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !136
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread: ; preds = %bb.an, %bb.ap, %bb.aq, %.sink.split.i.i.i54
  %i.fj = load i64, ptr %1, align 8, !noundef !4
  %i.fk = add i64 %i.fj, 1
  br label %.sink.split

bb.ar:                                            ; preds = %bb.h, %bb.k
  %.pn26.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue20peek_front_chunk_mut(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue9push_back:bb.a
  %i.b = icmp eq ptr %i.a, inttoptr (i64 15 to ptr)
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp uge ptr %i.a, inttoptr (i64 9 to ptr)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 0
  %.sroa.0.0 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %.sroa.0.0, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i: ; preds = %bb.c
  %i.h = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.i = and i64 %i.h, 1
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr i8, ptr %i.a, i64 %i.j     ; 5 uses
  %i.l = trunc i64 %i.h to i1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.0.in.i.i.i = select i1 %i.l, ptr %i.m, ptr %i.n
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !170, !noundef !4
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %.sink.split.i.i

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  %i.o = load i64, ptr %i.k, align 8, !noalias !171, !noundef !4 ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !noalias !171
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

.sink.split.i.i:                                  ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i
  %.sink.in.in.in.i.i = zext i32 %.sroa.0.0.i.i.i to i64
  %.sink.in.in.i.i = add nuw nsw i64 %.sink.in.in.in.i.i, 15
  %.sink.in.i.i = and i64 %.sink.in.in.i.i, 8589934576
  %.sink.i.i = add nuw nsw i64 %.sink.in.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !171
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %0, align 8, !noundef !4
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.i, !prof !6

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !172, !noalias !173, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !range !5, !alias.scope !172, !noalias !173, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE4growCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i unwind label %bb.h, !noalias !173

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.t, align 8, !alias.scope !172, !noalias !173
  %.pre6.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !172, !noalias !173
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %1) #19, !noalias !172
  %i.y = load i64, ptr %0, align 8, !noundef !4
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %0, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #17
          to label %bb.k unwind label %bb.m

bb.j:                                             ; preds = %bb.f, %._crit_edge.i
  %i.aa = phi i64 [ %.pre6.i, %._crit_edge.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.ab = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.u, %bb.f ] ; 2 uses
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !172, !noalias !173
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !172, !noalias !173, !noundef !4
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp ult i64 %i.af, %i.aa
  %i.ag = select i1 %.not.i, i64 0, i64 %i.aa
  %.sroa.03.0.i = sub nuw i64 %i.af, %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !172, !noalias !173, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %.sroa.03.0.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !172
  %i.ak = load i64, ptr %0, align 8, !noundef !4
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %0, align 8
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.a, %.sink.split.i.i, %bb.d, %bb.c, %bb.j
  ret void

bb.k:                                             ; preds = %bb.i
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.h
  %.pn10 = phi { ptr, i32 } [ %i.am, %bb.m ], [ %i.x, %bb.h ]
  resume { ptr, i32 } %.pn10

bb.m:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #19
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue9swap_with(ptr nofree noundef nonnull align 8 captures(none) %0, ptr nofree noundef nonnull align 8 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !6

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = load i64, ptr %1, align 8, !noundef !4
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.d, !prof !6

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #17
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !183, !noalias !184
  %.sroa.02.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !184, !noalias !183
  store i64 %.sroa.02.0.copyload.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !183, !noalias !184
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !184, !noalias !183
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %.sroa.0.0.copyload.i.1.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !185, !noalias !186
  %.sroa.02.0.copyload.i.1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !186, !noalias !185
  store i64 %.sroa.02.0.copyload.i.1.i.i.i.i, ptr %i.g, align 8, !alias.scope !185, !noalias !186
  store i64 %.sroa.0.0.copyload.i.1.i.i.i.i, ptr %i.h, align 8, !alias.scope !186, !noalias !185
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %.sroa.0.0.copyload.i.2.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !187, !noalias !188
  %.sroa.02.0.copyload.i.2.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !188, !noalias !187
  store i64 %.sroa.02.0.copyload.i.2.i.i.i.i, ptr %i.i, align 8, !alias.scope !187, !noalias !188
  store i64 %.sroa.0.0.copyload.i.2.i.i.i.i, ptr %i.j, align 8, !alias.scope !188, !noalias !187
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %.sroa.0.0.copyload.i.3.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !189, !noalias !190
  %.sroa.02.0.copyload.i.3.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !190, !noalias !189
  store i64 %.sroa.02.0.copyload.i.3.i.i.i.i, ptr %i.k, align 8, !alias.scope !189, !noalias !190
  store i64 %.sroa.0.0.copyload.i.3.i.i.i.i, ptr %i.l, align 8, !alias.scope !190, !noalias !189
  %i.m = load i64, ptr %1, align 8, !noundef !4
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %1, align 8
  %i.o = load i64, ptr %0, align 8, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load i64, ptr %0, align 8, !noundef !4
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %0, align 8
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef range(i32 -1, 1114112) i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 10 uses
  %i.c = icmp eq ptr %i.a, inttoptr (i64 15 to ptr)
  br i1 %i.c, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %i.a, inttoptr (i64 9 to ptr)
  br i1 %i.d, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  br label %bb.c

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.b
  %i.g = and i64 %i.b, 1
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr i8, ptr %i.a, i64 %i.h
  %i.j = trunc i64 %i.b to i1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = zext i32 %i.l to i64
  %.sroa.01.0.i.i = select i1 %i.j, i64 %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i32, ptr %i.o, align 8, !noundef !4 ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = icmp eq i32 %i.p, 0
  br i1 %i.t, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit
  %i.u = phi ptr [ %i.f, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48 ], [ %i.s, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ] ; 4 uses
  %.sroa.0.0.i52 = phi ptr [ %i.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread48 ], [ %i.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ] ; 6 uses
  %i.v = ptrtoint ptr %.sroa.0.0.i52 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 1 ; 2 uses
  %i.x = load i8, ptr %.sroa.0.0.i52, align 1, !noalias !218, !noundef !4 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i: ; preds = %bb.c
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 2 ; 2 uses
  %i.ac = load i8, ptr %i.w, align 1, !noalias !218, !noundef !4
  %i.ad = shl nuw nsw i32 %i.aa, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = zext nneg i8 %i.x to i32
  br label %bb.e

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 3 ; 2 uses
  %i.ak = load i8, ptr %i.ab, align 1, !noalias !218, !noundef !4
  %i.al = shl nuw nsw i32 %i.af, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.aa, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.x, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i, label %bb.e

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i52, i64 4
  %i.at = load i8, ptr %i.aj, align 1, !noalias !218, !noundef !4
  %i.au = shl nuw nsw i32 %i.aa, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.ao, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, %bb.d, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i
  %.sroa.0.029 = phi ptr [ %i.w, %bb.d ], [ %i.as, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i ], [ %i.aj, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i ], [ %i.ab, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ai, %bb.d ], [ %i.ba, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i ], [ %i.aq, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i ], [ %i.ag, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i ] ; 5 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = ptrtoint ptr %.sroa.0.029 to i64
  %i.bd = sub i64 %i.bc, %i.v                     ; 2 uses
  %i.be = icmp eq ptr %.sroa.0.029, %i.u
  br i1 %i.be, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = load i8, ptr %.sroa.0.029, align 1, !noalias !219, !noundef !4 ; 3 uses
  %i.bg = icmp sgt i8 %i.bf, -1
  br i1 %i.bg, label %bb.g, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11: ; preds = %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 1
  %i.bi = icmp ne ptr %i.bh, %i.u
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = icmp samesign ugt i8 %i.bf, -33
  br i1 %i.bj, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15, label %bb.g

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 2
  %i.bl = icmp ne ptr %i.bk, %i.u
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i8 %i.bf, -17
  br i1 %i.bm, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16, label %bb.g

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.029, i64 3
  %i.bo = icmp ne ptr %i.bn, %i.u
  tail call void @llvm.assume(i1 %i.bo)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i16, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i15, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i11
  %i.bp = trunc i64 %i.bd to i32                  ; 5 uses
  %.not9 = icmp eq i32 %i.bp, 0
  br i1 %.not9, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.j

_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread: ; preds = %bb.e, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit, %bb.g
  %.sroa.0.1 = phi i32 [ %.sroa.4.0.i.ph.i, %bb.g ], [ -1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit ], [ %.sroa.4.0.i.ph.i, %bb.e ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.bq = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.bq, label %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread
  %i.br = and i64 %i.b, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr i8, ptr %i.a, i64 %i.bs   ; 4 uses
  %i.bu = trunc i64 %i.b to i1
  br i1 %i.bu, label %bb.i, label %bb.h

_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread: ; preds = %bb.a, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread
  %.sroa.0.154 = phi i32 [ %.sroa.0.1, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread ], [ -1, %bb.a ]
  store ptr inttoptr (i64 15 to ptr), ptr %0, align 8, !alias.scope !220
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.h:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bv, align 8, !alias.scope !220
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.i:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.0.0.i.i.i.i = load i32, ptr %i.bw, align 4, !noalias !221, !noundef !4
  %i.bx = load i64, ptr %i.bt, align 8, !noalias !222, !noundef !4 ; 2 uses
  %i.by = add i64 %i.bx, -1
  store i64 %i.by, ptr %i.bt, align 8, !noalias !222
  %i.bz = icmp eq i64 %i.bx, 1
  br i1 %i.bz, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bt, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !222
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.i
  store ptr inttoptr (i64 15 to ptr), ptr %0, align 8, !alias.scope !220
  %.sroa.57.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.57.0..sroa_idx8.i, align 8, !alias.scope !220
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.ca = icmp ult ptr %i.a, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !alias.scope !223
  %i.cd = trunc nuw nsw i64 %i.b to i32
  %.sroa.0.0.i18 = select i1 %i.ca, i32 %i.cd, i32 %i.cc ; 2 uses
  %i.ce = sub i32 %.sroa.0.0.i18, %i.bp           ; 2 uses
  %i.cf = icmp ult i32 %i.ce, 9
  %1 = and i64 %i.b, 1                            ; 2 uses
  br i1 %i.cf, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %2 = icmp eq i64 %1, 0
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !alias.scope !223 ; 2 uses
  br i1 %2, label %bb.l, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.ch, ptr %i.ci, align 8, !noalias !223
  %i.cj = getelementptr i8, ptr %i.a, i64 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  store ptr %i.cj, ptr %0, align 8, !alias.scope !223
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.l, %bb.k
  %i.ck = phi i32 [ 0, %bb.l ], [ %i.ch, %bb.k ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cm = add i32 %i.ck, %i.bp
  store i32 %i.cm, ptr %i.cg, align 4, !alias.scope !223
  %i.cn = load i32, ptr %i.cl, align 8, !alias.scope !223, !noundef !4
  %i.co = sub i32 %i.cn, %i.bp
  store i32 %i.co, ptr %i.cl, align 8, !alias.scope !223
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.j
  %i.cp = sub nsw i64 0, %1
  %i.cq = getelementptr i8, ptr %i.a, i64 %i.cp
  %i.cr = trunc i64 %i.b to i1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = zext i32 %i.ct to i64
  %.sroa.01.0.i.i.i = select i1 %i.cr, i64 %i.cu, i64 0
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.i.i = select i1 %i.ca, ptr %i.cb, ptr %i.cw
  %i.cx = and i64 %i.bd, 4294967295
  %i.cy = zext nneg i32 %i.ce to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.da = icmp eq i32 %.sroa.0.0.i18, %i.bp
  %i.db = inttoptr i64 %i.cy to ptr
  %i.dc = select i1 %i.da, ptr inttoptr (i64 15 to ptr), ptr %i.db
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !224
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.cz, i64 range(i64 0, 9) %i.cy, i1 false), !noalias !225
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !224
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  %i.dd = icmp ult ptr %i.a, inttoptr (i64 16 to ptr)
  br i1 %i.dd, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i
  %i.de = and i64 %i.b, 1
  %i.df = sub nsw i64 0, %i.de
  %i.dg = getelementptr i8, ptr %i.a, i64 %i.df   ; 5 uses
  %i.dh = trunc i64 %i.b to i1                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.dh, ptr %i.di, ptr %i.dj
  %.sroa.0.0.i.i.i.i19 = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !226, !noundef !4
  br i1 %i.dh, label %bb.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dg) ]
  br label %.sink.split.i.i.i20

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.dk = load i64, ptr %i.dg, align 8, !noalias !227, !noundef !4 ; 2 uses
  %i.dl = add i64 %i.dk, -1
  store i64 %i.dl, ptr %i.dg, align 8, !noalias !227
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %.sink.split.i.i.i20, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25

.sink.split.i.i.i20:                              ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i21 = zext i32 %.sroa.0.0.i.i.i.i19 to i64
  %.sink.in.in.i.i.i22 = add nuw nsw i64 %.sink.in.in.in.i.i.i21, 15
  %.sink.in.i.i.i23 = and i64 %.sink.in.in.i.i.i22, 8589934576
  %.sink.i.i.i24 = add nuw nsw i64 %.sink.in.i.i.i23, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %.sink.i.i.i24, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !227
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25: ; preds = %.sink.split.i.i.i20, %bb.m, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i
  store ptr %i.dc, ptr %0, align 8, !alias.scope !223
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !223
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E5clearCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %bb.h, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread
  %.sroa.0.2 = phi i32 [ %.sroa.0.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.0.154, %_RNvXs3_NtNtCskKLDkoKarTP_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread.thread ], [ %.sroa.0.1, %bb.h ], [ %.sroa.4.0.i.ph.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.4.0.i.ph.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i25 ]
  ret i32 %.sroa.0.2
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCsa2F6HLACPlS_11markup5ever9interfaceNtB5_12ExpandedNameNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !230, !noundef !4 ; 4 uses
  %i.e = trunc i64 %i.d to i8
  %i.f = and i8 %i.e, 3
  switch i8 %i.f, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.d to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !230, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.j = lshr i64 %i.d, 4
  %i.k = and i64 %i.j, 15
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.d, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !230, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs0_CsbN1FUDjLgAL_9web_atomsNtB7_18NamespaceStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !230, !nonnull !4, !align !8, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !230, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20, !noalias !230
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.sroa.4.0.i = phi i64 [ %i.i, %bb.c ], [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.s = icmp eq i64 %.sroa.4.0.i, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.418.0..sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.t, ptr %i.u, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.422.0..sroa_idx, align 8
  %i.v = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4, !align !8, !noundef !4
  %i.y = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.x, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsa2F6HLACPlS_11markup5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.t, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever, ptr %.sroa.43.0..sroa_idx, align 8
  %i.z = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !align !8, !noundef !4
  %i.ac = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.z, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noundef nonnull @21, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.1.in = phi i1 [ %i.ac, %bb.i ], [ %i.y, %bb.h ]
  ret i1 %.sroa.0.1.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtB6_7Display3fmtCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237)
  %i.b = load i64, ptr %i.a, align 8, !range !9, !alias.scope !238, !noalias !239, !noundef !4 ; 4 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 3
  switch i8 %i.d, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !240, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !240, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.d:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.b, 4
  %i.j = and i64 %i.i, 15
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.a
  %i.l = lshr i64 %i.b, 32                        ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8, !noalias !240, !noundef !4 ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXCsbN1FUDjLgAL_9web_atomsNtB4_18LocalNameStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !noalias !240, !nonnull !4, !align !8, !noundef !4
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.l ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !noalias !240, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !noalias !240, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.l, i64 noundef %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #20, !noalias !240
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache13trivial_implsINtNtB7_4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18LocalNameStaticSetENtNtCskKLDkoKarTP_4core3fmt7Display3fmtCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.c, %bb.d, %bb.f
end_hunk_1
