Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.12?download=true
inline.NumInlined: 3464
inline.NumDeleted: 846
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_7refresh0Cs2VbMhdeEr66_16delta_benchmarks:bb.a
default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !15, !align !23, !noundef !15 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !15, !noundef !15
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !15, !align !23, !noundef !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !17, !invariant.load !15
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !15, !nonnull !15
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.h

.body:                                            ; preds = %bb.p, %bb.o, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %bb.g ], [ %i.ag, %bb.o ], [ %i.ag, %bb.p ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.w, align 8
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !15, !align !23, !noundef !15
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks(ptr %.val5, ptr nonnull %.val6) #30
          to label %.body unwind label %bb.q

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 16, !range !81, !noundef !15
  %i.y = icmp eq i64 %i.x, -9223372036854775710
  br i1 %i.y, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.z, align 8, !nonnull !15, !align !23, !noundef !15 ; 5 uses
  %i.aa = load ptr, ptr %.val4, align 8, !invariant.load !15 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.aa(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !16, !invariant.load !15 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !17, !invariant.load !15
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.o:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !invariant.load !15 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !17, !invariant.load !15
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef range(i64 1, -9223372036854775808) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #32
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.n, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.q:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE5sliceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !15
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9998)
  %i.l = shl nuw i64 %2, 2
  %i.m = icmp ugt i64 %2, 4611686018427387903
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 4611686018427387903
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9999
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !10000

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @15, %bb.b ], [ @12, %bb.c ]
  %i.q = phi ptr [ @16, %bb.b ], [ @14, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #35
          to label %.cont.i unwind label %bb.e, !noalias !9999

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10001)
  call void @llvm.experimental.noalias.scope.decl(metadata !10002)
  call void @llvm.experimental.noalias.scope.decl(metadata !10003)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !10004, !noalias !10000, !nonnull !15, !noundef !15
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !10005
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.m, !noalias !10000

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10006)
  call void @llvm.experimental.noalias.scope.decl(metadata !10007)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10007, !noalias !10008, !noundef !15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 3
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %.invoke.i.i, !prof !83

bb.h:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !10009
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #33
          to label %.body.i unwind label %bb.j, !noalias !10010

.invoke.i.i:                                      ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !10007, !noalias !10008, !nonnull !15, !noundef !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10011, !noundef !15
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @39, ptr @41
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @38, ptr @40
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #35
          to label %.cont.i.i unwind label %bb.h, !noalias !10011

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !10010
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10012, !noalias !9998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9999
  call void @llvm.experimental.noalias.scope.decl(metadata !10013)
  call void @llvm.experimental.noalias.scope.decl(metadata !10014)
  call void @llvm.experimental.noalias.scope.decl(metadata !10015)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !10016, !noalias !10000, !nonnull !15, !noundef !15
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !10017
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33, !noalias !10000
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !10000
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferlE3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE5sliceCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.d = atomicrmw add ptr %i.c, i64 1 monotonic, align 8
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !15
  store ptr %i.c, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.i, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10042)
  %i.l = shl nuw i64 %2, 3
  %i.m = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.m, label %.invoke.i, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %3, 2305843009213693951
  br i1 %i.n, label %.invoke.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %3, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10043
  invoke void @_RNvMs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutableNtB5_6Buffer17slice_with_length(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, i64 noundef %i.l, i64 noundef %i.o)
          to label %bb.g unwind label %bb.e, !noalias !10044

.invoke.i:                                        ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ @15, %bb.b ], [ @12, %bb.c ]
  %i.q = phi ptr [ @16, %bb.b ], [ @14, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef 15, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q) #35
          to label %.cont.i unwind label %bb.e, !noalias !10043

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.e:                                             ; preds = %.invoke.i, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.aa, %bb.i ], [ %i.aa, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10045)
  call void @llvm.experimental.noalias.scope.decl(metadata !10046)
  call void @llvm.experimental.noalias.scope.decl(metadata !10047)
  %i.s = load ptr, ptr %i.b, align 8, !alias.scope !10048, !noalias !10044, !nonnull !15, !noundef !15
  %i.t = atomicrmw sub ptr %i.s, i64 1 release, align 8, !noalias !10049
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.m, !noalias !10044

bb.g:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !10050)
  call void @llvm.experimental.noalias.scope.decl(metadata !10051)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !10051, !noalias !10052, !noundef !15
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.k, label %.invoke.i.i, !prof !83

