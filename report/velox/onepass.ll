Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/onepass?download=true
inline.NumInlined: 485
inline.NumDeleted: 277
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::log_internal::LogMessage" = type { %"class.absl::lts_20240116::base_internal::ErrnoSaver", %"class.std::unique_ptr" }
%"class.absl::lts_20240116::base_internal::ErrnoSaver" = type { i32 }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }
%"class.absl::lts_20240116::FixedArray" = type { %"class.absl::lts_20240116::FixedArray<re2::InstCond, 64>::Storage" }
%"class.absl::lts_20240116::FixedArray<re2::InstCond, 64>::Storage" = type { %"class.absl::lts_20240116::FixedArray<re2::InstCond, 64>::NonEmptyInlinedStorage", %"class.absl::lts_20240116::container_internal::CompressedTuple", ptr }
%"class.absl::lts_20240116::FixedArray<re2::InstCond, 64>::NonEmptyInlinedStorage" = type { [512 x i8] }
%"class.absl::lts_20240116::container_internal::CompressedTuple" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl" }
%"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::Storage" }
%"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::Storage" = type { i64 }
%"class.absl::lts_20240116::FixedArray.29" = type { %"class.absl::lts_20240116::FixedArray<int, 128>::Storage" }
%"class.absl::lts_20240116::FixedArray<int, 128>::Storage" = type { %"class.absl::lts_20240116::FixedArray<int, 128>::NonEmptyInlinedStorage", %"class.absl::lts_20240116::container_internal::CompressedTuple.30", ptr }
%"class.absl::lts_20240116::FixedArray<int, 128>::NonEmptyInlinedStorage" = type { [512 x i8] }
%"class.absl::lts_20240116::container_internal::CompressedTuple.30" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl.31" }
%"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl.31" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::Storage" }
%"class.absl::lts_20240116::InlinedVector" = type { %"class.absl::lts_20240116::inlined_vector_internal::Storage" }
%"class.absl::lts_20240116::inlined_vector_internal::Storage" = type { %"class.absl::lts_20240116::container_internal::CompressedTuple.36", %"union.absl::lts_20240116::inlined_vector_internal::Storage<unsigned char, 2048, std::allocator<unsigned char>>::Data" }
%"class.absl::lts_20240116::container_internal::CompressedTuple.36" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl.37" }
%"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::CompressedTupleImpl.37" = type { %"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::Storage.42" }
%"struct.absl::lts_20240116::container_internal::internal_compressed_tuple::Storage.42" = type { i64 }
%"union.absl::lts_20240116::inlined_vector_internal::Storage<unsigned char, 2048, std::allocator<unsigned char>>::Data" = type { %"struct.absl::lts_20240116::inlined_vector_internal::Storage<unsigned char, 2048, std::allocator<unsigned char>>::Allocated", [2032 x i8] }
%"struct.absl::lts_20240116::inlined_vector_internal::Storage<unsigned char, 2048, std::allocator<unsigned char>>::Allocated" = type { ptr, i64 }
%"class.re2::SparseSetT" = type { i32, %"class.re2::PODArray.43", %"class.re2::PODArray.43" }
%"class.re2::PODArray.43" = type { %"class.std::unique_ptr.44" }
%"class.std::unique_ptr.44" = type { %"struct.std::__uniq_ptr_data.45" }
%"struct.std::__uniq_ptr_data.45" = type { %"class.std::__uniq_ptr_impl.46" }
%"class.std::__uniq_ptr_impl.46" = type { %"class.std::tuple.47" }
%"class.std::tuple.47" = type { %"struct.std::_Tuple_impl.48" }
%"struct.std::_Tuple_impl.48" = type { %"struct.std::_Tuple_impl.49", %"struct.std::_Head_base.51" }
%"struct.std::_Tuple_impl.49" = type { %"struct.std::_Head_base.50" }
%"struct.std::_Head_base.50" = type { %"struct.re2::PODArray<int>::Deleter" }
%"struct.re2::PODArray<int>::Deleter" = type { i32 }
%"struct.std::_Head_base.51" = type { ptr }
%"class.absl::lts_20240116::log_internal::LogMessage::OstreamView" = type { %"class.std::basic_streambuf", ptr, %"class.absl::lts_20240116::Span.57", %"class.absl::lts_20240116::Span.57", %"class.absl::lts_20240116::Span.57" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.absl::lts_20240116::Span.57" = type { ptr, i64 }

$_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re26InstOpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS7_ = comdat any

$_ZN3re210SparseSetTIvED2Ev = comdat any

$_ZN4absl12lts_2024011623inlined_vector_internal7StorageIhLm2048ESaIhEE6InsertINS1_16CopyValueAdapterIS3_EEEEPhPKhT_m = comdat any

@.str = private unnamed_addr constant [63 x i8] c"/opt-bench/work/velox/velox/build/_deps/re2-src/re2/onepass.cc\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Cannot use SearchOnePass for unanchored matches.\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"unhandled opcode: \00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN3re214OnePass_ChecksEv() local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3re24Prog13SearchOnePassESt17basic_string_viewIcSt11char_traitsIcEES4_NS0_6AnchorENS0_9MatchKindEPS4_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(432) %0, i64 %1, ptr %2, i64 %3, ptr %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7, i32 noundef %8) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  %i.a = alloca [10 x ptr], align 16              ; 11 uses
  %i.b = alloca [10 x ptr], align 16              ; 14 uses
  %i.c = icmp ne i32 %5, 1
  %i.d = icmp ne i32 %6, 2
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS0_11LogSeverityE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull @.str, i32 noundef 220, i32 noundef 2) #15
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i64 48, ptr nonnull @.str.1)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi49EEERS2_RAT__Kc.exit: ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.z

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  resume { ptr, i32 } %i.e

