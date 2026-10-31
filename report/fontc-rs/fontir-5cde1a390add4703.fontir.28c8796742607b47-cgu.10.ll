Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fontir-5cde1a390add4703.fontir.28c8796742607b47-cgu.10?download=true
inline.NumInlined: 629
inline.NumDeleted: 329
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtCsbeZck1VjBmm_8indexmap5innerINtB4_4CoreNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuE17decrement_indicesCs3v5ql5U6hxj_6fontir:bb.a
  %exitcond.not = icmp eq i64 %i.z, %.sroa.7.0.copyload
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEEEINtB5_7ZipImplBW_B1o_E4nextCs3v5ql5U6hxj_6fontir.exit.thread, label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEEEINtB5_7ZipImplBW_B1o_E4nextCs3v5ql5U6hxj_6fontir.exit

_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEEEINtB5_7ZipImplBW_B1o_E4nextCs3v5ql5U6hxj_6fontir.exit.thread: ; preds = %_RNvNtCsbeZck1VjBmm_8indexmap5inner12update_index.exit, %bb.d, %._crit_edge
  ret void

.lr.ph:                                           ; preds = %bb.e, %bb.k
  %i.bc = call noundef ptr @_RINvMsh_NtCsf3pcBkf8rwa_9hashbrown3rawINtB6_12RawIterRangejE9next_implKb0_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.bd = load i64, ptr %.sroa.46.0..sroa_idx, align 8, !noundef !4
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %.sroa.46.0..sroa_idx, align 8
  %.not13 = icmp eq ptr %i.bc, null
  br i1 %.not13, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %.lr.ph, %bb.k, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEINtNtNtBb_5slice4iter4IterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameuEEEINtB5_7ZipImplBW_B1o_E4nextCs3v5ql5U6hxj_6fontir.exit.thread

bb.j:                                             ; preds = %.lr.ph
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noundef !4 ; 3 uses
  %.not14 = icmp ule i64 %1, %i.bg
  %i.bh = icmp ult i64 %i.bg, %2
  %or.cond = and i1 %.not14, %i.bh
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.l
  %.pr = phi i64 [ %i.be, %bb.j ], [ %.pr.pre, %bb.l ]
  %i.bi = icmp eq i64 %.pr, 0
  br i1 %i.bi, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %bb.j
  %i.bj = add i64 %i.bg, -1
  store i64 %i.bj, ptr %i.bf, align 8
  %.pr.pre = load i64, ptr %.sroa.46.0..sroa_idx, align 8
  br label %bb.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -1152921504606846976, 1152921504606846976) i64 @_RNvMsb_NtCsf3pcBkf8rwa_9hashbrown5tableINtB5_13OccupiedEntryjE12bucket_indexCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !14, !noundef !4
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  ret i64 %i.h
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E21reserve_one_uncheckedCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !795, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit, label %.thread

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !795, !noundef !4 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  br i1 %i.f, label %.thread, label %bb.d, !prof !796

.thread:                                          ; preds = %bb.a, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit
  %.sink12.i47 = phi i64 [ %i.e, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit ], [ %i.b, %bb.a ]
  %i.g = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %.sink12.i47, i1 false)
  %i.h = sub nuw nsw i64 64, %i.g
  %i.i = shl nuw i64 1, %i.h
  %i.j = tail call fastcc { i64, i64 } @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E8try_growCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %i.i) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  switch i64 %i.k, label %bb.b [
    i64 -1, label %_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECs3v5ql5U6hxj_6fontir.exit
    i64 0, label %bb.c
  ], !prof !797

bb.b:                                             ; preds = %.thread
  %i.l = extractvalue { i64, i64 } %i.j, 1
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) %i.k, i64 noundef %i.l) #27
  unreachable

bb.c:                                             ; preds = %.thread
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #25
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10infallibleuECs3v5ql5U6hxj_6fontir.exit: ; preds = %.thread
  ret void

bb.d:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E8try_growCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, -9223372036854775807) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E10triple_mutCs3v5ql5U6hxj_6fontir.exit:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ult i64 %i.c, 5                     ; 2 uses
  %i.e = icmp ugt i64 %i.c, 4                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4
  %.sink12.i = select i1 %i.e, ptr %i.h, ptr %i.f ; 4 uses
  %.sink.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.val = load i64, ptr %i.f, align 8
  %.val72 = load i64, ptr %i.b, align 8
  %i.i = select i1 %i.e, i64 %.val, i64 %.val72   ; 5 uses
  %.not = icmp ult i64 %1, %i.i
  br i1 %.not, label %bb.a, label %bb.b, !prof !7

bb.a:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E10triple_mutCs3v5ql5U6hxj_6fontir.exit
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #25
  unreachable

bb.b:                                             ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E10triple_mutCs3v5ql5U6hxj_6fontir.exit
  %i.j = icmp ult i64 %1, 5
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not46 = icmp eq i64 %i.c, %1
  br i1 %.not46, label %bb.l, label %bb.e

