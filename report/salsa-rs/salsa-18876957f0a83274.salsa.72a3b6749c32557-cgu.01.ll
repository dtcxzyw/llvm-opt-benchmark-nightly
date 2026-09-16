Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.01?download=true
inline.NumInlined: 295
inline.NumDeleted: 129
begin_hunk_0
@35 = private unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @34, [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@36 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest, ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata, ptr @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa }>, align 8
@37 = private unnamed_addr constant [18 x i8] c"src/zalsa_local.rs", align 1
@_RNvNvNCNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBa_10ZalsaLocal19report_tracked_reads_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00K\01\00\00", ptr @32, [8 x i8] c"\1C\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_10ZalsaLocal19report_tracked_reads_010___CALLSITE, ptr @36, ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @37, [9 x i8] c"\12\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@38 = private unnamed_addr constant [28 x i8] c"event src/zalsa_local.rs:365", align 1
@_RNvNvNCNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBa_10ZalsaLocal26report_tracked_read_simples_010___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00m\01\00\00", ptr @38, [8 x i8] c"\1C\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @35, [8 x i8] c"\01\00\00\00\00\00\00\00", ptr @_RNvNCNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_10ZalsaLocal26report_tracked_read_simples_010___CALLSITE, ptr @36, ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @37, [9 x i8] c"\12\00\00\00\00\00\00\00\01", [7 x i8] undef }>, align 8
@39 = private unnamed_addr constant [30 x i8] c"enabled src/zalsa_local.rs:331", align 1
@_RNvNvNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_10ZalsaLocal19report_tracked_read10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00K\01\00\00", ptr @39, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_10ZalsaLocal19report_tracked_read10___CALLSITE, ptr @36, ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @37, [9 x i8] c"\12\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@40 = private unnamed_addr constant [30 x i8] c"enabled src/zalsa_local.rs:365", align 1
@_RNvNvNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_10ZalsaLocal26report_tracked_read_simple10___CALLSITE4META = constant <{ [16 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, ptr, ptr, [8 x i8], ptr, [9 x i8], [7 x i8] }> <{ [16 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00m\01\00\00", ptr @40, [8 x i8] c"\1E\00\00\00\00\00\00\00", ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr inttoptr (i64 8 to ptr), [8 x i8] zeroinitializer, ptr @_RNvNvMs_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_10ZalsaLocal26report_tracked_read_simple10___CALLSITE, ptr @36, ptr @33, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @37, [9 x i8] c"\12\00\00\00\00\00\00\00\04", [7 x i8] undef }>, align 8
@41 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1, [16 x i8] c"\12\00\00\00\00\00\00\00\CB\02\00\00&\00\00\00" }>, align 8
@42 = private unnamed_addr constant [24 x i8] c"QueryRevisionsExtraInner", align 1
@43 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_, [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsz_NtCsC8CapfvpQ1_5salsa5cycleNtB5_10CycleHeadsNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@44 = private unnamed_addr constant [11 x i8] c"cycle_heads", align 1
@45 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", ptr @_RNvXsw_NtCsC8CapfvpQ1_5salsa5cycleNtB5_20AtomicIterationStampNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@46 = private unnamed_addr constant [9 x i8] c"iteration", align 1
@47 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsf_NtCs4NRVxsYgnAr_4core3fmtbNtB5_5Debug3fmt }>, align 8
@48 = private unnamed_addr constant [15 x i8] c"cycle_converged", align 1
@49 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_map14AccumulatedMapEBH_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNtNtCsC8CapfvpQ1_5salsa11accumulator15accumulated_mapNtB2_14AccumulatedMapNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@50 = private unnamed_addr constant [11 x i8] c"accumulated", align 1
@51 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXNvXs4_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_24QueryRevisionsExtraInnerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_19FmtTrackedStructIdsB1b_3fmt }>, align 8
@52 = private unnamed_addr constant [18 x i8] c"tracked_struct_ids", align 1
@53 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@54 = private unnamed_addr constant [15 x i8] c"TryFromIntError", align 1
@55 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa3key16DatabaseKeyIndexNtB6_5Debug3fmtBA_ }>, align 8
@56 = private unnamed_addr constant [8 x i8] c"Assigned", align 1
@57 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesNtB6_5Debug3fmtBA_ }>, align 8
@58 = private unnamed_addr constant [7 x i8] c"Derived", align 1
@59 = private unnamed_addr constant [16 x i8] c"DerivedUntracked", align 1
@60 = private unnamed_addr constant [14 x i8] c"OriginAndExtra", align 1
@61 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsC_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginRefNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@62 = private unnamed_addr constant [6 x i8] c"origin", align 1
@63 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs4_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_24QueryRevisionsExtraInnerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@64 = private unnamed_addr constant [5 x i8] c"extra", align 1
@65 = private unnamed_addr constant [5 x i8] c"Input", align 1
@66 = private unnamed_addr constant [6 x i8] c"Output", align 1
@67 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00", ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt }>, align 8
@68 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtNtB8_4sync6atomic6AtomictENtB6_5Debug3fmtCsC8CapfvpQ1_5salsa }>, align 8
@69 = private unnamed_addr constant [20 x i8] c"AtomicIterationStamp", align 1
@70 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtB6_5Debug3fmtB18_ }>, align 8
@71 = private unnamed_addr constant [10 x i8] c"CycleHeads", align 1
@72 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 9095862890740116924 to ptr), ptr inttoptr (i64 5234688151291832568 to ptr) }>, align 8

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindNtB6_13QueryEdgeIterEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(13) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef range(i8 2, 4) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [12 x i8], align 4                ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [1 x i8], align 1                 ; 3 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [56 x i8], align 8                ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 50
  %i.o = load i8, ptr %i.n, align 2, !range !3, !noundef !4
  %.not = icmp eq i8 %i.o, 2
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.p = load i64, ptr %1, align 8, !range !5, !alias.scope !125, !noalias !126, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !noundef !4 ; 6 uses
  %i.u = load ptr, ptr %i.r, align 8, !alias.scope !125, !noalias !126, !nonnull !4, !noundef !4 ; 11 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.x = sub nuw i64 %i.v, %i.w                   ; 2 uses
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = udiv exact i64 %i.x, 12
  br label %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.z = lshr exact i64 %i.x, 3
  br label %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i

