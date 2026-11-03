Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_core-8fbb0e4f7848fcc4.lance_core.4691d5757a72bccf-cgu.0?download=true
inline.NumInlined: 10875
inline.NumDeleted: 4857
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 71
begin_hunk_0_@_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path4joinReECs63DIHKhvmTb_10lance_core:bb.a
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsb_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CoweENtNtCscI6d9CVNmLh_4core3fmt7Display3fmtCs63DIHKhvmTb_10lance_core, ptr %.sroa.424.0..sroa_idx, align 8
  %i.s = invoke noundef zeroext i1 @_RNvNtCscI6d9CVNmLh_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @9, ptr noundef nonnull @8, ptr noundef nonnull %i.b)
          to label %bb.p unwind label %bb.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit52: ; preds = %bb.o, %bb.n, %bb.h
  %.pn = phi { ptr, i32 } [ %i.v, %bb.h ], [ %i.aa, %bb.n ], [ %i.aa, %bb.o ] ; 2 uses
  %.val45 = load i64, ptr %i.e, align 8, !range !25, !noundef !23 ; 2 uses
  %i.t = icmp sgt i64 %.val45, 0
  br i1 %i.t, label %bb.g, label %bb.b

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit52
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val46 = load ptr, ptr %i.u, align 8, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val46, i64 noundef %.val45, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !133
  br label %bb.b

bb.h:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit52

bb.i:                                             ; preds = %bb.c, %bb.e
  %.sroa.4.0.ph = phi i64 [ 1, %bb.e ], [ 0, %bb.c ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.n) #68
          to label %bb.m unwind label %bb.h

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread69: ; preds = %bb.d, %bb.k
  %i.w = phi ptr [ %i.p, %bb.k ], [ inttoptr (i64 1 to ptr), %bb.d ]
  store i64 %i.n, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.512.0..sroa_idx, align 8
  %.val43 = load i64, ptr %i.e, align 8, !range !25, !noundef !23 ; 2 uses
  %i.x = icmp sgt i64 %.val43, 0
  br i1 %i.x, label %bb.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit49

bb.j:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread69
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %.val43, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !134
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit49

bb.k:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.l, i64 %i.n, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread69

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit49: ; preds = %bb.j, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !135 ; 2 uses
  %i.y = icmp eq i64 %.val.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit49
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.z, align 8, !alias.scope !135, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !135
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit49, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit55
  ret void

bb.m:                                             ; preds = %bb.i
  unreachable

bb.n:                                             ; preds = %bb.q, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %.val.i50 = load i64, ptr %i.c, align 8, !alias.scope !136 ; 2 uses
  %i.ab = icmp eq i64 %.val.i50, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit52, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i51 = load ptr, ptr %i.ac, align 8, !alias.scope !136, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i51, i64 noundef %.val.i50, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !136
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit52

bb.p:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.q, label %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs63DIHKhvmTb_10lance_core.exit, !prof !26

bb.q:                                             ; preds = %bb.p
  invoke void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @367, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #68
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.q
  unreachable

_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.04.0.copyload5 = load i64, ptr %i.c, align 8
  %.sroa.47.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.47.0.copyload9 = load ptr, ptr %.sroa.47.0..sroa_idx8, align 8
  %.sroa.512.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.512.0.copyload14 = load i64, ptr %.sroa.512.0..sroa_idx13, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %.sroa.04.0.copyload5, ptr %0, align 8
  %.sroa.47.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.47.0.copyload9, ptr %.sroa.47.0..sroa_idx10, align 8
  %.sroa.512.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.512.0.copyload14, ptr %.sroa.512.0..sroa_idx15, align 8
  %.val = load i64, ptr %i.e, align 8, !range !25, !noundef !23 ; 2 uses
  %i.ad = icmp sgt i64 %.val, 0
  br i1 %i.ad, label %bb.r, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit55

bb.r:                                             ; preds = %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs63DIHKhvmTb_10lance_core.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val42 = load ptr, ptr %i.ae, align 8, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !137
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit55

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CoweEECs63DIHKhvmTb_10lance_core.exit55: ; preds = %bb.r, %_RNvMNtCscI6d9CVNmLh_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCs63DIHKhvmTb_10lance_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit58: ; preds = %bb.t, %bb.s, %bb.b
  %.pn.pn62 = phi { ptr, i32 } [ %.pn, %bb.b ], [ %.pn.pn63, %bb.s ], [ %.pn.pn63, %bb.t ]
  resume { ptr, i32 } %.pn.pn62