bb.d:                                             ; preds = %bb.b
  br i1 %i.d, label %bb.l, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %1, 3                    ; 4 uses
  %or.cond = icmp ult i64 %1, 1152921504606846976
  br i1 %or.cond, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit, label %bb.l, !prof !800

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.e
  br i1 %i.d, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit
  %or.cond67 = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond67, label %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48, label %bb.l, !prof !800

bb.g:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.l = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef 8) #28 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.i

_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48: ; preds = %bb.f
  %i.n = shl nuw nsw i64 %.sink.i, 3
  %i.o = tail call noundef align 8 ptr @_RNvCsh0WfaQiVYm0_7___rustc14___rust_realloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.n, i64 noundef 8, i64 noundef %i.k) #28 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48, %bb.i
  %.sroa.031.0 = phi ptr [ %i.l, %bb.i ], [ %i.o, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48 ]
  store i64 1, ptr %0, align 8
  store i64 %i.i, ptr %i.f, align 8
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.031.0, ptr %.sroa.540.0..sroa_idx, align 8
  store i64 %1, ptr %i.b, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.q = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %.sink12.i, i64 %i.q, i1 false)
  br label %bb.h

bb.j:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  %i.r = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 8 %.sink12.i, i64 %i.r, i1 false)
  store i64 %i.i, ptr %i.b, align 8
  %or.cond.i = icmp ult i64 %i.c, 1152921504606846976
  br i1 %or.cond.i, label %_RINvCsgkGe90ZnUBq_8smallvec10deallocateyECs3v5ql5U6hxj_6fontir.exit, label %bb.k, !prof !800

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !801
  store i64 0, ptr %i.a, align 8, !noalias !801
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !noalias !801
  unreachable

