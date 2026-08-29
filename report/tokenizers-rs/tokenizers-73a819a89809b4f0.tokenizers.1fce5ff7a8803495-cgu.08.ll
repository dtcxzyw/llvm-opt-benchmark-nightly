Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.08?download=true
inline.NumInlined: 1233
inline.NumDeleted: 664
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtB15_12random_state11RandomStateE11rustc_entryB2q_:bb.a
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
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i80, i64 1
  %i.x = add nsw i64 %.sroa.15.1.i79, -1          ; 2 uses
  %.not55.i = icmp eq i64 %i.x, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.q, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.aq, %bb.q ], [ 0, %.preheader.i ], [ %i.ae, %.preheader60.i ]
  %i.y = zext i32 %.sroa.045.1.i to i64
  %i.z = shl nuw i64 %i.y, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.preheader60.i.preheader:                         ; preds = %thread-pre-split.i, %.preheader60.i
  %.sroa.0.1.i80 = phi ptr [ %i.w, %.preheader60.i ], [ %.sroa.0.0.i43, %thread-pre-split.i ] ; 3 uses
  %.sroa.15.1.i79 = phi i64 [ %i.x, %.preheader60.i ], [ %.sroa.15.0.i, %thread-pre-split.i ]
  %.sroa.045.0.i78 = phi i32 [ %i.ae, %.preheader60.i ], [ 0, %thread-pre-split.i ]
  %3 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i78, i32 10) ; 2 uses
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %bb.p, label %bb.o, !prof !23

bb.o:                                             ; preds = %.preheader60.i.preheader
  %5 = extractvalue { i32, i1 } %3, 0             ; 2 uses
  %i.aa = load i8, ptr %.sroa.0.1.i80, align 1, !alias.scope !1104, !noundef !4
  %i.ab = zext i8 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 9
  %i.ae = add i32 %i.ac, %5                       ; 3 uses
  %i.af = icmp ult i32 %i.ae, %5
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af, !prof !1107
  br i1 %or.cond, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %.preheader60.i, !prof !1107