bb.s:                                             ; preds = %.thread, %bb.b
  %.pn.pn63 = phi { ptr, i32 } [ %i.f, %.thread ], [ %.pn, %bb.b ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %.val.i56 = load i64, ptr %1, align 8, !alias.scope !138 ; 2 uses
  %i.af = icmp eq i64 %.val.i56, 0
  br i1 %i.af, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit58, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i57 = load ptr, ptr %i.ag, align 8, !alias.scope !138, !nonnull !23, !noundef !23
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i57, i64 noundef %.val.i56, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !138
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit58
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMNtCs3PfUT229lOd_12object_store4pathNtB3_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !23, !noundef !23 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val79 = load i64, ptr %i.d, align 8, !noundef !23 ; 16 uses
  %.not.i = icmp eq i64 %.val79, 0
  br i1 %.not.i, label %.thread206, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit

.body:                                            ; preds = %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.br, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.in, %bb.br ], [ %i.in, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i ], [ %lpad.loopexit.split-lp, %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !186 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit, label %bb.b

bb.b:                                             ; preds = %.body
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !186
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit

_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.a
  %rhsc = load i8, ptr %.val, align 1
  %rhsc.fr = freeze i8 %rhsc
  %i.f = icmp eq i8 %rhsc.fr, 47
  br i1 %i.f, label %.split, label %.thread207

.split:                                           ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 1
  %i.h = add i64 %.val79, -1                      ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread206, label %.thread207

.thread206:                                       ; preds = %bb.a, %.split
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.j, align 8
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.436.0..sroa_idx, align 8
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.537.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit96.thread255, %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs63DIHKhvmTb_10lance_core.exit, %.thread206
  %.val.i82 = load i64, ptr %1, align 8, !alias.scope !187 ; 2 uses
  %i.k = icmp eq i64 %.val.i82, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split

.thread207:                                       ; preds = %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit, %.split
  %i.l = phi ptr [ %i.g, %.split ], [ %.val, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit ] ; 3 uses
  %i.m = phi i64 [ %i.h, %.split ], [ %.val79, %_RNvMNtCscI6d9CVNmLh_4core5sliceSh11starts_withCs63DIHKhvmTb_10lance_core.exit ] ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -1
  %rhsc.i = load i8, ptr %i.o, align 1, !alias.scope !188
  %i.p = icmp eq i8 %rhsc.i, 47
  %i.q = sext i1 %i.p to i64
  %spec.select = add i64 %i.m, %i.q               ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMsu_NtNtCscI6d9CVNmLh_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %spec.select, ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1)
          to label %bb.d unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.d:                                             ; preds = %.thread207
  %.sroa.038.sroa.0.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.038.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.038.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 28 uses
  %.sroa.038.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.038.sroa.6.0.copyload = load i64, ptr %.sroa.038.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.038.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.038.sroa.7.0.copyload = load i64, ptr %.sroa.038.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.038.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.038.sroa.8.0.copyload = load i64, ptr %.sroa.038.sroa.8.0..sroa_idx, align 8
  %.sroa.038.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.038.sroa.10.0.copyload = load i64, ptr %.sroa.038.sroa.10.0..sroa_idx, align 8
  %.sroa.038.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.sroa.038.sroa.12.0.copyload = load ptr, ptr %.sroa.038.sroa.12.0..sroa_idx, align 8, !nonnull !23, !noundef !23 ; 18 uses
  %.sroa.038.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.038.sroa.13.0.copyload = load i64, ptr %.sroa.038.sroa.13.0..sroa_idx, align 8 ; 57 uses
  %.sroa.038.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.038.sroa.14.0.copyload = load ptr, ptr %.sroa.038.sroa.14.0..sroa_idx, align 8 ; 5 uses
  %.sroa.038.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.038.sroa.15.0.copyload = load i64, ptr %.sroa.038.sroa.15.0..sroa_idx, align 8 ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.r = trunc nuw i64 %.sroa.038.sroa.0.0.copyload to i1
  %i.s = add nsw i64 %.sroa.038.sroa.15.0.copyload, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  br i1 %i.r, label %.split311.us, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.d
  %i.u = and i64 %.sroa.038.sroa.6.0.copyload, 65536
  %.sroa.9123.sroa.10140.0.extract.trunc.not = icmp eq i64 %i.u, 0
  %.sroa.9123.sroa.0.0.extract.trunc = trunc i64 %.sroa.038.sroa.6.0.copyload to i1
  br i1 %.sroa.9123.sroa.10140.0.extract.trunc.not, label %.lr.ph.i.i.peel, label %.sink.split.i.peel

.lr.ph.i.i.peel:                                  ; preds = %.preheader.i.i.preheader
  %i.v = trunc i64 %.sroa.038.sroa.6.0.copyload to i1 ; 2 uses
  %i.w = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br i1 %i.w, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.peel
  %.not.i.i.i.peel.i.peel = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i.peel, label %bb.f, label %.split.i.i.i.peel.i.peel

.split.i.i.i.peel.i.peel:                         ; preds = %bb.e
  %i.x = icmp eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.x, label %bb.g, label %.loopexit.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !189, !noalias !190, !noundef !23
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f, %.split.i.i.i.peel.i.peel, %.lr.ph.i.i.peel
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.038.sroa.4.0.copyload ; 4 uses
  %i.ac = icmp samesign eq i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ac, label %.loopexit19.i.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i8, ptr %i.ab, align 1, !noalias !191, !noundef !23 ; 5 uses
  %i.ae = icmp sgt i8 %i.ad, -1
  br i1 %i.ae, label %bb.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel: ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = and i8 %i.ad, 31
  %i.ah = zext nneg i8 %i.ag to i32               ; 3 uses
  %i.ai = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 1
  %i.aj = icmp samesign ne i64 %i.ai, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.af, align 1, !noalias !191, !noundef !23
  %i.al = shl nuw nsw i32 %i.ah, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32               ; 2 uses
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = icmp samesign ugt i8 %i.ad, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel, label %bb.j

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.ar = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 2
  %i.as = icmp samesign ne i64 %i.ar, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.as)
  %i.at = load i8, ptr %i.aq, align 1, !noalias !191, !noundef !23
  %i.au = shl nuw nsw i32 %i.an, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32
  %i.ax = or disjoint i32 %i.au, %i.aw            ; 2 uses
  %i.ay = shl nuw nsw i32 %i.ah, 12
  %i.az = or disjoint i32 %i.ax, %i.ay
  %i.ba = icmp samesign ugt i8 %i.ad, -17
  br i1 %i.ba, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel, label %bb.j

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.bc = add nuw nsw i64 %.sroa.038.sroa.4.0.copyload, 3
  %i.bd = icmp samesign ne i64 %i.bc, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = load i8, ptr %i.bb, align 1, !noalias !191, !noundef !23
  %i.bf = shl nuw nsw i32 %i.ah, 18
  %i.bg = and i32 %i.bf, 1835008
  %i.bh = shl nuw nsw i32 %i.ax, 6
  %i.bi = and i8 %i.be, 63
  %i.bj = zext nneg i8 %i.bi to i32
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = or disjoint i32 %i.bk, %i.bg
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bm = zext nneg i8 %i.ad to i32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel
  %.sroa.4.0.i.ph.i.i.peel.i.peel = phi i32 [ %i.az, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i.peel ], [ %i.bl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i.peel ], [ %i.ao, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i.peel ], [ %i.bm, %bb.i ] ; 4 uses
  %i.bn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  br i1 %i.v, label %.sink.split.i.peel, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 128
  br i1 %i.bo, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 2048
  br i1 %i.bp, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.peel, 65536
  %..i.i.peel.i.peel = select i1 %i.bq, i64 3, i64 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.01.0.i.i.peel.i.peel = phi i64 [ 2, %bb.l ], [ %..i.i.peel.i.peel, %bb.m ], [ 1, %bb.k ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.peel, %.sroa.038.sroa.4.0.copyload ; 23 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.peel = icmp ult i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i.peel, label %bb.p, label %.split.i.i.i.i.peel

.split.i.i.i.i.peel:                              ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bt, label %bb.q, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !189, !noalias !192, !noundef !23
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %bb.p, %.split.i.i.i.i.peel, %bb.n
  %i.bx = icmp samesign eq i64 %i.br, %.sroa.038.sroa.13.0.copyload
  br i1 %i.bx, label %.sink.split.i.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !193, !noundef !23 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.sink.split.i.peel, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel: ; preds = %bb.r
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel, label %.sink.split.i.peel

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ci)
  br label %.sink.split.i.peel