_RINvCsgkGe90ZnUBq_8smallvec10deallocateyECs3v5ql5U6hxj_6fontir.exit: ; preds = %bb.j
  %i.s = shl nuw nsw i64 %.sink.i, 3
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink12.i, i64 noundef %i.s, i64 noundef 8) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48, %bb.g, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateyECs3v5ql5U6hxj_6fontir.exit, %bb.h, %bb.c
  %.sroa.7.1 = phi i64 [ undef, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateyECs3v5ql5U6hxj_6fontir.exit ], [ undef, %bb.c ], [ undef, %bb.h ], [ %i.k, %bb.g ], [ undef, %bb.d ], [ %i.k, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48 ], [ undef, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.1 = phi i64 [ -1, %_RINvCsgkGe90ZnUBq_8smallvec10deallocateyECs3v5ql5U6hxj_6fontir.exit ], [ -1, %bb.c ], [ -1, %bb.h ], [ 8, %bb.g ], [ -1, %bb.d ], [ 8, %_RINvCsgkGe90ZnUBq_8smallvec12layout_arrayyECs3v5ql5U6hxj_6fontir.exit48 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.t = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.u = insertvalue { i64, i64 } %i.t, i64 %.sroa.7.1, 1
  ret { i64, i64 } %i.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs3v5ql5U6hxj_6fontir18feature_variations26overlay_feature_variations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 3 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 3 uses
  %i.k = alloca [4 x i8], align 4                 ; 4 uses
  %i.l = alloca [4 x i8], align 4                 ; 4 uses
  %i.m = alloca [4 x i8], align 4                 ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 13 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [48 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 4 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [64 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [72 x i8], align 8                ; 13 uses
  %i.y = alloca [72 x i8], align 8                ; 12 uses
  %i.z = alloca [24 x i8], align 8                ; 9 uses
  %i.aa = alloca [64 x i8], align 8               ; 8 uses
  %i.ab = alloca [144 x i8], align 8              ; 21 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [56 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [56 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.4.i.i = alloca [40 x i8], align 8        ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 8 uses
  %i.am = alloca [48 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 6 uses
  %i.ar = alloca [56 x i8], align 8               ; 7 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 4 uses
  %i.au = alloca [24 x i8], align 8               ; 4 uses
  %i.av = alloca [56 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 8 uses
  %i.ax = alloca [48 x i8], align 8               ; 5 uses
  %i.ay = alloca [24 x i8], align 8               ; 4 uses
  %i.az = alloca [72 x i8], align 8               ; 14 uses
  %i.ba = alloca [32 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 6 uses
  %i.bd = alloca [40 x i8], align 8               ; 11 uses
  %i.be = alloca [24 x i8], align 8               ; 10 uses
  %i.bf = alloca [24 x i8], align 8               ; 7 uses
  %i.bg = alloca [32 x i8], align 8               ; 8 uses
  %i.bh = alloca [72 x i8], align 8               ; 11 uses
  %i.bi = alloca [56 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 4 uses
  %i.bk = alloca [24 x i8], align 8               ; 4 uses
  %i.bl = alloca [56 x i8], align 8               ; 6 uses
  %i.bm = alloca [24 x i8], align 8               ; 4 uses
  %i.bn = alloca [24 x i8], align 8               ; 4 uses
  %i.bo = alloca [32 x i8], align 8               ; 7 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [40 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 7 uses
  %i.bs = alloca [24 x i8], align 8               ; 10 uses
  %.sroa.7.i = alloca [40 x i8], align 8          ; 6 uses
  %i.bt = alloca [32 x i8], align 8               ; 8 uses
  %i.bu = alloca [72 x i8], align 8               ; 11 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [48 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 5 uses
  %i.by = alloca [24 x i8], align 8               ; 9 uses
  %i.bz = alloca [48 x i8], align 8               ; 8 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.0244 = alloca [24 x i8], align 8         ; 6 uses
  %i.cb = alloca [32 x i8], align 8               ; 8 uses
  %i.cc = alloca [24 x i8], align 8               ; 7 uses
  %i.cd = alloca [24 x i8], align 8               ; 9 uses
  %i.ce = alloca [40 x i8], align 8               ; 4 uses
  %i.cf = alloca [24 x i8], align 8               ; 6 uses
  %i.cg = alloca [48 x i8], align 8               ; 8 uses
  %i.ch = alloca [40 x i8], align 8               ; 4 uses
  %i.ci = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 9 uses
  %.sroa.16 = alloca [24 x i8], align 8           ; 11 uses
  %i.cj = alloca [32 x i8], align 8               ; 10 uses
  %i.ck = alloca [32 x i8], align 8               ; 8 uses
  %i.cl = alloca [48 x i8], align 8               ; 8 uses
  %i.cm = alloca [24 x i8], align 8               ; 16 uses
  %.sroa.7257 = alloca [40 x i8], align 8         ; 6 uses
  %i.cn = alloca [32 x i8], align 8               ; 8 uses
  %i.co = alloca [72 x i8], align 8               ; 4 uses
  %.sroa.7221 = alloca [48 x i8], align 8         ; 4 uses
  %i.cp = alloca [48 x i8], align 8               ; 7 uses
  %i.cq = alloca [72 x i8], align 8               ; 19 uses
  %i.cr = alloca [24 x i8], align 8               ; 11 uses
  %i.cs = alloca [24 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !1036
  %i.ct = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @40)
          to label %bb.b unwind label %bb.af, !noalias !1036 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.cu = extractvalue { i64, i64 } %i.ct, 0
  %i.cv = extractvalue { i64, i64 } %i.ct, 1
  store i64 0, ptr %i.bu, align 8, !alias.scope !1037, !noalias !1036
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1037, !noalias !1036
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !1037, !noalias !1036
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @12, i64 32, i1 false), !noalias !1036
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bu, i64 56 ; 2 uses
  store i64 %i.cu, ptr %i.cw, align 8, !alias.scope !1037, !noalias !1036
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store i64 %i.cv, ptr %i.cx, align 8, !alias.scope !1037, !noalias !1036
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !1035, !nonnull !4, !noundef !4 ; 4 uses
  %i.da = load i64, ptr %1, align 8, !range !11, !alias.scope !1035, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1035, !noundef !4 ; 3 uses
  %i.dd = icmp ult i64 %i.dc, 192153584101141163
  tail call void @llvm.assume(i1 %i.dd)
  %.idx.i = mul nuw nsw i64 %i.dc, 48
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !1036
  store ptr %i.cz, ptr %i.bt, align 8, !noalias !1036
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1036
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.da, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1036
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 2 uses
  store ptr %i.de, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.df = icmp eq i64 %i.dc, 0
  br i1 %i.df, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i: ; preds = %bb.b
  %.sroa.7.0..sroa_idx19.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

.body15.i:                                        ; preds = %.body.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread.i, %bb.ab, %bb.v, %bb.q, %bb.m
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body48.i, %.body.thread.i ], [ %i.et, %bb.m ], [ %i.fo, %bb.ab ], [ %i.fb, %bb.v ], [ %i.ev, %bb.q ], [ %lpad.loopexit.split-lp1072, %.body.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtBI_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2Y_EEEEB1u_.exit.thread.i unwind label %bb.ae, !noalias !1036

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionEBF_.exit.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i
  %i.dl = phi ptr [ %i.cz, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph.i ], [ %i.fr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionEBF_.exit.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 48
  store ptr %i.dm, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1038, !noalias !1036
  %.sroa.0.0.copyload.i = load i64, ptr %i.dl, align 8, !noalias !1039 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7.0..sroa_idx.i, i64 40, i1 false), !noalias !1039
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !1036
  store i64 %.sroa.0.0.copyload.i, ptr %i.bs, align 8, !noalias !1036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx19.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i, i64 16, i1 false), !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !1036
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !noalias !1036
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !1036
  %i.do = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2E_EECs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br)
          to label %bb.d unwind label %bb.e, !noalias !1040

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm), !noalias !1041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 24, i1 false), !noalias !1042
  invoke void @_RNvMNtNtCsbeZck1VjBmm_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB24_ENtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionE3newB2X_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bq, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.bu, i64 noundef %i.do, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bm)
          to label %bb.g unwind label %.body.thread54.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1036

bb.e:                                             ; preds = %bb.c
  %i.dp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB14_ENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body.thread.i unwind label %bb.f, !noalias !1040

bb.f:                                             ; preds = %bb.e
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1040
  unreachable

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionEBF_.exit.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB11_.exit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtB9_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2v_EEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %_RNvNtCs3v5ql5U6hxj_6fontir18feature_variations20merge_same_sub_rules.exit unwind label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterTNtNtCs3v5ql5U6hxj_6fontir18feature_variations6RegionINtNtNtNtBI_11collections5btree3map8BTreeMapNtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameB2Y_EEEEB1u_.exit.i, !noalias !1036

end_hunk_0
begin_hunk_1_@_RNvNtCs3v5ql5U6hxj_6fontir18feature_variations26overlay_feature_variations:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !noalias !1155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1145
  invoke void @_RNvXsC_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_11RawIntoIterTRNtNtCsbZq13ASDQ8l_10font_types3tag3TaguEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aa)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set8IntoIterRNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs3v5ql5U6hxj_6fontir.exit318.i unwind label %.body.thread354.i, !noalias !1153

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set8IntoIterRNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs3v5ql5U6hxj_6fontir.exit318.i: ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1145
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.thread309 unwind label %bb.gq

.thread309:                                       ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set8IntoIterRNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs3v5ql5U6hxj_6fontir.exit318.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store i64 0, ptr %i.ck, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store i64 1, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.32..sroa_idx313, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %.thread

.thread.i138:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEEB11_.exit316.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread354.i, %bb.er, %bb.ep
  %.pn244351.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEEB11_.exit316.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn.i142, %bb.er ], [ %lpad.thr_comm.i, %.body.thread354.i ], [ %i.sl, %bb.ep ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %.body148 unwind label %bb.fy, !noalias !1153

._crit_edge:                                      ; preds = %bb.hj, %bb.el
  call void @llvm.experimental.noalias.scope.decl(metadata !1161)
  call void @llvm.experimental.noalias.scope.decl(metadata !1162)
  call void @llvm.experimental.noalias.scope.decl(metadata !1163)
  %i.us = load i64, ptr %i.kt, align 8, !alias.scope !1164, !noundef !4 ; 2 uses
  %i.ut = icmp ugt i64 %i.us, 4
  br i1 %i.ut, label %bb.gk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit156

bb.gk:                                            ; preds = %._crit_edge
  %i.uu = load ptr, ptr %i.le, align 8, !alias.scope !1164, !nonnull !4, !noundef !4
  %i.uv = load i64, ptr %.sroa.7257.24..sroa_idx, align 8, !alias.scope !1164, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1164
  store i64 %i.us, ptr %i.g, align 8, !noalias !1164
  store ptr %i.uu, ptr %i.lf, align 8, !noalias !1164
  store i64 %i.uv, ptr %i.lg, align 8, !noalias !1164
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i152 unwind label %bb.gl, !noalias !1164

bb.gl:                                            ; preds = %bb.gk
  %i.uw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit163 unwind label %bb.gm, !noalias !1164

bb.gm:                                            ; preds = %bb.gl
  %i.ux = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1164
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i152: ; preds = %bb.gk
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc155 unwind label %bb.hp

.noexc155:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1164
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit156

.body148:                                         ; preds = %bb.ho, %bb.gq, %.thread.i138, %bb.er, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190
  %.pn30.pn = phi { ptr, i32 } [ %.pn.i142, %bb.er ], [ %.pn30328, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190 ], [ %i.vg, %bb.gq ], [ %.pn244351.i, %.thread.i138 ], [ %.pn30328, %bb.ho ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1165)
  call void @llvm.experimental.noalias.scope.decl(metadata !1166)
  call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  %i.uy = load i64, ptr %i.kt, align 8, !alias.scope !1168, !noundef !4 ; 2 uses
  %i.uz = icmp ugt i64 %i.uy, 4
  br i1 %i.uz, label %bb.gn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit163

bb.gn:                                            ; preds = %.body148
  %i.va = load ptr, ptr %i.le, align 8, !alias.scope !1168, !nonnull !4, !noundef !4
  %i.vb = load i64, ptr %.sroa.7257.24..sroa_idx, align 8, !alias.scope !1168, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1168
  store i64 %i.uy, ptr %i.f, align 8, !noalias !1168
  %i.vc = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.va, ptr %i.vc, align 8, !noalias !1168
  %i.vd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.vb, ptr %i.vd, align 8, !noalias !1168
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i159 unwind label %bb.go, !noalias !1168

bb.go:                                            ; preds = %bb.gn
  %i.ve = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.gp, !noalias !1168

bb.gp:                                            ; preds = %bb.go
  %i.vf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1168
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i159: ; preds = %bb.gn
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc162 unwind label %bb.eb

.noexc162:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1168
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit163

bb.gq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3set8IntoIterRNtNtCsbZq13ASDQ8l_10font_types3tag3TagEECs3v5ql5U6hxj_6fontir.exit318.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit291.i, %bb.fi, %.lr.ph
  %i.vg = landingpad { ptr, i32 }
          cleanup
  br label %.body148

bb.gr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit291.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  store i64 %.sroa.0223.0, ptr %i.ck, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx312, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  store i64 1, ptr %i.cj, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.32..sroa_idx313, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  %i.vh = trunc nuw i64 %.sroa.0223.0 to i1
  br i1 %i.vh, label %bb.gs, label %.thread

bb.gs:                                            ; preds = %.thread290, %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx312, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch)
  %i.vi = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ks, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %bb.gt unwind label %bb.gu, !noalias !1169

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false), !noalias !1171
  invoke void @_RNvMNtNtCsbeZck1VjBmm_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB17_4RankE3newB19_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ch, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cq, i64 noundef %i.vi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.gx unwind label %bb.gw

bb.gu:                                            ; preds = %bb.gs
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %.body165 unwind label %bb.gv, !noalias !1169

bb.gv:                                            ; preds = %bb.gu
  %i.vk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1169
  unreachable

_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173: ; preds = %bb.hc, %.noexc180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  %.pre = load i64, ptr %i.cj, align 8, !range !9
  %i.vl = trunc nuw i64 %.pre to i1
  br i1 %i.vl, label %.thread, label %bb.hj

.body165:                                         ; preds = %bb.he, %bb.gu, %bb.gw, %bb.hb
  %i.vm = phi i64 [ 1, %bb.hb ], [ 1, %bb.gu ], [ 1, %bb.he ], [ %i.vp, %bb.gw ] ; 2 uses
  %.sroa.017.0 = phi i1 [ true, %bb.hb ], [ true, %bb.gu ], [ true, %bb.he ], [ %.sroa.017.1, %bb.gw ]
  %.sroa.018.1 = phi i1 [ false, %bb.hb ], [ false, %bb.gu ], [ false, %bb.he ], [ %.sroa.018.2, %bb.gw ] ; 2 uses
  %.pn30 = phi { ptr, i32 } [ %i.xo, %bb.hb ], [ %i.vj, %bb.gu ], [ %i.xt, %bb.he ], [ %i.vq, %bb.gw ] ; 2 uses
  %i.vn = load i64, ptr %i.cj, align 8, !range !9, !noundef !4
  %i.vo = icmp ne i64 %i.vn, 0
  %or.cond = and i1 %.sroa.017.0, %i.vo
  br i1 %or.cond, label %bb.hn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190

bb.gw:                                            ; preds = %bb.hg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167, %bb.gt, %bb.hl, %bb.hk, %bb.gx
  %i.vp = phi i64 [ %i.xv, %bb.hl ], [ %i.xv, %bb.hk ], [ %i.xv, %bb.hg ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175 ], [ 1, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167 ], [ 1, %bb.gx ], [ 1, %bb.gt ]
  %.sroa.017.1 = phi i1 [ false, %bb.hl ], [ false, %bb.hk ], [ false, %bb.hg ], [ true, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175 ], [ true, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167 ], [ true, %bb.gx ], [ true, %bb.gt ]
  %.sroa.018.2 = phi i1 [ %.sroa.018.0695, %bb.hl ], [ %.sroa.018.0695, %bb.hk ], [ %.sroa.018.0695, %bb.hg ], [ false, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175 ], [ false, %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167 ], [ false, %bb.gx ], [ false, %bb.gt ]
  %i.vq = landingpad { ptr, i32 }
          cleanup
  br label %.body165

bb.gx:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1170
  %i.vr = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsbeZck1VjBmm_8indexmap3map5entryINtB2_5EntryNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtBR_4RankE10or_defaultBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ch)
          to label %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167 unwind label %bb.gw

_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167: ; preds = %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg)
  call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.vs = load i64, ptr %i.kt, align 8, !alias.scope !1174, !noundef !4 ; 3 uses
  %i.vt = icmp ugt i64 %i.vs, 4
  %i.vu = load i64, ptr %.sroa.7257.24..sroa_idx, align 8
  %.sink12.i.i168 = select i1 %i.vt, i64 %i.vu, i64 %i.vs
  %i.vv = load i64, ptr %i.ku, align 8, !alias.scope !1175, !noundef !4 ; 3 uses
  %i.vw = icmp ugt i64 %i.vv, 4
  %i.vx = load i64, ptr %i.kv, align 8
  %.sink12.i7.i = select i1 %i.vw, i64 %i.vx, i64 %i.vv
  %i.vy = icmp ugt i64 %.sink12.i.i168, %.sink12.i7.i ; 5 uses
  %..i = select i1 %i.vy, ptr %i.cl, ptr %i.cp
  invoke fastcc void @_RNvXsA_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_ENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %..i) #29
          to label %.noexc172 unwind label %bb.gw

