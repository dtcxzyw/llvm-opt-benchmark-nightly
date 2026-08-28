Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever-6a1231da06082d3a.markup5ever.74f9fa4e4cb8210a-cgu.0?download=true
inline.NumInlined: 135
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue10push_front:bb.a

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
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !64, !noundef !5
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %.sink.split.i.i

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  %i.o = load i64, ptr %i.k, align 8, !noalias !67, !noundef !5 ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !noalias !67
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

.sink.split.i.i:                                  ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i
  %.sink.in.in.in.i.i = zext i32 %.sroa.0.0.i.i.i to i64
  %.sink.in.in.i.i = add nuw nsw i64 %.sink.in.in.in.i.i, 15
  %.sink.in.i.i = and i64 %.sink.in.in.i.i, 8589934576
  %.sink.i.i = add nuw nsw i64 %.sink.in.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !67
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %0, align 8, !noundef !5
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.i, !prof !57

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !72, !noalias !75, !noundef !5 ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !range !56, !alias.scope !72, !noalias !75, !noundef !5 ; 2 uses
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE4growCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %._crit_edge.i unwind label %bb.h, !noalias !75

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.s, align 8, !range !56, !alias.scope !72, !noalias !75
  %.pre6.i = load i64, ptr %i.t, align 8, !alias.scope !72, !noalias !75
  br label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %1) #19, !noalias !72
  %i.y = load i64, ptr %0, align 8, !noundef !5
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
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !72, !noalias !75, !noundef !5
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  %i.af = add i64 %i.ae, %i.ab                    ; 2 uses
  %.not.i = icmp ult i64 %i.af, %i.ab
  %..i = select i1 %.not.i, i64 %i.af, i64 %i.ae  ; 2 uses
  store i64 %..i, ptr %i.ac, align 8, !alias.scope !72, !noalias !75
  %i.ag = add i64 %i.aa, 1
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !72, !noalias !75
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !72, !noalias !75, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %..i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !72
  %i.ak = load i64, ptr %0, align 8, !noundef !5
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
  %i.d = load i64, ptr %0, align 8, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = load i64, ptr %1, align 8, !noalias !77, !noundef !5
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.c, !prof !57

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #20
          to label %.noexc.i unwind label %.body, !noalias !77

.noexc.i:                                         ; preds = %bb.c
  unreachable

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #19, !noalias !81
  %i.k = load i64, ptr %0, align 8, !noundef !5
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %0, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !82
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1D_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
  %i.o = load i64, ptr %0, align 8, !noundef !5
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
  %.sroa.666 = alloca [4 x i8], align 4           ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = load i64, ptr %1, align 8, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !5
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !range !56, !noundef !5 ; 2 uses
  %.not20 = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not20, i64 0, i64 %i.i
  %.sroa.016.0 = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.016.0 ; 21 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 9 uses
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
  %i.w = load i32, ptr %i.v, align 4, !noalias !83, !noundef !5
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
  store i64 0, ptr %1, align 8
  br label %bb.j

bb.j:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, %bb.al, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.ad, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.l ], [ %i.cm, %bb.ad ]
  %i.ac = load i64, ptr %1, align 8, !noundef !5
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
  %i.ah = load i32, ptr %i.ag, align 8, !noundef !5 ; 3 uses
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
  %i.ao = load i8, ptr %.sroa.02.01.i, align 1, !alias.scope !86, !noundef !5 ; 2 uses
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
  br i1 %.not22, label %bb.ab, label %bb.y, !prof !89

bb.p:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit
  %i.aw = icmp ult i32 %.sroa.0.0.lcssa.i, 9
  br i1 %i.aw, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = and i64 %i.o, 1
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.r, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !noalias !90, !noundef !5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.ba, ptr %i.bb, align 8, !noalias !90
  %i.bc = getelementptr i8, ptr %i.n, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  store ptr %i.bc, ptr %i.m, align 8, !noalias !90
  store i32 0, ptr %i.az, align 4, !noalias !90
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.r, %bb.q
  %i.bd = phi ptr [ %i.n, %bb.q ], [ %i.bc, %bb.r ]
  %i.be = getelementptr i8, ptr %i.bd, i64 -1     ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noalias !90, !noundef !5 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  br i1 %i.bg, label %bb.s, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !89