.loopexit19.i.peel:                               ; preds = %bb.g
  br i1 %i.v, label %.sink.split.i.peel, label %bb.s

bb.s:                                             ; preds = %.loopexit19.i.peel
  br label %.sink.split.i.peel

.sink.split.i.peel:                               ; preds = %bb.s, %.loopexit19.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel, %bb.r, %bb.q, %bb.j, %.preheader.i.i.preheader
  %.sroa.9123.sroa.0.4.peel = phi i1 [ true, %bb.s ], [ false, %.loopexit19.i.peel ], [ false, %bb.j ], [ false, %bb.q ], [ %.sroa.9123.sroa.0.0.extract.trunc, %.preheader.i.i.preheader ], [ false, %bb.r ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.51.2.peel = phi i1 [ true, %bb.s ], [ false, %.loopexit19.i.peel ], [ false, %bb.j ], [ false, %bb.q ], [ true, %.preheader.i.i.preheader ], [ false, %bb.r ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.41.2.peel = phi i64 [ 0, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ 0, %.preheader.i.i.preheader ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %.sroa.5.5.peel = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.i.i.preheader ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ]
  %spec.select.pn.peel = phi i64 [ %spec.select, %bb.s ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.j ], [ %.sroa.038.sroa.13.0.copyload, %bb.q ], [ %spec.select, %.preheader.i.i.preheader ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i.peel ], [ %i.br, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i.peel ] ; 2 uses
  %i.cj = icmp eq i64 %spec.select.pn.peel, 0
  br i1 %i.cj, label %.split332.us, label %bb.t

bb.t:                                             ; preds = %.sink.split.i.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %spec.select.pn.peel)
          to label %bb.u unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.u:                                             ; preds = %bb.t
  %i.ck = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77.peel = icmp eq i64 %i.ck, -1
  br i1 %.not77.peel, label %bb.v, label %.split335.us

bb.v:                                             ; preds = %bb.u
  %.sroa.0178.0.copyload.peel = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload.peel = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = ptrtoint ptr %.sroa.0178.0.copyload.peel to i64 ; 2 uses
  %.0.val.off.i.i.peel = add i64 %i.cl, -1
  %switch.i.i.peel = icmp ult i64 %.0.val.off.i.i.peel, -2
  br i1 %switch.i.i.peel, label %bb.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel

bb.w:                                             ; preds = %bb.v
  %i.cm = inttoptr i64 %.sroa.4179.0.copyload.peel to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cm) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cm, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel: ; preds = %bb.w, %bb.v
  br i1 %.sroa.51.2.peel, label %.thread228, label %.preheader.i.i

