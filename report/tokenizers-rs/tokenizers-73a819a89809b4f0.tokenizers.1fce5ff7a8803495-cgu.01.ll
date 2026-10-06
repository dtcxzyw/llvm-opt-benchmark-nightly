Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.01?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtBG_5TokenEEEEBI_:bb.a
  br label %.body

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit2.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.e ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit2.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #27
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit3.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenEEEB1x_(ptr noalias noundef align 8 dereferenceable(24) %i.j)
  ret void

bb.f:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBC_EECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.b) #27
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEB1R_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_INtNtB6_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE7reserveB1E_.exit.i, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #23
          to label %.noexc3 unwind label %bb.m

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_INtNtB6_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE7reserveB1E_.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_INtNtB6_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE7reserveB1E_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.q, align 8, !alias.scope !576, !noalias !577, !nonnull !6, !noundef !6 ; 2 uses
  %i.u = load i64, ptr %i.p, align 8, !alias.scope !576, !noalias !577, !noundef !6 ; 4 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  br label %bb.c

._crit_edge.i:                                    ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_INtNtB6_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE7reserveB1E_.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.g, label %._crit_edge.thread.i

bb.c:                                             ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i, %.lr.ph.i
  %.sroa.0.033.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.an, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i ] ; 4 uses
  %.sroa.03.032.i = phi i64 [ 1, %.lr.ph.i ], [ %i.am, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i ]
  %storemerge31.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !580
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %i.u, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc14.i unwind label %.loopexit.i, !noalias !575

.noexc14.i:                                       ; preds = %bb.c
  %i.w = load i64, ptr %i.a, align 8, !range !13, !noalias !580, !noundef !6
  %i.x = trunc nuw i64 %i.w to i1
  %i.y = load i64, ptr %i.r, align 8, !range !23, !noalias !580, !noundef !6 ; 5 uses
  br i1 %i.x, label %bb.d, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !7

bb.d:                                             ; preds = %.noexc14.i
  %i.z = load i64, ptr %i.s, align 8, !noalias !580
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.z) #23
          to label %.noexc15.i unwind label %.loopexit.split-lp.i, !noalias !575

