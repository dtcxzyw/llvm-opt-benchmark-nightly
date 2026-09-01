Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.08?download=true
inline.NumInlined: 16156
inline.NumDeleted: 5265
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_RNvXsq_NtNtCs4tdlwR1I4n2_7parquet4file10propertiesNtB5_16WriterPropertiesNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 242
  %i.q = load i8, ptr %i.p, align 2, !range !34, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !201, !noundef !4
  %.not = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBQ_4file10properties16ColumnPropertiesNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t)
          to label %bb.i unwind label %bb.h

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit ], [ %i.u, %bb.f ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #40
          to label %bb.o unwind label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.l, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.aq, %bb.l ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.e) #40
          to label %bb.e unwind label %bb.n

bb.h:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !range !201, !noundef !4
  %.not4 = icmp eq i64 %i.x, -9223372036854775808
  br i1 %.not4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata13SortingColumnENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.m
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.m ], [ -9223372036854775808, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 243
  %i.ab = load i8, ptr %i.aa, align 1, !range !34, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x i64> %i.h, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x i64> %i.j, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.l, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 %i.n, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 242
  store i8 %i.q, ptr %i.ah, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.0.0, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.am = load <2 x i64>, ptr %i.y, align 8
  store <2 x i64> %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load <2 x i64>, ptr %i.z, align 8
  store <2 x i64> %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 243
  store i8 %i.ab, ptr %i.ap, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtBV_4file10properties16ColumnPropertiesEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.j
  %.sroa.0.0.copyload1 = load i64, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.n:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtNtCs4tdlwR1I4n2_7parquet6schema5types10ColumnPathNtNtNtB1H_4file10properties16ColumnPropertiesEECs14kWLkQVSKO_14deltalake_core.exit, %bb.e
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.o:                                             ; preds = %bb.e
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsr_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsbvkFyIu7lgC_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXss_NtCsbvkFyIu7lgC_4core3fmtuNtB5_5Debug3fmt(ptr noalias nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @925, i64 noundef 2)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.d

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i, %bb.bk, %bb.d, %bb.a, %bb.bm, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %i.n, %bb.g ], [ 1, %bb.a ], [ %.sroa.0.031, %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.kk, %bb.bm ], [ %.sroa.014.5.i, %bb.bk ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.bm, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 33
  br i1 %i.h, label %bb.aw, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.j = icmp samesign ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCsbvkFyIu7lgC_4core5slice6memchr14memchr_aligned(i8 noundef %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  %i.n = zext i1 %i.m to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !42394, !noundef !4
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit: ; preds = %bb.ay, %bb.ax, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42397)
  %i.s = load i64, ptr %i.b, align 8, !range !3, !alias.scope !42397, !noalias !42400, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.r, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !34, !alias.scope !42402, !noalias !42405, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !42397, !noalias !42400 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !42402, !noalias !42405, !nonnull !4, !noundef !4 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !42402, !noalias !42405, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.y, align 8, !alias.scope !42402, !noalias !42405 ; 2 uses
  %i.ad = trunc nuw i8 %.promoted26.i to i1
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not.i.i.i.peel, label %bb.j, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.i
  %i.af = icmp eq i64 %.promoted.i, %i.ac
  br i1 %i.af, label %bb.k, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !42407, !noalias !42410, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !42412, !noundef !4 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !42412, !noundef !4
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !42412, !noundef !4
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !42412, !noundef !4
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bw, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.by, i64 3, i64 4
  br label %bb.s

bb.r:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !42397, !noalias !42400, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !42397, !noalias !42400, !nonnull !4, !noundef !4 ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !42397, !noalias !42400, !noundef !4 ; 14 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !42397, !noalias !42400, !nonnull !4, !noundef !4 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cj = load i64, ptr %i.ci, align 8, !alias.scope !42397, !noalias !42400, !noundef !4 ; 12 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.cl = add nsw i64 %i.cj, -1                   ; 4 uses
  br i1 %i.cb, label %bb.x, label %bb.aj

bb.s:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.p ], [ %..i.i.peel, %bb.q ], [ 1, %bb.o ]
  %i.cm = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42415)
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i = icmp ult i64 %i.cm, %i.ac
  br i1 %.not.i.i.i, label %bb.u, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.t
  %i.co = icmp eq i64 %i.cm, %i.ac
  br i1 %i.co, label %bb.v, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cq = load i8, ptr %i.cp, align 1, !alias.scope !42407, !noalias !42416, !noundef !4
  %i.cr = icmp sgt i8 %i.cq, -65
  br i1 %i.cr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u, %.split.i.i.i, %bb.s
  %i.cs = icmp samesign eq i64 %i.cm, %i.ac
  br i1 %i.cs, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !42417, !noundef !4 ; 3 uses
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i: ; preds = %bb.w
  %i.cw = add nuw nsw i64 %i.cm, 1
  %i.cx = icmp samesign ne i64 %i.cw, %i.ac
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp samesign ugt i8 %i.cu, -33
  br i1 %i.cy, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i
  %i.cz = add nuw nsw i64 %i.cm, 2
  %i.da = icmp samesign ne i64 %i.cz, %i.ac
  tail call void @llvm.assume(i1 %i.da)
  %i.db = icmp samesign ugt i8 %i.cu, -17
  br i1 %i.db, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i
  %i.dc = add nuw nsw i64 %i.cm, 3
  %i.dd = icmp samesign ne i64 %i.dc, %i.ac
  tail call void @llvm.assume(i1 %i.dd)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.u, %.split.i.i.i, %bb.j, %.split.i.i.i.peel
  %.lcssa150 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.j ], [ %i.cm, %.split.i.i.i ], [ %i.cm, %bb.u ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i64 noundef %.lcssa150, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @926) #41, !noalias !42416
  unreachable