bb.d:                                             ; preds = %bb.a
  %i.f = shl i32 %8, 1                            ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.f, i32 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.g = zext nneg i32 %spec.store.select to i64  ; 6 uses
  %i.h = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 0, i64 %i.h, i1 false), !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 0, i64 %i.h, i1 false), !tbaa !10
  %i.i = icmp eq ptr %4, null                     ; 2 uses
  %spec.select162 = select i1 %i.i, i64 %1, i64 %3 ; 4 uses
  %spec.select163 = select i1 %i.i, ptr %2, ptr %4 ; 5 uses
  %i.j = load i8, ptr %0, align 8, !tbaa !77, !range !50, !noundef !51
  %i.k = trunc nuw i8 %i.j to i1
  %.not = icmp ne ptr %spec.select163, %2
  %or.cond165.not = select i1 %i.k, i1 %.not, i1 false
  br i1 %or.cond165.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !78, !range !50, !noundef !51
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %spec.select163, i64 %spec.select162
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %.not122 = icmp ne ptr %i.o, %i.p
  %or.cond168.not = select i1 %i.n, i1 %.not122, i1 false
  br i1 %or.cond168.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !10   ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !52
  %i.u = shl i32 %i.t, 2
  %i.v = add i32 %i.u, 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %2, ptr %i.b, align 16, !tbaa !10
  %.not200 = icmp eq i64 %1, 0
  br i1 %.not200, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %bb.f
  %i.x = load i32, ptr %i.r, align 4, !tbaa !53
  %spec.select = select i1 %i.n, i32 2, i32 %6    ; 2 uses
  %i.y = icmp eq i32 %spec.select, 2
  %i.z = icmp sgt i32 %8, 1                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = icmp ne i32 %spec.select, 0
  %scevgep = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %scevgep206 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %smax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 3)
  %i.ac = zext nneg i32 %smax to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nsw i64 %i.ad, -16
  %i.af = add nsw i64 %i.g, -2                    ; 16 uses
  %min.iters.check242 = icmp ult i64 %i.af, 4
  %min.iters.check244 = icmp ult i64 %i.af, 16
  %i.ag = and i64 %i.af, 12
  %n.vec246 = and i64 %i.af, -16                  ; 4 uses
  %i.ah = or disjoint i64 %n.vec246, 2            ; 2 uses
  %cmp.n260 = icmp eq i64 %i.af, %n.vec246
  %min.epilog.iters.check266 = icmp eq i64 %i.ag, 0
  %n.vec268 = and i64 %i.af, -4                   ; 2 uses
  %i.ai = or i64 %i.af, 2
  %cmp.n282 = icmp eq i64 %i.af, %n.vec268
  %min.iters.check = icmp ult i64 %i.af, 4
  %min.iters.check226 = icmp ult i64 %i.af, 16
  %i.aj = and i64 %i.af, 12
  %n.vec = and i64 %i.af, -16                     ; 4 uses
  %i.ak = or disjoint i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %i.af, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  %n.vec229 = and i64 %i.af, -4                   ; 2 uses
  %i.al = or i64 %i.af, 2
  %cmp.n240 = icmp eq i64 %i.af, %n.vec229
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph191, %.loopexit176
  %.0113189 = phi i32 [ %i.x, %.lr.ph191 ], [ %.1114, %.loopexit176 ] ; 6 uses
  %.0115188 = phi i1 [ false, %.lr.ph191 ], [ %.1116, %.loopexit176 ] ; 3 uses
  %.0118187 = phi ptr [ %2, %.lr.ph191 ], [ %i.dy, %.loopexit176 ] ; 11 uses
  %.0119186 = phi ptr [ %i.r, %.lr.ph191 ], [ %.1120, %.loopexit176 ]
  %i.am = load i8, ptr %.0118187, align 1, !tbaa !54
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %.0119186, i64 4
  %i.ar = zext i8 %i.ap to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !53 ; 7 uses
  %i.au = and i32 %i.at, 63                       ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call noundef i32 @_ZN3re24Prog10EmptyFlagsESt17basic_string_viewIcSt11char_traitsIcEEPKc(i64 %spec.select162, ptr %spec.select163, ptr noundef nonnull %.0118187)
  %i.ax = xor i32 %i.aw, -1
  %i.ay = and i32 %i.au, %i.ax
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.az = lshr i32 %i.at, 16
  %i.ba = mul nsw i32 %i.az, %i.v
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds i8, ptr %i.r, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !53
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1120 = phi ptr [ %i.bc, %bb.i ], [ null, %bb.h ] ; 3 uses
  %.1114 = phi i32 [ %i.bd, %bb.i ], [ 48, %bb.h ] ; 2 uses
  %i.be = icmp eq i32 %.0113189, 48
  %or.cond5 = select i1 %i.y, i1 true, i1 %i.be
  br i1 %or.cond5, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = and i32 %i.at, 64
  %i.bg = icmp eq i32 %i.bf, 0                    ; 2 uses
  %i.bh = and i32 %.1114, 63
  %i.bi = icmp eq i32 %i.bh, 0
  %or.cond128 = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond128, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = and i32 %.0113189, 63                   ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = tail call noundef i32 @_ZN3re24Prog10EmptyFlagsESt17basic_string_viewIcSt11char_traitsIcEEPKc(i64 %spec.select162, ptr %spec.select163, ptr noundef nonnull %.0118187)
  %i.bm = xor i32 %i.bl, -1
  %i.bn = and i32 %i.bj, %i.bm
  %.not.i132 = icmp eq i32 %i.bn, 0
  br i1 %.not.i132, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %i.z, label %._crit_edge, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit

._crit_edge:                                      ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep, ptr nonnull align 16 %scevgep206, i64 %i.ae, i1 false), !tbaa !10
  %i.bo = and i32 %.0113189, 32640
  %.not125.not = icmp eq i32 %i.bo, 0
  br i1 %.not125.not, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, label %iter.check263

iter.check263:                                    ; preds = %._crit_edge
  br i1 %min.iters.check242, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check243

vector.main.loop.iter.check243:                   ; preds = %iter.check263
  br i1 %min.iters.check244, label %vec.epilog.ph267, label %vector.ph245

vector.ph245:                                     ; preds = %vector.main.loop.iter.check243
  %broadcast.splatinsert247 = insertelement <4 x i32> poison, i32 %.0113189, i64 0
  %broadcast.splat248 = shufflevector <4 x i32> %broadcast.splatinsert247, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert249 = insertelement <4 x ptr> poison, ptr %.0118187, i64 0
  %broadcast.splat250 = shufflevector <4 x ptr> %broadcast.splatinsert249, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body251

vector.body251:                                   ; preds = %vector.ph245, %vector.body251
  %index252 = phi i64 [ 0, %vector.ph245 ], [ %index.next257, %vector.body251 ] ; 2 uses
  %vec.ind253 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph245 ], [ %vec.ind.next258, %vector.body251 ] ; 5 uses
  %step.add254 = add <4 x i32> %vec.ind253, splat (i32 4)
  %step.add.2255 = add <4 x i32> %vec.ind253, splat (i32 8)
  %step.add.3256 = add <4 x i32> %vec.ind253, splat (i32 12)
  %i.bp = shl <4 x i32> splat (i32 32), %vec.ind253
  %i.bq = shl <4 x i32> splat (i32 32), %step.add254
  %i.br = shl <4 x i32> splat (i32 32), %step.add.2255
  %i.bs = shl <4 x i32> splat (i32 32), %step.add.3256
  %i.bt = and <4 x i32> %i.bp, %broadcast.splat248
  %i.bu = and <4 x i32> %i.bq, %broadcast.splat248
  %i.bv = and <4 x i32> %i.br, %broadcast.splat248
  %i.bw = and <4 x i32> %i.bs, %broadcast.splat248
  %i.bx = icmp ne <4 x i32> %i.bt, zeroinitializer
  %i.by = icmp ne <4 x i32> %i.bu, zeroinitializer
  %i.bz = icmp ne <4 x i32> %i.bv, zeroinitializer
  %i.ca = icmp ne <4 x i32> %i.bw, zeroinitializer
  %i.cb = getelementptr [8 x i8], ptr %i.b, i64 %index252 ; 4 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 16
  %i.cd = getelementptr i8, ptr %i.cb, i64 48
  %i.ce = getelementptr i8, ptr %i.cb, i64 80
  %i.cf = getelementptr i8, ptr %i.cb, i64 112
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat250, ptr align 16 %i.cc, <4 x i1> %i.bx), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat250, ptr align 16 %i.cd, <4 x i1> %i.by), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat250, ptr align 16 %i.ce, <4 x i1> %i.bz), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat250, ptr align 16 %i.cf, <4 x i1> %i.ca), !tbaa !10
  %index.next257 = add nuw i64 %index252, 16      ; 2 uses
  %vec.ind.next258 = add <4 x i32> %vec.ind253, splat (i32 16)
  %i.cg = icmp eq i64 %index.next257, %n.vec246
  br i1 %i.cg, label %middle.block259, label %vector.body251, !llvm.loop !65