bb.s:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bh = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !90, !nonnull !5, !noundef !5
  %i.bi = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !90, !noundef !5
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #20
          to label %.noexc unwind label %bb.ad

.noexc:                                           ; preds = %bb.s
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i
  %i.bj = add nuw i64 %i.bf, 1
  store i64 %i.bj, ptr %i.be, align 8, !noalias !90
  %i.bk = load ptr, ptr %i.m, align 8, !noalias !93, !nonnull !5, !noundef !5 ; 3 uses
  %i.bl = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bm = and i64 %i.bl, 1
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr i8, ptr %i.bk, i64 %i.bn  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bo) ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !noalias !90, !noundef !5
  %i.br = ptrtoint ptr %i.bo to i64
  %.not.i.i = and i64 %i.br, 1
  %i.bs = xor i64 %.not.i.i, 1
  %i.bt = getelementptr i8, ptr %i.bo, i64 %i.bs  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bt) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bq to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.ext.i = zext i32 %.sroa.0.0.lcssa.i to i64
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.02.0.insert.ext.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.t:                                             ; preds = %bb.p
  br i1 %i.q, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = and i64 %i.o, 1
  %i.bv = sub nsw i64 0, %i.bu
  %i.bw = getelementptr i8, ptr %i.n, i64 %i.bv
  %i.bx = trunc i64 %i.o to i1
  br i1 %i.bx, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.bz = load i32, ptr %i.by, align 4, !noalias !96, !noundef !5
  %i.ca = zext i32 %i.bz to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.t
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %.sroa.01.0.i.i.i = phi i64 [ %i.ca, %bb.v ], [ 0, %bb.u ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.x, %bb.w
  %.sroa.0.0.i3.i = phi ptr [ %i.cd, %bb.x ], [ %i.cb, %bb.w ]
  %i.ce = zext nneg i32 %.sroa.0.0.lcssa.i to i64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.cf = inttoptr i64 %i.ce to ptr
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.4.i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %.sroa.0.0.i3.i, i64 range(i64 0, 9) %i.ce, i1 false), !noalias !103
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit

bb.y:                                             ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  %i.cg = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, inttoptr (i64 15 to ptr)
  br i1 %i.ch, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = icmp ult ptr %i.cg, inttoptr (i64 9 to ptr)
  br i1 %i.ci, label %bb.al, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !noundef !5
  %i.cl = zext i32 %i.ck to i64
  br label %bb.al

bb.ab:                                            ; preds = %_RNvMNtNtCsa2F6HLACPlS_11markup5ever4util12smallcharsetNtB2_12SmallCharSet20nonmember_prefix_len.exit.thread
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #17
          to label %bb.ac unwind label %bb.l