.noexc15.i:                                       ; preds = %bb.d
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc14.i
  %i.aa = load ptr, ptr %i.s, align 8, !noalias !580, !nonnull !6, !noundef !6 ; 2 uses
  %i.ab = icmp ule i64 %i.u, %i.y
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !580
  %i.ac = icmp eq i64 %i.y, 0
  br i1 %i.ac, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i
  %.sroa.013.023.i.i.i = phi ptr [ %i.aj, %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i ], [ %i.t, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 3 uses
  %.sroa.7.022.i.i.i = phi i64 [ %i.ai, %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ] ; 2 uses
  %.sroa.10.021.i.i.i = phi i64 [ %i.ad, %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i ], [ %i.y, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  %i.ad = add i64 %.sroa.10.021.i.i.i, -1         ; 2 uses
  %i.ae = icmp eq ptr %.sroa.013.023.i.i.i, %i.v
  br i1 %i.ae, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.val12.i.i.i = load ptr, ptr %.sroa.013.023.i.i.i, align 8, !alias.scope !579, !noalias !581, !nonnull !6, !noundef !6 ; 3 uses
  %.val.i.i.i.i.i = load i64, ptr %.val12.i.i.i, align 8, !noalias !582, !noundef !6 ; 2 uses
  %i.af = icmp ne i64 %.val.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %.val.i.i.i.i.i, 1              ; 2 uses
  store i64 %i.ag, ptr %.val12.i.i.i, align 8, !noalias !582
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i, !prof !7

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i: ; preds = %bb.e
  %i.ai = add nuw nsw i64 %.sroa.7.022.i.i.i, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.023.i.i.i, i64 8
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.sroa.7.022.i.i.i
  store ptr %.val12.i.i.i, ptr %i.ak, align 8, !noalias !582
  %i.al = icmp eq i64 %i.ad, 0
  br i1 %i.al, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !574, !noalias !575
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE11extend_withB1F_.exit unwind label %bb.j

._crit_edge.thread.i:                             ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i, %._crit_edge.i
  %.sroa.0.0.lcssa50.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.an, %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa50.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !574, !noalias !575
  br label %_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE11extend_withB1F_.exit

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEENtNtBX_5clone5Clone5cloneB1B_.exit.i: ; preds = %_RNvXsx_NtCscdodAO9FK5_5alloc2rcINtB5_2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEENtNtBH_5clone5Clone5cloneB1l_.exit.i.i.i, %.lr.ph.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %i.am = add nuw i64 %.sroa.03.032.i, 1          ; 2 uses
  store i64 %i.y, ptr %.sroa.0.033.i, align 8, !noalias !575
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !575
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !575
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 24 ; 2 uses
  %i.ao = add nuw i64 %storemerge31.i, 1
  %exitcond.not.i = icmp eq i64 %i.am, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %bb.c

bb.h:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.i:                                             ; preds = %.loopexit.i, %.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  store i64 %storemerge31.i, ptr %i.n, align 8, !alias.scope !574, !noalias !575
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #27
          to label %.body unwind label %bb.h

bb.j:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %lpad.phi.i, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_INtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEEB1S_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %bb.l unwind label %bb.k

_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_INtNtB7_2rc2RcINtNtCs4NRVxsYgnAr_4core4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEE11extend_withB1F_.exit: ; preds = %._crit_edge.thread.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.m, %.body
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.l:                                             ; preds = %.body, %bb.m
  %.pn7 = phi { ptr, i32 } [ %i.as, %bb.m ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn7

bb.m:                                             ; preds = %bb.b, %bb.a
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtBG_2rc2RcINtNtB4_4cell7RefCellNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7lattice4NodeEEEEB1O_(ptr noalias noundef align 8 dereferenceable(24) %1) #27
          to label %bb.l unwind label %bb.k
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtB5_3VecjENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !23, !noundef !6 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_jEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !7

bb.b:                                             ; preds = %.noexc
  %i.j = load i64, ptr %i.i, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #23
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.b
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_jEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  %i.o = icmp ugt i64 %2, 1
  br i1 %i.o, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_jEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.val14.i = load ptr, ptr %i.p, align 8, !alias.scope !592, !noalias !591, !nonnull !6, !noundef !6
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !592, !noalias !591, !noundef !6 ; 5 uses
  %.not.i.i.i = icmp eq i64 %.val15.i, 0
  %i.t = shl nuw nsw i64 %.val15.i, 3
  br i1 %.not.i.i.i, label %.lr.ph.i.split.us, label %.lr.ph.i.split

.lr.ph.i.split.us:                                ; preds = %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us
  %.sroa.0.032.i.us = phi ptr [ %i.z, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i.us = phi i64 [ %i.y, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us ], [ 1, %.lr.ph.i ]
  %storemerge30.i.us = phi i64 [ %i.aa, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc16.i.us unwind label %.loopexit.i.split.us, !noalias !592

.noexc16.i.us:                                    ; preds = %.lr.ph.i.split.us
  %i.u = load i64, ptr %i.a, align 8, !range !13, !noalias !593, !noundef !6
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = load i64, ptr %i.r, align 8, !range !23, !noalias !593, !noundef !6 ; 2 uses
  br i1 %i.v, label %.split.us, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us, !prof !7

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us: ; preds = %.noexc16.i.us
  %i.x = load ptr, ptr %i.s, align 8, !noalias !593, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  %i.y = add nuw i64 %.sroa.03.031.i.us, 1        ; 2 uses
  store i64 %i.w, ptr %.sroa.0.032.i.us, align 8, !noalias !592
  %.sroa.4.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !592
  %.sroa.5.0..sroa.0.0.sroa_idx.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 16
  store i64 0, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i.us, align 8, !noalias !592
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i.us, i64 24 ; 2 uses
  %i.aa = add nuw i64 %storemerge30.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %i.y, %2
  br i1 %exitcond.not.i.us, label %._crit_edge.thread.i, label %.lr.ph.i.split.us

.loopexit.i.split.us:                             ; preds = %.lr.ph.i.split.us
  %lpad.loopexit.i.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_jEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i
  %.sroa.0.032.i = phi ptr [ %i.ai, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ], [ %i.k, %.lr.ph.i ] ; 4 uses
  %.sroa.03.031.i = phi i64 [ %i.ah, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ], [ 1, %.lr.ph.i ]
  %storemerge30.i = phi i64 [ %i.aj, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ], [ 0, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !593
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) %.val15.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %.noexc16.i unwind label %.loopexit.i.split, !noalias !592

.noexc16.i:                                       ; preds = %.lr.ph.i.split
  %i.ab = load i64, ptr %i.a, align 8, !range !13, !noalias !593, !noundef !6
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.r, align 8, !range !23, !noalias !593, !noundef !6 ; 3 uses
  br i1 %i.ac, label %.split.us, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, !prof !7

.split.us:                                        ; preds = %.noexc16.i, %.noexc16.i.us
  %.us-phi16 = phi i64 [ %i.w, %.noexc16.i.us ], [ %i.ad, %.noexc16.i ]
  %.us-phi17 = phi i64 [ %storemerge30.i.us, %.noexc16.i.us ], [ %storemerge30.i, %.noexc16.i ]
  %i.ae = load i64, ptr %i.s, align 8, !noalias !593
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %.us-phi16, i64 %i.ae) #23
          to label %.noexc17.i unwind label %.loopexit.split-lp.i, !noalias !592

.noexc17.i:                                       ; preds = %.split.us
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i: ; preds = %.noexc16.i
  %i.af = load ptr, ptr %i.s, align 8, !noalias !593, !nonnull !6, !noundef !6 ; 2 uses
  %i.ag = icmp ule i64 %.val15.i, %i.ad
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !593
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull readonly align 8 %.val14.i, i64 %i.t, i1 false), !noalias !594
  %i.ah = add nuw i64 %.sroa.03.031.i, 1          ; 2 uses
  store i64 %i.ad, ptr %.sroa.0.032.i, align 8, !noalias !592
  %.sroa.4.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa.0.0.sroa_idx.i, align 8, !noalias !592
  %.sroa.5.0..sroa.0.0.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 16
  store i64 %.val15.i, ptr %.sroa.5.0..sroa.0.0.sroa_idx.i, align 8, !noalias !592
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.032.i, i64 24 ; 2 uses
  %i.aj = add nuw i64 %storemerge30.i, 1
  %exitcond.not.i = icmp eq i64 %i.ah, %2
  br i1 %exitcond.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.split

bb.c:                                             ; preds = %._crit_edge.i
  store i64 0, ptr %i.n, align 8, !alias.scope !591, !noalias !592
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEE11extend_withCs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.e

._crit_edge.thread.i:                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us, %._crit_edge.i
  %.sroa.0.0.lcssa46.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.z, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us ], [ %i.ai, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.lcssa46.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 %2, ptr %i.n, align 8, !alias.scope !591, !noalias !592
  br label %_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEE11extend_withCs2JiOgHzbbc7_10tokenizers.exit

.loopexit.i.split:                                ; preds = %.lr.ph.i.split
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

.loopexit.split-lp.i:                             ; preds = %.split.us
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i

bb.d:                                             ; preds = %.loopexit.i
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

.loopexit.i:                                      ; preds = %.loopexit.i.split, %.loopexit.i.split.us, %.loopexit.split-lp.i
  %storemerge30.i12 = phi i64 [ %.us-phi17, %.loopexit.split-lp.i ], [ %storemerge30.i, %.loopexit.i.split ], [ %storemerge30.i.us, %.loopexit.i.split.us ]
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i.split ], [ %lpad.loopexit.i.us, %.loopexit.i.split.us ]
  store i64 %storemerge30.i12, ptr %i.n, align 8, !alias.scope !591, !noalias !592
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.e ], [ %lpad.phi.i, %.loopexit.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_jEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #27
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f

_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_jEE11extend_withCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %._crit_edge.thread.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.g, %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.g, %.body
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.an, %bb.g ]
  resume { ptr, i32 } %.pn8

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsgbNVBrIJ05E_5rayon4iter13from_par_iterINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEINtB5_20FromParallelIteratorB1h_E13from_par_iterINtNtB5_8flat_map7FlatMapINtNtNtB7_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3o_10BpeTrainer8do_trains_0EEB3u_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsgbNVBrIJ05E_5rayon4iter13from_par_iter16collect_extendedINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEINtNtB4_8flat_map7FlatMapINtNtNtB6_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB2T_10BpeTrainer8do_trains_0EEB2Z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBO_6string6StringENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtB3s_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1j_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEEB4E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1j_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEEB4H_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB1j_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperEEB3z_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1j_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperEEB4E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB1j_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsr_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1Z_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1Z_11Deserialize11deserialize10VecVisitorNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperEEB4E_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtB8_11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB37_4read7StrReadEEB1l_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB1j_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB1j_11Deserialize11deserialize10VecVisitorNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB40_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBO_6string6StringdEENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitorTNtNtB3s_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBO_6string6StringdEENtB8_11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtBW_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtBW_11Deserialize11deserialize10VecVisitorTNtNtB2l_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsh_NtNtCsboAIIHEtPkY_10serde_core2de5implsINtNtCscdodAO9FK5_5alloc3vec3VecmENtB8_11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_seqINtNvXsh_NtB22_5implsINtNtCscdodAO9FK5_5alloc3vec3VecpENtB22_11Deserialize11deserialize10VecVisitormEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsgbNVBrIJ05E_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecTTTmmElEjEEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_8flat_map7FlatMapINtNtNtBa_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB3a_10BpeTrainer8do_trains_0EEB3g_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  call void @_RINvXs0_NtNtCsgbNVBrIJ05E_5rayon4iter8flat_mapINtB6_7FlatMapINtNtNtBa_11collections8hash_set4IterjENCNvMs4_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe7trainerNtB1H_10BpeTrainer8do_trains_0ENtB8_16ParallelIterator15drive_unindexedNtNtB8_6extend15ListVecConsumerEB1N_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.i, null
  br i1 %.not.i.i23, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit.thread30, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.j = add i64 %i.g, -1                         ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val.i32 = load i64, ptr %i.k, align 8, !noalias !603, !noundef !6 ; 3 uses
  %i.l = icmp ult i64 %.val.i32, 384307168202282326
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp eq i64 %i.j, 0
  br i1 %i.m, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit.thread30: ; preds = %.lr.ph.i.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTTTmmElEjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.p = phi i64 [ %i.x, %.lr.ph.ithread-pre-split ], [ %.val.i32, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.q = phi i64 [ %i.u, %.lr.ph.ithread-pre-split ], [ %i.j, %.lr.ph.ithread-pre-split.preheader ]
  %i.r = phi ptr [ %i.t, %.lr.ph.ithread-pre-split ], [ %i.i, %.lr.ph.ithread-pre-split.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTTTmmElEjEEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldjNCINvNtNtB1w_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB1u_5accumjNtB3v_3Sum3sumINtB2w_3MapB3_B36_EE0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.u = add i64 %i.q, -1                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 16
  %.val.i = load i64, ptr %i.v, align 8, !noalias !603, !noundef !6 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceEINtNtBb_6option6OptionNtNtNtB1A_9tokenizer8encoding8EncodingENCNvMsh_B1w_NtB1w_18TemplateProcessing14apply_template0ENtNtNtB9_6traits8iterator8Iterator4nextB1A_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !2647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.el = getelementptr inbounds i8, ptr %i.dy, i64 -40
  %i.em = load ptr, ptr %i.el, align 8, !alias.scope !2660, !noalias !2661, !nonnull !6, !noundef !6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2663
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2664
  %i.en = load i64, ptr %i.g, align 8, !range !13, !noalias !2663, !noundef !6
  %i.eo = trunc nuw i64 %i.en to i1
  %i.ep = load i64, ptr %i.ab, align 8, !range !23, !noalias !2663, !noundef !6 ; 3 uses
  br i1 %i.eo, label %bb.q, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i, !prof !7

bb.q:                                             ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i
  %i.eq = load i64, ptr %i.ac, align 8, !noalias !2663
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ep, i64 %i.eq) #23, !noalias !2664
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_EB1v_.exit.i.i.i.i
  %i.er = load ptr, ptr %i.ac, align 8, !noalias !2663, !nonnull !6, !noundef !6 ; 2 uses
  %i.es = icmp ule i64 %i.ej, %i.ep
  tail call void @llvm.assume(i1 %i.es)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2663
  store i64 %i.ep, ptr %i.s, align 8, !alias.scope !2665, !noalias !2666
  store ptr %i.er, ptr %i.ad, align 8, !alias.scope !2665, !noalias !2666
  store i64 0, ptr %i.ae, align 8, !alias.scope !2665, !noalias !2666
  %.not.i.i44.i.i.i.i = icmp eq i64 %i.ej, 0      ; 5 uses
  br i1 %.not.i.i44.i.i.i.i, label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  %i.et = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.er, ptr nonnull readonly align 4 %i.em, i64 %i.et, i1 false), !noalias !2667
  store i64 %i.ej, ptr %i.ae, align 8, !alias.scope !2665, !noalias !2666
  br label %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.r, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2647
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !alias.scope !2643, !noalias !2644 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2669
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i unwind label %.loopexit.i, !noalias !2644

.noexc.i.i.i.i:                                   ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %i.ew = load i64, ptr %i.f, align 8, !range !13, !noalias !2669, !noundef !6
  %i.ex = trunc nuw i64 %i.ew to i1
  %i.ey = load i64, ptr %i.af, align 8, !range !23, !noalias !2669, !noundef !6 ; 3 uses
  br i1 %i.ex, label %bb.s, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i, !prof !7

bb.s:                                             ; preds = %.noexc.i.i.i.i
  %i.ez = load i64, ptr %i.ag, align 8, !noalias !2669
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ey, i64 %i.ez) #23
          to label %.noexc45.i.i.i.i unwind label %.loopexit.split-lp.i, !noalias !2644