.split311.us:                                     ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.sroa.14.0.copyload) ]
  %i.cn = sub i64 %.sroa.038.sroa.15.0.copyload, %.sroa.038.sroa.6.0.copyload
  %umax49.i110.us = tail call i64 @llvm.umax.i64(i64 %.sroa.038.sroa.4.0.copyload, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %i.co = add i64 %.sroa.038.sroa.4.0.copyload, -1
  %.first_iter = icmp ult i64 %i.co, %.sroa.038.sroa.15.0.copyload
  %invariant.op = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %exitcond.not.i112.us470.not = icmp ult i64 %.sroa.038.sroa.4.0.copyload, %.sroa.038.sroa.15.0.copyload
  %invariant.op536 = sub i64 1, %.sroa.038.sroa.4.0.copyload
  %.not262.us473 = icmp eq i64 %.sroa.038.sroa.4.0.copyload, 0
  br label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us, %.split311.us
  %.sroa.19.0308.us = phi i64 [ %.sroa.038.sroa.8.0.copyload, %.split311.us ], [ %.sroa.19.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 3 uses
  %.sroa.31127.0307.us = phi i64 [ %.sroa.038.sroa.10.0.copyload, %.split311.us ], [ %.sroa.31127.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 3 uses
  %.sroa.41.0306.us = phi i64 [ 0, %.split311.us ], [ %.sroa.41.2.us, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us ] ; 7 uses
  %i.cp = icmp eq i64 %.sroa.31127.0307.us, -1
  %i.cq = add i64 %.sroa.19.0308.us, %i.s         ; 3 uses
  %i.cr = icmp ult i64 %i.cq, %.sroa.038.sroa.13.0.copyload ; 2 uses
  br i1 %i.cp, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  br i1 %i.cr, label %.lr.ph.i.us, label %.sink.split.i.us

.lr.ph.i.us:                                      ; preds = %bb.y, %.sink.split.i98.us
  %i.cs = phi i64 [ %.sink.i99.us, %.sink.split.i98.us ], [ %.sroa.31127.0307.us, %bb.y ] ; 3 uses
  %i.ct = phi i64 [ %i.dw, %.sink.split.i98.us ], [ %i.cq, %bb.y ]
  %i.cu = phi i64 [ %.ph71.i.us, %.sink.split.i98.us ], [ %.sroa.19.0308.us, %bb.y ] ; 8 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ct
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !195, !noundef !23
  %i.cx = and i8 %i.cw, 63
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = and i64 %i.cz, %.sroa.038.sroa.7.0.copyload
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.us
  %.sroa.0.0.i.i.us = tail call i64 @llvm.umax.i64(i64 %i.cs, i64 %.sroa.038.sroa.4.0.copyload) ; 4 uses
  %umax49.i.us = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.us, i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.15.0.copyload)
  %exitcond.not.i.us465.not = icmp ult i64 %.sroa.0.0.i.i.us, %.sroa.038.sroa.15.0.copyload
  br i1 %exitcond.not.i.us465.not, label %.lr.ph, label %.preheader263.us.preheader

bb.aa:                                            ; preds = %bb.ab
  %i.dc = add nuw i64 %.sroa.02.0.i.us466, 1      ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.dc, %umax49.i.us
  br i1 %exitcond.not.i.us, label %.preheader263.us.preheader, label %.lr.ph

.preheader263.us.preheader:                       ; preds = %bb.aa, %bb.z
  %i.dd = icmp ult i64 %i.cs, %.sroa.038.sroa.4.0.copyload
  br i1 %i.dd, label %.lr.ph468, label %.preheader263.us.preheader._crit_edge

.lr.ph:                                           ; preds = %bb.z, %bb.aa
  %.sroa.02.0.i.us466 = phi i64 [ %i.dc, %bb.aa ], [ %.sroa.0.0.i.i.us, %bb.z ] ; 4 uses
  %i.de = add i64 %.sroa.02.0.i.us466, %i.cu      ; 2 uses
  %i.df = icmp ult i64 %i.de, %.sroa.038.sroa.13.0.copyload
  br i1 %i.df, label %bb.ab, label %.split313.us

bb.ab:                                            ; preds = %.lr.ph
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i.us466
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !196, !noundef !23
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.de
  %i.dj = load i8, ptr %i.di, align 1, !alias.scope !195, !noundef !23
  %.not21.i.us = icmp eq i8 %i.dh, %i.dj
  br i1 %.not21.i.us, label %bb.aa, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.reass.reass = add i64 %i.cu, %invariant.op
  %i.dk = add i64 %.reass.reass, %.sroa.02.0.i.us466
  br label %.sink.split.i98.us

.preheader263.us:                                 ; preds = %bb.ae
  %i.dl = icmp ult i64 %i.cs, %i.dm
  br i1 %i.dl, label %.lr.ph468, label %.preheader263.us.preheader._crit_edge

.lr.ph468:                                        ; preds = %.preheader263.us.preheader, %.preheader263.us
  %.sroa.2.0.i.us467 = phi i64 [ %i.dm, %.preheader263.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader263.us.preheader ]
  %i.dm = add i64 %.sroa.2.0.i.us467, -1          ; 6 uses
  %i.dn = icmp ult i64 %i.dm, %.sroa.038.sroa.15.0.copyload
  br i1 %i.dn, label %bb.ad, label %.split322.us.invoke

bb.ad:                                            ; preds = %.lr.ph468
  %i.do = add i64 %i.dm, %i.cu                    ; 3 uses
  %i.dp = icmp ult i64 %i.do, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dp, label %bb.ae, label %.split322.us.invoke

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %i.dm
  %i.dr = load i8, ptr %i.dq, align 1, !alias.scope !196, !noundef !23
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.do
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !195, !noundef !23
  %.not.i100.us = icmp eq i8 %i.dr, %i.dt
  br i1 %.not.i100.us, label %.preheader263.us, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.du = add i64 %i.cu, %.sroa.038.sroa.6.0.copyload
  br label %.sink.split.i98.us

bb.ag:                                            ; preds = %.lr.ph.i.us
  %i.dv = add i64 %i.cu, %.sroa.038.sroa.15.0.copyload
  br label %.sink.split.i98.us

.sink.split.i98.us:                               ; preds = %bb.ag, %bb.af, %bb.ac
  %.sink.i99.us = phi i64 [ %i.cn, %bb.af ], [ 0, %bb.ac ], [ 0, %bb.ag ] ; 2 uses
  %.ph71.i.us = phi i64 [ %i.du, %bb.af ], [ %i.dk, %bb.ac ], [ %i.dv, %bb.ag ] ; 2 uses
  %i.dw = add i64 %.ph71.i.us, %i.s               ; 2 uses
  %i.dx = icmp ult i64 %i.dw, %.sroa.038.sroa.13.0.copyload
  br i1 %i.dx, label %.lr.ph.i.us, label %.sink.split.i.us

.preheader263.us.preheader._crit_edge:            ; preds = %.preheader263.us.preheader, %.preheader263.us
  %i.dy = add i64 %i.cu, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

bb.ah:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  br i1 %i.cr, label %.lr.ph.i107.us, label %.sink.split.i.us

.lr.ph.i107.us:                                   ; preds = %bb.ah, %bb.ao
  %i.dz = phi i64 [ %i.ez, %bb.ao ], [ %i.cq, %bb.ah ]
  %i.ea = phi i64 [ %i.ey, %bb.ao ], [ %.sroa.19.0308.us, %bb.ah ] ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.dz
  %i.ec = load i8, ptr %i.eb, align 1, !alias.scope !197, !noundef !23
  %i.ed = and i8 %i.ec, 63
  %i.ee = zext nneg i8 %i.ed to i64
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = and i64 %i.ef, %.sroa.038.sroa.7.0.copyload
  %i.eh = icmp eq i64 %i.eg, 0
  br i1 %i.eh, label %bb.an, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.i107.us
  br i1 %exitcond.not.i112.us470.not, label %.lr.ph472, label %.preheader.us.preheader.a

.preheader:                                       ; preds = %bb.ai
  %i.ei = add nuw i64 %.sroa.02.0.i111.us471, 1   ; 2 uses
  %exitcond.not.i112.us = icmp eq i64 %i.ei, %umax49.i110.us
  br i1 %exitcond.not.i112.us, label %.preheader.us.preheader.a, label %.lr.ph472

.preheader.us.preheader.a:                        ; preds = %.preheader, %.preheader.preheader
  br i1 %.not262.us473, label %.preheader.us.preheader._crit_edge, label %.lr.ph475

.lr.ph472:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.02.0.i111.us471 = phi i64 [ %i.ei, %.preheader ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.preheader ] ; 4 uses
  %i.ej = add i64 %.sroa.02.0.i111.us471, %i.ea   ; 2 uses
  %i.ek = icmp ult i64 %i.ej, %.sroa.038.sroa.13.0.copyload
  br i1 %i.ek, label %bb.ai, label %.split322.us

bb.ai:                                            ; preds = %.lr.ph472
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %.sroa.02.0.i111.us471
  %i.em = load i8, ptr %i.el, align 1, !alias.scope !198, !noundef !23
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.ej
  %i.eo = load i8, ptr %i.en, align 1, !alias.scope !197, !noundef !23
  %.not21.i114.us.a = icmp eq i8 %i.em, %i.eo
  br i1 %.not21.i114.us.a, label %.preheader, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.reass433.reass = add i64 %i.ea, %invariant.op536
  %i.ep = add i64 %.reass433.reass, %.sroa.02.0.i111.us471
  br label %bb.ao

.preheader.us:                                    ; preds = %bb.al
  %.not262.us = icmp eq i64 %2, 0
  br i1 %.not262.us, label %.preheader.us.preheader._crit_edge, label %.lr.ph475

.lr.ph475:                                        ; preds = %.preheader.us.preheader.a, %.preheader.us
  %.sroa.2.0.i115.us474 = phi i64 [ %2, %.preheader.us ], [ %.sroa.038.sroa.4.0.copyload, %.preheader.us.preheader.a ]
  %2 = add i64 %.sroa.2.0.i115.us474, -1          ; 5 uses
  br i1 %.first_iter, label %bb.ak, label %.split322.us.invoke

bb.ak:                                            ; preds = %.lr.ph475
  %i.eq = add i64 %2, %i.ea                       ; 3 uses
  %i.er = icmp ult i64 %i.eq, %.sroa.038.sroa.13.0.copyload
  br i1 %i.er, label %bb.al, label %.split322.us.invoke

bb.al:                                            ; preds = %bb.ak
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.14.0.copyload, i64 %2
  %i.et = load i8, ptr %i.es, align 1, !alias.scope !198, !noundef !23
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.eq
  %i.ev = load i8, ptr %i.eu, align 1, !alias.scope !197, !noundef !23
  %.not.i116.us = icmp eq i8 %i.et, %i.ev
  br i1 %.not.i116.us, label %.preheader.us, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ew = add i64 %.sroa.038.sroa.6.0.copyload, %i.ea
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i107.us
  %i.ex = add i64 %i.ea, %.sroa.038.sroa.15.0.copyload
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.aj
  %i.ey = phi i64 [ %i.ep, %bb.aj ], [ %i.ex, %bb.an ], [ %i.ew, %bb.am ] ; 2 uses
  %i.ez = add i64 %i.ey, %i.s                     ; 2 uses
  %i.fa = icmp ult i64 %i.ez, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fa, label %.lr.ph.i107.us, label %.sink.split.i.us

.preheader.us.preheader._crit_edge:               ; preds = %.preheader.us.preheader.a, %.preheader.us
  %i.fb = add i64 %i.ea, %.sroa.038.sroa.15.0.copyload ; 2 uses
  br label %.sink.split.i.us

.sink.split.i.us:                                 ; preds = %.sink.split.i98.us, %bb.ao, %.preheader.us.preheader._crit_edge, %bb.ah, %.preheader263.us.preheader._crit_edge, %bb.y
  %.sroa.51.2.us = phi i1 [ false, %.preheader263.us.preheader._crit_edge ], [ false, %.preheader.us.preheader._crit_edge ], [ true, %bb.ao ], [ true, %bb.y ], [ true, %bb.ah ], [ true, %.sink.split.i98.us ]
  %.sroa.41.2.us = phi i64 [ %i.dy, %.preheader263.us.preheader._crit_edge ], [ %i.fb, %.preheader.us.preheader._crit_edge ], [ %.sroa.41.0306.us, %bb.ao ], [ %.sroa.41.0306.us, %bb.y ], [ %.sroa.41.0306.us, %bb.ah ], [ %.sroa.41.0306.us, %.sink.split.i98.us ]
  %.sroa.31127.2.us = phi i64 [ 0, %.preheader263.us.preheader._crit_edge ], [ -1, %.preheader.us.preheader._crit_edge ], [ -1, %bb.ao ], [ %.sroa.31127.0307.us, %bb.y ], [ -1, %bb.ah ], [ %.sink.i99.us, %.sink.split.i98.us ]
  %.sroa.19.2.us = phi i64 [ %i.dy, %.preheader263.us.preheader._crit_edge ], [ %i.fb, %.preheader.us.preheader._crit_edge ], [ %.sroa.038.sroa.13.0.copyload, %bb.ao ], [ %.sroa.038.sroa.13.0.copyload, %bb.y ], [ %.sroa.038.sroa.13.0.copyload, %bb.ah ], [ %.sroa.038.sroa.13.0.copyload, %.sink.split.i98.us ]
  %spec.select.pn.us = phi i64 [ %i.cu, %.preheader263.us.preheader._crit_edge ], [ %i.ea, %.preheader.us.preheader._crit_edge ], [ %spec.select, %bb.ao ], [ %spec.select, %bb.y ], [ %spec.select, %bb.ah ], [ %spec.select, %.sink.split.i98.us ] ; 2 uses
  %i.fc = icmp eq i64 %spec.select.pn.us, %.sroa.41.0306.us
  br i1 %i.fc, label %.split332.us, label %bb.ap

bb.ap:                                            ; preds = %.sink.split.i.us
  %.sroa.4.1.i.us = sub nuw i64 %spec.select.pn.us, %.sroa.41.0306.us
  %.sroa.0.1.i.us = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0306.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.us, i64 noundef %.sroa.4.1.i.us)
          to label %bb.aq unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ap
  %i.fd = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77.us = icmp eq i64 %i.fd, -1
  br i1 %.not77.us, label %bb.ar, label %.split335.us

bb.ar:                                            ; preds = %bb.aq
  %.sroa.0178.0.copyload.us = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload.us = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fe = ptrtoint ptr %.sroa.0178.0.copyload.us to i64 ; 2 uses
  %.0.val.off.i.i.us = add i64 %i.fe, -1
  %switch.i.i.us = icmp ult i64 %.0.val.off.i.i.us, -2
  br i1 %switch.i.i.us, label %bb.as, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us

bb.as:                                            ; preds = %bb.ar
  %i.ff = inttoptr i64 %.sroa.4179.0.copyload.us to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ff) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ff, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us: ; preds = %bb.as, %bb.ar
  br i1 %.sroa.51.2.us, label %.thread228, label %bb.x