bb.ac:                                            ; preds = %bb.ao, %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.s
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i
  %.pre-phi = phi i64 [ %i.o, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bl, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 6 uses
  %i.cn = phi ptr [ %i.n, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bk, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 8 uses
  %.sroa.563.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  %.sroa.062.0 = phi ptr [ %i.cf, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.bt, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.co = icmp eq ptr %i.cn, inttoptr (i64 15 to ptr)
  br i1 %i.co, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cp = icmp ult ptr %i.cn, inttoptr (i64 9 to ptr) ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !alias.scope !104
  %i.cs = trunc nuw nsw i64 %.pre-phi to i32
  %.sroa.0.0.i39 = select i1 %i.cp, i32 %i.cs, i32 %i.cr
  %i.ct = sub i32 %.sroa.0.0.i39, %.sroa.0.0.lcssa.i ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 9
  br i1 %i.cu, label %bb.ah, label %bb.af

.thread.i:                                        ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsa2F6HLACPlS_11markup5ever.exit
  %i.cv = sub i32 0, %.sroa.0.0.lcssa.i           ; 2 uses
  %i.cw = icmp ult i32 %i.cv, 9
  br i1 %i.cw, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.af

bb.af:                                            ; preds = %.thread.i, %bb.ae
  %i.cx = and i64 %.pre-phi, 1
  %i.cy = icmp eq i64 %i.cx, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !alias.scope !104 ; 2 uses
  br i1 %i.cy, label %bb.ag, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

bb.ag:                                            ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i32 %i.da, ptr %i.db, align 8, !noalias !104
  %i.dc = getelementptr i8, ptr %i.cn, i64 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dc) ]
  store ptr %i.dc, ptr %i.m, align 8, !alias.scope !104
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40: ; preds = %bb.ag, %bb.af
  %i.dd = phi ptr [ %i.dc, %bb.ag ], [ %i.cn, %bb.af ]
  %i.de = phi i32 [ 0, %bb.ag ], [ %i.da, %bb.af ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.dg = add i32 %i.de, %.sroa.0.0.lcssa.i
  store i32 %i.dg, ptr %i.cz, align 4, !alias.scope !104
  %i.dh = load i32, ptr %i.df, align 8, !alias.scope !104, !noundef !5
  %i.di = sub i32 %i.dh, %.sroa.0.0.lcssa.i       ; 2 uses
  store i32 %i.di, ptr %i.df, align 8, !alias.scope !104
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

bb.ah:                                            ; preds = %bb.ae
  br i1 %i.cp, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dj = and i64 %.pre-phi, 1
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr i8, ptr %i.cn, i64 %i.dk
  %i.dm = trunc i64 %.pre-phi to i1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.do = load i32, ptr %i.dn, align 4, !alias.scope !104
  %i.dp = zext i32 %i.do to i64
  %.sroa.01.0.i.i.i41 = select i1 %i.dm, i64 %i.dp, i64 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sroa.01.0.i.i.i41
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42: ; preds = %bb.ai, %bb.ah, %.thread.i
  %i.ds = phi i32 [ %i.ct, %bb.ai ], [ %i.cv, %.thread.i ], [ %i.ct, %bb.ah ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.dr, %bb.ai ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ %i.cq, %bb.ah ]
  %i.dt = zext i32 %.sroa.0.0.lcssa.i to i64
  %i.du = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dw = icmp eq i32 %i.ds, 0
  %i.dx = inttoptr i64 %i.du to ptr
  %i.dy = select i1 %i.dw, ptr inttoptr (i64 15 to ptr), ptr %i.dx ; 2 uses
  store i64 0, ptr %.sroa.4.i.i38, align 8, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i38, ptr nonnull readonly align 1 %i.dv, i64 range(i64 0, 9) %i.du, i1 false), !noalias !111
  %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 = load i64, ptr %.sroa.4.i.i38, align 8, !noalias !107 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i38)
  %i.dz = icmp ult ptr %i.cn, inttoptr (i64 16 to ptr)
  br i1 %i.dz, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  %i.ea = and i64 %.pre-phi, 1
  %i.eb = sub nsw i64 0, %i.ea
  %i.ec = getelementptr i8, ptr %i.cn, i64 %i.eb  ; 5 uses
  %i.ed = trunc i64 %.pre-phi to i1               ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.0.0.in.i.i.i.i = select i1 %i.ed, ptr %i.ee, ptr %i.ef
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !112, !noundef !5
  br i1 %i.ed, label %bb.aj, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  br label %.sink.split.i.i.i

bb.aj:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.eg = load i64, ptr %i.ec, align 8, !noalias !115, !noundef !5 ; 2 uses
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.ec, align 8, !noalias !115
  %i.ei = icmp eq i64 %i.eg, 1
  br i1 %i.ei, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