.thread.i:                                        ; preds = %bb.i, %.invoke.i, %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.thread113.i

_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.y, %bb.c ], [ %i.z, %bb.d ] ; 22 uses
  %i.ab = icmp samesign ugt i64 %.sroa.0.0.i.i, 4294967295
  %i.ac = shl nuw i64 %.sroa.0.0.i.i, 32
  %.sroa.016.0.insert.insert.i = select i1 %i.ab, i64 513, i64 %i.ac ; 2 uses
  %i.ad = trunc i64 %.sroa.016.0.insert.insert.i to i1
  br i1 %i.ad, label %bb.e, label %bb.f, !prof !6

bb.e:                                             ; preds = %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !127
  store i8 2, ptr %i.h, align 1, !noalias !127
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 67, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27
          to label %.noexc.i unwind label %.thread.i, !noalias !127

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i
  %i.ae = icmp samesign ugt i64 %.sroa.0.0.i.i, 1152921504606846975
  br i1 %i.ae, label %.invoke.i, label %bb.g, !prof !6

.invoke.i:                                        ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ @28, %bb.f ], [ @26, %bb.g ]
  %i.ag = phi ptr [ inttoptr (i64 59 to ptr), %bb.f ], [ inttoptr (i64 83 to ptr), %bb.g ]
  %i.ah = phi ptr [ @29, %bb.f ], [ @27, %bb.g ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.af, ptr noundef nonnull %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #27
          to label %.cont.i unwind label %.thread.i, !noalias !127

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i, 1152921504606846968
  br i1 %.not.i.i.i.i, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = shl nuw nsw i64 %.sroa.0.0.i.i, 3
  %i.aj = add nuw nsw i64 %i.ai, 56               ; 6 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !128
  %i.ak = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef 8) #28, !noalias !128 ; 9 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.j, !prof !6

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aj) #27
          to label %.noexc26.i unwind label %.thread.i, !noalias !127

.noexc26.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ak, i64 56     ; 8 uses
  %i.an = icmp eq ptr %i.u, %i.t                  ; 2 uses
  br i1 %i.q, label %.split.us.i, label %.split.split.i

.split.us.i:                                      ; preds = %bb.j
  br i1 %i.an, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph139.i

.lr.ph139.i:                                      ; preds = %.split.us.i, %bb.l
  %.sroa.16.0.us138.i = phi i64 [ %i.aw, %bb.l ], [ 0, %.split.us.i ] ; 4 uses
  %i.ao = phi ptr [ %i.ap, %bb.l ], [ %i.u, %.split.us.i ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 4 uses
  %.sroa.1160.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %.sroa.1160.4.copyload.us.i = load i32, ptr %.sroa.1160.4..sroa_idx.us.i, align 4, !noalias !129 ; 3 uses
  %.sroa.13.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.13.4.copyload.us.i = load i32, ptr %.sroa.13.4..sroa_idx.us.i, align 4, !noalias !129 ; 3 uses
  %.sroa.8.1.ph.us.i = load i32, ptr %i.ao, align 4, !noalias !129 ; 2 uses
  %i.aq = icmp ugt i32 %.sroa.13.4.copyload.us.i, 4095
  %i.ar = icmp ugt i32 %.sroa.1160.4.copyload.us.i, 1048575
  %or.cond.us.i = or i1 %i.ar, %i.aq
  br i1 %or.cond.us.i, label %.split126.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph139.i
  %exitcond162.not.i = icmp eq i64 %.sroa.16.0.us138.i, %.sroa.0.0.i.i
  br i1 %exitcond162.not.i, label %.split132.us.invoke.i, label %bb.l, !prof !6

bb.l:                                             ; preds = %bb.k
  %i.as = shl nuw i32 %.sroa.13.4.copyload.us.i, 20
  %i.at = or disjoint i32 %i.as, %.sroa.1160.4.copyload.us.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.16.0.us138.i ; 2 uses
  store i32 %.sroa.8.1.ph.us.i, ptr %i.au, align 8, !noalias !127
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %i.at, ptr %i.av, align 4, !noalias !127
  %i.aw = add nuw nsw i64 %.sroa.16.0.us138.i, 1  ; 2 uses
  %i.ax = icmp eq ptr %i.ap, %i.t
  br i1 %i.ax, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph139.i

.split126.us.i:                                   ; preds = %.lr.ph139.i
  %i.ay = icmp samesign ugt i64 %.sroa.0.0.i.i, 768614336404564650
  br i1 %i.ay, label %.split132.us.invoke.i, label %bb.r, !prof !6

.split.split.i:                                   ; preds = %bb.j
  br i1 %i.an, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.split.split.i
  %exitcond.not.i209 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i209, label %.split132.us.invoke.i, label %.lr.ph, !prof !130

.lr.ph:                                           ; preds = %.lr.ph.i.preheader
  %i.az = add i64 %i.v, -8
  %i.ba = sub i64 %i.az, %i.w
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = add nsw i64 %.sroa.0.0.i.i, -1
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 %i.bc) ; 2 uses
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.bd, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck, !prof !130