bb.h:                                             ; preds = %.invoke.i.i
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = atomicrmw sub ptr %i.ad, i64 1 release, align 8, !noalias !10053
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %.body.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #33
          to label %.body.i unwind label %bb.j, !noalias !10054

.invoke.i.i:                                      ; preds = %bb.g
  %i.ad = load ptr, ptr %i.a, align 8, !alias.scope !10051, !noalias !10052, !nonnull !15, !noundef !15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !10055, !noundef !15
  %.not.i.i = icmp eq ptr %i.af, null             ; 3 uses
  %.2.i.i = select i1 %.not.i.i, ptr @39, ptr @41
  %.1.i.i = select i1 %.not.i.i, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %..i.i = select i1 %.not.i.i, ptr @38, ptr @40
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %..i.i, ptr noundef nonnull %.1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2.i.i) #35
          to label %.cont.i.i unwind label %bb.h, !noalias !10055

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !10054
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !10056, !noalias !10042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10043
  call void @llvm.experimental.noalias.scope.decl(metadata !10057)
  call void @llvm.experimental.noalias.scope.decl(metadata !10058)
  call void @llvm.experimental.noalias.scope.decl(metadata !10059)
  %i.ah = load ptr, ptr %i.b, align 8, !alias.scope !10060, !noalias !10044, !nonnull !15, !noundef !15
  %i.ai = atomicrmw sub ptr %i.ah, i64 1 release, align 8, !noalias !10061
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #33, !noalias !10044
  br label %_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs2VbMhdeEr66_16delta_benchmarks.exit

bb.m:                                             ; preds = %bb.f
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31, !noalias !10044
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

_RNvMs_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB4_12ScalarBufferxE3newCs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtCs2VbMhdeEr66_16delta_benchmarks6OpKindE9drop_slowBI_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtCs2VbMhdeEr66_16delta_benchmarks6OpKindRNtNtBL_5alloc6GlobalEEB1h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtCs2VbMhdeEr66_16delta_benchmarks6OpKindRNtNtBL_5alloc6GlobalEEB1h_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 24, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtCs2VbMhdeEr66_16delta_benchmarks6OpKindRNtNtBL_5alloc6GlobalEEB1h_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtCs2VbMhdeEr66_16delta_benchmarks6OpKindRNtNtBL_5alloc6GlobalEEB1h_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs2pqxYH9ZEk8_3std4path7PathBufE9drop_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.c, %bb.b ]
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECs2VbMhdeEr66_16delta_benchmarks.exit.i
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit2, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECs2VbMhdeEr66_16delta_benchmarks.exit, %bb.g, %bb.h
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakNtNtCs2pqxYH9ZEk8_3std4path7PathBufRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f, %bb.e, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcbE9drop_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakbRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakbRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 24, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakbRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakbRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcfE9drop_slowCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakfRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakfRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 24, i64 noundef 8) #32
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakfRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakfRNtNtBL_5alloc6GlobalEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}
end_hunk_0
begin_hunk_1_@_RNvXs3_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6InsertNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq:bb.a
  %i.bf = load i64, ptr %i.be, align 8, !noundef !15 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 752
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !15
  %i.bi = icmp eq i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.s, label %bb.ar

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !15, !noundef !15
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !15, !noundef !15
  %i.bn = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast10AssignmentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bk, i64 noundef %i.bf)
  br i1 %i.bn, label %bb.t, label %bb.ar

bb.t:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bp = load i64, ptr %i.bo, align 8, !range !19, !noundef !15
  %.not20 = icmp eq i64 %i.bp, -9223372036854775808
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 848
  %i.br = load i64, ptr %i.bq, align 8, !range !19, !noundef !15
  %i.bs = icmp eq i64 %i.br, -9223372036854775808 ; 2 uses
  br i1 %.not20, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.bs, label %bb.ar, label %bb.w

bb.v:                                             ; preds = %bb.t
  br i1 %i.bs, label %bb.x, label %bb.ar

bb.w:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !15 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !15
  %i.bx = icmp eq i64 %i.bu, %i.bw
  br i1 %i.bx, label %.split39, label %bb.ar

.split39:                                         ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !15, !noundef !15
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cb = load ptr, ptr %i.ca, align 8, !nonnull !15, !noundef !15
  %i.cc = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bz, i64 noundef %i.bu)
  br i1 %i.cc, label %bb.x, label %bb.ar