middle.block259:                                  ; preds = %vector.body251
  br i1 %cmp.n260, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, label %vec.epilog.iter.check265

vec.epilog.iter.check265:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check266, label %.lr.ph.i.preheader, label %vec.epilog.ph267, !prof !79

vec.epilog.ph267:                                 ; preds = %vector.main.loop.iter.check243, %vec.epilog.iter.check265
  %vec.epilog.resume.val261 = phi i64 [ %n.vec246, %vec.epilog.iter.check265 ], [ 0, %vector.main.loop.iter.check243 ]
  %bc.resume.val262 = phi i64 [ %i.ah, %vec.epilog.iter.check265 ], [ 2, %vector.main.loop.iter.check243 ]
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %.0113189, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <4 x ptr> poison, ptr %.0118187, i64 0
  %broadcast.splat272 = shufflevector <4 x ptr> %broadcast.splatinsert271, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ch = trunc i64 %bc.resume.val262 to i32
  %broadcast.splatinsert273 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat274 = shufflevector <4 x i32> %broadcast.splatinsert273, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction275 = add <4 x i32> %broadcast.splat274, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph267
  %index277 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph267 ], [ %index.next279, %vec.epilog.vector.body276 ] ; 2 uses
  %vec.ind278 = phi <4 x i32> [ %induction275, %vec.epilog.ph267 ], [ %vec.ind.next280, %vec.epilog.vector.body276 ] ; 2 uses
  %i.ci = shl <4 x i32> splat (i32 32), %vec.ind278
  %i.cj = and <4 x i32> %i.ci, %broadcast.splat270
  %i.ck = icmp ne <4 x i32> %i.cj, zeroinitializer
  %i.cl = getelementptr [8 x i8], ptr %i.b, i64 %index277
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat272, ptr align 16 %i.cm, <4 x i1> %i.ck), !tbaa !10
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %vec.ind.next280 = add <4 x i32> %vec.ind278, splat (i32 4)
  %i.cn = icmp eq i64 %index.next279, %n.vec268
  br i1 %i.cn, label %vec.epilog.middle.block281, label %vec.epilog.vector.body276, !llvm.loop !66