bb.p:                                             ; preds = %.preheader60.i.preheader
  %i.ag = load i8, ptr %.sroa.0.1.i80, align 1, !alias.scope !1104, !noundef !4
  %i.ah = add i8 %i.ag, -48
  %i.ai = icmp ult i8 %i.ah, 10
  %spec.select.i = select i1 %i.ai, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.q
  %.sroa.0.271.i = phi ptr [ %i.ap, %bb.q ], [ %.sroa.0.0.i43, %.preheader.i ] ; 2 uses
  %.sroa.15.270.i = phi i64 [ %i.ao, %bb.q ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.045.269.i = phi i32 [ %i.aq, %bb.q ], [ 0, %.preheader.i ]
  %i.aj = load i8, ptr %.sroa.0.271.i, align 1, !alias.scope !1104, !noundef !4
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48                  ; 2 uses
  %i.am = icmp ult i32 %i.al, 10
  br i1 %i.am, label %bb.q, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.q:                                             ; preds = %.lr.ph.i
  %i.an = mul i32 %.sroa.045.269.i, 10
  %i.ao = add nsw i64 %.sroa.15.270.i, -1         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.271.i, i64 1
  %i.aq = add i32 %i.al, %i.an                    ; 2 uses
  %.not56.i = icmp eq i64 %i.ao, 0
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %.loopexit.i, %bb.p
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.p ], [ %i.z, %.loopexit.i ] ; 2 uses
  %i.ar = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.ar, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.r

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread: ; preds = %bb.o, %.lr.ph.i, %bb.m, %bb.m, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
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
end_hunk_0
begin_hunk_1_@_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates_1__NtBG_8SequenceNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_:bb.a
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templatesa_1__NtBG_30TemplateProcessingDeserializerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templatesa_1__NtBG_30TemplateProcessingDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 37)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders13byte_fallback1__NtBG_12ByteFallbackNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders13byte_fallback1__NtBG_12ByteFallbackNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtBM_5PieceNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enum14___FieldVisitorNtB4_8Expected3fmtBQ_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtBM_5PieceNtB4_11Deserialize11deserializeNtBH_9___VisitorNtB4_7Visitor10visit_enums_14___FieldVisitorNtB4_8Expected3fmtBQ_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardNtNtCsgo2jZVVEzqi_9indicatif5state8BarStateEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCs2AWtUsOyxgP_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringINtNtB2d_3vec3VecB29_EEEENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB4_5PieceINtNtCs4NRVxsYgnAr_4core7convert7TryFromNtNtCscdodAO9FK5_5alloc6string6StringE8try_from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [11 x i8], align 1            ; 4 uses
  %.sroa.526 = alloca [19 x i8], align 1          ; 2 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.622.sroa.8 = alloca [19 x i8], align 1   ; 7 uses
  %.sroa.618.sroa.8 = alloca [19 x i8], align 1   ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 14 uses
  %i.l = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 3 uses
  store i64 0, ptr %i.k, align 8
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.p, ptr %.sroa.448.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %.sroa.549.0..sroa_idx, align 8
  %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 %i.p, ptr %.sroa.549.sroa.4.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 0, ptr %.sroa.549.sroa.5.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.p, ptr %.sroa.549.sroa.6.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.7.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 58, ptr %.sroa.549.sroa.7.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.549.sroa.8.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  store i32 58, ptr %.sroa.549.sroa.8.0..sroa.549.0..sroa_idx.sroa_idx, align 4
  %.sroa.549.sroa.9.0..sroa.549.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i8 1, ptr %.sroa.549.sroa.9.0..sroa.549.0..sroa_idx.sroa_idx, align 8
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 1, ptr %.sroa.650.0..sroa_idx, align 8
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 65
  store i8 0, ptr %.sroa.751.0..sroa_idx, align 1
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitcEE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.k)
          to label %bb.c unwind label %bb.b