.sink.split.i.i.i:                                ; preds = %bb.aj, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ec, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !115
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %.sink.split.i.i.i, %bb.aj, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i42
  store ptr %i.dy, ptr %i.m, align 8, !alias.scope !104
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43, ptr %.sroa.5.0..sroa_idx6.i, align 8, !alias.scope !104
  %i.ej = trunc i64 %.sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.i38.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i43 to i32
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40
  %i.ek = phi i32 [ %i.ej, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.di, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ]
  %i.el = phi ptr [ %i.dy, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit.i ], [ %i.dd, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsa2F6HLACPlS_11markup5ever.exit.i40 ] ; 3 uses
  %i.em = icmp eq ptr %i.el, inttoptr (i64 15 to ptr)
  br i1 %i.em, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit
  %i.en = ptrtoint ptr %i.el to i64
  %i.eo = icmp ult ptr %i.el, inttoptr (i64 9 to ptr)
  %i.ep = zext i32 %i.ek to i64
  %spec.select = select i1 %i.eo, i64 %i.en, i64 %i.ep
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit, %bb.y, %bb.aa, %bb.z
  %.sroa.5.sroa.4.0 = phi ptr [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.062.0, %bb.ak ], [ %.sroa.062.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.0.0 = phi i32 [ %i.av, %bb.y ], [ %i.av, %bb.z ], [ %i.av, %bb.aa ], [ undef, %bb.ak ], [ undef, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.5.sroa.5.0 = phi i64 [ undef, %bb.y ], [ undef, %bb.z ], [ undef, %bb.aa ], [ %.sroa.563.0, %bb.ak ], [ %.sroa.563.0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.4.0.i45.pn = phi i64 [ 0, %bb.y ], [ 1, %bb.z ], [ %i.cl, %bb.aa ], [ %spec.select, %bb.ak ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  %.sroa.01.0 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ak ], [ 1, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E16unsafe_pop_frontCsa2F6HLACPlS_11markup5ever.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %.sroa.01.0, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx6, align 4
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.5.sroa.4.0, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.5.sroa.5.0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx6.sroa_idx, align 8
  %i.eq = load i64, ptr %1, align 8, !noundef !5
  %i.er = add i64 %i.eq, 1                        ; 2 uses
  store i64 %i.er, ptr %1, align 8
  %.sroa.014.0.in = icmp eq i64 %.sroa.4.0.i45.pn, 0
  br i1 %.sroa.014.0.in, label %bb.am, label %bb.j

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.666)
  %i.es = icmp eq i64 %i.er, 0
  br i1 %i.es, label %bb.an, label %bb.ao, !prof !57

bb.an:                                            ; preds = %bb.am
  store i64 -1, ptr %1, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.et = load i64, ptr %i.e, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 2 uses
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  invoke void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #17
          to label %bb.ac unwind label %bb.h

bb.ap:                                            ; preds = %bb.an
  %i.ev = load i64, ptr %i.g, align 8, !alias.scope !120, !noalias !123, !noundef !5 ; 2 uses
  %i.ew = add i64 %i.ev, 1                        ; 2 uses
  %i.ex = load i64, ptr %i.d, align 8, !range !56, !alias.scope !120, !noalias !123, !noundef !5 ; 3 uses
  %.not.i48 = icmp ult i64 %i.ew, %i.ex
  %i.ey = select i1 %.not.i48, i64 0, i64 %i.ex
  %.sroa.0.0.i49 = sub nuw i64 %i.ew, %i.ey
  store i64 %.sroa.0.0.i49, ptr %i.g, align 8, !alias.scope !120, !noalias !123
  %i.ez = add i64 %i.et, -1                       ; 2 uses
  store i64 %i.ez, ptr %i.e, align 8, !alias.scope !120, !noalias !123
  %i.fa = icmp ult i64 %i.ez, %i.ex
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = load ptr, ptr %i.k, align 8, !alias.scope !120, !noalias !123, !nonnull !5, !noundef !5
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.ev ; 2 uses
  %.sroa.465.8.copyload = load ptr, ptr %i.fc, align 8, !noalias !120, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.666.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  %.sroa.666.8.copyload = load i32, ptr %.sroa.666.8..sroa_idx, align 4, !noalias !120
  store i32 %.sroa.666.8.copyload, ptr %.sroa.666, align 4, !noalias !120
  %i.fd = icmp ult ptr %.sroa.465.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.fd, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50: ; preds = %bb.ap
  %i.fe = ptrtoint ptr %.sroa.465.8.copyload to i64 ; 2 uses
  %i.ff = and i64 %i.fe, 1
  %i.fg = sub nsw i64 0, %i.ff
  %i.fh = getelementptr i8, ptr %.sroa.465.8.copyload, i64 %i.fg ; 5 uses
  %i.fi = trunc i64 %i.fe to i1                   ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %.sroa.0.0.in.i.i.i.i51 = select i1 %i.fi, ptr %3, ptr %.sroa.666
  %.sroa.0.0.i.i.i.i52 = load i32, ptr %.sroa.0.0.in.i.i.i.i51, align 4, !noalias !125, !noundef !5
  br i1 %i.fi, label %bb.aq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  br label %.sink.split.i.i.i54

bb.aq:                                            ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i50
  %i.fj = load i64, ptr %i.fh, align 8, !noalias !128, !noundef !5 ; 2 uses
  %i.fk = add i64 %i.fj, -1
  store i64 %i.fk, ptr %i.fh, align 8, !noalias !128
  %i.fl = icmp eq i64 %i.fj, 1
  br i1 %i.fl, label %.sink.split.i.i.i54, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

.sink.split.i.i.i54:                              ; preds = %bb.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i53
  %.sink.in.in.in.i.i.i55 = zext i32 %.sroa.0.0.i.i.i.i52 to i64
  %.sink.in.in.i.i.i56 = add nuw nsw i64 %.sink.in.in.in.i.i.i55, 15
  %.sink.in.i.i.i57 = and i64 %.sink.in.in.i.i.i56, 8589934576
  %.sink.i.i.i58 = add nuw nsw i64 %.sink.in.i.i.i57, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fh, i64 noundef %.sink.i.i.i58, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !128
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1a_3fmt4UTF8EE9pop_frontCsa2F6HLACPlS_11markup5ever.exit.thread: ; preds = %bb.an, %bb.ap, %bb.aq, %.sink.split.i.i.i54
  %i.fm = load i64, ptr %1, align 8, !noundef !5
  %i.fn = add i64 %i.fm, 1
  store i64 %i.fn, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.666)
  br label %bb.j

bb.ar:                                            ; preds = %bb.h, %bb.k
  %.pn26.pn = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %.pn.pn, %bb.k ]
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue20peek_front_chunk_mut(ptr noundef nonnull align 8 %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !5
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #20
  unreachable

_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !135, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !56, !alias.scope !135, !noundef !5 ; 2 uses
  %.not3.i.i = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not3.i.i, i64 0, i64 %i.i
  %.sroa.01.0.i.i = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !135, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.01.0.i.i
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.m, %_RINvMsN_NtCskKLDkoKarTP_4core4cellINtB6_6RefMutINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE3mapB1G_NCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB2W_11BufferQueue20peek_front_chunk_mut0EB30_.exit ]
  %i.n = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.o = insertvalue { ptr, ptr } %i.n, ptr %0, 1
  ret { ptr, ptr } %i.o
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, 1114112) i32 @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue4next(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.618 = alloca [4 x i8], align 4           ; 4 uses
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !57

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %1, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #20
  unreachable

1:                                                ; preds = %bb.b
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = load i64, ptr %i.c, align 8, !range !56, !noundef !5 ; 2 uses
  %.not8 = icmp ult i64 %i.g, %i.h
  %i.i = select i1 %.not8, i64 0, i64 %i.h
  %.sroa.05.0 = sub nuw i64 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %.sroa.05.0 ; 3 uses
  %i.m = tail call fastcc noundef i32 @_RNvMsz_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14pop_front_charCsa2F6HLACPlS_11markup5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l) ; 4 uses
  %.not9 = icmp eq i32 %i.m, -1
  br i1 %.not9, label %bb.j, label %bb.g, !prof !89

