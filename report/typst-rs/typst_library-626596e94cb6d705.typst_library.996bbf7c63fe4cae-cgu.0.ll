Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_library-626596e94cb6d705.typst_library.996bbf7c63fe4cae-cgu.0?download=true
inline.NumInlined: 84061
inline.NumDeleted: 35720
loop-unroll.NumCompletelyUnrolled: 240
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 371
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@_RINvMs8_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB6_16CellGridResolver7resolveINtNtNtNtBc_11foundations7content6packed6PackedNtNtNtBc_5model5table9TableCellEINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2U_5slice4iter4IterNtB2h_10TableChildENCNvB6_17table_to_cellgrids0_0EIB2M_IB3A_NtB2h_9TableItemENCB4l_s_0EEBc_:bb.a

bb.nb:                                            ; preds = %.thread
  %.val1.i155 = load ptr, ptr %i.dl, align 8, !nonnull !12, !noundef !12
  %i.aqh = shl nuw i64 %.val.i154.pre, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i155, i64 noundef %i.aqh, i64 noundef range(i64 1, -9223372036854775807) 8) #96, !noalias !29454
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156.thread: ; preds = %bb.mv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156
  %.pn941127 = phi { ptr, i32 } [ %.pn94, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156 ], [ %i.apz, %bb.mv ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LineEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cr) #101
          to label %bb.nc unwind label %bb.mk

bb.nc:                                            ; preds = %bb.mz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156.thread
  %.pn96.ph = phi { ptr, i32 } [ %.pn941127, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156.thread ], [ %i.aqf, %bb.mz ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve4LinebEEEB1X_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cs) #101
          to label %bb.nd unwind label %bb.mk

bb.nd:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156, %bb.nc
  %.pn96287 = phi { ptr, i32 } [ %.pn96.ph, %bb.nc ], [ %.pn94, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolve10RepeatableNtB1b_6HeaderEEEB1h_.exit156 ]
  resume { ptr, i32 } %.pn96287
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCNvMsm_B6_INtB6_7ContextNtB8_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupECsdaEETE4DqmE_13typst_library(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsdE48SAkMLa6_9hayagriva3cslNtB5_12StyleContext6locale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode5en_us(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63: ; preds = %bb.f, %.body, %bb.c
  %.pn50 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.pn48, %.body ], [ %.pn48, %bb.f ]
  %.val61 = load i64, ptr %i.f, align 8, !alias.scope !29457 ; 2 uses
  %i.g = icmp eq i64 %.val61, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val62 = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val62, i64 noundef %.val61, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29462
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 888
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 896
  %i.o = load i64, ptr %i.n, align 8, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !219, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.m, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.o, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.q, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.s, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.5.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %.sroa.6107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !12 ; 4 uses
  br label %bb.e

.loopexit:                                        ; preds = %bb.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99
  %i.z = phi i1 [ true, %bb.d ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99 ] ; 2 uses
  %.not.i.i.i = phi i1 [ false, %bb.d ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99 ]
  %i.aa = phi i64 [ 0, %bb.d ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99 ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.sroa.3.0..sroa_idx, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !29467, !noalias !29474, !nonnull !12, !align !219, !noundef !12 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !29467, !noalias !29474, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %i.z, label %bb.i, label %bb.j

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.y, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i
  %.pn48 = phi { ptr, i32 } [ %i.bh, %bb.y ], [ %i.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i ], [ %i.bh, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val59 = load i64, ptr %i.e, align 8, !alias.scope !29457 ; 2 uses
  %i.af = icmp eq i64 %.val59, 0
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63, label %bb.f

bb.f:                                             ; preds = %.body
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29476
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -1, ptr %0, align 8
  %.val57 = load i64, ptr %i.e, align 8, !alias.scope !29457 ; 2 uses
  %i.ag = icmp eq i64 %.val57, 0
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val57, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29481
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val55 = load i64, ptr %i.f, align 8, !alias.scope !29457 ; 2 uses
  %i.ah = icmp eq i64 %.val55, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100
  %.val55.sink = phi i64 [ %.val, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100 ], [ %.val55, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64 ]
  %.val56 = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val56, i64 noundef %.val55.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !12
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode10parse_base(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.k unwind label %.loopexit

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode8fallback(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.b, align 8, !range !29486, !noundef !12 ; 5 uses
  %.not41 = icmp eq i64 %i.ai, -1
  br i1 %.not41, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29487)
  call void @llvm.experimental.noalias.scope.decl(metadata !29490)
  %i.aj = icmp ne i64 %i.ai, -9223372036854775807
  call void @llvm.assume(i1 %i.aj)
  %i.ak = xor i64 %i.ai, -9223372036854775808
  %i.al = icmp slt i64 %i.ai, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 1
  switch i64 %i.am, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !29492
  %i.an = call noundef dereferenceable_or_null(2) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29492 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.l
  store i64 %i.ai, ptr %i.c, align 8, !alias.scope !29495
  store i16 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx105, align 8, !alias.scope !29495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6107.0..sroa_idx108, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5110.0..sroa_idx, i64 14, i1 false)
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit

bb.p:                                             ; preds = %bb.l
  store i64 -1, ptr %i.c, align 8, !alias.scope !29487, !noalias !29490
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #99
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.n
  store i16 %.sroa.4.0.copyload, ptr %i.an, align 1, !noalias !29495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29496
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 2)
          to label %bb.s unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i, !noalias !29496

bb.s:                                             ; preds = %bb.r
  %i.ap = load i64, ptr %i.a, align 8, !range !287, !noalias !29496, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29496
  br i1 %i.aq, label %bb.u, label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29500
  br label %.body

bb.t:                                             ; preds = %bb.s
  store i64 2, ptr %i.c, align 8, !alias.scope !29487, !noalias !29490
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx105, align 8, !alias.scope !29487, !noalias !29490
  store i64 2, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !29487, !noalias !29490
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit

bb.u:                                             ; preds = %bb.s
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29503
  store i64 -1, ptr %i.c, align 8, !alias.scope !29487, !noalias !29490
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit

bb.v:                                             ; preds = %bb.k
  store i64 -1, ptr %i.c, align 8
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.o, %bb.p, %bb.t, %bb.u, %bb.v, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !29506)
  call void @llvm.experimental.noalias.scope.decl(metadata !29509)
  call void @llvm.experimental.noalias.scope.decl(metadata !29511)
  %.idx.i = mul nuw nsw i64 %i.ae, 200
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i ; 4 uses
  %i.at = icmp eq i64 %i.ae, 0                    ; 4 uses
  br i1 %i.at, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit
  %i.au = load i64, ptr %i.u, align 8, !alias.scope !29511, !noalias !29513 ; 2 uses
  %i.av = load ptr, ptr %i.t, align 8, !alias.scope !29511, !noalias !29513, !nonnull !12
  br label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i, %.lr.ph.i.i
  %i.aw = phi ptr [ %i.ax, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 200 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !range !4638, !alias.scope !29509, !noalias !29514, !noundef !12
  %.not.i.i.i66 = icmp eq i64 %i.az, -1
  br i1 %.not.i.i.i66, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !29509, !noalias !29514, !noundef !12
  %i.bc = icmp eq i64 %i.bb, %i.au
  br i1 %i.bc, label %.split.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !29509, !noalias !29514, !nonnull !12, !noundef !12
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.be, ptr nonnull %i.av, i64 %i.au), !noalias !29518
  %i.bf = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bf, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i: ; preds = %.split.i.i, %bb.w, %.lr.ph.split.split.i.i
  %i.bg = icmp eq ptr %i.ax, %i.as
  br i1 %i.bg, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit.thread, label %.lr.ph.split.split.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i: ; preds = %.split.i.i
  invoke void @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale8ordinals(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.aw)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit unwind label %bb.x

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit.thread: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupEs_0CsdaEETE4DqmE_13typst_library.exit
  store i64 -1, ptr %0, align 8, !alias.scope !29506, !noalias !29519
  %.pre174 = load i64, ptr %i.c, align 8, !range !4638
  br label %bb.z

bb.x:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i95, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i89, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i78, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29520)
  %i.bi = load i64, ptr %i.c, align 8, !range !4638, !alias.scope !29520, !noundef !12 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  %.val1.i = load ptr, ptr %.sroa.5.0..sroa_idx105, align 8, !alias.scope !29520, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29523
  br label %.body

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i
  %.pr = load i64, ptr %0, align 8
  %.not42 = icmp eq i64 %.pr, -1
  %.pre175 = load i64, ptr %i.c, align 8, !range !4638 ; 2 uses
  br i1 %.not42, label %bb.z, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit._crit_edge

bb.z:                                             ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit.thread, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit
  %i.bk = phi i64 [ %.pre174, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit.thread ], [ %.pre175, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit ] ; 6 uses
  %.not43 = icmp eq i64 %i.bk, -1
  br i1 %.not43, label %bb.ab, label %bb.ac

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit._crit_edge: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit97, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit91, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit
  %i.bl = phi i64 [ %.pre175, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit ], [ %i.bk, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80 ], [ %i.bk, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit91 ], [ %i.bk, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit97 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29528)
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit._crit_edge
  %.val1.i68 = load ptr, ptr %.sroa.5.0..sroa_idx105, align 8, !alias.scope !29528, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i68, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29531
  br label %bb.aj

bb.ab:                                            ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80.thread, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80, %bb.z
  br i1 %i.z, label %bb.ag, label %bb.ae

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !29536)
  call void @llvm.experimental.noalias.scope.decl(metadata !29539)
  call void @llvm.experimental.noalias.scope.decl(metadata !29541)
  br i1 %i.at, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80.thread, label %.lr.ph.i.i71

.lr.ph.i.i71:                                     ; preds = %bb.ac
  %i.bn = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !29541, !noalias !29543 ; 2 uses
  %i.bo = load ptr, ptr %.sroa.5.0..sroa_idx105, align 8, !alias.scope !29541, !noalias !29543, !nonnull !12
  br label %.lr.ph.split.split.i.i72

.lr.ph.split.split.i.i72:                         ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74, %.lr.ph.i.i71
  %i.bp = phi ptr [ %i.bq, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74 ], [ %i.ac, %.lr.ph.i.i71 ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 200 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !range !4638, !alias.scope !29539, !noalias !29544, !noundef !12
  %.not.i.i.i73 = icmp eq i64 %i.bs, -1
  br i1 %.not.i.i.i73, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.split.split.i.i72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !29539, !noalias !29544, !noundef !12
  %i.bv = icmp eq i64 %i.bu, %i.bn
  br i1 %i.bv, label %.split.i.i76, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74

.split.i.i76:                                     ; preds = %bb.ad
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !alias.scope !29539, !noalias !29544, !nonnull !12, !noundef !12
  %bcmp.i.i.i77 = call i32 @bcmp(ptr nonnull %i.bx, ptr nonnull %i.bo, i64 %i.bn), !noalias !29548
  %i.by = icmp eq i32 %bcmp.i.i.i77, 0
  br i1 %i.by, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i78, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74: ; preds = %.split.i.i76, %bb.ad, %.lr.ph.split.split.i.i72
  %i.bz = icmp eq ptr %i.bq, %i.as
  br i1 %i.bz, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80.thread, label %.lr.ph.split.split.i.i72

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i78: ; preds = %.split.i.i76
  invoke void @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale8ordinals(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.bp)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80 unwind label %bb.x

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80.thread: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74, %bb.ac
  store i64 -1, ptr %0, align 8, !alias.scope !29536, !noalias !29549
  br label %bb.ab

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit80: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i78
  %.pr121 = load i64, ptr %0, align 8
  %.not44 = icmp eq i64 %.pr121, -1
  br i1 %.not44, label %bb.ab, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit._crit_edge

bb.ae:                                            ; preds = %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !29550)
  br i1 %i.at, label %.sink.split, label %.lr.ph.split.split.i.i83