vec.epilog.middle.block281:                       ; preds = %vec.epilog.vector.body276
  br i1 %cmp.n282, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check263, %vec.epilog.iter.check265, %vec.epilog.middle.block281
  %indvars.iv.i.ph = phi i64 [ 2, %iter.check263 ], [ %i.ah, %vec.epilog.iter.check265 ], [ %i.ai, %vec.epilog.middle.block281 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.co = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cp = shl i32 32, %i.co
  %i.cq = and i32 %i.cp, %.0113189
  %.not.i133 = icmp eq i32 %i.cq, 0
  br i1 %.not.i133, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  store ptr %.0118187, ptr %i.cr, align 8, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.g
  br i1 %exitcond.not.i, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, label %.lr.ph.i, !llvm.loop !67

_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit:           ; preds = %bb.p, %middle.block259, %vec.epilog.middle.block281, %bb.n, %._crit_edge
  store ptr %.0118187, ptr %i.aa, align 8, !tbaa !10
  %or.cond130 = or i1 %i.ab, %i.bg
  br i1 %or.cond130, label %bb.q, label %.preheader

bb.q:                                             ; preds = %bb.k, %bb.m, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, %bb.j
  %.1116 = phi i1 [ %.0115188, %bb.j ], [ %.0115188, %bb.k ], [ %.0115188, %bb.m ], [ true, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit ] ; 3 uses
  %i.cs = icmp eq ptr %.1120, null
  br i1 %i.cs, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = and i32 %i.at, 32640
  %i.cu = icmp ne i32 %i.ct, 0
  %or.cond3 = and i1 %i.z, %i.cu
  br i1 %or.cond3, label %iter.check, label %.loopexit176

iter.check:                                       ; preds = %bb.r
  br i1 %min.iters.check, label %.lr.ph.i136.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check226, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert227 = insertelement <4 x ptr> poison, ptr %.0118187, i64 0
  %broadcast.splat228 = shufflevector <4 x ptr> %broadcast.splatinsert227, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.cv = shl <4 x i32> splat (i32 32), %vec.ind
  %i.cw = shl <4 x i32> splat (i32 32), %step.add
  %i.cx = shl <4 x i32> splat (i32 32), %step.add.2
  %i.cy = shl <4 x i32> splat (i32 32), %step.add.3
  %i.cz = and <4 x i32> %i.cv, %broadcast.splat
  %i.da = and <4 x i32> %i.cw, %broadcast.splat
  %i.db = and <4 x i32> %i.cx, %broadcast.splat
  %i.dc = and <4 x i32> %i.cy, %broadcast.splat
  %i.dd = icmp ne <4 x i32> %i.cz, zeroinitializer
  %i.de = icmp ne <4 x i32> %i.da, zeroinitializer
  %i.df = icmp ne <4 x i32> %i.db, zeroinitializer
  %i.dg = icmp ne <4 x i32> %i.dc, zeroinitializer
  %i.dh = getelementptr [8 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %i.dj = getelementptr i8, ptr %i.dh, i64 48
  %i.dk = getelementptr i8, ptr %i.dh, i64 80
  %i.dl = getelementptr i8, ptr %i.dh, i64 112
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat228, ptr align 16 %i.di, <4 x i1> %i.dd), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat228, ptr align 16 %i.dj, <4 x i1> %i.de), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat228, ptr align 16 %i.dk, <4 x i1> %i.df), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat228, ptr align 16 %i.dl, <4 x i1> %i.dg), !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit176, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i136.preheader, label %vec.epilog.ph, !prof !79

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.ak, %vec.epilog.iter.check ], [ 2, %vector.main.loop.iter.check ]
  %broadcast.splatinsert230 = insertelement <4 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat231 = shufflevector <4 x i32> %broadcast.splatinsert230, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert232 = insertelement <4 x ptr> poison, ptr %.0118187, i64 0
  %broadcast.splat233 = shufflevector <4 x ptr> %broadcast.splatinsert232, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.dn = trunc i64 %bc.resume.val to i32
  %broadcast.splatinsert234 = insertelement <4 x i32> poison, i32 %i.dn, i64 0
  %broadcast.splat235 = shufflevector <4 x i32> %broadcast.splatinsert234, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat235, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index236 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next238, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind237 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next239, %vec.epilog.vector.body ] ; 2 uses
  %i.do = shl <4 x i32> splat (i32 32), %vec.ind237
  %i.dp = and <4 x i32> %i.do, %broadcast.splat231
  %i.dq = icmp ne <4 x i32> %i.dp, zeroinitializer
  %i.dr = getelementptr [8 x i8], ptr %i.a, i64 %index236
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat233, ptr align 16 %i.ds, <4 x i1> %i.dq), !tbaa !10
  %index.next238 = add nuw i64 %index236, 4       ; 2 uses
  %vec.ind.next239 = add <4 x i32> %vec.ind237, splat (i32 4)
  %i.dt = icmp eq i64 %index.next238, %n.vec229
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n240, label %.loopexit176, label %.lr.ph.i136.preheader

