Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/object-rs/original/objdump.objdump.5f22a4fa832dee2f-cgu.12?download=true
inline.NumInlined: 262
inline.NumDeleted: 153
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockEECs8aoZCP6pRcV_7objdump:bb.a
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !58, !noalias !54
  store i8 3, ptr %i.a, align 8, !alias.scope !58, !noalias !54
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !54
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8aoZCP6pRcV_7objdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !8 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8aoZCP6pRcV_7objdump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !61
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i
    i64 1, label %bb.d
  ], !prof !57

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !64, !noalias !61
  store i8 3, ptr %i.a, align 8, !alias.scope !64, !noalias !61
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j), !noalias !61
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !61
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8aoZCP6pRcV_7objdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8aoZCP6pRcV_7objdump.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8aoZCP6pRcV_7objdump.exit
    i64 1, label %bb.c
  ], !prof !57

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8aoZCP6pRcV_7objdump.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !67
  store i8 3, ptr %i.a, align 8, !alias.scope !67
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8aoZCP6pRcV_7objdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !8
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellNtNtNtBI_2io5stdio9StderrRawEEECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  store atomic i64 0, ptr %.0.val monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = atomicrmw xchg ptr %i.e, i32 0 release, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellNtNtNtBI_2io5stdio9StderrRawEEECs8aoZCP6pRcV_7objdump.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellNtNtNtBI_2io5stdio9StderrRawEEECs8aoZCP6pRcV_7objdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellNtNtNtBI_2io5stdio9StderrRawEEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs8aoZCP6pRcV_7objdump(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !noundef !8
  %i.c = add i32 %i.b, -1                         ; 2 uses
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs8aoZCP6pRcV_7objdump.exit

bb.b:                                             ; preds = %bb.a
  store atomic i64 0, ptr %.0.val monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  %i.f = atomicrmw xchg ptr %i.e, i32 0 release, align 4
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs8aoZCP6pRcV_7objdump.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.e)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs8aoZCP6pRcV_7objdump.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync14reentrant_lock18ReentrantLockGuardINtNtB4_4cell7RefCellINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered10linewriter10LineWriterNtNtNtBI_2io5stdio9StdoutRawEEEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RINvNtNtNtCskKLDkoKarTP_4core5slice4sort6stable14driftsort_mainNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0INtNtB24_3vec3VecBZ_EECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4096 x i8], align 8              ; 3 uses
  %i.d = lshr i64 %1, 1
  %i.e = sub nuw nsw i64 %1, %i.d
  %..i = tail call noundef range(i64 0, 288230376151711744) i64 @llvm.umin.i64(i64 %1, i64 250000)
  %..i8 = tail call noundef i64 @llvm.umax.i64(i64 %..i, i64 %i.e) ; 2 uses
  %..i9 = tail call noundef i64 @llvm.umax.i64(i64 %..i8, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp samesign ugt i64 %..i8, 128         ; 3 uses
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 129, 0) %..i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
  %i.g = load i64, ptr %i.a, align 8, !range !73, !noalias !70, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !74, !noalias !70, !noundef !8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc10, label %bb.c, !prof !9

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !70
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameEECs8aoZCP6pRcV_7objdump.exit

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !70, !nonnull !8, !noundef !8 ; 2 uses
  %i.n = icmp ule i64 %..i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  %3 = ptrtoint ptr %i.m to i64
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 128, %bb.a ], [ %i.j, %bb.c ]
  %.pn18 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyyNCNvMBY_INtBY_9SymbolMapBW_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef nonnull align 8 %.pn18, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameEECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.h, %bb.b
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameEECs8aoZCP6pRcV_7objdump.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr nofree noundef readonly %0, ptr nofree noundef readonly %1, ptr nofree noundef readonly %2, i64 noundef %3, ptr noalias nofree noundef readonly align 8 dereferenceable(8) %4) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0ECs8aoZCP6pRcV_7objdump.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB14_11sort_by_keyyNCNvMB16_INtB16_9SymbolMapB14_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot7median3NtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBZ_11sort_by_keyyNCNvMB11_INtB11_9SymbolMapBZ_E3new0E0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 16
  %.sroa.0.0.val13 = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 16
  %.sroa.04.0.val14 = load i64, ptr %i.o, align 8, !noundef !8 ; 2 uses
  %i.p = icmp ult i64 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %i.q = getelementptr i8, ptr %.sroa.08.0, i64 16
  %.sroa.08.0.val12 = load i64, ptr %i.q, align 8, !noundef !8 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.s = xor i1 %i.p, %i.r
  %i.t = icmp ult i64 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.u = xor i1 %i.p, %i.t
  %..i = select i1 %i.u, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.s, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTymjyReENvYB14_NtNtBa_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTymjyReENvYB14_NtNtBa_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTymjyReENvYB14_NtNtBa_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared5pivot11median3_recTymjyReENvYB14_NtNtBa_3cmp10PartialOrd2ltECs8aoZCP6pRcV_7objdump(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias nofree noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 12 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 12 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.val13.i.i = load i64, ptr %.sroa.0.0, align 8, !alias.scope !85, !noalias !86, !noundef !8 ; 4 uses
  %.val14.i.i = load i64, ptr %.sroa.04.0, align 8, !alias.scope !86, !noalias !85, !noundef !8 ; 4 uses
  %i.n = icmp eq i64 %.val13.i.i, %.val14.i.i
  %i.o = icmp ult i64 %.val13.i.i, %.val14.i.i
  br i1 %i.n, label %bb.d, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 24
  %.val15.i.i = load i32, ptr %i.p, align 8, !alias.scope !85, !noalias !86, !noundef !8 ; 2 uses
  %.val16.i.i = load i32, ptr %i.q, align 8, !alias.scope !86, !noalias !85, !noundef !8 ; 2 uses
  %i.r = icmp eq i32 %.val15.i.i, %.val16.i.i
  %i.s = icmp ult i32 %.val15.i.i, %.val16.i.i
  br i1 %i.r, label %bb.e, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 8
  %.val17.i.i = load i64, ptr %i.t, align 8, !alias.scope !85, !noalias !86, !noundef !8 ; 2 uses
  %.val18.i.i = load i64, ptr %i.u, align 8, !alias.scope !86, !noalias !85, !noundef !8 ; 2 uses
  %i.v = icmp eq i64 %.val17.i.i, %.val18.i.i
  %i.w = icmp ult i64 %.val17.i.i, %.val18.i.i
  br i1 %i.v, label %bb.f, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %.val.i.i = load i64, ptr %i.x, align 8, !alias.scope !85, !noalias !86, !noundef !8 ; 2 uses
  %.val12.i.i = load i64, ptr %i.y, align 8, !alias.scope !86, !noalias !85, !noundef !8 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i, %.val12.i.i
  %i.aa = icmp ult i64 %.val.i.i, %.val12.i.i
  br i1 %i.z, label %bb.g, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 32
  %.val19.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !85, !noalias !86, !nonnull !8, !noundef !8
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %.val20.i.i = load i64, ptr %i.ad, align 8, !alias.scope !85, !noalias !86, !noundef !8 ; 2 uses
  %.val21.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !86, !noalias !85, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 40
  %.val22.i.i = load i64, ptr %i.ae, align 8, !alias.scope !86, !noalias !85, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val20.i.i, i64 %.val22.i.i)
  %i.af = tail call i32 @memcmp(ptr nonnull readonly %.val19.i.i, ptr nonnull readonly %.val21.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !87, !noalias !97 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = sub i64 %.val20.i.i, %.val22.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ag
  %i.aj = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit

_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.3.i.i = phi i1 [ %i.o, %bb.c ], [ %i.s, %bb.d ], [ %i.w, %bb.e ], [ %i.aj, %bb.g ], [ %i.aa, %bb.f ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %.val14.i.i13 = load i64, ptr %.sroa.08.0, align 8, !alias.scope !108, !noalias !109, !noundef !8 ; 4 uses
  %i.ak = icmp eq i64 %.val13.i.i, %.val14.i.i13
  %i.al = icmp ult i64 %.val13.i.i, %.val14.i.i13
  br i1 %i.ak, label %bb.h, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit27

bb.h:                                             ; preds = %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %.val15.i.i15 = load i32, ptr %i.am, align 8, !alias.scope !109, !noalias !108, !noundef !8 ; 2 uses
  %.val16.i.i16 = load i32, ptr %i.an, align 8, !alias.scope !108, !noalias !109, !noundef !8 ; 2 uses
  %i.ao = icmp eq i32 %.val15.i.i15, %.val16.i.i16
  %i.ap = icmp ult i32 %.val15.i.i15, %.val16.i.i16
  br i1 %i.ao, label %bb.i, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit27

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %.val17.i.i17 = load i64, ptr %i.aq, align 8, !alias.scope !109, !noalias !108, !noundef !8 ; 2 uses
  %.val18.i.i18 = load i64, ptr %i.ar, align 8, !alias.scope !108, !noalias !109, !noundef !8 ; 2 uses
  %i.as = icmp eq i64 %.val17.i.i17, %.val18.i.i18
  %i.at = icmp ult i64 %.val17.i.i17, %.val18.i.i18
  br i1 %i.as, label %bb.j, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit27

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %.val.i.i19 = load i64, ptr %i.au, align 8, !alias.scope !109, !noalias !108, !noundef !8 ; 2 uses
  %.val12.i.i20 = load i64, ptr %i.av, align 8, !alias.scope !108, !noalias !109, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %.val.i.i19, %.val12.i.i20
  %i.ax = icmp ult i64 %.val.i.i19, %.val12.i.i20
  br i1 %i.aw, label %bb.k, label %_RNvYNvYTymjyReENtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBh_3ops8function5FnMutTRB5_B1n_EE8call_mutCs8aoZCP6pRcV_7objdump.exit27

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift4sortNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBW_11sort_by_keyyNCNvMBY_INtBY_9SymbolMapBW_E3new0E0ECs8aoZCP6pRcV_7objdump:bb.a
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !8
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !8 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 288230376151711744) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSBX_11sort_by_keyyNCNvMBZ_INtBZ_9SymbolMapBX_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5drift13logical_mergeNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB16_11sort_by_keyyNCNvMB18_INtB18_9SymbolMapB16_E3new0E0ECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCseHTIzroA4w0_6object4read10symbol_map13SymbolMapNameNCINvMNtCsexYYUdYSQU6_5alloc5sliceSB15_11sort_by_keyyNCNvMB17_INtB17_9SymbolMapB15_E3new0E0ECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs8aoZCP6pRcV_7objdump4main() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 9 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %i.n = alloca [8 x i8], align 8                 ; 6 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [40 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = alloca [4 x i8], align 4                ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 9 uses
  %i.ad = alloca [24 x i8], align 8               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 9 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [32 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvNtCsG258MDvU3F_3std3env4args(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %bb.b unwind label %.thread

.thread:                                          ; preds = %bb.c, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.b:                                             ; preds = %bb.a
  %i.ak = load i64, ptr %i.ah, align 8, !range !150, !noundef !8
  %.not = icmp eq i64 %i.ak, -1
  br i1 %.not, label %bb.c, label %bb.f, !prof !9

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.bs, %bb.bq, %bb.ac, %bb.i, %bb.c
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit53: ; preds = %.body50, %bb.e
  %.sroa.04.2 = phi i1 [ %.sroa.04.3, %bb.e ], [ false, %.body50 ]
  %.pn39 = phi { ptr, i32 } [ %i.al, %bb.e ], [ %.pn36.pn, %.body50 ] ; 2 uses
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit unwind label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit53
  br i1 %.sroa.04.2, label %bb.bt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std3env4ArgsECs8aoZCP6pRcV_7objdump.exit

bb.e:                                             ; preds = %bb.bn, %bb.ac, %bb.i, %bb.h, %bb.g
  %.sroa.04.3 = phi i1 [ true, %bb.i ], [ true, %bb.g ], [ false, %bb.bn ], [ true, %bb.ac ], [ true, %bb.h ]
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit53

bb.f:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %.val42 = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ao = icmp eq ptr %.val42, %.val
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  %0 = ptrtoint ptr %i.ai to i64
  store i64 %0, ptr %i.ag, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 ptrtoint (ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt to i64), ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @7, ptr noundef nonnull %i.ag)
          to label %bb.i unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %bb.j unwind label %bb.e

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef 1) #22
          to label %bb.d unwind label %bb.e

bb.j:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.ae, align 8, !range !150, !noundef !8
  %.not26 = icmp eq i64 %i.ap, -1
  br i1 %.not26, label %bb.ac, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !156
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %bb.m unwind label %bb.l, !noalias !151

bb.l:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.m:                                             ; preds = %bb.k
  %i.ar = load i64, ptr %i.i, align 8, !range !150, !noalias !156, !noundef !8
  %.not.i49 = icmp eq i64 %i.ar, -1
  br i1 %.not.i49, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %i.ad, align 8, !alias.scope !151, !noalias !154
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.as, align 8, !alias.scope !151, !noalias !154
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %i.at, align 8, !alias.scope !151, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !156
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs8aoZCP6pRcV_7objdump.exit unwind label %bb.ad

bb.o:                                             ; preds = %bb.q, %bb.p
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.ab unwind label %bb.aa, !noalias !151

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !156
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val.i = load ptr, ptr %i.av, align 8, !alias.scope !154, !noalias !151, !nonnull !8, !noundef !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val4.i = load ptr, ptr %i.aw, align 8, !alias.scope !154, !noalias !151, !nonnull !8, !noundef !8
  %i.ax = ptrtoint ptr %.val4.i to i64
  %i.ay = ptrtoint ptr %.val.i to i64
  %i.az = sub nuw i64 %i.ax, %i.ay
  %i.ba = udiv exact i64 %i.az, 24
  %i.bb = call i64 @llvm.umax.i64(i64 %i.ba, i64 3) ; 2 uses
  %..i.i = add nuw nsw i64 %i.bb, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !156
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %..i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.o, !noalias !151

.noexc.i:                                         ; preds = %bb.p
  %i.bc = load i64, ptr %i.f, align 8, !range !73, !noalias !156, !noundef !8
  %i.bd = trunc nuw i64 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !74, !noalias !156, !noundef !8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.bd, label %bb.q, label %bb.r, !prof !9

bb.q:                                             ; preds = %.noexc.i
  %i.bh = load i64, ptr %i.bg, align 8, !noalias !156
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bf, i64 %i.bh) #22
          to label %.noexc5.i unwind label %bb.o, !noalias !151

.noexc5.i:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %.noexc.i
  %i.bi = load ptr, ptr %i.bg, align 8, !noalias !156, !nonnull !8, !noundef !8 ; 2 uses
  %i.bj = icmp ult i64 %i.bb, %i.bf
  call void @llvm.assume(i1 %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !151
  store i64 %i.bf, ptr %i.j, align 8, !noalias !156
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.bi, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !156
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !151
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.experimental.noalias.scope.decl(metadata !162)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.s

bb.s:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8aoZCP6pRcV_7objdump.exit.i.i.i, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !167
  invoke void @_RNvXsc_NtCsG258MDvU3F_3std3envNtB5_4ArgsNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.u unwind label %bb.t, !noalias !151

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i: ; preds = %bb.w, %bb.t
  %.pn.i.i.i = phi { ptr, i32 } [ %i.bm, %bb.t ], [ %i.bv, %bb.w ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body.i unwind label %bb.y, !noalias !151

bb.t:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bn = load i64, ptr %i.e, align 8, !range !150, !noalias !167, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.bn, -1
  br i1 %.not.i.i.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs8aoZCP6pRcV_7objdump.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !167
  %i.bo = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !168, !noalias !169, !noundef !8 ; 5 uses
  %i.bp = icmp ult i64 %i.bo, 384307168202282326
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i64, ptr %i.j, align 8, !range !170, !alias.scope !168, !noalias !169, !noundef !8
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.x, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8aoZCP6pRcV_7objdump.exit.i.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8aoZCP6pRcV_7objdump.exit.i.i.i: ; preds = %bb.x, %bb.v
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !168, !noalias !169, !nonnull !8, !noundef !8
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !151
  %i.bu = add nuw nsw i64 %i.bo, 1
  store i64 %i.bu, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !168, !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !167
  br label %bb.s

bb.w:                                             ; preds = %bb.x
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i unwind label %bb.y, !noalias !151

bb.x:                                             ; preds = %bb.v
  %.val3.i.i.i = load ptr, ptr %i.bk, align 8, !alias.scope !171, !noalias !172, !nonnull !8, !noundef !8
  %i.bw = ptrtoint ptr %.val3.i.i.i to i64
  %.val.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !171, !noalias !172, !nonnull !8, !noundef !8
  %i.bx = ptrtoint ptr %.val.i.i.i to i64
  %i.by = sub nuw i64 %i.bw, %i.bx
  %i.bz = udiv exact i64 %i.by, 24
  %i.ca = add nuw nsw i64 %i.bz, 1
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.bo, i64 noundef %i.ca, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs8aoZCP6pRcV_7objdump.exit.i.i.i unwind label %bb.w, !noalias !151

bb.y:                                             ; preds = %bb.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !151
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs8aoZCP6pRcV_7objdump.exit.i.i: ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !167
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs8aoZCP6pRcV_7objdump.exit.i unwind label %bb.z, !noalias !151

bb.z:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs8aoZCP6pRcV_7objdump.exit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cc, %bb.z ], [ %.pn.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #24
          to label %.body50 unwind label %bb.aa, !noalias !151

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs8aoZCP6pRcV_7objdump.exit.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE16extend_desugaredNtNtCsG258MDvU3F_3std3env4ArgsECs8aoZCP6pRcV_7objdump.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !156
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs8aoZCP6pRcV_7objdump.exit

bb.aa:                                            ; preds = %bb.ab, %.body.i, %bb.o
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !151
  unreachable

bb.ab:                                            ; preds = %bb.o, %bb.l
  %.pn.ph.i = phi { ptr, i32 } [ %i.aq, %bb.l ], [ %i.au, %bb.o ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.body50 unwind label %bb.aa, !noalias !151

bb.ac:                                            ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.d unwind label %bb.e

.body50:                                          ; preds = %bb.ae, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit, %bb.ad, %bb.ab, %.body.i, %.thread89
  %.pn36.pn = phi { ptr, i32 } [ %.pn3692, %.thread89 ], [ %i.cf, %bb.ae ], [ %i.ce, %bb.ad ], [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.ab ], [ %.pn32, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump.exit53 unwind label %bb.bo

bb.ad:                                            ; preds = %bb.n
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body50

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs8aoZCP6pRcV_7objdump.exit: ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_NtNtCsG258MDvU3F_3std3env4ArgsE11spec_extendCs8aoZCP6pRcV_7objdump.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RINvMs2_NtCsG258MDvU3F_3std2fsNtB6_4File4openRNtNtCsexYYUdYSQU6_5alloc6string6StringECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs8aoZCP6pRcV_7objdump.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = call noundef i32 @close(i32 noundef %i.co) #25 ; 0 uses
  br label %.body50

bb.af:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs8aoZCP6pRcV_7objdump.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %.thread89

bb.ag:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_NtNtCsG258MDvU3F_3std3env4ArgsE9from_iterCs8aoZCP6pRcV_7objdump.exit
  %i.ci = load i32, ptr %i.aa, align 8, !range !173, !noundef !8
  %i.cj = trunc nuw i32 %i.ci to i1
  br i1 %i.cj, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !8, !noundef !8
  store ptr %i.cl, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %1 = ptrtoint ptr %i.af to i64
  %2 = ptrtoint ptr %i.z to i64
  store i64 %1, ptr %i.y, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 ptrtoint (ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt to i64), ptr %.sroa.412.0..sroa_idx, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %2, ptr %i.cm, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 ptrtoint (ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt to i64), ptr %.sroa.416.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @11, ptr noundef nonnull %i.y)
          to label %bb.bs unwind label %bb.br

bb.ai:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !range !174, !noundef !8 ; 6 uses
  store i32 %i.co, ptr %i.ab, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %i.cp, align 8
  store i64 0, ptr %i.l, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i8 0, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 26
  store i8 0, ptr %i.cr, align 2
  %i.cs = getelementptr inbounds nuw i8, ptr %i.l, i64 27
  store i8 0, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.l, i64 28
  store i8 0, ptr %i.ct, align 4
  invoke void @_RINvMs0_CsgQ7e0lqRvgo_7memmap2NtB6_11MmapOptions3mapRNtNtCsG258MDvU3F_3std2fs4FileECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ab)
          to label %bb.aj unwind label %.thread96

.thread96:                                        ; preds = %bb.ai
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = call noundef i32 @close(i32 noundef %i.co) #25 ; 0 uses
  br label %.thread89

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cw = load i64, ptr %i.w, align 8, !range !73, !noundef !8
  %i.cx = trunc nuw i64 %i.cw to i1
  br i1 %i.cx, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !8, !noundef !8
  store ptr %i.cz, ptr %i.v, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %3 = ptrtoint ptr %i.af to i64
  %4 = ptrtoint ptr %i.v to i64
  store i64 %3, ptr %i.u, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 ptrtoint (ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt to i64), ptr %.sroa.420.0..sroa_idx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %4, ptr %i.da, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 ptrtoint (ptr @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt to i64), ptr %.sroa.424.0..sroa_idx, align 8
  invoke void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull @10, ptr noundef nonnull %i.u)
          to label %bb.bq unwind label %bb.bp

bb.al:                                            ; preds = %bb.aj
  %i.db = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noundef !8 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noundef !8 ; 3 uses
  store ptr %i.dc, ptr %i.x, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.de, ptr %i.df, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  invoke void @_RNvMNtNtNtCseHTIzroA4w0_6object4read5macho10dyld_cacheNtB2_9DyldCache17subcache_suffixesCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.de)
          to label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBM_6string6StringENtNtCseHTIzroA4w0_6object4read5ErrorE17unwrap_or_defaultCs8aoZCP6pRcV_7objdump.exit unwind label %bb.am

.body68:                                          ; preds = %.body.i66, %bb.am, %.body58
  %.sroa.03.4 = phi i1 [ %.sroa.03.6, %.body58 ], [ false, %.body.i66 ], [ %.sroa.03.5, %bb.am ]
  %.pn32 = phi { ptr, i32 } [ %.pn30, %.body58 ], [ %i.fo, %.body.i66 ], [ %i.dh, %bb.am ] ; 2 uses
  invoke void @_RNvXs_NtCsgQ7e0lqRvgo_7memmap22osNtB4_9MmapInnerNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.x)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit unwind label %bb.bo

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsgQ7e0lqRvgo_7memmap24MmapECs8aoZCP6pRcV_7objdump.exit: ; preds = %.body68
  %i.dg = call noundef i32 @close(i32 noundef %i.co) #25 ; 0 uses
  br i1 %.sroa.03.4, label %.thread89, label %.body50