.noexc45.i.i.i.i:                                 ; preds = %bb.s
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i
  %i.fa = load ptr, ptr %i.ag, align 8, !noalias !2669, !nonnull !6, !noundef !6 ; 3 uses
  %i.fb = icmp ule i64 %i.ej, %i.ey
  tail call void @llvm.assume(i1 %i.fb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2669
  br i1 %.not.i.i44.i.i.i.i, label %.loopexit103.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  %min.iters.check268 = icmp samesign ult i64 %i.ej, 8
  br i1 %min.iters.check268, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283, label %vector.ph269

vector.ph269:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec270 = and i64 %i.ej, 2305843009213693944  ; 3 uses
  %i.fc = and i64 %i.ej, 7
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body273

vector.body273:                                   ; preds = %vector.body273, %vector.ph269
  %index274 = phi i64 [ 0, %vector.ph269 ], [ %index.next275, %vector.body273 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %index274 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  store <4 x i32> %broadcast.splat272, ptr %i.fd, align 4, !noalias !2670
  store <4 x i32> %broadcast.splat272, ptr %i.fe, align 4, !noalias !2670
  %index.next275 = add nuw i64 %index274, 8       ; 2 uses
  %i.ff = icmp eq i64 %index.next275, %n.vec270
  br i1 %i.ff, label %middle.block276, label %vector.body273, !llvm.loop !2566

middle.block276:                                  ; preds = %vector.body273
  %cmp.n277 = icmp eq i64 %i.ej, %n.vec270
  br i1 %cmp.n277, label %.loopexit103.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283

.lr.ph.i.i.i.i.i.i.i.i.i.preheader283:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block276
  %.ph284 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec270, %middle.block276 ]
  %.sroa.0.014.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.fc, %middle.block276 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.fg = phi i64 [ %i.fj, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.ph284, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283 ] ; 2 uses
  %.sroa.0.014.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fh, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader283 ]
  %i.fh = add nsw i64 %.sroa.0.014.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.fg
  store i32 %i.ev, ptr %i.fi, align 4, !noalias !2670
  %i.fj = add nuw nsw i64 %i.fg, 1
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit103.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !2567