.lr.ph.i136.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i137.ph = phi i64 [ 2, %iter.check ], [ %i.ak, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.lr.ph.i136

.lr.ph.i136:                                      ; preds = %.lr.ph.i136.preheader, %bb.t
  %indvars.iv.i137 = phi i64 [ %indvars.iv.next.i139, %bb.t ], [ %indvars.iv.i137.ph, %.lr.ph.i136.preheader ] ; 3 uses
  %i.du = trunc nuw nsw i64 %indvars.iv.i137 to i32
  %i.dv = shl i32 32, %i.du
  %i.dw = and i32 %i.dv, %i.at
  %.not.i138 = icmp eq i32 %i.dw, 0
  br i1 %.not.i138, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i136
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i137
  store ptr %.0118187, ptr %i.dx, align 8, !tbaa !10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i136
  %indvars.iv.next.i139 = add nuw nsw i64 %indvars.iv.i137, 1 ; 2 uses
  %exitcond.not.i140 = icmp eq i64 %indvars.iv.next.i139, %i.g
  br i1 %exitcond.not.i140, label %.loopexit176, label %.lr.ph.i136, !llvm.loop !70

.loopexit176:                                     ; preds = %bb.t, %middle.block, %vec.epilog.middle.block, %bb.r
  %i.dy = getelementptr inbounds nuw i8, ptr %.0118187, i64 1 ; 3 uses
  %i.dz = icmp ult ptr %i.dy, %i.p
  br i1 %i.dz, label %bb.g, label %._crit_edge192, !llvm.loop !71

._crit_edge192:                                   ; preds = %.loopexit176, %bb.f
  %.0119.lcssa = phi ptr [ %i.r, %bb.f ], [ %.1120, %.loopexit176 ]
  %.0118.lcssa = phi ptr [ %2, %bb.f ], [ %i.dy, %.loopexit176 ] ; 5 uses
  %.0115.lcssa = phi i1 [ false, %bb.f ], [ %.1116, %.loopexit176 ] ; 2 uses
  %i.ea = load i32, ptr %.0119.lcssa, align 4, !tbaa !53 ; 6 uses
  %.not123 = icmp eq i32 %i.ea, 48
  br i1 %.not123, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141, label %bb.u

bb.u:                                             ; preds = %._crit_edge192
  %i.eb = and i32 %i.ea, 63                       ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  br i1 %i.ec, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ed = tail call noundef i32 @_ZN3re24Prog10EmptyFlagsESt17basic_string_viewIcSt11char_traitsIcEEPKc(i64 %spec.select162, ptr %spec.select163, ptr noundef %.0118.lcssa)
  %i.ee = xor i32 %i.ed, -1
  %i.ef = and i32 %i.eb, %i.ee
  %.not.i142 = icmp eq i32 %i.ef, 0
  br i1 %.not.i142, label %bb.w, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.eg = icmp sgt i32 %8, 1                      ; 2 uses
  %i.eh = and i32 %i.ea, 32640
  %.not124 = icmp ne i32 %i.eh, 0
  %or.cond131.not173 = and i1 %i.eg, %.not124
  br i1 %or.cond131.not173, label %iter.check305, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150

iter.check305:                                    ; preds = %bb.w
  %i.ei = add nsw i64 %i.g, -2                    ; 8 uses
  %min.iters.check284 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check284, label %.lr.ph.i145.preheader, label %vector.main.loop.iter.check285

vector.main.loop.iter.check285:                   ; preds = %iter.check305
  %min.iters.check286 = icmp ult i64 %i.ei, 16
  br i1 %min.iters.check286, label %vec.epilog.ph309, label %vector.ph287

vector.ph287:                                     ; preds = %vector.main.loop.iter.check285
  %i.ej = and i64 %i.ei, 12
  %n.vec288 = and i64 %i.ei, -16                  ; 4 uses
  %i.ek = or disjoint i64 %n.vec288, 2            ; 2 uses
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat290 = shufflevector <4 x i32> %broadcast.splatinsert289, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert291 = insertelement <4 x ptr> poison, ptr %.0118.lcssa, i64 0
  %broadcast.splat292 = shufflevector <4 x ptr> %broadcast.splatinsert291, <4 x ptr> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body293

vector.body293:                                   ; preds = %vector.ph287, %vector.body293
  %index294 = phi i64 [ 0, %vector.ph287 ], [ %index.next299, %vector.body293 ] ; 2 uses
  %vec.ind295 = phi <4 x i32> [ <i32 2, i32 3, i32 4, i32 5>, %vector.ph287 ], [ %vec.ind.next300, %vector.body293 ] ; 5 uses
  %step.add296 = add <4 x i32> %vec.ind295, splat (i32 4)
  %step.add.2297 = add <4 x i32> %vec.ind295, splat (i32 8)
  %step.add.3298 = add <4 x i32> %vec.ind295, splat (i32 12)
  %i.el = shl <4 x i32> splat (i32 32), %vec.ind295
  %i.em = shl <4 x i32> splat (i32 32), %step.add296
  %i.en = shl <4 x i32> splat (i32 32), %step.add.2297
  %i.eo = shl <4 x i32> splat (i32 32), %step.add.3298
  %i.ep = and <4 x i32> %i.el, %broadcast.splat290
  %i.eq = and <4 x i32> %i.em, %broadcast.splat290
  %i.er = and <4 x i32> %i.en, %broadcast.splat290
  %i.es = and <4 x i32> %i.eo, %broadcast.splat290
  %i.et = icmp ne <4 x i32> %i.ep, zeroinitializer
  %i.eu = icmp ne <4 x i32> %i.eq, zeroinitializer
  %i.ev = icmp ne <4 x i32> %i.er, zeroinitializer
  %i.ew = icmp ne <4 x i32> %i.es, zeroinitializer
  %i.ex = getelementptr [8 x i8], ptr %i.a, i64 %index294 ; 4 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 16
  %i.ez = getelementptr i8, ptr %i.ex, i64 48
  %i.fa = getelementptr i8, ptr %i.ex, i64 80
  %i.fb = getelementptr i8, ptr %i.ex, i64 112
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat292, ptr align 16 %i.ey, <4 x i1> %i.et), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat292, ptr align 16 %i.ez, <4 x i1> %i.eu), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat292, ptr align 16 %i.fa, <4 x i1> %i.ev), !tbaa !10
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat292, ptr align 16 %i.fb, <4 x i1> %i.ew), !tbaa !10
  %index.next299 = add nuw i64 %index294, 16      ; 2 uses
  %vec.ind.next300 = add <4 x i32> %vec.ind295, splat (i32 16)
  %i.fc = icmp eq i64 %index.next299, %n.vec288
  br i1 %i.fc, label %middle.block301, label %vector.body293, !llvm.loop !72