.noexc172:                                        ; preds = %_RNvMsd_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_E6tripleCs3v5ql5U6hxj_6fontir.exit.i167
  %i.vz = load i64, ptr %i.kw, align 8, !noalias !1176, !noundef !4 ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, 4                   ; 3 uses
  %i.wb = load ptr, ptr %i.ky, align 8, !nonnull !4 ; 2 uses
  %.pre.i171 = load i64, ptr %i.kx, align 8
  %i.wc = select i1 %i.wa, i64 %.pre.i171, i64 %i.vz ; 2 uses
  %.sink12.i10.i = select i1 %i.wa, ptr %i.wb, ptr %i.kx ; 2 uses
  %i.wd = select i1 %i.vy, i64 %i.vv, i64 %i.vs   ; 2 uses
  %i.we = icmp ugt i64 %i.wd, 4
  br i1 %i.we, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %.noexc172
  %.val = load ptr, ptr %i.lh, align 8, !nonnull !4
  %.val692 = load ptr, ptr %i.le, align 8, !nonnull !4
  %i.wf = select i1 %i.vy, ptr %.val, ptr %.val692
  %.sroa.gep207.val = load i64, ptr %i.kv, align 8
  %.sroa.7257.24..sroa_idx.val = load i64, ptr %.sroa.7257.24..sroa_idx, align 8
  %i.wg = select i1 %i.vy, i64 %.sroa.gep207.val, i64 %.sroa.7257.24..sroa_idx.val
  br label %bb.ha

