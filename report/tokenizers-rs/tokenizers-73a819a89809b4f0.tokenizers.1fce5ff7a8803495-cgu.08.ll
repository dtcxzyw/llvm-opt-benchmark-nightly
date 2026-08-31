Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.08?download=true
inline.NumInlined: 1233
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMaphINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE11rustc_entryB19_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtB15_12random_state11RandomStateE11rustc_entryB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.c = call noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1085)
  call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %i.d = lshr i64 %i.c, 57
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !1091, !noalias !1092, !noundef !4 ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !alias.scope !1091, !noalias !1092, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.aa, %bb.d ]
  %.pn.i.i = phi i64 [ %i.c, %bb.a ], [ %i.ab, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %i.g        ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i26.i = load <16 x i8>, ptr %i.k, align 1, !noalias !1095 ; 2 uses
  %i.l = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, %i.j
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i.not32.i = icmp eq i16 %i.m, 0
  br i1 %.not.i.not32.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i33.i = phi i16 [ %i.z, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i, i1 true)
  %i.o = zext nneg i16 %i.n to i64
  %i.p = add i64 %.sroa.01.0.i.i, %i.o
  %i.q = and i64 %i.p, %i.g
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds [72 x i8], ptr %i.h, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -72
  %.val2.i.i = load i64, ptr %i.t, align 8, !noalias !1098, !noundef !4
  %i.u = icmp eq i64 %.val2.i.i, %2
  br i1 %i.u, label %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapyBR_NtNtBW_12random_state11RandomStateE11rustc_entry0EB2h_.exit, label %bb.c, !prof !22

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i, splat (i8 -1)
  %i.w = bitcast <16 x i1> %i.v to i16
  %i.x = icmp eq i16 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.e, !prof !23

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = add i16 %.sroa.06.0.i33.i, -1
  %i.z = and i16 %i.y, %.sroa.06.0.i33.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.aa = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ab = add i64 %.sroa.01.0.i.i, %i.aa
  br label %bb.b

_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapyBR_NtNtBW_12random_state11RandomStateE11rustc_entry0EB2h_.exit: ; preds = %.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ad, align 8
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtBW_12random_state11RandomStateE0EB2h_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b)
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE4findNCNvMNtB8_11rustc_entryINtNtB8_3map7HashMapyBR_NtNtBW_12random_state11RandomStateE11rustc_entry0EB2h_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB2_5Piece10extract_id(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 36, ptr %i.b, align 4
  %i.c = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.d = load i64, ptr %i.a, align 8, !range !155, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !156, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !23

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %2, 2
  br i1 %i.i, label %.split, label %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit

.split:                                           ; preds = %bb.c
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %.thread64, label %bb.j, !prof !22

_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !alias.scope !1101, !noundef !4
  %i.m = icmp sgt i8 %i.l, -65
  %i.n = add i64 %2, -1                           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  br i1 %i.m, label %bb.i, label %bb.j, !prof !22

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.h, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.p) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = icmp ule i64 %2, %i.g
  call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.e
  store i64 %i.g, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, %bb.r, %.thread64, %bb.l, %bb.n, %bb.f
  ret void

bb.i:                                             ; preds = %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %cond = icmp eq i64 %i.n, 1
  %lhsc61 = load i8, ptr %i.o, align 1            ; 2 uses
  br i1 %cond, label %bb.k, label %thread-pre-split.i

bb.j:                                             ; preds = %.split, %_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @74) #24
  unreachable

.thread64:                                        ; preds = %.split
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.s = icmp eq i8 %lhsc61, 65
  br i1 %i.s, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  store i64 -1, ptr %0, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.55.0..sroa_idx, align 4
  br label %bb.h