select.unfold.i.i.i.i:                            ; preds = %bb.l, %._crit_edge.i.i43.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !2644
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit48.i.i.i.i: ; preds = %bb.t, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.pn.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.i.i.i.i, %bb.t ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.af, !noalias !2644

.loopexit.i:                                      ; preds = %_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit48.i.i.i.i

.loopexit.split-lp.i:                             ; preds = %bb.s
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit48.i.i.i.i

.loopexit103.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block276, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  store i64 %i.ey, ptr %i.r, align 8, !alias.scope !2668, !noalias !2647
  store ptr %i.fa, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2668, !noalias !2647
  store i64 %i.ej, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2668, !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2647
  %i.fk = getelementptr inbounds i8, ptr %i.dy, i64 -24
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fk)
          to label %bb.v unwind label %bb.u, !noalias !2644

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %bb.u
  %.pn.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i ], [ %i.fl, %bb.u ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit48.i.i.i.i unwind label %bb.af, !noalias !2644

bb.u:                                             ; preds = %.loopexit103.i.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %.loopexit103.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2672
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %.noexc51.i.i.i.i unwind label %.loopexit19.i, !noalias !2644

.noexc51.i.i.i.i:                                 ; preds = %bb.v
  %i.fm = load i64, ptr %i.e, align 8, !range !13, !noalias !2672, !noundef !6
  %i.fn = trunc nuw i64 %i.fm to i1
  %i.fo = load i64, ptr %i.ah, align 8, !range !23, !noalias !2672, !noundef !6 ; 3 uses
  br i1 %i.fn, label %bb.w, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i, !prof !7

bb.w:                                             ; preds = %.noexc51.i.i.i.i
  %i.fp = load i64, ptr %i.ai, align 8, !noalias !2672
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fo, i64 %i.fp) #23
          to label %.noexc52.i.i.i.i unwind label %.loopexit.split-lp20.i, !noalias !2644