.lr.ph.split.split.i.i83:                         ; preds = %bb.ae, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85
  %i.ca = phi ptr [ %i.cb, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85 ], [ %i.ac, %bb.ae ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 200 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !range !4638, !alias.scope !29550, !noalias !29553, !noundef !12
  %.not.i.i.i84 = icmp eq i64 %i.cd, -1
  br i1 %.not.i.i.i84, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85, label %bb.af

bb.af:                                            ; preds = %.lr.ph.split.split.i.i83
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !29550, !noalias !29553, !noundef !12
  %i.cg = icmp eq i64 %i.cf, %i.x
  br i1 %i.cg, label %.split.i.i87, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85

.split.i.i87:                                     ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !29550, !noalias !29553, !nonnull !12, !noundef !12
  %bcmp.i.i.i88 = call i32 @bcmp(ptr nonnull %i.ci, ptr nonnull %i.y, i64 %i.x), !noalias !29559
  %i.cj = icmp eq i32 %bcmp.i.i.i88, 0
  br i1 %i.cj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i89, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i85: ; preds = %.split.i.i87, %bb.af, %.lr.ph.split.split.i.i83
  %i.ck = icmp eq ptr %i.cb, %i.as
  br i1 %i.ck, label %.sink.split, label %.lr.ph.split.split.i.i83

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i89: ; preds = %.split.i.i87
  invoke void @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale8ordinals(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.ca)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit91 unwind label %bb.x

bb.ag:                                            ; preds = %bb.ab
  br i1 %i.at, label %.sink.split, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.us.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.us.i.i: ; preds = %bb.ag, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i
  %i.cl = phi ptr [ %i.co, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i ], [ %i.ac, %bb.ag ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !range !4638, !alias.scope !29560, !noalias !29563, !noundef !12
  %.not.i.us.i.i = icmp eq i64 %i.cn, -1
  br i1 %.not.i.us.i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i95, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.us.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 200 ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.as
  br i1 %i.cp, label %.sink.split, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.us.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i95: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE00CsdaEETE4DqmE_13typst_library.exit.us.i.i
  invoke void @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale8ordinals(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.cl)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit97 unwind label %bb.x

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupE0CsdaEETE4DqmE_13typst_library.exit91: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14ordinal_lookup0NtBS_13OrdinalLookupE00ECsdaEETE4DqmE_13typst_library.exit.i89
end_hunk_0
begin_hunk_1_@_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCNvMsm_B6_INtB6_7ContextNtB8_5EntryE14ordinal_lookup0NtCs4g035V82HBz_12citationberg13OrdinalLookupECsdaEETE4DqmE_13typst_library:bb.a
  br i1 %i.cr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val53, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29577
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit100: ; preds = %bb.ak, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val = load i64, ptr %i.f, align 8, !alias.scope !29457 ; 2 uses
  %i.cs = icmp eq i64 %.val, 0
  br i1 %i.cs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit101.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit99: ; preds = %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63
  resume { ptr, i32 } %.pn50
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCNvMsm_B6_INtB6_7ContextNtB8_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermECsdaEETE4DqmE_13typst_library(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(2) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 17 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvMs5_NtCsdE48SAkMLa6_9hayagriva3cslNtB5_12StyleContext6locale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode5en_us(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.d unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77: ; preds = %bb.f, %.body, %bb.c
  %.pn60 = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.pn58, %.body ], [ %.pn58, %bb.f ]
  %.val71 = load i64, ptr %i.f, align 8, !alias.scope !29457 ; 2 uses
  %i.g = icmp eq i64 %.val71, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val72 = load ptr, ptr %i.h, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72, i64 noundef %.val71, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29582
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 888
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 896
  %i.o = load i64, ptr %i.n, align 8, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !12, !align !219, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.sroa.09.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.m, ptr %.sroa.09.sroa.3.0..sroa_idx, align 8
  %.sroa.09.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.o, ptr %.sroa.09.sroa.4.0..sroa_idx, align 8
  %.sroa.09.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.q, ptr %.sroa.09.sroa.5.0..sroa_idx, align 8
  %.sroa.09.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %i.s, ptr %.sroa.09.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.5.0..sroa_idx125 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %.sroa.6127.0..sroa_idx128 = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i = load i16, ptr %1, align 1 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !nonnull !12 ; 4 uses
  br label %bb.e

.loopexit:                                        ; preds = %bb.i, %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit119
  %i.z = phi i1 [ true, %bb.d ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit119 ] ; 2 uses
  %.not.i.i.i = phi i1 [ false, %bb.d ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit119 ]
  %i.aa = phi i64 [ 0, %bb.d ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit119 ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.sroa.3.0..sroa_idx, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !29587, !noalias !29594, !nonnull !12, !align !219, !noundef !12 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !29587, !noalias !29594, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br i1 %i.z, label %bb.i, label %bb.j

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.y, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i
  %.pn58 = phi { ptr, i32 } [ %i.bj, %bb.y ], [ %i.ar, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i ], [ %i.bj, %bb.x ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.val69 = load i64, ptr %i.e, align 8, !alias.scope !29457 ; 2 uses
  %i.af = icmp eq i64 %.val69, 0
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77, label %bb.f

bb.f:                                             ; preds = %.body
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val69, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29596
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val67 = load i64, ptr %i.e, align 8, !alias.scope !29457 ; 2 uses
  %i.ag = icmp eq i64 %.val67, 0
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef %.val67, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29601
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val65 = load i64, ptr %i.f, align 8, !alias.scope !29457 ; 2 uses
  %i.ah = icmp eq i64 %.val65, 0
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121.sink.split

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit120
  %.val65.sink = phi i64 [ %.val, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit120 ], [ %.val65, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78 ]
  %.sroa.0.0.ph = phi ptr [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit120 ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78 ]
  %.val66 = load ptr, ptr %i.t, align 8, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66, i64 noundef %.val65.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !12
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit120
  %.sroa.0.0 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78 ], [ %.sroa.0.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit120 ], [ %.sroa.0.0.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit121.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode10parse_base(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.k unwind label %.loopexit

bb.j:                                             ; preds = %bb.e
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode8fallback(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.thread213 unwind label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.b, align 8, !range !29486, !noundef !12 ; 5 uses
  %.not51 = icmp eq i64 %i.ai, -1
  br i1 %.not51, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.4.0.copyload = load i16, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29606)
  call void @llvm.experimental.noalias.scope.decl(metadata !29609)
  %i.aj = icmp ne i64 %i.ai, -9223372036854775807
  call void @llvm.assume(i1 %i.aj)
  %i.ak = xor i64 %i.ai, -9223372036854775808
  %i.al = icmp slt i64 %i.ai, 0
  %i.am = select i1 %i.al, i64 %i.ak, i64 1
  switch i64 %i.am, label %bb.m [
    i64 0, label %bb.n
    i64 1, label %bb.o
    i64 2, label %bb.p
  ]

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !29611
  %i.an = call noundef dereferenceable_or_null(2) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29611 ; 6 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.q, label %bb.r

bb.o:                                             ; preds = %bb.l
  store i64 %i.ai, ptr %i.c, align 8, !alias.scope !29614
  store i16 %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx125, align 8, !alias.scope !29614
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6127.0..sroa_idx128, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5130.0..sroa_idx, i64 14, i1 false)
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit

bb.p:                                             ; preds = %bb.l
  store i64 -1, ptr %i.c, align 8, !alias.scope !29606, !noalias !29609
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #99
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.n
  store i16 %.sroa.4.0.copyload, ptr %i.an, align 1, !noalias !29614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !29615
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.an, i64 noundef 2)
          to label %bb.s unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i, !noalias !29615

bb.s:                                             ; preds = %bb.r
  %i.ap = load i64, ptr %i.a, align 8, !range !287, !noalias !29615, !noundef !12
  %i.aq = trunc nuw i64 %i.ap to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !29615
  br i1 %i.aq, label %bb.u, label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29619
  br label %.body

bb.t:                                             ; preds = %bb.s
  store i64 2, ptr %i.c, align 8, !alias.scope !29606, !noalias !29609
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx125, align 8, !alias.scope !29606, !noalias !29609
  store i64 2, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !29606, !noalias !29609
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit

bb.u:                                             ; preds = %bb.s
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29622
  store i64 -1, ptr %i.c, align 8, !alias.scope !29606, !noalias !29609
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit

bb.v:                                             ; preds = %bb.k
  store i64 -1, ptr %i.c, align 8
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit: ; preds = %bb.o, %bb.p, %bb.t, %bb.u, %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !29625)
  call void @llvm.experimental.noalias.scope.decl(metadata !29628)
  %i.as = icmp eq i64 %i.ae, 0
  br i1 %i.as, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread.thread, label %.lr.ph.i.i

.thread213:                                       ; preds = %bb.j
  %i.at = icmp eq i64 %i.ae, 0
  br i1 %i.at, label %.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.thread213, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit
  %.idx.i214.pn = mul nuw nsw i64 %i.ae, 200
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i214.pn ; 4 uses
  %i.av = load i64, ptr %i.u, align 8, !alias.scope !29628, !noalias !29625 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8, !alias.scope !29628, !noalias !29625, !nonnull !12
  br label %.lr.ph.split.split.i.i

.lr.ph.split.split.i.i:                           ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i, %.lr.ph.i.i
  %i.ax = phi ptr [ %i.ay, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i ], [ %i.ac, %.lr.ph.i.i ] ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 200 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !range !4638, !alias.scope !29625, !noalias !29630, !noundef !12
  %.not.i.i.i80 = icmp eq i64 %i.ba, -1
  br i1 %.not.i.i.i80, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !29625, !noalias !29630, !noundef !12
  %i.bd = icmp eq i64 %i.bc, %i.av
  br i1 %i.bd, label %.split.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i

.split.i.i:                                       ; preds = %bb.w
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !29625, !noalias !29630, !nonnull !12, !noundef !12
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.bf, ptr nonnull %i.aw, i64 %i.av), !noalias !29634
  %i.bg = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bg, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i: ; preds = %.split.i.i, %bb.w, %.lr.ph.split.split.i.i
  %i.bh = icmp eq ptr %i.ay, %i.au
  br i1 %i.bh, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread.loopexit, label %.lr.ph.split.split.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i: ; preds = %.split.i.i
  %i.bi = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.ax, i16 %.sroa.0.0.copyload.i.i, i8 noundef 0)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit unwind label %bb.x ; 2 uses

bb.x:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i113, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i105, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i92, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29635)
  %i.bk = load i64, ptr %i.c, align 8, !range !4638, !alias.scope !29635, !noundef !12 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 0
  br i1 %i.bl, label %bb.y, label %.body

bb.y:                                             ; preds = %bb.x
  %.val1.i = load ptr, ptr %.sroa.5.0..sroa_idx125, align 8, !alias.scope !29635, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29638
  br label %.body

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i
  %.not52 = icmp eq ptr %i.bi, null
  %.pre194 = load i64, ptr %i.c, align 8, !range !4638 ; 2 uses
  br i1 %.not52, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit._crit_edge

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread.loopexit: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i
  %.pre193 = load i64, ptr %i.c, align 8, !range !4638
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread.loopexit, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit
  %i.bm = phi i64 [ %.pre193, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread.loopexit ], [ %.pre194, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit ] ; 8 uses
  %.not53 = icmp eq i64 %i.bm, -1
  br i1 %.not53, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread, label %.lr.ph.i.i85

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit._crit_edge: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit117, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit
  %i.bn = phi i64 [ %.pre194, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit ], [ %i.bm, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit117 ], [ %i.bm, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109 ], [ %i.bm, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96 ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.bi, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit ], [ %i.cw, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit117 ], [ %i.cq, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109 ], [ %i.ce, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29643)
  %i.bo = icmp sgt i64 %i.bn, 0
  br i1 %i.bo, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit._crit_edge
  %.val1.i82 = load ptr, ptr %.sroa.5.0..sroa_idx125, align 8, !alias.scope !29643, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i82, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !29646
  br label %bb.ad

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread
  br i1 %i.z, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.us.i.i, label %.lr.ph.split.split.i.i99.preheader

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread.thread: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermEs_0CsdaEETE4DqmE_13typst_library.exit
  %i.bp = load i64, ptr %i.c, align 8, !range !4638, !noundef !12
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109.thread

.thread:                                          ; preds = %.thread213
  %i.bq = load i64, ptr %i.c, align 8, !range !4638, !noundef !12
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109.thread

.lr.ph.i.i85:                                     ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !29651)
  call void @llvm.experimental.noalias.scope.decl(metadata !29654)
  %i.br = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !29654, !noalias !29651 ; 2 uses
  %i.bs = load ptr, ptr %.sroa.5.0..sroa_idx125, align 8, !alias.scope !29654, !noalias !29651, !nonnull !12
  br label %.lr.ph.split.split.i.i86