bb.gz:                                            ; preds = %.noexc172
  %.44.i.sroa.sel203 = select i1 %i.vy, ptr %i.kv, ptr %.sroa.7257.24..sroa_idx
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %bb.gy
  %.sink13.i12.i = phi ptr [ %i.wf, %bb.gy ], [ %.44.i.sroa.sel203, %bb.gz ] ; 3 uses
  %.sink12.i13.i = phi i64 [ %i.wg, %bb.gy ], [ %i.wd, %bb.gz ] ; 2 uses
  %i.wh = icmp eq i64 %i.wc, 0
  %i.wi = icmp eq i64 %.sink12.i13.i, 0
  %or.cond37.i = or i1 %i.wh, %i.wi
  br i1 %or.cond37.i, label %.loopexit335, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ha
  %.idx40.i = shl i64 %.sink12.i13.i, 3           ; 4 uses
  %i.wj = getelementptr i8, ptr %.sink13.i12.i, i64 %.idx40.i ; 5 uses
  %.idx.i169 = shl i64 %i.wc, 3                   ; 4 uses
  %i.wk = getelementptr i8, ptr %.sink12.i10.i, i64 %.idx.i169 ; 5 uses
  %i.wl = add i64 %.idx40.i, -8
  %i.wm = lshr exact i64 %i.wl, 3
  %i.wn = add i64 %.idx.i169, -8
  %i.wo = lshr exact i64 %i.wn, 3
  %i.wp = call i64 @llvm.umin.i64(i64 %i.wm, i64 %i.wo) ; 2 uses
  %i.wq = add nuw nsw i64 %i.wp, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.wp, 7
  br i1 %min.iters.check, label %.lr.ph.i170.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %.sroa.gep = getelementptr i8, ptr %i.wb, i64 -8
  %.sink12.i10.i.sroa.sel = select i1 %i.wa, ptr %.sroa.gep, ptr %i.d
  %2 = add i64 %.idx40.i, -8
  %i.wr = lshr exact i64 %2, 3
  %3 = add i64 %.idx.i169, -8
  %i.ws = lshr exact i64 %3, 3
  %umin = call i64 @llvm.umin.i64(i64 %i.wr, i64 %i.ws)
  %i.wt = shl nuw i64 %umin, 3                    ; 2 uses
  %i.wu = sub i64 %.idx.i169, %i.wt
  %scevgep939 = getelementptr i8, ptr %.sink12.i10.i.sroa.sel, i64 %i.wu
  %scevgep940 = getelementptr i8, ptr %.sink13.i12.i, i64 -8
  %i.wv = sub i64 %.idx40.i, %i.wt
  %scevgep941 = getelementptr i8, ptr %scevgep940, i64 %i.wv
  %bound0 = icmp ult ptr %scevgep939, %i.wj
  %bound1 = icmp ult ptr %scevgep941, %i.wk
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i170.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.wq, 4611686018427387900     ; 3 uses
  %i.ww = mul i64 %n.vec, -8                      ; 2 uses
  %i.wx = getelementptr i8, ptr %i.wk, i64 %i.ww
  %i.wy = getelementptr i8, ptr %i.wj, i64 %i.ww
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.wz = mul i64 %index, -8                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.wk, i64 %i.wz ; 2 uses
  %next.gep942 = getelementptr i8, ptr %i.wj, i64 %i.wz ; 2 uses
  %i.xa = getelementptr inbounds i8, ptr %next.gep942, i64 -16
  %i.xb = getelementptr inbounds i8, ptr %next.gep942, i64 -32
  %wide.load = load <2 x i64>, ptr %i.xa, align 8, !alias.scope !1177, !noalias !1178
  %wide.load943 = load <2 x i64>, ptr %i.xb, align 8, !alias.scope !1177, !noalias !1178
  %i.xc = getelementptr inbounds i8, ptr %next.gep, i64 -16 ; 2 uses
  %i.xd = getelementptr inbounds i8, ptr %next.gep, i64 -32 ; 2 uses
  %wide.load944 = load <2 x i64>, ptr %i.xc, align 8, !alias.scope !1179, !noalias !1180
  %wide.load945 = load <2 x i64>, ptr %i.xd, align 8, !alias.scope !1179, !noalias !1180
  %i.xe = or <2 x i64> %wide.load944, %wide.load
  %i.xf = or <2 x i64> %wide.load945, %wide.load943
  store <2 x i64> %i.xe, ptr %i.xc, align 8, !alias.scope !1179, !noalias !1180
  store <2 x i64> %i.xf, ptr %i.xd, align 8, !alias.scope !1179, !noalias !1180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.xg = icmp eq i64 %index.next, %n.vec
  br i1 %i.xg, label %middle.block, label %vector.body, !llvm.loop !1021

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.wq, %n.vec
  br i1 %cmp.n, label %.loopexit335, label %.lr.ph.i170.preheader

