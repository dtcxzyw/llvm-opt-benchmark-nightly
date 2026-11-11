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
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !78, !noundef !4 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !range !5, !alias.scope !78, !noundef !4 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE4growCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i unwind label %bb.h, !noalias !79

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.s, align 8, !range !5, !alias.scope !78
  %.pre6.i = load i64, ptr %i.t, align 8, !alias.scope !78
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
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !78, !noundef !4
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp ult i64 %i.af, %i.ab
  %..i = select i1 %.not.i, i64 %i.af, i64 %i.ae  ; 2 uses
  store i64 %..i, ptr %i.ac, align 8, !alias.scope !78
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !78
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !78, !nonnull !4, !noundef !4
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
  br i1 %i.u, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.w = load i32, ptr %i.v, align 4, !noalias !120, !noundef !4
  %i.x = zext i32 %i.w to i64
  br label %bb.k

.thread70:                                        ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.o
  %i.aa = trunc nuw i64 %i.o to i32
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.am
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queue9SetResultEEB13_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #19
  br label %bb.ap

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 2, ptr %i.a, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread
  %.sink = phi i64 [ %i.fn, %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread ], [ 0, %bb.i ]
  store i64 %.sink, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.f, %bb.g
  %.sroa.01.0.i.i = phi i64 [ %i.x, %bb.g ], [ 0, %bb.f ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4 ; 3 uses
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = icmp eq i32 %i.ae, 0
  br i1 %i.ai, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.thread70, %bb.k
  %i.aj = phi ptr [ %i.z, %.thread70 ], [ %i.ah, %bb.k ]
  %.sroa.0.0.i74 = phi ptr [ %i.y, %.thread70 ], [ %i.ag, %bb.k ]
  %.sroa.4.0.i73 = phi i32 [ %i.aa, %.thread70 ], [ %i.ae, %bb.k ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %.sroa.0.02.i = phi i32 [ %i.aq, %bb.m ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.02.01.i = phi ptr [ %i.ak, %bb.m ], [ %.sroa.0.0.i74, %.lr.ph.preheader.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.02.01.i, i64 1 ; 2 uses
  %i.al = load i8, ptr %.sroa.02.01.i, align 1, !alias.scope !121, !noundef !4 ; 2 uses
  %i.am = icmp ugt i8 %i.al, 63
  br i1 %i.am, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.an = zext nneg i8 %i.al to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %2
  %.not.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i, label %bb.m, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit

bb.m:                                             ; preds = %bb.l, %.lr.ph.i
  %i.aq = add nuw i32 %.sroa.0.02.i, 1
  %i.ar = icmp eq ptr %i.ak, %i.aj
  br i1 %i.ar, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit, label %.lr.ph.i

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit: ; preds = %bb.m, %bb.l
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.02.i, %bb.l ], [ %.sroa.4.0.i73, %bb.m ] ; 9 uses
  %.not21 = icmp eq i32 %.sroa.0.0.lcssa.i, 0
  br i1 %.not21, label %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread, label %bb.n

_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread: ; preds = %bb.d, %bb.k, %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.as = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m) ; 4 uses
  %.not22 = icmp eq i32 %i.as, -1
  br i1 %.not22, label %bb.z, label %bb.w, !prof !7

bb.n:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.at = icmp ult i32 %.sroa.0.0.lcssa.i, 9
  br i1 %i.at, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = and i64 %i.o, 1
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.p, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !noalias !122, !noundef !4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ax, ptr %i.ay, align 8, !noalias !122
  %i.az = getelementptr i8, ptr %i.n, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.az) ]
  store ptr %i.az, ptr %i.m, align 8, !noalias !122
  store i32 0, ptr %i.aw, align 4, !noalias !122
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.p, %bb.o
  %i.ba = phi ptr [ %i.n, %bb.o ], [ %i.az, %bb.p ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 -1     ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !122, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %bb.q, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !7

bb.q:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.be = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !122, !nonnull !4, !noundef !4
  %i.bf = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !122, !noundef !4
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.be, i64 noundef %i.bf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.q
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bg = add nuw i64 %i.bc, 1
  store i64 %i.bg, ptr %i.bb, align 8, !noalias !122
  %i.bh = load ptr, ptr %i.m, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bj = and i64 %i.bi, 1
  %i.bk = sub nsw i64 0, %i.bj
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !122, !noundef !4
  %i.bo = ptrtoint ptr %i.bl to i64
  %.not.i.i = and i64 %i.bo, 1
  %i.bp = xor i64 %.not.i.i, 1
  %i.bq = getelementptr i8, ptr %i.bl, i64 %i.bp  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bn to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i to i64
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.02.0.insert.ext.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.r:                                             ; preds = %bb.n
  br i1 %i.q, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = and i64 %i.o, 1
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr i8, ptr %i.n, i64 %i.bs
  %i.bu = trunc i64 %i.o to i1
  br i1 %i.bu, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !noalias !124, !noundef !4
  %i.bx = zext i32 %i.bw to i64
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.v:                                             ; preds = %bb.t, %bb.s
  %.sroa.01.0.i.i.i = phi i64 [ %i.bx, %bb.t ], [ 0, %bb.s ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.v, %bb.u
  %.sroa.0.0.i3.i = phi ptr [ %i.ca, %bb.v ], [ %i.by, %bb.u ]
  %i.cb = zext nneg i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.cc = inttoptr i64 %i.cb to ptr
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i3.i, i64 range(i64 0, 9) %i.cb, i1 false), !noalias !126
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !125
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.w:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  %i.cd = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, inttoptr (i64 15 to ptr)
  br i1 %i.ce, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = icmp ult ptr %i.cd, inttoptr (i64 9 to ptr)
  br i1 %i.cf, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !noundef !4
  %i.ci = zext i32 %i.ch to i64
  br label %bb.aj

bb.z:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.am, %bb.z
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.q
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load i64, ptr %1, align 8, !noundef !4
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %1, align 8
  br label %bb.ap

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %.pre-phi = phi i64 [ %i.o, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 6 uses
  %i.cm = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bh, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 8 uses
  %.sroa.563.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.cc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bq, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.cn = icmp eq ptr %i.cm, inttoptr (i64 15 to ptr)
  br i1 %i.cn, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.co = icmp ult ptr %i.cm, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !alias.scope !127
  %i.cr = trunc nuw nsw i64 %.pre-phi to i32
  %.sroa.0.0.i39 = select i1 %i.co, i32 %i.cr, i32 %i.cq
  %i.cs = sub i32 %.sroa.0.0.i39, %.sroa.0.0.lcssa.i ; 3 uses
  %i.ct = icmp ult i32 %i.cs, 9
  br i1 %i.ct, label %bb.af, label %bb.ad

.thread.i:                                        ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cu = sub i32 0, %.sroa.0.0.lcssa.i           ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 9
  br i1 %i.cv, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ad

bb.ad:                                            ; preds = %.thread.i, %bb.ac
  %i.cw = and i64 %.pre-phi, 1
  %i.cx = icmp eq i64 %i.cw, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !alias.scope !127 ; 2 uses
  br i1 %i.cx, label %bb.ae, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.cz, ptr %i.da, align 8, !noalias !127
  %i.db = getelementptr i8, ptr %i.cm, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.db) ]
  store ptr %i.db, ptr %i.m, align 8, !alias.scope !127
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40: ; preds = %bb.ae, %bb.ad
  %i.dc = phi ptr [ %i.db, %bb.ae ], [ %i.cm, %bb.ad ]
  %i.dd = phi i32 [ 0, %bb.ae ], [ %i.cz, %bb.ad ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.df = add i32 %i.dd, %.sroa.0.0.lcssa.i
  store i32 %i.df, ptr %i.cy, align 4, !alias.scope !127
  %i.dg = load i32, ptr %i.de, align 8, !alias.scope !127, !noundef !4
  %i.dh = sub i32 %i.dg, %.sroa.0.0.lcssa.i       ; 2 uses
  store i32 %i.dh, ptr %i.de, align 8, !alias.scope !127
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

bb.af:                                            ; preds = %bb.ac
  br i1 %i.co, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = and i64 %.pre-phi, 1
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = getelementptr i8, ptr %i.cm, i64 %i.dj
  %i.dl = trunc i64 %.pre-phi to i1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !alias.scope !127
  %i.do = zext i32 %i.dn to i64
  %.sroa.01.0.i.i.i41 = select i1 %i.dl, i64 %i.do, i64 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.sroa.01.0.i.i.i41
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42: ; preds = %bb.ag, %bb.af, %.thread.i
  %i.dr = phi i32 [ %i.cs, %bb.ag ], [ %i.cu, %.thread.i ], [ %i.cs, %bb.af ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.dq, %bb.ag ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.cp, %bb.af ]
  %i.ds = zext i32 %.sroa.0.0.lcssa.i to i64
  %i.dt = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.ds
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dv = icmp eq i32 %i.dr, 0
  %i.dw = inttoptr i64 %i.dt to ptr
  %i.dx = select i1 %i.dv, ptr inttoptr (i64 15 to ptr), ptr %i.dw ; 2 uses
  store i64 0, ptr %.sroa.4.i.i38, align 8, !noalias !128
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i38, ptr nonnull readonly align 1 %i.du, i64 range(i64 0, 9) %i.dt, i1 false), !noalias !129
  %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i38, align 8, !noalias !128 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dy = icmp ult ptr %i.cm, inttoptr (i64 16 to ptr)
  br i1 %i.dy, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  %i.dz = and i64 %.pre-phi, 1
  %i.ea = sub nsw i64 0, %i.dz
  %i.eb = getelementptr i8, ptr %i.cm, i64 %i.ea  ; 5 uses
  %i.ec = trunc i64 %.pre-phi to i1               ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.ec, ptr %i.ed, ptr %i.ee
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !130, !noundef !4
  br i1 %i.ec, label %bb.ah, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  br label %.sink.split.i.i.i