.lr.ph.split.split.i.i86:                         ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88, %.lr.ph.i.i85
  %i.bt = phi ptr [ %i.bu, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88 ], [ %i.ac, %.lr.ph.i.i85 ] ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 200 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !range !4638, !alias.scope !29651, !noalias !29656, !noundef !12
  %.not.i.i.i87 = icmp eq i64 %i.bw, -1
  br i1 %.not.i.i.i87, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.split.i.i86
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.by = load i64, ptr %i.bx, align 8, !alias.scope !29651, !noalias !29656, !noundef !12
  %i.bz = icmp eq i64 %i.by, %i.br
  br i1 %i.bz, label %.split.i.i90, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88

.split.i.i90:                                     ; preds = %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !29651, !noalias !29656, !nonnull !12, !noundef !12
  %bcmp.i.i.i91 = call i32 @bcmp(ptr nonnull %i.cb, ptr nonnull %i.bs, i64 %i.br), !noalias !29660
  %i.cc = icmp eq i32 %bcmp.i.i.i91, 0
  br i1 %i.cc, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i92, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i88: ; preds = %.split.i.i90, %bb.aa, %.lr.ph.split.split.i.i86
  %i.cd = icmp eq ptr %i.bu, %i.au
  br i1 %i.cd, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread, label %.lr.ph.split.split.i.i86

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i92: ; preds = %.split.i.i90
  %i.ce = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.bt, i16 %.sroa.0.0.copyload.i.i, i8 noundef 0)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96 unwind label %bb.x ; 2 uses

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i92
  %.not54 = icmp eq ptr %i.ce, null
  br i1 %.not54, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit._crit_edge

.lr.ph.split.split.i.i99.preheader:               ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread
  call void @llvm.experimental.noalias.scope.decl(metadata !29661)
  br label %.lr.ph.split.split.i.i99

.lr.ph.split.split.i.i99:                         ; preds = %.lr.ph.split.split.i.i99.preheader, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101
  %i.cf = phi ptr [ %i.cg, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101 ], [ %i.ac, %.lr.ph.split.split.i.i99.preheader ] ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 200 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !range !4638, !alias.scope !29661, !noalias !29664, !noundef !12
  %.not.i.i.i100 = icmp eq i64 %i.ci, -1
  br i1 %.not.i.i.i100, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.split.split.i.i99
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !29661, !noalias !29664, !noundef !12
  %i.cl = icmp eq i64 %i.ck, %i.x
  br i1 %i.cl, label %.split.i.i103, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101

.split.i.i103:                                    ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !29661, !noalias !29664, !nonnull !12, !noundef !12
  %bcmp.i.i.i104 = call i32 @bcmp(ptr nonnull %i.cn, ptr nonnull %i.y, i64 %i.x), !noalias !29669
  %i.co = icmp eq i32 %bcmp.i.i.i104, 0
  br i1 %i.co, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i105, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i101: ; preds = %.split.i.i103, %bb.ab, %.lr.ph.split.split.i.i99
  %i.cp = icmp eq ptr %i.cg, %i.au
  br i1 %i.cp, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109.thread, label %.lr.ph.split.split.i.i99

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i105: ; preds = %.split.i.i103
  %i.cq = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.cf, i16 %.sroa.0.0.copyload.i.i, i8 noundef 0)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109 unwind label %bb.x ; 2 uses

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.us.i.i: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i
  %i.cr = phi ptr [ %i.cu, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i ], [ %i.ac, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit96.thread ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !range !4638, !alias.scope !29670, !noalias !29673, !noundef !12
  %.not.i.us.i.i = icmp eq i64 %i.ct, -1
  br i1 %.not.i.us.i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i113, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.us.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 200 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.au
  br i1 %i.cv, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109.thread, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.us.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i113: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE00CsdaEETE4DqmE_13typst_library.exit.us.i.i
  %i.cw = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.cr, i16 %.sroa.0.0.copyload.i.i, i8 noundef 0)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit117 unwind label %bb.x ; 2 uses

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE6gender0RNtBS_13LocalizedTermE00ECsdaEETE4DqmE_13typst_library.exit.i105
  %.not55 = icmp eq ptr %i.cq, null
  br i1 %.not55, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit109.thread, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE6gender0RNtCs4g035V82HBz_12citationberg13LocalizedTermE0CsdaEETE4DqmE_13typst_library.exit._crit_edge
end_hunk_1
begin_hunk_2_@_RINvXs8_NtNtCsdE48SAkMLa6_9hayagriva3csl9renderingNtCs4g035V82HBz_12citationberg22LayoutRenderingElementNtB6_9RenderCsl6renderNtBa_5EntryECsdaEETE4DqmE_13typst_library:bb.a
.cont249.i:                                       ; preds = %.else251.i, %bb.do
  %i.lj = phi i8 [ %.sroa.13.4.extract.trunc.i, %bb.do ], [ %.else.val252.i, %.else251.i ]
  %i.lk = zext i8 %i.lj to i32
  %i.ll = add nuw nsw i32 %i.lk, 1
  br label %bb.dp

bb.dp:                                            ; preds = %.cont249.i, %.cont257.thread.i, %.cont257.i
  %storemerge140.i = phi i32 [ %i.ll, %.cont249.i ], [ 0, %.cont257.i ], [ 0, %.cont257.thread.i ]
  store i32 %storemerge140.i, ptr %i.bm, align 4, !noalias !93692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !93692
  store ptr %i.bm, ptr %i.bl, align 8, !noalias !93692
  %.sroa.498.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.498.0..sroa_idx.i, align 8, !noalias !93692
  %i.lm = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @944, ptr noundef nonnull @913, ptr noundef nonnull %i.bl)
  br i1 %i.lm, label %bb.dq, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i, !prof !37

bb.dq:                                            ; preds = %bb.dp
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1042) #104
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i: ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !93692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm), !noalias !93692
  br label %_RINvXs2_NtNtCsdE48SAkMLa6_9hayagriva3csl9renderingNtCs4g035V82HBz_12citationberg4DateNtB6_9RenderCsl6renderNtBa_5EntryECsdaEETE4DqmE_13typst_library.exit

bb.dr:                                            ; preds = %bb.cy
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 704
  %.val147.i = load ptr, ptr %i.ln, align 8, !alias.scope !93690, !noalias !93687, !nonnull !12, !align !219, !noundef !12 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93713)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !93692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !93716
  call void @_RNvMs5_NtCsdE48SAkMLa6_9hayagriva3cslNtB5_12StyleContext6locale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val147.i), !noalias !93718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !93716
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode5en_us(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bh)
          to label %bb.du unwind label %bb.dt, !noalias !93718

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77.i.i.i: ; preds = %bb.dw, %.body.i.i.i, %bb.dt
  %.pn60.i.i.i = phi { ptr, i32 } [ %i.lq, %bb.dt ], [ %.pn58.i.i.i, %.body.i.i.i ], [ %.pn58.i.i.i, %bb.dw ] ; 2 uses
  %.val71.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !93719, !noalias !93716 ; 2 uses
  %i.lo = icmp eq i64 %.val71.i.i.i, 0
  br i1 %i.lo, label %common.resume, label %bb.ds

bb.ds:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77.i.i.i
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val72.i.i.i = load ptr, ptr %i.lp, align 8, !noalias !93716, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i.i.i, i64 noundef %.val71.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93724
  br label %common.resume

bb.dt:                                            ; preds = %bb.dr
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77.i.i.i

bb.du:                                            ; preds = %bb.dr
  %i.lr = getelementptr inbounds nuw i8, ptr %.val147.i, i64 24
  %i.ls = load ptr, ptr %i.lr, align 8, !alias.scope !93713, !noalias !93718, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 888
  %i.lu = load ptr, ptr %i.lt, align 8, !noalias !93718, !nonnull !12, !noundef !12
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 896
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !93718, !noundef !12
  %i.lx = getelementptr inbounds nuw i8, ptr %.val147.i, i64 32
  %i.ly = load ptr, ptr %i.lx, align 8, !alias.scope !93713, !noalias !93718, !nonnull !12, !align !219, !noundef !12
  %i.lz = getelementptr inbounds nuw i8, ptr %.val147.i, i64 40
  %i.ma = load i64, ptr %i.lz, align 8, !alias.scope !93713, !noalias !93718, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !93716
  %.sroa.09.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store ptr %i.lu, ptr %.sroa.09.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !93716
  %.sroa.09.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store i64 %i.lw, ptr %.sroa.09.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !93716
  %.sroa.09.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  store ptr %i.ly, ptr %.sroa.09.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !93716
  %.sroa.09.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 %i.ma, ptr %.sroa.09.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !93716
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.5138.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 10
  %.sroa.5.0..sroa_idx133.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 5 uses
  %.sroa.6135.0..sroa_idx136.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 10
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.mf = load i64, ptr %i.me, align 8, !noalias !93716 ; 2 uses
  %i.mg = load ptr, ptr %i.md, align 8, !noalias !93716, !nonnull !12 ; 4 uses
  br label %bb.dv