bb.am:                                            ; preds = %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump.exit.i, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBM_6string6StringENtNtCseHTIzroA4w0_6object4read5ErrorE17unwrap_or_defaultCs8aoZCP6pRcV_7objdump.exit, %bb.al
  %.sroa.03.5 = phi i1 [ false, %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCsgQ7e0lqRvgo_7memmap24MmapENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump.exit.i ], [ true, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBM_6string6StringENtNtCseHTIzroA4w0_6object4read5ErrorE17unwrap_or_defaultCs8aoZCP6pRcV_7objdump.exit ], [ true, %bb.al ]
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %.body68

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBM_6string6StringENtNtCseHTIzroA4w0_6object4read5ErrorE17unwrap_or_defaultCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.al
  %i.di = load i64, ptr %i.t, align 8, !range !150, !alias.scope !175, !noalias !178, !noundef !8 ; 2 uses
  %i.dj = icmp eq i64 %i.di, -1                   ; 3 uses
  %.sroa.5.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx82, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.0 = select i1 %i.dj, i64 0, i64 %.sroa.7.0.copyload ; 2 uses
  %.sroa.5.0 = select i1 %i.dj, ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0.copyload ; 2 uses
  %.sroa.0.0 = select i1 %i.dj, i64 0, i64 %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dk = icmp ult i64 %.sroa.7.0, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.5.0, i64 %.sroa.7.0
  %5 = ptrtoint ptr %.sroa.5.0 to i64             ; 2 uses
  %6 = ptrtoint ptr %i.dl to i64
  store i64 %5, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %6, ptr %.sroa.6.0..sroa_idx, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %i.af, ptr %i.dm, align 8
  invoke void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCs8aoZCP6pRcV_7objdump4main0ENtCsgQ7e0lqRvgo_7memmap24MmapEB2L_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.r)
          to label %bb.an unwind label %bb.am