bb.x:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42423)
  %.promoted.i17 = load i64, ptr %i.ck, align 8, !alias.scope !42418, !noalias !42425 ; 2 uses
  %i.de = add i64 %.promoted.i17, %i.cl           ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.cf
  br i1 %i.df, label %.lr.ph.i20, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i20:                                       ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a

.preheader96:                                     ; preds = %bb.ag
  %i.dz = add i64 %.sroa.02.0.i24279, 1           ; 2 uses
  %exitcond.not.i25 = icmp eq i64 %i.dz, %umax49.i23
  br i1 %exitcond.not.i25, label %.preheader.preheader, label %.lr.ph280

.preheader.preheader:                             ; preds = %.preheader96, %.preheader96.preheader
  br i1 %.not281, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph280:                                        ; preds = %.preheader96.preheader, %.preheader96
  %.sroa.02.0.i24279 = phi i64 [ %i.dz, %.preheader96 ], [ %i.di, %.preheader96.preheader ] ; 4 uses
  %i.ea = add i64 %.sroa.02.0.i24279, %i.dm       ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.cf
  br i1 %i.eb, label %bb.ag, label %bb.ah

.preheader:                                       ; preds = %bb.ad
  %.not = icmp eq i64 %i.ec, 0
  br i1 %.not, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph283

.lr.ph283:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i28282 = phi i64 [ %i.ec, %.preheader ], [ %i.di, %.preheader.preheader ]
  %i.ec = add i64 %.sroa.2.0.i28282, -1           ; 5 uses
  br i1 %.first_iter, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph283
  %i.ed = add i64 %i.ec, %i.dm                    ; 3 uses
  %i.ee = icmp ult i64 %i.ed, %i.cf
  br i1 %i.ee, label %bb.ad, label %bb.ae

bb.ac:                                            ; preds = %.lr.ph283
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ec, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !42428
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ec
  %i.eg = load i8, ptr %i.ef, align 1, !alias.scope !42423, !noalias !42429, !noundef !4
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ed
  %i.ei = load i8, ptr %i.eh, align 1, !alias.scope !42421, !noalias !42427, !noundef !4
  %.not.i29 = icmp eq i8 %i.eg, %i.ei
  br i1 %.not.i29, label %.preheader, label %bb.af

bb.ae:                                            ; preds = %bb.ab
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ed, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !42428
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ej = add i64 %i.dm, %i.dk
  br label %bb.aa