scalar.ph.preheader.loopexit:                     ; preds = %vector.body
  %4 = shl i64 %n.vec, 3
  %5 = getelementptr i8, ptr %i.u, i64 %4
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.loopexit, %vector.memcheck, %vector.scevcheck, %.lr.ph
  %.ph297 = phi ptr [ %i.u, %vector.memcheck ], [ %i.u, %vector.scevcheck ], [ %i.u, %.lr.ph ], [ %5, %scalar.ph.preheader.loopexit ]
  %.sroa.16.0135.i210.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %scalar.ph.preheader.loopexit ]
  br label %scalar.ph

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.bf = sub i64 %i.v, %i.w
  %i.bg = and i64 %i.bf, 7
  %ident.check.not = icmp eq i64 %i.bg, 0
  br i1 %ident.check.not, label %vector.memcheck, label %scalar.ph.preheader, !prof !131

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = add i64 %i.v, -8
  %i.bi = sub i64 %i.bh, %i.w
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nsw i64 %.sroa.0.0.i.i, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bk)
  %i.bl = shl nuw i64 %umin, 3                    ; 2 uses
  %i.bm = getelementptr i8, ptr %i.ak, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.bm, i64 64
  %i.bn = getelementptr i8, ptr %i.u, i64 %i.bl
  %scevgep225 = getelementptr i8, ptr %i.bn, i64 8
  %bound0 = icmp ult ptr %i.am, %scevgep225
  %bound1 = icmp ult ptr %i.u, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph, !prof !130

vector.ph:                                        ; preds = %vector.memcheck
  %i.bo = and i64 %i.be, 3                        ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 0
  %i.bq = select i1 %i.bp, i64 4, i64 %i.bo
  %n.vec = sub nsw i64 %i.be, %i.bq               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.br
  %i.bs = getelementptr i8, ptr %i.u, i64 %i.br
  %next.gep226 = getelementptr i8, ptr %i.bs, i64 16
  %wide.vec = load <4 x i32>, ptr %next.gep, align 4, !alias.scope !132, !noalias !129
  %wide.vec228 = load <4 x i32>, ptr %next.gep226, align 4, !alias.scope !132, !noalias !129
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <4 x i32> %wide.vec, ptr %i.bt, align 8, !alias.scope !133, !noalias !127
  store <4 x i32> %wide.vec228, ptr %i.bv, align 8, !alias.scope !133, !noalias !127
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %scalar.ph.preheader.loopexit, label %vector.body, !prof !134, !llvm.loop !30

.body.thread110.loopexit.i:                       ; preds = %.lr.ph212
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread110.i

.body.thread110.loopexit.split-lp.i:              ; preds = %._crit_edge, %bb.u
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread110.i

.body.thread110.i:                                ; preds = %.body.thread110.loopexit.split-lp.i, %.body.thread110.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.body.thread110.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.body.thread110.loopexit.split-lp.i ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cc, i64 noundef 8) #28, !noalias !138
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit42.i

.body.i:                                          ; preds = %.split21.us.i.invoke.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cc, i64 noundef 8) #28, !noalias !139
  br label %.thread113.i

.body.thread103.i:                                ; preds = %.split132.us.invoke.i, %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit42.i

.lr.ph.i:                                         ; preds = %scalar.ph
  %exitcond.not.i = icmp eq i64 %i.cm, %.sroa.0.0.i.i
  br i1 %exitcond.not.i, label %.split132.us.invoke.i, label %scalar.ph, !prof !140, !llvm.loop !37

_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %scalar.ph, %bb.l, %.split.split.i, %.split.us.i
  %.us-phi.i = phi i64 [ 0, %.split.us.i ], [ 0, %.split.split.i ], [ %i.aw, %bb.l ], [ %i.cm, %scalar.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !127
  store i64 8, ptr %i.j, align 8, !noalias !127
  %.sroa.7.0..sroa_idx44.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.aj, ptr %.sroa.7.0..sroa_idx44.i, align 8, !noalias !127
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ak, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.am, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  store i64 %.us-phi.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.by = icmp eq i64 %.us-phi.i, %.sroa.0.0.i.i
  br i1 %i.by, label %bb.q, label %bb.m, !prof !7

bb.m:                                             ; preds = %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.16.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.14.0..sroa_idx.i, ptr noundef nonnull @30, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27
          to label %bb.o unwind label %bb.n, !noalias !142

bb.n:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i) #29
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i unwind label %bb.p, !noalias !143

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i: ; preds = %bb.n
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #28, !noalias !144
  br label %common.resume

bb.q:                                             ; preds = %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ak, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !127
  br label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit

bb.r:                                             ; preds = %.split126.us.i
  %.not.i.i.i27.i = icmp samesign ugt i64 %.sroa.0.0.i.i, 768614336404564645
  br i1 %.not.i.i.i27.i, label %.split132.us.invoke.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cb = mul nuw nsw i64 %.sroa.0.0.i.i, 12
  %i.cc = add nuw nsw i64 %i.cb, 56               ; 6 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !145
  %i.cd = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.cc, i64 noundef 8) #28, !noalias !145 ; 8 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.t, label %bb.u, !prof !6

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.cc) #27
          to label %.noexc30.i unwind label %.body.thread103.i, !noalias !127

.noexc30.i:                                       ; preds = %bb.t
  unreachable

.split132.us.invoke.i:                            ; preds = %.lr.ph.i, %bb.k, %.lr.ph.i.preheader, %bb.r, %.split126.us.i
  %i.cf = phi ptr [ @26, %bb.r ], [ @28, %.split126.us.i ], [ @3, %.lr.ph.i.preheader ], [ @3, %bb.k ], [ @3, %.lr.ph.i ]
  %i.cg = phi ptr [ inttoptr (i64 83 to ptr), %bb.r ], [ inttoptr (i64 59 to ptr), %.split126.us.i ], [ inttoptr (i64 117 to ptr), %.lr.ph.i.preheader ], [ inttoptr (i64 117 to ptr), %bb.k ], [ inttoptr (i64 117 to ptr), %.lr.ph.i ]
  %i.ch = phi ptr [ @27, %bb.r ], [ @29, %.split126.us.i ], [ @4, %.lr.ph.i.preheader ], [ @4, %bb.k ], [ @4, %.lr.ph.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ch) #27
          to label %.split132.us.cont.i unwind label %.body.thread103.i, !noalias !127

.split132.us.cont.i:                              ; preds = %.split132.us.invoke.i
  unreachable