.body:                                            ; preds = %bb.ad, %bb.x, %bb.b, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cr, %bb.q ], [ %i.cy, %bb.x ], [ %i.q, %bb.b ], [ %i.da, %bb.ad ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #27
          to label %common.resume unwind label %bb.at

bb.b:                                             ; preds = %bb.ae, %bb.y, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  switch i64 %i.u, label %bb.ak [
    i64 2, label %bb.d
    i64 1, label %bb.aj
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load i64, ptr %i.x, align 8, !noundef !4 ; 2 uses
  switch i64 %i.y, label %thread-pre-split.i [
    i64 0, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i64 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.z = load i8, ptr %i.w, align 1, !alias.scope !1848, !noundef !4 ; 2 uses
  switch i8 %i.z, label %bb.f [
    i8 43, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
    i8 45, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread
  ]

thread-pre-split.i:                               ; preds = %bb.d
  %.pr.i = load i8, ptr %i.w, align 1, !alias.scope !1848
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split.i, %bb.e
  %i.aa = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.z, %bb.e ]
  %cond.i = icmp eq i8 %i.aa, 43                  ; 2 uses
  %i.ab = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.y, %i.ab         ; 10 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.0.0.idx.i ; 9 uses
  %i.ac = icmp samesign ult i64 %.sroa.15.0.i, 9
  br i1 %i.ac, label %.preheader.i, label %.preheader60.i.preheader

.preheader.i:                                     ; preds = %bb.f
  %.not5668.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5668.i, label %.loopexit.i, label %.lr.ph.i

.preheader60.i:                                   ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i142, i64 1
  %i.ae = add nsw i64 %.sroa.15.1.i141, -1        ; 2 uses
  %.not55.i = icmp eq i64 %i.ae, 0
  br i1 %.not55.i, label %.loopexit.i, label %.preheader60.i.preheader

.loopexit.i:                                      ; preds = %.preheader60.i, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %.preheader.i
  %.sroa.045.1.i = phi i32 [ %i.cq, %bb.p ], [ 0, %.preheader.i ], [ %i.as, %bb.i ], [ %i.ba, %bb.j ], [ %i.bh, %bb.k ], [ %i.bo, %bb.l ], [ %i.bv, %bb.m ], [ %i.cc, %bb.n ], [ %i.cj, %bb.o ], [ %i.al, %.preheader60.i ]
  %i.af = zext i32 %.sroa.045.1.i to i64
  %i.ag = shl nuw i64 %i.af, 32
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.preheader60.i.preheader:                         ; preds = %bb.f, %.preheader60.i
  %.sroa.0.1.i142 = phi ptr [ %i.ad, %.preheader60.i ], [ %.sroa.0.0.i, %bb.f ] ; 3 uses
  %.sroa.15.1.i141 = phi i64 [ %i.ae, %.preheader60.i ], [ %.sroa.15.0.i, %bb.f ]
  %.sroa.045.0.i140 = phi i32 [ %i.al, %.preheader60.i ], [ 0, %bb.f ]
  %2 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.sroa.045.0.i140, i32 10) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %.preheader60.i.preheader
  %4 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i142, align 1, !alias.scope !1848, !noundef !4
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9
  %i.al = add i32 %i.aj, %4                       ; 3 uses
  %i.am = icmp ult i32 %i.al, %4
  %or.cond = select i1 %i.ak, i1 true, i1 %i.am, !prof !1107
  br i1 %or.cond, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %.preheader60.i, !prof !1107

bb.h:                                             ; preds = %.preheader60.i.preheader
  %i.an = load i8, ptr %.sroa.0.1.i142, align 1, !alias.scope !1848, !noundef !4
  %i.ao = add i8 %i.an, -48
  %i.ap = icmp ult i8 %i.ao, 10
  %spec.select.i = select i1 %i.ap, i64 513, i64 257
  br label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = load i8, ptr %.sroa.0.0.i, align 1, !alias.scope !1848, !noundef !4
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nsw i32 %i.ar, -48                  ; 3 uses
  %i.at = icmp ult i32 %i.as, 10
  br i1 %i.at, label %bb.i, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.i:                                             ; preds = %.lr.ph.i
  %.not56.i = icmp eq i64 %.sroa.15.0.i, 1
  br i1 %.not56.i, label %.loopexit.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !alias.scope !1848, !noundef !4
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nsw i32 %i.aw, -48                  ; 2 uses
  %i.ay = icmp ult i32 %i.ax, 10
  br i1 %i.ay, label %bb.j, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.az = mul nuw nsw i32 %i.as, 10
  %i.ba = add nuw nsw i32 %i.ax, %i.az            ; 2 uses
  %.not56.i.1 = icmp eq i64 %.sroa.15.0.i, 2
  br i1 %.not56.i.1, label %.loopexit.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !1848, !noundef !4
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48                  ; 2 uses
  %i.bf = icmp ult i32 %i.be, 10
  br i1 %i.bf, label %bb.k, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.k:                                             ; preds = %.lr.ph.i.2
  %i.bg = mul nuw nsw i32 %i.ba, 10
  %i.bh = add nuw nsw i32 %i.be, %i.bg            ; 2 uses
  %.not56.i.2 = icmp eq i64 %.sroa.15.0.i, 3
  br i1 %.not56.i.2, label %.loopexit.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 3
  %i.bj = load i8, ptr %i.bi, align 1, !alias.scope !1848, !noundef !4
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.l, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.l:                                             ; preds = %.lr.ph.i.3
  %i.bn = mul nuw nsw i32 %i.bh, 10
  %i.bo = add nuw nsw i32 %i.bl, %i.bn            ; 2 uses
  %.not56.i.3 = icmp eq i64 %.sroa.15.0.i, 4
  br i1 %.not56.i.3, label %.loopexit.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !1848, !noundef !4
  %i.br = zext i8 %i.bq to i32
  %i.bs = add nsw i32 %i.br, -48                  ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %bb.m, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.m:                                             ; preds = %.lr.ph.i.4
  %i.bu = mul i32 %i.bo, 10
  %i.bv = add i32 %i.bs, %i.bu                    ; 2 uses
  %.not56.i.4 = icmp eq i64 %.sroa.15.0.i, 5
  br i1 %.not56.i.4, label %.loopexit.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !1848, !noundef !4
  %i.by = zext i8 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -48                  ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 10
  br i1 %i.ca, label %bb.n, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.cb = mul i32 %i.bv, 10
  %i.cc = add i32 %i.bz, %i.cb                    ; 2 uses
  %.not56.i.5 = icmp eq i64 %.sroa.15.0.i, 6
  br i1 %.not56.i.5, label %.loopexit.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 6
  %i.ce = load i8, ptr %i.cd, align 1, !alias.scope !1848, !noundef !4
  %i.cf = zext i8 %i.ce to i32
  %i.cg = add nsw i32 %i.cf, -48                  ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 10
  br i1 %i.ch, label %bb.o, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.ci = mul i32 %i.cc, 10
  %i.cj = add i32 %i.cg, %i.ci                    ; 2 uses
  %.not56.i.6 = icmp eq i64 %.sroa.15.0.i, 7
  br i1 %.not56.i.6, label %.loopexit.i, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.o
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 7
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !1848, !noundef !4
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48                  ; 2 uses
  %i.co = icmp ult i32 %i.cn, 10
  br i1 %i.co, label %bb.p, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread

bb.p:                                             ; preds = %.lr.ph.i.7
  %i.cp = mul i32 %i.cj, 10
  %i.cq = add i32 %i.cn, %i.cp
  br label %.loopexit.i

bb.q:                                             ; preds = %bb.an, %bb.ak, %bb.u, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, %bb.aj, %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.l) #27
          to label %.body unwind label %bb.at

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit: ; preds = %bb.h, %.loopexit.i
  %.sroa.8.0.insert.insert.i = phi i64 [ %spec.select.i, %bb.h ], [ %i.ag, %.loopexit.i ] ; 2 uses
  %.sroa.591.0.extract.shift = lshr i64 %.sroa.8.0.insert.insert.i, 32
  %.sroa.591.0.extract.trunc = trunc nuw i64 %.sroa.591.0.extract.shift to i32 ; 2 uses
  %i.cs = trunc i64 %.sroa.8.0.insert.insert.i to i1
  br i1 %i.cs, label %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread, label %bb.r