.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.ap, %.thread207, %.loopexit.i, %.split322.us.invoke, %.invoke, %bb.bm, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.preheader.i.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit
  %.sroa.5.0309 = phi i64 [ %.sroa.5.5, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.5.5.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 15 uses
  %.sroa.41.0306 = phi i64 [ %.sroa.41.2, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.41.2.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 4 uses
  %.sroa.9123.sroa.0.0304 = phi i1 [ false, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit ], [ %.sroa.9123.sroa.0.4.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel ] ; 2 uses
  %i.fg = icmp eq i64 %.sroa.5.0309, 0
  br i1 %i.fg, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.preheader.i.i
  %.not.i.i.i.peel.i = icmp ult i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.peel.i, label %bb.au, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.at
  %i.fh = icmp eq i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fh, label %bb.av, label %.loopexit.i

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0309
  %i.fj = load i8, ptr %i.fi, align 1, !alias.scope !189, !noalias !190, !noundef !23
  %i.fk = icmp sgt i8 %i.fj, -65
  br i1 %i.fk, label %bb.av, label %.loopexit.i

bb.av:                                            ; preds = %bb.au, %.split.i.i.i.peel.i, %.preheader.i.i
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.5.0309 ; 4 uses
  %i.fm = icmp samesign eq i64 %.sroa.5.0309, %.sroa.038.sroa.13.0.copyload
  br i1 %i.fm, label %.loopexit19.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = load i8, ptr %i.fl, align 1, !noalias !191, !noundef !23 ; 5 uses
  %i.fo = icmp sgt i8 %i.fn, -1
  br i1 %i.fo, label %bb.ax, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i: ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fq = and i8 %i.fn, 31
  %i.fr = zext nneg i8 %i.fq to i32               ; 3 uses
  %i.fs = add nuw nsw i64 %.sroa.5.0309, 1
  %i.ft = icmp samesign ne i64 %i.fs, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = load i8, ptr %i.fp, align 1, !noalias !191, !noundef !23
  %i.fv = shl nuw nsw i32 %i.fr, 6
  %i.fw = and i8 %i.fu, 63
  %i.fx = zext nneg i8 %i.fw to i32               ; 2 uses
  %i.fy = or disjoint i32 %i.fv, %i.fx
  %i.fz = icmp samesign ugt i8 %i.fn, -33
  br i1 %i.fz, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i, label %bb.ay

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.gb = add nuw nsw i64 %.sroa.5.0309, 2
  %i.gc = icmp samesign ne i64 %i.gb, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.gc)
  %i.gd = load i8, ptr %i.ga, align 1, !noalias !191, !noundef !23
  %i.ge = shl nuw nsw i32 %i.fx, 6
  %i.gf = and i8 %i.gd, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg            ; 2 uses
  %i.gi = shl nuw nsw i32 %i.fr, 12
  %i.gj = or disjoint i32 %i.gh, %i.gi
  %i.gk = icmp samesign ugt i8 %i.fn, -17
  br i1 %i.gk, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i, label %bb.ay

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fl, i64 3
  %i.gm = add nuw nsw i64 %.sroa.5.0309, 3
  %i.gn = icmp samesign ne i64 %i.gm, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = load i8, ptr %i.gl, align 1, !noalias !191, !noundef !23
  %i.gp = shl nuw nsw i32 %i.fr, 18
  %i.gq = and i32 %i.gp, 1835008
  %i.gr = shl nuw nsw i32 %i.gh, 6
  %i.gs = and i8 %i.go, 63
  %i.gt = zext nneg i8 %i.gs to i32
  %i.gu = or disjoint i32 %i.gr, %i.gt
  %i.gv = or disjoint i32 %i.gu, %i.gq
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gw = zext nneg i8 %i.fn to i32
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.gj, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.peel.i ], [ %i.gv, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.peel.i ], [ %i.fy, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.peel.i ], [ %i.gw, %bb.ax ] ; 4 uses
  %i.gx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.gx)
  br i1 %.sroa.9123.sroa.0.0304, label %.sink.split.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gy = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.gy, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gz = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.gz, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ha = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ha, i64 3, i64 4
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ba ], [ %..i.i.peel.i, %bb.bb ], [ 1, %bb.az ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel.i, %.sroa.5.0309 ; 23 uses
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i.i.i = icmp ult i64 %i.hb, %.sroa.038.sroa.13.0.copyload
  br i1 %.not.i.i.i.i, label %bb.be, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.bd
  %i.hd = icmp eq i64 %i.hb, %.sroa.038.sroa.13.0.copyload
  br i1 %i.hd, label %bb.bf, label %.loopexit.i

bb.be:                                            ; preds = %bb.bd
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !189, !noalias !192, !noundef !23
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.bf, label %.loopexit.i

bb.bf:                                            ; preds = %bb.be, %.split.i.i.i.i, %bb.bc
  %i.hh = icmp samesign eq i64 %i.hb, %.sroa.038.sroa.13.0.copyload
  br i1 %i.hh, label %.sink.split.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !193, !noundef !23 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %.sink.split.i, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i: ; preds = %bb.bg
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, label %.sink.split.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %.sroa.038.sroa.13.0.copyload
  tail call void @llvm.assume(i1 %i.hs)
  br label %.sink.split.i

.loopexit.i:                                      ; preds = %bb.be, %.split.i.i.i.i, %bb.au, %.split.i.i.i.peel.i, %bb.p, %.split.i.i.i.i.peel, %bb.f, %.split.i.i.i.peel.i.peel
  %.lcssa12.i = phi i64 [ %.sroa.038.sroa.4.0.copyload, %.split.i.i.i.peel.i.peel ], [ %.sroa.038.sroa.4.0.copyload, %bb.f ], [ %i.br, %.split.i.i.i.i.peel ], [ %i.br, %bb.p ], [ %i.hb, %bb.be ], [ %i.hb, %.split.i.i.i.i ], [ %.sroa.5.0309, %bb.au ], [ %.sroa.5.0309, %.split.i.i.i.peel.i ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.038.sroa.12.0.copyload, i64 noundef %.sroa.038.sroa.13.0.copyload, i64 noundef %.lcssa12.i, i64 noundef %.sroa.038.sroa.13.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1320) #68
          to label %.noexc unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %.loopexit.i
  unreachable

.loopexit19.i:                                    ; preds = %bb.av
  br i1 %.sroa.9123.sroa.0.0304, label %.sink.split.i, label %bb.bh

.split322.us:                                     ; preds = %.lr.ph472
  %i.ht = add i64 %i.ea, %.sroa.038.sroa.4.0.copyload
  %umax.i113 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.ht)
  br label %.split322.us.invoke