bb.ag:                                            ; preds = %.lr.ph280
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i24279
  %i.el = load i8, ptr %i.ek, align 1, !alias.scope !42423, !noalias !42429, !noundef !4
  %i.em = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ea
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !42421, !noalias !42427, !noundef !4
  %.not21.i27 = icmp eq i8 %i.el, %i.en
  br i1 %.not21.i27, label %.preheader96, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph280
  %i.eo = add i64 %i.dm, %i.di
  %umax.i26 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.eo)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i26, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #41, !noalias !42428
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %.reass235.reass = add i64 %i.dm, %invariant.op364
  %i.ep = add i64 %.reass235.reass, %.sroa.02.0.i24279
  br label %bb.aa

bb.aj:                                            ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42435)
  %.promoted.i11 = load i64, ptr %i.ck, align 8, !alias.scope !42430, !noalias !42437 ; 2 uses
  %i.eq = add i64 %.promoted.i11, %i.cl           ; 2 uses
  %i.er = icmp ult i64 %i.eq, %i.cf
  br i1 %i.er, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.aj
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !42430, !noalias !42437, !noundef !4
  %i.eu = load i64, ptr %i.u, align 8, !alias.scope !42430, !noalias !42437 ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !42430, !noalias !42437 ; 2 uses
  %i.ex = sub i64 %i.cj, %i.ew
  %invariant.op = sub i64 1, %i.eu
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split.i, %.lr.ph.i14
  %i.ey = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.ez = phi i64 [ %i.ca, %.lr.ph.i14 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.fa = phi i64 [ %i.eq, %.lr.ph.i14 ], [ %i.fj, %.sink.split.i ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !alias.scope !42433, !noalias !42439, !noundef !4
  %i.fd = and i8 %i.fc, 63
  %i.fe = zext nneg i8 %i.fd to i64
  %i.ff = shl nuw i64 1, %i.fe
  %i.fg = and i64 %i.ff, %i.et
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fi = add i64 %i.ey, %i.cj
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %i.eu) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.cj)
  %exitcond.not.i15273.not = icmp ult i64 %.sroa.0.0.i.i, %i.cj
  br i1 %exitcond.not.i15273.not, label %.lr.ph275, label %.preheader35.preheader

.sink.split.i:                                    ; preds = %bb.av, %bb.as, %bb.al
  %.sink.i = phi i64 [ %i.ex, %bb.as ], [ 0, %bb.av ], [ 0, %bb.al ]
  %.ph71.i = phi i64 [ %i.fy, %bb.as ], [ %i.ge, %bb.av ], [ %i.fi, %bb.al ] ; 2 uses
  %i.fj = add i64 %.ph71.i, %i.cl                 ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.cf
  br i1 %i.fk, label %bb.ak, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.an:                                            ; preds = %bb.at
  %i.fl = add i64 %.sroa.02.0.i274, 1             ; 2 uses
  %exitcond.not.i15 = icmp eq i64 %i.fl, %umax49.i
  br i1 %exitcond.not.i15, label %.preheader35.preheader, label %.lr.ph275

.preheader35.preheader:                           ; preds = %bb.an, %bb.am
  %i.fm = icmp ult i64 %i.ez, %i.eu
  br i1 %i.fm, label %.lr.ph277, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph275:                                        ; preds = %bb.am, %bb.an
  %.sroa.02.0.i274 = phi i64 [ %i.fl, %bb.an ], [ %.sroa.0.0.i.i, %bb.am ] ; 4 uses
  %i.fn = add i64 %.sroa.02.0.i274, %i.ey         ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.cf
  br i1 %i.fo, label %bb.at, label %bb.au