_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit.thread: ; preds = %bb.g, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %bb.d, %bb.e, %bb.e, %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1851
  store ptr %1, ptr %i.d, align 8, !noalias !1851
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1851
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @63, ptr noundef nonnull %i.d)
          to label %bb.ag unwind label %bb.q

bb.r:                                             ; preds = %_RNvMsB_NtCs4NRVxsYgnAr_4core3numm16from_ascii_radix.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.622.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ct = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !4
  invoke fastcc void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB2_5Piece10extract_id(ptr noalias noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ct, i64 noundef %i.cv)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.cw = load i64, ptr %i.j, align 8, !range !357, !noundef !4 ; 3 uses
  %.not92 = icmp eq i64 %i.cw, -2
  br i1 %.not92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.463.sroa.0.0.copyload = load i32, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %.sroa.463.sroa.4.0.copyload = load i8, ptr %.sroa.463.sroa.4.0..sroa.463.0..sroa_idx.sroa_idx, align 4
  %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.463.sroa.5.0..sroa.463.0..sroa_idx.sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.526, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %.not93 = icmp eq i64 %i.cw, -1
  br i1 %.not93, label %bb.ab, label %bb.aa

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1854
  store ptr %1, ptr %i.c, align 8, !noalias !1854
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1854
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @63, ptr noundef nonnull %i.c)
          to label %bb.v unwind label %bb.q

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1854
  %.sroa.622.sroa.0.0.copyload = load i32, ptr %i.f, align 8
  %.sroa.622.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.sroa.622.sroa.7.0.copyload = load i8, ptr %.sroa.622.sroa.7.0..sroa_idx, align 4
  %.sroa.622.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8.0..sroa_idx, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.622.sroa.8, i64 19, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.622.sroa.8)
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %.sroa.586.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(19) %.sroa.618.sroa.8, i64 19, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.622.sroa.0.0.copyload, ptr %i.cx, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %.sroa.622.sroa.7.0.copyload, ptr %.sroa.485.0..sroa_idx, align 4
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.sroa.8)
  br label %bb.w
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterjENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB24_7HashSetjNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendjE6extendINtNtB2S_8hash_set8AHashSetjEE0ENtNtB3J_8iterator8Iterator4folduNCINvNvB4P_8for_each4callTjuENCINvXs1i_NtB26_3mapINtB5Y_7HashMapjuB2O_EIB3F_B5K_E6extendBN_E0E0ECs2JiOgHzbbc7_10tokenizers
declare hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set8IntoIterjENCINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB24_7HashSetjNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtBa_6traits7collect6ExtendjE6extendINtNtB2S_8hash_set8AHashSetjEE0ENtNtB3J_8iterator8Iterator4folduNCINvNvB4P_8for_each4callTjuENCINvXs1i_NtB26_3mapINtB5Y_7HashMapjuB2O_EIB3F_B5K_E6extendBN_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4ItercEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1v_8for_each4callcNCINvXsd_NtCscdodAO9FK5_5alloc6stringNtB2I_6StringINtNtB1z_7collect6ExtendcE6extendBP_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull, ptr noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model15UnigramIteratorENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB2d_8for_each4callTNtNtCscdodAO9FK5_5alloc6string6StringdENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB44_7HashMapB3h_dNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtB2h_7collect6ExtendB3g_E6extendBP_E0E0EB1a_(ptr noundef nonnull align 8, i64 noundef, ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvXsF_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_4KeyshmENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataReEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates1_1__NtB3J_5PieceNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers10processors8templates_1__NtB3J_8SequenceNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataReEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(104)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callTjjENCINvXs1i_NtCsgQfI1edjipl_9hashbrown3mapINtB22_7HashMapjjNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateEINtNtBZ_7collect6ExtendB1O_E6extendINtNtNtB11_8adapters7flatten7FlatMapINtNtB4f_9enumerate9EnumerateNtNtNtBb_3str4iter11CharIndicesEINtNtB4f_4take4TakeINtNtNtB11_7sources11repeat_with10RepeatWithNCNCNvMs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6U_26BytesToCharOffsetConverter3new00EENCB6O_0EE0E0INtB7_5FnMutTuB1O_EE8call_mutB6Y_(ptr noalias noundef align 8 dereferenceable(8), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtCshgwszQZps6S_11compact_str13CompactStringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level15process_offsets(ptr noalias noundef align 8 dereferenceable(256), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding12set_type_ids(ptr noalias noundef align 8 dereferenceable(256), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRTmmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTmmEINtNtCsiTTz6JxaXqu_5ahash8hash_set8AHashSetjEEE7reserveNCINvNtB8_3map11make_hasherBQ_BU_NtNtBZ_12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTTmmElEE7reserveNCINvNtB8_3map11make_hasherBQ_lNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRcECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTcjEE7reserveNCINvNtB8_3map11make_hashercjNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTcmEE7reserveNCINvNtB8_3map11make_hashercmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRhECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEE7reserveNCINvNtB8_3map11make_hasherhBR_NtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE0EB10_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRyECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB6_8RawTableTyINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordEEE7reserveNCINvNtB8_3map11make_hasheryBR_NtNtBW_12random_state11RandomStateE0EB2h_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringuEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTReuEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTcuEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTjuEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell22panic_already_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMaphmE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24), i8 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMaphmE3gethECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRmECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringyEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringyEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTTmmEBU_EE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTcjEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeThcEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTmNtNtCscdodAO9FK5_5alloc6string6StringEE3newCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEE3newB11_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef, ptr noundef nonnull, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBd_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB11_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB10_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCscdodAO9FK5_5alloc5boxed7convertINtBc_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtB10_6marker4SendNtB1x_4SyncEL_EINtNtB10_7convert4FromNtNtBe_6string6StringE4from11StringErrorBW_5causeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #16

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7oYvdc6j6uT_9daachorse6OutputmEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core4cell7RefCellINtNtCs7oYvdc6j6uT_9daachorse11nfa_builder15NfaBuilderStatehmEEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtCshgwszQZps6S_11compact_str13CompactStringmEE16with_capacity_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_3vec3VecBP_EEE16with_capacity_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEE16with_capacity_inB1w_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEE16with_capacity_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEE16with_capacity_inCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtCshiFeWPMd8WI_9itertools9Itertools4joinCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapINtNtNtB2C_5slice4iter4IterNtNtNtB16_10processors8template5PieceEINtNtB2C_6option6OptionB10_ENCNvMsh_B3S_NtB3S_18TemplateProcessing14apply_template0EE9from_iterB16_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(552)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1b_3str4iter5CharsNCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replace0EEB2n_(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsw_NtNtCs4NRVxsYgnAr_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneB1w_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringyEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEBP_EENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBZ_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEENtNtBX_5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count14do_count_chars(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecNtNtB9_6string6StringEINtB5_10SpecExtendRBT_INtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterBT_EE11spec_extendCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2A_9enumerate9EnumerateINtNtNtB2E_5slice4iter7IterMutB12_EENCNvXs0_NtNtB18_10processors4bertNtB4u_14BertProcessingNtB16_13PostProcessor17process_encodings0EE9from_iterB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB2A_9enumerate9EnumerateINtNtNtB2E_5slice4iter7IterMutB12_EENCNvXs0_NtNtB18_10processors7robertaNtB4u_17RobertaProcessingNtB16_13PostProcessor17process_encodingss0_0EE9from_iterB18_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternReNtB4_7Pattern12find_matches(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtBa_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldBW_NCNvXs0_NtNtCshiFeWPMd8WI_9itertools8adaptors8coalesceINtB2x_10CoalesceByBH_INtB2x_22DedupPred2CoalescePredNtB2x_7DedupEqENtB2x_7NoCountEB1i_4next0INtNtB1q_6result6ResultBW_BW_EECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCs4NRVxsYgnAr_4core3fmtcNtB5_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core3fmt5floatfNtB7_5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelism15get_parallelism() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterhENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItermENtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyINtNtCs4NRVxsYgnAr_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvMs3_B1i_NtB1i_4Word14get_chars_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word6SymbolENCNvMs3_B1i_NtB1i_4Word16get_offsets_iter0ENtNtB7_3zip27TrustedRandomAccessNoCoerce4sizeB1o_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe4word4WordENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeBQ_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutTjjEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterTNtNtCscdodAO9FK5_5alloc6string6StringdEENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3mem9alignment9AlignmentNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterReENCNvXs6_NtNtCs2JiOgHzbbc7_10tokenizers10processors8templateNtB24_8TemplateINtNtB6_7convert7TryFromINtB1b_3VecB1T_EE8try_from0ENtB24_5PieceINtNtB6_6result6ResultNtB3b_10InfallibleNtNtB1d_6string6StringENCINvXso_B4d_IB4b_IB3x_B3Y_EB4O_EINtNtNtB4_6traits7collect12FromIteratorIB4b_B3Y_B4O_EE9from_iterBQ_E0B5t_EB28_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9debug_map(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs6_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_8DebugMap7entriesRNtNtCscdodAO9FK5_5alloc6string6StringRmINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterB13_mEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #0
end_hunk_2