bb.m:                                             ; preds = %bb.k
  %lhsc = load i8, ptr %i.o, align 1              ; 2 uses
  switch i8 %lhsc, label %thread-pre-split.i [
    i8 97, label %bb.l
    i8 66, label %bb.n
    i8 98, label %bb.n
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  store i64 -1, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %.sroa.59.0..sroa_idx, align 4
  br label %bb.h

thread-pre-split.i:                               ; preds = %bb.i, %bb.m
  %i.t = phi i8 [ %lhsc, %bb.m ], [ %lhsc61, %bb.i ]
  %cond.i = icmp eq i8 %i.t, 43                   ; 2 uses
  %i.u = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.n, %i.u          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i43 = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.v, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %thread-pre-split.i
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i.a

.preheader60.i:                                   ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i80, i64 1
  %i.x = add nsw i64 %.sroa.15.1.i79, -1          ; 2 uses
  %.not55.i = icmp eq i64 %i.x, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.q, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.aq, %bb.q ], [ 0, %.preheader.i ], [ %i.ah, %.preheader60.i ]
  %i.y = zext i32 %.sroa.045.1.i to i64
  %i.z = shl nuw i64 %i.y, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.preheader60.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader60.i
  %.sroa.0.1.i80 = phi ptr [ %i.w, %.preheader60.i ], [ %.sroa.0.0.i43, %thread-pre-split.i ] ; 3 uses
  %.sroa.15.1.i79 = phi i64 [ %i.x, %.preheader60.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.i78 = phi i32 [ %i.ah, %.preheader60.i ], [ 0, %thread-pre-split.i ]
  %i.aa = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i78, i32 10) ; 2 uses
  %i.ab = extractvalue { i32, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.p, label %bb.o, !prof !23

bb.o:                                             ; preds = %.preheader60.i.preheader
  %i.ac = extractvalue { i32, i1 } %i.aa, 0       ; 2 uses
  %i.ad = load i8, ptr %.sroa.0.1.i80, align 1, !alias.scope !1104, !noundef !4
  %i.ae = zext i8 %i.ad to i32
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 9
  %i.ah = add i32 %i.af, %i.ac                    ; 3 uses
  %i.ai = icmp ult i32 %i.ah, %i.ac
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ai, !prof !1107
  br i1 %or.cond, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %.preheader60.i, !prof !1107

bb.p:                                             ; preds = %.preheader60.i.preheader
  %i.aj = load i8, ptr %.sroa.0.1.i80, align 1, !alias.scope !1104, !noundef !4
  %i.ak = add i8 %i.aj, -48
  %i.al = icmp ult i8 %i.ak, 10
  %spec.select.i = select i1 %i.al, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.lr.ph.i.a:                                       ; preds = %.preheader.i, %bb.q
  %.sroa.0.271.i = phi ptr [ %5, %bb.q ], [ %.sroa.0.0.i43, %.preheader.i ] ; 2 uses
  %.sroa.15.270.i = phi i64 [ %4, %bb.q ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.269.i = phi i32 [ %i.aq, %bb.q ], [ 0, %.preheader.i ]
  %i.am = load i8, ptr %.sroa.0.271.i, align 1, !alias.scope !1104, !noundef !4
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48                  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 10
  br i1 %i.ap, label %bb.q, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.q:                                             ; preds = %.lr.ph.i.a
  %3 = mul i32 %.sroa.045.269.i, 10
  %4 = add nsw i64 %.sroa.15.270.i, -1            ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i, i64 1
  %i.aq = add i32 %i.ao, %3                       ; 2 uses
  %.not56.i = icmp eq i64 %4, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.a

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %.loopexit.i, %bb.p
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.z, %.loopexit.i ] ; 2 uses
  %i.ar = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ar, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.r

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread: ; preds = %bb.o, %.lr.ph.i.a, %bb.m, %bb.m, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  store i64 -2, ptr %0, align 8
  br label %bb.h

bb.r:                                             ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  %.sroa.538.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.538.0.extract.trunc = trunc nuw i64 %.sroa.538.0.extract.shift to i32
  store i64 -1, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.538.0.extract.trunc, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %.sroa.516.0..sroa_idx, align 4
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapReuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTReuEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapcuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTcuEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjuNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4keysCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = add i64 %i.c, 1
  tail call void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTjuEE3newCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.f, ptr %.sroa.42.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtCshgwszQZps6S_11compact_str13CompactStringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %.loopexit.split-lp ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE7reserveNCINvNtB8_3map11make_hasherBQ_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !1108, !noalias !1111, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val7.i = load i64, ptr %i.c, align 8, !alias.scope !1108, !noalias !1111, !noundef !4 ; 3 uses
  %i.d = lshr i64 %i.b, 57
  %i.e = trunc nuw nsw i64 %i.d to i8             ; 3 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.e, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.noexc
  %.pn.i.i = phi i64 [ %i.b, %.noexc ], [ %i.ag, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %.noexc ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %.noexc ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.h = phi i64 [ 0, %.noexc ], [ %i.af, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.i, align 1, !noalias !1114 ; 3 uses
  %i.j = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.g
  %i.k = bitcast <16 x i1> %i.j to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.k, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.v, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %i.l = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.m = zext nneg i16 %i.l to i64
  %i.n = add i64 %.sroa.0.017.i.i, %i.m
  %i.o = and i64 %i.n, %.val7.i
  %i.p = load ptr, ptr %0, align 8, !alias.scope !1108, !noalias !1117, !nonnull !4, !noundef !4
  %i.q = sub nsw i64 0, %i.o                      ; 2 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -32
  %i.t = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtCshgwszQZps6S_11compact_str13CompactStringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %.lr.ph.i.i
  br i1 %i.t, label %bb.i, label %bb.d, !prof !22

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not13.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not13.i.i, label %.thread.i.i, label %bb.e, !prof !23

bb.d:                                             ; preds = %.noexc7
  %i.u = add i16 %.sroa.01.029.i.i, -1
  %i.v = and i16 %i.u, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.v, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.w = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.x = bitcast <16 x i1> %i.w to i16            ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.x, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !23

.thread24.i.i:                                    ; preds = %bb.e
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.x, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = add i64 %.sroa.0.017.i.i, %i.z
  %i.ab = and i64 %i.aa, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ab, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = icmp eq i16 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.af = add i64 %i.h, 16                        ; 2 uses
  %i.ag = add i64 %i.af, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.h, label %bb.k, !prof !23

bb.h:                                             ; preds = %bb.g
  %.val72.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.ak = icmp slt <16 x i8> %.val72.i.i.i, zeroinitializer
  %i.al = bitcast <16 x i1> %i.ak to i16          ; 2 uses
  %.not.i24.i.i = icmp ne i16 %i.al, 0
  %i.am = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.al, i1 true)
  %i.an = zext nneg i16 %i.am to i64
  tail call void @llvm.assume(i1 %.not.i24.i.i)
  br label %bb.k

bb.i:                                             ; preds = %.noexc7
  %i.ao = load ptr, ptr %0, align 8, !alias.scope !1108, !noalias !1111, !nonnull !4, !noundef !4
  %i.ap = getelementptr inbounds [32 x i8], ptr %i.ao, i64 %i.q
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !noundef !4 ; 2 uses
  store i32 %2, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.at = load i8, ptr %i.as, align 1, !range !1120, !alias.scope !1121, !noundef !4
  %i.au = icmp eq i8 %i.at, -40
  br i1 %i.au, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit, !prof !23

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCshgwszQZps6S_11compact_str13CompactStringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j, %bb.i, %bb.k
  %.sroa.3.0 = phi i32 [ undef, %bb.k ], [ %i.ar, %bb.i ], [ %i.ar, %bb.j ]
  %.sroa.0.0 = phi i32 [ 0, %bb.k ], [ 1, %bb.i ], [ 1, %bb.j ]
  %i.av = insertvalue { i32, i32 } poison, i32 %.sroa.0.0, 0
  %i.aw = insertvalue { i32, i32 } %i.av, i32 %.sroa.3.0, 1
  ret { i32, i32 } %i.aw

end_hunk_0