.lr.ph.i170.preheader:                            ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.sroa.417.039.i.ph = phi ptr [ %i.wk, %vector.memcheck ], [ %i.wk, %.lr.ph.preheader.i ], [ %i.wx, %middle.block ]
  %.sroa.9.038.i.ph = phi ptr [ %i.wj, %vector.memcheck ], [ %i.wj, %.lr.ph.preheader.i ], [ %i.wy, %middle.block ]
  br label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %.lr.ph.i170.preheader, %.lr.ph.i170
  %.sroa.417.039.i = phi ptr [ %i.xh, %.lr.ph.i170 ], [ %.sroa.417.039.i.ph, %.lr.ph.i170.preheader ]
  %.sroa.9.038.i = phi ptr [ %i.xi, %.lr.ph.i170 ], [ %.sroa.9.038.i.ph, %.lr.ph.i170.preheader ]
  %i.xh = getelementptr inbounds i8, ptr %.sroa.417.039.i, i64 -8 ; 4 uses
  %i.xi = getelementptr inbounds i8, ptr %.sroa.9.038.i, i64 -8 ; 3 uses
  %i.xj = load i64, ptr %i.xi, align 8, !noalias !1178, !noundef !4
  %i.xk = load i64, ptr %i.xh, align 8, !noalias !1178, !noundef !4
  %i.xl = or i64 %i.xk, %i.xj
  store i64 %i.xl, ptr %i.xh, align 8, !noalias !1178
  %i.xm = icmp eq ptr %.sink12.i10.i, %i.xh
  %i.xn = icmp eq ptr %.sink13.i12.i, %i.xi
  %or.cond.i = select i1 %i.xm, i1 true, i1 %i.xn
  br i1 %or.cond.i, label %.loopexit335, label %.lr.ph.i170, !llvm.loop !1022