.split322.us.invoke:                              ; preds = %bb.ad, %.lr.ph468, %bb.ak, %.lr.ph475, %.split313.us, %.split322.us
  %i.hu = phi i64 [ %umax.i113, %.split322.us ], [ %umax.i, %.split313.us ], [ %2, %.lr.ph475 ], [ %i.eq, %bb.ak ], [ %i.dm, %.lr.ph468 ], [ %i.do, %bb.ad ]
  %i.hv = phi i64 [ %.sroa.038.sroa.13.0.copyload, %.split322.us ], [ %.sroa.038.sroa.13.0.copyload, %.split313.us ], [ %.sroa.038.sroa.15.0.copyload, %.lr.ph475 ], [ %.sroa.038.sroa.13.0.copyload, %bb.ak ], [ %.sroa.038.sroa.15.0.copyload, %.lr.ph468 ], [ %.sroa.038.sroa.13.0.copyload, %bb.ad ]
  %i.hw = phi ptr [ @88, %.split322.us ], [ @88, %.split313.us ], [ @86, %.lr.ph475 ], [ @87, %bb.ak ], [ @86, %.lr.ph468 ], [ @87, %bb.ad ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking18panic_bounds_check(i64 noundef %i.hu, i64 noundef range(i64 0, -9223372036854775808) %i.hv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hw) #68
          to label %.split322.us.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.split322.us.cont:                                ; preds = %.split322.us.invoke
  unreachable

.split313.us:                                     ; preds = %.lr.ph
  %i.hx = add i64 %i.cu, %.sroa.0.0.i.i.us
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %.sroa.038.sroa.13.0.copyload, i64 %i.hx)
  br label %.split322.us.invoke

