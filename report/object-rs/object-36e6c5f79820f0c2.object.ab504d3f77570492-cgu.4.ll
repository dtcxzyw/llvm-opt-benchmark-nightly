Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/object-36e6c5f79820f0c2.object.ab504d3f77570492-cgu.4?download=true
inline.NumInlined: 111
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCseHTIzroA4w0_6object:bb.a
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !10
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCseHTIzroA4w0_6object(ptr %.0.val, i64 %.16.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw [496 x i8], ptr %.0.val, i64 %.16.val ; 11 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder8FSETableECseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(496) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder8FSETableECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(80) %i.c) #24
          to label %bb.d unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder8FSETableECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(80) %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder8FSETableECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(80) %i.e) #24
          to label %.body.i.i.i unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd3fse11fse_decoder8FSETableECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(80) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch10FSEScratchECseHTIzroA4w0_6object.exit.i.i.i unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.i, %bb.h ], [ %.pn.i.i.i.i, %bb.d ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch14HuffmanScratchECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(208) %i.j) #24
          to label %bb.i unwind label %bb.p

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch10FSEScratchECseHTIzroA4w0_6object.exit.i.i.i: ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch14HuffmanScratchECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(208) %i.k)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body.i.i.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECseHTIzroA4w0_6object(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l) #24
          to label %common.resume.i.i.i unwind label %bb.p

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch10FSEScratchECseHTIzroA4w0_6object.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCskEQmjas7MZ9_6ruzstd8decoding7scratch10FSEScratchECseHTIzroA4w0_6object.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 456 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !201 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.p, label %common.resume.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %.val3.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !202, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !203
  br label %common.resume.i.i.i

bb.n:                                             ; preds = %bb.k
  %.val.i.i.i.i = load i64, ptr %i.n, align 8, !alias.scope !201 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.r, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryEECseHTIzroA4w0_6object.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !202, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !204
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryEECseHTIzroA4w0_6object.exit