bb.an:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBM_6string6StringENtNtCseHTIzroA4w0_6object4read5ErrorE17unwrap_or_defaultCs8aoZCP6pRcV_7objdump.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !8 ; 3 uses
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !180
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dq, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc56 unwind label %bb.ar

.noexc56:                                         ; preds = %bb.an
  %i.ds = load i64, ptr %i.b, align 8, !range !73, !noalias !180, !noundef !8
  %i.dt = trunc nuw i64 %i.ds to i1
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dv = load i64, ptr %i.du, align 8, !range !74, !noalias !180, !noundef !8 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dt, label %bb.ao, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs8aoZCP6pRcV_7objdump4mains_0EEB2N_.exit.i.i, !prof !9

bb.ao:                                            ; preds = %.noexc56
  %i.dx = load i64, ptr %i.dw, align 8, !noalias !180
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.dv, i64 %i.dx) #22
          to label %.noexc57 unwind label %bb.ar

.noexc57:                                         ; preds = %bb.ao
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs8aoZCP6pRcV_7objdump4mains_0EEB2N_.exit.i.i: ; preds = %.noexc56
  %i.dy = load ptr, ptr %i.dw, align 8, !noalias !180, !nonnull !8, !noundef !8 ; 2 uses
  %i.dz = icmp ule i64 %i.dq, %i.dv
  call void @llvm.assume(i1 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !180
  store i64 %i.dv, ptr %i.c, align 8, !noalias !180
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.dy, ptr %i.ea, align 8, !noalias !180
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.eb, align 8, !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !183
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.dy, ptr %i.ec, align 8, !noalias !183
  store ptr %i.eb, ptr %i.a, align 8, !noalias !183
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.ed, align 8, !noalias !183
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs8aoZCP6pRcV_7objdump4mains_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callRShNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3F_3VecB3t_E14extend_trustedBN_E0E0EB1V_(ptr noundef nonnull %i.do, ptr noundef nonnull %i.dr, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.as unwind label %bb.ap, !noalias !180

bb.ap:                                            ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs8aoZCP6pRcV_7objdump4mains_0EEB2N_.exit.i.i
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body58 unwind label %bb.aq, !noalias !180

bb.aq:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !180
  unreachable

.body58:                                          ; preds = %bb.at, %bb.ar, %bb.ap
  %.sroa.03.6 = phi i1 [ true, %bb.ap ], [ %.sroa.03.7, %bb.ar ], [ %.sroa.03.8, %bb.at ]
  %.pn30 = phi { ptr, i32 } [ %i.ee, %bb.ap ], [ %i.eg, %bb.ar ], [ %.pn28, %bb.at ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsgQ7e0lqRvgo_7memmap24MmapEECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #24
          to label %.body68 unwind label %bb.bo

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs8aoZCP6pRcV_7objdump.exit, %bb.ao, %bb.an
  %.sroa.03.7 = phi i1 [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs8aoZCP6pRcV_7objdump.exit ], [ true, %bb.ao ], [ true, %bb.an ]
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body58

bb.as:                                            ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRShE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB19_5slice4iter4IterNtCsgQ7e0lqRvgo_7memmap24MmapENCNvCs8aoZCP6pRcV_7objdump4mains_0EEB2N_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.eh = invoke noundef nonnull align 8 ptr @_RNvNtNtCsG258MDvU3F_3std2io5stdio6stdout()
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.ax, %bb.au
  %.sroa.03.8 = phi i1 [ %.sroa.03.9, %bb.au ], [ %.sroa.03.10, %bb.ax ]
  %.pn28 = phi { ptr, i32 } [ %i.ei, %bb.au ], [ %.pn, %bb.ax ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRShENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body58 unwind label %bb.bo

bb.au:                                            ; preds = %bb.bj, %bb.av, %bb.as
  %.sroa.03.9 = phi i1 [ false, %bb.bj ], [ true, %bb.av ], [ true, %bb.as ]
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  store ptr %i.eh, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @_RNvNvNtNtCsG258MDvU3F_3std2io5stdio6stderr8INSTANCE, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ej = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stdout4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p)
          to label %bb.aw unwind label %bb.au

bb.aw:                                            ; preds = %bb.av
  store ptr %i.ej, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ek = invoke noundef nonnull align 8 ptr @_RNvMsk_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o)
          to label %bb.az unwind label %bb.ay

bb.ax:                                            ; preds = %.body, %bb.ay
  %.sroa.03.10 = phi i1 [ %.sroa.03.11, %bb.ay ], [ false, %.body ]
  %.pn = phi { ptr, i32 } [ %i.el, %bb.ay ], [ %eh.lpad-body, %.body ]
  %.val46 = load ptr, ptr %i.n, align 8, !nonnull !8, !align !188, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs8aoZCP6pRcV_7objdump(ptr nonnull %.val46) #24
          to label %bb.at unwind label %bb.bo

bb.ay:                                            ; preds = %bb.bh, %bb.aw
  %.sroa.03.11 = phi i1 [ false, %bb.bh ], [ true, %bb.aw ]
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.az:                                            ; preds = %bb.aw
  store ptr %i.ek, ptr %i.m, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !8, !noundef !8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !8
  %i.eq = invoke noundef ptr @_RINvNtCsiZvaoMVVkxx_15object_examples7objdump5printNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockNtBP_10StderrLockECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.de, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.en, i64 noundef %i.ep, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ad)
          to label %bb.bb unwind label %bb.ba     ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bd, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.er, %bb.ba ], [ %i.es, %bb.bd ]
  %.val48 = load ptr, ptr %i.m, align 8, !nonnull !8, !align !188, !noundef !8
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump(ptr nonnull %.val48) #24
          to label %bb.ax unwind label %bb.bo