.noexc52.i.i.i.i:                                 ; preds = %bb.w
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i: ; preds = %.noexc51.i.i.i.i
  %i.fq = load ptr, ptr %i.ai, align 8, !noalias !2672, !nonnull !6, !noundef !6 ; 7 uses
  %i.fr = icmp ule i64 %i.ej, %i.fo
  tail call void @llvm.assume(i1 %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2672
  br i1 %.not.i.i44.i.i.i.i, label %bb.x, label %.lr.ph.i.i.i.i.i50.i.i.i.i

.lr.ph.i.i.i.i.i50.i.i.i.i:                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  %i.fs = add nsw i64 %i.ej, -1                   ; 3 uses
  %.not9.i.i1.i.i.i.i.i.i.i.i = icmp eq i64 %i.fs, 0
  br i1 %.not9.i.i1.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.i.i.i.i.i50.i.i.i.i
  %i.ft = add nsw i64 %i.ej, -2
  %xtraiter = and i64 %i.fs, 3                    ; 3 uses
  %i.fu = icmp ult i64 %i.ft, 3
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.preheader.new:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.fs, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new
  %i.fv = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %i.gd, %.lr.ph.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fv
  store i32 0, ptr %i.fw, align 4, !noalias !2673
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fv
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i32 0, ptr %i.fy, align 4, !noalias !2673
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fv
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store i32 0, ptr %i.ga, align 4, !noalias !2673
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.fv
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  store i32 0, ptr %i.gc, align 4, !noalias !2673
  %i.gd = add nuw i64 %i.fv, 4                    ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.epil.preheader:            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.epil.init344 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.gd, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod346 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod346)
  br label %.lr.ph.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.epil:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader
  %i.ge = phi i64 [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ %.epil.init344, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.ge
  store i32 0, ptr %i.gf, align 4, !noalias !2673
  %i.gg = add nuw i64 %i.ge, 1                    ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.epil, !llvm.loop !2585

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i50.i.i.i.i
  %.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i50.i.i.i.i ], [ %i.gd, %._crit_edge.i.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.gg, %.lr.ph.i.i.i.i.i.i.i.i.epil ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.lcssa.i.i.i.i.i.i.i.i
  store i32 0, ptr %i.gh, align 4, !noalias !2674
  %i.gi = add i64 %.lcssa.i.i.i.i.i.i.i.i, 1
  br label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, %.loopexit.split-lp20.i, %.loopexit19.i
  %.pn.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i ], [ %lpad.loopexit21.i, %.loopexit19.i ], [ %lpad.loopexit.split-lp22.i, %.loopexit.split-lp20.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.q) #27
          to label %bb.t unwind label %bb.af, !noalias !2644