.loopexit168.i.i.i:                               ; preds = %bb.ea, %bb.dz
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %bb.eh
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.dv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i, %bb.du
  %i.mh = phi i1 [ true, %bb.du ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i = phi i1 [ false, %bb.du ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i ]
  %i.mi = phi i64 [ 0, %bb.du ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i ]
  %i.mj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.09.sroa.3.0..sroa_idx.i.i.i, i64 %i.mi ; 2 uses
  %i.mk = load ptr, ptr %i.mj, align 8, !alias.scope !93729, !noalias !93736, !nonnull !12, !align !219, !noundef !12 ; 5 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !93729, !noalias !93736, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !93716
  br i1 %i.mh, label %bb.dz, label %bb.ea

.body.i.i.i:                                      ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i, %.loopexit.split-lp.i.i.i, %.loopexit168.i.i.i
  %.pn58.i.i.i = phi { ptr, i32 } [ %i.mz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit168.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.val69.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !93719, !noalias !93716 ; 2 uses
  %i.mn = icmp eq i64 %.val69.i.i.i, 0
  br i1 %i.mn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %.body.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mg, i64 noundef %.val69.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93738
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit77.i.i.i

bb.dx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !93716
  %.val67.i.i.i = load i64, ptr %i.bh, align 8, !alias.scope !93719, !noalias !93716 ; 2 uses
  %i.mo = icmp eq i64 %.val67.i.i.i, 0
  br i1 %i.mo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78.i.i.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mg, i64 noundef %.val67.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93743
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78.i.i.i: ; preds = %bb.dy, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !93716
  %.val65.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !93719, !noalias !93716 ; 2 uses
  %i.mp = icmp eq i64 %.val65.i.i.i, 0
  br i1 %i.mp, label %_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE14localized_dateCsdaEETE4DqmE_13typst_library.exit.thread.i, label %_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE14localized_dateCsdaEETE4DqmE_13typst_library.exit.thread357.i

_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE14localized_dateCsdaEETE4DqmE_13typst_library.exit.thread357.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78.i.i.i
  %.val66.i.i360.i = load ptr, ptr %i.mb, align 8, !noalias !93716, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i360.i, i64 noundef %.val65.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !93716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !93692
  br label %_RINvXs2_NtNtCsdE48SAkMLa6_9hayagriva3csl9renderingNtCs4g035V82HBz_12citationberg4DateNtB6_9RenderCsl6renderNtBa_5EntryECsdaEETE4DqmE_13typst_library.exit

_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE14localized_dateCsdaEETE4DqmE_13typst_library.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit78.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !93716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !93692
  br label %_RINvXs2_NtNtCsdE48SAkMLa6_9hayagriva3csl9renderingNtCs4g035V82HBz_12citationberg4DateNtB6_9RenderCsl6renderNtBa_5EntryECsdaEETE4DqmE_13typst_library.exit

bb.dz:                                            ; preds = %bb.dv
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode10parse_base(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %bb.eb unwind label %.loopexit168.i.i.i, !noalias !93718

bb.ea:                                            ; preds = %bb.dv
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode8fallback(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i unwind label %.loopexit168.i.i.i, !noalias !93718

bb.eb:                                            ; preds = %bb.dz
  %i.mq = load i64, ptr %i.be, align 8, !range !29486, !noalias !93716, !noundef !12 ; 5 uses
  %.not51.i.i.i = icmp eq i64 %i.mq, -1
  br i1 %.not51.i.i.i, label %bb.em, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %.sroa.4.0.copyload.i.i.i = load i16, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !93716 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93748)
  call void @llvm.experimental.noalias.scope.decl(metadata !93751)
  %i.mr = icmp ne i64 %i.mq, -9223372036854775807
  call void @llvm.assume(i1 %i.mr)
  %i.ms = xor i64 %i.mq, -9223372036854775808
  %i.mt = icmp slt i64 %i.mq, 0
  %i.mu = select i1 %i.mt, i64 %i.ms, i64 1
  switch i64 %i.mu, label %bb.ed [
    i64 0, label %bb.ee
    i64 1, label %bb.ef
    i64 2, label %bb.eg
  ]

bb.ed:                                            ; preds = %bb.ec
  unreachable

bb.ee:                                            ; preds = %bb.ec
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !93753
  %i.mv = call noundef dereferenceable_or_null(2) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93753 ; 6 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %bb.eh, label %bb.ei

bb.ef:                                            ; preds = %bb.ec
  store i64 %i.mq, ptr %i.bf, align 8, !alias.scope !93756, !noalias !93716
  store i16 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx133.i.i.i, align 8, !alias.scope !93756, !noalias !93716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6135.0..sroa_idx136.i.i.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5138.0..sroa_idx.i.i.i, i64 14, i1 false), !noalias !93716
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i

bb.eg:                                            ; preds = %bb.ec
  store i64 -1, ptr %i.bf, align 8, !alias.scope !93748, !noalias !93757
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i

bb.eh:                                            ; preds = %bb.ee
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #99
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !93718

.noexc.i.i.i:                                     ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.ee
  store i16 %.sroa.4.0.copyload.i.i.i, ptr %i.mv, align 1, !noalias !93758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !93759
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mv, i64 noundef 2)
          to label %bb.ej unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i, !noalias !93763

bb.ej:                                            ; preds = %bb.ei
  %i.mx = load i64, ptr %i.bd, align 8, !range !287, !noalias !93759, !noundef !12
  %i.my = trunc nuw i64 %i.mx to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !93759
  br i1 %i.my, label %bb.el, label %bb.ek

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i.i: ; preds = %bb.ei
  %i.mz = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mv, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93764
  br label %.body.i.i.i

bb.ek:                                            ; preds = %bb.ej
  store i64 2, ptr %i.bf, align 8, !alias.scope !93748, !noalias !93757
  store ptr %i.mv, ptr %.sroa.5.0..sroa_idx133.i.i.i, align 8, !alias.scope !93748, !noalias !93757
  store i64 2, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !93748, !noalias !93757
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i

bb.el:                                            ; preds = %bb.ej
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mv, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93767
  store i64 -1, ptr %i.bf, align 8, !alias.scope !93748, !noalias !93757
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i

bb.em:                                            ; preds = %bb.eb
  store i64 -1, ptr %i.bf, align 8, !noalias !93716
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %bb.em, %bb.el, %bb.ek, %bb.eg, %bb.ef, %bb.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !93770)
  call void @llvm.experimental.noalias.scope.decl(metadata !93773)
  %.idx.i.i.i159.i = mul nuw nsw i64 %i.mm, 200
  %i.na = getelementptr inbounds nuw i8, ptr %i.mk, i64 %.idx.i.i.i159.i ; 4 uses
  %i.nb = icmp eq i64 %i.mm, 0
  br i1 %i.nb, label %.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i
  %i.nc = load i64, ptr %i.mc, align 8, !alias.scope !93773, !noalias !93775 ; 2 uses
  %i.nd = load ptr, ptr %i.mb, align 8, !alias.scope !93773, !noalias !93775, !nonnull !12
  br label %.lr.ph.split.split.i.i.i.i.i

.lr.ph.split.split.i.i.i.i.i:                     ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ne = phi ptr [ %i.nf, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i ], [ %i.mk, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 200 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.nh = load i64, ptr %i.ng, align 8, !range !4638, !alias.scope !93770, !noalias !93776, !noundef !12
  %.not.i.i.i80.i.i.i = icmp eq i64 %i.nh, -1
  br i1 %.not.i.i.i80.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, label %bb.en

bb.en:                                            ; preds = %.lr.ph.split.split.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ne, i64 40
  %i.nj = load i64, ptr %i.ni, align 8, !alias.scope !93770, !noalias !93776, !noundef !12
  %i.nk = icmp eq i64 %i.nj, %i.nc
  br i1 %i.nk, label %.split.i.i.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.en
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ne, i64 32
  %i.nm = load ptr, ptr %i.nl, align 8, !alias.scope !93770, !noalias !93776, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.nm, ptr nonnull %i.nd, i64 %i.nc), !noalias !93780
  %i.nn = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.nn, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %bb.en, %.lr.ph.split.split.i.i.i.i.i
  %i.no = icmp eq ptr %i.nf, %i.na
  br i1 %i.no, label %.loopexit.i.i.i, label %.lr.ph.split.split.i.i.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i: ; preds = %.split.i.i.i.i.i
  %i.np = getelementptr i8, ptr %i.ne, i64 8
  %.val3.i.i.i.i = load ptr, ptr %i.np, align 8, !alias.scope !93770, !noalias !93781, !nonnull !12, !noundef !12 ; 2 uses
  %i.nq = getelementptr i8, ptr %i.ne, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.nq, align 8, !alias.scope !93770, !noalias !93781, !noundef !12 ; 2 uses
  %.idx693 = mul nuw nsw i64 %.val4.i.i.i.i, 112
  %i.nr = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 %.idx693
  %i.ns = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.ns, label %.loopexit.i.i.i, label %.lr.ph683

_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph683
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nv, i64 112 ; 2 uses
  %i.nu = icmp eq ptr %i.nt, %i.nr
  br i1 %i.nu, label %.loopexit.i.i.i, label %.lr.ph683

.lr.ph683:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i.i
  %i.nv = phi ptr [ %i.nt, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i.i ], [ %.val3.i.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 96
  %i.nx = load i8, ptr %i.nw, align 8, !range !7436, !noalias !93782, !noundef !12
  %i.ny = icmp eq i8 %i.nx, %i.js
  br i1 %i.ny, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.loopexit166.i.i.i, label %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i
  %i.nz = load i64, ptr %i.bf, align 8, !range !4638, !noalias !93716, !noundef !12 ; 10 uses
  %.not53.i.i.i = icmp eq i64 %i.nz, -1
  br i1 %.not53.i.i.i, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i, label %.lr.ph.i.i84.i.i.i

.thread.i.i.i:                                    ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateEs_0CsdaEETE4DqmE_13typst_library.exit.i.i.i
  %i.oa = load i64, ptr %i.bf, align 8, !range !4638, !noalias !93716, !noundef !12 ; 2 uses
  %.not53146.i.i.i = icmp eq i64 %i.oa, -1
  br i1 %.not53146.i.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit127.i.i.i, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit114.thread.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.loopexit166.i.i.i: ; preds = %.lr.ph683
  %.pre.i.i.i = load i64, ptr %i.bf, align 8, !range !4638, !alias.scope !93786, !noalias !93716
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %.lr.ph684, %.lr.ph685, %.lr.ph686, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.loopexit166.i.i.i
  %i.ob = phi i64 [ %i.nz, %.lr.ph685 ], [ %.pre.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.loopexit166.i.i.i ], [ %i.nz, %.lr.ph686 ], [ %i.nz, %.lr.ph684 ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %i.pr, %.lr.ph685 ], [ %i.nv, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.loopexit166.i.i.i ], [ %i.qg, %.lr.ph686 ], [ %i.ow, %.lr.ph684 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93786)
  %i.oc = icmp sgt i64 %i.ob, 0
  br i1 %i.oc, label %bb.eo, label %bb.eu

bb.eo:                                            ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.i.i.i
  %.val1.i81.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx133.i.i.i, align 8, !alias.scope !93786, !noalias !93716, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i81.i.i.i, i64 noundef %i.ob, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93789
  br label %bb.eu

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i95.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i91.i.i.i, %.loopexit.i.i.i
  br i1 %i.mh, label %bb.es, label %bb.eq

.lr.ph.i.i84.i.i.i:                               ; preds = %.loopexit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !93794)
  call void @llvm.experimental.noalias.scope.decl(metadata !93797)
  %i.od = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !93797, !noalias !93799 ; 2 uses
  %i.oe = load ptr, ptr %.sroa.5.0..sroa_idx133.i.i.i, align 8, !alias.scope !93797, !noalias !93799, !nonnull !12
  br label %.lr.ph.split.split.i.i85.i.i.i

.lr.ph.split.split.i.i85.i.i.i:                   ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i, %.lr.ph.i.i84.i.i.i
  %i.of = phi ptr [ %i.og, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i ], [ %i.mk, %.lr.ph.i.i84.i.i.i ] ; 6 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 200 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 24
  %i.oi = load i64, ptr %i.oh, align 8, !range !4638, !alias.scope !93794, !noalias !93800, !noundef !12
  %.not.i.i.i86.i.i.i = icmp eq i64 %i.oi, -1
  br i1 %.not.i.i.i86.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %.lr.ph.split.split.i.i85.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %i.of, i64 40
  %i.ok = load i64, ptr %i.oj, align 8, !alias.scope !93794, !noalias !93800, !noundef !12
  %i.ol = icmp eq i64 %i.ok, %i.od
  br i1 %i.ol, label %.split.i.i89.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i

.split.i.i89.i.i.i:                               ; preds = %bb.ep
  %i.om = getelementptr inbounds nuw i8, ptr %i.of, i64 32
  %i.on = load ptr, ptr %i.om, align 8, !alias.scope !93794, !noalias !93800, !nonnull !12, !noundef !12
  %bcmp.i.i.i90.i.i.i = call i32 @bcmp(ptr nonnull %i.on, ptr nonnull %i.oe, i64 %i.od), !noalias !93804
  %i.oo = icmp eq i32 %bcmp.i.i.i90.i.i.i, 0
  br i1 %i.oo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i91.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i87.i.i.i: ; preds = %.split.i.i89.i.i.i, %bb.ep, %.lr.ph.split.split.i.i85.i.i.i
  %i.op = icmp eq ptr %i.og, %i.na
  br i1 %i.op, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i, label %.lr.ph.split.split.i.i85.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i91.i.i.i: ; preds = %.split.i.i89.i.i.i
  %i.oq = getelementptr i8, ptr %i.of, i64 8
  %.val3.i93.i.i.i = load ptr, ptr %i.oq, align 8, !alias.scope !93794, !noalias !93805, !nonnull !12, !noundef !12 ; 2 uses
  %i.or = getelementptr i8, ptr %i.of, i64 16
  %.val4.i94.i.i.i = load i64, ptr %i.or, align 8, !alias.scope !93794, !noalias !93805, !noundef !12 ; 2 uses
  %.idx694 = mul nuw nsw i64 %.val4.i94.i.i.i, 112
  %i.os = getelementptr inbounds nuw i8, ptr %.val3.i93.i.i.i, i64 %.idx694
  %i.ot = icmp eq i64 %.val4.i94.i.i.i, 0
  br i1 %i.ot, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i, label %.lr.ph684

_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i95.i.i.i: ; preds = %.lr.ph684
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ow, i64 112 ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.os
  br i1 %i.ov, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i, label %.lr.ph684

.lr.ph684:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i91.i.i.i, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i95.i.i.i
  %i.ow = phi ptr [ %i.ou, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i95.i.i.i ], [ %.val3.i93.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i91.i.i.i ] ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 96
  %i.oy = load i8, ptr %i.ox, align 8, !range !7436, !noalias !93806, !noundef !12
  %i.oz = icmp eq i8 %i.oy, %i.js
  br i1 %i.oz, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit.i.i.i, label %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i95.i.i.i

bb.eq:                                            ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit98.thread.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !93810)
  br label %.lr.ph.split.split.i.i101.i.i.i

.lr.ph.split.split.i.i101.i.i.i:                  ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i, %bb.eq
  %i.pa = phi ptr [ %i.pb, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i ], [ %i.mk, %bb.eq ] ; 6 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 200 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 24
  %i.pd = load i64, ptr %i.pc, align 8, !range !4638, !alias.scope !93810, !noalias !93813, !noundef !12
  %.not.i.i.i102.i.i.i = icmp eq i64 %i.pd, -1
  br i1 %.not.i.i.i102.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i, label %bb.er