.preheader35:                                     ; preds = %bb.aq
  %i.fp = icmp ult i64 %i.ez, %i.fq
  br i1 %i.fp, label %.lr.ph277, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph277:                                        ; preds = %.preheader35.preheader, %.preheader35
  %.sroa.2.0.i276 = phi i64 [ %i.fq, %.preheader35 ], [ %i.eu, %.preheader35.preheader ]
  %i.fq = add i64 %.sroa.2.0.i276, -1             ; 6 uses
  %i.fr = icmp ult i64 %i.fq, %i.cj
  br i1 %i.fr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph277
  %i.fs = add i64 %i.fq, %i.ey                    ; 3 uses
  %i.ft = icmp ult i64 %i.fs, %i.cf
  br i1 %i.ft, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %.lr.ph277
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fq, i64 noundef range(i64 0, -9223372036854775808) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #41, !noalias !42440
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.fq
  %i.fv = load i8, ptr %i.fu, align 1, !alias.scope !42435, !noalias !42441, !noundef !4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fs
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !42433, !noalias !42439, !noundef !4
  %.not.i16 = icmp eq i8 %i.fv, %i.fx
  br i1 %.not.i16, label %.preheader35, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.fs, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #41, !noalias !42440
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.fy = add i64 %i.ey, %i.ew
  br label %.sink.split.i

bb.at:                                            ; preds = %.lr.ph275
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.sroa.02.0.i274
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !42435, !noalias !42441, !noundef !4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.fn
  %i.gc = load i8, ptr %i.gb, align 1, !alias.scope !42433, !noalias !42439, !noundef !4
  %.not21.i = icmp eq i8 %i.ga, %i.gc
  br i1 %.not21.i, label %bb.an, label %bb.av

bb.au:                                            ; preds = %.lr.ph275
  %i.gd = add i64 %i.ey, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.cf, i64 %i.gd)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.cf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #41, !noalias !42440
  unreachable

bb.av:                                            ; preds = %bb.at
  %.reass.reass = add i64 %i.ey, %invariant.op
  %i.ge = add i64 %.reass.reass, %.sroa.02.0.i274
  br label %.sink.split.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader35.preheader, %.preheader35, %bb.aa, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i, %bb.w, %bb.k, %bb.aj, %bb.x, %bb.n, %bb.v, %.preheader.i4
  %.sroa.0.031 = phi i8 [ 1, %.preheader ], [ 0, %bb.x ], [ 0, %.preheader.i4 ], [ 1, %bb.v ], [ 1, %.preheader.preheader ], [ 1, %bb.n ], [ 1, %.preheader35 ], [ 0, %bb.aj ], [ %.promoted26.i, %bb.k ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit16.i.i.i ], [ 1, %bb.w ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit14.i.i.i ], [ 0, %bb.aa ], [ 0, %.sink.split.i ], [ 1, %.preheader35.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.aw:                                            ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !42445)
  %i.gf = load i8, ptr %0, align 1, !alias.scope !42442, !noalias !42445, !noundef !4 ; 3 uses
  %i.gg = add nsw i64 %1, -1                      ; 2 uses
  %i.gh = icmp eq i64 %1, 2
  br i1 %i.gh, label %.thread.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gi = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %1, i64 4) ; 2 uses
  %4 = icmp ult i64 %i.gi, %1
  br i1 %4, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

bb.ay:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gj = icmp ult i64 %i.gi, %i.gl
  br i1 %i.gj, label %.lr.ph, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit

.lr.ph:                                           ; preds = %bb.ax, %bb.ay
  %i.gk = phi i64 [ %i.gl, %bb.ay ], [ %1, %bb.ax ]
  %i.gl = add nsw i64 %i.gk, -1                   ; 6 uses
  %i.gm = icmp ult i64 %i.gl, %1
  br i1 %i.gm, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i, label %bb.az

bb.az:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gl, i64 noundef range(i64 2, 33) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @235) #41, !noalias !42447
  unreachable

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %.lr.ph
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 %i.gl
  %i.go = load i8, ptr %i.gn, align 1, !alias.scope !42442, !noalias !42455, !noundef !4 ; 2 uses
  %.not.i.not.i.i = icmp eq i8 %i.go, %i.gf
  br i1 %.not.i.not.i.i, label %bb.ay, label %bb.ba