middle.block301:                                  ; preds = %vector.body293
  %cmp.n302 = icmp eq i64 %i.ei, %n.vec288
  br i1 %cmp.n302, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150, label %vec.epilog.iter.check307

vec.epilog.iter.check307:                         ; preds = %middle.block301
  %min.epilog.iters.check308 = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check308, label %.lr.ph.i145.preheader, label %vec.epilog.ph309, !prof !79

vec.epilog.ph309:                                 ; preds = %vector.main.loop.iter.check285, %vec.epilog.iter.check307
  %vec.epilog.resume.val303 = phi i64 [ %n.vec288, %vec.epilog.iter.check307 ], [ 0, %vector.main.loop.iter.check285 ]
  %bc.resume.val304 = phi i64 [ %i.ek, %vec.epilog.iter.check307 ], [ 2, %vector.main.loop.iter.check285 ]
  %n.vec310 = and i64 %i.ei, -4                   ; 2 uses
  %i.fd = or i64 %i.ei, 2
  %broadcast.splatinsert311 = insertelement <4 x i32> poison, i32 %i.ea, i64 0
  %broadcast.splat312 = shufflevector <4 x i32> %broadcast.splatinsert311, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <4 x ptr> poison, ptr %.0118.lcssa, i64 0
  %broadcast.splat314 = shufflevector <4 x ptr> %broadcast.splatinsert313, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.fe = trunc i64 %bc.resume.val304 to i32
  %broadcast.splatinsert315 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat316 = shufflevector <4 x i32> %broadcast.splatinsert315, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction317 = add <4 x i32> %broadcast.splat316, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body318

vec.epilog.vector.body318:                        ; preds = %vec.epilog.vector.body318, %vec.epilog.ph309
  %index319 = phi i64 [ %vec.epilog.resume.val303, %vec.epilog.ph309 ], [ %index.next321, %vec.epilog.vector.body318 ] ; 2 uses
  %vec.ind320 = phi <4 x i32> [ %induction317, %vec.epilog.ph309 ], [ %vec.ind.next322, %vec.epilog.vector.body318 ] ; 2 uses
  %i.ff = shl <4 x i32> splat (i32 32), %vec.ind320
  %i.fg = and <4 x i32> %i.ff, %broadcast.splat312
  %i.fh = icmp ne <4 x i32> %i.fg, zeroinitializer
  %i.fi = getelementptr [8 x i8], ptr %i.a, i64 %index319
  %i.fj = getelementptr i8, ptr %i.fi, i64 16
  call void @llvm.masked.store.v4p0.p0(<4 x ptr> %broadcast.splat314, ptr align 16 %i.fj, <4 x i1> %i.fh), !tbaa !10
  %index.next321 = add nuw i64 %index319, 4       ; 2 uses
  %vec.ind.next322 = add <4 x i32> %vec.ind320, splat (i32 4)
  %i.fk = icmp eq i64 %index.next321, %n.vec310
  br i1 %i.fk, label %vec.epilog.middle.block323, label %vec.epilog.vector.body318, !llvm.loop !73

vec.epilog.middle.block323:                       ; preds = %vec.epilog.vector.body318
  %cmp.n324 = icmp eq i64 %i.ei, %n.vec310
  br i1 %cmp.n324, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150, label %.lr.ph.i145.preheader

.lr.ph.i145.preheader:                            ; preds = %iter.check305, %vec.epilog.iter.check307, %vec.epilog.middle.block323
  %indvars.iv.i146.ph = phi i64 [ 2, %iter.check305 ], [ %i.ek, %vec.epilog.iter.check307 ], [ %i.fd, %vec.epilog.middle.block323 ]
  br label %.lr.ph.i145

.lr.ph.i145:                                      ; preds = %.lr.ph.i145.preheader, %bb.y
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i148, %bb.y ], [ %indvars.iv.i146.ph, %.lr.ph.i145.preheader ] ; 3 uses
  %i.fl = trunc nuw nsw i64 %indvars.iv.i146 to i32
  %i.fm = shl i32 32, %i.fl
  %i.fn = and i32 %i.fm, %i.ea
  %.not.i147 = icmp eq i32 %i.fn, 0
  br i1 %.not.i147, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i145
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i146
  store ptr %.0118.lcssa, ptr %i.fo, align 8, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph.i145
  %indvars.iv.next.i148 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %exitcond.not.i149 = icmp eq i64 %indvars.iv.next.i148, %i.g
  br i1 %exitcond.not.i149, label %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150, label %.lr.ph.i145, !llvm.loop !74