bb.er:                                            ; preds = %.lr.ph.split.split.i.i101.i.i.i
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 40
  %i.pf = load i64, ptr %i.pe, align 8, !alias.scope !93810, !noalias !93813, !noundef !12
  %i.pg = icmp eq i64 %i.pf, %i.mf
  br i1 %i.pg, label %.split.i.i105.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i

.split.i.i105.i.i.i:                              ; preds = %bb.er
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pa, i64 32
  %i.pi = load ptr, ptr %i.ph, align 8, !alias.scope !93810, !noalias !93813, !nonnull !12, !noundef !12
  %bcmp.i.i.i106.i.i.i = call i32 @bcmp(ptr nonnull %i.pi, ptr nonnull %i.mg, i64 %i.mf), !noalias !93818
  %i.pj = icmp eq i32 %bcmp.i.i.i106.i.i.i, 0
  br i1 %i.pj, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i107.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i103.i.i.i: ; preds = %.split.i.i105.i.i.i, %bb.er, %.lr.ph.split.split.i.i101.i.i.i
  %i.pk = icmp eq ptr %i.pb, %i.na
  br i1 %i.pk, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit114.thread.i.i.i, label %.lr.ph.split.split.i.i101.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i107.i.i.i: ; preds = %.split.i.i105.i.i.i
  %i.pl = getelementptr i8, ptr %i.pa, i64 8
  %.val3.i109.i.i.i = load ptr, ptr %i.pl, align 8, !alias.scope !93810, !noalias !93819, !nonnull !12, !noundef !12 ; 2 uses
  %i.pm = getelementptr i8, ptr %i.pa, i64 16
  %.val4.i110.i.i.i = load i64, ptr %i.pm, align 8, !alias.scope !93810, !noalias !93819, !noundef !12 ; 2 uses
  %.idx695 = mul nuw nsw i64 %.val4.i110.i.i.i, 112
  %i.pn = getelementptr inbounds nuw i8, ptr %.val3.i109.i.i.i, i64 %.idx695
  %i.po = icmp eq i64 %.val4.i110.i.i.i, 0
  br i1 %i.po, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit114.thread.i.i.i, label %.lr.ph685

_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i111.i.i.i: ; preds = %.lr.ph685
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pr, i64 112 ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.pn
  br i1 %i.pq, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE14localized_date0RNtCs4g035V82HBz_12citationberg4DateE0CsdaEETE4DqmE_13typst_library.exit114.thread.i.i.i, label %.lr.ph685

.lr.ph685:                                        ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE14localized_date0RNtBS_4DateE00ECsdaEETE4DqmE_13typst_library.exit.i107.i.i.i, %_RNCNCNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB9_7ContextNtBb_5EntryE14localized_date00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i111.i.i.i
end_hunk_2
begin_hunk_3_@_RINvXs8_NtNtCsdE48SAkMLa6_9hayagriva3csl9renderingNtCs4g035V82HBz_12citationberg22LayoutRenderingElementNtB6_9RenderCsl6renderNtBa_5EntryECsdaEETE4DqmE_13typst_library:bb.a
  %i.vx = extractvalue { ptr, i64 } %i.vo, 1
  %.sroa.3.0.i.i = select i1 %.not207.i.i, i64 3, i64 %i.vx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !93901
  %i.vy = icmp sgt i32 %i.vq, 0
  %i.vz = icmp slt i32 %i.vq, 0
  %i.wa = sub i32 1, %i.vq
  %.sroa.01.0.i.i.i = select i1 %i.vz, i32 %i.wa, i32 1
  %storemerge.i.i.i = select i1 %i.vy, i32 %i.vq, i32 %.sroa.01.0.i.i.i
  store i32 %storemerge.i.i.i, ptr %i.ao, align 4, !noalias !93901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !93901
  %i.wb = icmp slt i32 %i.vq, 1000                ; 2 uses
  %i.wc = icmp slt i32 %i.vq, 1                   ; 2 uses
  %spec.select.i.i.i = select i1 %i.wc, ptr %.sroa.075.0.i.i, ptr %.sroa.068.0.i.i
  %spec.select17.i.i.i = select i1 %i.wc, i64 %.sroa.376.0.i.i, i64 %.sroa.3.0.i.i
  %.sink16.i.i.i = select i1 %i.wb, ptr %spec.select.i.i.i, ptr inttoptr (i64 1 to ptr)
  %.sink.i.i.i = select i1 %i.wb, i64 %spec.select17.i.i.i, i64 0
  store ptr %.sink16.i.i.i, ptr %i.an, align 8, !noalias !93901, !captures !49
  store i64 %.sink.i.i.i, ptr %i.st, align 8, !noalias !93901
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !93901
  store ptr %i.ao, ptr %i.am, align 8, !noalias !93901
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !93901
  store ptr %i.an, ptr %i.su, align 8, !noalias !93901
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCsdaEETE4DqmE_13typst_library, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !noalias !93901
  %i.wd = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @944, ptr noundef nonnull @789, ptr noundef nonnull %i.am), !noalias !93876, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !93901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !93901
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !93901
  br i1 %i.wd, label %bb.gl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i.i, !prof !37

bb.gl:                                            ; preds = %_RINvNtCsdE48SAkMLa6_9hayagriva3csl10write_yearINtB2_7ContextNtB4_5EntryEECsdaEETE4DqmE_13typst_library.exit.i.i, %_RNvYINtNtCsdE48SAkMLa6_9hayagriva3csl7ContextNtB7_5EntryENtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCsdaEETE4DqmE_13typst_library.exit.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @952) #104, !noalias !93876
  unreachable

bb.gm:                                            ; preds = %bb.il, %_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCINvNtB6_9rendering16render_date_partNtB8_5EntryEs5_0bECsdaEETE4DqmE_13typst_library.exit.i.i, %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !93884
  store ptr %i.bc, ptr %i.av, align 8, !noalias !93884
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.488.0..sroa_idx.i.i, align 8, !noalias !93884
  %i.we = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @944, ptr noundef nonnull @0, ptr noundef nonnull %i.av), !noalias !93876
  br i1 %i.we, label %bb.gn, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit216.i.i, !prof !37

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @949) #104, !noalias !93876
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit216.i.i: ; preds = %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !93884
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit.i.i

bb.go:                                            ; preds = %bb.il, %bb.gi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !93884
  store ptr %i.bc, ptr %i.az, align 8, !noalias !93884
  store ptr @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt, ptr %.sroa.492.0..sroa_idx.i.i, align 8, !noalias !93884
  %i.wf = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(720) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @944, ptr noundef nonnull @913, ptr noundef nonnull %i.az), !noalias !93876
  br i1 %i.wf, label %bb.gp, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit215.i.i, !prof !37

bb.gp:                                            ; preds = %bb.go
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4137, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4157, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @950) #104, !noalias !93876
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCsdaEETE4DqmE_13typst_library.exit215.i.i: ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !93884
  br label %.thread255.i.i

bb.gq:                                            ; preds = %bb.gi
  %i.wg = load i32, ptr %i.bc, align 4, !noalias !93884, !noundef !12
  %i.wh = icmp eq i32 %i.wg, 1
  br i1 %i.wh, label %bb.hz, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.wi = load ptr, ptr %i.ss, align 8, !alias.scope !93885, !noalias !93886, !nonnull !12, !align !219, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93907)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !93884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !93910
  call void @_RNvMs5_NtCsdE48SAkMLa6_9hayagriva3cslNtB5_12StyleContext6locale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.wi), !noalias !93876
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !93910
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode5en_us(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak)
          to label %bb.gw unwind label %bb.gt, !noalias !93876

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit73.i.i.i: ; preds = %bb.gu, %.body.i.i172.i, %bb.gt
  %.pn60.i.i165.i = phi { ptr, i32 } [ %i.wk, %bb.gt ], [ %.pn58.i.i173.i, %.body.i.i172.i ], [ %.pn58.i.i173.i, %bb.gu ] ; 2 uses
  %.val71.i.i166.i = load i64, ptr %i.al, align 8, !alias.scope !93911, !noalias !93910 ; 2 uses
  %i.wj = icmp eq i64 %.val71.i.i166.i, 0
  br i1 %i.wj, label %common.resume, label %bb.gs

bb.gs:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit73.i.i.i
  %.val72.i.i167.i = load ptr, ptr %i.sw, align 8, !noalias !93910, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val72.i.i167.i, i64 noundef %.val71.i.i166.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93916
  br label %common.resume

bb.gt:                                            ; preds = %bb.gr
  %i.wk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit73.i.i.i

.loopexit.i.i170.i:                               ; preds = %.thread.thread.i.i.i, %bb.gw
  %lpad.loopexit.i.i171.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i172.i

.loopexit.split-lp.i.i197.i:                      ; preds = %bb.hd
  %lpad.loopexit.split-lp.i.i198.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i172.i

.body.i.i172.i:                                   ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i196.i, %.loopexit.split-lp.i.i197.i, %.loopexit.i.i170.i
  %.pn58.i.i173.i = phi { ptr, i32 } [ %i.xi, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i196.i ], [ %lpad.loopexit.i.i171.i, %.loopexit.i.i170.i ], [ %lpad.loopexit.split-lp.i.i198.i, %.loopexit.split-lp.i.i197.i ] ; 2 uses
  %.val69.i.i174.i = load i64, ptr %i.ak, align 8, !alias.scope !93911, !noalias !93910 ; 2 uses
  %i.wl = icmp eq i64 %.val69.i.i174.i, 0
  br i1 %i.wl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit73.i.i.i, label %bb.gu

bb.gu:                                            ; preds = %.body.i.i172.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wy, i64 noundef %.val69.i.i174.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93921
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit73.i.i.i

bb.gv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit114.1.i.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.wy, i64 noundef %.val67.i.i181.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93926
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit114.1.i.i.i, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !93910
  %.val65.i.i182.i = load i64, ptr %i.al, align 8, !alias.scope !93911, !noalias !93910 ; 2 uses
  %i.wm = icmp eq i64 %.val65.i.i182.i, 0
  br i1 %i.wm, label %_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCINvNtB6_9rendering16render_date_partNtB8_5EntryEs5_0bECsdaEETE4DqmE_13typst_library.exit.thread.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit116.sink.split.i.i.i

_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCINvNtB6_9rendering16render_date_partNtB8_5EntryEs5_0bECsdaEETE4DqmE_13typst_library.exit.thread.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !93910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !93884
  br label %bb.hz

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit116.sink.split.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit115.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i
  %.val65.sink.i.i183.i = phi i64 [ %.val.i230.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit115.i.i.i ], [ %.val65.i.i182.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i ]
  %.sroa.0.0.ph.i.i184.i = phi i8 [ %.sroa.0.1.i.i190.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit115.i.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit74.i.i.i ]
  %.val66.i.i185.i = load ptr, ptr %i.sw, align 8, !noalias !93910, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val66.i.i185.i, i64 noundef %.val65.sink.i.i183.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93876
  br label %_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCINvNtB6_9rendering16render_date_partNtB8_5EntryEs5_0bECsdaEETE4DqmE_13typst_library.exit.i.i

bb.gw:                                            ; preds = %bb.gr
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wi, i64 24
  %i.wo = load ptr, ptr %i.wn, align 8, !alias.scope !93907, !noalias !93876, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 888
  %i.wq = load ptr, ptr %i.wp, align 8, !noalias !93876, !nonnull !12, !noundef !12 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 896
  %i.ws = load i64, ptr %i.wr, align 8, !noalias !93876, !noundef !12 ; 4 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wi, i64 32
  %i.wu = load ptr, ptr %i.wt, align 8, !alias.scope !93907, !noalias !93876, !nonnull !12, !align !219, !noundef !12 ; 4 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wi, i64 40
  %i.ww = load i64, ptr %i.wv, align 8, !alias.scope !93907, !noalias !93876, !noundef !12 ; 2 uses
  %i.wx = load i64, ptr %i.sz, align 8, !noalias !93910 ; 2 uses
  %i.wy = load ptr, ptr %i.sy, align 8, !noalias !93910, !nonnull !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !93910
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode10parse_base(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.gx unwind label %.loopexit.i.i170.i, !noalias !93876

bb.gx:                                            ; preds = %bb.gw
  %i.wz = load i64, ptr %i.ai, align 8, !range !29486, !noalias !93910, !noundef !12 ; 6 uses
  %.not51.i.i175.i = icmp eq i64 %i.wz, -1
  br i1 %.not51.i.i175.i, label %.thread244.i.i.i, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %.sroa.4.0.copyload.i.i176.i = load i16, ptr %.sroa.4.0..sroa_idx.i.i168.i, align 8, !noalias !93910 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93931)
  call void @llvm.experimental.noalias.scope.decl(metadata !93934)
  %i.xa = icmp ne i64 %i.wz, -9223372036854775807
  call void @llvm.assume(i1 %i.xa)
  %i.xb = xor i64 %i.wz, -9223372036854775808
  %i.xc = icmp slt i64 %i.wz, 0
  %i.xd = select i1 %i.xc, i64 %i.xb, i64 1
  switch i64 %i.xd, label %bb.gz [
    i64 0, label %bb.ha
    i64 1, label %bb.hb
    i64 2, label %bb.hc
  ]