.loopexit335:                                     ; preds = %.lr.ph.i170, %middle.block, %bb.ha
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cg, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false), !noalias !1181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXs3_NtCs3v5ql5U6hxj_6fontir18feature_variationsNtB5_4RankINtNtNtCsf3Ta7LF998c_4core3ops3bit11BitOrAssignRBM_E12bitor_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.vr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cg)
          to label %bb.hc unwind label %bb.hb

bb.hb:                                            ; preds = %.loopexit335
  %i.xo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.cg) #23
          to label %.body165 unwind label %bb.eb

bb.hc:                                            ; preds = %.loopexit335
  call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  %i.xp = load i64, ptr %i.kz, align 8, !alias.scope !1185, !noundef !4 ; 2 uses
  %i.xq = icmp ugt i64 %i.xp, 4
  br i1 %i.xq, label %bb.hd, label %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173

bb.hd:                                            ; preds = %bb.hc
  %i.xr = load ptr, ptr %i.lb, align 8, !alias.scope !1185, !nonnull !4, !noundef !4
  %i.xs = load i64, ptr %i.la, align 8, !alias.scope !1185, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1185
  store i64 %i.xp, ptr %i.c, align 8, !noalias !1185
  store ptr %i.xr, ptr %i.lc, align 8, !noalias !1185
  store i64 %i.xs, ptr %i.ld, align 8, !noalias !1185
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175 unwind label %bb.he, !noalias !1185

bb.he:                                            ; preds = %bb.hd
  %i.xt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body165 unwind label %bb.hf, !noalias !1185

bb.hf:                                            ; preds = %bb.he
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1185
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175: ; preds = %bb.hd
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecyENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc180 unwind label %bb.gw

.noexc180:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1185
  br label %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173

.thread:                                          ; preds = %.thread309, %bb.gr, %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173
  %.sroa.018.0695 = phi i1 [ false, %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173 ], [ true, %bb.gr ], [ true, %.thread309 ] ; 4 uses
  %i.xv = phi i64 [ 1, %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173 ], [ 0, %bb.gr ], [ 0, %.thread309 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.32..sroa_idx313, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  %i.xw = invoke noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEB1J_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ks, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf)
          to label %bb.hg unwind label %bb.hh, !noalias !1186

bb.hg:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i64 24, i1 false), !noalias !1188
  invoke void @_RNvMNtNtCsbeZck1VjBmm_8indexmap5inner5entryINtNtNtB6_3map5entry5EntryNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB17_4RankE3newB19_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ce, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.cq, i64 noundef %i.xw, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.hk unwind label %bb.gw