bb.x:                                             ; preds = %.split39, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !15 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 776
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !15
  %i.ch = icmp eq i64 %i.ce, %i.cg
  br i1 %i.ch, label %bb.y, label %bb.ar

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !15, !noundef !15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.cl = load ptr, ptr %i.ck, align 8, !nonnull !15, !noundef !15
  %i.cm = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtCs4lawaffTVVK_9sqlparser3ast5IdentINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cj, i64 noundef %i.ce)
  br i1 %i.cm, label %bb.z, label %bb.ar

bb.z:                                             ; preds = %bb.y
  %i.cn = load i64, ptr %0, align 8, !range !28, !noundef !15
  %.not22 = icmp eq i64 %i.cn, 4
  %i.co = load i64, ptr %1, align 8, !range !28, !noundef !15
  %i.cp = icmp eq i64 %i.co, 4                    ; 2 uses
  br i1 %.not22, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.cp, label %bb.ar, label %.split40

bb.ab:                                            ; preds = %bb.z
  br i1 %i.cp, label %bb.ac, label %bb.ar

.split40:                                         ; preds = %bb.aa
  %i.cq = tail call fastcc noundef zeroext i1 @_RNvXsdJ_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(384) %1) #34
  br i1 %i.cq, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %.split40, %bb.ab
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.cs = load i64, ptr %i.cr, align 8, !range !19, !noundef !15
  %.not24 = icmp eq i64 %i.cs, -9223372036854775808
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 872
  %i.cu = load i64, ptr %i.ct, align 8, !range !19, !noundef !15
  %i.cv = icmp eq i64 %i.cu, -9223372036854775808 ; 2 uses
  br i1 %.not24, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.cv, label %bb.ar, label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br i1 %i.cv, label %bb.ag, label %bb.ar

bb.af:                                            ; preds = %bb.ad
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !15 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 888
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !15
  %i.da = icmp eq i64 %i.cx, %i.cz
  br i1 %i.da, label %.split41, label %bb.ar

.split41:                                         ; preds = %bb.af
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 880
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !15, !noundef !15
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !15, !noundef !15
  %i.df = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query10SelectItemINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.de, ptr noundef nonnull %i.dc, i64 noundef %i.cx)
  br i1 %i.df, label %bb.ag, label %bb.ar

bb.ag:                                            ; preds = %.split41, %bb.ae
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1069
  %i.dh = load i8, ptr %i.dg, align 1, !range !31, !noundef !15 ; 2 uses
  %.not26 = icmp eq i8 %i.dh, 3
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 1069
  %i.dj = load i8, ptr %i.di, align 1, !range !31, !noundef !15 ; 2 uses
  br i1 %.not26, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dk = icmp eq i8 %i.dh, %i.dj
  br i1 %i.dk, label %bb.aj, label %bb.ar

bb.ai:                                            ; preds = %bb.ag
  %i.dl = icmp eq i8 %i.dj, 3
  br i1 %i.dl, label %bb.aj, label %bb.ar

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !range !19, !noundef !15
  %.not28 = icmp eq i64 %i.dn, -9223372036854775808
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 896 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !range !19, !noundef !15
  %i.dq = icmp eq i64 %i.dp, -9223372036854775808 ; 2 uses
  br i1 %.not28, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.dq, label %bb.ar, label %.split43

bb.al:                                            ; preds = %bb.aj
  br i1 %i.dq, label %bb.am, label %bb.ar

.split43:                                         ; preds = %bb.ak
  %i.dr = tail call fastcc noundef zeroext i1 @_RNvXsdT_NtCs4lawaffTVVK_9sqlparser3astNtB6_13InsertAliasesNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.dm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.do) #34
  br i1 %i.dr, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %.split43, %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.dt = load i64, ptr %i.ds, align 8, !range !19, !noundef !15
  %.not30 = icmp eq i64 %i.dt, -9223372036854775808
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 944
  %i.dv = load i64, ptr %i.du, align 8, !range !19, !noundef !15
  %i.dw = icmp eq i64 %i.dv, -9223372036854775808 ; 2 uses
  br i1 %.not30, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %i.dw, label %bb.ar, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  br i1 %i.dw, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !15 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 960
  %i.ea = load i64, ptr %i.dz, align 8, !noundef !15
  %i.eb = icmp eq i64 %i.dy, %i.ea
  br i1 %i.eb, label %.split44, label %bb.ar