bb.ah:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.ef = load i64, ptr %i.eb, align 8, !noalias !131, !noundef !4 ; 2 uses
  %i.eg = add i64 %i.ef, -1
  store i64 %i.eg, ptr %i.eb, align 8, !noalias !131
  %i.eh = icmp eq i64 %i.ef, 1
  br i1 %i.eh, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !131
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.ah, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  store ptr %i.dx, ptr %i.m, align 8, !alias.scope !127
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !127
  %i.ei = trunc i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40
  %i.ej = phi i32 [ %i.ei, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.dh, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ]
  %i.ek = phi ptr [ %i.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.dc, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ] ; 3 uses
  %i.el = icmp eq ptr %i.ek, inttoptr (i64 15 to ptr)
  br i1 %i.el, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = icmp ult ptr %i.ek, inttoptr (i64 9 to ptr)
  %i.eo = zext i32 %i.ej to i64
  %spec.select = select i1 %i.en, i64 %i.em, i64 %i.eo
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit, %bb.w, %bb.y, %bb.x
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %.sroa.062.0, %bb.ai ], [ %.sroa.062.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.0.0 = phi i32 [ %i.as, %bb.w ], [ %i.as, %bb.x ], [ %i.as, %bb.y ], [ undef, %bb.ai ], [ undef, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.5.0 = phi i64 [ undef, %bb.w ], [ undef, %bb.x ], [ undef, %bb.y ], [ %.sroa.563.0, %bb.ai ], [ %.sroa.563.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.4.0.i45.pn = phi i64 [ 0, %bb.w ], [ 1, %bb.x ], [ %i.ci, %bb.y ], [ %spec.select, %bb.ai ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.01.0 = phi i32 [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.y ], [ 1, %bb.ai ], [ 1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.01.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx6, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %i.ep = load i64, ptr %1, align 8, !noundef !4
  %i.eq = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.eq, ptr %1, align 8
  %.sroa.014.0.in = icmp eq i64 %.sroa.4.0.i45.pn, 0
  br i1 %.sroa.014.0.in, label %bb.ak, label %bb.j

bb.ak:                                            ; preds = %bb.aj
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.al, label %bb.am, !prof !6

bb.al:                                            ; preds = %bb.ak
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.es = load i64, ptr %i.e, align 8, !alias.scope !132, !noundef !4 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %bb.an

bb.am:                                            ; preds = %bb.ak
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.aa unwind label %bb.h

bb.an:                                            ; preds = %bb.al
  %i.eu = load i64, ptr %i.g, align 8, !alias.scope !132, !noundef !4 ; 2 uses
  %i.ev = add i64 %i.eu, 1                        ; 2 uses
  %i.ew = load i64, ptr %i.d, align 8, !range !5, !alias.scope !132, !noundef !4 ; 3 uses
  %.not.i48 = icmp ult i64 %i.ev, %i.ew
  %i.ex = select i1 %.not.i48, i64 0, i64 %i.ew
  %.sroa.0.0.i49 = sub nuw i64 %i.ev, %i.ex
  store i64 %.sroa.0.0.i49, ptr %i.g, align 8, !alias.scope !132
  %i.ey = add i64 %i.es, -1                       ; 2 uses
  store i64 %i.ey, ptr %i.e, align 8, !alias.scope !132
  %i.ez = icmp ult i64 %i.ey, %i.ew
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = load ptr, ptr %i.k, align 8, !alias.scope !132, !nonnull !4, !noundef !4
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.fa, i64 %i.eu ; 2 uses
  %.sroa.465.8.copyload = load ptr, ptr %i.fb, align 8, !noalias !132, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.666.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fb, i64 12
  %.sroa.666.8.copyload = load i32, ptr %.sroa.666.8..sroa_idx, align 4, !noalias !132
  %i.fc = icmp ult ptr %.sroa.465.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.fc, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50: ; preds = %bb.an
  %i.fd = ptrtoint ptr %.sroa.465.8.copyload to i64 ; 2 uses
  %i.fe = and i64 %i.fd, 1
  %i.ff = sub nsw i64 0, %i.fe
  %i.fg = getelementptr i8, ptr %.sroa.465.8.copyload, i64 %i.ff ; 5 uses
  %i.fh = trunc i64 %i.fd to i1
  br i1 %i.fh, label %bb.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fg) ]
  br label %.sink.split.i.i.i54

bb.ao:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %.sroa.0.0.i.i.i.i52.then.val = load i32, ptr %i.fi, align 4, !noalias !133, !noundef !4
  %i.fj = load i64, ptr %i.fg, align 8, !noalias !134, !noundef !4 ; 2 uses
  %i.fk = add i64 %i.fj, -1
end_hunk_0