bb.e:                                             ; preds = %.thread22, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit, %bb.i, %1
  %.sroa.0.0 = phi i32 [ %i.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit ], [ %i.m, %bb.i ], [ -1, %1 ], [ %i.m, %.thread22 ]
  ret i32 %.sroa.0.0

bb.f:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load i64, ptr %0, align 8, !noundef !5
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %0, align 8
  resume { ptr, i32 } %i.n

bb.g:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.r = icmp eq ptr %i.q, inttoptr (i64 15 to ptr)
  br i1 %i.r, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.s = load i64, ptr %0, align 8, !noundef !5
  %i.t = add i64 %i.s, 1                          ; 2 uses
  store i64 %i.t, ptr %0, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = icmp ult ptr %i.q, inttoptr (i64 9 to ptr)
  br i1 %i.u, label %.thread22, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.w = load i32, ptr %i.v, align 8, !noundef !5
  %i.x = icmp eq i32 %i.w, 0
  %i.y = load i64, ptr %0, align 8, !noundef !5
  %i.z = add i64 %i.y, 1                          ; 2 uses
  store i64 %i.z, ptr %0, align 8
  br i1 %i.x, label %bb.l, label %bb.e

.thread22:                                        ; preds = %bb.h
  %2 = load i64, ptr %0, align 8, !noundef !5
  %3 = add i64 %2, 1
  store i64 %3, ptr %0, align 8
  br label %bb.e

bb.j:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 21, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17
          to label %bb.k unwind label %bb.f

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %.thread, %bb.i
  %i.aa = phi i64 [ %i.t, %.thread ], [ %i.z, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618)
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %bb.n, !prof !57