bb.bh:                                            ; preds = %.loopexit19.i
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i, %bb.bg, %bb.bf, %bb.ay, %.loopexit19.i, %bb.bh
  %.sroa.51.2 = phi i1 [ true, %bb.bh ], [ false, %.loopexit19.i ], [ false, %bb.ay ], [ false, %bb.bf ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ false, %bb.bg ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ false, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %.sroa.41.2 = phi i64 [ %.sroa.41.0306, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %i.hb, %bb.bg ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %.sroa.5.5 = phi i64 [ %.sroa.038.sroa.13.0.copyload, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %i.hb, %bb.bg ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ]
  %spec.select.pn = phi i64 [ %spec.select, %bb.bh ], [ %.sroa.038.sroa.13.0.copyload, %.loopexit19.i ], [ %.sroa.5.0309, %bb.ay ], [ %.sroa.038.sroa.13.0.copyload, %bb.bf ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit12.i.i.i.i ], [ %i.hb, %bb.bg ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit16.i.i.i.i ], [ %i.hb, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs63DIHKhvmTb_10lance_core.exit14.i.i.i.i ] ; 2 uses
  %i.hy = icmp eq i64 %spec.select.pn, %.sroa.41.0306
  br i1 %i.hy, label %.split332.us, label %bb.bm

.thread228:                                       ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.peel, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit.us
  %.not.i90 = icmp slt i64 %spec.select, 0
  br i1 %.not.i90, label %.invoke, label %bb.bi, !prof !24

bb.bi:                                            ; preds = %.thread228
  %i.hz = icmp eq i64 %spec.select, 0
  br i1 %i.hz, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !199
  %i.ia = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %spec.select, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !199 ; 3 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %.invoke, label %bb.bk

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244: ; preds = %bb.bi, %bb.bk
  %i.ic = phi ptr [ %i.ia, %bb.bk ], [ inttoptr (i64 1 to ptr), %bb.bi ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select, ptr %i.id, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ic, ptr %.sroa.455.0..sroa_idx, align 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %spec.select, ptr %.sroa.556.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %.val.i91 = load i64, ptr %1, align 8, !alias.scope !200 ; 2 uses
  %i.ie = icmp eq i64 %.val.i91, 0
  br i1 %i.ie, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split

bb.bk:                                            ; preds = %bb.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ia, ptr nonnull align 1 %i.l, i64 %spec.select, i1 false)
  br label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, %bb.c
  %.val.i91.sink = phi i64 [ %.val.i82, %bb.c ], [ %.val.i91, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244 ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val.i91.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !23
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit84.sink.split, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit.thread244, %bb.c
  ret void

.split332.us:                                     ; preds = %.sink.split.i.peel, %.sink.split.i, %.sink.split.i.us
  %.not.i94 = icmp slt i64 %.val79, 0
  br i1 %.not.i94, label %.invoke, label %bb.bl, !prof !24

bb.bl:                                            ; preds = %.split332.us
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !201
  %i.if = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val79, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !201 ; 3 uses
  %i.ig = icmp eq ptr %i.if, null
  br i1 %i.ig, label %.invoke, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit96.thread255

bb.bm:                                            ; preds = %.sink.split.i
  %.sroa.4.1.i = sub nuw i64 %spec.select.pn, %.sroa.41.0306
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.sroa.038.sroa.12.0.copyload, i64 %.sroa.41.0306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMNtNtCs3PfUT229lOd_12object_store4path5partsNtB2_8PathPart5parse(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i, i64 noundef %.sroa.4.1.i)
          to label %bb.bn unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.invoke:                                          ; preds = %bb.bl, %.split332.us, %bb.bj, %.thread228
  %i.ih = phi i64 [ 0, %.thread228 ], [ 1, %bb.bj ], [ 1, %bb.bl ], [ 0, %.split332.us ]
  %i.ii = phi i64 [ %spec.select, %.thread228 ], [ %spec.select, %bb.bj ], [ %.val79, %bb.bl ], [ %.val79, %.split332.us ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.ih, i64 %i.ii) #68
          to label %.cont unwind label %.loopexit.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs63DIHKhvmTb_10lance_core.exit96.thread255: ; preds = %bb.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.if, ptr nonnull align 1 %.val, i64 %.val79, i1 false)
  store i64 -9223372036854775808, ptr %0, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val79, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.if, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.val79, ptr %.sroa.415.sroa.5.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.bn:                                            ; preds = %bb.bm
  %i.ij = load i64, ptr %i.b, align 8, !range !25, !noundef !23 ; 2 uses
  %.not77 = icmp eq i64 %i.ij, -1
  br i1 %.not77, label %bb.bu, label %.split335.us

.split335.us:                                     ; preds = %bb.u, %bb.bn, %bb.aq
  %.us-phi336 = phi i64 [ %i.fd, %bb.aq ], [ %i.ck, %bb.u ], [ %i.ij, %bb.bn ] ; 3 uses
  %.sroa.4187.0.copyload = load ptr, ptr %i.t, align 8 ; 3 uses
  %.sroa.6189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.6189.0.copyload = load i64, ptr %.sroa.6189.0..sroa_idx, align 8 ; 2 uses
  %i.ik = load <2 x i64>, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.7190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.7190.0.copyload = load ptr, ptr %.sroa.7190.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8191.0.copyload = load i64, ptr %.sroa.8191.0..sroa_idx, align 8
  %.not.i.i97 = icmp slt i64 %.val79, 0
  br i1 %.not.i.i97, label %bb.bs, label %bb.bo, !prof !24

bb.bo:                                            ; preds = %.split335.us
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #65, !noalias !202
  %i.il = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %.val79, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !202 ; 3 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %bb.bs, label %_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs63DIHKhvmTb_10lance_core.exit

bb.bp:                                            ; preds = %bb.bs
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = icmp eq i64 %.us-phi336, 0
  br i1 %i.io, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4187.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4187.0.copyload, i64 noundef %.us-phi336, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !203
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i: ; preds = %bb.bq, %bb.bp
  %i.ip = icmp eq i64 %.sroa.6189.0.copyload, 0
  br i1 %i.ip, label %.body, label %bb.br

bb.br:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7190.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7190.0.copyload, i64 noundef %.sroa.6189.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !204
  br label %.body

bb.bs:                                            ; preds = %bb.bo, %.split335.us
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bo ], [ 0, %.split335.us ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %.val79) #68
          to label %bb.bt unwind label %bb.bp, !noalias !205

_RNCINvMNtCs3PfUT229lOd_12object_store4pathNtB5_4Path5parseNtNtCs40k4W9msRzi_5alloc6string6StringE0Cs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bo
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.il, ptr nonnull readonly align 1 %.val, i64 %.val79, i1 false), !noalias !206
  %i.iq = ptrtoint ptr %i.il to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ir = inttoptr i64 %.val79 to ptr
  store i64 %.val79, ptr %0, align 8
  %.sroa.470.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.iq, ptr %.sroa.470.0..sroa_idx, align 8
  %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ir, ptr %.sroa.470.sroa.4.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.us-phi336, ptr %.sroa.470.sroa.5.0..sroa.470.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.4187.0.copyload, ptr %.sroa.571.0..sroa_idx, align 8
  %.sroa.571.sroa.4.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.ik, ptr %.sroa.571.sroa.4.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.sroa.6.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.7190.0.copyload, ptr %.sroa.571.sroa.6.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  %.sroa.571.sroa.7.0..sroa.571.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.8191.0.copyload, ptr %.sroa.571.sroa.7.0..sroa.571.0..sroa_idx.sroa_idx, align 8
  br label %bb.c

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bn
  %.sroa.0178.0.copyload = load ptr, ptr %i.t, align 8
  %.sroa.4179.0.copyload = load i64, ptr %.sroa.4179.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.is = ptrtoint ptr %.sroa.0178.0.copyload to i64 ; 2 uses
  %.0.val.off.i.i = add i64 %i.is, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit

bb.bv:                                            ; preds = %bb.bu
  %i.it = inttoptr i64 %.sroa.4179.0.copyload to ptr ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.it) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.it, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 1) #65, !noalias !194
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs3PfUT229lOd_12object_store4path5parts8PathPartECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.bv, %bb.bu
  br i1 %.sroa.51.2, label %.thread228, label %.preheader.i.i, !llvm.loop !185

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs63DIHKhvmTb_10lance_core.exit: ; preds = %bb.b, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCscI6d9CVNmLh_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs63DIHKhvmTb_10lance_core(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCscI6d9CVNmLh_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs63DIHKhvmTb_10lance_core.exit, label %.lr.ph.i.i
end_hunk_0