.loopexit19.i:                                    ; preds = %bb.v
  %lpad.loopexit21.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

.loopexit.split-lp20.i:                           ; preds = %bb.w
  %lpad.loopexit.split-lp22.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  %.val7.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i ]
  store i64 %i.fo, ptr %i.p, align 8, !alias.scope !2671, !noalias !2675
  store ptr %i.fq, ptr %.sroa.4.0..sroa_idx7.i.i.i.i.i, align 8, !alias.scope !2671, !noalias !2675
  store i64 %.val7.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !2671, !noalias !2675
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2677
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ej, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc59.i.i.i.i unwind label %.loopexit24.i, !noalias !2644

.noexc59.i.i.i.i:                                 ; preds = %bb.x
  %i.gj = load i64, ptr %i.d, align 8, !range !13, !noalias !2677, !noundef !6
  %i.gk = trunc nuw i64 %i.gj to i1
  %i.gl = load i64, ptr %i.aj, align 8, !range !23, !noalias !2677, !noundef !6 ; 4 uses
  br i1 %i.gk, label %bb.y, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i, !prof !7

bb.y:                                             ; preds = %.noexc59.i.i.i.i
  %i.gm = load i64, ptr %i.ak, align 8, !noalias !2677
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gl, i64 %i.gm) #23
          to label %.noexc60.i.i.i.i unwind label %.loopexit.split-lp25.i, !noalias !2644