scalar.ph:                                        ; preds = %scalar.ph.preheader, %.lr.ph.i
  %i.ci = phi ptr [ %i.cj, %.lr.ph.i ], [ %.ph297, %scalar.ph.preheader ] ; 2 uses
  %.sroa.16.0135.i210 = phi i64 [ %i.cm, %.lr.ph.i ], [ %.sroa.16.0135.i210.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.16.0135.i210
  %i.cl = load <2 x i32>, ptr %i.ci, align 4, !noalias !129
  store <2 x i32> %i.cl, ptr %i.ck, align 8, !noalias !127
  %i.cm = add nuw nsw i64 %.sroa.16.0135.i210, 1  ; 3 uses
  %i.cn = icmp eq ptr %i.cj, %i.t
  br i1 %i.cn, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph.i

bb.u:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 4 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.16.0.us138.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !146
  store ptr %i.am, ptr %i.g, align 8, !noalias !146
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !147
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc32.i unwind label %.body.thread110.loopexit.split-lp.i, !noalias !127

.noexc32.i:                                       ; preds = %bb.u
  %i.cr = load i32, ptr %i.f, align 4, !range !148, !noalias !147, !noundef !4
  %i.cs = trunc nuw i32 %i.cr to i1
  br i1 %i.cs, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.noexc32.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !noalias !147, !noundef !4
  %i.cw = load i32, ptr %i.cu, align 4, !noalias !147, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !147
  %exitcond.not.i.i211 = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %exitcond.not.i.i211, label %._crit_edge, label %.lr.ph212, !prof !130

bb.v:                                             ; preds = %.noexc34.i
  %i.cx = load i32, ptr %i.ct, align 4, !noalias !147, !noundef !4
  %i.cy = load i32, ptr %i.cu, align 4, !noalias !147, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !147
  %exitcond.not.i.i = icmp eq i64 %i.df, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge, label %.lr.ph212, !prof !149

._crit_edge:                                      ; preds = %bb.v, %.lr.ph.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc33.i unwind label %.body.thread110.loopexit.split-lp.i, !noalias !127

.noexc33.i:                                       ; preds = %._crit_edge
  unreachable

.lr.ph212:                                        ; preds = %.lr.ph.i.i, %bb.v
  %i.cz = phi i32 [ %i.cy, %bb.v ], [ %i.cw, %.lr.ph.i.i ] ; 2 uses
  %i.da = phi i32 [ %i.cx, %bb.v ], [ %i.cv, %.lr.ph.i.i ]
  %i.db = phi i64 [ %i.df, %bb.v ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.dc = lshr i32 %i.cz, 20
  %i.dd = and i32 %i.cz, 1048575
  %i.de = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.db ; 3 uses
  store i32 %i.da, ptr %i.de, align 4, !noalias !146
  %.sroa.4.0..sroa_idx.i31.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dd, ptr %.sroa.4.0..sroa_idx.i31.i, align 4, !noalias !146
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.dc, ptr %.sroa.52.0..sroa_idx.i.i, align 4, !noalias !146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !147
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc34.i unwind label %.body.thread110.loopexit.i, !noalias !127

.noexc34.i:                                       ; preds = %.lr.ph212
  %i.df = add nuw nsw i64 %i.db, 1                ; 3 uses
  %i.dg = load i32, ptr %i.f, align 4, !range !148, !noalias !147, !noundef !4
  %i.dh = trunc nuw i32 %i.dg to i1
  br i1 %i.dh, label %bb.v, label %.loopexit.i

.loopexit.i:                                      ; preds = %.noexc34.i, %.noexc32.i
  %.sroa.17.0.i = phi i64 [ 0, %.noexc32.i ], [ %i.df, %.noexc34.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !146
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #28, !noalias !150
  %i.di = icmp ult i64 %.sroa.17.0.i, %.sroa.0.0.i.i
  br i1 %i.di, label %.split.us.i.i, label %.split21.us.i.invoke.i, !prof !7

.split.us.i.i:                                    ; preds = %.loopexit.i
  %i.dj = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %.sroa.17.0.i ; 3 uses
  store i32 %.sroa.8.1.ph.us.i, ptr %i.dj, align 4, !noalias !127
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  store i32 %.sroa.1160.4.copyload.us.i, ptr %.sroa.64.0..sroa_idx5.i, align 4, !noalias !127
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store i32 %.sroa.13.4.copyload.us.i, ptr %.sroa.7.0..sroa_idx7.i, align 4, !noalias !127
  %i.dk = icmp eq ptr %i.ap, %i.t
  %i.dl = add nuw nsw i64 %.sroa.17.0.i, 1        ; 3 uses
  br i1 %i.dk, label %_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i.preheader

.lr.ph24.i.i.preheader:                           ; preds = %.split.us.i.i
end_hunk_0
begin_hunk_1_@_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindNtB6_13QueryEdgeIterEB8_:bb.a

_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i: ; preds = %.lr.ph215, %.split.us.i.i
  %.sroa.17.1.i = phi i64 [ %i.dl, %.split.us.i.i ], [ %i.dq, %.lr.ph215 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !127
  store i64 8, ptr %i.l, align 8, !noalias !127
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.762.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.cd, ptr %.sroa.762.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.963.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.co, ptr %.sroa.963.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.1366.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %.sroa.1366.0..sroa_idx.i, align 8, !noalias !127
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %.sroa.17.1.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.ds = icmp eq i64 %.sroa.17.1.i, %.sroa.0.0.i.i
  br i1 %i.ds, label %bb.ab, label %bb.w, !prof !7

bb.w:                                             ; preds = %_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.17.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.1366.0..sroa_idx.i, ptr noundef nonnull @30, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27
          to label %bb.y unwind label %bb.x, !noalias !153

bb.x:                                             ; preds = %bb.w
  %i.dt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.k) #29
          to label %bb.aa unwind label %bb.z, !noalias !154

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.du = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !154
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cd, i64 noundef %i.cc, i64 noundef 8) #28, !noalias !155
  br label %common.resume

bb.ab:                                            ; preds = %_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cd, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !127
  %i.dv = or disjoint i8 %2, 4
  br label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit

bb.ac:                                            ; preds = %.thread113.i
  %i.dw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !156
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit42.i: ; preds = %.body.thread103.i, %.body.thread110.i
  %.pn107.i = phi { ptr, i32 } [ %i.bx, %.body.thread103.i ], [ %lpad.phi.i, %.body.thread110.i ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.aj, i64 noundef 8) #28, !noalias !157
  br label %.thread113.i

.thread113.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit42.i, %.body.i, %.thread.i
  %.pn.pn86.i = phi { ptr, i32 } [ %i.aa, %.thread.i ], [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %.pn107.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit42.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.m) #29
          to label %common.resume unwind label %bb.ac, !noalias !156

common.resume:                                    ; preds = %.body36.i, %bb.an, %bb.ao, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i, %bb.ay, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i, %bb.aa, %.thread113.i
  %common.resume.op = phi { ptr, i32 } [ %i.bz, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i ], [ %.pn.pn86.i, %.thread113.i ], [ %i.dt, %bb.aa ], [ %lpad.phi.i24, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i ], [ %i.gf, %bb.ao ], [ %i.gc, %.body36.i ], [ %i.gf, %bb.an ], [ %.pn80.i, %bb.ay ], [ %.pn80.i, %bb.az ]
  resume { ptr, i32 } %common.resume.op

_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit: ; preds = %bb.q, %bb.ab
  %.sink189.i = phi i8 [ %i.dv, %bb.ab ], [ %2, %bb.q ]
  %.sink.i = phi ptr [ %i.cd, %bb.ab ], [ %i.ak, %bb.q ]
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.016.0.insert.insert.i, 32
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i32
  %i.dx = or disjoint i8 %.sink189.i, 8
  store i8 %i.dx, ptr %0, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %.sink.i, ptr %i.dy, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.6.0.extract.trunc.i.i, ptr %i.dz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ba

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ea = load i64, ptr %1, align 8, !range !5, !alias.scope !159, !noalias !160, !noundef !4
  %i.eb = trunc nuw i64 %i.ea to i1               ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !159, !noalias !160, !nonnull !4, !noundef !4 ; 6 uses
  %i.ef = load ptr, ptr %i.ec, align 8, !alias.scope !159, !noalias !160, !nonnull !4, !noundef !4 ; 11 uses
  %i.eg = ptrtoint ptr %i.ee to i64               ; 4 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 4 uses
  %i.ei = sub nuw i64 %i.eg, %i.eh                ; 2 uses
  br i1 %i.eb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ej = udiv exact i64 %i.ei, 12
  br label %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2

bb.af:                                            ; preds = %bb.ad
  %i.ek = lshr exact i64 %i.ei, 3
  br label %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2

_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2: ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i.i3 = phi i64 [ %i.ej, %bb.ae ], [ %i.ek, %bb.af ] ; 21 uses
  %i.el = icmp samesign ugt i64 %.sroa.0.0.i.i3, 4294967295
  %i.em = shl nuw i64 %.sroa.0.0.i.i3, 32
  %.sroa.016.0.insert.insert.i4 = select i1 %i.el, i64 513, i64 %i.em ; 2 uses
  %i.en = trunc i64 %.sroa.016.0.insert.insert.i4 to i1
  br i1 %i.en, label %bb.ag, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsC8CapfvpQ1_5salsa.exit.i, !prof !6

bb.ag:                                            ; preds = %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !161
  store i8 2, ptr %i.c, align 1, !noalias !161
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 67, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #27, !noalias !161
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsC8CapfvpQ1_5salsa.exit.i: ; preds = %_RNvXsp_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2
  %i.eo = icmp samesign ugt i64 %.sroa.0.0.i.i3, 1152921504606846975
  br i1 %i.eo, label %bb.ah, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i, !prof !6

bb.ah:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsC8CapfvpQ1_5salsa.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @28, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #27, !noalias !162
  unreachable

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCsC8CapfvpQ1_5salsa.exit.i
  %i.ep = shl nuw nsw i64 %.sroa.0.0.i.i3, 3      ; 6 uses
  %i.eq = icmp eq i64 %.sroa.0.0.i.i3, 0          ; 6 uses
  br i1 %i.eq, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !163
  %i.er = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ep, i64 noundef 4) #28, !noalias !163 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aj, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i, !prof !6

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef %i.ep) #27, !noalias !163
  unreachable

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i: ; preds = %bb.ai, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i
  %.sroa.0.0.i24.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i ], [ %i.er, %bb.ai ] ; 14 uses
  %i.et = icmp eq ptr %i.ef, %i.ee                ; 2 uses
  br i1 %i.eb, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i: ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i
  br i1 %i.et, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i, %bb.al
  %.sroa.16.0.us116.i = phi i64 [ %i.fc, %bb.al ], [ 0, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ] ; 4 uses
  %i.eu = phi ptr [ %i.ev, %bb.al ], [ %i.ef, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 12 ; 4 uses
  %.sroa.1156.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  %.sroa.1156.4.copyload.us.i = load i32, ptr %.sroa.1156.4..sroa_idx.us.i, align 4, !noalias !164 ; 3 uses
  %.sroa.13.4..sroa_idx.us.i18 = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %.sroa.13.4.copyload.us.i19 = load i32, ptr %.sroa.13.4..sroa_idx.us.i18, align 4, !noalias !164 ; 3 uses
  %.sroa.8.1.ph.us.i20 = load i32, ptr %i.eu, align 4, !noalias !164 ; 2 uses
  %i.ew = icmp ugt i32 %.sroa.13.4.copyload.us.i19, 4095
  %i.ex = icmp ugt i32 %.sroa.1156.4.copyload.us.i, 1048575
  %or.cond.us.i21 = or i1 %i.ex, %i.ew
  br i1 %or.cond.us.i21, label %.split.us.i22, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph117.i
  %exitcond140.not.i = icmp eq i64 %.sroa.16.0.us116.i, %.sroa.0.0.i.i3
  br i1 %exitcond140.not.i, label %.split110.us.invoke.i, label %bb.al, !prof !6

bb.al:                                            ; preds = %bb.ak
  %i.ey = shl nuw i32 %.sroa.13.4.copyload.us.i19, 20
  %i.ez = or disjoint i32 %i.ey, %.sroa.1156.4.copyload.us.i
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %.sroa.16.0.us116.i ; 2 uses
  store i32 %.sroa.8.1.ph.us.i20, ptr %i.fa, align 4, !noalias !161
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  store i32 %i.ez, ptr %i.fb, align 4, !noalias !161
  %i.fc = add nuw nsw i64 %.sroa.16.0.us116.i, 1  ; 2 uses
  %i.fd = icmp eq ptr %i.ev, %i.ee
  br i1 %i.fd, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph117.i

.split.us.i22:                                    ; preds = %.lr.ph117.i
  %i.fe = icmp samesign ugt i64 %.sroa.0.0.i.i3, 768614336404564650
  br i1 %i.fe, label %.split110.us.invoke.i, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i, !prof !6

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i: ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i
  br i1 %i.et, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph.i5.preheader

.lr.ph.i5.preheader:                              ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i
  %exitcond.not.i6216 = icmp eq i64 %.sroa.0.0.i.i3, 0
  br i1 %exitcond.not.i6216, label %.split110.us.invoke.i, label %.lr.ph218, !prof !130

.lr.ph218:                                        ; preds = %.lr.ph.i5.preheader
  %i.ff = add i64 %i.eg, -8
  %i.fg = sub i64 %i.ff, %i.eh
  %i.fh = lshr i64 %i.fg, 3
  %i.fi = add nsw i64 %.sroa.0.0.i.i3, -1
  %i.fj = tail call i64 @llvm.umin.i64(i64 %i.fh, i64 %i.fi) ; 2 uses
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check243 = icmp samesign ult i64 %i.fj, 20
  br i1 %min.iters.check243, label %scalar.ph242.preheader, label %vector.scevcheck233, !prof !130

scalar.ph242.preheader.loopexit:                  ; preds = %vector.body246
  %6 = shl i64 %n.vec245, 3
  %7 = getelementptr i8, ptr %i.ef, i64 %6
  br label %scalar.ph242.preheader

scalar.ph242.preheader:                           ; preds = %scalar.ph242.preheader.loopexit, %vector.memcheck235, %vector.scevcheck233, %.lr.ph218
  %.ph = phi ptr [ %i.ef, %vector.memcheck235 ], [ %i.ef, %vector.scevcheck233 ], [ %i.ef, %.lr.ph218 ], [ %7, %scalar.ph242.preheader.loopexit ]
  %.sroa.16.0113.i217.ph = phi i64 [ 0, %vector.memcheck235 ], [ 0, %vector.scevcheck233 ], [ 0, %.lr.ph218 ], [ %n.vec245, %scalar.ph242.preheader.loopexit ]
  br label %scalar.ph242

vector.scevcheck233:                              ; preds = %.lr.ph218
  %i.fl = sub i64 %i.eg, %i.eh
  %i.fm = and i64 %i.fl, 7
  %ident.check234.not = icmp eq i64 %i.fm, 0
  br i1 %ident.check234.not, label %vector.memcheck235, label %scalar.ph242.preheader, !prof !131

vector.memcheck235:                               ; preds = %vector.scevcheck233
  %i.fn = add i64 %i.eg, -8
  %i.fo = sub i64 %i.fn, %i.eh
  %i.fp = lshr i64 %i.fo, 3
  %i.fq = add nsw i64 %.sroa.0.0.i.i3, -1
  %umin236 = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %i.fq)
  %i.fr = shl nuw i64 %umin236, 3
  %i.fs = add i64 %i.fr, 8                        ; 2 uses
  %scevgep237 = getelementptr i8, ptr %.sroa.0.0.i24.i, i64 %i.fs
  %scevgep238 = getelementptr i8, ptr %i.ef, i64 %i.fs
  %bound0239 = icmp ult ptr %.sroa.0.0.i24.i, %scevgep238
  %bound1240 = icmp ult ptr %i.ef, %scevgep237
  %found.conflict241 = and i1 %bound0239, %bound1240
  br i1 %found.conflict241, label %scalar.ph242.preheader, label %vector.ph244, !prof !130