bb.ba:                                            ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0Cs14kWLkQVSKO_14deltalake_core.exit.i.i
  %i.gp = add nuw nsw i64 %1, 15
  %i.gq = icmp ult i64 %3, %i.gp
  br i1 %i.gq, label %.lr.ph.split.us.i.i, label %bb.bb

.thread.i:                                        ; preds = %bb.aw
  %i.gr = icmp ult i64 %3, 17
  br i1 %i.gr, label %.lr.ph.split.us.i.i, label %.thread93.i

.thread93.i:                                      ; preds = %.thread.i
  %i.gs = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gt = shufflevector <16 x i8> %i.gs, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !alias.scope !42442, !noalias !42445
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gu = insertelement <16 x i8> poison, i8 %i.gf, i64 0
  %i.gv = shufflevector <16 x i8> %i.gu, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.bc

.lr.ph.split.us.i.i:                              ; preds = %bb.ba, %.thread.i
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !42456, !noalias !42457
  %i.gw = icmp eq i32 %bcmp.i.i.us23.i.i, 0
  br i1 %i.gw, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gx, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !42456, !noalias !42457
  %i.gy = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gy, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0Cs14kWLkQVSKO_14deltalake_core.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.gx, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.gz, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.gz = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gz
  br i1 %.not28.i.i, label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.bc:                                            ; preds = %bb.bb, %.thread93.i
  %i.ha = phi i8 [ %.pre.i, %.thread93.i ], [ %i.go, %bb.bb ]
  %i.hb = phi <16 x i8> [ %i.gt, %.thread93.i ], [ %i.gv, %bb.bb ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.gl, %bb.bb ] ; 6 uses
  %i.hc = insertelement <16 x i8> poison, i8 %i.ha, i64 0
  %i.hd = shufflevector <16 x i8> %i.hc, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !42456
  store ptr %2, ptr %i.a, align 8, !noalias !42456
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hf, align 8, !noalias !42456
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.he, ptr %i.hg, align 8, !noalias !42456
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gg, ptr %i.hh, align 8, !noalias !42456
  %i.hi = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i7 = icmp ult i64 %i.hi, %3
  br i1 %.not.i7, label %.lr.ph.i10, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.bg, %bb.bc
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.bc ], [ %.sroa.014.2.3.i, %bb.bg ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.bc ], [ %i.je, %bb.bg ] ; 2 uses
  %i.hj = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hk = add i64 %.sroa.06.0.lcssa.i, %i.hj
  %i.hl = icmp uge i64 %i.hk, %3
  %i.hm = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.hl, i1 true, i1 %i.hm
  br i1 %or.cond3105.i, label %._crit_edge.i9, label %.lr.ph107.i

.lr.ph.i10:                                       ; preds = %bb.bc, %bb.bg
  %.sroa.06.0103.i = phi i64 [ %i.je, %bb.bg ], [ 0, %bb.bc ] ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.hn, align 1, !alias.scope !42445, !noalias !42461
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.ho, align 1, !alias.scope !42445, !noalias !42461
  %i.hp = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.hb
  %i.hq = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.hd
  %i.hr = and <16 x i1> %i.hp, %i.hq
  %i.hs = bitcast <16 x i1> %i.hr to i16          ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ht, align 1, !alias.scope !42445, !noalias !42461
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hu, align 1, !alias.scope !42445, !noalias !42461
  %i.hv = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.hb
  %i.hw = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.hd
  %i.hx = and <16 x i1> %i.hv, %i.hw
  %i.hy = bitcast <16 x i1> %i.hx to i16          ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hz, align 1, !alias.scope !42445, !noalias !42461
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !42445, !noalias !42461
  %i.ib = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.hb
  %i.ic = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.hd
  %i.id = and <16 x i1> %i.ib, %i.ic
  %i.ie = bitcast <16 x i1> %i.id to i16          ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.if, align 1, !alias.scope !42445, !noalias !42461
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.ig, align 1, !alias.scope !42445, !noalias !42461
  %i.ih = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.hb
  %i.ii = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.hd
  %i.ij = and <16 x i1> %i.ih, %i.ii
  %i.ik = bitcast <16 x i1> %i.ij to i16          ; 2 uses
  %i.il = icmp eq i16 %i.hs, 0
  br i1 %i.il, label %.preheader96.1.i, label %bb.bh