bb.m:                                             ; preds = %bb.l
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.ac = load i64, ptr %i.d, align 8, !alias.scope !138, !noalias !141, !noundef !5 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit, label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = load i64, ptr %i.f, align 8, !alias.scope !138, !noalias !141, !noundef !5 ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 2 uses
  %i.ag = load i64, ptr %i.c, align 8, !range !56, !alias.scope !138, !noalias !141, !noundef !5 ; 3 uses
  %.not.i = icmp ult i64 %i.af, %i.ag
  %i.ah = select i1 %.not.i, i64 0, i64 %i.ag
  %.sroa.0.0.i15 = sub nuw i64 %i.af, %i.ah
  store i64 %.sroa.0.0.i15, ptr %i.f, align 8, !alias.scope !138, !noalias !141
  %i.ai = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ai, ptr %i.d, align 8, !alias.scope !138, !noalias !141
  %i.aj = icmp ult i64 %i.ai, %i.ag
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.j, align 8, !alias.scope !138, !noalias !141, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.ae ; 2 uses
  %.sroa.417.8.copyload = load ptr, ptr %i.al, align 8, !noalias !138, !nonnull !5, !noundef !5 ; 3 uses
  %.sroa.618.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  %.sroa.618.8.copyload = load i32, ptr %.sroa.618.8..sroa_idx, align 4, !noalias !138
  store i32 %.sroa.618.8.copyload, ptr %.sroa.618, align 4, !noalias !138
  %i.am = icmp ult ptr %.sroa.417.8.copyload, inttoptr (i64 16 to ptr)
  br i1 %i.am, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %bb.o
  %i.an = ptrtoint ptr %.sroa.417.8.copyload to i64 ; 2 uses
  %i.ao = and i64 %i.an, 1
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr i8, ptr %.sroa.417.8.copyload, i64 %i.ap ; 5 uses
  %i.ar = trunc i64 %i.an to i1                   ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.0.0.in.i.i.i.i = select i1 %i.ar, ptr %4, ptr %.sroa.618
  %.sroa.0.0.i.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i.i, align 4, !noalias !143, !noundef !5
  br i1 %i.ar, label %bb.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  br label %.sink.split.i.i.i

bb.p:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %i.as = load i64, ptr %i.aq, align 8, !noalias !146, !noundef !5 ; 2 uses
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.aq, align 8, !noalias !146
  %i.au = icmp eq i64 %i.as, 1
  br i1 %i.au, label %.sink.split.i.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit

.sink.split.i.i.i:                                ; preds = %bb.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i.i
  %.sink.in.in.in.i.i.i = zext i32 %.sroa.0.0.i.i.i.i to i64
  %.sink.in.in.i.i.i = add nuw nsw i64 %.sink.in.in.in.i.i.i, 15
  %.sink.in.i.i.i = and i64 %.sink.in.in.i.i.i, 8589934576
  %.sink.i.i.i = add nuw nsw i64 %.sink.in.i.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aq, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !146
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB12_3fmt4UTF8EEECsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.m, %.sink.split.i.i.i, %bb.p, %bb.o
  %5 = load i64, ptr %0, align 8, !noundef !5
  %6 = add i64 %5, 1
  store i64 %6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 -1, 1114112) i32 @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue4peek(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5   ; 3 uses
  %i.b = icmp ult i64 %i.a, 9223372036854775807
  br i1 %i.b, label %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE6borrowCsa2F6HLACPlS_11markup5ever.exit, label %bb.b, !prof !57

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #20
  unreachable

_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE6borrowCsa2F6HLACPlS_11markup5ever.exit: ; preds = %bb.a
  %i.c = add nuw nsw i64 %i.a, 1
  store i64 %i.c, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !noundef !5
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE6borrowCsa2F6HLACPlS_11markup5ever.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !56, !noundef !5 ; 2 uses
  %.not5 = icmp ult i64 %i.h, %i.i
  %i.j = select i1 %.not5, i64 0, i64 %i.i
  %.sroa.02.0 = sub nuw i64 %i.h, %i.j
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %.sroa.02.0 ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 2 uses
  %i.p = icmp eq ptr %i.n, inttoptr (i64 15 to ptr)
  br i1 %i.p, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = icmp ult ptr %i.n, inttoptr (i64 9 to ptr)
  br i1 %i.q, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread11.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = and i64 %i.o, 1
  %i.s = sub nsw i64 0, %i.r
  %i.t = getelementptr i8, ptr %i.n, i64 %i.s
  %i.u = trunc i64 %i.o to i1
  br i1 %i.u, label %bb.f, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.w = load i32, ptr %i.v, align 4, !noalias !153, !noundef !5
  %i.x = zext i32 %i.w to i64
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread11.i: ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.g

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i: ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i = phi i64 [ %i.x, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.01.0.i.i.i
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread11.i
  %.sroa.0.0.i15.i = phi ptr [ %i.y, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread11.i ], [ %i.ac, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i ] ; 4 uses
  %i.ae = load i8, ptr %.sroa.0.0.i15.i, align 1, !noalias !156, !noundef !5 ; 5 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.h, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i: ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15.i, i64 1
  %i.ah = and i8 %i.ae, 31
  %i.ai = zext nneg i8 %i.ah to i32               ; 3 uses
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !156, !noundef !5
  %i.ak = shl nuw nsw i32 %i.ai, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32               ; 2 uses
  %i.an = or disjoint i32 %i.ak, %i.am
  %i.ao = icmp samesign ugt i8 %i.ae, -33
  br i1 %i.ao, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, label %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = zext nneg i8 %i.ae to i32
  br label %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !156, !noundef !5
  %i.as = shl nuw nsw i32 %i.am, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ai, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ae, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i, label %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i15.i, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !noalias !156, !noundef !5
  %i.bb = shl nuw nsw i32 %i.ai, 18
  %i.bc = and i32 %i.bb, 1835008
  %i.bd = shl nuw nsw i32 %i.av, 6
  %i.be = and i8 %i.ba, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf
  %i.bh = or disjoint i32 %i.bg, %i.bc
  br label %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread.i: ; preds = %bb.c, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread.i
  unreachable

_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i, %bb.h, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i
  %.sroa.4.0.i3.ph.i = phi i32 [ %i.ax, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit14.i.i ], [ %i.bh, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit16.i.i ], [ %i.an, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa2F6HLACPlS_11markup5ever.exit12.i.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i3.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE6borrowCsa2F6HLACPlS_11markup5ever.exit
  %.sroa.0.0 = phi i32 [ -1, %_RNvMst_NtCskKLDkoKarTP_4core4cellINtB5_7RefCellINtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque8VecDequeINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtB1L_3fmt4UTF8EEE6borrowCsa2F6HLACPlS_11markup5ever.exit ], [ %.sroa.4.0.i3.ph.i, %_RNCNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB6_11BufferQueue4peek0Ba_.exit ]
  store i64 %i.a, ptr %0, align 8
  ret i32 %.sroa.0.0

bb.j:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsa2F6HLACPlS_11markup5ever.exit.thread.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load i64, ptr %0, align 8, !noundef !5
  %i.bl = add i64 %i.bk, -1
  store i64 %i.bl, ptr %0, align 8
  resume { ptr, i32 } %i.bj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCsa2F6HLACPlS_11markup5ever4util12buffer_queueNtB4_11BufferQueue9push_back(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
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
  %.sroa.0.0.i.i.i = load i32, ptr %.sroa.0.0.in.i.i.i, align 4, !noalias !159, !noundef !5
  br i1 %i.l, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  br label %.sink.split.i.i

bb.d:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10assume_bufCsa2F6HLACPlS_11markup5ever.exit.i.i
  %i.o = load i64, ptr %i.k, align 8, !noalias !162, !noundef !5 ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.k, align 8, !noalias !162
  %i.q = icmp eq i64 %i.o, 1
  br i1 %i.q, label %.sink.split.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

.sink.split.i.i:                                  ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsa2F6HLACPlS_11markup5ever.exit.i.i
  %.sink.in.in.in.i.i = zext i32 %.sroa.0.0.i.i.i to i64
  %.sink.in.in.i.i = add nuw nsw i64 %.sink.in.in.in.i.i, 15
  %.sink.in.i.i = and i64 %.sink.in.in.i.i, 8589934576
  %.sink.i.i = add nuw nsw i64 %.sink.in.i.i, 16
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %.sink.i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #16, !noalias !162
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsa2F6HLACPlS_11markup5ever.exit

bb.e:                                             ; preds = %bb.b
  %i.r = load i64, ptr %0, align 8, !noundef !5
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.f, label %bb.i, !prof !57

bb.f:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
end_hunk_0