_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150:        ; preds = %bb.y, %middle.block301, %vec.epilog.middle.block323, %bb.w
  br i1 %i.eg, label %.lr.ph196.preheader, label %._crit_edge197

.lr.ph196.preheader:                              ; preds = %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150
  %scevgep208 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %scevgep209 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %umax = tail call i32 @llvm.smax.i32(i32 %i.f, i32 3)
  %i.fp = add nsw i32 %umax, -2
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep208, ptr nonnull align 16 %scevgep209, i64 %i.fr, i1 false), !tbaa !10
  br label %._crit_edge197

._crit_edge197:                                   ; preds = %.lr.ph196.preheader, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit150
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.0118.lcssa, ptr %i.fs, align 8, !tbaa !10
  br label %.preheader

_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141:        ; preds = %bb.q, %._crit_edge192, %bb.v
  %.4 = phi i1 [ %.0115.lcssa, %._crit_edge192 ], [ %.0115.lcssa, %bb.v ], [ %.1116, %bb.q ]
  br i1 %.4, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit, %._crit_edge197, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141
  %i.ft = icmp sgt i32 %8, 0
  br i1 %i.ft, label %.lr.ph199.preheader, label %.loopexit

.lr.ph199.preheader:                              ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %8 to i64      ; 3 uses
  %min.iters.check326 = icmp ult i32 %8, 8
  br i1 %min.iters.check326, label %.lr.ph199.preheader340, label %vector.ph327

vector.ph327:                                     ; preds = %.lr.ph199.preheader
  %n.vec328 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body329

vector.body329:                                   ; preds = %vector.body329, %vector.ph327
  %index330 = phi i64 [ 0, %vector.ph327 ], [ %index.next336, %vector.body329 ] ; 4 uses
  %i.fu = or disjoint i64 %index330, 4            ; 2 uses
  %i.fv = shl nuw nsw i64 %index330, 4
  %i.fw = shl nuw nsw i64 %i.fu, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fw
  %wide.vec = load <8 x ptr>, ptr %i.fx, align 16, !tbaa !10 ; 2 uses
  %strided.vec = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec331 = shufflevector <8 x ptr> %wide.vec, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec332 = load <8 x ptr>, ptr %i.fy, align 16, !tbaa !10 ; 2 uses
  %strided.vec333 = shufflevector <8 x ptr> %wide.vec332, <8 x ptr> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec334 = shufflevector <8 x ptr> %wide.vec332, <8 x ptr> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.fz = ptrtoint <4 x ptr> %strided.vec331 to <4 x i64>
  %i.ga = ptrtoint <4 x ptr> %strided.vec334 to <4 x i64>
  %i.gb = ptrtoint <4 x ptr> %strided.vec to <4 x i64>
  %i.gc = ptrtoint <4 x ptr> %strided.vec333 to <4 x i64>
  %i.gd = sub <4 x i64> %i.fz, %i.gb
  %i.ge = sub <4 x i64> %i.ga, %i.gc
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %index330
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.fu
  %i.gh = inttoptr <4 x i64> %i.gd to <4 x ptr>
  %interleaved.vec = shufflevector <4 x ptr> %i.gh, <4 x ptr> %strided.vec, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec, ptr %i.gf, align 8, !tbaa !54
  %i.gi = inttoptr <4 x i64> %i.ge to <4 x ptr>
  %interleaved.vec335 = shufflevector <4 x ptr> %i.gi, <4 x ptr> %strided.vec333, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x ptr> %interleaved.vec335, ptr %i.gg, align 8, !tbaa !54
  %index.next336 = add nuw i64 %index330, 8       ; 2 uses
  %i.gj = icmp eq i64 %index.next336, %n.vec328
  br i1 %i.gj, label %middle.block337, label %vector.body329, !llvm.loop !75

middle.block337:                                  ; preds = %vector.body329
  %cmp.n338 = icmp eq i64 %n.vec328, %wide.trip.count
  br i1 %cmp.n338, label %.loopexit, label %.lr.ph199.preheader340

.lr.ph199.preheader340:                           ; preds = %.lr.ph199.preheader, %middle.block337
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph199.preheader ], [ %n.vec328, %middle.block337 ]
  br label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph199.preheader340, %.lr.ph199
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph199 ], [ %indvars.iv.ph, %.lr.ph199.preheader340 ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx ; 2 uses
  %i.gl = load ptr, ptr %i.gk, align 16, !tbaa !10 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !10
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !58
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gl, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph199, !llvm.loop !76

.loopexit:                                        ; preds = %.lr.ph199, %middle.block337, %.preheader, %bb.e, %bb.d, %_ZN3re2L13ApplyCapturesEjPKcPS1_i.exit141
end_hunk_0