.preheader96.1.i:                                 ; preds = %bb.bh, %.lr.ph.i10
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i10 ], [ %i.jj, %bb.bh ] ; 3 uses
  %i.im = icmp eq i16 %i.hy, 0
  br i1 %i.im, label %.preheader96.2.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader96.1.i
  %i.in = or disjoint i64 %.sroa.06.0103.i, 16
  %i.io = trunc nuw i8 %.sroa.014.2.i to i1
  %i.ip = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.in, i16 noundef %i.hy, i1 noundef zeroext %i.io) #43
  %i.iq = zext i1 %i.ip to i8
  %i.ir = or i8 %.sroa.014.2.i, %i.iq
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.bd, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.ir, %bb.bd ] ; 3 uses
  %i.is = icmp eq i16 %i.ie, 0
  br i1 %i.is, label %.preheader96.3.i, label %bb.be

bb.be:                                            ; preds = %.preheader96.2.i
  %i.it = or disjoint i64 %.sroa.06.0103.i, 32
  %i.iu = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.iv = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.it, i16 noundef %i.ie, i1 noundef zeroext %i.iu) #43
  %i.iw = zext i1 %i.iv to i8
  %i.ix = or i8 %.sroa.014.2.1.i, %i.iw
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.be, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.ix, %bb.be ] ; 3 uses
  %i.iy = icmp eq i16 %i.ik, 0
  br i1 %i.iy, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.preheader96.3.i
  %i.iz = or disjoint i64 %.sroa.06.0103.i, 48
  %i.ja = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.jb = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.iz, i16 noundef %i.ik, i1 noundef zeroext %i.ja) #43
  %i.jc = zext i1 %i.jb to i8
  %i.jd = or i8 %.sroa.014.2.2.i, %i.jc
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.jd, %bb.bf ] ; 2 uses
  %i.je = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.jf = add i64 %i.je, %i.hi
  %i.jg = icmp uge i64 %i.jf, %3
  %i.jh = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jg, i1 true, i1 %i.jh
  br i1 %or.cond.i, label %.preheader.i8, label %.lr.ph.i10

bb.bh:                                            ; preds = %.lr.ph.i10
  %i.ji = call fastcc noundef zeroext i1 @_RNCNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_containss0_0Cs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.hs, i1 noundef zeroext false) #43
  %i.jj = zext i1 %i.ji to i8
  br label %.preheader96.1.i

._crit_edge.i9:                                   ; preds = %bb.bi, %.preheader.i8
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i8 ], [ %.sroa.014.4.i, %bb.bi ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.hm, %.preheader.i8 ], [ %i.kd, %bb.bi ]
  %i.jk = sub nuw i64 %3, %i.gg
  %i.jl = add i64 %i.jk, -16                      ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 %i.jl ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.jm, align 1, !alias.scope !42445, !noalias !42464
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.jn, align 1, !alias.scope !42445, !noalias !42464
  %i.jo = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.hb
  %i.jp = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.hd
  %i.jq = and <16 x i1> %i.jo, %i.jp
  %i.jr = bitcast <16 x i1> %i.jq to i16          ; 2 uses
  %i.js = icmp eq i16 %i.jr, 0
  br i1 %i.js, label %bb.bk, label %bb.bl

.lr.ph107.i:                                      ; preds = %.preheader.i8, %bb.bi
  %.sroa.06.1106.i = phi i64 [ %i.ka, %bb.bi ], [ %.sroa.06.0.lcssa.i, %.preheader.i8 ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.jt, align 1, !alias.scope !42445, !noalias !42467
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.ju, align 1, !alias.scope !42445, !noalias !42467
  %i.jv = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.hb
  %i.jw = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.hd
  %i.jx = and <16 x i1> %i.jv, %i.jw
  %i.jy = bitcast <16 x i1> %i.jx to i16          ; 2 uses
  %i.jz = icmp eq i16 %i.jy, 0
  br i1 %i.jz, label %bb.bi, label %bb.bj
end_hunk_1