vector.ph244:                                     ; preds = %vector.memcheck235
  %i.ft = and i64 %i.fk, 3                        ; 2 uses
  %i.fu = icmp eq i64 %i.ft, 0
  %i.fv = select i1 %i.fu, i64 4, i64 %i.ft
  %n.vec245 = sub nsw i64 %i.fk, %i.fv            ; 3 uses
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph244
  %index247 = phi i64 [ 0, %vector.ph244 ], [ %index.next258, %vector.body246 ] ; 4 uses
  %i.fw = shl i64 %index247, 3                    ; 2 uses
  %next.gep248 = getelementptr i8, ptr %i.ef, i64 %i.fw
  %i.fx = getelementptr i8, ptr %i.ef, i64 %i.fw
  %next.gep249 = getelementptr i8, ptr %i.fx, i64 16
  %wide.vec250 = load <4 x i32>, ptr %next.gep248, align 4, !alias.scope !165, !noalias !164
  %wide.vec253 = load <4 x i32>, ptr %next.gep249, align 4, !alias.scope !165, !noalias !164
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %index247
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %index247
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <4 x i32> %wide.vec250, ptr %i.fy, align 4, !alias.scope !166, !noalias !161
  store <4 x i32> %wide.vec253, ptr %i.ga, align 4, !alias.scope !166, !noalias !161
  %index.next258 = add nuw i64 %index247, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next258, %n.vec245
  br i1 %i.gb, label %scalar.ph242.preheader.loopexit, label %vector.body246, !prof !134, !llvm.loop !86