bb.bb:                                            ; preds = %bb.az
  %.not.i = icmp eq ptr %i.eq, null
  br i1 %.not.i, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit, label %bb.bc, !prof !189

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.eq, ptr %i.k, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 43, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #22
          to label %bb.be unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8aoZCP6pRcV_7objdump(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #24
          to label %.body unwind label %bb.bf

bb.be:                                            ; preds = %bb.bc
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.et = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.bb
  %.val47 = load ptr, ptr %i.m, align 8, !nonnull !8, !align !188, !noundef !8 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val47, i64 12 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !noundef !8
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  store i32 %i.ew, ptr %i.eu, align 4
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump.exit

bb.bg:                                            ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit
  store atomic i64 0, ptr %.val47 monotonic, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.val47, i64 8 ; 2 uses
  %i.ez = atomicrmw xchg ptr %i.ey, i32 0 release, align 4
  %i.fa = icmp eq i32 %i.ez, 2
  br i1 %i.fa, label %bb.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump.exit, !prof !9

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ey)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump.exit unwind label %bb.ay

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump.exit: ; preds = %bb.bg, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultuNtNtNtB4_2io5error5ErrorE6unwrapCs8aoZCP6pRcV_7objdump.exit, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val45 = load ptr, ptr %i.n, align 8, !nonnull !8, !align !188, !noundef !8 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.val45, i64 12 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !noundef !8
  %i.fd = add i32 %i.fc, -1                       ; 2 uses
  store i32 %i.fd, ptr %i.fb, align 4
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StdoutLockECs8aoZCP6pRcV_7objdump.exit

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std2io5stdio10StderrLockECs8aoZCP6pRcV_7objdump.exit
end_hunk_1