bb.gz:                                            ; preds = %bb.gy
  unreachable

bb.ha:                                            ; preds = %bb.gy
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !93936
  %i.xe = call noundef dereferenceable_or_null(2) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93936 ; 7 uses
  %i.xf = icmp eq ptr %i.xe, null
  br i1 %i.xf, label %bb.hd, label %bb.he

bb.hb:                                            ; preds = %bb.gy
  store i64 %i.wz, ptr %i.aj, align 8, !alias.scope !93939, !noalias !93910
  store i16 %.sroa.4.0.copyload.i.i176.i, ptr %.sroa.5.0..sroa_idx120.i.i.i, align 8, !alias.scope !93939, !noalias !93910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6122.0..sroa_idx123.i.i.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5125.0..sroa_idx.i.i.i, i64 14, i1 false), !noalias !93910
  br label %bb.hh

bb.hc:                                            ; preds = %bb.gy
  store i64 -1, ptr %i.aj, align 8, !alias.scope !93931, !noalias !93940
  br label %bb.hh

bb.hd:                                            ; preds = %bb.ha
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #99
          to label %.noexc.i.i199.i unwind label %.loopexit.split-lp.i.i197.i, !noalias !93876

.noexc.i.i199.i:                                  ; preds = %bb.hd
  unreachable

bb.he:                                            ; preds = %bb.ha
  store i16 %.sroa.4.0.copyload.i.i176.i, ptr %i.xe, align 1, !noalias !93941
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !93942
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.xe, i64 noundef 2)
          to label %bb.hf unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i196.i, !noalias !93946

bb.hf:                                            ; preds = %bb.he
  %i.xg = load i64, ptr %i.ah, align 8, !range !287, !noalias !93942, !noundef !12
  %i.xh = trunc nuw i64 %i.xg to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !93942
  br i1 %i.xh, label %bb.hg, label %.thread257.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i.i196.i: ; preds = %bb.he
  %i.xi = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xe, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93947
  br label %.body.i.i172.i

bb.hg:                                            ; preds = %bb.hf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.xe, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93950
  store i64 -1, ptr %i.aj, align 8, !alias.scope !93931, !noalias !93940
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hc, %bb.hb
  %i.xj = phi i64 [ -1, %bb.hg ], [ %i.wz, %bb.hb ], [ -1, %bb.hc ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93953)
  call void @llvm.experimental.noalias.scope.decl(metadata !93956)
  %i.xk = icmp eq i64 %i.ws, 0
  br i1 %i.xk, label %.thread.i.i195.i, label %.lr.ph.i.i.i.i177.i

.thread257.i.i:                                   ; preds = %bb.hf
  store i64 2, ptr %i.aj, align 8, !alias.scope !93931, !noalias !93940
  store ptr %i.xe, ptr %.sroa.5.0..sroa_idx120.i.i.i, align 8, !alias.scope !93931, !noalias !93940
  store i64 2, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i169.i, align 8, !alias.scope !93931, !noalias !93940
  %i.xl = icmp eq i64 %i.ws, 0
  br i1 %i.xl, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread.i.i, label %.lr.ph.i.i.i.i177.i

.thread244.i.i.i:                                 ; preds = %bb.gx
  store i64 -1, ptr %i.aj, align 8, !noalias !93910
  %i.xm = icmp eq i64 %i.ws, 0
  br i1 %i.xm, label %.thread.thread.i.i.i, label %.lr.ph.i.i.i.i177.i

.lr.ph.i.i.i.i177.i:                              ; preds = %.thread244.i.i.i, %.thread257.i.i, %bb.hh
  %i.xn = phi i64 [ -1, %.thread244.i.i.i ], [ %i.xj, %bb.hh ], [ 2, %.thread257.i.i ] ; 4 uses
  %.idx.i245.pn.i.i.i = mul nuw nsw i64 %i.ws, 200
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wq, i64 %.idx.i245.pn.i.i.i ; 3 uses
  %i.xp = load i64, ptr %i.sx, align 8, !alias.scope !93956, !noalias !93958 ; 2 uses
  %i.xq = load ptr, ptr %i.sw, align 8, !alias.scope !93956, !noalias !93958, !nonnull !12
  br label %.lr.ph.split.split.i.i.i.i178.i

.lr.ph.split.split.i.i.i.i178.i:                  ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, %.lr.ph.i.i.i.i177.i
  %i.xr = phi ptr [ %i.xs, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i ], [ %i.wq, %.lr.ph.i.i.i.i177.i ] ; 5 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 200 ; 2 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xu = load i64, ptr %i.xt, align 8, !range !4638, !alias.scope !93953, !noalias !93959, !noundef !12
  %.not.i.i.i76.i.i.i = icmp eq i64 %i.xu, -1
  br i1 %.not.i.i.i76.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %.lr.ph.split.split.i.i.i.i178.i
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xr, i64 40
  %i.xw = load i64, ptr %i.xv, align 8, !alias.scope !93953, !noalias !93959, !noundef !12
  %i.xx = icmp eq i64 %i.xw, %i.xp
  br i1 %i.xx, label %.split.i.i.i.i193.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i

.split.i.i.i.i193.i:                              ; preds = %bb.hi
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  %i.xz = load ptr, ptr %i.xy, align 8, !alias.scope !93953, !noalias !93959, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i.i194.i = call i32 @bcmp(ptr nonnull %i.xz, ptr nonnull %i.xq, i64 %i.xp), !noalias !93963
  %i.ya = icmp eq i32 %bcmp.i.i.i.i.i194.i, 0
  br i1 %i.ya, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i: ; preds = %.split.i.i.i.i193.i, %bb.hi, %.lr.ph.split.split.i.i.i.i178.i
  %i.yb = icmp eq ptr %i.xs, %i.xo
  br i1 %i.yb, label %bb.hk, label %.lr.ph.split.split.i.i.i.i178.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i: ; preds = %.split.i.i.i.i193.i, %.split.i.i.1.i.i.i
  %.lcssa.i.i.i = phi ptr [ %i.zo, %.split.i.i.1.i.i.i ], [ %i.xr, %.split.i.i.i.i193.i ]
  %i.yc = getelementptr i8, ptr %.lcssa.i.i.i, i64 192
  %.val.i.i.i.i = load i8, ptr %i.yc, align 8, !range !252, !alias.scope !93953, !noalias !93964, !noundef !12 ; 2 uses
  switch i8 %.val.i.i.i.i, label %bb.hj [
    i8 -1, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i
    i8 2, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i
  ]

bb.hj:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %bb.hj, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i
  %.sroa.0.0.i3.i.i.i.i = phi i8 [ %.val.i.i.i.i, %bb.hj ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i.i.i.i ] ; 2 uses
  %i.yd = icmp samesign ult i8 %.sroa.0.0.i3.i.i.i.i, 2
  call void @llvm.assume(i1 %i.yd)
  %.pre.i.i192.i = load i64, ptr %i.aj, align 8, !range !4638, !alias.scope !93965, !noalias !93910
  br label %bb.hl

bb.hk:                                            ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i.i.i
  %.not53.i.i179.i = icmp eq i64 %i.xn, -1
  br i1 %.not53.i.i179.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i.preheader, label %.lr.ph.i.i80.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i.preheader: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i, %bb.hk
  br label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i

.thread.i.i195.i:                                 ; preds = %bb.hh
  %.not53133.i.i.i = icmp eq i64 %i.xj, -1
  br i1 %.not53133.i.i.i, label %.thread.thread.i.i.i, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.i.i

bb.hl:                                            ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i
  %i.ye = phi i64 [ %i.yt, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i ], [ %.pre.i.i192.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %i.zz, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i ], [ %i.xn, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i ] ; 2 uses
  %.sroa.0.1.i.i190.i = phi i8 [ %.sroa.0.0.i3.i90.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i ], [ %.sroa.0.0.i3.i.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %.sroa.0.0.i3.i103.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i ], [ %.sroa.0.0.i3.i111.i.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93965)
  %i.yf = icmp sgt i64 %i.ye, 0
  br i1 %i.yf, label %bb.hm, label %bb.hr

bb.hm:                                            ; preds = %bb.hl
  %.val1.i77.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx120.i.i.i, align 8, !alias.scope !93965, !noalias !93910, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i77.i.i.i, i64 noundef %i.ye, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !93968
  br label %bb.hr

.lr.ph.i.i80.i.i.i:                               ; preds = %bb.hk
  call void @llvm.experimental.noalias.scope.decl(metadata !93973)
  call void @llvm.experimental.noalias.scope.decl(metadata !93976)
  %i.yg = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i.i169.i, align 8, !alias.scope !93976, !noalias !93978 ; 2 uses
  %i.yh = load ptr, ptr %.sroa.5.0..sroa_idx120.i.i.i, align 8, !alias.scope !93976, !noalias !93978, !nonnull !12
  br label %.lr.ph.split.split.i.i81.i.i.i

.lr.ph.split.split.i.i81.i.i.i:                   ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i, %.lr.ph.i.i80.i.i.i
  %i.yi = phi ptr [ %i.yj, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i ], [ %i.wq, %.lr.ph.i.i80.i.i.i ] ; 5 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 200 ; 2 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %i.yl = load i64, ptr %i.yk, align 8, !range !4638, !alias.scope !93973, !noalias !93979, !noundef !12
  %.not.i.i.i82.i.i.i = icmp eq i64 %i.yl, -1
  br i1 %.not.i.i.i82.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph.split.split.i.i81.i.i.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yi, i64 40
  %i.yn = load i64, ptr %i.ym, align 8, !alias.scope !93973, !noalias !93979, !noundef !12
  %i.yo = icmp eq i64 %i.yn, %i.yg
  br i1 %i.yo, label %.split.i.i85.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i

.split.i.i85.i.i.i:                               ; preds = %bb.hn
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yi, i64 32
  %i.yq = load ptr, ptr %i.yp, align 8, !alias.scope !93973, !noalias !93979, !nonnull !12, !noundef !12
  %bcmp.i.i.i86.i.i.i = call i32 @bcmp(ptr nonnull %i.yq, ptr nonnull %i.yh, i64 %i.yg), !noalias !93983
  %i.yr = icmp eq i32 %bcmp.i.i.i86.i.i.i, 0
  br i1 %i.yr, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i83.i.i.i: ; preds = %.split.i.i85.i.i.i, %bb.hn, %.lr.ph.split.split.i.i81.i.i.i
  %i.ys = icmp eq ptr %i.yj, %i.xo
  br i1 %i.ys, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i.preheader, label %.lr.ph.split.split.i.i81.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i: ; preds = %.split.i.i85.i.i.i, %.split.i.i85.1.i.i.i
  %i.yt = phi i64 [ %i.zz, %.split.i.i85.1.i.i.i ], [ %i.xn, %.split.i.i85.i.i.i ]
  %.lcssa177.i.i.i = phi ptr [ %i.aac, %.split.i.i85.1.i.i.i ], [ %i.yi, %.split.i.i85.i.i.i ]
  %i.yu = getelementptr i8, ptr %.lcssa177.i.i.i, i64 192
  %.val.i88.i.i.i = load i8, ptr %i.yu, align 8, !range !252, !alias.scope !93973, !noalias !93984, !noundef !12 ; 2 uses
  switch i8 %.val.i88.i.i.i, label %bb.ho [
    i8 -1, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i
    i8 2, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i
  ]