common.resume.i.i.i:                              ; preds = %bb.m, %bb.l, %bb.i
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.o, %bb.l ], [ %i.o, %bb.m ], [ %.pn.i.i.i, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

bb.p:                                             ; preds = %bb.i, %.body.i.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMsT_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtBK_6HandleINtBK_7NodeRefNtNtBK_6marker5DyingpppENtB21_2KVE12drop_key_val7DropperNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryEECseHTIzroA4w0_6object.exit: ; preds = %bb.n, %bb.o
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_sleb128(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted21 = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.c = icmp eq i64 %i.f, 0
  br i1 %i.c, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.b
  store ptr %i.g, ptr %0, align 8
  store i64 %i.f, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store i64 0, ptr %i.a, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.02.033 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.b ]
  %.sroa.05.032 = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %i.d = phi i64 [ %.promoted, %.lr.ph ], [ %i.f, %bb.b ]
  %i.e = phi ptr [ %.promoted21, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.f = add nsw i64 %i.d, -1                     ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  %i.h = load i8, ptr %i.e, align 1, !noundef !4  ; 4 uses
  %i.i = icmp eq i32 %.sroa.05.032, 63
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  switch i8 %i.h, label %.loopexit.loopexit [
    i8 0, label %bb.e
    i8 127, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.c
  %i.j = and i8 %i.h, 127
  %i.k = zext nneg i8 %i.j to i64
  %i.l = and i32 %.sroa.05.032, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl i64 %i.k, %i.m
  %i.o = or i64 %i.n, %.sroa.02.033               ; 2 uses
  %i.p = add i32 %.sroa.05.032, 7                 ; 3 uses
  %i.q = icmp sgt i8 %i.h, -1
  br i1 %i.q, label %bb.f, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.d
  store ptr %i.g, ptr %0, align 8
  store i64 %i.f, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.f, %._crit_edge
  %.sroa.4.0 = phi i64 [ undef, %._crit_edge ], [ %.sroa.02.1, %bb.f ], [ undef, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ 1, %._crit_edge ], [ 0, %bb.f ], [ 1, %.loopexit.loopexit ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.s

bb.f:                                             ; preds = %bb.e
  store ptr %i.g, ptr %0, align 8
  store i64 %i.f, ptr %i.a, align 8
  %1 = icmp sgt i32 %i.p, 63
  %i.t = icmp samesign ult i8 %i.h, 64
  %or.cond = or i1 %1, %i.t
  %i.u = and i32 %i.p, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nsw i64 -1, %i.v
  %i.x = select i1 %or.cond, i64 0, i64 %i.w
  %.sroa.02.1 = or i64 %i.o, %i.x
  br label %.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @_RNvMs_NtNtCseHTIzroA4w0_6object4read4utilNtB4_5Bytes12read_uleb128(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.b = icmp eq i64 %.promoted, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted12 = load ptr, ptr %0, align 8
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.c = add i32 %.sroa.03.013, 7
  %i.d = icmp eq i64 %i.g, 0
  br i1 %i.d, label %._crit_edge.loopexit, label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.b
  store ptr %i.h, ptr %0, align 8
  store i64 %i.g, ptr %i.a, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  store i64 0, ptr %i.a, align 8
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.01.014 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.b ]
  %.sroa.03.013 = phi i32 [ 0, %.lr.ph ], [ %i.c, %bb.b ] ; 3 uses
  %i.e = phi i64 [ %.promoted, %.lr.ph ], [ %i.g, %bb.b ]
  %i.f = phi ptr [ %.promoted12, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %i.g = add nsw i64 %i.e, -1                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  %i.i = load i8, ptr %i.f, align 1, !noundef !4  ; 3 uses
  %i.j = icmp ne i32 %.sroa.03.013, 63
  %switch = icmp ult i8 %i.i, 2
  %or.cond = or i1 %i.j, %switch
  br i1 %or.cond, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = and i8 %i.i, 127
  %i.l = zext nneg i8 %i.k to i64
  %i.m = and i32 %.sroa.03.013, 63
  %i.n = zext nneg i32 %i.m to i64
  %i.o = shl i64 %i.l, %i.n
  %i.p = or i64 %i.o, %.sroa.01.014               ; 2 uses
  %i.q = icmp sgt i8 %i.i, -1
  br i1 %i.q, label %.loopexit.loopexit, label %bb.b

.loopexit.loopexit:                               ; preds = %bb.c, %bb.d
  %.sroa.4.0.ph = phi i64 [ %i.p, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.0.ph = phi i64 [ 0, %bb.d ], [ 1, %bb.c ]
  store ptr %i.h, ptr %0, align 8
  store i64 %i.g, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %._crit_edge
  %.sroa.4.0 = phi i64 [ undef, %._crit_edge ], [ %.sroa.4.0.ph, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ 1, %._crit_edge ], [ %.sroa.0.0.ph, %.loopexit.loopexit ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCseHTIzroA4w0_6object4read2pe8resourceNtB4_22ResourceDirectoryTable5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = zext i32 %3 to i64
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef ptr @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef4readNtNtBc_2pe22ImageResourceDirectoryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %.sroa.019.0.copyload = load i16, ptr %i.e, align 1
  %i.f = zext i16 %.sroa.019.0.copyload to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.020.0.copyload = load i16, ptr %i.g, align 1
  %i.h = zext i16 %.sroa.020.0.copyload to i64
  %i.i = add nuw nsw i64 %i.h, %i.f
  %i.j = call { ptr, i64 } @_RINvYRShNtNtNtCseHTIzroA4w0_6object4read8read_ref7ReadRef10read_sliceNtNtBc_2pe27ImageResourceDirectoryEntryEBc_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  store ptr %i.c, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %.sink23 = phi ptr [ @6, %bb.a ], [ @5, %bb.b ]
  %.sink = phi i64 [ 29, %bb.a ], [ 30, %bb.b ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink23, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.o, align 8
  store ptr null, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoItermNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE10dying_nextCseHTIzroA4w0_6object(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !230
  call void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE10take_frontCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
  %i.e = load ptr, ptr %i.a, align 8, !noalias !230, !noundef !4 ; 4 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !230 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5456
  %i.g = load ptr, ptr %i.f, align 8, !noalias !231, !noundef !4 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %i.h = phi ptr [ %i.k, %.lr.ph.i.i ], [ %i.g, %bb.c ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %i.e, %bb.c ]
  %.sroa.3.05.i.i = phi i64 [ %i.i, %.lr.ph.i.i ], [ %.sroa.4.0.copyload.i, %bb.c ] ; 2 uses
  %i.i = add i64 %.sroa.3.05.i.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 5512, i64 5608
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #22, !noalias !232
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 5456
  %i.k = load ptr, ptr %i.j, align 8, !noalias !231, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit.i, label %.lr.ph.i.i

_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.3.0.lcssa.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.c ], [ %i.i, %.lr.ph.i.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %i.e, %bb.c ], [ %i.h, %.lr.ph.i.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 5512, i64 5608
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #22, !noalias !232
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !230
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %i.l = add i64 %i.c, -1
  store i64 %i.l, ptr %i.b, align 8
  %i.m = tail call noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE10init_frontCseHTIzroA4w0_6object(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1), !noalias !233 ; 5 uses
  %.not.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i1, label %bb.k, label %bb.e, !prof !234

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  %.sroa.07.0.copyload.i.i = load ptr, ptr %i.m, align 8, !alias.scope !235, !noalias !233, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.48.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !alias.scope !235, !noalias !233 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.59.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i, align 8, !alias.scope !235, !noalias !233 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i, i64 5510
  %i.o = load i16, ptr %i.n, align 2, !noalias !236, !noundef !4
  %i.p = zext i16 %i.o to i64
  %i.q = icmp ult i64 %.sroa.59.0.copyload.i.i, %i.p
  br i1 %i.q, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %bb.h
  %.sroa.0.039.i.i.i.i = phi ptr [ %i.s, %bb.h ], [ %.sroa.07.0.copyload.i.i, %bb.e ] ; 4 uses
  %.sroa.5.038.i.i.i.i = phi i64 [ %i.ak, %bb.h ], [ %.sroa.48.0.copyload.i.i, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.039.i.i.i.i, i64 5456
  %i.s = load ptr, ptr %i.r, align 8, !noalias !237, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %i.t = zext i16 %i.am to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.e
  %.sroa.8.0.lcssa.i.i.i.i = phi i64 [ %.sroa.59.0.copyload.i.i, %bb.e ], [ %i.t, %._crit_edge.loopexit.i.i.i.i ] ; 4 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.48.0.copyload.i.i, %bb.e ], [ %i.ak, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.07.0.copyload.i.i, %bb.e ], [ %i.s, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.u = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.v = add nuw nsw i64 %.sroa.8.0.lcssa.i.i.i.i, 1
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingmNtNtNtCskEQmjas7MZ9_6ruzstd8decoding10dictionary10DictionaryE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECseHTIzroA4w0_6object.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.w = icmp samesign ult i64 %.sroa.8.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 5520
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %.sroa.8.0.lcssa.i.i.i.i ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_0