.split44:                                         ; preds = %bb.ap
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 952
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !15, !noundef !15
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !15, !noundef !15
  %i.eg = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpNtNtNtCs4lawaffTVVK_9sqlparser3ast5query7SettingINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull %i.ef, ptr noundef nonnull %i.ed, i64 noundef %i.dy)
  br i1 %i.eg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split44, %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  %i.ei = load i64, ptr %i.eh, align 8, !range !19, !noundef !15
  %.not32 = icmp eq i64 %i.ei, -9223372036854775808 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 968 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !range !19, !noundef !15
  %i.el = icmp eq i64 %i.ek, -9223372036854775808 ; 2 uses
  %brmerge = or i1 %.not32, %i.el
  %.mux = and i1 %.not32, %i.el
  br i1 %brmerge, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %.split44, %.split43, %.split41, %.split40, %.split39, %.split38, %.split37, %bb.h, %bb.l, %bb.n, %bb.q, %bb.s, %bb.v, %bb.y, %bb.ab, %bb.ae, %bb.ai, %bb.al, %bb.ao, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.p, %bb.r, %bb.u, %bb.w, %bb.x, %bb.aa, %bb.ad, %bb.af, %bb.ah, %bb.ak, %bb.an, %bb.ap, %bb.as
  %.sroa.0.0.shrunk = phi i1 [ %i.em, %bb.as ], [ false, %bb.h ], [ false, %.split43 ], [ false, %bb.ap ], [ false, %bb.an ], [ false, %bb.ak ], [ false, %bb.ah ], [ false, %bb.af ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.u ], [ false, %bb.r ], [ false, %bb.p ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.i ], [ false, %bb.g ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.ao ], [ false, %bb.al ], [ false, %bb.ai ], [ false, %bb.ae ], [ false, %bb.ab ], [ false, %bb.y ], [ false, %bb.v ], [ false, %bb.s ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.l ], [ %.mux, %bb.aq ], [ false, %.split44 ], [ false, %.split37 ], [ false, %.split38 ], [ false, %.split39 ], [ false, %.split40 ], [ false, %.split41 ]
  ret i1 %.sroa.0.0.shrunk

bb.as:                                            ; preds = %bb.aq
  %i.em = tail call fastcc noundef zeroext i1 @_RNvXseV_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_17InputFormatClauseNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.eh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.ej) #34
  br label %bb.ar
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs7xHNgVo2C7m_12arrow_buffer6buffer6scalarINtB5_12ScalarBufferlEINtNtCsbvkFyIu7lgC_4core7convert4FromNtNtB7_9immutable6BufferE4fromCs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !noundef !15
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = and i64 %i.c, 3
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %.invoke, !prof !83

bb.b:                                             ; preds = %.invoke
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10482)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !10483, !nonnull !15, !noundef !15
  %i.h = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !10483
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs7xHNgVo2C7m_12arrow_buffer5bytes5BytesE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %1) #33
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

.invoke:                                          ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !noundef !15
  %.not = icmp eq ptr %i.l, null                  ; 3 uses
  %.2 = select i1 %.not, ptr @39, ptr @41
  %.1 = select i1 %.not, ptr inttoptr (i64 121 to ptr), ptr inttoptr (i64 349 to ptr)
  %. = select i1 %.not, ptr @38, ptr @40
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull %., ptr noundef nonnull %.1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.2) #35
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs7xHNgVo2C7m_12arrow_buffer6buffer9immutable6BufferECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs2VbMhdeEr66_16delta_benchmarks(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !15
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !15 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !10492
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i10 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !10492
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i10
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i10, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !10492, !noundef !15
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit

_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !15
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted20 = load i64, ptr %i.aj, align 8
  %.promoted21 = load i64, ptr %i.ak, align 8, !alias.scope !10493
  %.promoted23 = load i64, ptr %i.al, align 8, !alias.scope !10493
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !15
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !10494, !noundef !15
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !10494, !noundef !15 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !10494, !noundef !15
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !10494
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !10494
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !10494
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core4hash3sip9u8to64_le.exit
  %i.bj = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !10493
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !10493
  store i64 %i.da, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.0.1.lcssa = phi i64 [ %i.db, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa
  %.sroa.014.0.copyload.i17 = load i32, ptr %i.bl, align 1, !alias.scope !10495
  %i.bm = zext i32 %.sroa.014.0.copyload.i17 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i11 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i12 = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i11, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i11
  %.sroa.015.0.copyload.i16 = load i16, ptr %i.bq, align 1, !alias.scope !10495
  %i.br = zext i16 %.sroa.015.0.copyload.i16 to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i11, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i12
  %i.bv = or disjoint i64 %.sroa.03.0.i11, 2
  br label %bb.o
end_hunk_1