.body36.i:                                        ; preds = %bb.au
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i25.i, i64 noundef %i.gg, i64 noundef 4) #28, !noalias !167
  br label %common.resume

.body.thread.i:                                   ; preds = %.split110.us.invoke.i, %bb.ar
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.lr.ph.i5:                                        ; preds = %scalar.ph242
  %exitcond.not.i6 = icmp eq i64 %i.gq, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i6, label %.split110.us.invoke.i, label %scalar.ph242, !prof !140, !llvm.loop !93

_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8: ; preds = %scalar.ph242, %bb.al, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i
  %.us-phi.i9 = phi i64 [ 0, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ], [ 0, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i ], [ %i.fc, %bb.al ], [ %i.gq, %scalar.ph242 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !161
  store i64 4, ptr %i.d, align 8, !noalias !161
  %.sroa.7.0..sroa_idx40.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ep, ptr %.sroa.7.0..sroa_idx40.i, align 8, !noalias !161
  %.sroa.9.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.0.0.i24.i, ptr %.sroa.9.0..sroa_idx.i10, align 8, !noalias !161
  %.sroa.11.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.0.0.i24.i, ptr %.sroa.11.0..sroa_idx.i11, align 8, !noalias !161
  %.sroa.14.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.14.0..sroa_idx.i12, align 8, !noalias !161
  %.sroa.16.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store i64 %.us-phi.i9, ptr %.sroa.16.0..sroa_idx.i13, align 8, !noalias !161
  %i.ge = icmp eq i64 %.us-phi.i9, %.sroa.0.0.i.i3
  br i1 %i.ge, label %_RNvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i, label %bb.am, !prof !7

bb.am:                                            ; preds = %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.16.0..sroa_idx.i13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.14.0..sroa_idx.i12, ptr noundef nonnull @30, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27
          to label %bb.ap unwind label %bb.an, !noalias !168

bb.an:                                            ; preds = %bb.am
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.eq, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i24.i, i64 noundef %i.ep, i64 noundef 4) #28, !noalias !169
  br label %common.resume