bb.ho:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit91.i.i.i: ; preds = %bb.ho, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i
  %.sroa.0.0.i3.i90.i.i.i = phi i8 [ %.val.i88.i.i.i, %bb.ho ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i87.i.i.i ] ; 2 uses
  %i.yv = icmp samesign ult i8 %.sroa.0.0.i3.i90.i.i.i, 2
  call void @llvm.assume(i1 %i.yv)
  br label %bb.hl

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i: ; preds = %.split.i.i98.1.i.i.i
  %i.yw = getelementptr i8, ptr %i.aao, i64 192
  %.val.i101.i.i.i = load i8, ptr %i.yw, align 8, !range !252, !alias.scope !93985, !noalias !93988, !noundef !12 ; 2 uses
  switch i8 %.val.i101.i.i.i, label %bb.hp [
    i8 -1, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i
    i8 2, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i
  ]

bb.hp:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i.preheader, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i
  %i.yx = phi ptr [ %i.za, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i ], [ %i.wq, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i.preheader ] ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 24
  %i.yz = load i64, ptr %i.yy, align 8, !range !4638, !alias.scope !93990, !noalias !93993, !noundef !12
  %.not.i.us.i.i.i.i180.i = icmp eq i64 %i.yz, -1
  br i1 %.not.i.us.i.i.i.i180.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i
  %i.za = getelementptr inbounds nuw i8, ptr %i.yx, i64 200 ; 2 uses
  %i.zb = icmp eq ptr %i.za, %i.xo
  br i1 %i.zb, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i.i.i
  %i.zc = getelementptr i8, ptr %i.yx, i64 192
  %.val.i109.i.i.i = load i8, ptr %i.zc, align 8, !range !252, !alias.scope !93990, !noalias !93998, !noundef !12 ; 2 uses
  switch i8 %.val.i109.i.i.i, label %bb.hq [
    i8 -1, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i
    i8 2, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i
  ]

bb.hq:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.i.i.i: ; preds = %bb.hp, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i
  %.sroa.0.0.i3.i103.i.i.i = phi i8 [ %.val.i101.i.i.i, %bb.hp ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i100.i.i.i ] ; 2 uses
  %i.zd = icmp samesign ult i8 %.sroa.0.0.i3.i103.i.i.i, 2
  call void @llvm.assume(i1 %i.zd)
  br label %bb.hl

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.i.i: ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i, %.thread.i.i195.i
  %i.ze = phi i64 [ %i.xj, %.thread.i.i195.i ], [ %i.xn, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCINvNtBa_9rendering16render_date_partNtBc_5EntryEs5_0bE00CsdaEETE4DqmE_13typst_library.exit.thread.us.i.i.i.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !93999)
  %i.zf = icmp sgt i64 %i.ze, 0
  br i1 %i.zf, label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i._RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread_crit_edge.i.i, label %.thread.thread.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i._RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread_crit_edge.i.i: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.i.i
  %.val1.i113.i.pre.i.i = load ptr, ptr %.sroa.5.0..sroa_idx120.i.i.i, align 8, !alias.scope !93999, !noalias !93910
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread.i.i: ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i._RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread_crit_edge.i.i, %.thread257.i.i
  %.val1.i113.i.i.i = phi ptr [ %.val1.i113.i.pre.i.i, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i._RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread_crit_edge.i.i ], [ %i.xe, %.thread257.i.i ]
  %i.zg = phi i64 [ %i.ze, %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i._RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit104.thread.i.thread_crit_edge.i.i ], [ 2, %.thread257.i.i ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i113.i.i.i, i64 noundef %i.zg, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !94002
  br label %.thread.thread.i.i.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCINvNtB8_9rendering16render_date_partNtBa_5EntryEs5_0bE0CsdaEETE4DqmE_13typst_library.exit112.i.i.i: ; preds = %bb.hq, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i
  %.sroa.0.0.i3.i111.i.i.i = phi i8 [ %.val.i109.i.i.i, %bb.hq ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i ], [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCINvNtB2n_9rendering16render_date_partNtB2p_5EntryEs5_0bE00ECsdaEETE4DqmE_13typst_library.exit.i108.i.i.i ] ; 2 uses
  %i.zh = icmp samesign ult i8 %.sroa.0.0.i3.i111.i.i.i, 2
  call void @llvm.assume(i1 %i.zh)
  br label %bb.hl

bb.hr:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !93910
  %.val63.i.i191.i = load i64, ptr %i.ak, align 8, !alias.scope !93911, !noalias !93910 ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE31resolve_number_or_page_variableCsdaEETE4DqmE_13typst_library:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsm_NtCsdE48SAkMLa6_9hayagriva3cslINtB5_7ContextNtB7_5EntryE4termCsdaEETE4DqmE_13typst_library(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i16 %1, i8 noundef range(i8 0, 5) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 16 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.7.0.extract.shift = lshr i16 %1, 8       ; 2 uses
  %i.g = and i16 %1, 255
  %i.h = icmp eq i16 %i.g, 106
  %i.i = icmp eq i16 %.sroa.7.0.extract.shift, 6
  %.sroa.0.0.i = and i1 %i.h, %i.i
  br i1 %.sroa.0.0.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load i64, ptr %i.j, align 8, !range !256, !noundef !12
  %.not = icmp eq i64 %i.k, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.020.0 = phi i16 [ 106, %bb.b ], [ 108, %bb.d ], [ %1, %bb.a ]
  %.sroa.7.0 = phi i16 [ 6, %bb.b ], [ %i.s, %bb.d ], [ %.sroa.7.0.extract.shift, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 704
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %.sroa.5.0..sroa_idx141.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 6 uses
  %.sroa.6143.0..sroa_idx144.i = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0.insert.shift39 = shl nuw i16 %.sroa.7.0, 8
  %.sroa.020.0.insert.ext27 = and i16 %.sroa.020.0, 255
  %.sroa.020.0.insert.insert29 = or disjoint i16 %.sroa.7.0.insert.shift39, %.sroa.020.0.insert.ext27 ; 4 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i8, ptr %i.q, align 8, !range !24578, !noundef !12
  %i.s = zext nneg i8 %i.r to i16
  br label %bb.c

bb.e:                                             ; preds = %.backedge, %bb.c
  %.sroa.03.0104 = phi i8 [ %2, %bb.c ], [ %.sroa.03.0104.be, %.backedge ] ; 5 uses
  %i.t = load ptr, ptr %i.l, align 8, !nonnull !12, !align !219, !noundef !12 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !172699
  call void @_RNvMs5_NtCsdE48SAkMLa6_9hayagriva3cslNtB5_12StyleContext6locale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.t), !noalias !172702
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !172699
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode5en_us(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e)
          to label %bb.h unwind label %bb.g, !noalias !172702

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63.i: ; preds = %bb.j, %.body.i, %bb.g
  %.pn46.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %.pn44.i, %.body.i ], [ %.pn44.i, %bb.j ]
  %.val57.i = load i64, ptr %i.f, align 8, !alias.scope !172703, !noalias !172699 ; 2 uses
  %i.u = icmp eq i64 %.val57.i, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63.i
  %.val58.i = load ptr, ptr %i.m, align 8, !noalias !172699, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val58.i, i64 noundef %.val57.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172708
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63.i

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !172696, !noalias !172702, !nonnull !12, !align !219, !noundef !12 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 888
  %i.z = load ptr, ptr %i.y, align 8, !noalias !172702, !nonnull !12, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 896
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !172702, !noundef !12
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !172696, !noalias !172702, !nonnull !12, !align !219, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !172696, !noalias !172702, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !172699
  store ptr %i.z, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !noalias !172699
  store i64 %i.ab, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !172699
  store ptr %i.ad, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !172699
  store i64 %i.af, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 8, !noalias !172699
  %i.ag = load i64, ptr %i.p, align 8, !noalias !172699 ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 8, !noalias !172699, !nonnull !12 ; 4 uses
  br label %bb.i

.loopexit171.i:                                   ; preds = %bb.n, %bb.m
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.u
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i, %bb.h
  %i.ai = phi i1 [ true, %bb.h ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i ] ; 2 uses
  %.not.i.i.i.i = phi i1 [ false, %bb.h ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i ]
  %i.aj = phi i64 [ 0, %bb.h ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.sroa.3.0..sroa_idx.i, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !172713, !noalias !172720, !nonnull !12, !align !219, !noundef !12 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !172713, !noalias !172720, !noundef !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !172699
  br i1 %i.ai, label %bb.m, label %bb.n

.body.i:                                          ; preds = %bb.ah, %bb.ag, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i, %.loopexit.split-lp.i, %.loopexit171.i
  %.pn44.i = phi { ptr, i32 } [ %i.cb, %bb.ah ], [ %i.ba, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i ], [ %i.cb, %bb.ag ], [ %lpad.loopexit.i, %.loopexit171.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.val55.i = load i64, ptr %i.e, align 8, !alias.scope !172703, !noalias !172699 ; 2 uses
  %i.ao = icmp eq i64 %.val55.i, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63.i, label %bb.j

bb.j:                                             ; preds = %.body.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %.val55.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172722
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit63.i

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !172699
  %.val53.i = load i64, ptr %i.e, align 8, !alias.scope !172703, !noalias !172699 ; 2 uses
  %i.ap = icmp eq i64 %.val53.i, 0
  br i1 %i.ap, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ah, i64 noundef %.val53.i, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172727
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs4g035V82HBz_12citationberg10LocaleCodeECsdaEETE4DqmE_13typst_library.exit64.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !172699
  %.val51.i = load i64, ptr %i.f, align 8, !alias.scope !172703, !noalias !172699 ; 2 uses
  %i.aq = icmp eq i64 %.val51.i, 0
  br i1 %i.aq, label %_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCNvMsm_B6_INtB6_7ContextNtB8_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEECsdaEETE4DqmE_13typst_library.exit.thread47, label %_RINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB6_12StyleContext13lookup_localeNCNvMsm_B6_INtB6_7ContextNtB8_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEECsdaEETE4DqmE_13typst_library.exit

bb.m:                                             ; preds = %bb.i
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode10parse_base(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.o unwind label %.loopexit171.i, !noalias !172702

bb.n:                                             ; preds = %bb.i
  invoke void @_RNvMsg_Cs4g035V82HBz_12citationbergNtB5_10LocaleCode8fallback(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i unwind label %.loopexit171.i, !noalias !172702

bb.o:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.b, align 8, !range !29486, !noalias !172699, !noundef !12 ; 5 uses
  %.not41.i = icmp eq i64 %i.ar, -1
  br i1 %.not41.i, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.4.0.copyload.i = load i16, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !172699 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172732)
  call void @llvm.experimental.noalias.scope.decl(metadata !172735)
  %i.as = icmp ne i64 %i.ar, -9223372036854775807
  call void @llvm.assume(i1 %i.as)
  %i.at = xor i64 %i.ar, -9223372036854775808
  %i.au = icmp slt i64 %i.ar, 0
  %i.av = select i1 %i.au, i64 %i.at, i64 1
  switch i64 %i.av, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.s
    i64 2, label %bb.t
  ]

bb.q:                                             ; preds = %bb.p
  unreachable

bb.r:                                             ; preds = %bb.p
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #96, !noalias !172737
  %i.aw = call noundef dereferenceable_or_null(2) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172737 ; 6 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.p
  store i64 %i.ar, ptr %i.c, align 8, !alias.scope !172740, !noalias !172699
  store i16 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx141.i, align 8, !alias.scope !172740, !noalias !172699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %.sroa.6143.0..sroa_idx144.i, ptr noundef nonnull align 2 dereferenceable(14) %.sroa.5146.0..sroa_idx.i, i64 14, i1 false), !noalias !172699
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i

bb.t:                                             ; preds = %bb.p
  store i64 -1, ptr %i.c, align 8, !alias.scope !172732, !noalias !172741
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i

bb.u:                                             ; preds = %bb.r
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 1, i64 2) #99
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !172702

.noexc.i:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.r
  store i16 %.sroa.4.0.copyload.i, ptr %i.aw, align 1, !noalias !172742
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172743
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef 2)
          to label %bb.w unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i, !noalias !172747

bb.w:                                             ; preds = %bb.v
  %i.ay = load i64, ptr %i.a, align 8, !range !287, !noalias !172743, !noundef !12
  %i.az = trunc nuw i64 %i.ay to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172743
  br i1 %i.az, label %bb.y, label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECsdaEETE4DqmE_13typst_library.exit.i.i.i: ; preds = %bb.v
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172748
  br label %.body.i