bb.hh:                                            ; preds = %.thread
  %i.xx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190 unwind label %bb.hi, !noalias !1186

bb.hi:                                            ; preds = %bb.hh
  %i.xy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24, !noalias !1186
  unreachable

bb.hj:                                            ; preds = %bb.hm, %_RNvXst_CsgkGe90ZnUBq_8smallvecINtB5_8SmallVecAyj4_EINtNtNtCsf3Ta7LF998c_4core3ops5index8IndexMutNtNtBS_5range9RangeFullE9index_mutCs3v5ql5U6hxj_6fontir.exit.i.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  %i.xz = icmp eq ptr %i.rz, %i.rq
  br i1 %i.xz, label %._crit_edge, label %.lr.ph

bb.hk:                                            ; preds = %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1187
  %i.ya = invoke noundef nonnull align 8 ptr @_RNvMNtNtCsbeZck1VjBmm_8indexmap3map5entryINtB2_5EntryNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtBR_4RankE10or_defaultBT_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.ce)
          to label %bb.hl unwind label %bb.gw

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  invoke void @_RNvXs3_NtCs3v5ql5U6hxj_6fontir18feature_variationsNtB5_4RankINtNtNtCsf3Ta7LF998c_4core3ops3bit11BitOrAssignRBM_E12bitor_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ya, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cl)
          to label %bb.hm unwind label %bb.gw

bb.hm:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %bb.hj

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190: ; preds = %bb.hh, %bb.hn, %.body165
  %i.yb = phi i64 [ %i.vm, %.body165 ], [ %i.vm, %bb.hn ], [ %i.xv, %bb.hh ]
  %.pn30328 = phi { ptr, i32 } [ %.pn30, %.body165 ], [ %.pn30, %bb.hn ], [ %i.xx, %bb.hh ] ; 2 uses
  %.sroa.018.1327 = phi i1 [ %.sroa.018.1, %.body165 ], [ %.sroa.018.1, %bb.hn ], [ %.sroa.018.0695, %bb.hh ]
  %i.yc = icmp ne i64 %i.yb, 0
  %or.cond3 = and i1 %.sroa.018.1327, %i.yc
  br i1 %or.cond3, label %bb.ho, label %.body148

bb.hn:                                            ; preds = %.body165
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.16.32..sroa_idx313)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190 unwind label %bb.eb

bb.ho:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit190
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx312)
          to label %.body148 unwind label %bb.eb

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit163: ; preds = %.body148, %bb.hp, %bb.gl, %.noexc162
  %.pn33 = phi { ptr, i32 } [ %.pn30.pn, %.noexc162 ], [ %i.uw, %bb.gl ], [ %i.yd, %bb.hp ], [ %.pn30.pn, %.body148 ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit194 unwind label %bb.eb

bb.hp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecyEECs3v5ql5U6hxj_6fontir.exit.i.i.i152
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit163

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit156: ; preds = %._crit_edge, %.noexc155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtCsbZq13ASDQ8l_10font_types3tag3TagTINtNtCsgdm2QMcbaeA_10fontdrasil6coords5CoordNtB1K_15NormalizedSpaceEB1H_EENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cm)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit196 unwind label %bb.ek

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxEBF_.exit196: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs3v5ql5U6hxj_6fontir18feature_variations4RankEBF_.exit156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7257)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7257)
  %i.ye = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1189, !nonnull !4, !noundef !4
  %i.yf = load ptr, ptr %.sroa.4.0..sroa_idx211, align 8, !alias.scope !1189, !nonnull !4, !noundef !4 ; 2 uses
  %i.yg = icmp eq ptr %i.yf, %i.ye
  br i1 %i.yg, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB1v_4RankEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1x_.exit.thread, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterINtCsbeZck1VjBmm_8indexmap6BucketNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB1v_4RankEENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4nextB1x_.exit

.loopexit.split-lp343:                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB1p_4RankEEB1r_.exit, %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co, %bb.cl, %.noexc113, %bb.en
  %.pn35.pn.pn.ph = phi { ptr, i32 } [ %i.mc, %bb.co ], [ %.pn35.pn, %.noexc113 ], [ %i.rw, %bb.en ], [ %i.lw, %bb.cl ], [ %lpad.loopexit.split-lp990, %.loopexit.split-lp343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn35.pn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsbeZck1VjBmm_8indexmap3map4iter8IntoIterNtNtCs3v5ql5U6hxj_6fontir18feature_variations4NBoxNtB1p_4RankEEB1r_.exit ]
  invoke void @_RNvXsf_NtCsf3pcBkf8rwa_9hashbrown3rawINtB5_8RawTablejENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs3v5ql5U6hxj_6fontir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.7221.0..sroa_idx)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsf3pcBkf8rwa_9hashbrown5table9HashTablejEECs3v5ql5U6hxj_6fontir.exit.i.i unwind label %bb.hq

bb.hq:                                            ; preds = %.loopexit.split-lp343
  %i.yh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