.noexc60.i.i.i.i:                                 ; preds = %bb.y
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i: ; preds = %.noexc59.i.i.i.i
  %i.gn = load ptr, ptr %i.ak, align 8, !noalias !2677, !nonnull !6, !noundef !6 ; 3 uses
  %i.go = icmp ule i64 %i.ej, %i.gl
  tail call void @llvm.assume(i1 %i.go)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2677
  br i1 %.not.i.i44.i.i.i.i, label %bb.aa, label %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i

.lr.ph.i.i.i.i.i56.preheader.i.i.i.i:             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  %i.gp = shl nuw i64 %i.ej, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gn, i8 0, i64 %i.gp, i1 false), !noalias !2678
  store i64 %i.gl, ptr %i.o, align 8, !alias.scope !2676, !noalias !2679
  store ptr %i.gn, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i, align 8, !alias.scope !2676, !noalias !2679
  store i64 %i.ej, ptr %.sroa.6.0..sroa_idx.i58.i.i.i.i, align 8, !alias.scope !2676, !noalias !2679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2680
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc68.i.i.i.i unwind label %.loopexit29.i, !noalias !2644

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit89.i.i.i.i, %.loopexit.split-lp25.i, %.loopexit24.i
  %.pn.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit89.i.i.i.i ], [ %lpad.loopexit26.i, %.loopexit24.i ], [ %lpad.loopexit.split-lp27.i, %.loopexit.split-lp25.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.af, !noalias !2644

.loopexit24.i:                                    ; preds = %bb.x
  %lpad.loopexit26.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

.loopexit.split-lp25.i:                           ; preds = %bb.y
  %lpad.loopexit.split-lp27.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

.noexc68.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i
  %i.gq = load i64, ptr %i.c, align 8, !range !13, !noalias !2680, !noundef !6
  %i.gr = trunc nuw i64 %i.gq to i1
  %i.gs = load i64, ptr %i.al, align 8, !range !23, !noalias !2680, !noundef !6 ; 4 uses
  br i1 %i.gr, label %bb.z, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i, !prof !7

bb.z:                                             ; preds = %.noexc68.i.i.i.i
  %i.gt = load i64, ptr %i.am, align 8, !noalias !2680
  br label %.invoke.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i: ; preds = %.noexc68.i.i.i.i
  %i.gu = load ptr, ptr %i.am, align 8, !noalias !2680, !nonnull !6, !noundef !6 ; 4 uses
  %i.gv = icmp ule i64 %i.ej, %i.gs
  tail call void @llvm.assume(i1 %i.gv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2680
  %min.iters.check257 = icmp samesign ult i64 %i.ej, 8
  br i1 %min.iters.check257, label %.lr.ph.i.i.i.i.i63.i.i.i.i.preheader, label %vector.ph258

vector.ph258:                                     ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i
  %n.vec259 = and i64 %i.ej, 2305843009213693944  ; 3 uses
  %i.gw = and i64 %i.ej, 7
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph258
  %index261 = phi i64 [ 0, %vector.ph258 ], [ %index.next262, %vector.body260 ] ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %index261 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <4 x i32> splat (i32 1), ptr %i.gx, align 4, !noalias !2681
  store <4 x i32> splat (i32 1), ptr %i.gy, align 4, !noalias !2681
  %index.next262 = add nuw i64 %index261, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next262, %n.vec259
  br i1 %i.gz, label %middle.block263, label %vector.body260, !llvm.loop !2615

middle.block263:                                  ; preds = %vector.body260
  %cmp.n264 = icmp eq i64 %i.ej, %n.vec259
  br i1 %cmp.n264, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i63.i.i.i.i.preheader

.lr.ph.i.i.i.i.i63.i.i.i.i.preheader:             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i, %middle.block263
  %.ph282 = phi i64 [ 0, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i ], [ %n.vec259, %middle.block263 ]
  %.sroa.0.014.i.i.i.i.i64.i.i.i.i.ph = phi i64 [ %i.ej, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i62.i.i.i.i ], [ %i.gw, %middle.block263 ]
  br label %.lr.ph.i.i.i.i.i63.i.i.i.i

.lr.ph.i.i.i.i.i63.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i63.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i63.i.i.i.i
  %i.ha = phi i64 [ %i.hd, %.lr.ph.i.i.i.i.i63.i.i.i.i ], [ %.ph282, %.lr.ph.i.i.i.i.i63.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.014.i.i.i.i.i64.i.i.i.i = phi i64 [ %i.hb, %.lr.ph.i.i.i.i.i63.i.i.i.i ], [ %.sroa.0.014.i.i.i.i.i64.i.i.i.i.ph, %.lr.ph.i.i.i.i.i63.i.i.i.i.preheader ]
  %i.hb = add nsw i64 %.sroa.0.014.i.i.i.i.i64.i.i.i.i, -1 ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.ha
  store i32 1, ptr %i.hc, align 4, !noalias !2681
  %i.hd = add nuw nsw i64 %i.ha, 1
  %.not.i.i.i.i.i.i65.i.i.i.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i65.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i63.i.i.i.i, !llvm.loop !2616

bb.aa:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i.i.i
  store i64 %i.gl, ptr %i.o, align 8, !alias.scope !2676, !noalias !2679
  store ptr %i.gn, ptr %.sroa.4.0..sroa_idx6.i.i.i.i.i, align 8, !alias.scope !2676, !noalias !2679
  store i64 0, ptr %.sroa.6.0..sroa_idx.i58.i.i.i.i, align 8, !alias.scope !2676, !noalias !2679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2682
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc74.i.i.i.i unwind label %.loopexit29.i, !noalias !2644

.noexc74.i.i.i.i:                                 ; preds = %bb.aa
  %i.he = load i64, ptr %i.b, align 8, !range !13, !noalias !2682, !noundef !6
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = load i64, ptr %i.an, align 8, !range !23, !noalias !2682, !noundef !6 ; 2 uses
  br i1 %i.hf, label %bb.ab, label %bb.ac, !prof !7

bb.ab:                                            ; preds = %.noexc74.i.i.i.i
  %i.hh = load i64, ptr %i.ao, align 8, !noalias !2682
  br label %.invoke.i.i.i.i

.invoke.i.i.i.i:                                  ; preds = %bb.ab, %bb.z
  %i.hi = phi i64 [ %i.hg, %bb.ab ], [ %i.gs, %bb.z ]
  %i.hj = phi i64 [ %i.hh, %bb.ab ], [ %i.gt, %bb.z ]
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.hi, i64 %i.hj) #23
          to label %.cont.i.i.i.i unwind label %.loopexit.split-lp30.i, !noalias !2644

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit89.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit95.i.i.i.i, %.loopexit.split-lp30.i, %.loopexit29.i
  %.pn.pn.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit95.i.i.i.i ], [ %lpad.loopexit31.i, %.loopexit29.i ], [ %lpad.loopexit.split-lp32.i, %.loopexit.split-lp30.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.af, !noalias !2644

.loopexit29.i:                                    ; preds = %bb.aa, %.lr.ph.i.i.i.i.i56.preheader.i.i.i.i
  %lpad.loopexit31.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit89.i.i.i.i

.loopexit.split-lp30.i:                           ; preds = %.invoke.i.i.i.i
  %lpad.loopexit.split-lp32.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit89.i.i.i.i

bb.ac:                                            ; preds = %.noexc74.i.i.i.i
  %i.hk = load ptr, ptr %i.ao, align 8, !noalias !2682, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2682
  br label %.loopexit.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i63.i.i.i.i, %middle.block263, %bb.ac
  %.sink123.i.i.i.i = phi i64 [ %i.hg, %bb.ac ], [ %i.gs, %middle.block263 ], [ %i.gs, %.lr.ph.i.i.i.i.i63.i.i.i.i ]
  %.sink122.i.i.i.i = phi ptr [ %i.hk, %bb.ac ], [ %i.gu, %middle.block263 ], [ %i.gu, %.lr.ph.i.i.i.i.i63.i.i.i.i ]
  store i64 %.sink123.i.i.i.i, ptr %i.n, align 8, !noalias !2647
  store ptr %.sink122.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i66.i.i.i.i, align 8, !noalias !2647
  store i64 %i.ej, ptr %.sroa.6.0..sroa_idx.i67.i.i.i.i, align 8, !noalias !2647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2683)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2684
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 2305843009213693952) %i.ej, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc85.i.i.i.i unwind label %.loopexit34.i, !noalias !2644

.noexc85.i.i.i.i:                                 ; preds = %.loopexit.i.i.i
  %i.hl = load i64, ptr %i.a, align 8, !range !13, !noalias !2684, !noundef !6
  %i.hm = trunc nuw i64 %i.hl to i1
  %i.hn = load i64, ptr %i.ap, align 8, !range !23, !noalias !2684, !noundef !6 ; 3 uses
end_hunk_1