bb.x:                                             ; preds = %bb.w
  store i64 2, ptr %i.c, align 8, !alias.scope !172732, !noalias !172741
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx141.i, align 8, !alias.scope !172732, !noalias !172741
  store i64 2, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !172732, !noalias !172741
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i

bb.y:                                             ; preds = %bb.w
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aw, i64 noundef 2, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172751
  store i64 -1, ptr %i.c, align 8, !alias.scope !172732, !noalias !172741
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i

bb.z:                                             ; preds = %bb.o
  store i64 -1, ptr %i.c, align 8, !noalias !172699
  br label %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i

_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i: ; preds = %bb.z, %bb.y, %bb.x, %bb.t, %bb.s, %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !172754)
  call void @llvm.experimental.noalias.scope.decl(metadata !172757)
  %.idx.i.i = mul nuw nsw i64 %i.an, 200
  %i.bb = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx.i.i ; 4 uses
  %i.bc = icmp eq i64 %i.an, 0
  br i1 %i.bc, label %.thread153.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i
  %i.bd = load i64, ptr %i.n, align 8, !alias.scope !172757, !noalias !172759 ; 2 uses
  %i.be = load ptr, ptr %i.m, align 8, !alias.scope !172757, !noalias !172759, !nonnull !12
  br label %.lr.ph.split.split.i.i.i

.lr.ph.split.split.i.i.i:                         ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.bf = phi ptr [ %i.bg, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i ], [ %i.al, %.lr.ph.i.i.i ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 200 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !range !4638, !alias.scope !172754, !noalias !172761, !noundef !12
  %.not.i.i.i66.i = icmp eq i64 %i.bi, -1
  br i1 %.not.i.i.i66.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.split.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !172754, !noalias !172761, !noundef !12
  %i.bl = icmp eq i64 %i.bk, %i.bd
  br i1 %i.bl, label %.split.i.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.aa
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !172754, !noalias !172761, !nonnull !12, !noundef !12
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.bn, ptr nonnull %i.be, i64 %i.bd), !noalias !172765
  %i.bo = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bo, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i: ; preds = %.split.i.i.i, %bb.aa, %.lr.ph.split.split.i.i.i
  %i.bp = icmp eq ptr %i.bg, %i.bb
  br i1 %i.bp, label %.loopexit.i, label %.lr.ph.split.split.i.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i.i: ; preds = %.split.i.i.i
  %i.bq = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.bf, i16 %.sroa.020.0.insert.insert29, i8 noundef %.sroa.03.0104)
          to label %.noexc67.i unwind label %bb.ag, !noalias !172702 ; 7 uses

.noexc67.i:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i.i
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.noexc67.i
  br i1 %3, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load i64, ptr %i.br, align 8, !range !4638, !alias.scope !172766, !noalias !172769, !noundef !12
  %.not.i.i2.i.i = icmp eq i64 %i.bs, -1
  br i1 %.not.i.i2.i.i, label %bb.ad, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bt = load i64, ptr %i.bq, align 8, !range !4638, !alias.scope !172766, !noalias !172769, !noundef !12
  %.not2.i.i.i.i = icmp eq i64 %i.bt, -1
  br i1 %.not2.i.i.i.i, label %bb.ai, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.ab
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !range !4638, !alias.scope !172773, !noalias !172769, !noundef !12
  %.not.i8.i.i.i = icmp eq i64 %i.bv, -1
  br i1 %.not.i8.i.i.i, label %bb.af, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.bw = load i64, ptr %i.bq, align 8, !range !4638, !alias.scope !172773, !noalias !172769, !noundef !12
  %.not2.i11.i.i.i = icmp eq i64 %i.bw, -1
  br i1 %.not2.i11.i.i.i, label %bb.ai, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i

_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i: ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.sink15.i.i.i = phi i64 [ 56, %bb.ae ], [ 8, %bb.ad ], [ 32, %bb.ac ], [ 8, %bb.af ]
  %.sink14.i.i.i = phi i64 [ 64, %bb.ae ], [ 16, %bb.ad ], [ 40, %bb.ac ], [ 16, %bb.af ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink15.i.i.i
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !172769, !nonnull !12, !noundef !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.sink14.i.i.i
  %i.ca = load i64, ptr %i.bz, align 8, !noalias !172769, !noundef !12
  br label %bb.ai

bb.ag:                                            ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i119.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i101.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i78.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i.i
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172776)
  %i.cc = load i64, ptr %i.c, align 8, !range !4638, !alias.scope !172776, !noalias !172699, !noundef !12 ; 2 uses
  %i.cd = icmp sgt i64 %i.cc, 0
  br i1 %i.cd, label %bb.ah, label %.body.i

bb.ah:                                            ; preds = %bb.ag
  %.val1.i.i = load ptr, ptr %.sroa.5.0..sroa_idx141.i, align 8, !alias.scope !172776, !noalias !172699, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.cc, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172779
  br label %.body.i

bb.ai:                                            ; preds = %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i, %bb.af, %bb.ad
  %.sroa.0.0.i10.pn.i.i.i = phi ptr [ null, %bb.ad ], [ null, %bb.af ], [ %i.by, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i ]
  %.sroa.4.0.i9.pn.i.i.i = phi i64 [ undef, %bb.ad ], [ undef, %bb.af ], [ %i.ca, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i.i ]
  %.pre.i = load i64, ptr %i.c, align 8, !range !4638, !alias.scope !172784, !noalias !172699
  br label %bb.aj

.loopexit.i:                                      ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i.i, %.noexc67.i
  %i.ce = load i64, ptr %i.c, align 8, !range !4638, !noalias !172699, !noundef !12 ; 14 uses
  %.not42.i = icmp eq i64 %i.ce, -1
  br i1 %.not42.i, label %.thread157.i, label %.lr.ph.i.i71.i

.thread153.i:                                     ; preds = %_RNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB8_12StyleContext13lookup_localeNCNvMsm_B8_INtB8_7ContextNtBa_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEEs_0CsdaEETE4DqmE_13typst_library.exit.i
  %i.cf = load i64, ptr %i.c, align 8, !range !4638, !noalias !172699, !noundef !12 ; 2 uses
  %.not42154.i = icmp eq i64 %i.cf, -1
  br i1 %.not42154.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4g035V82HBz_12citationberg10LocaleCodeEECsdaEETE4DqmE_13typst_library.exit135.i, label %.thread164.i

bb.aj:                                            ; preds = %bb.ba, %bb.bc, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i123.i, %bb.av, %bb.ax, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i105.i, %bb.ao, %bb.aq, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i, %bb.ai
  %.sroa.19.1 = phi i64 [ %i.eb, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i105.i ], [ %i.df, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i ], [ %.sroa.4.0.i9.pn.i.i.i, %bb.ai ], [ undef, %bb.ao ], [ undef, %bb.aq ], [ undef, %bb.av ], [ undef, %bb.ax ], [ undef, %bb.ba ], [ undef, %bb.bc ], [ %i.er, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i123.i ]
  %.sroa.14.1 = phi ptr [ %i.dz, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i105.i ], [ %i.dd, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i ], [ %.sroa.0.0.i10.pn.i.i.i, %bb.ai ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.av ], [ null, %bb.ax ], [ null, %bb.ba ], [ null, %bb.bc ], [ %i.ep, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i123.i ]
  %i.cg = phi i64 [ %i.ce, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i105.i ], [ %i.ce, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i ], [ %.pre.i, %bb.ai ], [ %i.ce, %bb.ao ], [ %i.ce, %bb.aq ], [ %i.ce, %bb.av ], [ %i.ce, %bb.ax ], [ %i.ce, %bb.ba ], [ %i.ce, %bb.bc ], [ %i.ce, %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i123.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !172784)
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %bb.ak, label %bb.be

bb.ak:                                            ; preds = %bb.aj
  %.val1.i68.i = load ptr, ptr %.sroa.5.0..sroa_idx141.i, align 8, !alias.scope !172784, !noalias !172699, !nonnull !12, !noundef !12
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i68.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 1) #96, !noalias !172787
  br label %bb.be

.thread157.i:                                     ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i, %.noexc91.i, %.loopexit.i
  br i1 %i.ai, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.us.i.i.i, label %bb.ar

.lr.ph.i.i71.i:                                   ; preds = %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !172792)
  call void @llvm.experimental.noalias.scope.decl(metadata !172795)
  %i.ci = load i64, ptr %.sroa.511.sroa.5.0..sroa.511.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !172795, !noalias !172797 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.5.0..sroa_idx141.i, align 8, !alias.scope !172795, !noalias !172797, !nonnull !12
  br label %.lr.ph.split.split.i.i72.i

.lr.ph.split.split.i.i72.i:                       ; preds = %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i, %.lr.ph.i.i71.i
  %i.ck = phi ptr [ %i.cl, %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i ], [ %i.al, %.lr.ph.i.i71.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 200 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !range !4638, !alias.scope !172792, !noalias !172799, !noundef !12
  %.not.i.i.i73.i = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i73.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph.split.split.i.i72.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !172792, !noalias !172799, !noundef !12
  %i.cq = icmp eq i64 %i.cp, %i.ci
  br i1 %i.cq, label %.split.i.i76.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i

.split.i.i76.i:                                   ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !172792, !noalias !172799, !nonnull !12, !noundef !12
  %bcmp.i.i.i77.i = call i32 @bcmp(ptr nonnull %i.cs, ptr nonnull %i.cj, i64 %i.ci), !noalias !172803
  %i.ct = icmp eq i32 %bcmp.i.i.i77.i, 0
  br i1 %i.ct, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i78.i, label %_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i

_RNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtBa_12StyleContext13lookup_localeNCNvMsm_Ba_INtBa_7ContextNtBc_5EntryE4term0INtNtCs3oUPovFnLWP_4core6option6OptionReEE00CsdaEETE4DqmE_13typst_library.exit.thread.i.i74.i: ; preds = %.split.i.i76.i, %bb.al, %.lr.ph.split.split.i.i72.i
  %i.cu = icmp eq ptr %i.cl, %i.bb
  br i1 %i.cu, label %.thread157.i, label %.lr.ph.split.split.i.i72.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i78.i: ; preds = %.split.i.i76.i
  %i.cv = invoke noundef align 8 ptr @_RNvMsJ_Cs4g035V82HBz_12citationbergNtB5_6Locale4term(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %i.ck, i16 %.sroa.020.0.insert.insert29, i8 noundef %.sroa.03.0104)
          to label %.noexc91.i unwind label %bb.ag, !noalias !172702 ; 7 uses

.noexc91.i:                                       ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtCs4g035V82HBz_12citationberg6LocaleENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCINvMs9_NtCsdE48SAkMLa6_9hayagriva3cslNtB2n_12StyleContext13lookup_localeNCNvMsm_B2n_INtB2n_7ContextNtB2p_5EntryE4term0INtNtBb_6option6OptionReEE00ECsdaEETE4DqmE_13typst_library.exit.i78.i
  %.not.i.i80.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i80.i, label %.thread157.i, label %bb.am

bb.am:                                            ; preds = %.noexc91.i
  br i1 %3, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load i64, ptr %i.cw, align 8, !range !4638, !alias.scope !172804, !noalias !172807, !noundef !12
  %.not.i.i2.i81.i = icmp eq i64 %i.cx, -1
  br i1 %.not.i.i2.i81.i, label %bb.ao, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i

bb.ao:                                            ; preds = %bb.an
  %i.cy = load i64, ptr %i.cv, align 8, !range !4638, !alias.scope !172804, !noalias !172807, !noundef !12
  %.not2.i.i.i88.i = icmp eq i64 %i.cy, -1
  br i1 %.not2.i.i.i88.i, label %bb.aj, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i

bb.ap:                                            ; preds = %bb.am
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !range !4638, !alias.scope !172811, !noalias !172807, !noundef !12
  %.not.i8.i.i89.i = icmp eq i64 %i.da, -1
  br i1 %.not.i8.i.i89.i, label %bb.aq, label %_RNvMsN_Cs4g035V82HBz_12citationbergNtB5_13LocalizedTerm6single.exit.sink.split.i.i82.i

bb.aq:                                            ; preds = %bb.ap
  %i.db = load i64, ptr %i.cv, align 8, !range !4638, !alias.scope !172811, !noalias !172807, !noundef !12
  %.not2.i11.i.i90.i = icmp eq i64 %i.db, -1
end_hunk_4