bb.ap:                                            ; preds = %bb.am
  unreachable

_RNvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i: ; preds = %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !161
  br label %_RINvMsa_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_.exit

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i: ; preds = %.split.us.i22
  %i.gg = mul nuw nsw i64 %.sroa.0.0.i.i3, 12     ; 5 uses
  br i1 %i.eq, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !170
  %i.gh = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gg, i64 noundef 4) #28, !noalias !170 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %bb.ar, label %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i, !prof !6

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef %i.gg) #27
          to label %.noexc26.i50 unwind label %.body.thread.i, !noalias !161

.noexc26.i50:                                     ; preds = %bb.ar
  unreachable

.split110.us.invoke.i:                            ; preds = %.lr.ph.i5, %bb.ak, %.lr.ph.i5.preheader, %.split.us.i22
  %i.gj = phi ptr [ @28, %.split.us.i22 ], [ @3, %.lr.ph.i5.preheader ], [ @3, %bb.ak ], [ @3, %.lr.ph.i5 ]
  %i.gk = phi ptr [ inttoptr (i64 59 to ptr), %.split.us.i22 ], [ inttoptr (i64 117 to ptr), %.lr.ph.i5.preheader ], [ inttoptr (i64 117 to ptr), %bb.ak ], [ inttoptr (i64 117 to ptr), %.lr.ph.i5 ]
  %i.gl = phi ptr [ @29, %.split.us.i22 ], [ @4, %.lr.ph.i5.preheader ], [ @4, %bb.ak ], [ @4, %.lr.ph.i5 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.gj, ptr noundef nonnull %i.gk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gl) #27
          to label %.split110.us.cont.i unwind label %.body.thread.i, !noalias !161

.split110.us.cont.i:                              ; preds = %.split110.us.invoke.i
  unreachable

scalar.ph242:                                     ; preds = %scalar.ph242.preheader, %.lr.ph.i5
  %i.gm = phi ptr [ %i.gn, %.lr.ph.i5 ], [ %.ph, %scalar.ph242.preheader ] ; 2 uses
  %.sroa.16.0113.i217 = phi i64 [ %i.gq, %.lr.ph.i5 ], [ %.sroa.16.0113.i217.ph, %scalar.ph242.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %.sroa.16.0113.i217
  %i.gp = load <2 x i32>, ptr %i.gm, align 4, !noalias !164
  store <2 x i32> %i.gp, ptr %i.go, align 4, !noalias !161
  %i.gq = add nuw nsw i64 %.sroa.16.0113.i217, 1  ; 3 uses
  %i.gr = icmp eq ptr %i.gn, %i.ee
  br i1 %i.gr, label %_RNvXsn_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph.i5

_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i: ; preds = %bb.aq, %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i
  %.sroa.0.0.i25.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i ], [ %i.gh, %bb.aq ] ; 8 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %.sroa.16.0.us116.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171
  store ptr %.sroa.0.0.i24.i, ptr %i.b, align 8, !noalias !171
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.gs, ptr %i.gt, align 8, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc28.i unwind label %.loopexit.split-lp.i, !noalias !161

.noexc28.i:                                       ; preds = %_RNvMse_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i
  %i.gu = load i32, ptr %i.a, align 4, !range !148, !noalias !172, !noundef !4
  %i.gv = trunc nuw i32 %i.gu to i1
  br i1 %i.gv, label %.lr.ph.i.i44, label %.loopexit97.i

.lr.ph.i.i44:                                     ; preds = %.noexc28.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.gy = load i32, ptr %i.gw, align 4, !noalias !172, !noundef !4
  %i.gz = load i32, ptr %i.gx, align 4, !noalias !172, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  %exitcond.not.i.i45219 = icmp eq i64 %.sroa.0.0.i.i3, 0
  br i1 %exitcond.not.i.i45219, label %._crit_edge221, label %.lr.ph220, !prof !130

bb.as:                                            ; preds = %.noexc30.i49
  %i.ha = load i32, ptr %i.gw, align 4, !noalias !172, !noundef !4
  %i.hb = load i32, ptr %i.gx, align 4, !noalias !172, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  %exitcond.not.i.i45 = icmp eq i64 %i.hi, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i.i45, label %._crit_edge221, label %.lr.ph220, !prof !149

._crit_edge221:                                   ; preds = %bb.as, %.lr.ph.i.i44
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @3, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %.noexc29.i unwind label %.loopexit.split-lp.i, !noalias !161

.noexc29.i:                                       ; preds = %._crit_edge221
  unreachable

.lr.ph220:                                        ; preds = %.lr.ph.i.i44, %bb.as
  %i.hc = phi i32 [ %i.hb, %bb.as ], [ %i.gz, %.lr.ph.i.i44 ] ; 2 uses
  %i.hd = phi i32 [ %i.ha, %bb.as ], [ %i.gy, %.lr.ph.i.i44 ]
  %i.he = phi i64 [ %i.hi, %bb.as ], [ 0, %.lr.ph.i.i44 ] ; 2 uses
  %i.hf = lshr i32 %i.hc, 20
  %i.hg = and i32 %i.hc, 1048575
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %i.he ; 3 uses
  store i32 %i.hd, ptr %i.hh, align 4, !noalias !171
  %.sroa.4.0..sroa_idx.i27.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 %i.hg, ptr %.sroa.4.0..sroa_idx.i27.i, align 4, !noalias !171
  %.sroa.52.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i32 %i.hf, ptr %.sroa.52.0..sroa_idx.i.i46, align 4, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !172
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsC8CapfvpQ1_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.noexc30.i49 unwind label %.loopexit.i47, !noalias !161

.noexc30.i49:                                     ; preds = %.lr.ph220
  %i.hi = add nuw nsw i64 %i.he, 1                ; 3 uses
  %i.hj = load i32, ptr %i.a, align 4, !range !148, !noalias !172, !noundef !4
  %i.hk = trunc nuw i32 %i.hj to i1
  br i1 %i.hk, label %bb.as, label %.loopexit97.i

.loopexit97.i:                                    ; preds = %.noexc30.i49, %.noexc28.i
  %.sroa.17.0.i25 = phi i64 [ 0, %.noexc28.i ], [ %i.hi, %.noexc30.i49 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171
  br i1 %i.eq, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i, label %bb.at

bb.at:                                            ; preds = %.loopexit97.i
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i24.i, i64 noundef %i.ep, i64 noundef 4) #28, !noalias !173
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i: ; preds = %bb.at, %.loopexit97.i
  %i.hl = icmp ult i64 %.sroa.17.0.i25, %.sroa.0.0.i.i3
  br i1 %i.hl, label %.split.us.i.i28, label %.split21.us.i.invoke.i26, !prof !7

.split.us.i.i28:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsC8CapfvpQ1_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i
  %i.hm = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %.sroa.17.0.i25 ; 3 uses
  store i32 %.sroa.8.1.ph.us.i20, ptr %i.hm, align 4, !noalias !161
  %.sroa.64.0..sroa_idx5.i29 = getelementptr inbounds nuw i8, ptr %i.hm, i64 4
  store i32 %.sroa.1156.4.copyload.us.i, ptr %.sroa.64.0..sroa_idx5.i29, align 4, !noalias !161
  %.sroa.7.0..sroa_idx7.i30 = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  store i32 %.sroa.13.4.copyload.us.i19, ptr %.sroa.7.0..sroa_idx7.i30, align 4, !noalias !161
  %i.hn = icmp eq ptr %i.ev, %i.ee
  %i.ho = add nuw nsw i64 %.sroa.17.0.i25, 1      ; 3 uses
  br i1 %i.hn, label %_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i31.preheader

.lr.ph24.i.i31.preheader:                         ; preds = %.split.us.i.i28
  %exitcond28.not.i.i33222 = icmp eq i64 %i.ho, %.sroa.0.0.i.i3
  br i1 %exitcond28.not.i.i33222, label %.split21.us.i.invoke.i26, label %.lr.ph224, !prof !130

.lr.ph24.i.i31:                                   ; preds = %.lr.ph224
  %exitcond28.not.i.i33 = icmp eq i64 %i.ht, %.sroa.0.0.i.i3
  br i1 %exitcond28.not.i.i33, label %.split21.us.i.invoke.i26, label %.lr.ph224, !prof !149

.lr.ph224:                                        ; preds = %.lr.ph24.i.i31.preheader, %.lr.ph24.i.i31
  %i.hp = phi i64 [ %i.ht, %.lr.ph24.i.i31 ], [ %i.ho, %.lr.ph24.i.i31.preheader ] ; 2 uses
  %.sroa.4.0.us23.i.i32223 = phi ptr [ %i.hq, %.lr.ph24.i.i31 ], [ %i.ev, %.lr.ph24.i.i31.preheader ] ; 3 uses
  %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i34 = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i32223, i64 8
  %.sroa.11.4.copyload7.us.i.i35 = load i32, ptr %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i34, align 4, !noalias !174
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i32223, i64 12 ; 2 uses
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %i.hp ; 2 uses
  %i.hs = load <2 x i32>, ptr %.sroa.4.0.us23.i.i32223, align 4, !noalias !174
  store <2 x i32> %i.hs, ptr %i.hr, align 4, !noalias !175
  %.sroa.510.0..sroa_idx.us.i.i40 = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i32 %.sroa.11.4.copyload7.us.i.i35, ptr %.sroa.510.0..sroa_idx.us.i.i40, align 4, !noalias !175
  %i.ht = add nuw nsw i64 %i.hp, 1                ; 3 uses
  %i.hu = icmp eq ptr %i.hq, %i.ee
  br i1 %i.hu, label %_RINvMsg_NtCsC8CapfvpQ1_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i31

end_hunk_1
